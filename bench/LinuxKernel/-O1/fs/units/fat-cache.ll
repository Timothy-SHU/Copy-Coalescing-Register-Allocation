; ModuleID = 'fs/fat/cache.c'
source_filename = "fs/fat/cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fat_cache = type { %struct.list_head, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.msdos_inode_info = type { %struct.spinlock, %struct.list_head, i32, i32, i64, i32, i32, i32, i64, %struct.hlist_node, %struct.hlist_node, %struct.rw_semaphore, %struct.timespec64, %struct.inode }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.timespec64 = type { i64, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.13, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.14, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.15, ptr, %struct.address_space, %struct.list_head, %union.anon.16, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.13 = type { i32 }
%union.anon.14 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.15 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.16 = type { ptr }
%struct.fat_entry = type { i32, %union.anon.17, i32, [2 x ptr], ptr }
%union.anon.17 = type { [2 x ptr] }
%struct.fat_cache_id = type { i32, i32, i32, i32 }
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
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.msdos_sb_info = type { i16, i16, i32, i8, i8, i16, i64, i64, i16, i64, i64, i64, i64, %struct.mutex, %struct.mutex, %struct.mutex, i32, i32, i32, %struct.fat_mount_options, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %struct.ratelimit_state, %struct.spinlock, [256 x %struct.hlist_head], %struct.spinlock, [256 x %struct.hlist_head], i32, %struct.callback_head }
%struct.fat_mount_options = type { %struct.kuid_t, %struct.kgid_t, i16, i16, i16, i32, ptr, i16, i8, i8, i8, i16, i16 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [10 x i8] c"fat_cache\00", align 1, !dbg !0
@fat_cache_cachep = internal global ptr null, align 8, !dbg !7
@.str.1 = private unnamed_addr constant [15 x i8] c"fs/fat/cache.c\00", align 1, !dbg !4531
@__func__.fat_get_cluster = private unnamed_addr constant [16 x i8] c"fat_get_cluster\00", align 1, !dbg !4536
@.str.2 = private unnamed_addr constant [51 x i8] c"%s: invalid start cluster (i_pos %lld, start %08x)\00", align 1, !dbg !4539
@.str.3 = private unnamed_addr constant [49 x i8] c"%s: detected the cluster chain loop (i_pos %lld)\00", align 1, !dbg !4544
@.str.4 = private unnamed_addr constant [39 x i8] c"%s: invalid cluster chain (i_pos %lld)\00", align 1, !dbg !4549
@fat_cache_lookup.nohit = internal global %struct.fat_cache zeroinitializer, align 8, !dbg !4554
@.str.5 = private unnamed_addr constant [36 x i8] c"%s: request beyond EOF (i_pos %lld)\00", align 1, !dbg !4581
@__func__.fat_bmap_cluster = private unnamed_addr constant [17 x i8] c"fat_bmap_cluster\00", align 1, !dbg !4586

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @fat_cache_init() #0 section ".init.text" align 16 !dbg !4602 {
entry:
  %retval = alloca i32, align 4
  %call = call ptr @kmem_cache_create(ptr noundef @.str, i32 noundef 32, i32 noundef 0, i32 noundef 1179648, ptr noundef @init_once) #9, !dbg !4603
  store ptr %call, ptr @fat_cache_cachep, align 8, !dbg !4604
  %0 = load ptr, ptr @fat_cache_cachep, align 8, !dbg !4605
  %cmp = icmp eq ptr %0, null, !dbg !4607
  br i1 %cmp, label %if.then, label %if.end, !dbg !4608

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !4609
  br label %return, !dbg !4609

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4610
  br label %return, !dbg !4610

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, ptr %retval, align 4, !dbg !4611
  ret i32 %1, !dbg !4611
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4612 dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @init_once(ptr noundef %foo) #2 align 16 !dbg !4616 {
entry:
  %foo.addr = alloca ptr, align 8
  %cache = alloca ptr, align 8
  store ptr %foo, ptr %foo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %foo.addr, metadata !4618, metadata !DIExpression()), !dbg !4620
  call void @llvm.lifetime.start.p0(i64 8, ptr %cache) #10, !dbg !4621
  call void @llvm.dbg.declare(metadata ptr %cache, metadata !4619, metadata !DIExpression()), !dbg !4622
  %0 = load ptr, ptr %foo.addr, align 8, !dbg !4623
  store ptr %0, ptr %cache, align 8, !dbg !4622
  %1 = load ptr, ptr %cache, align 8, !dbg !4624
  %cache_list = getelementptr inbounds %struct.fat_cache, ptr %1, i32 0, i32 0, !dbg !4625
  call void @INIT_LIST_HEAD(ptr noundef %cache_list) #9, !dbg !4626
  call void @llvm.lifetime.end.p0(i64 8, ptr %cache) #10, !dbg !4627
  ret void, !dbg !4627
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @fat_cache_destroy() #2 align 16 !dbg !4628 {
entry:
  %0 = load ptr, ptr @fat_cache_cachep, align 8, !dbg !4629
  call void @kmem_cache_destroy(ptr noundef %0) #9, !dbg !4630
  ret void, !dbg !4631
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4632 dso_local void @kmem_cache_destroy(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @fat_cache_inval_inode(ptr noundef %inode) #2 align 16 !dbg !4635 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !4637, metadata !DIExpression()), !dbg !4638
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !4639
  %call = call ptr @MSDOS_I(ptr noundef %0) #9, !dbg !4640
  %cache_lru_lock = getelementptr inbounds %struct.msdos_inode_info, ptr %call, i32 0, i32 0, !dbg !4641
  call void @spin_lock(ptr noundef %cache_lru_lock) #9, !dbg !4642
  %1 = load ptr, ptr %inode.addr, align 8, !dbg !4643
  call void @__fat_cache_inval_inode(ptr noundef %1) #9, !dbg !4644
  %2 = load ptr, ptr %inode.addr, align 8, !dbg !4645
  %call1 = call ptr @MSDOS_I(ptr noundef %2) #9, !dbg !4646
  %cache_lru_lock2 = getelementptr inbounds %struct.msdos_inode_info, ptr %call1, i32 0, i32 0, !dbg !4647
  call void @spin_unlock(ptr noundef %cache_lru_lock2) #9, !dbg !4648
  ret void, !dbg !4649
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #4 align 16 !dbg !4650 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4655, metadata !DIExpression()), !dbg !4656
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4657
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !4657
  call void @_raw_spin_lock(ptr noundef %1) #9, !dbg !4657
  ret void, !dbg !4658
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @MSDOS_I(ptr noundef %inode) #5 align 16 !dbg !4659 {
entry:
  %inode.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !4663, metadata !DIExpression()), !dbg !4666
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !4667
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4664, metadata !DIExpression()), !dbg !4667
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !4667
  store ptr %0, ptr %__mptr, align 8, !dbg !4667
  %1 = load ptr, ptr %__mptr, align 8, !dbg !4667
  %add.ptr = getelementptr i8, ptr %1, i64 -152, !dbg !4667
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4667
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !4668
  %2 = load ptr, ptr %tmp, align 8, !dbg !4667
  ret ptr %2, !dbg !4669
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__fat_cache_inval_inode(ptr noundef %inode) #2 align 16 !dbg !4670 {
entry:
  %inode.addr = alloca ptr, align 8
  %i = alloca ptr, align 8
  %cache = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !4672, metadata !DIExpression()), !dbg !4678
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10, !dbg !4679
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4673, metadata !DIExpression()), !dbg !4680
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !4681
  %call = call ptr @MSDOS_I(ptr noundef %0) #9, !dbg !4682
  store ptr %call, ptr %i, align 8, !dbg !4680
  call void @llvm.lifetime.start.p0(i64 8, ptr %cache) #10, !dbg !4683
  call void @llvm.dbg.declare(metadata ptr %cache, metadata !4674, metadata !DIExpression()), !dbg !4684
  br label %while.cond, !dbg !4685

while.cond:                                       ; preds = %while.body, %entry
  %1 = load ptr, ptr %i, align 8, !dbg !4686
  %cache_lru = getelementptr inbounds %struct.msdos_inode_info, ptr %1, i32 0, i32 1, !dbg !4687
  %call1 = call i32 @list_empty(ptr noundef %cache_lru) #9, !dbg !4688
  %tobool = icmp ne i32 %call1, 0, !dbg !4689
  %lnot = xor i1 %tobool, true, !dbg !4689
  br i1 %lnot, label %while.body, label %while.end, !dbg !4685

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !4690
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4675, metadata !DIExpression()), !dbg !4690
  %2 = load ptr, ptr %i, align 8, !dbg !4690
  %cache_lru2 = getelementptr inbounds %struct.msdos_inode_info, ptr %2, i32 0, i32 1, !dbg !4690
  %next = getelementptr inbounds %struct.list_head, ptr %cache_lru2, i32 0, i32 0, !dbg !4690
  %3 = load ptr, ptr %next, align 8, !dbg !4690
  store ptr %3, ptr %__mptr, align 8, !dbg !4690
  %4 = load ptr, ptr %__mptr, align 8, !dbg !4690
  %add.ptr = getelementptr i8, ptr %4, i64 0, !dbg !4690
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4690
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !4691
  %5 = load ptr, ptr %tmp, align 8, !dbg !4690
  store ptr %5, ptr %cache, align 8, !dbg !4692
  %6 = load ptr, ptr %cache, align 8, !dbg !4693
  %cache_list = getelementptr inbounds %struct.fat_cache, ptr %6, i32 0, i32 0, !dbg !4694
  call void @list_del_init(ptr noundef %cache_list) #9, !dbg !4695
  %7 = load ptr, ptr %i, align 8, !dbg !4696
  %nr_caches = getelementptr inbounds %struct.msdos_inode_info, ptr %7, i32 0, i32 2, !dbg !4697
  %8 = load i32, ptr %nr_caches, align 8, !dbg !4698
  %dec = add i32 %8, -1, !dbg !4698
  store i32 %dec, ptr %nr_caches, align 8, !dbg !4698
  %9 = load ptr, ptr %cache, align 8, !dbg !4699
  call void @fat_cache_free(ptr noundef %9) #9, !dbg !4700
  br label %while.cond, !dbg !4685, !llvm.loop !4701

while.end:                                        ; preds = %while.cond
  %10 = load ptr, ptr %i, align 8, !dbg !4705
  %cache_valid_id = getelementptr inbounds %struct.msdos_inode_info, ptr %10, i32 0, i32 3, !dbg !4706
  %11 = load i32, ptr %cache_valid_id, align 4, !dbg !4707
  %inc = add i32 %11, 1, !dbg !4707
  store i32 %inc, ptr %cache_valid_id, align 4, !dbg !4707
  %12 = load ptr, ptr %i, align 8, !dbg !4708
  %cache_valid_id3 = getelementptr inbounds %struct.msdos_inode_info, ptr %12, i32 0, i32 3, !dbg !4710
  %13 = load i32, ptr %cache_valid_id3, align 4, !dbg !4710
  %cmp = icmp eq i32 %13, 0, !dbg !4711
  br i1 %cmp, label %if.then, label %if.end, !dbg !4712

if.then:                                          ; preds = %while.end
  %14 = load ptr, ptr %i, align 8, !dbg !4713
  %cache_valid_id4 = getelementptr inbounds %struct.msdos_inode_info, ptr %14, i32 0, i32 3, !dbg !4714
  %15 = load i32, ptr %cache_valid_id4, align 4, !dbg !4715
  %inc5 = add i32 %15, 1, !dbg !4715
  store i32 %inc5, ptr %cache_valid_id4, align 4, !dbg !4715
  br label %if.end, !dbg !4713

if.end:                                           ; preds = %if.then, %while.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %cache) #10, !dbg !4716
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10, !dbg !4716
  ret void, !dbg !4716
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #4 align 16 !dbg !4717 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4719, metadata !DIExpression()), !dbg !4720
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4721
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !4721
  call void @_raw_spin_unlock(ptr noundef %1) #9, !dbg !4721
  ret void, !dbg !4722
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @fat_get_cluster(ptr noundef %inode, i32 noundef %cluster, ptr noundef %fclus, ptr noundef %dclus) #2 align 16 !dbg !4723 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca ptr, align 8
  %cluster.addr = alloca i32, align 4
  %fclus.addr = alloca ptr, align 8
  %dclus.addr = alloca ptr, align 8
  %sb = alloca ptr, align 8
  %sbi = alloca ptr, align 8
  %limit = alloca i32, align 4
  %fatent = alloca %struct.fat_entry, align 8
  %cid = alloca %struct.fat_cache_id, align 4
  %nr = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !4727, metadata !DIExpression()), !dbg !4878
  store i32 %cluster, ptr %cluster.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cluster.addr, metadata !4728, metadata !DIExpression()), !dbg !4879
  store ptr %fclus, ptr %fclus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fclus.addr, metadata !4729, metadata !DIExpression()), !dbg !4880
  store ptr %dclus, ptr %dclus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dclus.addr, metadata !4730, metadata !DIExpression()), !dbg !4881
  call void @llvm.lifetime.start.p0(i64 8, ptr %sb) #10, !dbg !4882
  call void @llvm.dbg.declare(metadata ptr %sb, metadata !4731, metadata !DIExpression()), !dbg !4883
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !4884
  %i_sb = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9, !dbg !4885
  %1 = load ptr, ptr %i_sb, align 8, !dbg !4885
  store ptr %1, ptr %sb, align 8, !dbg !4883
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbi) #10, !dbg !4886
  call void @llvm.dbg.declare(metadata ptr %sbi, metadata !4732, metadata !DIExpression()), !dbg !4887
  %2 = load ptr, ptr %sb, align 8, !dbg !4888
  %call = call ptr @MSDOS_SB(ptr noundef %2) #9, !dbg !4889
  store ptr %call, ptr %sbi, align 8, !dbg !4887
  call void @llvm.lifetime.start.p0(i64 4, ptr %limit) #10, !dbg !4890
  call void @llvm.dbg.declare(metadata ptr %limit, metadata !4829, metadata !DIExpression()), !dbg !4891
  %3 = load ptr, ptr %sb, align 8, !dbg !4892
  %s_maxbytes = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 4, !dbg !4893
  %4 = load i64, ptr %s_maxbytes, align 32, !dbg !4893
  %5 = load ptr, ptr %sbi, align 8, !dbg !4894
  %cluster_bits = getelementptr inbounds %struct.msdos_sb_info, ptr %5, i32 0, i32 1, !dbg !4895
  %6 = load i16, ptr %cluster_bits, align 2, !dbg !4895
  %conv = zext i16 %6 to i32, !dbg !4894
  %sh_prom = zext i32 %conv to i64, !dbg !4896
  %shr = ashr i64 %4, %sh_prom, !dbg !4896
  %conv1 = trunc i64 %shr to i32, !dbg !4892
  store i32 %conv1, ptr %limit, align 4, !dbg !4891
  call void @llvm.lifetime.start.p0(i64 56, ptr %fatent) #10, !dbg !4897
  call void @llvm.dbg.declare(metadata ptr %fatent, metadata !4830, metadata !DIExpression()), !dbg !4898
  call void @llvm.lifetime.start.p0(i64 16, ptr %cid) #10, !dbg !4899
  call void @llvm.dbg.declare(metadata ptr %cid, metadata !4875, metadata !DIExpression()), !dbg !4900
  call void @llvm.lifetime.start.p0(i64 4, ptr %nr) #10, !dbg !4901
  call void @llvm.dbg.declare(metadata ptr %nr, metadata !4876, metadata !DIExpression()), !dbg !4902
  br label %do.body, !dbg !4903

do.body:                                          ; preds = %entry
  %7 = load ptr, ptr %inode.addr, align 8, !dbg !4904
  %call2 = call ptr @MSDOS_I(ptr noundef %7) #9, !dbg !4904
  %i_start = getelementptr inbounds %struct.msdos_inode_info, ptr %call2, i32 0, i32 5, !dbg !4904
  %8 = load i32, ptr %i_start, align 8, !dbg !4904
  %cmp = icmp eq i32 %8, 0, !dbg !4904
  %lnot = xor i1 %cmp, true, !dbg !4904
  %lnot4 = xor i1 %lnot, true, !dbg !4904
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !4904
  %conv5 = sext i32 %lnot.ext to i64, !dbg !4904
  %expval = call i64 @llvm.expect.i64(i64 %conv5, i64 0), !dbg !4904
  %tobool = icmp ne i64 %expval, 0, !dbg !4904
  br i1 %tobool, label %if.then, label %if.end, !dbg !4907

if.then:                                          ; preds = %do.body
  br label %do.body6, !dbg !4904

do.body6:                                         ; preds = %if.then
  br label %do.body7, !dbg !4908

do.body7:                                         ; preds = %do.body6
  br label %do.cond, !dbg !4910

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !4910

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !4908

do.body8:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 234, i32 0, i64 12) #10, !dbg !4912, !srcloc !4914
  br label %do.cond9, !dbg !4912

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !4912

do.end10:                                         ; preds = %do.cond9
  unreachable, !dbg !4908

do.cond11:                                        ; No predecessors!
  br label %do.end12, !dbg !4908

do.end12:                                         ; preds = %do.cond11
  br label %if.end, !dbg !4908

if.end:                                           ; preds = %do.end12, %do.body
  br label %do.cond13, !dbg !4907

do.cond13:                                        ; preds = %if.end
  br label %do.end14, !dbg !4907

do.end14:                                         ; preds = %do.cond13
  %9 = load ptr, ptr %fclus.addr, align 8, !dbg !4915
  store i32 0, ptr %9, align 4, !dbg !4916
  %10 = load ptr, ptr %inode.addr, align 8, !dbg !4917
  %call15 = call ptr @MSDOS_I(ptr noundef %10) #9, !dbg !4918
  %i_start16 = getelementptr inbounds %struct.msdos_inode_info, ptr %call15, i32 0, i32 5, !dbg !4919
  %11 = load i32, ptr %i_start16, align 8, !dbg !4919
  %12 = load ptr, ptr %dclus.addr, align 8, !dbg !4920
  store i32 %11, ptr %12, align 4, !dbg !4921
  %13 = load ptr, ptr %sbi, align 8, !dbg !4922
  %14 = load ptr, ptr %dclus.addr, align 8, !dbg !4924
  %15 = load i32, ptr %14, align 4, !dbg !4925
  %call17 = call zeroext i1 @fat_valid_entry(ptr noundef %13, i32 noundef %15) #9, !dbg !4926
  br i1 %call17, label %if.end22, label %if.then18, !dbg !4927

if.then18:                                        ; preds = %do.end14
  %16 = load ptr, ptr %sb, align 8, !dbg !4928
  %17 = load ptr, ptr %sb, align 8, !dbg !4928
  %call19 = call ptr @MSDOS_SB(ptr noundef %17) #9, !dbg !4928
  %ratelimit = getelementptr inbounds %struct.msdos_sb_info, ptr %call19, i32 0, i32 30, !dbg !4928
  %call20 = call i32 @___ratelimit(ptr noundef %ratelimit, ptr noundef @__func__.fat_get_cluster) #9, !dbg !4928
  %18 = load ptr, ptr %inode.addr, align 8, !dbg !4928
  %call21 = call ptr @MSDOS_I(ptr noundef %18) #9, !dbg !4928
  %i_pos = getelementptr inbounds %struct.msdos_inode_info, ptr %call21, i32 0, i32 8, !dbg !4928
  %19 = load i64, ptr %i_pos, align 8, !dbg !4928
  %20 = load ptr, ptr %dclus.addr, align 8, !dbg !4928
  %21 = load i32, ptr %20, align 4, !dbg !4928
  call void (ptr, i32, ptr, ...) @__fat_fs_error(ptr noundef %16, i32 noundef %call20, ptr noundef @.str.2, ptr noundef @__func__.fat_get_cluster, i64 noundef %19, i32 noundef %21) #11, !dbg !4928
  store i32 -5, ptr %retval, align 4, !dbg !4930
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4930

if.end22:                                         ; preds = %do.end14
  %22 = load i32, ptr %cluster.addr, align 4, !dbg !4931
  %cmp23 = icmp eq i32 %22, 0, !dbg !4933
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !4934

if.then25:                                        ; preds = %if.end22
  store i32 0, ptr %retval, align 4, !dbg !4935
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4935

if.end26:                                         ; preds = %if.end22
  %23 = load ptr, ptr %inode.addr, align 8, !dbg !4936
  %24 = load i32, ptr %cluster.addr, align 4, !dbg !4938
  %25 = load ptr, ptr %fclus.addr, align 8, !dbg !4939
  %26 = load ptr, ptr %dclus.addr, align 8, !dbg !4940
  %call27 = call i32 @fat_cache_lookup(ptr noundef %23, i32 noundef %24, ptr noundef %cid, ptr noundef %25, ptr noundef %26) #9, !dbg !4941
  %cmp28 = icmp slt i32 %call27, 0, !dbg !4942
  br i1 %cmp28, label %if.then30, label %if.end31, !dbg !4943

if.then30:                                        ; preds = %if.end26
  call void @cache_init(ptr noundef %cid, i32 noundef -1, i32 noundef -1) #9, !dbg !4944
  br label %if.end31, !dbg !4946

if.end31:                                         ; preds = %if.then30, %if.end26
  call void @fatent_init(ptr noundef %fatent) #9, !dbg !4947
  br label %while.cond, !dbg !4948

while.cond:                                       ; preds = %if.end65, %if.end31
  %27 = load ptr, ptr %fclus.addr, align 8, !dbg !4949
  %28 = load i32, ptr %27, align 4, !dbg !4950
  %29 = load i32, ptr %cluster.addr, align 4, !dbg !4951
  %cmp32 = icmp slt i32 %28, %29, !dbg !4952
  br i1 %cmp32, label %while.body, label %while.end, !dbg !4948

while.body:                                       ; preds = %while.cond
  %30 = load ptr, ptr %fclus.addr, align 8, !dbg !4953
  %31 = load i32, ptr %30, align 4, !dbg !4956
  %32 = load i32, ptr %limit, align 4, !dbg !4957
  %cmp34 = icmp sgt i32 %31, %32, !dbg !4958
  br i1 %cmp34, label %if.then36, label %if.end42, !dbg !4959

if.then36:                                        ; preds = %while.body
  %33 = load ptr, ptr %sb, align 8, !dbg !4960
  %34 = load ptr, ptr %sb, align 8, !dbg !4960
  %call37 = call ptr @MSDOS_SB(ptr noundef %34) #9, !dbg !4960
  %ratelimit38 = getelementptr inbounds %struct.msdos_sb_info, ptr %call37, i32 0, i32 30, !dbg !4960
  %call39 = call i32 @___ratelimit(ptr noundef %ratelimit38, ptr noundef @__func__.fat_get_cluster) #9, !dbg !4960
  %35 = load ptr, ptr %inode.addr, align 8, !dbg !4960
  %call40 = call ptr @MSDOS_I(ptr noundef %35) #9, !dbg !4960
  %i_pos41 = getelementptr inbounds %struct.msdos_inode_info, ptr %call40, i32 0, i32 8, !dbg !4960
  %36 = load i64, ptr %i_pos41, align 8, !dbg !4960
  call void (ptr, i32, ptr, ...) @__fat_fs_error(ptr noundef %33, i32 noundef %call39, ptr noundef @.str.3, ptr noundef @__func__.fat_get_cluster, i64 noundef %36) #11, !dbg !4960
  store i32 -5, ptr %nr, align 4, !dbg !4962
  br label %out, !dbg !4963

if.end42:                                         ; preds = %while.body
  %37 = load ptr, ptr %inode.addr, align 8, !dbg !4964
  %38 = load ptr, ptr %dclus.addr, align 8, !dbg !4965
  %39 = load i32, ptr %38, align 4, !dbg !4966
  %call43 = call i32 @fat_ent_read(ptr noundef %37, ptr noundef %fatent, i32 noundef %39) #9, !dbg !4967
  store i32 %call43, ptr %nr, align 4, !dbg !4968
  %40 = load i32, ptr %nr, align 4, !dbg !4969
  %cmp44 = icmp slt i32 %40, 0, !dbg !4971
  br i1 %cmp44, label %if.then46, label %if.else, !dbg !4972

if.then46:                                        ; preds = %if.end42
  br label %out, !dbg !4973

if.else:                                          ; preds = %if.end42
  %41 = load i32, ptr %nr, align 4, !dbg !4974
  %cmp47 = icmp eq i32 %41, 0, !dbg !4976
  br i1 %cmp47, label %if.then49, label %if.else55, !dbg !4977

if.then49:                                        ; preds = %if.else
  %42 = load ptr, ptr %sb, align 8, !dbg !4978
  %43 = load ptr, ptr %sb, align 8, !dbg !4978
  %call50 = call ptr @MSDOS_SB(ptr noundef %43) #9, !dbg !4978
  %ratelimit51 = getelementptr inbounds %struct.msdos_sb_info, ptr %call50, i32 0, i32 30, !dbg !4978
  %call52 = call i32 @___ratelimit(ptr noundef %ratelimit51, ptr noundef @__func__.fat_get_cluster) #9, !dbg !4978
  %44 = load ptr, ptr %inode.addr, align 8, !dbg !4978
  %call53 = call ptr @MSDOS_I(ptr noundef %44) #9, !dbg !4978
  %i_pos54 = getelementptr inbounds %struct.msdos_inode_info, ptr %call53, i32 0, i32 8, !dbg !4978
  %45 = load i64, ptr %i_pos54, align 8, !dbg !4978
  call void (ptr, i32, ptr, ...) @__fat_fs_error(ptr noundef %42, i32 noundef %call52, ptr noundef @.str.4, ptr noundef @__func__.fat_get_cluster, i64 noundef %45) #11, !dbg !4978
  store i32 -5, ptr %nr, align 4, !dbg !4980
  br label %out, !dbg !4981

if.else55:                                        ; preds = %if.else
  %46 = load i32, ptr %nr, align 4, !dbg !4982
  %cmp56 = icmp eq i32 %46, 268435455, !dbg !4984
  br i1 %cmp56, label %if.then58, label %if.end59, !dbg !4985

if.then58:                                        ; preds = %if.else55
  %47 = load ptr, ptr %inode.addr, align 8, !dbg !4986
  call void @fat_cache_add(ptr noundef %47, ptr noundef %cid) #9, !dbg !4988
  br label %out, !dbg !4989

if.end59:                                         ; preds = %if.else55
  br label %if.end60

if.end60:                                         ; preds = %if.end59
  br label %if.end61

if.end61:                                         ; preds = %if.end60
  %48 = load ptr, ptr %fclus.addr, align 8, !dbg !4990
  %49 = load i32, ptr %48, align 4, !dbg !4991
  %inc = add i32 %49, 1, !dbg !4991
  store i32 %inc, ptr %48, align 4, !dbg !4991
  %50 = load i32, ptr %nr, align 4, !dbg !4992
  %51 = load ptr, ptr %dclus.addr, align 8, !dbg !4993
  store i32 %50, ptr %51, align 4, !dbg !4994
  %52 = load ptr, ptr %dclus.addr, align 8, !dbg !4995
  %53 = load i32, ptr %52, align 4, !dbg !4997
  %call62 = call i32 @cache_contiguous(ptr noundef %cid, i32 noundef %53) #9, !dbg !4998
  %tobool63 = icmp ne i32 %call62, 0, !dbg !4998
  br i1 %tobool63, label %if.end65, label %if.then64, !dbg !4999

if.then64:                                        ; preds = %if.end61
  %54 = load ptr, ptr %fclus.addr, align 8, !dbg !5000
  %55 = load i32, ptr %54, align 4, !dbg !5001
  %56 = load ptr, ptr %dclus.addr, align 8, !dbg !5002
  %57 = load i32, ptr %56, align 4, !dbg !5003
  call void @cache_init(ptr noundef %cid, i32 noundef %55, i32 noundef %57) #9, !dbg !5004
  br label %if.end65, !dbg !5004

if.end65:                                         ; preds = %if.then64, %if.end61
  br label %while.cond, !dbg !4948, !llvm.loop !5005

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %nr, align 4, !dbg !5007
  %58 = load ptr, ptr %inode.addr, align 8, !dbg !5008
  call void @fat_cache_add(ptr noundef %58, ptr noundef %cid) #9, !dbg !5009
  br label %out, !dbg !5009

out:                                              ; preds = %while.end, %if.then58, %if.then49, %if.then46, %if.then36
  call void @llvm.dbg.label(metadata !4877), !dbg !5010
  call void @fatent_brelse(ptr noundef %fatent) #9, !dbg !5011
  %59 = load i32, ptr %nr, align 4, !dbg !5012
  store i32 %59, ptr %retval, align 4, !dbg !5013
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5013

cleanup:                                          ; preds = %out, %if.then25, %if.then18
  call void @llvm.lifetime.end.p0(i64 4, ptr %nr) #10, !dbg !5014
  call void @llvm.lifetime.end.p0(i64 16, ptr %cid) #10, !dbg !5014
  call void @llvm.lifetime.end.p0(i64 56, ptr %fatent) #10, !dbg !5014
  call void @llvm.lifetime.end.p0(i64 4, ptr %limit) #10, !dbg !5014
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbi) #10, !dbg !5014
  call void @llvm.lifetime.end.p0(i64 8, ptr %sb) #10, !dbg !5014
  %60 = load i32, ptr %retval, align 4, !dbg !5014
  ret i32 %60, !dbg !5014
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @MSDOS_SB(ptr noundef %sb) #5 align 16 !dbg !5015 {
entry:
  %sb.addr = alloca ptr, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !5019, metadata !DIExpression()), !dbg !5020
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !5021
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 29, !dbg !5022
  %1 = load ptr, ptr %s_fs_info, align 32, !dbg !5022
  ret ptr %1, !dbg !5023
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @fat_valid_entry(ptr noundef %sbi, i32 noundef %entry1) #5 align 16 !dbg !5024 {
entry:
  %sbi.addr = alloca ptr, align 8
  %entry.addr = alloca i32, align 4
  store ptr %sbi, ptr %sbi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbi.addr, metadata !5028, metadata !DIExpression()), !dbg !5030
  store i32 %entry1, ptr %entry.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5029, metadata !DIExpression()), !dbg !5031
  %0 = load i32, ptr %entry.addr, align 4, !dbg !5032
  %cmp = icmp sle i32 2, %0, !dbg !5033
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !5034

land.rhs:                                         ; preds = %entry
  %1 = load i32, ptr %entry.addr, align 4, !dbg !5035
  %conv = sext i32 %1 to i64, !dbg !5035
  %2 = load ptr, ptr %sbi.addr, align 8, !dbg !5036
  %max_cluster = getelementptr inbounds %struct.msdos_sb_info, ptr %2, i32 0, i32 10, !dbg !5037
  %3 = load i64, ptr %max_cluster, align 8, !dbg !5037
  %cmp2 = icmp ult i64 %conv, %3, !dbg !5038
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp2, %land.rhs ], !dbg !5039
  ret i1 %4, !dbg !5040
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5041 dso_local void @__fat_fs_error(ptr noundef, i32 noundef, ptr noundef, ...) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5044 dso_local i32 @___ratelimit(ptr noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fat_cache_lookup(ptr noundef %inode, i32 noundef %fclus, ptr noundef %cid, ptr noundef %cached_fclus, ptr noundef %cached_dclus) #2 align 16 !dbg !4556 {
entry:
  %inode.addr = alloca ptr, align 8
  %fclus.addr = alloca i32, align 4
  %cid.addr = alloca ptr, align 8
  %cached_fclus.addr = alloca ptr, align 8
  %cached_dclus.addr = alloca ptr, align 8
  %hit = alloca ptr, align 8
  %p = alloca ptr, align 8
  %offset = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr14 = alloca ptr, align 8
  %tmp17 = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !4567, metadata !DIExpression()), !dbg !5048
  store i32 %fclus, ptr %fclus.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fclus.addr, metadata !4568, metadata !DIExpression()), !dbg !5049
  store ptr %cid, ptr %cid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cid.addr, metadata !4569, metadata !DIExpression()), !dbg !5050
  store ptr %cached_fclus, ptr %cached_fclus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cached_fclus.addr, metadata !4570, metadata !DIExpression()), !dbg !5051
  store ptr %cached_dclus, ptr %cached_dclus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cached_dclus.addr, metadata !4571, metadata !DIExpression()), !dbg !5052
  call void @llvm.lifetime.start.p0(i64 8, ptr %hit) #10, !dbg !5053
  call void @llvm.dbg.declare(metadata ptr %hit, metadata !4572, metadata !DIExpression()), !dbg !5054
  store ptr @fat_cache_lookup.nohit, ptr %hit, align 8, !dbg !5054
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10, !dbg !5053
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4573, metadata !DIExpression()), !dbg !5055
  call void @llvm.lifetime.start.p0(i64 4, ptr %offset) #10, !dbg !5056
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !4574, metadata !DIExpression()), !dbg !5057
  store i32 -1, ptr %offset, align 4, !dbg !5057
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5058
  %call = call ptr @MSDOS_I(ptr noundef %0) #9, !dbg !5059
  %cache_lru_lock = getelementptr inbounds %struct.msdos_inode_info, ptr %call, i32 0, i32 0, !dbg !5060
  call void @spin_lock(ptr noundef %cache_lru_lock) #9, !dbg !5061
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !5062
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4575, metadata !DIExpression()), !dbg !5062
  %1 = load ptr, ptr %inode.addr, align 8, !dbg !5062
  %call1 = call ptr @MSDOS_I(ptr noundef %1) #9, !dbg !5062
  %cache_lru = getelementptr inbounds %struct.msdos_inode_info, ptr %call1, i32 0, i32 1, !dbg !5062
  %next = getelementptr inbounds %struct.list_head, ptr %cache_lru, i32 0, i32 0, !dbg !5062
  %2 = load ptr, ptr %next, align 8, !dbg !5062
  store ptr %2, ptr %__mptr, align 8, !dbg !5062
  %3 = load ptr, ptr %__mptr, align 8, !dbg !5062
  %add.ptr = getelementptr i8, ptr %3, i64 0, !dbg !5062
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5062
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !5063
  %4 = load ptr, ptr %tmp, align 8, !dbg !5062
  store ptr %4, ptr %p, align 8, !dbg !5063
  br label %for.cond, !dbg !5063

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load ptr, ptr %p, align 8, !dbg !5064
  %cache_list = getelementptr inbounds %struct.fat_cache, ptr %5, i32 0, i32 0, !dbg !5064
  %6 = load ptr, ptr %inode.addr, align 8, !dbg !5064
  %call2 = call ptr @MSDOS_I(ptr noundef %6) #9, !dbg !5064
  %cache_lru3 = getelementptr inbounds %struct.msdos_inode_info, ptr %call2, i32 0, i32 1, !dbg !5064
  %cmp = icmp eq ptr %cache_list, %cache_lru3, !dbg !5064
  %lnot = xor i1 %cmp, true, !dbg !5064
  br i1 %lnot, label %for.body, label %for.end, !dbg !5063

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %p, align 8, !dbg !5065
  %fcluster = getelementptr inbounds %struct.fat_cache, ptr %7, i32 0, i32 2, !dbg !5068
  %8 = load i32, ptr %fcluster, align 4, !dbg !5068
  %9 = load i32, ptr %fclus.addr, align 4, !dbg !5069
  %cmp4 = icmp sle i32 %8, %9, !dbg !5070
  br i1 %cmp4, label %land.lhs.true, label %if.end13, !dbg !5071

land.lhs.true:                                    ; preds = %for.body
  %10 = load ptr, ptr %hit, align 8, !dbg !5072
  %fcluster5 = getelementptr inbounds %struct.fat_cache, ptr %10, i32 0, i32 2, !dbg !5073
  %11 = load i32, ptr %fcluster5, align 4, !dbg !5073
  %12 = load ptr, ptr %p, align 8, !dbg !5074
  %fcluster6 = getelementptr inbounds %struct.fat_cache, ptr %12, i32 0, i32 2, !dbg !5075
  %13 = load i32, ptr %fcluster6, align 4, !dbg !5075
  %cmp7 = icmp slt i32 %11, %13, !dbg !5076
  br i1 %cmp7, label %if.then, label %if.end13, !dbg !5077

if.then:                                          ; preds = %land.lhs.true
  %14 = load ptr, ptr %p, align 8, !dbg !5078
  store ptr %14, ptr %hit, align 8, !dbg !5080
  %15 = load ptr, ptr %hit, align 8, !dbg !5081
  %fcluster8 = getelementptr inbounds %struct.fat_cache, ptr %15, i32 0, i32 2, !dbg !5083
  %16 = load i32, ptr %fcluster8, align 4, !dbg !5083
  %17 = load ptr, ptr %hit, align 8, !dbg !5084
  %nr_contig = getelementptr inbounds %struct.fat_cache, ptr %17, i32 0, i32 1, !dbg !5085
  %18 = load i32, ptr %nr_contig, align 8, !dbg !5085
  %add = add i32 %16, %18, !dbg !5086
  %19 = load i32, ptr %fclus.addr, align 4, !dbg !5087
  %cmp9 = icmp slt i32 %add, %19, !dbg !5088
  br i1 %cmp9, label %if.then10, label %if.else, !dbg !5089

if.then10:                                        ; preds = %if.then
  %20 = load ptr, ptr %hit, align 8, !dbg !5090
  %nr_contig11 = getelementptr inbounds %struct.fat_cache, ptr %20, i32 0, i32 1, !dbg !5092
  %21 = load i32, ptr %nr_contig11, align 8, !dbg !5092
  store i32 %21, ptr %offset, align 4, !dbg !5093
  br label %if.end, !dbg !5094

if.else:                                          ; preds = %if.then
  %22 = load i32, ptr %fclus.addr, align 4, !dbg !5095
  %23 = load ptr, ptr %hit, align 8, !dbg !5097
  %fcluster12 = getelementptr inbounds %struct.fat_cache, ptr %23, i32 0, i32 2, !dbg !5098
  %24 = load i32, ptr %fcluster12, align 4, !dbg !5098
  %sub = sub i32 %22, %24, !dbg !5099
  store i32 %sub, ptr %offset, align 4, !dbg !5100
  br label %for.end, !dbg !5101

if.end:                                           ; preds = %if.then10
  br label %if.end13, !dbg !5102

if.end13:                                         ; preds = %if.end, %land.lhs.true, %for.body
  br label %for.inc, !dbg !5103

for.inc:                                          ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr14) #10, !dbg !5104
  call void @llvm.dbg.declare(metadata ptr %__mptr14, metadata !4578, metadata !DIExpression()), !dbg !5104
  %25 = load ptr, ptr %p, align 8, !dbg !5104
  %cache_list15 = getelementptr inbounds %struct.fat_cache, ptr %25, i32 0, i32 0, !dbg !5104
  %next16 = getelementptr inbounds %struct.list_head, ptr %cache_list15, i32 0, i32 0, !dbg !5104
  %26 = load ptr, ptr %next16, align 8, !dbg !5104
  store ptr %26, ptr %__mptr14, align 8, !dbg !5104
  %27 = load ptr, ptr %__mptr14, align 8, !dbg !5104
  %add.ptr18 = getelementptr i8, ptr %27, i64 0, !dbg !5104
  store ptr %add.ptr18, ptr %tmp17, align 8, !dbg !5104
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr14) #10, !dbg !5064
  %28 = load ptr, ptr %tmp17, align 8, !dbg !5104
  store ptr %28, ptr %p, align 8, !dbg !5064
  br label %for.cond, !dbg !5064, !llvm.loop !5105

for.end:                                          ; preds = %if.else, %for.cond
  %29 = load ptr, ptr %hit, align 8, !dbg !5107
  %cmp19 = icmp ne ptr %29, @fat_cache_lookup.nohit, !dbg !5109
  br i1 %cmp19, label %if.then20, label %if.end31, !dbg !5110

if.then20:                                        ; preds = %for.end
  %30 = load ptr, ptr %inode.addr, align 8, !dbg !5111
  %31 = load ptr, ptr %hit, align 8, !dbg !5113
  call void @fat_cache_update_lru(ptr noundef %30, ptr noundef %31) #9, !dbg !5114
  %32 = load ptr, ptr %inode.addr, align 8, !dbg !5115
  %call21 = call ptr @MSDOS_I(ptr noundef %32) #9, !dbg !5116
  %cache_valid_id = getelementptr inbounds %struct.msdos_inode_info, ptr %call21, i32 0, i32 3, !dbg !5117
  %33 = load i32, ptr %cache_valid_id, align 4, !dbg !5117
  %34 = load ptr, ptr %cid.addr, align 8, !dbg !5118
  %id = getelementptr inbounds %struct.fat_cache_id, ptr %34, i32 0, i32 0, !dbg !5119
  store i32 %33, ptr %id, align 4, !dbg !5120
  %35 = load ptr, ptr %hit, align 8, !dbg !5121
  %nr_contig22 = getelementptr inbounds %struct.fat_cache, ptr %35, i32 0, i32 1, !dbg !5122
  %36 = load i32, ptr %nr_contig22, align 8, !dbg !5122
  %37 = load ptr, ptr %cid.addr, align 8, !dbg !5123
  %nr_contig23 = getelementptr inbounds %struct.fat_cache_id, ptr %37, i32 0, i32 1, !dbg !5124
  store i32 %36, ptr %nr_contig23, align 4, !dbg !5125
  %38 = load ptr, ptr %hit, align 8, !dbg !5126
  %fcluster24 = getelementptr inbounds %struct.fat_cache, ptr %38, i32 0, i32 2, !dbg !5127
  %39 = load i32, ptr %fcluster24, align 4, !dbg !5127
  %40 = load ptr, ptr %cid.addr, align 8, !dbg !5128
  %fcluster25 = getelementptr inbounds %struct.fat_cache_id, ptr %40, i32 0, i32 2, !dbg !5129
  store i32 %39, ptr %fcluster25, align 4, !dbg !5130
  %41 = load ptr, ptr %hit, align 8, !dbg !5131
  %dcluster = getelementptr inbounds %struct.fat_cache, ptr %41, i32 0, i32 3, !dbg !5132
  %42 = load i32, ptr %dcluster, align 8, !dbg !5132
  %43 = load ptr, ptr %cid.addr, align 8, !dbg !5133
  %dcluster26 = getelementptr inbounds %struct.fat_cache_id, ptr %43, i32 0, i32 3, !dbg !5134
  store i32 %42, ptr %dcluster26, align 4, !dbg !5135
  %44 = load ptr, ptr %cid.addr, align 8, !dbg !5136
  %fcluster27 = getelementptr inbounds %struct.fat_cache_id, ptr %44, i32 0, i32 2, !dbg !5137
  %45 = load i32, ptr %fcluster27, align 4, !dbg !5137
  %46 = load i32, ptr %offset, align 4, !dbg !5138
  %add28 = add i32 %45, %46, !dbg !5139
  %47 = load ptr, ptr %cached_fclus.addr, align 8, !dbg !5140
  store i32 %add28, ptr %47, align 4, !dbg !5141
  %48 = load ptr, ptr %cid.addr, align 8, !dbg !5142
  %dcluster29 = getelementptr inbounds %struct.fat_cache_id, ptr %48, i32 0, i32 3, !dbg !5143
  %49 = load i32, ptr %dcluster29, align 4, !dbg !5143
  %50 = load i32, ptr %offset, align 4, !dbg !5144
  %add30 = add i32 %49, %50, !dbg !5145
  %51 = load ptr, ptr %cached_dclus.addr, align 8, !dbg !5146
  store i32 %add30, ptr %51, align 4, !dbg !5147
  br label %if.end31, !dbg !5148

if.end31:                                         ; preds = %if.then20, %for.end
  %52 = load ptr, ptr %inode.addr, align 8, !dbg !5149
  %call32 = call ptr @MSDOS_I(ptr noundef %52) #9, !dbg !5150
  %cache_lru_lock33 = getelementptr inbounds %struct.msdos_inode_info, ptr %call32, i32 0, i32 0, !dbg !5151
  call void @spin_unlock(ptr noundef %cache_lru_lock33) #9, !dbg !5152
  %53 = load i32, ptr %offset, align 4, !dbg !5153
  call void @llvm.lifetime.end.p0(i64 4, ptr %offset) #10, !dbg !5154
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10, !dbg !5154
  call void @llvm.lifetime.end.p0(i64 8, ptr %hit) #10, !dbg !5154
  ret i32 %53, !dbg !5155
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cache_init(ptr noundef %cid, i32 noundef %fclus, i32 noundef %dclus) #5 align 16 !dbg !5156 {
entry:
  %cid.addr = alloca ptr, align 8
  %fclus.addr = alloca i32, align 4
  %dclus.addr = alloca i32, align 4
  store ptr %cid, ptr %cid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cid.addr, metadata !5160, metadata !DIExpression()), !dbg !5163
  store i32 %fclus, ptr %fclus.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fclus.addr, metadata !5161, metadata !DIExpression()), !dbg !5164
  store i32 %dclus, ptr %dclus.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dclus.addr, metadata !5162, metadata !DIExpression()), !dbg !5165
  %0 = load ptr, ptr %cid.addr, align 8, !dbg !5166
  %id = getelementptr inbounds %struct.fat_cache_id, ptr %0, i32 0, i32 0, !dbg !5167
  store i32 0, ptr %id, align 4, !dbg !5168
  %1 = load i32, ptr %fclus.addr, align 4, !dbg !5169
  %2 = load ptr, ptr %cid.addr, align 8, !dbg !5170
  %fcluster = getelementptr inbounds %struct.fat_cache_id, ptr %2, i32 0, i32 2, !dbg !5171
  store i32 %1, ptr %fcluster, align 4, !dbg !5172
  %3 = load i32, ptr %dclus.addr, align 4, !dbg !5173
  %4 = load ptr, ptr %cid.addr, align 8, !dbg !5174
  %dcluster = getelementptr inbounds %struct.fat_cache_id, ptr %4, i32 0, i32 3, !dbg !5175
  store i32 %3, ptr %dcluster, align 4, !dbg !5176
  %5 = load ptr, ptr %cid.addr, align 8, !dbg !5177
  %nr_contig = getelementptr inbounds %struct.fat_cache_id, ptr %5, i32 0, i32 1, !dbg !5178
  store i32 0, ptr %nr_contig, align 4, !dbg !5179
  ret void, !dbg !5180
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fatent_init(ptr noundef %fatent) #5 align 16 !dbg !5181 {
entry:
  %fatent.addr = alloca ptr, align 8
  store ptr %fatent, ptr %fatent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fatent.addr, metadata !5186, metadata !DIExpression()), !dbg !5187
  %0 = load ptr, ptr %fatent.addr, align 8, !dbg !5188
  %nr_bhs = getelementptr inbounds %struct.fat_entry, ptr %0, i32 0, i32 2, !dbg !5189
  store i32 0, ptr %nr_bhs, align 8, !dbg !5190
  %1 = load ptr, ptr %fatent.addr, align 8, !dbg !5191
  %entry1 = getelementptr inbounds %struct.fat_entry, ptr %1, i32 0, i32 0, !dbg !5192
  store i32 0, ptr %entry1, align 8, !dbg !5193
  %2 = load ptr, ptr %fatent.addr, align 8, !dbg !5194
  %u = getelementptr inbounds %struct.fat_entry, ptr %2, i32 0, i32 1, !dbg !5195
  store ptr null, ptr %u, align 8, !dbg !5196
  %3 = load ptr, ptr %fatent.addr, align 8, !dbg !5197
  %bhs = getelementptr inbounds %struct.fat_entry, ptr %3, i32 0, i32 3, !dbg !5198
  %arrayidx = getelementptr [2 x ptr], ptr %bhs, i64 0, i64 1, !dbg !5197
  store ptr null, ptr %arrayidx, align 8, !dbg !5199
  %4 = load ptr, ptr %fatent.addr, align 8, !dbg !5200
  %bhs2 = getelementptr inbounds %struct.fat_entry, ptr %4, i32 0, i32 3, !dbg !5201
  %arrayidx3 = getelementptr [2 x ptr], ptr %bhs2, i64 0, i64 0, !dbg !5200
  store ptr null, ptr %arrayidx3, align 8, !dbg !5202
  %5 = load ptr, ptr %fatent.addr, align 8, !dbg !5203
  %fat_inode = getelementptr inbounds %struct.fat_entry, ptr %5, i32 0, i32 4, !dbg !5204
  store ptr null, ptr %fat_inode, align 8, !dbg !5205
  ret void, !dbg !5206
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5207 dso_local i32 @fat_ent_read(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fat_cache_add(ptr noundef %inode, ptr noundef %new) #2 align 16 !dbg !5210 {
entry:
  %inode.addr = alloca ptr, align 8
  %new.addr = alloca ptr, align 8
  %cache = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %p = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp37 = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5214, metadata !DIExpression()), !dbg !5227
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5215, metadata !DIExpression()), !dbg !5228
  call void @llvm.lifetime.start.p0(i64 8, ptr %cache) #10, !dbg !5229
  call void @llvm.dbg.declare(metadata ptr %cache, metadata !5216, metadata !DIExpression()), !dbg !5230
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #10, !dbg !5229
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !5217, metadata !DIExpression()), !dbg !5231
  %0 = load ptr, ptr %new.addr, align 8, !dbg !5232
  %fcluster = getelementptr inbounds %struct.fat_cache_id, ptr %0, i32 0, i32 2, !dbg !5234
  %1 = load i32, ptr %fcluster, align 4, !dbg !5234
  %cmp = icmp eq i32 %1, -1, !dbg !5235
  br i1 %cmp, label %if.then, label %if.end, !dbg !5236

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5237

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %inode.addr, align 8, !dbg !5238
  %call = call ptr @MSDOS_I(ptr noundef %2) #9, !dbg !5239
  %cache_lru_lock = getelementptr inbounds %struct.msdos_inode_info, ptr %call, i32 0, i32 0, !dbg !5240
  call void @spin_lock(ptr noundef %cache_lru_lock) #9, !dbg !5241
  %3 = load ptr, ptr %new.addr, align 8, !dbg !5242
  %id = getelementptr inbounds %struct.fat_cache_id, ptr %3, i32 0, i32 0, !dbg !5244
  %4 = load i32, ptr %id, align 4, !dbg !5244
  %cmp1 = icmp ne i32 %4, 0, !dbg !5245
  br i1 %cmp1, label %land.lhs.true, label %if.end6, !dbg !5246

land.lhs.true:                                    ; preds = %if.end
  %5 = load ptr, ptr %new.addr, align 8, !dbg !5247
  %id2 = getelementptr inbounds %struct.fat_cache_id, ptr %5, i32 0, i32 0, !dbg !5248
  %6 = load i32, ptr %id2, align 4, !dbg !5248
  %7 = load ptr, ptr %inode.addr, align 8, !dbg !5249
  %call3 = call ptr @MSDOS_I(ptr noundef %7) #9, !dbg !5250
  %cache_valid_id = getelementptr inbounds %struct.msdos_inode_info, ptr %call3, i32 0, i32 3, !dbg !5251
  %8 = load i32, ptr %cache_valid_id, align 4, !dbg !5251
  %cmp4 = icmp ne i32 %6, %8, !dbg !5252
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5253

if.then5:                                         ; preds = %land.lhs.true
  br label %out, !dbg !5254

if.end6:                                          ; preds = %land.lhs.true, %if.end
  %9 = load ptr, ptr %inode.addr, align 8, !dbg !5255
  %10 = load ptr, ptr %new.addr, align 8, !dbg !5256
  %call7 = call ptr @fat_cache_merge(ptr noundef %9, ptr noundef %10) #9, !dbg !5257
  store ptr %call7, ptr %cache, align 8, !dbg !5258
  %11 = load ptr, ptr %cache, align 8, !dbg !5259
  %cmp8 = icmp eq ptr %11, null, !dbg !5260
  br i1 %cmp8, label %if.then9, label %if.end43, !dbg !5261

if.then9:                                         ; preds = %if.end6
  %12 = load ptr, ptr %inode.addr, align 8, !dbg !5262
  %call10 = call ptr @MSDOS_I(ptr noundef %12) #9, !dbg !5263
  %nr_caches = getelementptr inbounds %struct.msdos_inode_info, ptr %call10, i32 0, i32 2, !dbg !5264
  %13 = load i32, ptr %nr_caches, align 8, !dbg !5264
  %14 = load ptr, ptr %inode.addr, align 8, !dbg !5265
  %call11 = call i32 @fat_max_cache(ptr noundef %14) #9, !dbg !5266
  %cmp12 = icmp slt i32 %13, %call11, !dbg !5267
  br i1 %cmp12, label %if.then13, label %if.else, !dbg !5268

if.then13:                                        ; preds = %if.then9
  %15 = load ptr, ptr %inode.addr, align 8, !dbg !5269
  %call14 = call ptr @MSDOS_I(ptr noundef %15) #9, !dbg !5271
  %nr_caches15 = getelementptr inbounds %struct.msdos_inode_info, ptr %call14, i32 0, i32 2, !dbg !5272
  %16 = load i32, ptr %nr_caches15, align 8, !dbg !5273
  %inc = add i32 %16, 1, !dbg !5273
  store i32 %inc, ptr %nr_caches15, align 8, !dbg !5273
  %17 = load ptr, ptr %inode.addr, align 8, !dbg !5274
  %call16 = call ptr @MSDOS_I(ptr noundef %17) #9, !dbg !5275
  %cache_lru_lock17 = getelementptr inbounds %struct.msdos_inode_info, ptr %call16, i32 0, i32 0, !dbg !5276
  call void @spin_unlock(ptr noundef %cache_lru_lock17) #9, !dbg !5277
  %18 = load ptr, ptr %inode.addr, align 8, !dbg !5278
  %call18 = call ptr @fat_cache_alloc(ptr noundef %18) #9, !dbg !5279
  store ptr %call18, ptr %tmp, align 8, !dbg !5280
  %19 = load ptr, ptr %tmp, align 8, !dbg !5281
  %tobool = icmp ne ptr %19, null, !dbg !5281
  br i1 %tobool, label %if.end26, label %if.then19, !dbg !5283

if.then19:                                        ; preds = %if.then13
  %20 = load ptr, ptr %inode.addr, align 8, !dbg !5284
  %call20 = call ptr @MSDOS_I(ptr noundef %20) #9, !dbg !5286
  %cache_lru_lock21 = getelementptr inbounds %struct.msdos_inode_info, ptr %call20, i32 0, i32 0, !dbg !5287
  call void @spin_lock(ptr noundef %cache_lru_lock21) #9, !dbg !5288
  %21 = load ptr, ptr %inode.addr, align 8, !dbg !5289
  %call22 = call ptr @MSDOS_I(ptr noundef %21) #9, !dbg !5290
  %nr_caches23 = getelementptr inbounds %struct.msdos_inode_info, ptr %call22, i32 0, i32 2, !dbg !5291
  %22 = load i32, ptr %nr_caches23, align 8, !dbg !5292
  %dec = add i32 %22, -1, !dbg !5292
  store i32 %dec, ptr %nr_caches23, align 8, !dbg !5292
  %23 = load ptr, ptr %inode.addr, align 8, !dbg !5293
  %call24 = call ptr @MSDOS_I(ptr noundef %23) #9, !dbg !5294
  %cache_lru_lock25 = getelementptr inbounds %struct.msdos_inode_info, ptr %call24, i32 0, i32 0, !dbg !5295
  call void @spin_unlock(ptr noundef %cache_lru_lock25) #9, !dbg !5296
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5297

if.end26:                                         ; preds = %if.then13
  %24 = load ptr, ptr %inode.addr, align 8, !dbg !5298
  %call27 = call ptr @MSDOS_I(ptr noundef %24) #9, !dbg !5299
  %cache_lru_lock28 = getelementptr inbounds %struct.msdos_inode_info, ptr %call27, i32 0, i32 0, !dbg !5300
  call void @spin_lock(ptr noundef %cache_lru_lock28) #9, !dbg !5301
  %25 = load ptr, ptr %inode.addr, align 8, !dbg !5302
  %26 = load ptr, ptr %new.addr, align 8, !dbg !5303
  %call29 = call ptr @fat_cache_merge(ptr noundef %25, ptr noundef %26) #9, !dbg !5304
  store ptr %call29, ptr %cache, align 8, !dbg !5305
  %27 = load ptr, ptr %cache, align 8, !dbg !5306
  %cmp30 = icmp ne ptr %27, null, !dbg !5308
  br i1 %cmp30, label %if.then31, label %if.end35, !dbg !5309

if.then31:                                        ; preds = %if.end26
  %28 = load ptr, ptr %inode.addr, align 8, !dbg !5310
  %call32 = call ptr @MSDOS_I(ptr noundef %28) #9, !dbg !5312
  %nr_caches33 = getelementptr inbounds %struct.msdos_inode_info, ptr %call32, i32 0, i32 2, !dbg !5313
  %29 = load i32, ptr %nr_caches33, align 8, !dbg !5314
  %dec34 = add i32 %29, -1, !dbg !5314
  store i32 %dec34, ptr %nr_caches33, align 8, !dbg !5314
  %30 = load ptr, ptr %tmp, align 8, !dbg !5315
  call void @fat_cache_free(ptr noundef %30) #9, !dbg !5316
  br label %out_update_lru, !dbg !5317

if.end35:                                         ; preds = %if.end26
  %31 = load ptr, ptr %tmp, align 8, !dbg !5318
  store ptr %31, ptr %cache, align 8, !dbg !5319
  br label %if.end38, !dbg !5320

if.else:                                          ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10, !dbg !5321
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5218, metadata !DIExpression()), !dbg !5322
  %32 = load ptr, ptr %inode.addr, align 8, !dbg !5323
  %call36 = call ptr @MSDOS_I(ptr noundef %32) #9, !dbg !5324
  %cache_lru = getelementptr inbounds %struct.msdos_inode_info, ptr %call36, i32 0, i32 1, !dbg !5325
  %prev = getelementptr inbounds %struct.list_head, ptr %cache_lru, i32 0, i32 1, !dbg !5326
  %33 = load ptr, ptr %prev, align 8, !dbg !5326
  store ptr %33, ptr %p, align 8, !dbg !5322
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !5327
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5223, metadata !DIExpression()), !dbg !5327
  %34 = load ptr, ptr %p, align 8, !dbg !5327
  store ptr %34, ptr %__mptr, align 8, !dbg !5327
  %35 = load ptr, ptr %__mptr, align 8, !dbg !5327
  %add.ptr = getelementptr i8, ptr %35, i64 0, !dbg !5327
  store ptr %add.ptr, ptr %tmp37, align 8, !dbg !5327
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !5328
  %36 = load ptr, ptr %tmp37, align 8, !dbg !5327
  store ptr %36, ptr %cache, align 8, !dbg !5329
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10, !dbg !5330
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.end35
  %37 = load ptr, ptr %new.addr, align 8, !dbg !5331
  %fcluster39 = getelementptr inbounds %struct.fat_cache_id, ptr %37, i32 0, i32 2, !dbg !5332
  %38 = load i32, ptr %fcluster39, align 4, !dbg !5332
  %39 = load ptr, ptr %cache, align 8, !dbg !5333
  %fcluster40 = getelementptr inbounds %struct.fat_cache, ptr %39, i32 0, i32 2, !dbg !5334
  store i32 %38, ptr %fcluster40, align 4, !dbg !5335
  %40 = load ptr, ptr %new.addr, align 8, !dbg !5336
  %dcluster = getelementptr inbounds %struct.fat_cache_id, ptr %40, i32 0, i32 3, !dbg !5337
  %41 = load i32, ptr %dcluster, align 4, !dbg !5337
  %42 = load ptr, ptr %cache, align 8, !dbg !5338
  %dcluster41 = getelementptr inbounds %struct.fat_cache, ptr %42, i32 0, i32 3, !dbg !5339
  store i32 %41, ptr %dcluster41, align 8, !dbg !5340
  %43 = load ptr, ptr %new.addr, align 8, !dbg !5341
  %nr_contig = getelementptr inbounds %struct.fat_cache_id, ptr %43, i32 0, i32 1, !dbg !5342
  %44 = load i32, ptr %nr_contig, align 4, !dbg !5342
  %45 = load ptr, ptr %cache, align 8, !dbg !5343
  %nr_contig42 = getelementptr inbounds %struct.fat_cache, ptr %45, i32 0, i32 1, !dbg !5344
  store i32 %44, ptr %nr_contig42, align 8, !dbg !5345
  br label %if.end43, !dbg !5346

if.end43:                                         ; preds = %if.end38, %if.end6
  br label %out_update_lru, !dbg !5347

out_update_lru:                                   ; preds = %if.end43, %if.then31
  call void @llvm.dbg.label(metadata !5225), !dbg !5348
  %46 = load ptr, ptr %inode.addr, align 8, !dbg !5349
  %47 = load ptr, ptr %cache, align 8, !dbg !5350
  call void @fat_cache_update_lru(ptr noundef %46, ptr noundef %47) #9, !dbg !5351
  br label %out, !dbg !5351

out:                                              ; preds = %out_update_lru, %if.then5
  call void @llvm.dbg.label(metadata !5226), !dbg !5352
  %48 = load ptr, ptr %inode.addr, align 8, !dbg !5353
  %call44 = call ptr @MSDOS_I(ptr noundef %48) #9, !dbg !5354
  %cache_lru_lock45 = getelementptr inbounds %struct.msdos_inode_info, ptr %call44, i32 0, i32 0, !dbg !5355
  call void @spin_unlock(ptr noundef %cache_lru_lock45) #9, !dbg !5356
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5357
  br label %cleanup, !dbg !5357

cleanup:                                          ; preds = %out, %if.then19, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #10, !dbg !5357
  call void @llvm.lifetime.end.p0(i64 8, ptr %cache) #10, !dbg !5357
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5357

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cache_contiguous(ptr noundef %cid, i32 noundef %dclus) #5 align 16 !dbg !5358 {
entry:
  %cid.addr = alloca ptr, align 8
  %dclus.addr = alloca i32, align 4
  store ptr %cid, ptr %cid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cid.addr, metadata !5362, metadata !DIExpression()), !dbg !5364
  store i32 %dclus, ptr %dclus.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dclus.addr, metadata !5363, metadata !DIExpression()), !dbg !5365
  %0 = load ptr, ptr %cid.addr, align 8, !dbg !5366
  %nr_contig = getelementptr inbounds %struct.fat_cache_id, ptr %0, i32 0, i32 1, !dbg !5367
  %1 = load i32, ptr %nr_contig, align 4, !dbg !5368
  %inc = add i32 %1, 1, !dbg !5368
  store i32 %inc, ptr %nr_contig, align 4, !dbg !5368
  %2 = load ptr, ptr %cid.addr, align 8, !dbg !5369
  %dcluster = getelementptr inbounds %struct.fat_cache_id, ptr %2, i32 0, i32 3, !dbg !5370
  %3 = load i32, ptr %dcluster, align 4, !dbg !5370
  %4 = load ptr, ptr %cid.addr, align 8, !dbg !5371
  %nr_contig1 = getelementptr inbounds %struct.fat_cache_id, ptr %4, i32 0, i32 1, !dbg !5372
  %5 = load i32, ptr %nr_contig1, align 4, !dbg !5372
  %add = add i32 %3, %5, !dbg !5373
  %6 = load i32, ptr %dclus.addr, align 4, !dbg !5374
  %cmp = icmp eq i32 %add, %6, !dbg !5375
  %conv = zext i1 %cmp to i32, !dbg !5375
  ret i32 %conv, !dbg !5376
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fatent_brelse(ptr noundef %fatent) #5 align 16 !dbg !5377 {
entry:
  %fatent.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %fatent, ptr %fatent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fatent.addr, metadata !5379, metadata !DIExpression()), !dbg !5381
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !5382
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5380, metadata !DIExpression()), !dbg !5383
  %0 = load ptr, ptr %fatent.addr, align 8, !dbg !5384
  %u = getelementptr inbounds %struct.fat_entry, ptr %0, i32 0, i32 1, !dbg !5385
  store ptr null, ptr %u, align 8, !dbg !5386
  store i32 0, ptr %i, align 4, !dbg !5387
  br label %for.cond, !dbg !5389

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !dbg !5390
  %2 = load ptr, ptr %fatent.addr, align 8, !dbg !5392
  %nr_bhs = getelementptr inbounds %struct.fat_entry, ptr %2, i32 0, i32 2, !dbg !5393
  %3 = load i32, ptr %nr_bhs, align 8, !dbg !5393
  %cmp = icmp slt i32 %1, %3, !dbg !5394
  br i1 %cmp, label %for.body, label %for.end, !dbg !5395

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %fatent.addr, align 8, !dbg !5396
  %bhs = getelementptr inbounds %struct.fat_entry, ptr %4, i32 0, i32 3, !dbg !5397
  %5 = load i32, ptr %i, align 4, !dbg !5398
  %idxprom = sext i32 %5 to i64, !dbg !5396
  %arrayidx = getelementptr [2 x ptr], ptr %bhs, i64 0, i64 %idxprom, !dbg !5396
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !5396
  call void @brelse(ptr noundef %6) #9, !dbg !5399
  br label %for.inc, !dbg !5399

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4, !dbg !5400
  %inc = add i32 %7, 1, !dbg !5400
  store i32 %inc, ptr %i, align 4, !dbg !5400
  br label %for.cond, !dbg !5401, !llvm.loop !5402

for.end:                                          ; preds = %for.cond
  %8 = load ptr, ptr %fatent.addr, align 8, !dbg !5404
  %nr_bhs1 = getelementptr inbounds %struct.fat_entry, ptr %8, i32 0, i32 2, !dbg !5405
  store i32 0, ptr %nr_bhs1, align 8, !dbg !5406
  %9 = load ptr, ptr %fatent.addr, align 8, !dbg !5407
  %bhs2 = getelementptr inbounds %struct.fat_entry, ptr %9, i32 0, i32 3, !dbg !5408
  %arrayidx3 = getelementptr [2 x ptr], ptr %bhs2, i64 0, i64 1, !dbg !5407
  store ptr null, ptr %arrayidx3, align 8, !dbg !5409
  %10 = load ptr, ptr %fatent.addr, align 8, !dbg !5410
  %bhs4 = getelementptr inbounds %struct.fat_entry, ptr %10, i32 0, i32 3, !dbg !5411
  %arrayidx5 = getelementptr [2 x ptr], ptr %bhs4, i64 0, i64 0, !dbg !5410
  store ptr null, ptr %arrayidx5, align 8, !dbg !5412
  %11 = load ptr, ptr %fatent.addr, align 8, !dbg !5413
  %fat_inode = getelementptr inbounds %struct.fat_entry, ptr %11, i32 0, i32 4, !dbg !5414
  store ptr null, ptr %fat_inode, align 8, !dbg !5415
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !5416
  ret void, !dbg !5416
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @fat_get_mapped_cluster(ptr noundef %inode, i64 noundef %sector, i64 noundef %last_block, ptr noundef %mapped_blocks, ptr noundef %bmap) #2 align 16 !dbg !5417 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca ptr, align 8
  %sector.addr = alloca i64, align 8
  %last_block.addr = alloca i64, align 8
  %mapped_blocks.addr = alloca ptr, align 8
  %bmap.addr = alloca ptr, align 8
  %sb = alloca ptr, align 8
  %sbi = alloca ptr, align 8
  %cluster = alloca i32, align 4
  %offset = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5421, metadata !DIExpression()), !dbg !5430
  store i64 %sector, ptr %sector.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sector.addr, metadata !5422, metadata !DIExpression()), !dbg !5431
  store i64 %last_block, ptr %last_block.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %last_block.addr, metadata !5423, metadata !DIExpression()), !dbg !5432
  store ptr %mapped_blocks, ptr %mapped_blocks.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mapped_blocks.addr, metadata !5424, metadata !DIExpression()), !dbg !5433
  store ptr %bmap, ptr %bmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bmap.addr, metadata !5425, metadata !DIExpression()), !dbg !5434
  call void @llvm.lifetime.start.p0(i64 8, ptr %sb) #10, !dbg !5435
  call void @llvm.dbg.declare(metadata ptr %sb, metadata !5426, metadata !DIExpression()), !dbg !5436
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5437
  %i_sb = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9, !dbg !5438
  %1 = load ptr, ptr %i_sb, align 8, !dbg !5438
  store ptr %1, ptr %sb, align 8, !dbg !5436
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbi) #10, !dbg !5439
  call void @llvm.dbg.declare(metadata ptr %sbi, metadata !5427, metadata !DIExpression()), !dbg !5440
  %2 = load ptr, ptr %sb, align 8, !dbg !5441
  %call = call ptr @MSDOS_SB(ptr noundef %2) #9, !dbg !5442
  store ptr %call, ptr %sbi, align 8, !dbg !5440
  call void @llvm.lifetime.start.p0(i64 4, ptr %cluster) #10, !dbg !5443
  call void @llvm.dbg.declare(metadata ptr %cluster, metadata !5428, metadata !DIExpression()), !dbg !5444
  call void @llvm.lifetime.start.p0(i64 4, ptr %offset) #10, !dbg !5443
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !5429, metadata !DIExpression()), !dbg !5445
  %3 = load i64, ptr %sector.addr, align 8, !dbg !5446
  %4 = load ptr, ptr %sbi, align 8, !dbg !5447
  %cluster_bits = getelementptr inbounds %struct.msdos_sb_info, ptr %4, i32 0, i32 1, !dbg !5448
  %5 = load i16, ptr %cluster_bits, align 2, !dbg !5448
  %conv = zext i16 %5 to i32, !dbg !5447
  %6 = load ptr, ptr %sb, align 8, !dbg !5449
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 2, !dbg !5450
  %7 = load i8, ptr %s_blocksize_bits, align 4, !dbg !5450
  %conv1 = zext i8 %7 to i32, !dbg !5449
  %sub = sub i32 %conv, %conv1, !dbg !5451
  %sh_prom = zext i32 %sub to i64, !dbg !5452
  %shr = lshr i64 %3, %sh_prom, !dbg !5452
  %conv2 = trunc i64 %shr to i32, !dbg !5446
  store i32 %conv2, ptr %cluster, align 4, !dbg !5453
  %8 = load i64, ptr %sector.addr, align 8, !dbg !5454
  %9 = load ptr, ptr %sbi, align 8, !dbg !5455
  %sec_per_clus = getelementptr inbounds %struct.msdos_sb_info, ptr %9, i32 0, i32 0, !dbg !5456
  %10 = load i16, ptr %sec_per_clus, align 8, !dbg !5456
  %conv3 = zext i16 %10 to i32, !dbg !5455
  %sub4 = sub i32 %conv3, 1, !dbg !5457
  %conv5 = sext i32 %sub4 to i64, !dbg !5458
  %and = and i64 %8, %conv5, !dbg !5459
  %conv6 = trunc i64 %and to i32, !dbg !5454
  store i32 %conv6, ptr %offset, align 4, !dbg !5460
  %11 = load ptr, ptr %inode.addr, align 8, !dbg !5461
  %12 = load i32, ptr %cluster, align 4, !dbg !5462
  %call7 = call i32 @fat_bmap_cluster(ptr noundef %11, i32 noundef %12) #9, !dbg !5463
  store i32 %call7, ptr %cluster, align 4, !dbg !5464
  %13 = load i32, ptr %cluster, align 4, !dbg !5465
  %cmp = icmp slt i32 %13, 0, !dbg !5467
  br i1 %cmp, label %if.then, label %if.else, !dbg !5468

if.then:                                          ; preds = %entry
  %14 = load i32, ptr %cluster, align 4, !dbg !5469
  store i32 %14, ptr %retval, align 4, !dbg !5470
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5470

if.else:                                          ; preds = %entry
  %15 = load i32, ptr %cluster, align 4, !dbg !5471
  %tobool = icmp ne i32 %15, 0, !dbg !5471
  br i1 %tobool, label %if.then9, label %if.end21, !dbg !5473

if.then9:                                         ; preds = %if.else
  %16 = load ptr, ptr %sbi, align 8, !dbg !5474
  %17 = load i32, ptr %cluster, align 4, !dbg !5476
  %call10 = call i64 @fat_clus_to_blknr(ptr noundef %16, i32 noundef %17) #9, !dbg !5477
  %18 = load i32, ptr %offset, align 4, !dbg !5478
  %conv11 = sext i32 %18 to i64, !dbg !5478
  %add = add i64 %call10, %conv11, !dbg !5479
  %19 = load ptr, ptr %bmap.addr, align 8, !dbg !5480
  store i64 %add, ptr %19, align 8, !dbg !5481
  %20 = load ptr, ptr %sbi, align 8, !dbg !5482
  %sec_per_clus12 = getelementptr inbounds %struct.msdos_sb_info, ptr %20, i32 0, i32 0, !dbg !5483
  %21 = load i16, ptr %sec_per_clus12, align 8, !dbg !5483
  %conv13 = zext i16 %21 to i32, !dbg !5482
  %22 = load i32, ptr %offset, align 4, !dbg !5484
  %sub14 = sub i32 %conv13, %22, !dbg !5485
  %conv15 = sext i32 %sub14 to i64, !dbg !5482
  %23 = load ptr, ptr %mapped_blocks.addr, align 8, !dbg !5486
  store i64 %conv15, ptr %23, align 8, !dbg !5487
  %24 = load ptr, ptr %mapped_blocks.addr, align 8, !dbg !5488
  %25 = load i64, ptr %24, align 8, !dbg !5490
  %26 = load i64, ptr %last_block.addr, align 8, !dbg !5491
  %27 = load i64, ptr %sector.addr, align 8, !dbg !5492
  %sub16 = sub i64 %26, %27, !dbg !5493
  %cmp17 = icmp ugt i64 %25, %sub16, !dbg !5494
  br i1 %cmp17, label %if.then19, label %if.end, !dbg !5495

if.then19:                                        ; preds = %if.then9
  %28 = load i64, ptr %last_block.addr, align 8, !dbg !5496
  %29 = load i64, ptr %sector.addr, align 8, !dbg !5497
  %sub20 = sub i64 %28, %29, !dbg !5498
  %30 = load ptr, ptr %mapped_blocks.addr, align 8, !dbg !5499
  store i64 %sub20, ptr %30, align 8, !dbg !5500
  br label %if.end, !dbg !5501

if.end:                                           ; preds = %if.then19, %if.then9
  br label %if.end21, !dbg !5502

if.end21:                                         ; preds = %if.end, %if.else
  br label %if.end22

if.end22:                                         ; preds = %if.end21
  store i32 0, ptr %retval, align 4, !dbg !5503
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5503

cleanup:                                          ; preds = %if.end22, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %offset) #10, !dbg !5504
  call void @llvm.lifetime.end.p0(i64 4, ptr %cluster) #10, !dbg !5504
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbi) #10, !dbg !5504
  call void @llvm.lifetime.end.p0(i64 8, ptr %sb) #10, !dbg !5504
  %31 = load i32, ptr %retval, align 4, !dbg !5504
  ret i32 %31, !dbg !5504
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fat_bmap_cluster(ptr noundef %inode, i32 noundef %cluster) #2 align 16 !dbg !5505 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca ptr, align 8
  %cluster.addr = alloca i32, align 4
  %sb = alloca ptr, align 8
  %ret = alloca i32, align 4
  %fclus = alloca i32, align 4
  %dclus = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5507, metadata !DIExpression()), !dbg !5513
  store i32 %cluster, ptr %cluster.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cluster.addr, metadata !5508, metadata !DIExpression()), !dbg !5514
  call void @llvm.lifetime.start.p0(i64 8, ptr %sb) #10, !dbg !5515
  call void @llvm.dbg.declare(metadata ptr %sb, metadata !5509, metadata !DIExpression()), !dbg !5516
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5517
  %i_sb = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9, !dbg !5518
  %1 = load ptr, ptr %i_sb, align 8, !dbg !5518
  store ptr %1, ptr %sb, align 8, !dbg !5516
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !5519
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5510, metadata !DIExpression()), !dbg !5520
  call void @llvm.lifetime.start.p0(i64 4, ptr %fclus) #10, !dbg !5519
  call void @llvm.dbg.declare(metadata ptr %fclus, metadata !5511, metadata !DIExpression()), !dbg !5521
  call void @llvm.lifetime.start.p0(i64 4, ptr %dclus) #10, !dbg !5519
  call void @llvm.dbg.declare(metadata ptr %dclus, metadata !5512, metadata !DIExpression()), !dbg !5522
  %2 = load ptr, ptr %inode.addr, align 8, !dbg !5523
  %call = call ptr @MSDOS_I(ptr noundef %2) #9, !dbg !5525
  %i_start = getelementptr inbounds %struct.msdos_inode_info, ptr %call, i32 0, i32 5, !dbg !5526
  %3 = load i32, ptr %i_start, align 8, !dbg !5526
  %cmp = icmp eq i32 %3, 0, !dbg !5527
  br i1 %cmp, label %if.then, label %if.end, !dbg !5528

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5529
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5529

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %inode.addr, align 8, !dbg !5530
  %5 = load i32, ptr %cluster.addr, align 4, !dbg !5531
  %call1 = call i32 @fat_get_cluster(ptr noundef %4, i32 noundef %5, ptr noundef %fclus, ptr noundef %dclus) #9, !dbg !5532
  store i32 %call1, ptr %ret, align 4, !dbg !5533
  %6 = load i32, ptr %ret, align 4, !dbg !5534
  %cmp2 = icmp slt i32 %6, 0, !dbg !5536
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !5537

if.then3:                                         ; preds = %if.end
  %7 = load i32, ptr %ret, align 4, !dbg !5538
  store i32 %7, ptr %retval, align 4, !dbg !5539
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5539

if.else:                                          ; preds = %if.end
  %8 = load i32, ptr %ret, align 4, !dbg !5540
  %cmp4 = icmp eq i32 %8, 268435455, !dbg !5542
  br i1 %cmp4, label %if.then5, label %if.end7, !dbg !5543

if.then5:                                         ; preds = %if.else
  %9 = load ptr, ptr %sb, align 8, !dbg !5544
  %10 = load ptr, ptr %inode.addr, align 8, !dbg !5544
  %call6 = call ptr @MSDOS_I(ptr noundef %10) #9, !dbg !5544
  %i_pos = getelementptr inbounds %struct.msdos_inode_info, ptr %call6, i32 0, i32 8, !dbg !5544
  %11 = load i64, ptr %i_pos, align 8, !dbg !5544
  call void (ptr, i32, ptr, ...) @__fat_fs_error(ptr noundef %9, i32 noundef 1, ptr noundef @.str.5, ptr noundef @__func__.fat_bmap_cluster, i64 noundef %11) #11, !dbg !5544
  store i32 -5, ptr %retval, align 4, !dbg !5546
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5546

if.end7:                                          ; preds = %if.else
  br label %if.end8

if.end8:                                          ; preds = %if.end7
  %12 = load i32, ptr %dclus, align 4, !dbg !5547
  store i32 %12, ptr %retval, align 4, !dbg !5548
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5548

cleanup:                                          ; preds = %if.end8, %if.then5, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %dclus) #10, !dbg !5549
  call void @llvm.lifetime.end.p0(i64 4, ptr %fclus) #10, !dbg !5549
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !5549
  call void @llvm.lifetime.end.p0(i64 8, ptr %sb) #10, !dbg !5549
  %13 = load i32, ptr %retval, align 4, !dbg !5549
  ret i32 %13, !dbg !5549
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @fat_clus_to_blknr(ptr noundef %sbi, i32 noundef %clus) #5 align 16 !dbg !5550 {
entry:
  %sbi.addr = alloca ptr, align 8
  %clus.addr = alloca i32, align 4
  store ptr %sbi, ptr %sbi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbi.addr, metadata !5554, metadata !DIExpression()), !dbg !5556
  store i32 %clus, ptr %clus.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %clus.addr, metadata !5555, metadata !DIExpression()), !dbg !5557
  %0 = load i32, ptr %clus.addr, align 4, !dbg !5558
  %conv = sext i32 %0 to i64, !dbg !5559
  %sub = sub i64 %conv, 2, !dbg !5560
  %1 = load ptr, ptr %sbi.addr, align 8, !dbg !5561
  %sec_per_clus = getelementptr inbounds %struct.msdos_sb_info, ptr %1, i32 0, i32 0, !dbg !5562
  %2 = load i16, ptr %sec_per_clus, align 8, !dbg !5562
  %conv1 = zext i16 %2 to i64, !dbg !5561
  %mul = mul i64 %sub, %conv1, !dbg !5563
  %3 = load ptr, ptr %sbi.addr, align 8, !dbg !5564
  %data_start = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 9, !dbg !5565
  %4 = load i64, ptr %data_start, align 8, !dbg !5565
  %add = add i64 %mul, %4, !dbg !5566
  ret i64 %add, !dbg !5567
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @fat_bmap(ptr noundef %inode, i64 noundef %sector, ptr noundef %phys, ptr noundef %mapped_blocks, i32 noundef %create, i1 noundef zeroext %from_bmap) #2 align 16 !dbg !5568 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca ptr, align 8
  %sector.addr = alloca i64, align 8
  %phys.addr = alloca ptr, align 8
  %mapped_blocks.addr = alloca ptr, align 8
  %create.addr = alloca i32, align 4
  %from_bmap.addr = alloca i8, align 1
  %sbi = alloca ptr, align 8
  %last_block = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5572, metadata !DIExpression()), !dbg !5580
  store i64 %sector, ptr %sector.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sector.addr, metadata !5573, metadata !DIExpression()), !dbg !5581
  store ptr %phys, ptr %phys.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phys.addr, metadata !5574, metadata !DIExpression()), !dbg !5582
  store ptr %mapped_blocks, ptr %mapped_blocks.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mapped_blocks.addr, metadata !5575, metadata !DIExpression()), !dbg !5583
  store i32 %create, ptr %create.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %create.addr, metadata !5576, metadata !DIExpression()), !dbg !5584
  %frombool = zext i1 %from_bmap to i8
  store i8 %frombool, ptr %from_bmap.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %from_bmap.addr, metadata !5577, metadata !DIExpression()), !dbg !5585
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbi) #10, !dbg !5586
  call void @llvm.dbg.declare(metadata ptr %sbi, metadata !5578, metadata !DIExpression()), !dbg !5587
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5588
  %i_sb = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9, !dbg !5589
  %1 = load ptr, ptr %i_sb, align 8, !dbg !5589
  %call = call ptr @MSDOS_SB(ptr noundef %1) #9, !dbg !5590
  store ptr %call, ptr %sbi, align 8, !dbg !5587
  call void @llvm.lifetime.start.p0(i64 8, ptr %last_block) #10, !dbg !5591
  call void @llvm.dbg.declare(metadata ptr %last_block, metadata !5579, metadata !DIExpression()), !dbg !5592
  %2 = load ptr, ptr %phys.addr, align 8, !dbg !5593
  store i64 0, ptr %2, align 8, !dbg !5594
  %3 = load ptr, ptr %mapped_blocks.addr, align 8, !dbg !5595
  store i64 0, ptr %3, align 8, !dbg !5596
  %4 = load ptr, ptr %sbi, align 8, !dbg !5597
  %call1 = call zeroext i1 @is_fat32(ptr noundef %4) #9, !dbg !5599
  br i1 %call1, label %if.end6, label %land.lhs.true, !dbg !5600

land.lhs.true:                                    ; preds = %entry
  %5 = load ptr, ptr %inode.addr, align 8, !dbg !5601
  %i_ino = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 12, !dbg !5602
  %6 = load i64, ptr %i_ino, align 8, !dbg !5602
  %cmp = icmp eq i64 %6, 1, !dbg !5603
  br i1 %cmp, label %if.then, label %if.end6, !dbg !5604

if.then:                                          ; preds = %land.lhs.true
  %7 = load i64, ptr %sector.addr, align 8, !dbg !5605
  %8 = load ptr, ptr %sbi, align 8, !dbg !5608
  %dir_entries = getelementptr inbounds %struct.msdos_sb_info, ptr %8, i32 0, i32 8, !dbg !5609
  %9 = load i16, ptr %dir_entries, align 8, !dbg !5609
  %conv = zext i16 %9 to i32, !dbg !5608
  %10 = load ptr, ptr %sbi, align 8, !dbg !5610
  %dir_per_block_bits = getelementptr inbounds %struct.msdos_sb_info, ptr %10, i32 0, i32 24, !dbg !5611
  %11 = load i32, ptr %dir_per_block_bits, align 4, !dbg !5611
  %shr = ashr i32 %conv, %11, !dbg !5612
  %conv2 = sext i32 %shr to i64, !dbg !5613
  %cmp3 = icmp ult i64 %7, %conv2, !dbg !5614
  br i1 %cmp3, label %if.then5, label %if.end, !dbg !5615

if.then5:                                         ; preds = %if.then
  %12 = load i64, ptr %sector.addr, align 8, !dbg !5616
  %13 = load ptr, ptr %sbi, align 8, !dbg !5618
  %dir_start = getelementptr inbounds %struct.msdos_sb_info, ptr %13, i32 0, i32 7, !dbg !5619
  %14 = load i64, ptr %dir_start, align 8, !dbg !5619
  %add = add i64 %12, %14, !dbg !5620
  %15 = load ptr, ptr %phys.addr, align 8, !dbg !5621
  store i64 %add, ptr %15, align 8, !dbg !5622
  %16 = load ptr, ptr %mapped_blocks.addr, align 8, !dbg !5623
  store i64 1, ptr %16, align 8, !dbg !5624
  br label %if.end, !dbg !5625

if.end:                                           ; preds = %if.then5, %if.then
  store i32 0, ptr %retval, align 4, !dbg !5626
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5626

if.end6:                                          ; preds = %land.lhs.true, %entry
  %17 = load i8, ptr %from_bmap.addr, align 1, !dbg !5627, !range !5629, !noundef !789
  %tobool = trunc i8 %17 to i1, !dbg !5627
  br i1 %tobool, label %if.else, label %if.then7, !dbg !5630

if.then7:                                         ; preds = %if.end6
  %18 = load ptr, ptr %inode.addr, align 8, !dbg !5631
  %19 = load i64, ptr %sector.addr, align 8, !dbg !5634
  %20 = load i32, ptr %create.addr, align 4, !dbg !5635
  %call8 = call i32 @is_exceed_eof(ptr noundef %18, i64 noundef %19, ptr noundef %last_block, i32 noundef %20) #9, !dbg !5636
  %tobool9 = icmp ne i32 %call8, 0, !dbg !5636
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !5637

if.then10:                                        ; preds = %if.then7
  store i32 0, ptr %retval, align 4, !dbg !5638
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5638

if.end11:                                         ; preds = %if.then7
  br label %if.end19, !dbg !5639

if.else:                                          ; preds = %if.end6
  %21 = load ptr, ptr %inode.addr, align 8, !dbg !5640
  %i_blocks = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 23, !dbg !5642
  %22 = load i64, ptr %i_blocks, align 8, !dbg !5642
  %23 = load ptr, ptr %inode.addr, align 8, !dbg !5643
  %i_sb12 = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 9, !dbg !5644
  %24 = load ptr, ptr %i_sb12, align 8, !dbg !5644
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %24, i32 0, i32 2, !dbg !5645
  %25 = load i8, ptr %s_blocksize_bits, align 4, !dbg !5645
  %conv13 = zext i8 %25 to i32, !dbg !5643
  %sub = sub i32 %conv13, 9, !dbg !5646
  %sh_prom = zext i32 %sub to i64, !dbg !5647
  %shr14 = lshr i64 %22, %sh_prom, !dbg !5647
  store i64 %shr14, ptr %last_block, align 8, !dbg !5648
  %26 = load i64, ptr %sector.addr, align 8, !dbg !5649
  %27 = load i64, ptr %last_block, align 8, !dbg !5651
  %cmp15 = icmp uge i64 %26, %27, !dbg !5652
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !5653

if.then17:                                        ; preds = %if.else
  store i32 0, ptr %retval, align 4, !dbg !5654
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5654

if.end18:                                         ; preds = %if.else
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.end11
  %28 = load ptr, ptr %inode.addr, align 8, !dbg !5655
  %29 = load i64, ptr %sector.addr, align 8, !dbg !5656
  %30 = load i64, ptr %last_block, align 8, !dbg !5657
  %31 = load ptr, ptr %mapped_blocks.addr, align 8, !dbg !5658
  %32 = load ptr, ptr %phys.addr, align 8, !dbg !5659
  %call20 = call i32 @fat_get_mapped_cluster(ptr noundef %28, i64 noundef %29, i64 noundef %30, ptr noundef %31, ptr noundef %32) #9, !dbg !5660
  store i32 %call20, ptr %retval, align 4, !dbg !5661
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5661

cleanup:                                          ; preds = %if.end19, %if.then17, %if.then10, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %last_block) #10, !dbg !5662
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbi) #10, !dbg !5662
  %33 = load i32, ptr %retval, align 4, !dbg !5662
  ret i32 %33, !dbg !5662
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @is_fat32(ptr noundef %sbi) #5 align 16 !dbg !5663 {
entry:
  %sbi.addr = alloca ptr, align 8
  store ptr %sbi, ptr %sbi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbi.addr, metadata !5669, metadata !DIExpression()), !dbg !5670
  %0 = load ptr, ptr %sbi.addr, align 8, !dbg !5671
  %fat_bits = getelementptr inbounds %struct.msdos_sb_info, ptr %0, i32 0, i32 4, !dbg !5672
  %1 = load i8, ptr %fat_bits, align 1, !dbg !5672
  %conv = zext i8 %1 to i32, !dbg !5671
  %cmp = icmp eq i32 %conv, 32, !dbg !5673
  ret i1 %cmp, !dbg !5674
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @is_exceed_eof(ptr noundef %inode, i64 noundef %sector, ptr noundef %last_block, i32 noundef %create) #2 align 16 !dbg !5675 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca ptr, align 8
  %sector.addr = alloca i64, align 8
  %last_block.addr = alloca ptr, align 8
  %create.addr = alloca i32, align 4
  %sb = alloca ptr, align 8
  %blocksize = alloca i64, align 8
  %blocksize_bits = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5679, metadata !DIExpression()), !dbg !5686
  store i64 %sector, ptr %sector.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sector.addr, metadata !5680, metadata !DIExpression()), !dbg !5687
  store ptr %last_block, ptr %last_block.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %last_block.addr, metadata !5681, metadata !DIExpression()), !dbg !5688
  store i32 %create, ptr %create.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %create.addr, metadata !5682, metadata !DIExpression()), !dbg !5689
  call void @llvm.lifetime.start.p0(i64 8, ptr %sb) #10, !dbg !5690
  call void @llvm.dbg.declare(metadata ptr %sb, metadata !5683, metadata !DIExpression()), !dbg !5691
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5692
  %i_sb = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9, !dbg !5693
  %1 = load ptr, ptr %i_sb, align 8, !dbg !5693
  store ptr %1, ptr %sb, align 8, !dbg !5691
  call void @llvm.lifetime.start.p0(i64 8, ptr %blocksize) #10, !dbg !5694
  call void @llvm.dbg.declare(metadata ptr %blocksize, metadata !5684, metadata !DIExpression()), !dbg !5695
  %2 = load ptr, ptr %sb, align 8, !dbg !5696
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 3, !dbg !5697
  %3 = load i64, ptr %s_blocksize, align 8, !dbg !5697
  store i64 %3, ptr %blocksize, align 8, !dbg !5695
  call void @llvm.lifetime.start.p0(i64 1, ptr %blocksize_bits) #10, !dbg !5698
  call void @llvm.dbg.declare(metadata ptr %blocksize_bits, metadata !5685, metadata !DIExpression()), !dbg !5699
  %4 = load ptr, ptr %sb, align 8, !dbg !5700
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 2, !dbg !5701
  %5 = load i8, ptr %s_blocksize_bits, align 4, !dbg !5701
  store i8 %5, ptr %blocksize_bits, align 1, !dbg !5699
  %6 = load ptr, ptr %inode.addr, align 8, !dbg !5702
  %call = call i64 @i_size_read(ptr noundef %6) #9, !dbg !5703
  %7 = load i64, ptr %blocksize, align 8, !dbg !5704
  %sub = sub i64 %7, 1, !dbg !5705
  %add = add i64 %call, %sub, !dbg !5706
  %8 = load i8, ptr %blocksize_bits, align 1, !dbg !5707
  %conv = zext i8 %8 to i32, !dbg !5707
  %sh_prom = zext i32 %conv to i64, !dbg !5708
  %shr = lshr i64 %add, %sh_prom, !dbg !5708
  %9 = load ptr, ptr %last_block.addr, align 8, !dbg !5709
  store i64 %shr, ptr %9, align 8, !dbg !5710
  %10 = load i64, ptr %sector.addr, align 8, !dbg !5711
  %11 = load ptr, ptr %last_block.addr, align 8, !dbg !5713
  %12 = load i64, ptr %11, align 8, !dbg !5714
  %cmp = icmp uge i64 %10, %12, !dbg !5715
  br i1 %cmp, label %if.then, label %if.end13, !dbg !5716

if.then:                                          ; preds = %entry
  %13 = load i32, ptr %create.addr, align 4, !dbg !5717
  %tobool = icmp ne i32 %13, 0, !dbg !5717
  br i1 %tobool, label %if.end, label %if.then2, !dbg !5720

if.then2:                                         ; preds = %if.then
  store i32 1, ptr %retval, align 4, !dbg !5721
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5721

if.end:                                           ; preds = %if.then
  %14 = load ptr, ptr %inode.addr, align 8, !dbg !5722
  %call3 = call ptr @MSDOS_I(ptr noundef %14) #9, !dbg !5723
  %mmu_private = getelementptr inbounds %struct.msdos_inode_info, ptr %call3, i32 0, i32 4, !dbg !5724
  %15 = load i64, ptr %mmu_private, align 8, !dbg !5724
  %16 = load i64, ptr %blocksize, align 8, !dbg !5725
  %sub4 = sub i64 %16, 1, !dbg !5726
  %add5 = add i64 %15, %sub4, !dbg !5727
  %17 = load i8, ptr %blocksize_bits, align 1, !dbg !5728
  %conv6 = zext i8 %17 to i32, !dbg !5728
  %sh_prom7 = zext i32 %conv6 to i64, !dbg !5729
  %shr8 = lshr i64 %add5, %sh_prom7, !dbg !5729
  %18 = load ptr, ptr %last_block.addr, align 8, !dbg !5730
  store i64 %shr8, ptr %18, align 8, !dbg !5731
  %19 = load i64, ptr %sector.addr, align 8, !dbg !5732
  %20 = load ptr, ptr %last_block.addr, align 8, !dbg !5734
  %21 = load i64, ptr %20, align 8, !dbg !5735
  %cmp9 = icmp uge i64 %19, %21, !dbg !5736
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !5737

if.then11:                                        ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5738
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5738

if.end12:                                         ; preds = %if.end
  br label %if.end13, !dbg !5739

if.end13:                                         ; preds = %if.end12, %entry
  store i32 0, ptr %retval, align 4, !dbg !5740
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5740

cleanup:                                          ; preds = %if.end13, %if.then11, %if.then2
  call void @llvm.lifetime.end.p0(i64 1, ptr %blocksize_bits) #10, !dbg !5741
  call void @llvm.lifetime.end.p0(i64 8, ptr %blocksize) #10, !dbg !5741
  call void @llvm.lifetime.end.p0(i64 8, ptr %sb) #10, !dbg !5741
  %22 = load i32, ptr %retval, align 4, !dbg !5741
  ret i32 %22, !dbg !5741
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #5 align 16 !dbg !5742 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !5747, metadata !DIExpression()), !dbg !5748
  br label %do.body, !dbg !5749

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5750

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5752

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5750

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !5754
  %1 = load ptr, ptr %list.addr, align 8, !dbg !5754
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !5754
  store volatile ptr %0, ptr %next, align 8, !dbg !5754
  br label %do.end3, !dbg !5754

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !5750

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !5756

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !5757

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !5759

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !5757

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !5761
  %3 = load ptr, ptr %list.addr, align 8, !dbg !5761
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !5761
  store volatile ptr %2, ptr %prev, align 8, !dbg !5761
  br label %do.end9, !dbg !5761

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !5757

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !5763
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5764 dso_local void @_raw_spin_lock(ptr noundef) #1 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #5 align 16 !dbg !5769 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5775, metadata !DIExpression()), !dbg !5776
  br label %do.body, !dbg !5777

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5779

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !5777
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !5777
  %1 = load volatile ptr, ptr %next, align 8, !dbg !5777
  store ptr %1, ptr %tmp, align 8, !dbg !5779
  %2 = load ptr, ptr %tmp, align 8, !dbg !5777
  %3 = load ptr, ptr %head.addr, align 8, !dbg !5781
  %cmp = icmp eq ptr %2, %3, !dbg !5782
  %conv = zext i1 %cmp to i32, !dbg !5782
  ret i32 %conv, !dbg !5783
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del_init(ptr noundef %entry1) #5 align 16 !dbg !5784 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5786, metadata !DIExpression()), !dbg !5787
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5788
  call void @__list_del_entry(ptr noundef %0) #9, !dbg !5789
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5790
  call void @INIT_LIST_HEAD(ptr noundef %1) #9, !dbg !5791
  ret void, !dbg !5792
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fat_cache_free(ptr noundef %cache) #5 align 16 !dbg !5793 {
entry:
  %cache.addr = alloca ptr, align 8
  store ptr %cache, ptr %cache.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cache.addr, metadata !5797, metadata !DIExpression()), !dbg !5798
  br label %do.body, !dbg !5799

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %cache.addr, align 8, !dbg !5800
  %cache_list = getelementptr inbounds %struct.fat_cache, ptr %0, i32 0, i32 0, !dbg !5800
  %call = call i32 @list_empty(ptr noundef %cache_list) #9, !dbg !5800
  %tobool = icmp ne i32 %call, 0, !dbg !5800
  %lnot = xor i1 %tobool, true, !dbg !5800
  %lnot1 = xor i1 %lnot, true, !dbg !5800
  %lnot2 = xor i1 %lnot1, true, !dbg !5800
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5800
  %conv = sext i32 %lnot.ext to i64, !dbg !5800
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5800
  %tobool3 = icmp ne i64 %expval, 0, !dbg !5800
  br i1 %tobool3, label %if.then, label %if.end, !dbg !5803

if.then:                                          ; preds = %do.body
  br label %do.body4, !dbg !5800

do.body4:                                         ; preds = %if.then
  br label %do.body5, !dbg !5804

do.body5:                                         ; preds = %do.body4
  br label %do.end, !dbg !5806

do.end:                                           ; preds = %do.body5
  br label %do.body6, !dbg !5804

do.body6:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 69, i32 0, i64 12) #10, !dbg !5808, !srcloc !5810
  br label %do.end7, !dbg !5808

do.end7:                                          ; preds = %do.body6
  unreachable, !dbg !5804

do.end8:                                          ; No predecessors!
  br label %if.end, !dbg !5804

if.end:                                           ; preds = %do.end8, %do.body
  br label %do.end9, !dbg !5803

do.end9:                                          ; preds = %if.end
  %1 = load ptr, ptr @fat_cache_cachep, align 8, !dbg !5811
  %2 = load ptr, ptr %cache.addr, align 8, !dbg !5812
  call void @kmem_cache_free(ptr noundef %1, ptr noundef %2) #9, !dbg !5813
  ret void, !dbg !5814
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #5 align 16 !dbg !5815 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5817, metadata !DIExpression()), !dbg !5818
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5819
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #9, !dbg !5821
  br i1 %call, label %if.end, label %if.then, !dbg !5822

if.then:                                          ; preds = %entry
  br label %return, !dbg !5823

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5824
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5825
  %2 = load ptr, ptr %prev, align 8, !dbg !5825
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !5826
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !5827
  %4 = load ptr, ptr %next, align 8, !dbg !5827
  call void @__list_del(ptr noundef %2, ptr noundef %4) #9, !dbg !5828
  br label %return, !dbg !5829

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5829
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #5 align 16 !dbg !5830 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5834, metadata !DIExpression()), !dbg !5835
  ret i1 true, !dbg !5836
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !5837 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5841, metadata !DIExpression()), !dbg !5843
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5842, metadata !DIExpression()), !dbg !5844
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !5845
  %1 = load ptr, ptr %next.addr, align 8, !dbg !5846
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5847
  store ptr %0, ptr %prev1, align 8, !dbg !5848
  br label %do.body, !dbg !5849

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !5850

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !5852

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !5850

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !5854
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !5854
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !5854
  store volatile ptr %2, ptr %next4, align 8, !dbg !5854
  br label %do.end5, !dbg !5854

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !5850

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !5856
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5857 dso_local void @kmem_cache_free(ptr noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5860 dso_local void @_raw_spin_unlock(ptr noundef) #1 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fat_cache_update_lru(ptr noundef %inode, ptr noundef %cache) #5 align 16 !dbg !5861 {
entry:
  %inode.addr = alloca ptr, align 8
  %cache.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5865, metadata !DIExpression()), !dbg !5867
  store ptr %cache, ptr %cache.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cache.addr, metadata !5866, metadata !DIExpression()), !dbg !5868
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5869
  %call = call ptr @MSDOS_I(ptr noundef %0) #9, !dbg !5871
  %cache_lru = getelementptr inbounds %struct.msdos_inode_info, ptr %call, i32 0, i32 1, !dbg !5872
  %next = getelementptr inbounds %struct.list_head, ptr %cache_lru, i32 0, i32 0, !dbg !5873
  %1 = load ptr, ptr %next, align 8, !dbg !5873
  %2 = load ptr, ptr %cache.addr, align 8, !dbg !5874
  %cache_list = getelementptr inbounds %struct.fat_cache, ptr %2, i32 0, i32 0, !dbg !5875
  %cmp = icmp ne ptr %1, %cache_list, !dbg !5876
  br i1 %cmp, label %if.then, label %if.end, !dbg !5877

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %cache.addr, align 8, !dbg !5878
  %cache_list1 = getelementptr inbounds %struct.fat_cache, ptr %3, i32 0, i32 0, !dbg !5879
  %4 = load ptr, ptr %inode.addr, align 8, !dbg !5880
  %call2 = call ptr @MSDOS_I(ptr noundef %4) #9, !dbg !5881
  %cache_lru3 = getelementptr inbounds %struct.msdos_inode_info, ptr %call2, i32 0, i32 1, !dbg !5882
  call void @list_move(ptr noundef %cache_list1, ptr noundef %cache_lru3) #9, !dbg !5883
  br label %if.end, !dbg !5883

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5884
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_move(ptr noundef %list, ptr noundef %head) #5 align 16 !dbg !5885 {
entry:
  %list.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !5887, metadata !DIExpression()), !dbg !5889
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5888, metadata !DIExpression()), !dbg !5890
  %0 = load ptr, ptr %list.addr, align 8, !dbg !5891
  call void @__list_del_entry(ptr noundef %0) #9, !dbg !5892
  %1 = load ptr, ptr %list.addr, align 8, !dbg !5893
  %2 = load ptr, ptr %head.addr, align 8, !dbg !5894
  call void @list_add(ptr noundef %1, ptr noundef %2) #9, !dbg !5895
  ret void, !dbg !5896
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add(ptr noundef %new, ptr noundef %head) #5 align 16 !dbg !5897 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5899, metadata !DIExpression()), !dbg !5901
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5900, metadata !DIExpression()), !dbg !5902
  %0 = load ptr, ptr %new.addr, align 8, !dbg !5903
  %1 = load ptr, ptr %head.addr, align 8, !dbg !5904
  %2 = load ptr, ptr %head.addr, align 8, !dbg !5905
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !5906
  %3 = load ptr, ptr %next, align 8, !dbg !5906
  call void @__list_add(ptr noundef %0, ptr noundef %1, ptr noundef %3) #9, !dbg !5907
  ret void, !dbg !5908
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !5909 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5913, metadata !DIExpression()), !dbg !5916
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5914, metadata !DIExpression()), !dbg !5917
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5915, metadata !DIExpression()), !dbg !5918
  %0 = load ptr, ptr %new.addr, align 8, !dbg !5919
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !5921
  %2 = load ptr, ptr %next.addr, align 8, !dbg !5922
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9, !dbg !5923
  br i1 %call, label %if.end, label %if.then, !dbg !5924

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !5925

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !5926
  %4 = load ptr, ptr %next.addr, align 8, !dbg !5927
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !5928
  store ptr %3, ptr %prev1, align 8, !dbg !5929
  %5 = load ptr, ptr %next.addr, align 8, !dbg !5930
  %6 = load ptr, ptr %new.addr, align 8, !dbg !5931
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !5932
  store ptr %5, ptr %next2, align 8, !dbg !5933
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !5934
  %8 = load ptr, ptr %new.addr, align 8, !dbg !5935
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !5936
  store ptr %7, ptr %prev3, align 8, !dbg !5937
  br label %do.body, !dbg !5938

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !5939

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !5941

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !5939

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !5943
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !5943
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !5943
  store volatile ptr %9, ptr %next6, align 8, !dbg !5943
  br label %do.end7, !dbg !5943

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !5939

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !5945
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !5946 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5950, metadata !DIExpression()), !dbg !5953
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5951, metadata !DIExpression()), !dbg !5954
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5952, metadata !DIExpression()), !dbg !5955
  ret i1 true, !dbg !5956
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @fat_cache_merge(ptr noundef %inode, ptr noundef %new) #2 align 16 !dbg !5957 {
entry:
  %retval = alloca ptr, align 8
  %inode.addr = alloca ptr, align 8
  %new.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr27 = alloca ptr, align 8
  %tmp30 = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5961, metadata !DIExpression()), !dbg !5970
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5962, metadata !DIExpression()), !dbg !5971
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10, !dbg !5972
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5963, metadata !DIExpression()), !dbg !5973
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !5974
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5964, metadata !DIExpression()), !dbg !5974
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5974
  %call = call ptr @MSDOS_I(ptr noundef %0) #9, !dbg !5974
  %cache_lru = getelementptr inbounds %struct.msdos_inode_info, ptr %call, i32 0, i32 1, !dbg !5974
  %next = getelementptr inbounds %struct.list_head, ptr %cache_lru, i32 0, i32 0, !dbg !5974
  %1 = load ptr, ptr %next, align 8, !dbg !5974
  store ptr %1, ptr %__mptr, align 8, !dbg !5974
  %2 = load ptr, ptr %__mptr, align 8, !dbg !5974
  %add.ptr = getelementptr i8, ptr %2, i64 0, !dbg !5974
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5974
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !5975
  %3 = load ptr, ptr %tmp, align 8, !dbg !5974
  store ptr %3, ptr %p, align 8, !dbg !5975
  br label %for.cond, !dbg !5975

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %p, align 8, !dbg !5976
  %cache_list = getelementptr inbounds %struct.fat_cache, ptr %4, i32 0, i32 0, !dbg !5976
  %5 = load ptr, ptr %inode.addr, align 8, !dbg !5976
  %call1 = call ptr @MSDOS_I(ptr noundef %5) #9, !dbg !5976
  %cache_lru2 = getelementptr inbounds %struct.msdos_inode_info, ptr %call1, i32 0, i32 1, !dbg !5976
  %cmp = icmp eq ptr %cache_list, %cache_lru2, !dbg !5976
  %lnot = xor i1 %cmp, true, !dbg !5976
  br i1 %lnot, label %for.body, label %for.end, !dbg !5975

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %p, align 8, !dbg !5977
  %fcluster = getelementptr inbounds %struct.fat_cache, ptr %6, i32 0, i32 2, !dbg !5980
  %7 = load i32, ptr %fcluster, align 4, !dbg !5980
  %8 = load ptr, ptr %new.addr, align 8, !dbg !5981
  %fcluster3 = getelementptr inbounds %struct.fat_cache_id, ptr %8, i32 0, i32 2, !dbg !5982
  %9 = load i32, ptr %fcluster3, align 4, !dbg !5982
  %cmp4 = icmp eq i32 %7, %9, !dbg !5983
  br i1 %cmp4, label %if.then, label %if.end26, !dbg !5984

if.then:                                          ; preds = %for.body
  br label %do.body, !dbg !5985

do.body:                                          ; preds = %if.then
  %10 = load ptr, ptr %p, align 8, !dbg !5987
  %dcluster = getelementptr inbounds %struct.fat_cache, ptr %10, i32 0, i32 3, !dbg !5987
  %11 = load i32, ptr %dcluster, align 8, !dbg !5987
  %12 = load ptr, ptr %new.addr, align 8, !dbg !5987
  %dcluster5 = getelementptr inbounds %struct.fat_cache_id, ptr %12, i32 0, i32 3, !dbg !5987
  %13 = load i32, ptr %dcluster5, align 4, !dbg !5987
  %cmp6 = icmp ne i32 %11, %13, !dbg !5987
  %lnot7 = xor i1 %cmp6, true, !dbg !5987
  %lnot8 = xor i1 %lnot7, true, !dbg !5987
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !5987
  %conv = sext i32 %lnot.ext to i64, !dbg !5987
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5987
  %tobool = icmp ne i64 %expval, 0, !dbg !5987
  br i1 %tobool, label %if.then9, label %if.end, !dbg !5990

if.then9:                                         ; preds = %do.body
  br label %do.body10, !dbg !5987

do.body10:                                        ; preds = %if.then9
  br label %do.body11, !dbg !5991

do.body11:                                        ; preds = %do.body10
  br label %do.cond, !dbg !5993

do.cond:                                          ; preds = %do.body11
  br label %do.end, !dbg !5993

do.end:                                           ; preds = %do.cond
  br label %do.body12, !dbg !5991

do.body12:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 125, i32 0, i64 12) #10, !dbg !5995, !srcloc !5997
  br label %do.cond13, !dbg !5995

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !5995

do.end14:                                         ; preds = %do.cond13
  unreachable, !dbg !5991

do.cond15:                                        ; No predecessors!
  br label %do.end16, !dbg !5991

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !5991

if.end:                                           ; preds = %do.end16, %do.body
  br label %do.cond17, !dbg !5990

do.cond17:                                        ; preds = %if.end
  br label %do.end18, !dbg !5990

do.end18:                                         ; preds = %do.cond17
  %14 = load ptr, ptr %new.addr, align 8, !dbg !5998
  %nr_contig = getelementptr inbounds %struct.fat_cache_id, ptr %14, i32 0, i32 1, !dbg !6000
  %15 = load i32, ptr %nr_contig, align 4, !dbg !6000
  %16 = load ptr, ptr %p, align 8, !dbg !6001
  %nr_contig19 = getelementptr inbounds %struct.fat_cache, ptr %16, i32 0, i32 1, !dbg !6002
  %17 = load i32, ptr %nr_contig19, align 8, !dbg !6002
  %cmp20 = icmp sgt i32 %15, %17, !dbg !6003
  br i1 %cmp20, label %if.then22, label %if.end25, !dbg !6004

if.then22:                                        ; preds = %do.end18
  %18 = load ptr, ptr %new.addr, align 8, !dbg !6005
  %nr_contig23 = getelementptr inbounds %struct.fat_cache_id, ptr %18, i32 0, i32 1, !dbg !6006
  %19 = load i32, ptr %nr_contig23, align 4, !dbg !6006
  %20 = load ptr, ptr %p, align 8, !dbg !6007
  %nr_contig24 = getelementptr inbounds %struct.fat_cache, ptr %20, i32 0, i32 1, !dbg !6008
  store i32 %19, ptr %nr_contig24, align 8, !dbg !6009
  br label %if.end25, !dbg !6007

if.end25:                                         ; preds = %if.then22, %do.end18
  %21 = load ptr, ptr %p, align 8, !dbg !6010
  store ptr %21, ptr %retval, align 8, !dbg !6011
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6011

if.end26:                                         ; preds = %for.body
  br label %for.inc, !dbg !6012

for.inc:                                          ; preds = %if.end26
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr27) #10, !dbg !6013
  call void @llvm.dbg.declare(metadata ptr %__mptr27, metadata !5967, metadata !DIExpression()), !dbg !6013
  %22 = load ptr, ptr %p, align 8, !dbg !6013
  %cache_list28 = getelementptr inbounds %struct.fat_cache, ptr %22, i32 0, i32 0, !dbg !6013
  %next29 = getelementptr inbounds %struct.list_head, ptr %cache_list28, i32 0, i32 0, !dbg !6013
  %23 = load ptr, ptr %next29, align 8, !dbg !6013
  store ptr %23, ptr %__mptr27, align 8, !dbg !6013
  %24 = load ptr, ptr %__mptr27, align 8, !dbg !6013
  %add.ptr31 = getelementptr i8, ptr %24, i64 0, !dbg !6013
  store ptr %add.ptr31, ptr %tmp30, align 8, !dbg !6013
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr27) #10, !dbg !5976
  %25 = load ptr, ptr %tmp30, align 8, !dbg !6013
  store ptr %25, ptr %p, align 8, !dbg !5976
  br label %for.cond, !dbg !5976, !llvm.loop !6014

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !6016
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6016

cleanup:                                          ; preds = %for.end, %if.end25
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10, !dbg !6017
  %26 = load ptr, ptr %retval, align 8, !dbg !6017
  ret ptr %26, !dbg !6017
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fat_max_cache(ptr noundef %inode) #5 align 16 !dbg !6018 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6020, metadata !DIExpression()), !dbg !6021
  ret i32 8, !dbg !6022
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @fat_cache_alloc(ptr noundef %inode) #5 align 16 !dbg !6023 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6027, metadata !DIExpression()), !dbg !6028
  %0 = load ptr, ptr @fat_cache_cachep, align 8, !dbg !6029
  %call = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3136) #9, !dbg !6030
  ret ptr %call, !dbg !6031
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6032 dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @brelse(ptr noundef %bh) #5 align 16 !dbg !6035 {
entry:
  %bh.addr = alloca ptr, align 8
  store ptr %bh, ptr %bh.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bh.addr, metadata !6039, metadata !DIExpression()), !dbg !6040
  %0 = load ptr, ptr %bh.addr, align 8, !dbg !6041
  %tobool = icmp ne ptr %0, null, !dbg !6041
  br i1 %tobool, label %if.then, label %if.end, !dbg !6043

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %bh.addr, align 8, !dbg !6044
  call void @__brelse(ptr noundef %1) #9, !dbg !6045
  br label %if.end, !dbg !6045

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6046
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6047 dso_local void @__brelse(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @i_size_read(ptr noundef %inode) #5 align 16 !dbg !6048 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6052, metadata !DIExpression()), !dbg !6053
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !6054
  %i_size = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 15, !dbg !6055
  %1 = load i64, ptr %i_size, align 8, !dbg !6055
  ret i64 %1, !dbg !6056
}

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { noredzone }
attributes #10 = { nounwind }
attributes #11 = { cold noredzone }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!4593, !4594, !4595, !4596, !4597, !4598, !4599, !4600}
!llvm.ident = !{!4601}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 48, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "fs/fat/cache.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "751987276e2476bb256ac59c204ecc3d")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 10)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "fat_cache_cachep", scope: !9, file: !2, line: 37, type: !4591, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/fat/.cache.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/fat/fat\22 -D KBUILD_BASENAME=\22cache\22 -D KBUILD_MODNAME=\22fat\22 -D __KBUILD_MODNAME=kmod_fat -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/fat/cache.ll fs/fat/cache.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !152, globals: !4530, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !19, !27, !35, !51, !58, !64, !69, !75, !81, !88, !93, !101, !109, !118, !123, !128, !134, !140, !147}
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
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !52, line: 15, baseType: !13, size: 32, elements: !53)
!52 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!53 = !{!54, !55, !56, !57}
!54 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!55 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!56 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!57 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !59, line: 26, baseType: !13, size: 32, elements: !60)
!59 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!60 = !{!61, !62, !63}
!61 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!62 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!63 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !65, line: 2052, baseType: !13, size: 32, elements: !66)
!65 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!66 = !{!67, !68}
!67 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!68 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !70, line: 54, baseType: !13, size: 32, elements: !71)
!70 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!71 = !{!72, !73, !74}
!72 = !DIEnumerator(name: "USRQUOTA", value: 0)
!73 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!74 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !76, line: 45, baseType: !13, size: 32, elements: !77)
!76 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!77 = !{!78, !79, !80}
!78 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!79 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!80 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !82, line: 487, baseType: !13, size: 32, elements: !83)
!82 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!83 = !{!84, !85, !86, !87}
!84 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!85 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!86 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!87 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!88 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !89, line: 65, baseType: !13, size: 32, elements: !90)
!89 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!90 = !{!91, !92}
!91 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!92 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !94, line: 620, baseType: !13, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!95 = !{!96, !97, !98, !99, !100}
!96 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!97 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!98 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!99 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!100 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !94, line: 597, baseType: !102, size: 32, elements: !103)
!102 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!103 = !{!104, !105, !106, !107, !108}
!104 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!105 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!106 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!107 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!108 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!109 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !82, line: 547, baseType: !13, size: 32, elements: !110)
!110 = !{!111, !112, !113, !114, !115, !116, !117}
!111 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!112 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!113 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!114 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!115 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!116 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!117 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!118 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !82, line: 564, baseType: !13, size: 32, elements: !119)
!119 = !{!120, !121, !122}
!120 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!121 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!122 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!123 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !82, line: 577, baseType: !13, size: 32, elements: !124)
!124 = !{!125, !126, !127}
!125 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!126 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!127 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !82, line: 503, baseType: !13, size: 32, elements: !129)
!129 = !{!130, !131, !132, !133}
!130 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!131 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!132 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!133 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !135, line: 16, baseType: !13, size: 32, elements: !136)
!135 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!136 = !{!137, !138, !139}
!137 = !DIEnumerator(name: "TT_NONE", value: 0)
!138 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!139 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!140 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !141, line: 51, baseType: !13, size: 32, elements: !142)
!141 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!142 = !{!143, !144, !145, !146}
!143 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!144 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!145 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!146 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !148, line: 10, baseType: !13, size: 32, elements: !149)
!148 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!149 = !{!150, !151}
!150 = !DIEnumerator(name: "false", value: 0)
!151 = !DIEnumerator(name: "true", value: 1)
!152 = !{!153, !155, !156, !168, !170, !4528, !594, !1702}
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "slab_flags_t", file: !154, line: 155, baseType: !13)
!154 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fat_cache", file: !2, line: 18, size: 256, elements: !158)
!158 = !{!159, !165, !166, !167}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "cache_list", scope: !157, file: !2, line: 19, baseType: !160, size: 128)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !154, line: 190, size: 128, elements: !161)
!161 = !{!162, !164}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !160, file: !154, line: 191, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !160, file: !154, line: 191, baseType: !163, size: 64, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nr_contig", scope: !157, file: !2, line: 20, baseType: !102, size: 32, offset: 128)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "fcluster", scope: !157, file: !2, line: 21, baseType: !102, size: 32, offset: 160)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "dcluster", scope: !157, file: !2, line: 22, baseType: !102, size: 32, offset: 192)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !163)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msdos_inode_info", file: !172, line: 112, size: 6016, elements: !173)
!172 = !DIFile(filename: "fs/fat/fat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "83afc15ac4ff27e2fd85303f483c9bf6")
!173 = !{!174, !217, !218, !219, !220, !225, !226, !227, !228, !229, !236, !237, !259, !267}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "cache_lru_lock", scope: !171, file: !172, line: 113, baseType: !175, size: 32)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !176, line: 29, baseType: !177)
!176 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !176, line: 17, size: 32, elements: !178)
!178 = !{!179}
!179 = !DIDerivedType(tag: DW_TAG_member, scope: !177, file: !176, line: 18, baseType: !180, size: 32)
!180 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !177, file: !176, line: 18, size: 32, elements: !181)
!181 = !{!182}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !180, file: !176, line: 19, baseType: !183, size: 32)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !184, line: 14, size: 32, elements: !185)
!184 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!185 = !{!186}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !183, file: !184, line: 15, baseType: !187, size: 32)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !188, line: 44, baseType: !189)
!188 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !188, line: 14, size: 32, elements: !190)
!190 = !{!191}
!191 = !DIDerivedType(tag: DW_TAG_member, scope: !189, file: !188, line: 15, baseType: !192, size: 32)
!192 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !189, file: !188, line: 15, size: 32, elements: !193)
!193 = !{!194, !199, !209}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !192, file: !188, line: 16, baseType: !195, size: 32)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !154, line: 174, baseType: !196)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !154, line: 172, size: 32, elements: !197)
!197 = !{!198}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !196, file: !154, line: 173, baseType: !102, size: 32)
!199 = !DIDerivedType(tag: DW_TAG_member, scope: !192, file: !188, line: 24, baseType: !200, size: 16)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !192, file: !188, line: 24, size: 16, elements: !201)
!201 = !{!202, !208}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !200, file: !188, line: 25, baseType: !203, size: 8)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !204, line: 17, baseType: !205)
!204 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !206, line: 21, baseType: !207)
!206 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!207 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !200, file: !188, line: 26, baseType: !203, size: 8, offset: 8)
!209 = !DIDerivedType(tag: DW_TAG_member, scope: !192, file: !188, line: 28, baseType: !210, size: 32)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !192, file: !188, line: 28, size: 32, elements: !211)
!211 = !{!212, !216}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !210, file: !188, line: 29, baseType: !213, size: 16)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !204, line: 19, baseType: !214)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !206, line: 24, baseType: !215)
!215 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !210, file: !188, line: 30, baseType: !213, size: 16, offset: 16)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "cache_lru", scope: !171, file: !172, line: 114, baseType: !160, size: 128, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "nr_caches", scope: !171, file: !172, line: 115, baseType: !102, size: 32, offset: 192)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "cache_valid_id", scope: !171, file: !172, line: 117, baseType: !13, size: 32, offset: 224)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "mmu_private", scope: !171, file: !172, line: 120, baseType: !221, size: 64, offset: 256)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !154, line: 52, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !223, line: 88, baseType: !224)
!223 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!224 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "i_start", scope: !171, file: !172, line: 122, baseType: !102, size: 32, offset: 320)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "i_logstart", scope: !171, file: !172, line: 123, baseType: !102, size: 32, offset: 352)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "i_attrs", scope: !171, file: !172, line: 124, baseType: !102, size: 32, offset: 384)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "i_pos", scope: !171, file: !172, line: 125, baseType: !221, size: 64, offset: 448)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "i_fat_hash", scope: !171, file: !172, line: 126, baseType: !230, size: 128, offset: 512)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !154, line: 198, size: 128, elements: !231)
!231 = !{!232, !234}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !230, file: !154, line: 199, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !230, file: !154, line: 199, baseType: !235, size: 64, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_hash", scope: !171, file: !172, line: 127, baseType: !230, size: 128, offset: 640)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "truncate_lock", scope: !171, file: !172, line: 128, baseType: !238, size: 320, offset: 768)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !239, line: 48, size: 320, elements: !240)
!239 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!240 = !{!241, !250, !251, !256, !258}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !238, file: !239, line: 49, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !243, line: 13, baseType: !244)
!243 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !154, line: 181, baseType: !245)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !154, line: 179, size: 64, elements: !246)
!246 = !{!247}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !245, file: !154, line: 180, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !204, line: 22, baseType: !249)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !206, line: 30, baseType: !224)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !238, file: !239, line: 55, baseType: !242, size: 64, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !238, file: !239, line: 57, baseType: !252, size: 32, offset: 128)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !253, line: 15, size: 32, elements: !254)
!253 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!254 = !{!255}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !252, file: !253, line: 20, baseType: !195, size: 32)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !238, file: !239, line: 59, baseType: !257, size: 32, offset: 160)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !184, line: 23, baseType: !183)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !238, file: !239, line: 60, baseType: !160, size: 128, offset: 192)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "i_crtime", scope: !171, file: !172, line: 129, baseType: !260, size: 128, offset: 1088)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !261, line: 13, size: 128, elements: !262)
!261 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!262 = !{!263, !265}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !260, file: !261, line: 14, baseType: !264, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !261, line: 8, baseType: !249)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !260, file: !261, line: 15, baseType: !266, size: 64, offset: 64)
!266 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "vfs_inode", scope: !171, file: !172, line: 130, baseType: !268, size: 4800, offset: 1216)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !65, line: 641, size: 4800, elements: !269)
!269 = !{!270, !272, !273, !281, !282, !289, !290, !293, !294, !4466, !4467, !4468, !4469, !4470, !4476, !4477, !4478, !4479, !4480, !4481, !4482, !4483, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4493, !4494, !4499, !4500, !4501, !4502, !4503, !4504, !4505, !4510, !4513, !4514, !4515, !4524, !4525, !4526, !4527}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !268, file: !65, line: 642, baseType: !271, size: 16)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !154, line: 24, baseType: !215)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !268, file: !65, line: 643, baseType: !215, size: 16, offset: 16)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !268, file: !65, line: 644, baseType: !274, size: 32, offset: 32)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !275, line: 23, baseType: !276)
!275 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !275, line: 21, size: 32, elements: !277)
!277 = !{!278}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !276, file: !275, line: 22, baseType: !279, size: 32)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !154, line: 37, baseType: !280)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !223, line: 49, baseType: !13)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !268, file: !65, line: 645, baseType: !160, size: 128, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !268, file: !65, line: 646, baseType: !283, size: 32, offset: 192)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !275, line: 28, baseType: !284)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !275, line: 26, size: 32, elements: !285)
!285 = !{!286}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !284, file: !275, line: 27, baseType: !287, size: 32)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !154, line: 38, baseType: !288)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !223, line: 50, baseType: !13)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !268, file: !65, line: 647, baseType: !13, size: 32, offset: 224)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !268, file: !65, line: 650, baseType: !291, size: 64, offset: 256)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !65, line: 607, flags: DIFlagFwdDecl)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !268, file: !65, line: 651, baseType: !291, size: 64, offset: 320)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !268, file: !65, line: 654, baseType: !295, size: 64, offset: 384)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !297)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !65, line: 1966, size: 2048, align: 512, elements: !298)
!298 = !{!299, !4304, !4314, !4318, !4322, !4326, !4330, !4334, !4338, !4342, !4346, !4347, !4351, !4355, !4388, !4417, !4421, !4427, !4431, !4435, !4439, !4443, !4447, !4453, !4457}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !297, file: !65, line: 1967, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{!303, !348, !303, !13}
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !305, line: 82, size: 1536, elements: !306)
!305 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!306 = !{!307, !308, !318, !326, !327, !347, !349, !353, !366, !4287, !4288, !4289, !4290, !4296, !4297, !4298}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !304, file: !305, line: 84, baseType: !13, size: 32)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !304, file: !305, line: 85, baseType: !309, size: 32, offset: 32)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !310, line: 275, baseType: !311)
!310 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !310, line: 275, size: 32, elements: !312)
!312 = !{!313}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !311, file: !310, line: 275, baseType: !314, size: 32)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !310, line: 69, baseType: !315)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !310, line: 64, size: 32, elements: !316)
!316 = !{!317}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !315, file: !310, line: 65, baseType: !13, size: 32)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !304, file: !305, line: 86, baseType: !319, size: 128, offset: 64)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !320, line: 38, size: 128, elements: !321)
!320 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!321 = !{!322, !324}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !319, file: !320, line: 39, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !319, file: !320, line: 39, baseType: !325, size: 64, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !304, file: !305, line: 87, baseType: !303, size: 64, offset: 192)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !304, file: !305, line: 88, baseType: !328, size: 128, offset: 256)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !305, line: 49, size: 128, elements: !329)
!329 = !{!330, !344}
!330 = !DIDerivedType(tag: DW_TAG_member, scope: !328, file: !305, line: 50, baseType: !331, size: 64)
!331 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !328, file: !305, line: 50, size: 64, elements: !332)
!332 = !{!333, !340}
!333 = !DIDerivedType(tag: DW_TAG_member, scope: !331, file: !305, line: 51, baseType: !334, size: 64)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !331, file: !305, line: 51, size: 64, elements: !335)
!335 = !{!336, !339}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !334, file: !305, line: 52, baseType: !337, size: 32)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !204, line: 21, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !206, line: 27, baseType: !13)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !334, file: !305, line: 52, baseType: !337, size: 32, offset: 32)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !331, file: !305, line: 54, baseType: !341, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !204, line: 23, baseType: !342)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !206, line: 31, baseType: !343)
!343 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !328, file: !305, line: 56, baseType: !345, size: 64, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !207)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !304, file: !305, line: 89, baseType: !348, size: 64, offset: 384)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !304, file: !305, line: 91, baseType: !350, size: 256, offset: 448)
!350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 256, elements: !351)
!351 = !{!352}
!352 = !DISubrange(count: 32)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !304, file: !305, line: 94, baseType: !354, size: 64, offset: 704)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !355, line: 25, size: 64, elements: !356)
!355 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!356 = !{!357}
!357 = !DIDerivedType(tag: DW_TAG_member, scope: !354, file: !355, line: 26, baseType: !358, size: 64)
!358 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !354, file: !355, line: 26, size: 64, elements: !359)
!359 = !{!360, !361}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !358, file: !355, line: 28, baseType: !342, size: 64, align: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, scope: !358, file: !355, line: 30, baseType: !362, size: 64)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !358, file: !355, line: 30, size: 64, elements: !363)
!363 = !{!364, !365}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !362, file: !355, line: 31, baseType: !175, size: 32)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !362, file: !355, line: 32, baseType: !102, size: 32, offset: 32)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !304, file: !305, line: 95, baseType: !367, size: 64, offset: 768)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !369)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !305, line: 128, size: 1024, align: 512, elements: !370)
!370 = !{!371, !375, !376, !383, !391, !395, !399, !403, !404, !408, !413, !4277, !4281}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !369, file: !305, line: 129, baseType: !372, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DISubroutineType(types: !374)
!374 = !{!102, !303, !13}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !369, file: !305, line: 130, baseType: !372, size: 64, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !369, file: !305, line: 131, baseType: !377, size: 64, offset: 128)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DISubroutineType(types: !379)
!379 = !{!102, !380, !382}
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !304)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !369, file: !305, line: 132, baseType: !384, size: 64, offset: 192)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DISubroutineType(types: !386)
!386 = !{!102, !380, !13, !387, !389}
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !328)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !369, file: !305, line: 134, baseType: !392, size: 64, offset: 256)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DISubroutineType(types: !394)
!394 = !{!102, !380}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !369, file: !305, line: 135, baseType: !396, size: 64, offset: 320)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DISubroutineType(types: !398)
!398 = !{!102, !303}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !369, file: !305, line: 136, baseType: !400, size: 64, offset: 384)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DISubroutineType(types: !402)
!402 = !{null, !303}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !369, file: !305, line: 137, baseType: !400, size: 64, offset: 448)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !369, file: !305, line: 138, baseType: !405, size: 64, offset: 512)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DISubroutineType(types: !407)
!407 = !{null, !303, !348}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !369, file: !305, line: 139, baseType: !409, size: 64, offset: 576)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DISubroutineType(types: !411)
!411 = !{!412, !303, !412, !102}
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !369, file: !305, line: 140, baseType: !414, size: 64, offset: 640)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DISubroutineType(types: !416)
!416 = !{!417, !4276}
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !419, line: 70, size: 256, elements: !420)
!419 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!420 = !{!421, !422, !4272, !4273}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !418, file: !419, line: 71, baseType: !303, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !418, file: !419, line: 72, baseType: !423, size: 64, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !65, line: 1190, size: 10752, elements: !425)
!425 = !{!426, !427, !430, !431, !433, !434, !2286, !2418, !2458, !2543, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2560, !2564, !2565, !3025, !3028, !3031, !3034, !3035, !3036, !3077, !4205, !4206, !4207, !4208, !4209, !4210, !4213, !4215, !4222, !4223, !4224, !4225, !4226, !4241, !4242, !4243, !4244, !4245, !4246, !4247, !4248, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !424, file: !65, line: 1191, baseType: !160, size: 128)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !424, file: !65, line: 1192, baseType: !428, size: 32, offset: 128)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !154, line: 21, baseType: !429)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !154, line: 18, baseType: !337)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !424, file: !65, line: 1193, baseType: !207, size: 8, offset: 160)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !424, file: !65, line: 1194, baseType: !432, size: 64, offset: 192)
!432 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !424, file: !65, line: 1195, baseType: !221, size: 64, offset: 256)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !424, file: !65, line: 1196, baseType: !435, size: 64, offset: 320)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !65, line: 2366, size: 576, elements: !437)
!437 = !{!438, !439, !440, !446, !450, !454, !458, !2274, !2275, !2276, !2278, !2279, !2280, !2282, !2283, !2284, !2285}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !436, file: !65, line: 2367, baseType: !387, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !436, file: !65, line: 2368, baseType: !102, size: 32, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !436, file: !65, line: 2376, baseType: !441, size: 64, offset: 128)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DISubroutineType(types: !443)
!443 = !{!102, !444}
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !419, line: 21, flags: DIFlagFwdDecl)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !436, file: !65, line: 2377, baseType: !447, size: 64, offset: 192)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !449)
!449 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !65, line: 75, flags: DIFlagFwdDecl)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !436, file: !65, line: 2378, baseType: !451, size: 64, offset: 256)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{!303, !435, !102, !387, !155}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !436, file: !65, line: 2380, baseType: !455, size: 64, offset: 320)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DISubroutineType(types: !457)
!457 = !{null, !423}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !436, file: !65, line: 2381, baseType: !459, size: 64, offset: 384)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !12, line: 402, size: 9216, align: 512, elements: !461)
!461 = !{!462, !463, !464, !468, !1930, !1956, !1957, !1958, !1959, !1963, !1966, !1967, !1968, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2036, !2040, !2060, !2078, !2079, !2080, !2081, !2090, !2113, !2114, !2117, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2131, !2132, !2232, !2240, !2241, !2242, !2244, !2248, !2249, !2253, !2254, !2255, !2256, !2258, !2259, !2260, !2267, !2268, !2269, !2273}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !460, file: !12, line: 403, baseType: !11, size: 32)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !460, file: !12, line: 406, baseType: !160, size: 128, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !460, file: !12, line: 409, baseType: !465, size: 448, offset: 192)
!465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !466)
!466 = !{!467}
!467 = !DISubrange(count: 56)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !460, file: !12, line: 417, baseType: !469, size: 768, offset: 640)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !12, line: 45, size: 768, elements: !470)
!470 = !{!471, !1923, !1924, !1925, !1928}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !469, file: !12, line: 46, baseType: !472, size: 512)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !473, line: 64, size: 512, elements: !474)
!473 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!474 = !{!475, !476, !477, !479, !525, !1809, !1913, !1918, !1919, !1920, !1921, !1922}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !472, file: !473, line: 65, baseType: !387, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !472, file: !473, line: 66, baseType: !160, size: 128, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !472, file: !473, line: 67, baseType: !478, size: 64, offset: 192)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !472, file: !473, line: 68, baseType: !480, size: 64, offset: 256)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !473, line: 168, size: 768, elements: !482)
!482 = !{!483, !484, !485, !486}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !481, file: !473, line: 169, baseType: !160, size: 128)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !481, file: !473, line: 170, baseType: !175, size: 32, offset: 128)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !481, file: !473, line: 171, baseType: !472, size: 512, offset: 192)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !481, file: !473, line: 172, baseType: !487, size: 64, offset: 704)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !489)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !473, line: 133, size: 192, elements: !490)
!490 = !{!491, !498, !503}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !489, file: !473, line: 134, baseType: !492, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !493)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{!102, !496}
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !472)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !489, file: !473, line: 135, baseType: !499, size: 64, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !500)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{!387, !496}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !489, file: !473, line: 136, baseType: !504, size: 64, offset: 128)
!504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !505)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DISubroutineType(types: !507)
!507 = !{!102, !496, !508}
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !473, line: 125, size: 20736, elements: !510)
!510 = !{!511, !515, !519, !520, !524}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !509, file: !473, line: 126, baseType: !512, size: 192)
!512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, size: 192, elements: !513)
!513 = !{!514}
!514 = !DISubrange(count: 3)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !509, file: !473, line: 127, baseType: !516, size: 4096, offset: 192)
!516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, size: 4096, elements: !517)
!517 = !{!518}
!518 = !DISubrange(count: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !509, file: !473, line: 128, baseType: !102, size: 32, offset: 4288)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !509, file: !473, line: 129, baseType: !521, size: 16384, offset: 4320)
!521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !522)
!522 = !{!523}
!523 = !DISubrange(count: 2048)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !509, file: !473, line: 130, baseType: !102, size: 32, offset: 20704)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !472, file: !473, line: 69, baseType: !526, size: 64, offset: 320)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !528)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !473, line: 116, size: 384, elements: !529)
!529 = !{!530, !534, !559, !1768, !1799, !1803}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !528, file: !473, line: 117, baseType: !531, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{null, !478}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !528, file: !473, line: 118, baseType: !535, size: 64, offset: 64)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !537)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !538, line: 254, size: 128, elements: !539)
!538 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!539 = !{!540, !552}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !537, file: !538, line: 255, baseType: !541, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{!544, !478, !547, !412}
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !154, line: 66, baseType: !545)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !223, line: 73, baseType: !546)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !223, line: 15, baseType: !266)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !538, line: 30, size: 128, elements: !549)
!549 = !{!550, !551}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !548, file: !538, line: 31, baseType: !387, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !548, file: !538, line: 32, baseType: !271, size: 16, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !537, file: !538, line: 256, baseType: !553, size: 64, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{!544, !478, !547, !387, !556}
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !154, line: 61, baseType: !557)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !223, line: 72, baseType: !558)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !223, line: 16, baseType: !432)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !528, file: !473, line: 119, baseType: !560, size: 64, offset: 128)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !563)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !538, line: 84, size: 320, elements: !564)
!564 = !{!565, !566, !570, !1764, !1766}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !563, file: !538, line: 85, baseType: !387, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !563, file: !538, line: 86, baseType: !567, size: 64, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DISubroutineType(types: !569)
!569 = !{!271, !478, !547, !102}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !563, file: !538, line: 88, baseType: !571, size: 64, offset: 128)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{!271, !478, !574, !102}
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !538, line: 175, size: 512, elements: !576)
!576 = !{!577, !578, !579, !580, !1755, !1759, !1760}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !575, file: !538, line: 176, baseType: !548, size: 128)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !575, file: !538, line: 177, baseType: !556, size: 64, offset: 128)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !575, file: !538, line: 178, baseType: !155, size: 64, offset: 192)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !575, file: !538, line: 179, baseType: !581, size: 64, offset: 256)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DISubroutineType(types: !583)
!583 = !{!584}
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !65, line: 472, size: 1536, align: 64, elements: !586)
!586 = !{!587, !588, !596, !597, !598, !599, !614, !615, !616, !1749, !1750, !1751, !1752, !1753, !1754}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !585, file: !65, line: 473, baseType: !348, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !585, file: !65, line: 474, baseType: !589, size: 128, offset: 64)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !590, line: 296, size: 128, elements: !591)
!590 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!591 = !{!592, !593, !595}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !589, file: !590, line: 297, baseType: !175, size: 32)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !589, file: !590, line: 299, baseType: !594, size: 32, offset: 32)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !154, line: 154, baseType: !13)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !589, file: !590, line: 300, baseType: !155, size: 64, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !585, file: !65, line: 475, baseType: !238, size: 320, offset: 192)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !585, file: !65, line: 476, baseType: !594, size: 32, offset: 512)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !585, file: !65, line: 477, baseType: !195, size: 32, offset: 544)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !585, file: !65, line: 482, baseType: !600, size: 128, offset: 576)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !601, line: 26, size: 128, elements: !602)
!601 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!602 = !{!603, !613}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !600, file: !601, line: 27, baseType: !604, size: 64)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !601, line: 12, size: 64, elements: !605)
!605 = !{!606}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !604, file: !601, line: 13, baseType: !607, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !601, line: 5, size: 192, align: 64, elements: !609)
!609 = !{!610, !611, !612}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !608, file: !601, line: 6, baseType: !432, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !608, file: !601, line: 7, baseType: !607, size: 64, offset: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !608, file: !601, line: 8, baseType: !607, size: 64, offset: 128)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !600, file: !601, line: 28, baseType: !607, size: 64, offset: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !585, file: !65, line: 483, baseType: !432, size: 64, offset: 704)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !585, file: !65, line: 484, baseType: !432, size: 64, offset: 768)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !585, file: !65, line: 485, baseType: !617, size: 64, offset: 832)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !619)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !65, line: 404, size: 1280, elements: !620)
!620 = !{!621, !1661, !1665, !1669, !1673, !1689, !1694, !1698, !1703, !1707, !1711, !1715, !1716, !1720, !1724, !1728, !1733, !1737, !1744, !1745}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !619, file: !65, line: 405, baseType: !622, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DISubroutineType(types: !624)
!624 = !{!102, !625, !1659}
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !36, line: 74, size: 512, align: 128, elements: !627)
!627 = !{!628, !629, !1653, !1658}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !626, file: !36, line: 75, baseType: !432, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, scope: !626, file: !36, line: 83, baseType: !630, size: 320, offset: 64)
!630 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !626, file: !36, line: 83, size: 320, elements: !631)
!631 = !{!632, !653, !667, !671, !1652}
!632 = !DIDerivedType(tag: DW_TAG_member, scope: !630, file: !36, line: 84, baseType: !633, size: 320)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !630, file: !36, line: 84, size: 320, elements: !634)
!634 = !{!635, !646, !647, !652}
!635 = !DIDerivedType(tag: DW_TAG_member, scope: !633, file: !36, line: 90, baseType: !636, size: 128)
!636 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !633, file: !36, line: 90, size: 128, elements: !637)
!637 = !{!638, !639, !644, !645}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !636, file: !36, line: 91, baseType: !160, size: 128)
!639 = !DIDerivedType(tag: DW_TAG_member, scope: !636, file: !36, line: 94, baseType: !640, size: 128)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !636, file: !36, line: 94, size: 128, elements: !641)
!641 = !{!642, !643}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !640, file: !36, line: 96, baseType: !155, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !640, file: !36, line: 98, baseType: !13, size: 32, offset: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !636, file: !36, line: 102, baseType: !160, size: 128)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !636, file: !36, line: 103, baseType: !160, size: 128)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !633, file: !36, line: 106, baseType: !584, size: 64, offset: 128)
!647 = !DIDerivedType(tag: DW_TAG_member, scope: !633, file: !36, line: 107, baseType: !648, size: 64, offset: 192)
!648 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !633, file: !36, line: 107, size: 64, elements: !649)
!649 = !{!650, !651}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !648, file: !36, line: 108, baseType: !432, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !648, file: !36, line: 109, baseType: !432, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !633, file: !36, line: 117, baseType: !432, size: 64, offset: 256)
!653 = !DIDerivedType(tag: DW_TAG_member, scope: !630, file: !36, line: 119, baseType: !654, size: 320)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !630, file: !36, line: 119, size: 320, elements: !655)
!655 = !{!656, !657, !660, !661, !662}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !654, file: !36, line: 124, baseType: !432, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !654, file: !36, line: 125, baseType: !658, size: 64, offset: 64)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !36, line: 125, flags: DIFlagFwdDecl)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !654, file: !36, line: 126, baseType: !432, size: 64, offset: 128)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !654, file: !36, line: 127, baseType: !432, size: 64, offset: 192)
!662 = !DIDerivedType(tag: DW_TAG_member, scope: !654, file: !36, line: 128, baseType: !663, size: 64, offset: 256)
!663 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !654, file: !36, line: 128, size: 64, elements: !664)
!664 = !{!665, !666}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !663, file: !36, line: 133, baseType: !432, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !663, file: !36, line: 138, baseType: !242, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, scope: !630, file: !36, line: 141, baseType: !668, size: 64)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !630, file: !36, line: 141, size: 64, elements: !669)
!669 = !{!670}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !668, file: !36, line: 142, baseType: !432, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, scope: !630, file: !36, line: 144, baseType: !672, size: 128)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !630, file: !36, line: 144, size: 128, elements: !673)
!673 = !{!674, !1651}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !672, file: !36, line: 146, baseType: !675, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !20, line: 126, size: 1216, elements: !677)
!677 = !{!678, !688, !719, !730, !731, !732, !733, !1633, !1634, !1635}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !676, file: !20, line: 127, baseType: !679, size: 384)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !20, line: 21, size: 384, elements: !680)
!680 = !{!681, !682, !684, !685, !686, !687}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !679, file: !20, line: 22, baseType: !432, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !679, file: !20, line: 23, baseType: !683, size: 64, offset: 64)
!683 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !432)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !679, file: !20, line: 24, baseType: !683, size: 64, offset: 128)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !679, file: !20, line: 25, baseType: !432, size: 64, offset: 192)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !679, file: !20, line: 26, baseType: !432, size: 64, offset: 256)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !679, file: !20, line: 27, baseType: !432, size: 64, offset: 320)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !676, file: !20, line: 128, baseType: !689, size: 128, offset: 384)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !690, line: 105, size: 128, elements: !691)
!690 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!691 = !{!692, !693}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !689, file: !690, line: 110, baseType: !432, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !689, file: !690, line: 118, baseType: !694, size: 64, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !690, line: 95, size: 448, elements: !696)
!696 = !{!697, !698, !704, !705, !708, !709, !718}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !695, file: !690, line: 96, baseType: !242, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !695, file: !690, line: 97, baseType: !699, size: 64, offset: 64)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !690, line: 60, baseType: !701)
!701 = !DISubroutineType(types: !702)
!702 = !{null, !703}
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !695, file: !690, line: 98, baseType: !699, size: 64, offset: 128)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !695, file: !690, line: 99, baseType: !706, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !154, line: 35, baseType: !707)
!707 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !695, file: !690, line: 100, baseType: !706, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !695, file: !690, line: 101, baseType: !710, size: 128, align: 64, offset: 256)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !154, line: 232, size: 128, align: 64, elements: !711)
!711 = !{!712, !714}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !710, file: !154, line: 233, baseType: !713, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !710, file: !154, line: 234, baseType: !715, size: 64, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DISubroutineType(types: !717)
!717 = !{null, !713}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !695, file: !690, line: 102, baseType: !703, size: 64, offset: 384)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !676, file: !20, line: 129, baseType: !720, size: 256, offset: 512)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !721, line: 26, size: 256, elements: !722)
!721 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!722 = !{!723, !724}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !720, file: !721, line: 27, baseType: !13, size: 32)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !720, file: !721, line: 28, baseType: !725, size: 192, offset: 64)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !726, line: 43, size: 192, elements: !727)
!726 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!727 = !{!728, !729}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !725, file: !726, line: 44, baseType: !257, size: 32)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !725, file: !726, line: 45, baseType: !160, size: 128, offset: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !676, file: !20, line: 130, baseType: !19, size: 32, offset: 768)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !676, file: !20, line: 131, baseType: !13, size: 32, offset: 800)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !676, file: !20, line: 132, baseType: !432, size: 64, offset: 832)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !676, file: !20, line: 133, baseType: !734, size: 64, offset: 896)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !736)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !20, line: 77, size: 192, elements: !737)
!737 = !{!738, !742, !1629}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !736, file: !20, line: 83, baseType: !739, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{null, !625}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !736, file: !20, line: 89, baseType: !743, size: 64, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{!746, !747}
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !36, line: 1184, baseType: !13)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !749, line: 512, size: 896, elements: !750)
!749 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!750 = !{!751, !1596, !1597, !1604, !1611, !1621, !1622, !1623, !1625, !1627}
!751 = !DIDerivedType(tag: DW_TAG_member, scope: !748, file: !749, line: 513, baseType: !752, size: 320)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !748, file: !749, line: 513, size: 320, elements: !753)
!753 = !{!754, !1592, !1593, !1594, !1595}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !752, file: !749, line: 514, baseType: !755, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !36, line: 625, size: 1344, elements: !757)
!757 = !{!758, !767, !1497, !1503, !1510, !1511, !1516, !1517, !1522, !1523, !1526, !1585, !1586, !1587, !1588, !1589, !1590}
!758 = !DIDerivedType(tag: DW_TAG_member, scope: !756, file: !36, line: 628, baseType: !759, size: 128)
!759 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !756, file: !36, line: 628, size: 128, elements: !760)
!760 = !{!761, !766}
!761 = !DIDerivedType(tag: DW_TAG_member, scope: !759, file: !36, line: 629, baseType: !762, size: 128)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !759, file: !36, line: 629, size: 128, elements: !763)
!763 = !{!764, !765}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !762, file: !36, line: 631, baseType: !432, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !762, file: !36, line: 632, baseType: !432, size: 64, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !759, file: !36, line: 635, baseType: !710, size: 128, align: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !756, file: !36, line: 639, baseType: !768, size: 64, offset: 128)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !36, line: 733, size: 10240, elements: !770)
!770 = !{!771, !1495}
!771 = !DIDerivedType(tag: DW_TAG_member, scope: !769, file: !36, line: 734, baseType: !772, size: 10240)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !769, file: !36, line: 734, size: 10240, elements: !773)
!773 = !{!774, !778, !792, !1357, !1358, !1359, !1360, !1361, !1362, !1371, !1372, !1373, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1412, !1414, !1417, !1464, !1465, !1466, !1469, !1470, !1471, !1474, !1475, !1476, !1482, !1483}
!774 = !DIDerivedType(tag: DW_TAG_member, scope: !772, file: !36, line: 739, baseType: !775, size: 512, align: 512)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !772, file: !36, line: 739, size: 512, align: 512, elements: !776)
!776 = !{!777}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !775, file: !36, line: 747, baseType: !195, size: 32)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !772, file: !36, line: 750, baseType: !779, size: 128, offset: 512)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !780, line: 218, size: 128, elements: !781)
!780 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!781 = !{!782, !790, !791}
!782 = !DIDerivedType(tag: DW_TAG_member, scope: !779, file: !780, line: 219, baseType: !783, size: 32)
!783 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !779, file: !780, line: 219, size: 32, elements: !784)
!784 = !{!785, !786}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !783, file: !780, line: 220, baseType: !175, size: 32)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !783, file: !780, line: 221, baseType: !787)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !780, line: 197, baseType: !788)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !780, line: 197, elements: !789)
!789 = !{}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !779, file: !780, line: 223, baseType: !13, size: 32, offset: 32)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !779, file: !780, line: 224, baseType: !155, size: 64, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !772, file: !36, line: 752, baseType: !793, size: 64, offset: 640)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DISubroutineType(types: !795)
!795 = !{!432, !796, !432, !432, !432, !432}
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !65, line: 994, size: 1856, align: 64, elements: !798)
!798 = !{!799, !810, !811, !813, !814, !822, !823, !824, !890, !1083, !1092, !1098, !1099, !1347, !1348, !1349, !1350, !1352, !1353, !1356}
!799 = !DIDerivedType(tag: DW_TAG_member, scope: !797, file: !65, line: 995, baseType: !800, size: 128)
!800 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !797, file: !65, line: 995, size: 128, elements: !801)
!801 = !{!802, !808, !809}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !800, file: !65, line: 996, baseType: !803, size: 64)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !804, line: 60, size: 64, elements: !805)
!804 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!805 = !{!806}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !803, file: !804, line: 61, baseType: !807, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !800, file: !65, line: 997, baseType: !710, size: 128, align: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !800, file: !65, line: 998, baseType: !13, size: 32)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !797, file: !65, line: 1005, baseType: !175, size: 32, offset: 128)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !797, file: !65, line: 1006, baseType: !812, size: 32, offset: 160)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !154, line: 156, baseType: !13)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !797, file: !65, line: 1007, baseType: !242, size: 64, offset: 192)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !797, file: !65, line: 1008, baseType: !815, size: 256, offset: 256)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !816, line: 66, size: 256, elements: !817)
!816 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!817 = !{!818, !819, !820, !821}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !815, file: !816, line: 67, baseType: !242, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !815, file: !816, line: 68, baseType: !257, size: 32, offset: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !815, file: !816, line: 70, baseType: !252, size: 32, offset: 96)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !815, file: !816, line: 72, baseType: !160, size: 128, offset: 128)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !797, file: !65, line: 1009, baseType: !221, size: 64, offset: 512)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !797, file: !65, line: 1010, baseType: !13, size: 32, offset: 576)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !797, file: !65, line: 1011, baseType: !825, size: 256, offset: 640)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !65, line: 948, size: 256, elements: !826)
!826 = !{!827, !848, !886, !887, !888, !889}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !825, file: !65, line: 949, baseType: !828, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !829, line: 34, baseType: !830)
!829 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !829, line: 25, size: 64, elements: !831)
!831 = !{!832}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !830, file: !829, line: 26, baseType: !833, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !834, line: 27, baseType: !835)
!834 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !834, line: 13, size: 64, elements: !836)
!836 = !{!837, !847}
!837 = !DIDerivedType(tag: DW_TAG_member, scope: !835, file: !834, line: 14, baseType: !838, size: 32)
!838 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !835, file: !834, line: 14, size: 32, elements: !839)
!839 = !{!840, !841}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !838, file: !834, line: 15, baseType: !195, size: 32)
!841 = !DIDerivedType(tag: DW_TAG_member, scope: !838, file: !834, line: 16, baseType: !842, size: 32)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !838, file: !834, line: 16, size: 32, elements: !843)
!843 = !{!844, !845}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !842, file: !834, line: 18, baseType: !203, size: 8)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !842, file: !834, line: 19, baseType: !846, size: 24, offset: 8)
!846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 24, elements: !513)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !835, file: !834, line: 26, baseType: !187, size: 32, offset: 32)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !825, file: !65, line: 950, baseType: !849, size: 64, offset: 64)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !28, line: 59, size: 768, elements: !851)
!851 = !{!852, !858, !859, !860, !867, !868, !875, !876}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !850, file: !28, line: 61, baseType: !853, size: 32)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !854, line: 113, baseType: !855)
!854 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !854, line: 111, size: 32, elements: !856)
!856 = !{!857}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !855, file: !854, line: 112, baseType: !195, size: 32)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !850, file: !28, line: 62, baseType: !13, size: 32, offset: 32)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !850, file: !28, line: 63, baseType: !175, size: 32, offset: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !850, file: !28, line: 65, baseType: !861, size: 256, offset: 128)
!861 = !DICompositeType(tag: DW_TAG_array_type, baseType: !862, size: 256, elements: !865)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !154, line: 194, size: 64, elements: !863)
!863 = !{!864}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !862, file: !154, line: 195, baseType: !233, size: 64)
!865 = !{!866}
!866 = !DISubrange(count: 4)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !850, file: !28, line: 66, baseType: !862, size: 64, offset: 384)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !850, file: !28, line: 68, baseType: !869, size: 192, offset: 448)
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !870, line: 41, baseType: !871)
!870 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !870, line: 37, size: 192, elements: !872)
!872 = !{!873, !874}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !871, file: !870, line: 38, baseType: !175, size: 32)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !871, file: !870, line: 39, baseType: !160, size: 128, offset: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !850, file: !28, line: 69, baseType: !710, size: 128, align: 64, offset: 640)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !850, file: !28, line: 70, baseType: !877, offset: 768)
!877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !878, elements: !884)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !28, line: 54, size: 128, elements: !879)
!879 = !{!880, !881}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !878, file: !28, line: 55, baseType: !102, size: 32)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !878, file: !28, line: 56, baseType: !882, size: 64, offset: 64)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !28, line: 56, flags: DIFlagFwdDecl)
!884 = !{!885}
!885 = !DISubrange(count: -1)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !825, file: !65, line: 951, baseType: !27, size: 32, offset: 128)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !825, file: !65, line: 952, baseType: !274, size: 32, offset: 160)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !825, file: !65, line: 952, baseType: !274, size: 32, offset: 192)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !825, file: !65, line: 953, baseType: !102, size: 32, offset: 224)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !797, file: !65, line: 1012, baseType: !891, size: 64, offset: 896)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !893)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !894, line: 110, size: 1472, elements: !895)
!894 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!895 = !{!896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !912, !913, !914, !915, !916, !917, !1028, !1029, !1030, !1031, !1032, !1063, !1066, !1070, !1078}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !893, file: !894, line: 111, baseType: !242, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !893, file: !894, line: 112, baseType: !274, size: 32, offset: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !893, file: !894, line: 113, baseType: !283, size: 32, offset: 96)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !893, file: !894, line: 114, baseType: !274, size: 32, offset: 128)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !893, file: !894, line: 115, baseType: !283, size: 32, offset: 160)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !893, file: !894, line: 116, baseType: !274, size: 32, offset: 192)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !893, file: !894, line: 117, baseType: !283, size: 32, offset: 224)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !893, file: !894, line: 118, baseType: !274, size: 32, offset: 256)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !893, file: !894, line: 119, baseType: !283, size: 32, offset: 288)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !893, file: !894, line: 120, baseType: !13, size: 32, offset: 320)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !893, file: !894, line: 121, baseType: !907, size: 64, offset: 384)
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !908, line: 24, baseType: !909)
!908 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !908, line: 24, size: 64, elements: !910)
!910 = !{!911}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !909, file: !908, line: 24, baseType: !341, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !893, file: !894, line: 122, baseType: !907, size: 64, offset: 448)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !893, file: !894, line: 123, baseType: !907, size: 64, offset: 512)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !893, file: !894, line: 124, baseType: !907, size: 64, offset: 576)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !893, file: !894, line: 125, baseType: !907, size: 64, offset: 640)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !893, file: !894, line: 127, baseType: !207, size: 8, offset: 704)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !893, file: !894, line: 129, baseType: !918, size: 64, offset: 768)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !920, line: 195, size: 1728, elements: !921)
!920 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!921 = !{!922, !923, !928, !933, !934, !937, !938, !943, !944, !945, !946, !949, !950, !951, !953, !954, !992, !1013}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !919, file: !920, line: 196, baseType: !853, size: 32)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !919, file: !920, line: 197, baseType: !924, size: 32, offset: 32)
!924 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !920, line: 28, baseType: !925)
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !154, line: 104, baseType: !926)
!926 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !204, line: 20, baseType: !927)
!927 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !206, line: 26, baseType: !102)
!928 = !DIDerivedType(tag: DW_TAG_member, scope: !919, file: !920, line: 198, baseType: !929, size: 192, offset: 64)
!929 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !919, file: !920, line: 198, size: 192, elements: !930)
!930 = !{!931, !932}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !929, file: !920, line: 199, baseType: !160, size: 128)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !929, file: !920, line: 200, baseType: !608, size: 192, align: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !919, file: !920, line: 205, baseType: !238, size: 320, offset: 256)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !919, file: !920, line: 206, baseType: !935, size: 64, offset: 576)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !920, line: 206, flags: DIFlagFwdDecl)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !919, file: !920, line: 207, baseType: !155, size: 64, offset: 640)
!938 = !DIDerivedType(tag: DW_TAG_member, scope: !919, file: !920, line: 208, baseType: !939, size: 64, offset: 704)
!939 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !919, file: !920, line: 208, size: 64, elements: !940)
!940 = !{!941, !942}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !939, file: !920, line: 209, baseType: !264, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !939, file: !920, line: 210, baseType: !264, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !919, file: !920, line: 212, baseType: !264, size: 64, offset: 768)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !919, file: !920, line: 213, baseType: !274, size: 32, offset: 832)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !919, file: !920, line: 214, baseType: !283, size: 32, offset: 864)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !919, file: !920, line: 215, baseType: !947, size: 32, offset: 896)
!947 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !920, line: 31, baseType: !948)
!948 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !154, line: 110, baseType: !337)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !919, file: !920, line: 216, baseType: !215, size: 16, offset: 928)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !919, file: !920, line: 217, baseType: !215, size: 16, offset: 944)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !919, file: !920, line: 221, baseType: !952, size: 16, offset: 960)
!952 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !919, file: !920, line: 228, baseType: !432, size: 64, offset: 1024)
!954 = !DIDerivedType(tag: DW_TAG_member, scope: !919, file: !920, line: 245, baseType: !955, size: 320, offset: 1088)
!955 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !919, file: !920, line: 245, size: 320, elements: !956)
!956 = !{!957, !984}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !955, file: !920, line: 246, baseType: !958, size: 320)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !920, line: 114, size: 320, elements: !959)
!959 = !{!960, !961, !973, !976, !983}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !958, file: !920, line: 116, baseType: !432, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, scope: !958, file: !920, line: 117, baseType: !962, size: 64, offset: 64)
!962 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !958, file: !920, line: 117, size: 64, elements: !963)
!963 = !{!964, !972}
!964 = !DIDerivedType(tag: DW_TAG_member, scope: !962, file: !920, line: 118, baseType: !965, size: 64)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !962, file: !920, line: 118, size: 64, elements: !966)
!966 = !{!967, !968}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !965, file: !920, line: 120, baseType: !213, size: 16)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !965, file: !920, line: 121, baseType: !969, size: 48, offset: 16)
!969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !970)
!970 = !{!971}
!971 = !DISubrange(count: 6)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !962, file: !920, line: 127, baseType: !432, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !958, file: !920, line: 129, baseType: !974, size: 64, offset: 128)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !920, line: 102, flags: DIFlagFwdDecl)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !958, file: !920, line: 130, baseType: !977, size: 64, offset: 192)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !920, line: 108, size: 192, elements: !979)
!979 = !{!980, !981, !982}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !978, file: !920, line: 109, baseType: !710, size: 128, align: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !978, file: !920, line: 110, baseType: !853, size: 32, offset: 128)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !978, file: !920, line: 111, baseType: !706, size: 8, offset: 160)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !958, file: !920, line: 131, baseType: !387, size: 64, offset: 256)
!984 = !DIDerivedType(tag: DW_TAG_member, scope: !955, file: !920, line: 247, baseType: !985, size: 320)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !955, file: !920, line: 247, size: 320, elements: !986)
!986 = !{!987, !988, !989, !990, !991}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !985, file: !920, line: 248, baseType: !432, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !985, file: !920, line: 249, baseType: !432, size: 64, offset: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !985, file: !920, line: 250, baseType: !974, size: 64, offset: 128)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !985, file: !920, line: 251, baseType: !977, size: 64, offset: 192)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !985, file: !920, line: 252, baseType: !412, size: 64, offset: 256)
!992 = !DIDerivedType(tag: DW_TAG_member, scope: !919, file: !920, line: 260, baseType: !993, size: 256, offset: 1408)
!993 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !919, file: !920, line: 260, size: 256, elements: !994)
!994 = !{!995, !1001}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !993, file: !920, line: 261, baseType: !996, size: 256)
!996 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !920, line: 134, size: 256, elements: !997)
!997 = !{!998, !999}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !996, file: !920, line: 135, baseType: !155, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !996, file: !920, line: 136, baseType: !1000, size: 256)
!1000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 256, elements: !865)
!1001 = !DIDerivedType(tag: DW_TAG_member, scope: !993, file: !920, line: 262, baseType: !1002, size: 256)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !993, file: !920, line: 262, size: 256, elements: !1003)
!1003 = !{!1004, !1005}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1002, file: !920, line: 264, baseType: !160, size: 128)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1002, file: !920, line: 265, baseType: !1006, size: 128, offset: 128)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1007, line: 22, size: 128, elements: !1008)
!1007 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1008 = !{!1009, !1012}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1006, file: !1007, line: 23, baseType: !1010, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1007, line: 23, flags: DIFlagFwdDecl)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1006, file: !1007, line: 24, baseType: !432, size: 64, offset: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !919, file: !920, line: 280, baseType: !1014, size: 64, offset: 1664)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !920, line: 176, size: 192, elements: !1016)
!1016 = !{!1017, !1026, !1027}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1015, file: !920, line: 177, baseType: !1018, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !920, line: 171, baseType: !1019)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!102, !918, !1022, !1024, !918}
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !975)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !996)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1015, file: !920, line: 178, baseType: !918, size: 64, offset: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1015, file: !920, line: 179, baseType: !974, size: 64, offset: 128)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !893, file: !894, line: 130, baseType: !918, size: 64, offset: 832)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !893, file: !894, line: 131, baseType: !918, size: 64, offset: 896)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !893, file: !894, line: 132, baseType: !918, size: 64, offset: 960)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !893, file: !894, line: 135, baseType: !155, size: 64, offset: 1024)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !893, file: !894, line: 137, baseType: !1033, size: 64, offset: 1088)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1035, line: 14, size: 1088, elements: !1036)
!1035 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1036 = !{!1037, !1038, !1047, !1048, !1049, !1050, !1051, !1052}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1034, file: !1035, line: 15, baseType: !853, size: 32)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1034, file: !1035, line: 17, baseType: !1039, size: 320, offset: 64)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1040, line: 22, size: 320, elements: !1041)
!1040 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1041 = !{!1042, !1043, !1044, !1045}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1039, file: !1040, line: 23, baseType: !257, size: 32)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1039, file: !1040, line: 24, baseType: !248, size: 64, offset: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1039, file: !1040, line: 26, baseType: !160, size: 128, offset: 128)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1039, file: !1040, line: 28, baseType: !1046, size: 64, offset: 256)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1034, file: !1035, line: 19, baseType: !432, size: 64, offset: 384)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1034, file: !1035, line: 20, baseType: !242, size: 64, offset: 448)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1034, file: !1035, line: 23, baseType: !230, size: 128, offset: 512)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1034, file: !1035, line: 24, baseType: !274, size: 32, offset: 640)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1034, file: !1035, line: 29, baseType: !242, size: 64, offset: 704)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1034, file: !1035, line: 36, baseType: !1053, size: 320, offset: 768)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1054, line: 15, size: 320, elements: !1055)
!1054 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1055 = !{!1056, !1057, !1058, !1059, !1060, !1061, !1062}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1053, file: !1054, line: 16, baseType: !257, size: 32)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1053, file: !1054, line: 18, baseType: !102, size: 32, offset: 32)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1053, file: !1054, line: 19, baseType: !102, size: 32, offset: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1053, file: !1054, line: 20, baseType: !102, size: 32, offset: 96)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1053, file: !1054, line: 21, baseType: !102, size: 32, offset: 128)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1053, file: !1054, line: 22, baseType: !432, size: 64, offset: 192)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1053, file: !1054, line: 23, baseType: !432, size: 64, offset: 256)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !893, file: !894, line: 138, baseType: !1064, size: 64, offset: 1152)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !36, line: 901, flags: DIFlagFwdDecl)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !893, file: !894, line: 139, baseType: !1067, size: 64, offset: 1216)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1069, line: 16, flags: DIFlagFwdDecl)
!1069 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !893, file: !894, line: 140, baseType: !1071, size: 64, offset: 1280)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !894, line: 25, size: 64, elements: !1073)
!1073 = !{!1074, !1075, !1076}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1072, file: !894, line: 26, baseType: !195, size: 32)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1072, file: !894, line: 27, baseType: !102, size: 32, offset: 32)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1072, file: !894, line: 28, baseType: !1077, offset: 64)
!1077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, elements: !884)
!1078 = !DIDerivedType(tag: DW_TAG_member, scope: !893, file: !894, line: 142, baseType: !1079, size: 128, offset: 1344)
!1079 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !893, file: !894, line: 142, size: 128, elements: !1080)
!1080 = !{!1081, !1082}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1079, file: !894, line: 143, baseType: !102, size: 32)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1079, file: !894, line: 144, baseType: !710, size: 128, align: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !797, file: !65, line: 1013, baseType: !1084, size: 256, offset: 960)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !65, line: 970, size: 256, elements: !1085)
!1085 = !{!1086, !1087, !1088, !1089, !1090, !1091}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1084, file: !65, line: 971, baseType: !432, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1084, file: !65, line: 972, baseType: !13, size: 32, offset: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1084, file: !65, line: 973, baseType: !13, size: 32, offset: 96)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1084, file: !65, line: 974, baseType: !13, size: 32, offset: 128)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1084, file: !65, line: 975, baseType: !13, size: 32, offset: 160)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1084, file: !65, line: 976, baseType: !221, size: 64, offset: 192)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !797, file: !65, line: 1014, baseType: !1093, size: 128, offset: 1216)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1094, line: 8, size: 128, elements: !1095)
!1094 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1095 = !{!1096, !1097}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1093, file: !1094, line: 9, baseType: !417, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1093, file: !1094, line: 10, baseType: !303, size: 64, offset: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !797, file: !65, line: 1015, baseType: !348, size: 64, offset: 1344)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !797, file: !65, line: 1016, baseType: !1100, size: 64, offset: 1408)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1102)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !65, line: 1914, size: 2112, elements: !1103)
!1103 = !{!1104, !1105, !1109, !1114, !1118, !1229, !1230, !1236, !1249, !1257, !1261, !1262, !1266, !1267, !1271, !1276, !1277, !1281, !1285, !1291, !1292, !1296, !1297, !1304, !1308, !1312, !1318, !1322, !1328, !1332, !1336, !1337, !1343}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1102, file: !65, line: 1915, baseType: !459, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1102, file: !65, line: 1916, baseType: !1106, size: 64, offset: 64)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!221, !796, !221, !102}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1102, file: !65, line: 1917, baseType: !1110, size: 64, offset: 128)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!544, !796, !412, !556, !1113}
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1102, file: !65, line: 1918, baseType: !1115, size: 64, offset: 192)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!544, !796, !387, !556, !1113}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1102, file: !65, line: 1919, baseType: !1119, size: 64, offset: 256)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!544, !1122, !1227}
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !65, line: 373, size: 384, elements: !1124)
!1124 = !{!1125, !1126, !1127, !1131, !1132, !1133, !1134}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1123, file: !65, line: 374, baseType: !796, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1123, file: !65, line: 375, baseType: !221, size: 64, offset: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1123, file: !65, line: 376, baseType: !1128, size: 64, offset: 128)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{null, !1122, !266}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1123, file: !65, line: 377, baseType: !155, size: 64, offset: 192)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1123, file: !65, line: 378, baseType: !102, size: 32, offset: 256)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1123, file: !65, line: 379, baseType: !213, size: 16, offset: 288)
!1134 = !DIDerivedType(tag: DW_TAG_member, scope: !1123, file: !65, line: 380, baseType: !1135, size: 64, offset: 320)
!1135 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1123, file: !65, line: 380, size: 64, elements: !1136)
!1136 = !{!1137, !1223}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1135, file: !65, line: 386, baseType: !1138, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !1140, line: 998, size: 448, elements: !1141)
!1140 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!1141 = !{!1142, !1209, !1210}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !1139, file: !1140, line: 999, baseType: !1143, size: 64)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !36, line: 293, size: 1536, elements: !1145)
!1145 = !{!1146, !1176, !1190}
!1146 = !DIDerivedType(tag: DW_TAG_member, scope: !1144, file: !36, line: 295, baseType: !1147, size: 512)
!1147 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1144, file: !36, line: 295, size: 512, elements: !1148)
!1148 = !{!1149, !1175}
!1149 = !DIDerivedType(tag: DW_TAG_member, scope: !1147, file: !36, line: 296, baseType: !1150, size: 448)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1147, file: !36, line: 296, size: 448, elements: !1151)
!1151 = !{!1152, !1153, !1162, !1163, !1164, !1173, !1174}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1150, file: !36, line: 298, baseType: !432, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, scope: !1150, file: !36, line: 299, baseType: !1154, size: 128, offset: 64)
!1154 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1150, file: !36, line: 299, size: 128, elements: !1155)
!1155 = !{!1156, !1157}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1154, file: !36, line: 300, baseType: !160, size: 128)
!1157 = !DIDerivedType(tag: DW_TAG_member, scope: !1154, file: !36, line: 302, baseType: !1158, size: 128)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1154, file: !36, line: 302, size: 128, elements: !1159)
!1159 = !{!1160, !1161}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1158, file: !36, line: 303, baseType: !155, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1158, file: !36, line: 305, baseType: !13, size: 32, offset: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1150, file: !36, line: 310, baseType: !584, size: 64, offset: 192)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1150, file: !36, line: 311, baseType: !432, size: 64, offset: 256)
!1164 = !DIDerivedType(tag: DW_TAG_member, scope: !1150, file: !36, line: 312, baseType: !1165, size: 64, offset: 320)
!1165 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1150, file: !36, line: 312, size: 64, elements: !1166)
!1166 = !{!1167, !1168}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1165, file: !36, line: 313, baseType: !155, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1165, file: !36, line: 314, baseType: !1169, size: 64)
!1169 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !36, line: 257, baseType: !1170)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 255, size: 64, elements: !1171)
!1171 = !{!1172}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1170, file: !36, line: 256, baseType: !432, size: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1150, file: !36, line: 316, baseType: !195, size: 32, offset: 384)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1150, file: !36, line: 317, baseType: !195, size: 32, offset: 416)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1147, file: !36, line: 323, baseType: !626, size: 512, align: 128)
!1176 = !DIDerivedType(tag: DW_TAG_member, scope: !1144, file: !36, line: 325, baseType: !1177, size: 512, offset: 512)
!1177 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1144, file: !36, line: 325, size: 512, elements: !1178)
!1178 = !{!1179, !1189}
!1179 = !DIDerivedType(tag: DW_TAG_member, scope: !1177, file: !36, line: 326, baseType: !1180, size: 320)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1177, file: !36, line: 326, size: 320, elements: !1181)
!1181 = !{!1182, !1183, !1184, !1185, !1186, !1187, !1188}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1180, file: !36, line: 327, baseType: !432, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1180, file: !36, line: 328, baseType: !432, size: 64, offset: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1180, file: !36, line: 329, baseType: !432, size: 64, offset: 128)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1180, file: !36, line: 331, baseType: !195, size: 32, offset: 192)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1180, file: !36, line: 332, baseType: !195, size: 32, offset: 224)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1180, file: !36, line: 333, baseType: !195, size: 32, offset: 256)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1180, file: !36, line: 335, baseType: !13, size: 32, offset: 288)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1177, file: !36, line: 339, baseType: !626, size: 512, align: 128)
!1190 = !DIDerivedType(tag: DW_TAG_member, scope: !1144, file: !36, line: 341, baseType: !1191, size: 512, offset: 1024)
!1191 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1144, file: !36, line: 341, size: 512, elements: !1192)
!1192 = !{!1193, !1202, !1208}
!1193 = !DIDerivedType(tag: DW_TAG_member, scope: !1191, file: !36, line: 342, baseType: !1194, size: 384)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1191, file: !36, line: 342, size: 384, elements: !1195)
!1195 = !{!1196, !1197, !1198, !1199, !1200, !1201}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1194, file: !36, line: 343, baseType: !432, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1194, file: !36, line: 344, baseType: !432, size: 64, offset: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1194, file: !36, line: 346, baseType: !155, size: 64, offset: 128)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1194, file: !36, line: 347, baseType: !155, size: 64, offset: 192)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1194, file: !36, line: 348, baseType: !155, size: 64, offset: 256)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1194, file: !36, line: 349, baseType: !155, size: 64, offset: 320)
!1202 = !DIDerivedType(tag: DW_TAG_member, scope: !1191, file: !36, line: 352, baseType: !1203, size: 256)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1191, file: !36, line: 352, size: 256, elements: !1204)
!1204 = !{!1205, !1206, !1207}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1203, file: !36, line: 353, baseType: !432, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1203, file: !36, line: 354, baseType: !432, size: 64, offset: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1203, file: !36, line: 356, baseType: !160, size: 128, offset: 128)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1191, file: !36, line: 359, baseType: !626, size: 512, align: 128)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !1139, file: !1140, line: 1000, baseType: !102, size: 32, offset: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1139, file: !1140, line: 1001, baseType: !1211, size: 320, offset: 128)
!1211 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !870, line: 14, baseType: !1212)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !870, line: 30, size: 320, elements: !1213)
!1213 = !{!1214, !1215, !1216, !1222}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1212, file: !870, line: 31, baseType: !13, size: 32)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1212, file: !870, line: 32, baseType: !155, size: 64, offset: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1212, file: !870, line: 33, baseType: !1217, size: 64, offset: 128)
!1217 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !870, line: 16, baseType: !1218)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{!102, !1221, !13, !102, !155}
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1212, file: !870, line: 34, baseType: !160, size: 128, offset: 192)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1135, file: !65, line: 395, baseType: !1224, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!544, !155}
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !65, line: 69, flags: DIFlagFwdDecl)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1102, file: !65, line: 1920, baseType: !1119, size: 64, offset: 320)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1102, file: !65, line: 1921, baseType: !1231, size: 64, offset: 384)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{!102, !1122, !1234, !13}
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !65, line: 53, flags: DIFlagFwdDecl)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1102, file: !65, line: 1923, baseType: !1237, size: 64, offset: 448)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{!102, !796, !1240}
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !65, line: 1858, size: 128, elements: !1242)
!1242 = !{!1243, !1248}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1241, file: !65, line: 1859, baseType: !1244, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !65, line: 1855, baseType: !1245)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!706, !1240, !387, !102, !221, !341, !13}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1241, file: !65, line: 1860, baseType: !221, size: 64, offset: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1102, file: !65, line: 1924, baseType: !1250, size: 64, offset: 512)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!1253, !796, !1255}
!1253 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1254, line: 59, baseType: !13)
!1254 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !65, line: 61, flags: DIFlagFwdDecl)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1102, file: !65, line: 1925, baseType: !1258, size: 64, offset: 576)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!266, !796, !13, !432}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1102, file: !65, line: 1926, baseType: !1258, size: 64, offset: 640)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1102, file: !65, line: 1927, baseType: !1263, size: 64, offset: 704)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!102, !796, !755}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1102, file: !65, line: 1928, baseType: !432, size: 64, offset: 768)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1102, file: !65, line: 1929, baseType: !1268, size: 64, offset: 832)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{!102, !348, !796}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1102, file: !65, line: 1930, baseType: !1272, size: 64, offset: 896)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{!102, !796, !1275}
!1275 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !65, line: 1061, baseType: !155)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1102, file: !65, line: 1931, baseType: !1268, size: 64, offset: 960)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1102, file: !65, line: 1932, baseType: !1278, size: 64, offset: 1024)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!102, !796, !221, !221, !102}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1102, file: !65, line: 1933, baseType: !1282, size: 64, offset: 1088)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{!102, !102, !796, !102}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1102, file: !65, line: 1934, baseType: !1286, size: 64, offset: 1152)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{!102, !796, !102, !1289}
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !65, line: 1063, flags: DIFlagFwdDecl)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1102, file: !65, line: 1935, baseType: !793, size: 64, offset: 1216)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1102, file: !65, line: 1936, baseType: !1293, size: 64, offset: 1280)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{!102, !102}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1102, file: !65, line: 1937, baseType: !1286, size: 64, offset: 1344)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1102, file: !65, line: 1938, baseType: !1298, size: 64, offset: 1408)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{!544, !1301, !796, !1113, !556, !13}
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1303, line: 59, flags: DIFlagFwdDecl)
!1303 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1102, file: !65, line: 1939, baseType: !1305, size: 64, offset: 1472)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{!544, !796, !1113, !1301, !556, !13}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1102, file: !65, line: 1940, baseType: !1309, size: 64, offset: 1536)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{null, !796}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1102, file: !65, line: 1941, baseType: !1313, size: 64, offset: 1600)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{!102, !796, !102, !1316, !1317}
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1102, file: !65, line: 1942, baseType: !1319, size: 64, offset: 1664)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DISubroutineType(types: !1321)
!1321 = !{!266, !796, !102, !221, !221}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1102, file: !65, line: 1944, baseType: !1323, size: 64, offset: 1728)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{null, !1326, !796}
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1303, line: 66, flags: DIFlagFwdDecl)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1102, file: !65, line: 1948, baseType: !1329, size: 64, offset: 1792)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{!544, !796, !221, !796, !221, !556, !13}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1102, file: !65, line: 1950, baseType: !1333, size: 64, offset: 1856)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{!221, !796, !221, !796, !221, !221, !13}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1102, file: !65, line: 1953, baseType: !1278, size: 64, offset: 1920)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1102, file: !65, line: 1954, baseType: !1338, size: 64, offset: 1984)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{!102, !1341, !13}
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !65, line: 1911, flags: DIFlagFwdDecl)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1102, file: !65, line: 1955, baseType: !1344, size: 64, offset: 2048)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!102, !1341, !1234, !13}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !797, file: !65, line: 1018, baseType: !341, size: 64, offset: 1472)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !797, file: !65, line: 1020, baseType: !155, size: 64, offset: 1536)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !797, file: !65, line: 1023, baseType: !155, size: 64, offset: 1600)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !797, file: !65, line: 1027, baseType: !1351, size: 64, offset: 1664)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !797, file: !65, line: 1029, baseType: !584, size: 64, offset: 1728)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !797, file: !65, line: 1030, baseType: !1354, size: 32, offset: 1792)
!1354 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1355, line: 8, baseType: !337)
!1355 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !797, file: !65, line: 1031, baseType: !1354, size: 32, offset: 1824)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !772, file: !36, line: 756, baseType: !432, size: 64, offset: 704)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !772, file: !36, line: 757, baseType: !432, size: 64, offset: 768)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !772, file: !36, line: 760, baseType: !432, size: 64, offset: 832)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !772, file: !36, line: 761, baseType: !432, size: 64, offset: 896)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !772, file: !36, line: 763, baseType: !432, size: 64, offset: 960)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !772, file: !36, line: 764, baseType: !1363, size: 64, offset: 1024)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1365, line: 299, baseType: !1366)
!1365 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1365, line: 299, size: 64, elements: !1367)
!1367 = !{!1368}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1366, file: !1365, line: 299, baseType: !1369, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1370, line: 18, baseType: !432)
!1370 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !772, file: !36, line: 773, baseType: !195, size: 32, offset: 1088)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !772, file: !36, line: 785, baseType: !195, size: 32, offset: 1120)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !772, file: !36, line: 795, baseType: !1374, size: 64, offset: 1152)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !36, line: 726, size: 128, elements: !1376)
!1376 = !{!1377, !1378}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1375, file: !36, line: 727, baseType: !341, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1375, file: !36, line: 728, baseType: !102, size: 32, offset: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !772, file: !36, line: 801, baseType: !432, size: 64, offset: 1216)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !772, file: !36, line: 804, baseType: !242, size: 64, offset: 1280)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !772, file: !36, line: 806, baseType: !102, size: 32, offset: 1344)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !772, file: !36, line: 808, baseType: !175, size: 32, offset: 1376)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !772, file: !36, line: 823, baseType: !238, size: 320, offset: 1408)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !772, file: !36, line: 825, baseType: !160, size: 128, offset: 1728)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !772, file: !36, line: 845, baseType: !102, size: 32, offset: 1856)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !772, file: !36, line: 849, baseType: !432, size: 64, offset: 1920)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !772, file: !36, line: 850, baseType: !432, size: 64, offset: 1984)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !772, file: !36, line: 852, baseType: !432, size: 64, offset: 2048)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !772, file: !36, line: 853, baseType: !432, size: 64, offset: 2112)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !772, file: !36, line: 854, baseType: !244, size: 64, offset: 2176)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !772, file: !36, line: 855, baseType: !432, size: 64, offset: 2240)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !772, file: !36, line: 856, baseType: !432, size: 64, offset: 2304)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !772, file: !36, line: 857, baseType: !432, size: 64, offset: 2368)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !772, file: !36, line: 858, baseType: !432, size: 64, offset: 2432)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !772, file: !36, line: 865, baseType: !314, size: 32, offset: 2496)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !772, file: !36, line: 867, baseType: !175, size: 32, offset: 2528)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !772, file: !36, line: 869, baseType: !432, size: 64, offset: 2560)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !772, file: !36, line: 869, baseType: !432, size: 64, offset: 2624)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !772, file: !36, line: 869, baseType: !432, size: 64, offset: 2688)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !772, file: !36, line: 869, baseType: !432, size: 64, offset: 2752)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !772, file: !36, line: 870, baseType: !432, size: 64, offset: 2816)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !772, file: !36, line: 870, baseType: !432, size: 64, offset: 2880)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !772, file: !36, line: 870, baseType: !432, size: 64, offset: 2944)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !772, file: !36, line: 871, baseType: !432, size: 64, offset: 3008)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !772, file: !36, line: 871, baseType: !432, size: 64, offset: 3072)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !772, file: !36, line: 871, baseType: !432, size: 64, offset: 3136)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !772, file: !36, line: 871, baseType: !432, size: 64, offset: 3200)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !772, file: !36, line: 873, baseType: !1409, size: 3328, offset: 3264)
!1409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !432, size: 3328, elements: !1410)
!1410 = !{!1411}
!1411 = !DISubrange(count: 52)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !772, file: !36, line: 875, baseType: !1413, size: 1280, offset: 6592)
!1413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1039, size: 1280, elements: !865)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !772, file: !36, line: 877, baseType: !1415, size: 64, offset: 7872)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !36, line: 877, flags: DIFlagFwdDecl)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !772, file: !36, line: 880, baseType: !1418, size: 1088, offset: 7936)
!1418 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1419, line: 72, baseType: !1420)
!1419 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1419, line: 23, size: 1088, elements: !1421)
!1421 = !{!1422, !1423, !1424, !1425, !1426, !1429, !1430, !1431, !1432, !1459, !1460, !1461}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1420, file: !1419, line: 28, baseType: !341, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1420, file: !1419, line: 38, baseType: !244, size: 64, offset: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1420, file: !1419, line: 40, baseType: !432, size: 64, offset: 128)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1420, file: !1419, line: 43, baseType: !238, size: 320, offset: 192)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1420, file: !1419, line: 44, baseType: !1427, size: 64, offset: 512)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1419, line: 44, flags: DIFlagFwdDecl)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1420, file: !1419, line: 48, baseType: !432, size: 64, offset: 576)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1420, file: !1419, line: 59, baseType: !815, size: 256, offset: 640)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1420, file: !1419, line: 60, baseType: !155, size: 64, offset: 896)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1420, file: !1419, line: 61, baseType: !1433, size: 64, offset: 960)
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1435)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1436, line: 13, size: 1216, elements: !1437)
!1436 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1437 = !{!1438, !1439, !1440, !1441, !1442, !1443, !1444, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1435, file: !1436, line: 14, baseType: !155, size: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1435, file: !1436, line: 15, baseType: !432, size: 64, offset: 64)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1435, file: !1436, line: 17, baseType: !432, size: 64, offset: 128)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1435, file: !1436, line: 17, baseType: !432, size: 64, offset: 192)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1435, file: !1436, line: 18, baseType: !432, size: 64, offset: 256)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1435, file: !1436, line: 18, baseType: !432, size: 64, offset: 320)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1435, file: !1436, line: 19, baseType: !1445, size: 64, offset: 384)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1435, file: !1436, line: 21, baseType: !266, size: 64, offset: 448)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1435, file: !1436, line: 23, baseType: !266, size: 64, offset: 512)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1435, file: !1436, line: 24, baseType: !266, size: 64, offset: 576)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1435, file: !1436, line: 25, baseType: !266, size: 64, offset: 640)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1435, file: !1436, line: 26, baseType: !266, size: 64, offset: 704)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1435, file: !1436, line: 27, baseType: !266, size: 64, offset: 768)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1435, file: !1436, line: 28, baseType: !266, size: 64, offset: 832)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1435, file: !1436, line: 29, baseType: !266, size: 64, offset: 896)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1435, file: !1436, line: 30, baseType: !266, size: 64, offset: 960)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1435, file: !1436, line: 31, baseType: !266, size: 64, offset: 1024)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1435, file: !1436, line: 32, baseType: !266, size: 64, offset: 1088)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1435, file: !1436, line: 33, baseType: !266, size: 64, offset: 1152)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1420, file: !1419, line: 63, baseType: !195, size: 32, offset: 1024)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1420, file: !1419, line: 69, baseType: !213, size: 16, offset: 1056)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1420, file: !1419, line: 70, baseType: !1462, size: 16, offset: 1072)
!1462 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !204, line: 18, baseType: !1463)
!1463 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !206, line: 23, baseType: !952)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !772, file: !36, line: 882, baseType: !432, size: 64, offset: 9024)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !772, file: !36, line: 885, baseType: !175, size: 32, offset: 9088)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !772, file: !36, line: 886, baseType: !1467, size: 64, offset: 9152)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !36, line: 732, flags: DIFlagFwdDecl)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !772, file: !36, line: 901, baseType: !1064, size: 64, offset: 9216)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !772, file: !36, line: 904, baseType: !796, size: 64, offset: 9280)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !772, file: !36, line: 906, baseType: !1472, size: 64, offset: 9344)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !36, line: 906, flags: DIFlagFwdDecl)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !772, file: !36, line: 930, baseType: !195, size: 32, offset: 9408)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !772, file: !36, line: 933, baseType: !195, size: 32, offset: 9440)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !772, file: !36, line: 935, baseType: !1477, size: 64, offset: 9472)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !141, line: 103, size: 64, elements: !1478)
!1478 = !{!1479}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1477, file: !141, line: 104, baseType: !1480, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !141, line: 101, flags: DIFlagFwdDecl)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !772, file: !36, line: 940, baseType: !242, size: 64, offset: 9536)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !772, file: !36, line: 942, baseType: !1484, size: 256, offset: 9600)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1485, line: 98, size: 256, elements: !1486)
!1485 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1486 = !{!1487, !1488, !1489}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1484, file: !1485, line: 99, baseType: !242, size: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1484, file: !1485, line: 100, baseType: !160, size: 128, offset: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1484, file: !1485, line: 101, baseType: !1490, size: 64, offset: 192)
!1490 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1485, line: 21, baseType: !1491)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{null, !1494}
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !769, file: !36, line: 986, baseType: !1496, offset: 10240)
!1496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !432, elements: !884)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !756, file: !36, line: 640, baseType: !1498, size: 64, offset: 192)
!1498 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1365, line: 297, baseType: !1499)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1365, line: 297, size: 64, elements: !1500)
!1500 = !{!1501}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1499, file: !1365, line: 297, baseType: !1502, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1370, line: 19, baseType: !432)
!1503 = !DIDerivedType(tag: DW_TAG_member, scope: !756, file: !36, line: 646, baseType: !1504, size: 64, offset: 256)
!1504 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !756, file: !36, line: 646, size: 64, elements: !1505)
!1505 = !{!1506, !1509}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1504, file: !36, line: 647, baseType: !1507, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1508)
!1508 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !36, line: 542, baseType: !432)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1504, file: !36, line: 648, baseType: !1508, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !756, file: !36, line: 666, baseType: !102, size: 32, offset: 320)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !756, file: !36, line: 667, baseType: !1512, size: 64, offset: 384)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !36, line: 579, size: 320, elements: !1514)
!1514 = !{!1515}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1513, file: !36, line: 580, baseType: !238, size: 320)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !756, file: !36, line: 670, baseType: !706, size: 8, offset: 448)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !756, file: !36, line: 681, baseType: !1518, size: 256, offset: 512)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !756, file: !36, line: 678, size: 256, elements: !1519)
!1519 = !{!1520, !1521}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1518, file: !36, line: 679, baseType: !608, size: 192, align: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1518, file: !36, line: 680, baseType: !432, size: 64, offset: 192)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !756, file: !36, line: 689, baseType: !160, size: 128, offset: 768)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !756, file: !36, line: 691, baseType: !1524, size: 64, offset: 896)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !36, line: 691, flags: DIFlagFwdDecl)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !756, file: !36, line: 694, baseType: !1527, size: 64, offset: 960)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1529)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !749, line: 563, size: 1024, elements: !1530)
!1530 = !{!1531, !1535, !1536, !1540, !1544, !1548, !1549, !1553, !1557, !1561, !1562, !1563, !1567, !1571, !1577, !1581}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1529, file: !749, line: 564, baseType: !1532, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DISubroutineType(types: !1534)
!1534 = !{null, !755}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1529, file: !749, line: 569, baseType: !1532, size: 64, offset: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1529, file: !749, line: 571, baseType: !1537, size: 64, offset: 128)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!102, !755, !432}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1529, file: !749, line: 572, baseType: !1541, size: 64, offset: 192)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{!102, !755}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1529, file: !749, line: 578, baseType: !1545, size: 64, offset: 256)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{!102, !755, !432, !432, !432}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1529, file: !749, line: 580, baseType: !743, size: 64, offset: 320)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1529, file: !749, line: 581, baseType: !1550, size: 64, offset: 384)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DISubroutineType(types: !1552)
!1552 = !{!746, !747, !13}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1529, file: !749, line: 582, baseType: !1554, size: 64, offset: 448)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = !DISubroutineType(types: !1556)
!1556 = !{!746, !747, !432, !432}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1529, file: !749, line: 584, baseType: !1558, size: 64, offset: 512)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{!432, !755}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1529, file: !749, line: 588, baseType: !743, size: 64, offset: 576)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1529, file: !749, line: 591, baseType: !743, size: 64, offset: 640)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1529, file: !749, line: 597, baseType: !1564, size: 64, offset: 704)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = !DISubroutineType(types: !1566)
!1566 = !{!102, !755, !432, !155, !102, !102}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1529, file: !749, line: 603, baseType: !1568, size: 64, offset: 768)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!387, !755}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1529, file: !749, line: 613, baseType: !1572, size: 64, offset: 832)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{!102, !755, !1575}
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !36, line: 717, flags: DIFlagFwdDecl)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1529, file: !749, line: 625, baseType: !1578, size: 64, offset: 896)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{!1575, !755, !432}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1529, file: !749, line: 633, baseType: !1582, size: 64, offset: 960)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!625, !755, !432}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !756, file: !36, line: 697, baseType: !432, size: 64, offset: 1024)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !756, file: !36, line: 699, baseType: !796, size: 64, offset: 1088)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !756, file: !36, line: 700, baseType: !155, size: 64, offset: 1152)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !756, file: !36, line: 711, baseType: !242, size: 64, offset: 1216)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !756, file: !36, line: 717, baseType: !1575, size: 64, offset: 1280)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !756, file: !36, line: 722, baseType: !1591, offset: 1344)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !36, line: 570, elements: !789)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !752, file: !749, line: 515, baseType: !594, size: 32, offset: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !752, file: !749, line: 516, baseType: !432, size: 64, offset: 128)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !752, file: !749, line: 517, baseType: !432, size: 64, offset: 192)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !752, file: !749, line: 518, baseType: !432, size: 64, offset: 256)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !748, file: !749, line: 520, baseType: !35, size: 32, offset: 320)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !748, file: !749, line: 522, baseType: !1598, size: 64, offset: 384)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1370, line: 22, baseType: !1600)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1370, line: 22, size: 64, elements: !1601)
!1601 = !{!1602}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1600, file: !1370, line: 22, baseType: !1603, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1370, line: 15, baseType: !432)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !748, file: !749, line: 524, baseType: !1605, size: 64, offset: 448)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1365, line: 372, baseType: !1607)
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1365, line: 372, size: 64, elements: !1608)
!1608 = !{!1609}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1607, file: !1365, line: 372, baseType: !1610, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1370, line: 16, baseType: !432)
!1611 = !DIDerivedType(tag: DW_TAG_member, scope: !748, file: !749, line: 527, baseType: !1612, size: 64, offset: 512)
!1612 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !748, file: !749, line: 527, size: 64, elements: !1613)
!1613 = !{!1614, !1620}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1612, file: !749, line: 528, baseType: !1615, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1370, line: 21, baseType: !1616)
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1370, line: 21, size: 64, elements: !1617)
!1617 = !{!1618}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1616, file: !1370, line: 21, baseType: !1619, size: 64)
!1619 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1370, line: 14, baseType: !432)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1612, file: !749, line: 529, baseType: !1599, size: 64)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !748, file: !749, line: 534, baseType: !625, size: 64, offset: 576)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !748, file: !749, line: 535, baseType: !625, size: 64, offset: 640)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !748, file: !749, line: 541, baseType: !1624, size: 64, offset: 704)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !748, file: !749, line: 545, baseType: !1626, size: 64, offset: 768)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !748, file: !749, line: 549, baseType: !1628, size: 64, offset: 832)
!1628 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1365, line: 520, baseType: !625)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !736, file: !20, line: 100, baseType: !1630, size: 64, offset: 128)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{!102, !675, !432, !432, !102}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !676, file: !20, line: 134, baseType: !155, size: 64, offset: 960)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !676, file: !20, line: 135, baseType: !102, size: 32, offset: 1024)
!1635 = !DIDerivedType(tag: DW_TAG_member, scope: !676, file: !20, line: 136, baseType: !1636, size: 128, offset: 1088)
!1636 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !676, file: !20, line: 136, size: 128, elements: !1637)
!1637 = !{!1638, !1644}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1636, file: !20, line: 137, baseType: !1639, size: 128)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1640, line: 6, size: 128, elements: !1641)
!1640 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1641 = !{!1642, !1643}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1639, file: !1640, line: 7, baseType: !341, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1639, file: !1640, line: 8, baseType: !341, size: 64, offset: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, scope: !1636, file: !20, line: 138, baseType: !1645)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1636, file: !20, line: 138, elements: !1646)
!1646 = !{!1647, !1649}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1645, file: !20, line: 138, baseType: !1648)
!1648 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1645, file: !20, line: 138, elements: !789)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1645, file: !20, line: 138, baseType: !1650)
!1650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1639, elements: !884)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !672, file: !36, line: 147, baseType: !155, size: 64, offset: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !630, file: !36, line: 161, baseType: !710, size: 128, align: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, scope: !626, file: !36, line: 164, baseType: !1654, size: 32, offset: 384)
!1654 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !626, file: !36, line: 164, size: 32, elements: !1655)
!1655 = !{!1656, !1657}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1654, file: !36, line: 169, baseType: !195, size: 32)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1654, file: !36, line: 177, baseType: !13, size: 32)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !626, file: !36, line: 181, baseType: !195, size: 32, offset: 416)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !65, line: 309, flags: DIFlagFwdDecl)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !619, file: !65, line: 406, baseType: !1662, size: 64, offset: 64)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DISubroutineType(types: !1664)
!1664 = !{!102, !796, !1143}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !619, file: !65, line: 409, baseType: !1666, size: 64, offset: 128)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DISubroutineType(types: !1668)
!1668 = !{!102, !584, !1659}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !619, file: !65, line: 412, baseType: !1670, size: 64, offset: 192)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{!706, !584, !1143}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !619, file: !65, line: 414, baseType: !1674, size: 64, offset: 256)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DISubroutineType(types: !1676)
!1676 = !{null, !1677}
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !1140, line: 1276, size: 448, elements: !1679)
!1679 = !{!1680, !1681, !1682, !1684, !1685, !1686, !1687, !1688}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1678, file: !1140, line: 1277, baseType: !796, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1678, file: !1140, line: 1278, baseType: !584, size: 64, offset: 64)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !1678, file: !1140, line: 1279, baseType: !1683, size: 64, offset: 128)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !1678, file: !1140, line: 1281, baseType: !432, size: 64, offset: 192)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !1678, file: !1140, line: 1282, baseType: !13, size: 32, offset: 256)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !1678, file: !1140, line: 1283, baseType: !13, size: 32, offset: 288)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !1678, file: !1140, line: 1284, baseType: !706, size: 8, offset: 320)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !1678, file: !1140, line: 1285, baseType: !432, size: 64, offset: 384)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !619, file: !65, line: 416, baseType: !1690, size: 64, offset: 320)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{!102, !796, !584, !221, !13, !1693, !1317}
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !619, file: !65, line: 419, baseType: !1695, size: 64, offset: 384)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{!102, !796, !584, !221, !13, !13, !625, !155}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !619, file: !65, line: 424, baseType: !1699, size: 64, offset: 448)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{!1702, !584, !1702}
!1702 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !154, line: 131, baseType: !341)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !619, file: !65, line: 425, baseType: !1704, size: 64, offset: 512)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DISubroutineType(types: !1706)
!1706 = !{null, !1143, !556, !556}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !619, file: !65, line: 426, baseType: !1708, size: 64, offset: 576)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{!706, !1143, !594}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !619, file: !65, line: 427, baseType: !1712, size: 64, offset: 640)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{null, !1143}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !619, file: !65, line: 428, baseType: !1119, size: 64, offset: 704)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !619, file: !65, line: 433, baseType: !1717, size: 64, offset: 768)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{!102, !584, !1143, !1143, !51}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !619, file: !65, line: 435, baseType: !1721, size: 64, offset: 832)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{!102, !1143}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !619, file: !65, line: 436, baseType: !1725, size: 64, offset: 896)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{!706, !1143, !556, !556}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !619, file: !65, line: 438, baseType: !1729, size: 64, offset: 960)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{null, !1143, !1732, !1732}
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !619, file: !65, line: 439, baseType: !1734, size: 64, offset: 1024)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DISubroutineType(types: !1736)
!1736 = !{!102, !584, !625}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !619, file: !65, line: 442, baseType: !1738, size: 64, offset: 1088)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DISubroutineType(types: !1740)
!1740 = !{!102, !1741, !796, !1743}
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !65, line: 66, flags: DIFlagFwdDecl)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !619, file: !65, line: 444, baseType: !1309, size: 64, offset: 1152)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !619, file: !65, line: 445, baseType: !1746, size: 64, offset: 1216)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!102, !1122, !1227}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !585, file: !65, line: 486, baseType: !432, size: 64, offset: 896)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !585, file: !65, line: 487, baseType: !238, size: 320, offset: 960)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !585, file: !65, line: 488, baseType: !1354, size: 32, offset: 1280)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !585, file: !65, line: 489, baseType: !175, size: 32, offset: 1312)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !585, file: !65, line: 490, baseType: !160, size: 128, offset: 1344)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !585, file: !65, line: 491, baseType: !155, size: 64, offset: 1472)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !575, file: !538, line: 180, baseType: !1756, size: 64, offset: 320)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{!544, !796, !478, !574, !412, !221, !556}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !575, file: !538, line: 182, baseType: !1756, size: 64, offset: 384)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !575, file: !538, line: 184, baseType: !1761, size: 64, offset: 448)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{!102, !796, !478, !574, !755}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !563, file: !538, line: 90, baseType: !1765, size: 64, offset: 192)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !563, file: !538, line: 91, baseType: !1767, size: 64, offset: 256)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !528, file: !473, line: 120, baseType: !1769, size: 64, offset: 192)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{!1772, !496}
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1774)
!1774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !59, line: 39, size: 384, elements: !1775)
!1775 = !{!1776, !1777, !1781, !1785, !1791, !1795}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1774, file: !59, line: 40, baseType: !58, size: 32)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1774, file: !59, line: 41, baseType: !1778, size: 64, offset: 64)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{!706}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1774, file: !59, line: 42, baseType: !1782, size: 64, offset: 128)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DISubroutineType(types: !1784)
!1784 = !{!155}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1774, file: !59, line: 43, baseType: !1786, size: 64, offset: 192)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{!1445, !1789}
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !59, line: 19, flags: DIFlagFwdDecl)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1774, file: !59, line: 44, baseType: !1792, size: 64, offset: 256)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DISubroutineType(types: !1794)
!1794 = !{!1445}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1774, file: !59, line: 45, baseType: !1796, size: 64, offset: 320)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DISubroutineType(types: !1798)
!1798 = !{null, !155}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !528, file: !473, line: 121, baseType: !1800, size: 64, offset: 256)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DISubroutineType(types: !1802)
!1802 = !{!1445, !496}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !528, file: !473, line: 122, baseType: !1804, size: 64, offset: 320)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = !DISubroutineType(types: !1806)
!1806 = !{null, !496, !1807, !1808}
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !472, file: !473, line: 70, baseType: !1810, size: 64, offset: 384)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1812, line: 190, size: 1152, elements: !1813)
!1812 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1813 = !{!1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1905, !1906, !1907, !1908, !1909, !1912}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1811, file: !1812, line: 191, baseType: !195, size: 32)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1811, file: !1812, line: 192, baseType: !195, size: 32, offset: 32)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1811, file: !1812, line: 202, baseType: !1810, size: 64, offset: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1811, file: !1812, line: 203, baseType: !387, size: 64, offset: 128)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1811, file: !1812, line: 205, baseType: !608, size: 192, align: 64, offset: 192)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1811, file: !1812, line: 207, baseType: !1445, size: 64, offset: 384)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1811, file: !1812, line: 208, baseType: !13, size: 32, offset: 448)
!1821 = !DIDerivedType(tag: DW_TAG_member, scope: !1811, file: !1812, line: 209, baseType: !1822, size: 256, offset: 512)
!1822 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1811, file: !1812, line: 209, size: 256, elements: !1823)
!1823 = !{!1824, !1833, !1837}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1822, file: !1812, line: 210, baseType: !1825, size: 256)
!1825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1812, line: 153, size: 256, elements: !1826)
!1826 = !{!1827, !1828, !1829, !1832}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1825, file: !1812, line: 154, baseType: !432, size: 64)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1825, file: !1812, line: 156, baseType: !604, size: 64, offset: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1825, file: !1812, line: 162, baseType: !1830, size: 64, offset: 128)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1812, line: 162, flags: DIFlagFwdDecl)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1825, file: !1812, line: 167, baseType: !432, size: 64, offset: 192)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1822, file: !1812, line: 211, baseType: !1834, size: 64)
!1834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1812, line: 170, size: 64, elements: !1835)
!1835 = !{!1836}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1834, file: !1812, line: 171, baseType: !1810, size: 64)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1822, file: !1812, line: 212, baseType: !1838, size: 256)
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1812, line: 174, size: 256, elements: !1839)
!1839 = !{!1840, !1900, !1903, !1904}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1838, file: !1812, line: 175, baseType: !1841, size: 64)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1843)
!1843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1812, line: 271, size: 768, elements: !1844)
!1844 = !{!1845, !1865, !1869, !1873, !1877, !1881, !1885, !1889, !1890, !1891, !1892, !1896}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1843, file: !1812, line: 276, baseType: !1846, size: 64)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{!102, !1849}
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1812, line: 251, size: 1216, elements: !1851)
!1851 = !{!1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1850, file: !1812, line: 253, baseType: !1810, size: 64)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1850, file: !1812, line: 254, baseType: !796, size: 64, offset: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1850, file: !1812, line: 255, baseType: !1326, size: 64, offset: 128)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1850, file: !1812, line: 256, baseType: !155, size: 64, offset: 192)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1850, file: !1812, line: 259, baseType: !815, size: 256, offset: 256)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1850, file: !1812, line: 260, baseType: !815, size: 256, offset: 512)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1850, file: !1812, line: 261, baseType: !102, size: 32, offset: 768)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1850, file: !1812, line: 262, baseType: !160, size: 128, offset: 832)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1850, file: !1812, line: 263, baseType: !412, size: 64, offset: 960)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1850, file: !1812, line: 265, baseType: !556, size: 64, offset: 1024)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1850, file: !1812, line: 266, baseType: !706, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1850, file: !1812, line: 267, baseType: !706, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1850, file: !1812, line: 268, baseType: !1527, size: 64, offset: 1152)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1843, file: !1812, line: 277, baseType: !1866, size: 64, offset: 64)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{null, !1849}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1843, file: !1812, line: 290, baseType: !1870, size: 64, offset: 128)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{!102, !1326, !155}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1843, file: !1812, line: 292, baseType: !1874, size: 64, offset: 192)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DISubroutineType(types: !1876)
!1876 = !{!155, !1326, !1113}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1843, file: !1812, line: 293, baseType: !1878, size: 64, offset: 256)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = !DISubroutineType(types: !1880)
!1880 = !{!155, !1326, !155, !1113}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1843, file: !1812, line: 294, baseType: !1882, size: 64, offset: 320)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DISubroutineType(types: !1884)
!1884 = !{null, !1326, !155}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1843, file: !1812, line: 296, baseType: !1886, size: 64, offset: 384)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = !DISubroutineType(types: !1888)
!1888 = !{!544, !1849, !412, !556, !221}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1843, file: !1812, line: 306, baseType: !556, size: 64, offset: 448)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1843, file: !1812, line: 313, baseType: !706, size: 8, offset: 512)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1843, file: !1812, line: 314, baseType: !1886, size: 64, offset: 576)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1843, file: !1812, line: 317, baseType: !1893, size: 64, offset: 640)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DISubroutineType(types: !1895)
!1895 = !{!1253, !1849, !1255}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1843, file: !1812, line: 320, baseType: !1897, size: 64, offset: 704)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DISubroutineType(types: !1899)
!1899 = !{!102, !1849, !755}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1838, file: !1812, line: 176, baseType: !1901, size: 64, offset: 64)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1812, line: 35, flags: DIFlagFwdDecl)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1838, file: !1812, line: 177, baseType: !221, size: 64, offset: 128)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1838, file: !1812, line: 178, baseType: !1810, size: 64, offset: 192)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1811, file: !1812, line: 215, baseType: !155, size: 64, offset: 768)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1811, file: !1812, line: 221, baseType: !341, size: 64, offset: 832)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1811, file: !1812, line: 223, baseType: !215, size: 16, offset: 896)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1811, file: !1812, line: 224, baseType: !271, size: 16, offset: 912)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1811, file: !1812, line: 225, baseType: !1910, size: 64, offset: 960)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1812, line: 36, flags: DIFlagFwdDecl)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1811, file: !1812, line: 227, baseType: !710, size: 128, align: 64, offset: 1024)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !472, file: !473, line: 71, baseType: !1914, size: 32, offset: 448)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1915, line: 19, size: 32, elements: !1916)
!1915 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1916 = !{!1917}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1914, file: !1915, line: 20, baseType: !853, size: 32)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !472, file: !473, line: 73, baseType: !13, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !472, file: !473, line: 74, baseType: !13, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !472, file: !473, line: 75, baseType: !13, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !472, file: !473, line: 76, baseType: !13, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !472, file: !473, line: 77, baseType: !13, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !469, file: !12, line: 47, baseType: !459, size: 64, offset: 512)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !469, file: !12, line: 48, baseType: !478, size: 64, offset: 576)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !469, file: !12, line: 49, baseType: !1926, size: 64, offset: 640)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !12, line: 49, flags: DIFlagFwdDecl)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !469, file: !12, line: 50, baseType: !1929, size: 64, offset: 704)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !460, file: !12, line: 418, baseType: !1931, size: 64, offset: 1408)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !12, line: 53, size: 448, elements: !1933)
!1933 = !{!1934, !1935, !1940, !1944, !1948, !1952}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1932, file: !12, line: 54, baseType: !548, size: 128)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1932, file: !12, line: 55, baseType: !1936, size: 64, offset: 128)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{!544, !1931, !1939, !412}
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1932, file: !12, line: 57, baseType: !1941, size: 64, offset: 192)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{!544, !1931, !1939, !387, !556}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1932, file: !12, line: 59, baseType: !1945, size: 64, offset: 256)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{null, !459, !387}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1932, file: !12, line: 60, baseType: !1949, size: 64, offset: 320)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DISubroutineType(types: !1951)
!1951 = !{!102, !459}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1932, file: !12, line: 61, baseType: !1953, size: 64, offset: 384)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{null, !459}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !460, file: !12, line: 419, baseType: !387, size: 64, offset: 1472)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !460, file: !12, line: 420, baseType: !387, size: 64, offset: 1536)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !460, file: !12, line: 421, baseType: !478, size: 64, offset: 1600)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !460, file: !12, line: 424, baseType: !1960, size: 64, offset: 1664)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1962)
!1962 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !12, line: 424, flags: DIFlagFwdDecl)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !460, file: !12, line: 425, baseType: !1964, size: 64, offset: 1728)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !926)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !460, file: !12, line: 426, baseType: !13, size: 32, offset: 1792)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !460, file: !12, line: 435, baseType: !815, size: 256, offset: 1856)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !460, file: !12, line: 437, baseType: !1969, size: 64, offset: 2112)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1971, line: 69, size: 320, elements: !1972)
!1971 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1972 = !{!1973, !1974, !1975, !1992, !1994, !1998, !1999}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1970, file: !1971, line: 70, baseType: !387, size: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1970, file: !1971, line: 71, baseType: !459, size: 64, offset: 64)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1970, file: !1971, line: 72, baseType: !1976, size: 64, offset: 128)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1978)
!1978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1971, line: 47, size: 256, elements: !1979)
!1979 = !{!1980, !1981, !1987, !1991}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1978, file: !1971, line: 49, baseType: !13, size: 32)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1978, file: !1971, line: 51, baseType: !1982, size: 64, offset: 64)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{!102, !387, !1985}
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1970)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1978, file: !1971, line: 53, baseType: !1988, size: 64, offset: 128)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DISubroutineType(types: !1990)
!1990 = !{!102, !412, !1985}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1978, file: !1971, line: 55, baseType: !1796, size: 64, offset: 192)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1970, file: !1971, line: 73, baseType: !1993, size: 16, offset: 192)
!1993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !213)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1970, file: !1971, line: 74, baseType: !1995, size: 8, offset: 208)
!1995 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !204, line: 16, baseType: !1996)
!1996 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !206, line: 20, baseType: !1997)
!1997 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1970, file: !1971, line: 75, baseType: !203, size: 8, offset: 216)
!1999 = !DIDerivedType(tag: DW_TAG_member, scope: !1970, file: !1971, line: 76, baseType: !2000, size: 64, offset: 256)
!2000 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1970, file: !1971, line: 76, size: 64, elements: !2001)
!2001 = !{!2002, !2003, !2010}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2000, file: !1971, line: 77, baseType: !155, size: 64)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2000, file: !1971, line: 78, baseType: !2004, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2006)
!2006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1971, line: 86, size: 128, elements: !2007)
!2007 = !{!2008, !2009}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2006, file: !1971, line: 87, baseType: !13, size: 32)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2006, file: !1971, line: 88, baseType: !412, size: 64, offset: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2000, file: !1971, line: 79, baseType: !2011, size: 64)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2013)
!2013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1971, line: 92, size: 256, elements: !2014)
!2014 = !{!2015, !2016, !2017, !2019, !2020}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2013, file: !1971, line: 94, baseType: !13, size: 32)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2013, file: !1971, line: 95, baseType: !13, size: 32, offset: 32)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2013, file: !1971, line: 96, baseType: !2018, size: 64, offset: 64)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2013, file: !1971, line: 97, baseType: !1976, size: 64, offset: 128)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2013, file: !1971, line: 98, baseType: !155, size: 64, offset: 192)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !460, file: !12, line: 438, baseType: !13, size: 32, offset: 2176)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !460, file: !12, line: 441, baseType: !13, size: 32, offset: 2208)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !460, file: !12, line: 442, baseType: !1960, size: 64, offset: 2240)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !460, file: !12, line: 443, baseType: !1964, size: 64, offset: 2304)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !460, file: !12, line: 444, baseType: !706, size: 8, offset: 2368)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !460, file: !12, line: 451, baseType: !706, size: 8, offset: 2376)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !460, file: !12, line: 454, baseType: !13, size: 32, offset: 2400)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !460, file: !12, line: 455, baseType: !2029, size: 64, offset: 2432)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2031, line: 23, size: 96, elements: !2032)
!2031 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2032 = !{!2033, !2034, !2035}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2030, file: !2031, line: 24, baseType: !102, size: 32)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2030, file: !2031, line: 24, baseType: !102, size: 32, offset: 32)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2030, file: !2031, line: 24, baseType: !102, size: 32, offset: 64)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !460, file: !12, line: 458, baseType: !2037, size: 64, offset: 2496)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{!102}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !460, file: !12, line: 460, baseType: !2041, size: 4032, align: 512, offset: 2560)
!2041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2042, size: 4032, elements: !2058)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !12, line: 362, size: 576, elements: !2043)
!2043 = !{!2044, !2045, !2046}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2042, file: !12, line: 363, baseType: !155, size: 64)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2042, file: !12, line: 364, baseType: !13, size: 32, offset: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2042, file: !12, line: 367, baseType: !2047, size: 448, offset: 128)
!2047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !12, line: 319, size: 448, elements: !2048)
!2048 = !{!2049, !2050}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2047, file: !12, line: 320, baseType: !459, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2047, file: !12, line: 321, baseType: !2051, size: 384, offset: 64)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2052, line: 40, size: 384, elements: !2053)
!2052 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2053 = !{!2054}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2051, file: !2052, line: 41, baseType: !2055, size: 384, align: 64)
!2055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !608, size: 384, align: 64, elements: !2056)
!2056 = !{!2057}
!2057 = !DISubrange(count: 2)
!2058 = !{!2059}
!2059 = !DISubrange(count: 7)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !460, file: !12, line: 463, baseType: !2061, size: 192, offset: 6592)
!2061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2062, line: 8, size: 192, elements: !2063)
!2062 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2063 = !{!2064, !2065, !2067}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2061, file: !2062, line: 10, baseType: !13, size: 32)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2061, file: !2062, line: 11, baseType: !2066, size: 64, offset: 64)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2061, file: !2062, line: 12, baseType: !2068, size: 64, offset: 128)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2070, line: 59, size: 48, elements: !2071)
!2070 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2071 = !{!2072, !2073, !2074, !2075, !2076, !2077}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2069, file: !2070, line: 60, baseType: !1462, size: 16)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2069, file: !2070, line: 61, baseType: !1462, size: 16, offset: 16)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2069, file: !2070, line: 63, baseType: !13, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2069, file: !2070, line: 64, baseType: !13, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2069, file: !2070, line: 65, baseType: !13, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2069, file: !2070, line: 66, baseType: !13, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !460, file: !12, line: 465, baseType: !432, size: 64, offset: 6784)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !460, file: !12, line: 469, baseType: !13, size: 32, offset: 6848)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !460, file: !12, line: 470, baseType: !160, size: 128, offset: 6912)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !460, file: !12, line: 471, baseType: !2082, size: 64, offset: 7040)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2084, line: 33, size: 96, elements: !2085)
!2084 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2085 = !{!2086, !2087, !2088, !2089}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2083, file: !2084, line: 37, baseType: !102, size: 32)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2083, file: !2084, line: 43, baseType: !102, size: 32, offset: 32)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2083, file: !2084, line: 45, baseType: !215, size: 16, offset: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2083, file: !2084, line: 47, baseType: !215, size: 16, offset: 80)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !460, file: !12, line: 476, baseType: !2091, size: 64, offset: 7104)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !12, line: 378, size: 256, elements: !2093)
!2093 = !{!2094, !2110, !2111, !2112}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2092, file: !12, line: 379, baseType: !2095, size: 64)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2097, line: 204, baseType: !2098)
!2097 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2097, line: 197, size: 192, elements: !2099)
!2099 = !{!2100, !2102, !2103, !2104, !2106, !2108}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2098, file: !2097, line: 198, baseType: !2101, size: 32)
!2101 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2097, line: 21, baseType: !338)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2098, file: !2097, line: 199, baseType: !207, size: 8, offset: 32)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2098, file: !2097, line: 200, baseType: !207, size: 8, offset: 40)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2098, file: !2097, line: 201, baseType: !2105, size: 16, offset: 48)
!2105 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2097, line: 17, baseType: !214)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2098, file: !2097, line: 202, baseType: !2107, size: 64, offset: 64)
!2107 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2097, line: 16, baseType: !342)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2098, file: !2097, line: 203, baseType: !2109, size: 64, offset: 128)
!2109 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2097, line: 22, baseType: !342)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2092, file: !12, line: 380, baseType: !13, size: 32, offset: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2092, file: !12, line: 381, baseType: !412, size: 64, offset: 128)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2092, file: !12, line: 382, baseType: !412, size: 64, offset: 192)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !460, file: !12, line: 477, baseType: !2092, size: 256, offset: 7168)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !460, file: !12, line: 480, baseType: !2115, size: 64, offset: 7424)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !12, line: 480, flags: DIFlagFwdDecl)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !460, file: !12, line: 483, baseType: !2118, size: 64, offset: 7488)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !12, line: 483, flags: DIFlagFwdDecl)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !460, file: !12, line: 488, baseType: !412, size: 64, offset: 7552)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !460, file: !12, line: 492, baseType: !155, size: 64, offset: 7616)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !460, file: !12, line: 493, baseType: !13, size: 32, offset: 7680)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !460, file: !12, line: 495, baseType: !155, size: 64, offset: 7744)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !460, file: !12, line: 496, baseType: !13, size: 32, offset: 7808)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !460, file: !12, line: 499, baseType: !13, size: 32, offset: 7840)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !460, file: !12, line: 500, baseType: !2127, size: 64, offset: 7872)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2129, line: 45, baseType: !2130)
!2129 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !460, file: !12, line: 503, baseType: !13, size: 32, offset: 7936)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !460, file: !12, line: 504, baseType: !2133, size: 64, offset: 8000)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2136, line: 96, size: 192, elements: !2137)
!2136 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2137 = !{!2138, !2139, !2193, !2196}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2135, file: !2136, line: 97, baseType: !13, size: 32)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2135, file: !2136, line: 98, baseType: !2140, size: 64, offset: 64)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2136, line: 24, size: 3072, elements: !2142)
!2142 = !{!2143, !2145, !2146, !2147, !2148, !2162, !2163, !2164, !2165, !2177, !2178, !2179, !2190, !2191, !2192}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2141, file: !2136, line: 26, baseType: !2144, size: 128)
!2144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 128, elements: !2056)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2141, file: !2136, line: 27, baseType: !2144, size: 128, offset: 128)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2141, file: !2136, line: 28, baseType: !102, size: 32, offset: 256)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2141, file: !2136, line: 31, baseType: !175, size: 32, align: 512, offset: 512)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2141, file: !2136, line: 32, baseType: !2149, size: 960, offset: 576)
!2149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2150, line: 206, size: 960, elements: !2151)
!2150 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2151 = !{!2152, !2153, !2156, !2158, !2159, !2161}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2149, file: !2150, line: 207, baseType: !713, size: 64)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2149, file: !2150, line: 208, baseType: !2154, size: 256, offset: 64)
!2154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2155, size: 256, elements: !865)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2149, file: !2150, line: 209, baseType: !2157, size: 256, offset: 320)
!2157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !432, size: 256, elements: !865)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2149, file: !2150, line: 213, baseType: !266, size: 64, offset: 576)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2149, file: !2150, line: 215, baseType: !2160, size: 256, offset: 640)
!2160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 256, elements: !865)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2149, file: !2150, line: 216, baseType: !203, size: 8, offset: 896)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2141, file: !2136, line: 33, baseType: !432, size: 64, offset: 1536)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2141, file: !2136, line: 34, baseType: !432, size: 64, offset: 1600)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2141, file: !2136, line: 35, baseType: !706, size: 8, offset: 1664)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2141, file: !2136, line: 36, baseType: !2166, size: 320, offset: 1728)
!2166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2167, line: 11, size: 320, elements: !2168)
!2167 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2168 = !{!2169, !2170, !2171, !2176}
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2166, file: !2167, line: 16, baseType: !230, size: 128)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2166, file: !2167, line: 17, baseType: !432, size: 64, offset: 128)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2166, file: !2167, line: 18, baseType: !2172, size: 64, offset: 192)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{null, !2175}
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2166, file: !2167, line: 19, baseType: !337, size: 32, offset: 256)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2141, file: !2136, line: 37, baseType: !1484, size: 256, offset: 2048)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2141, file: !2136, line: 38, baseType: !710, size: 128, align: 64, offset: 2304)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2141, file: !2136, line: 39, baseType: !2180, size: 64, offset: 2432)
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2136, line: 49, size: 768, elements: !2182)
!2182 = !{!2183, !2184, !2185, !2186, !2187, !2188, !2189}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2181, file: !2136, line: 50, baseType: !175, size: 32)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2181, file: !2136, line: 51, baseType: !2157, size: 256, offset: 64)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2181, file: !2136, line: 53, baseType: !2157, size: 256, offset: 320)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2181, file: !2136, line: 54, baseType: !432, size: 64, offset: 576)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2181, file: !2136, line: 55, baseType: !2180, size: 64, offset: 640)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2181, file: !2136, line: 56, baseType: !102, size: 32, offset: 704)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2181, file: !2136, line: 57, baseType: !102, size: 32, offset: 736)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2141, file: !2136, line: 40, baseType: !432, size: 64, offset: 2496)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2141, file: !2136, line: 42, baseType: !102, size: 32, offset: 2560)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2141, file: !2136, line: 43, baseType: !2134, size: 64, offset: 2624)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2135, file: !2136, line: 99, baseType: !2194, offset: 128)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2195, line: 211, elements: !789)
!2195 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2135, file: !2136, line: 100, baseType: !2197, size: 64, offset: 128)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2136, line: 63, size: 3008, elements: !2199)
!2199 = !{!2200, !2201, !2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2231}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2198, file: !2136, line: 64, baseType: !2180, size: 64)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2198, file: !2136, line: 65, baseType: !2202, size: 192, offset: 64)
!2202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2180, size: 192, elements: !513)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2198, file: !2136, line: 67, baseType: !102, size: 32, offset: 256)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2198, file: !2136, line: 68, baseType: !815, size: 256, offset: 320)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2198, file: !2136, line: 69, baseType: !175, size: 32, offset: 576)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2198, file: !2136, line: 70, baseType: !815, size: 256, offset: 640)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2198, file: !2136, line: 71, baseType: !432, size: 64, offset: 896)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2198, file: !2136, line: 72, baseType: !432, size: 64, offset: 960)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2198, file: !2136, line: 73, baseType: !432, size: 64, offset: 1024)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2198, file: !2136, line: 74, baseType: !432, size: 64, offset: 1088)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2198, file: !2136, line: 75, baseType: !432, size: 64, offset: 1152)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2198, file: !2136, line: 76, baseType: !432, size: 64, offset: 1216)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2198, file: !2136, line: 77, baseType: !432, size: 64, offset: 1280)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2198, file: !2136, line: 78, baseType: !432, size: 64, offset: 1344)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2198, file: !2136, line: 79, baseType: !706, size: 8, offset: 1408)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2198, file: !2136, line: 80, baseType: !432, size: 64, offset: 1472)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2198, file: !2136, line: 81, baseType: !815, size: 256, offset: 1536)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2198, file: !2136, line: 82, baseType: !720, size: 256, offset: 1792)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2198, file: !2136, line: 84, baseType: !195, size: 32, offset: 2048)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2198, file: !2136, line: 87, baseType: !432, size: 64, offset: 2112)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2198, file: !2136, line: 88, baseType: !432, size: 64, offset: 2176)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2198, file: !2136, line: 89, baseType: !2223, size: 704, offset: 2240)
!2223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1485, line: 111, size: 704, elements: !2224)
!2224 = !{!2225, !2226, !2227, !2230}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2223, file: !1485, line: 112, baseType: !1484, size: 256)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2223, file: !1485, line: 113, baseType: !2166, size: 320, offset: 256)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2223, file: !1485, line: 116, baseType: !2228, size: 64, offset: 576)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1485, line: 18, flags: DIFlagFwdDecl)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2223, file: !1485, line: 117, baseType: !102, size: 32, offset: 640)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2198, file: !2136, line: 90, baseType: !2134, size: 64, offset: 2944)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !460, file: !12, line: 515, baseType: !2233, size: 64, offset: 8064)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2235, line: 117, size: 128, elements: !2236)
!2235 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2236 = !{!2237, !2238, !2239}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2234, file: !2235, line: 118, baseType: !926, size: 32)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2234, file: !2235, line: 119, baseType: !926, size: 32, offset: 32)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2234, file: !2235, line: 120, baseType: !266, size: 64, offset: 64)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !460, file: !12, line: 516, baseType: !13, size: 32, offset: 8128)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !460, file: !12, line: 519, baseType: !13, size: 32, offset: 8160)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !460, file: !12, line: 520, baseType: !2243, size: 64, offset: 8192)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !460, file: !12, line: 523, baseType: !2245, size: 64, offset: 8256)
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !12, line: 523, flags: DIFlagFwdDecl)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !460, file: !12, line: 524, baseType: !13, size: 32, offset: 8320)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !460, file: !12, line: 525, baseType: !2250, size: 64, offset: 8384)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !12, line: 525, flags: DIFlagFwdDecl)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !460, file: !12, line: 526, baseType: !13, size: 32, offset: 8448)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !460, file: !12, line: 533, baseType: !155, size: 64, offset: 8512)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !460, file: !12, line: 534, baseType: !13, size: 32, offset: 8576)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !460, file: !12, line: 535, baseType: !2257, size: 64, offset: 8640)
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !460, file: !12, line: 536, baseType: !13, size: 32, offset: 8704)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !460, file: !12, line: 539, baseType: !102, size: 32, offset: 8736)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !460, file: !12, line: 540, baseType: !2261, size: 64, offset: 8768)
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!2262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2263, line: 32, size: 64, elements: !2264)
!2263 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2264 = !{!2265, !2266}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2262, file: !2263, line: 33, baseType: !926, size: 32)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2262, file: !2263, line: 34, baseType: !926, size: 32, offset: 32)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !460, file: !12, line: 563, baseType: !160, size: 128, offset: 8832)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !460, file: !12, line: 565, baseType: !160, size: 128, offset: 8960)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !460, file: !12, line: 568, baseType: !2270, size: 64, offset: 9088)
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2271 = !DISubroutineType(types: !2272)
!2272 = !{null}
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !460, file: !12, line: 570, baseType: !195, size: 32, offset: 9152)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !436, file: !65, line: 2382, baseType: !435, size: 64, offset: 448)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !436, file: !65, line: 2383, baseType: !862, size: 64, offset: 512)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !436, file: !65, line: 2385, baseType: !2277, offset: 576)
!2277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2195, line: 206, elements: !789)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !436, file: !65, line: 2386, baseType: !2277, offset: 576)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !436, file: !65, line: 2387, baseType: !2277, offset: 576)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !436, file: !65, line: 2388, baseType: !2281, offset: 576)
!2281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2277, elements: !513)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !436, file: !65, line: 2390, baseType: !2277, offset: 576)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !436, file: !65, line: 2391, baseType: !2277, offset: 576)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !436, file: !65, line: 2392, baseType: !2277, offset: 576)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !436, file: !65, line: 2393, baseType: !2277, offset: 576)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !424, file: !65, line: 1197, baseType: !2287, size: 64, offset: 384)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2289)
!2289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !65, line: 2057, size: 1664, elements: !2290)
!2290 = !{!2291, !2295, !2299, !2300, !2304, !2308, !2312, !2313, !2314, !2318, !2322, !2326, !2327, !2328, !2334, !2338, !2339, !2343, !2344, !2345, !2346, !2350, !2354, !2401, !2416, !2417}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2289, file: !65, line: 2058, baseType: !2292, size: 64)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = !DISubroutineType(types: !2294)
!2294 = !{!348, !423}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2289, file: !65, line: 2059, baseType: !2296, size: 64, offset: 64)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = !DISubroutineType(types: !2298)
!2298 = !{null, !348}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2289, file: !65, line: 2060, baseType: !2296, size: 64, offset: 128)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2289, file: !65, line: 2062, baseType: !2301, size: 64, offset: 192)
!2301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2302, size: 64)
!2302 = !DISubroutineType(types: !2303)
!2303 = !{null, !348, !102}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2289, file: !65, line: 2063, baseType: !2305, size: 64, offset: 256)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{!102, !348, !1659}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2289, file: !65, line: 2064, baseType: !2309, size: 64, offset: 320)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DISubroutineType(types: !2311)
!2311 = !{!102, !348}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2289, file: !65, line: 2065, baseType: !2296, size: 64, offset: 384)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2289, file: !65, line: 2066, baseType: !455, size: 64, offset: 448)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2289, file: !65, line: 2067, baseType: !2315, size: 64, offset: 512)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{!102, !423, !102}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2289, file: !65, line: 2068, baseType: !2319, size: 64, offset: 576)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!102, !423, !64}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2289, file: !65, line: 2069, baseType: !2323, size: 64, offset: 640)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = !DISubroutineType(types: !2325)
!2325 = !{!102, !423}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2289, file: !65, line: 2070, baseType: !2319, size: 64, offset: 704)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2289, file: !65, line: 2071, baseType: !2323, size: 64, offset: 768)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2289, file: !65, line: 2072, baseType: !2329, size: 64, offset: 832)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{!102, !303, !2332}
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !65, line: 62, flags: DIFlagFwdDecl)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2289, file: !65, line: 2073, baseType: !2335, size: 64, offset: 896)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{!102, !423, !2066, !412}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2289, file: !65, line: 2074, baseType: !455, size: 64, offset: 960)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2289, file: !65, line: 2076, baseType: !2340, size: 64, offset: 1024)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = !DISubroutineType(types: !2342)
!2342 = !{!102, !1326, !303}
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2289, file: !65, line: 2077, baseType: !2340, size: 64, offset: 1088)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2289, file: !65, line: 2078, baseType: !2340, size: 64, offset: 1152)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2289, file: !65, line: 2079, baseType: !2340, size: 64, offset: 1216)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2289, file: !65, line: 2081, baseType: !2347, size: 64, offset: 1280)
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2348, size: 64)
!2348 = !DISubroutineType(types: !2349)
!2349 = !{!544, !423, !102, !412, !556, !221}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2289, file: !65, line: 2082, baseType: !2351, size: 64, offset: 1344)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = !DISubroutineType(types: !2353)
!2353 = !{!544, !423, !102, !387, !556, !221}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2289, file: !65, line: 2083, baseType: !2355, size: 64, offset: 1408)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DISubroutineType(types: !2357)
!2357 = !{!2358, !348}
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !70, line: 296, size: 1664, elements: !2361)
!2361 = !{!2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2386, !2387, !2388}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2360, file: !70, line: 297, baseType: !230, size: 128)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2360, file: !70, line: 298, baseType: !160, size: 128, offset: 128)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2360, file: !70, line: 299, baseType: !160, size: 128, offset: 256)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2360, file: !70, line: 300, baseType: !160, size: 128, offset: 384)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2360, file: !70, line: 301, baseType: !815, size: 256, offset: 512)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2360, file: !70, line: 302, baseType: !175, size: 32, offset: 768)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2360, file: !70, line: 303, baseType: !195, size: 32, offset: 800)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2360, file: !70, line: 304, baseType: !423, size: 64, offset: 832)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2360, file: !70, line: 305, baseType: !2371, size: 64, offset: 896)
!2371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !70, line: 68, size: 64, elements: !2372)
!2372 = !{!2373, !2385}
!2373 = !DIDerivedType(tag: DW_TAG_member, scope: !2371, file: !70, line: 69, baseType: !2374, size: 32)
!2374 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2371, file: !70, line: 69, size: 32, elements: !2375)
!2375 = !{!2376, !2377, !2378}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2374, file: !70, line: 70, baseType: !274, size: 32)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2374, file: !70, line: 71, baseType: !283, size: 32)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2374, file: !70, line: 72, baseType: !2379, size: 32)
!2379 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2380, line: 24, baseType: !2381)
!2380 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2381 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2380, line: 22, size: 32, elements: !2382)
!2382 = !{!2383}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2381, file: !2380, line: 23, baseType: !2384, size: 32)
!2384 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2380, line: 20, baseType: !280)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2371, file: !70, line: 74, baseType: !69, size: 32, offset: 32)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2360, file: !70, line: 306, baseType: !221, size: 64, offset: 960)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2360, file: !70, line: 307, baseType: !432, size: 64, offset: 1024)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2360, file: !70, line: 308, baseType: !2389, size: 576, offset: 1088)
!2389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !70, line: 205, size: 576, elements: !2390)
!2390 = !{!2391, !2393, !2394, !2395, !2396, !2397, !2398, !2399, !2400}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2389, file: !70, line: 206, baseType: !2392, size: 64)
!2392 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !70, line: 66, baseType: !224)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2389, file: !70, line: 207, baseType: !2392, size: 64, offset: 64)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2389, file: !70, line: 208, baseType: !2392, size: 64, offset: 128)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2389, file: !70, line: 209, baseType: !2392, size: 64, offset: 192)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2389, file: !70, line: 210, baseType: !2392, size: 64, offset: 256)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2389, file: !70, line: 211, baseType: !2392, size: 64, offset: 320)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2389, file: !70, line: 212, baseType: !2392, size: 64, offset: 384)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2389, file: !70, line: 213, baseType: !264, size: 64, offset: 448)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2389, file: !70, line: 214, baseType: !264, size: 64, offset: 512)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2289, file: !65, line: 2085, baseType: !2402, size: 64, offset: 1472)
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2403, size: 64)
!2403 = !DISubroutineType(types: !2404)
!2404 = !{!266, !423, !2405}
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2407, line: 15, size: 256, elements: !2408)
!2407 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2408 = !{!2409, !2410, !2411, !2412, !2413}
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2406, file: !2407, line: 16, baseType: !594, size: 32)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2406, file: !2407, line: 19, baseType: !102, size: 32, offset: 32)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2406, file: !2407, line: 26, baseType: !432, size: 64, offset: 64)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2406, file: !2407, line: 33, baseType: !432, size: 64, offset: 128)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2406, file: !2407, line: 36, baseType: !2414, size: 64, offset: 192)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !36, line: 33, flags: DIFlagFwdDecl)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2289, file: !65, line: 2087, baseType: !2402, size: 64, offset: 1536)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2289, file: !65, line: 2089, baseType: !455, size: 64, offset: 1600)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !424, file: !65, line: 1198, baseType: !2419, size: 64, offset: 448)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2421)
!2421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !70, line: 324, size: 704, elements: !2422)
!2422 = !{!2423, !2427, !2431, !2435, !2436, !2437, !2438, !2439, !2444, !2449, !2453}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2421, file: !70, line: 325, baseType: !2424, size: 64)
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = !DISubroutineType(types: !2426)
!2426 = !{!102, !2359}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2421, file: !70, line: 326, baseType: !2428, size: 64, offset: 64)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{!2359, !423, !102}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2421, file: !70, line: 327, baseType: !2432, size: 64, offset: 128)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = !DISubroutineType(types: !2434)
!2434 = !{null, !2359}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2421, file: !70, line: 328, baseType: !2424, size: 64, offset: 192)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2421, file: !70, line: 329, baseType: !2424, size: 64, offset: 256)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2421, file: !70, line: 330, baseType: !2424, size: 64, offset: 320)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2421, file: !70, line: 331, baseType: !2315, size: 64, offset: 384)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2421, file: !70, line: 334, baseType: !2440, size: 64, offset: 448)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{!2443, !348}
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2421, file: !70, line: 335, baseType: !2445, size: 64, offset: 512)
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = !DISubroutineType(types: !2447)
!2447 = !{!102, !348, !2448}
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2421, file: !70, line: 337, baseType: !2450, size: 64, offset: 576)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{!102, !348, !2443}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2421, file: !70, line: 339, baseType: !2454, size: 64, offset: 640)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{!102, !423, !2457}
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !424, file: !65, line: 1199, baseType: !2459, size: 64, offset: 512)
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2460 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2461)
!2461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !70, line: 430, size: 704, elements: !2462)
!2462 = !{!2463, !2469, !2470, !2474, !2475, !2476, !2491, !2514, !2518, !2519, !2542}
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2461, file: !70, line: 431, baseType: !2464, size: 64)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{!102, !423, !102, !102, !2467}
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1093)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2461, file: !70, line: 432, baseType: !2315, size: 64, offset: 64)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2461, file: !70, line: 433, baseType: !2471, size: 64, offset: 128)
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2472 = !DISubroutineType(types: !2473)
!2473 = !{!102, !423, !13}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2461, file: !70, line: 434, baseType: !2471, size: 64, offset: 192)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2461, file: !70, line: 435, baseType: !2315, size: 64, offset: 256)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2461, file: !70, line: 436, baseType: !2477, size: 64, offset: 320)
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{!102, !423, !102, !2480}
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !70, line: 417, size: 256, elements: !2482)
!2482 = !{!2483, !2484, !2485, !2486, !2487, !2488, !2489, !2490}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2481, file: !70, line: 418, baseType: !102, size: 32)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2481, file: !70, line: 419, baseType: !13, size: 32, offset: 32)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2481, file: !70, line: 420, baseType: !13, size: 32, offset: 64)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2481, file: !70, line: 422, baseType: !13, size: 32, offset: 96)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2481, file: !70, line: 423, baseType: !13, size: 32, offset: 128)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2481, file: !70, line: 424, baseType: !13, size: 32, offset: 160)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2481, file: !70, line: 425, baseType: !13, size: 32, offset: 192)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2481, file: !70, line: 426, baseType: !13, size: 32, offset: 224)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2461, file: !70, line: 437, baseType: !2492, size: 64, offset: 384)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = !DISubroutineType(types: !2494)
!2494 = !{!102, !423, !2371, !2495}
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !70, line: 345, size: 960, elements: !2497)
!2497 = !{!2498, !2499, !2500, !2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2496, file: !70, line: 346, baseType: !102, size: 32)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2496, file: !70, line: 347, baseType: !341, size: 64, offset: 64)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2496, file: !70, line: 348, baseType: !341, size: 64, offset: 128)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2496, file: !70, line: 349, baseType: !341, size: 64, offset: 192)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2496, file: !70, line: 350, baseType: !341, size: 64, offset: 256)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2496, file: !70, line: 351, baseType: !341, size: 64, offset: 320)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2496, file: !70, line: 352, baseType: !341, size: 64, offset: 384)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2496, file: !70, line: 353, baseType: !248, size: 64, offset: 448)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2496, file: !70, line: 355, baseType: !248, size: 64, offset: 512)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2496, file: !70, line: 356, baseType: !102, size: 32, offset: 576)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2496, file: !70, line: 357, baseType: !102, size: 32, offset: 608)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2496, file: !70, line: 358, baseType: !341, size: 64, offset: 640)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2496, file: !70, line: 359, baseType: !341, size: 64, offset: 704)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2496, file: !70, line: 360, baseType: !341, size: 64, offset: 768)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2496, file: !70, line: 361, baseType: !248, size: 64, offset: 832)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2496, file: !70, line: 362, baseType: !102, size: 32, offset: 896)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2461, file: !70, line: 438, baseType: !2515, size: 64, offset: 448)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = !DISubroutineType(types: !2517)
!2517 = !{!102, !423, !2457, !2495}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2461, file: !70, line: 440, baseType: !2492, size: 64, offset: 512)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2461, file: !70, line: 441, baseType: !2520, size: 64, offset: 576)
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{!102, !423, !2523}
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !70, line: 411, size: 1408, elements: !2525)
!2525 = !{!2526, !2527}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2524, file: !70, line: 412, baseType: !13, size: 32)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2524, file: !70, line: 413, baseType: !2528, size: 1344, offset: 64)
!2528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2529, size: 1344, elements: !513)
!2529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !70, line: 397, size: 448, elements: !2530)
!2530 = !{!2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2541}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2529, file: !70, line: 398, baseType: !13, size: 32)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2529, file: !70, line: 399, baseType: !13, size: 32, offset: 32)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2529, file: !70, line: 401, baseType: !13, size: 32, offset: 64)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2529, file: !70, line: 402, baseType: !13, size: 32, offset: 96)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2529, file: !70, line: 403, baseType: !13, size: 32, offset: 128)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2529, file: !70, line: 404, baseType: !13, size: 32, offset: 160)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2529, file: !70, line: 405, baseType: !13, size: 32, offset: 192)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2529, file: !70, line: 406, baseType: !343, size: 64, offset: 256)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2529, file: !70, line: 407, baseType: !2540, size: 64, offset: 320)
!2540 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !154, line: 132, baseType: !341)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2529, file: !70, line: 408, baseType: !2540, size: 64, offset: 384)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2461, file: !70, line: 442, baseType: !2471, size: 64, offset: 640)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !424, file: !65, line: 1200, baseType: !2544, size: 64, offset: 576)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2546)
!2546 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !65, line: 54, flags: DIFlagFwdDecl)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !424, file: !65, line: 1201, baseType: !432, size: 64, offset: 640)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !424, file: !65, line: 1202, baseType: !432, size: 64, offset: 704)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !424, file: !65, line: 1203, baseType: !432, size: 64, offset: 768)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !424, file: !65, line: 1204, baseType: !303, size: 64, offset: 832)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !424, file: !65, line: 1205, baseType: !238, size: 320, offset: 896)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !424, file: !65, line: 1206, baseType: !102, size: 32, offset: 1216)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !424, file: !65, line: 1207, baseType: !195, size: 32, offset: 1248)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !424, file: !65, line: 1209, baseType: !155, size: 64, offset: 1280)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !424, file: !65, line: 1211, baseType: !2556, size: 64, offset: 1344)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2558, size: 64)
!2558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2559)
!2559 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !65, line: 1211, flags: DIFlagFwdDecl)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !424, file: !65, line: 1223, baseType: !2561, size: 64, offset: 1408)
!2561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !320, line: 34, size: 64, elements: !2562)
!2562 = !{!2563}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2561, file: !320, line: 35, baseType: !323, size: 64)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !424, file: !65, line: 1224, baseType: !160, size: 128, offset: 1472)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !424, file: !65, line: 1225, baseType: !2566, size: 64, offset: 1600)
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !2568, line: 40, size: 7424, elements: !2569)
!2568 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!2569 = !{!2570, !2571, !2572, !2575, !2579, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2606, !2607}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !2567, file: !2568, line: 41, baseType: !1702, size: 64)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !2567, file: !2568, line: 42, baseType: !1702, size: 64, offset: 64)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !2567, file: !2568, line: 43, baseType: !2573, size: 64, offset: 128)
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1303, line: 1453, flags: DIFlagFwdDecl)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !2567, file: !2568, line: 44, baseType: !2576, size: 64, offset: 192)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2578, line: 74, flags: DIFlagFwdDecl)
!2578 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !2567, file: !2568, line: 45, baseType: !2580, size: 64, offset: 256)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !2568, line: 45, flags: DIFlagFwdDecl)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !2567, file: !2568, line: 46, baseType: !432, size: 64, offset: 320)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !2567, file: !2568, line: 47, baseType: !706, size: 8, offset: 384)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !2567, file: !2568, line: 48, baseType: !203, size: 8, offset: 392)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !2567, file: !2568, line: 49, baseType: !706, size: 8, offset: 400)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !2567, file: !2568, line: 50, baseType: !706, size: 8, offset: 408)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !2567, file: !2568, line: 51, baseType: !428, size: 32, offset: 416)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !2567, file: !2568, line: 52, baseType: !195, size: 32, offset: 448)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !2567, file: !2568, line: 53, baseType: !175, size: 32, offset: 480)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !2567, file: !2568, line: 54, baseType: !348, size: 64, offset: 512)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !2567, file: !2568, line: 55, baseType: !155, size: 64, offset: 576)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !2567, file: !2568, line: 56, baseType: !155, size: 64, offset: 640)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !2567, file: !2568, line: 57, baseType: !2594, size: 64, offset: 704)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2596)
!2596 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !2568, line: 57, flags: DIFlagFwdDecl)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !2567, file: !2568, line: 58, baseType: !815, size: 256, offset: 768)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !2567, file: !2568, line: 60, baseType: !102, size: 32, offset: 1024)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !2567, file: !2568, line: 61, baseType: !102, size: 32, offset: 1056)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !2567, file: !2568, line: 62, baseType: !478, size: 64, offset: 1088)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !2567, file: !2568, line: 65, baseType: !815, size: 256, offset: 1152)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !2567, file: !2568, line: 66, baseType: !423, size: 64, offset: 1408)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !2567, file: !2568, line: 68, baseType: !2604, size: 64, offset: 1472)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !2568, line: 68, flags: DIFlagFwdDecl)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !2567, file: !2568, line: 72, baseType: !706, size: 8, offset: 1536)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !2567, file: !2568, line: 77, baseType: !2608, size: 5824, offset: 1600)
!2608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !82, line: 705, size: 5824, elements: !2609)
!2609 = !{!2610, !2611, !2613, !2616, !2617, !2670, !2740, !2741, !2742, !2743, !2744, !2751, !2911, !2924, !2934, !2938, !2940, !2941, !2942, !2946, !2953, !2954, !2957, !2960, !2964, !2967, !2968, !2969, !2970, !2971, !2972, !3002, !3003, !3004, !3007, !3010, !3019, !3020, !3021, !3022, !3023, !3024}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2608, file: !82, line: 706, baseType: !472, size: 512)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2608, file: !82, line: 707, baseType: !2612, size: 64, offset: 512)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2608, file: !82, line: 709, baseType: !2614, size: 64, offset: 576)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !82, line: 37, flags: DIFlagFwdDecl)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2608, file: !82, line: 711, baseType: !387, size: 64, offset: 640)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2608, file: !82, line: 712, baseType: !2618, size: 64, offset: 704)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2620)
!2620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !82, line: 89, size: 384, elements: !2621)
!2621 = !{!2622, !2623, !2624, !2630, !2635, !2639}
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2620, file: !82, line: 90, baseType: !387, size: 64)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2620, file: !82, line: 91, baseType: !560, size: 64, offset: 64)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2620, file: !82, line: 92, baseType: !2625, size: 64, offset: 128)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = !DISubroutineType(types: !2627)
!2627 = !{!102, !2628, !508}
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2629, size: 64)
!2629 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2608)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2620, file: !82, line: 93, baseType: !2631, size: 64, offset: 192)
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2632, size: 64)
!2632 = !DISubroutineType(types: !2633)
!2633 = !{!412, !2628, !2634, !1807, !1808}
!2634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2620, file: !82, line: 95, baseType: !2636, size: 64, offset: 256)
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2637 = !DISubroutineType(types: !2638)
!2638 = !{null, !2612}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2620, file: !82, line: 97, baseType: !2640, size: 64, offset: 320)
!2640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2641, size: 64)
!2641 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2642)
!2642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !94, line: 286, size: 1472, elements: !2643)
!2643 = !{!2644, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2642, file: !94, line: 287, baseType: !2645, size: 64)
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = !DISubroutineType(types: !2647)
!2647 = !{!102, !2612}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2642, file: !94, line: 288, baseType: !2636, size: 64, offset: 64)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2642, file: !94, line: 289, baseType: !2645, size: 64, offset: 128)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2642, file: !94, line: 290, baseType: !2645, size: 64, offset: 192)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2642, file: !94, line: 291, baseType: !2645, size: 64, offset: 256)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2642, file: !94, line: 292, baseType: !2645, size: 64, offset: 320)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2642, file: !94, line: 293, baseType: !2645, size: 64, offset: 384)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2642, file: !94, line: 294, baseType: !2645, size: 64, offset: 448)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2642, file: !94, line: 295, baseType: !2645, size: 64, offset: 512)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2642, file: !94, line: 296, baseType: !2645, size: 64, offset: 576)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2642, file: !94, line: 297, baseType: !2645, size: 64, offset: 640)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2642, file: !94, line: 298, baseType: !2645, size: 64, offset: 704)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2642, file: !94, line: 299, baseType: !2645, size: 64, offset: 768)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2642, file: !94, line: 300, baseType: !2645, size: 64, offset: 832)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2642, file: !94, line: 301, baseType: !2645, size: 64, offset: 896)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2642, file: !94, line: 302, baseType: !2645, size: 64, offset: 960)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2642, file: !94, line: 303, baseType: !2645, size: 64, offset: 1024)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2642, file: !94, line: 304, baseType: !2645, size: 64, offset: 1088)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2642, file: !94, line: 305, baseType: !2645, size: 64, offset: 1152)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2642, file: !94, line: 306, baseType: !2645, size: 64, offset: 1216)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2642, file: !94, line: 307, baseType: !2645, size: 64, offset: 1280)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2642, file: !94, line: 308, baseType: !2645, size: 64, offset: 1344)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2642, file: !94, line: 309, baseType: !2645, size: 64, offset: 1408)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2608, file: !82, line: 714, baseType: !2671, size: 64, offset: 768)
!2671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2672, size: 64)
!2672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2673)
!2673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2674, line: 80, size: 1344, elements: !2675)
!2674 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2675 = !{!2676, !2677, !2678, !2679, !2680, !2681, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2739}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2673, file: !2674, line: 81, baseType: !387, size: 64)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2673, file: !2674, line: 82, baseType: !387, size: 64, offset: 64)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2673, file: !2674, line: 83, baseType: !560, size: 64, offset: 128)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2673, file: !2674, line: 84, baseType: !560, size: 64, offset: 192)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2673, file: !2674, line: 85, baseType: !560, size: 64, offset: 256)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2673, file: !2674, line: 87, baseType: !2682, size: 64, offset: 320)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = !DISubroutineType(types: !2684)
!2684 = !{!102, !2612, !2685}
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!2686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !76, line: 96, size: 1152, elements: !2687)
!2687 = !{!2688, !2689, !2690, !2691, !2692, !2693, !2694, !2698, !2702, !2703, !2704, !2705, !2706, !2714, !2715, !2716, !2717, !2718, !2719}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2686, file: !76, line: 97, baseType: !387, size: 64)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2686, file: !76, line: 98, baseType: !2671, size: 64, offset: 64)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2686, file: !76, line: 100, baseType: !459, size: 64, offset: 128)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2686, file: !76, line: 101, baseType: !387, size: 64, offset: 192)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2686, file: !76, line: 103, baseType: !706, size: 8, offset: 256)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2686, file: !76, line: 104, baseType: !75, size: 32, offset: 288)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2686, file: !76, line: 106, baseType: !2695, size: 64, offset: 320)
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2697)
!2697 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !76, line: 106, flags: DIFlagFwdDecl)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2686, file: !76, line: 107, baseType: !2699, size: 64, offset: 384)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2701)
!2701 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !76, line: 107, flags: DIFlagFwdDecl)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2686, file: !76, line: 109, baseType: !2645, size: 64, offset: 448)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2686, file: !76, line: 110, baseType: !2636, size: 64, offset: 512)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2686, file: !76, line: 111, baseType: !2645, size: 64, offset: 576)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2686, file: !76, line: 112, baseType: !2636, size: 64, offset: 640)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2686, file: !76, line: 113, baseType: !2707, size: 64, offset: 704)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = !DISubroutineType(types: !2709)
!2709 = !{!102, !2612, !2710}
!2710 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !94, line: 60, baseType: !2711)
!2711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !94, line: 58, size: 32, elements: !2712)
!2712 = !{!2713}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2711, file: !94, line: 59, baseType: !102, size: 32)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2686, file: !76, line: 114, baseType: !2645, size: 64, offset: 768)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2686, file: !76, line: 115, baseType: !560, size: 64, offset: 832)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2686, file: !76, line: 116, baseType: !560, size: 64, offset: 896)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2686, file: !76, line: 118, baseType: !2640, size: 64, offset: 960)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2686, file: !76, line: 119, baseType: !2636, size: 64, offset: 1024)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2686, file: !76, line: 121, baseType: !2720, size: 64, offset: 1088)
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !76, line: 121, flags: DIFlagFwdDecl)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2673, file: !2674, line: 88, baseType: !2625, size: 64, offset: 384)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2673, file: !2674, line: 89, baseType: !2645, size: 64, offset: 448)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2673, file: !2674, line: 90, baseType: !2636, size: 64, offset: 512)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2673, file: !2674, line: 91, baseType: !2636, size: 64, offset: 576)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2673, file: !2674, line: 92, baseType: !2636, size: 64, offset: 640)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2673, file: !2674, line: 94, baseType: !2645, size: 64, offset: 704)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2673, file: !2674, line: 95, baseType: !2645, size: 64, offset: 768)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2673, file: !2674, line: 97, baseType: !2707, size: 64, offset: 832)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2673, file: !2674, line: 98, baseType: !2645, size: 64, offset: 896)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2673, file: !2674, line: 100, baseType: !2645, size: 64, offset: 960)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2673, file: !2674, line: 102, baseType: !2645, size: 64, offset: 1024)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2673, file: !2674, line: 103, baseType: !2636, size: 64, offset: 1088)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2673, file: !2674, line: 105, baseType: !2640, size: 64, offset: 1152)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2673, file: !2674, line: 107, baseType: !2736, size: 64, offset: 1216)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2738)
!2738 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2674, line: 107, flags: DIFlagFwdDecl)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2673, file: !2674, line: 109, baseType: !706, size: 8, offset: 1280)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2608, file: !82, line: 715, baseType: !2685, size: 64, offset: 832)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2608, file: !82, line: 717, baseType: !155, size: 64, offset: 896)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2608, file: !82, line: 719, baseType: !155, size: 64, offset: 960)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2608, file: !82, line: 721, baseType: !815, size: 256, offset: 1024)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2608, file: !82, line: 725, baseType: !2745, size: 448, offset: 1280)
!2745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !82, line: 517, size: 448, elements: !2746)
!2746 = !{!2747, !2748, !2749, !2750}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2745, file: !82, line: 518, baseType: !160, size: 128)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2745, file: !82, line: 519, baseType: !160, size: 128, offset: 128)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2745, file: !82, line: 520, baseType: !160, size: 128, offset: 256)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2745, file: !82, line: 521, baseType: !81, size: 32, offset: 384)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2608, file: !82, line: 726, baseType: !2752, size: 2496, offset: 1728)
!2752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !94, line: 663, size: 2496, elements: !2753)
!2753 = !{!2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2798, !2799, !2800, !2801, !2802, !2803, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2904, !2908}
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2752, file: !94, line: 664, baseType: !2710, size: 32)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2752, file: !94, line: 665, baseType: !13, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2752, file: !94, line: 666, baseType: !13, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2752, file: !94, line: 667, baseType: !706, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2752, file: !94, line: 668, baseType: !706, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2752, file: !94, line: 669, baseType: !706, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2752, file: !94, line: 670, baseType: !706, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2752, file: !94, line: 671, baseType: !706, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2752, file: !94, line: 672, baseType: !706, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2752, file: !94, line: 673, baseType: !706, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2752, file: !94, line: 674, baseType: !706, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2752, file: !94, line: 675, baseType: !337, size: 32, offset: 64)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2752, file: !94, line: 676, baseType: !175, size: 32, offset: 96)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2752, file: !94, line: 678, baseType: !160, size: 128, offset: 128)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2752, file: !94, line: 679, baseType: !720, size: 256, offset: 256)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2752, file: !94, line: 680, baseType: !2770, size: 64, offset: 512)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2772, line: 43, size: 1536, elements: !2773)
!2772 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!2773 = !{!2774, !2775, !2776, !2777, !2778, !2781, !2782, !2783, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797}
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2771, file: !2772, line: 44, baseType: !387, size: 64)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2771, file: !2772, line: 45, baseType: !102, size: 32, offset: 64)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2771, file: !2772, line: 46, baseType: !160, size: 128, offset: 128)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2771, file: !2772, line: 47, baseType: !175, size: 32, offset: 256)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2771, file: !2772, line: 48, baseType: !2779, size: 64, offset: 320)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !94, line: 629, flags: DIFlagFwdDecl)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2771, file: !2772, line: 49, baseType: !2166, size: 320, offset: 384)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2771, file: !2772, line: 50, baseType: !432, size: 64, offset: 704)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2771, file: !2772, line: 51, baseType: !2784, size: 64, offset: 768)
!2784 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2785, line: 29, baseType: !248)
!2785 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2771, file: !2772, line: 52, baseType: !2784, size: 64, offset: 832)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2771, file: !2772, line: 53, baseType: !2784, size: 64, offset: 896)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2771, file: !2772, line: 54, baseType: !2784, size: 64, offset: 960)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2771, file: !2772, line: 55, baseType: !2784, size: 64, offset: 1024)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2771, file: !2772, line: 56, baseType: !432, size: 64, offset: 1088)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2771, file: !2772, line: 57, baseType: !432, size: 64, offset: 1152)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2771, file: !2772, line: 58, baseType: !432, size: 64, offset: 1216)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2771, file: !2772, line: 59, baseType: !432, size: 64, offset: 1280)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2771, file: !2772, line: 60, baseType: !432, size: 64, offset: 1344)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2771, file: !2772, line: 61, baseType: !2612, size: 64, offset: 1408)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2771, file: !2772, line: 62, baseType: !706, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2771, file: !2772, line: 63, baseType: !706, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2752, file: !94, line: 681, baseType: !706, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2752, file: !94, line: 682, baseType: !706, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2752, file: !94, line: 683, baseType: !706, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2752, file: !94, line: 684, baseType: !13, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2752, file: !94, line: 685, baseType: !13, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2752, file: !94, line: 690, baseType: !2804, size: 512, offset: 640)
!2804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !89, line: 118, size: 512, elements: !2805)
!2805 = !{!2806, !2812, !2813, !2818, !2866, !2867, !2868, !2869}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2804, file: !89, line: 119, baseType: !2807, size: 256)
!2807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2808, line: 9, size: 256, elements: !2809)
!2808 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2809 = !{!2810, !2811}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2807, file: !2808, line: 10, baseType: !608, size: 192, align: 64)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2807, file: !2808, line: 11, baseType: !2784, size: 64, offset: 192)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2804, file: !89, line: 120, baseType: !2784, size: 64, offset: 256)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2804, file: !89, line: 121, baseType: !2814, size: 64, offset: 320)
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2815 = !DISubroutineType(types: !2816)
!2816 = !{!88, !2817}
!2817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2804, file: !89, line: 122, baseType: !2819, size: 64, offset: 384)
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2820, size: 64)
!2820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !89, line: 159, size: 512, align: 512, elements: !2821)
!2821 = !{!2822, !2847, !2848, !2851, !2856, !2857, !2861, !2865}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2820, file: !89, line: 160, baseType: !2823, size: 64)
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2824, size: 64)
!2824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !89, line: 215, size: 4608, align: 512, elements: !2825)
!2825 = !{!2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843}
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2824, file: !89, line: 216, baseType: !257, size: 32)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2824, file: !89, line: 217, baseType: !13, size: 32, offset: 32)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2824, file: !89, line: 218, baseType: !13, size: 32, offset: 64)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2824, file: !89, line: 219, baseType: !13, size: 32, offset: 96)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2824, file: !89, line: 220, baseType: !13, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2824, file: !89, line: 221, baseType: !13, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2824, file: !89, line: 222, baseType: !13, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2824, file: !89, line: 223, baseType: !13, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2824, file: !89, line: 224, baseType: !13, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2824, file: !89, line: 226, baseType: !13, size: 32, offset: 160)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2824, file: !89, line: 227, baseType: !215, size: 16, offset: 192)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2824, file: !89, line: 228, baseType: !215, size: 16, offset: 208)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2824, file: !89, line: 229, baseType: !13, size: 32, offset: 224)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2824, file: !89, line: 235, baseType: !2784, size: 64, offset: 256)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2824, file: !89, line: 236, baseType: !2817, size: 64, offset: 320)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2824, file: !89, line: 237, baseType: !2784, size: 64, offset: 384)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2824, file: !89, line: 238, baseType: !2817, size: 64, offset: 448)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2824, file: !89, line: 239, baseType: !2844, size: 4096, align: 512, offset: 512)
!2844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2820, size: 4096, align: 512, elements: !2845)
!2845 = !{!2846}
!2846 = !DISubrange(count: 8)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2820, file: !89, line: 161, baseType: !13, size: 32, offset: 64)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2820, file: !89, line: 162, baseType: !2849, size: 32, offset: 96)
!2849 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !154, line: 32, baseType: !2850)
!2850 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !223, line: 96, baseType: !102)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2820, file: !89, line: 163, baseType: !2852, size: 32, offset: 128)
!2852 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !310, line: 274, baseType: !2853)
!2853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !310, line: 274, size: 32, elements: !2854)
!2854 = !{!2855}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2853, file: !310, line: 274, baseType: !314, size: 32)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2820, file: !89, line: 164, baseType: !2817, size: 64, offset: 192)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2820, file: !89, line: 165, baseType: !2858, size: 128, offset: 256)
!2858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2808, line: 14, size: 128, elements: !2859)
!2859 = !{!2860}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2858, file: !2808, line: 15, baseType: !600, size: 128)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2820, file: !89, line: 166, baseType: !2862, size: 64, offset: 384)
!2862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2863, size: 64)
!2863 = !DISubroutineType(types: !2864)
!2864 = !{!2784}
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2820, file: !89, line: 167, baseType: !2784, size: 64, offset: 448)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2804, file: !89, line: 123, baseType: !203, size: 8, offset: 448)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2804, file: !89, line: 124, baseType: !203, size: 8, offset: 456)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2804, file: !89, line: 125, baseType: !203, size: 8, offset: 464)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2804, file: !89, line: 126, baseType: !203, size: 8, offset: 472)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2752, file: !94, line: 691, baseType: !341, size: 64, offset: 1152)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2752, file: !94, line: 692, baseType: !1484, size: 256, offset: 1216)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2752, file: !94, line: 693, baseType: !869, size: 192, offset: 1472)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2752, file: !94, line: 694, baseType: !2779, size: 64, offset: 1664)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2752, file: !94, line: 695, baseType: !195, size: 32, offset: 1728)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2752, file: !94, line: 696, baseType: !195, size: 32, offset: 1760)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2752, file: !94, line: 697, baseType: !13, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2752, file: !94, line: 698, baseType: !13, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2752, file: !94, line: 699, baseType: !13, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2752, file: !94, line: 700, baseType: !13, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2752, file: !94, line: 701, baseType: !13, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2752, file: !94, line: 702, baseType: !13, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2752, file: !94, line: 703, baseType: !706, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2752, file: !94, line: 704, baseType: !13, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2752, file: !94, line: 705, baseType: !13, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2752, file: !94, line: 706, baseType: !13, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2752, file: !94, line: 707, baseType: !13, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2752, file: !94, line: 708, baseType: !13, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2752, file: !94, line: 709, baseType: !13, size: 32, offset: 1824)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2752, file: !94, line: 710, baseType: !93, size: 32, offset: 1856)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2752, file: !94, line: 711, baseType: !101, size: 32, offset: 1888)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2752, file: !94, line: 712, baseType: !101, size: 32, offset: 1920)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2752, file: !94, line: 713, baseType: !102, size: 32, offset: 1952)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2752, file: !94, line: 714, baseType: !102, size: 32, offset: 1984)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2752, file: !94, line: 715, baseType: !341, size: 64, offset: 2048)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2752, file: !94, line: 716, baseType: !341, size: 64, offset: 2112)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2752, file: !94, line: 717, baseType: !341, size: 64, offset: 2176)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2752, file: !94, line: 718, baseType: !341, size: 64, offset: 2240)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2752, file: !94, line: 720, baseType: !2899, size: 64, offset: 2304)
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !94, line: 632, size: 64, elements: !2901)
!2901 = !{!2902, !2903}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2900, file: !94, line: 633, baseType: !175, size: 32)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2900, file: !94, line: 634, baseType: !13, size: 32, offset: 32)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2752, file: !94, line: 721, baseType: !2905, size: 64, offset: 2368)
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2906, size: 64)
!2906 = !DISubroutineType(types: !2907)
!2907 = !{null, !2612, !926}
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2752, file: !94, line: 722, baseType: !2909, size: 64, offset: 2432)
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2910, size: 64)
!2910 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !94, line: 722, flags: DIFlagFwdDecl)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2608, file: !82, line: 727, baseType: !2912, size: 64, offset: 4224)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !94, line: 742, size: 1792, elements: !2914)
!2914 = !{!2915, !2916, !2917, !2921, !2922, !2923}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2913, file: !94, line: 743, baseType: !2642, size: 1472)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2913, file: !94, line: 744, baseType: !2645, size: 64, offset: 1472)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2913, file: !94, line: 745, baseType: !2918, size: 64, offset: 1536)
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = !DISubroutineType(types: !2920)
!2920 = !{null, !2612, !706}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2913, file: !94, line: 746, baseType: !2645, size: 64, offset: 1600)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2913, file: !94, line: 747, baseType: !2636, size: 64, offset: 1664)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2913, file: !94, line: 748, baseType: !2636, size: 64, offset: 1728)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2608, file: !82, line: 736, baseType: !2925, size: 128, offset: 4288)
!2925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !82, line: 529, size: 128, elements: !2926)
!2926 = !{!2927, !2931}
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2925, file: !82, line: 531, baseType: !2928, size: 64)
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2929, size: 64)
!2929 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !2930, line: 13, flags: DIFlagFwdDecl)
!2930 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2925, file: !82, line: 532, baseType: !2932, size: 64, offset: 64)
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!2933 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !82, line: 49, flags: DIFlagFwdDecl)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2608, file: !82, line: 738, baseType: !2935, size: 64, offset: 4416)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2937)
!2937 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !82, line: 738, flags: DIFlagFwdDecl)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2608, file: !82, line: 740, baseType: !2939, size: 64, offset: 4480)
!2939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2608, file: !82, line: 741, baseType: !341, size: 64, offset: 4544)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2608, file: !82, line: 746, baseType: !341, size: 64, offset: 4608)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2608, file: !82, line: 747, baseType: !2943, size: 64, offset: 4672)
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!2944 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2945)
!2945 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !82, line: 747, flags: DIFlagFwdDecl)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2608, file: !82, line: 749, baseType: !2947, size: 64, offset: 4736)
!2947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2948, size: 64)
!2948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !82, line: 428, size: 128, elements: !2949)
!2949 = !{!2950, !2951, !2952}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2948, file: !82, line: 433, baseType: !13, size: 32)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !2948, file: !82, line: 434, baseType: !13, size: 32, offset: 32)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2948, file: !82, line: 435, baseType: !432, size: 64, offset: 64)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2608, file: !82, line: 751, baseType: !160, size: 128, offset: 4800)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2608, file: !82, line: 762, baseType: !2955, size: 64, offset: 4928)
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64)
!2956 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !82, line: 762, flags: DIFlagFwdDecl)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2608, file: !82, line: 770, baseType: !2958, offset: 4992)
!2958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2959, line: 5, elements: !789)
!2959 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2608, file: !82, line: 772, baseType: !2961, size: 64, offset: 4992)
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2963, line: 18, flags: DIFlagFwdDecl)
!2963 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2608, file: !82, line: 773, baseType: !2965, size: 64, offset: 5056)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2674, line: 22, flags: DIFlagFwdDecl)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2608, file: !82, line: 776, baseType: !102, size: 32, offset: 5120)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2608, file: !82, line: 778, baseType: !428, size: 32, offset: 5152)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2608, file: !82, line: 779, baseType: !337, size: 32, offset: 5184)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2608, file: !82, line: 781, baseType: !175, size: 32, offset: 5216)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2608, file: !82, line: 782, baseType: !160, size: 128, offset: 5248)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2608, file: !82, line: 784, baseType: !2973, size: 64, offset: 5376)
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2974 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2975)
!2975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2976, line: 52, size: 768, elements: !2977)
!2976 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!2977 = !{!2978, !2979, !2980, !2981, !2982, !2986, !2990, !2991, !2992, !2993, !2997, !3001}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2975, file: !2976, line: 53, baseType: !387, size: 64)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2975, file: !2976, line: 55, baseType: !560, size: 64, offset: 64)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2975, file: !2976, line: 56, baseType: !560, size: 64, offset: 128)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2975, file: !2976, line: 58, baseType: !2625, size: 64, offset: 192)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2975, file: !2976, line: 59, baseType: !2983, size: 64, offset: 256)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2984 = !DISubroutineType(types: !2985)
!2985 = !{!412, !2628, !2634}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2975, file: !2976, line: 61, baseType: !2987, size: 64, offset: 320)
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = !DISubroutineType(types: !2989)
!2989 = !{null, !2973}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2975, file: !2976, line: 62, baseType: !2636, size: 64, offset: 384)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2975, file: !2976, line: 64, baseType: !2645, size: 64, offset: 448)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2975, file: !2976, line: 66, baseType: !1772, size: 64, offset: 512)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2975, file: !2976, line: 67, baseType: !2994, size: 64, offset: 576)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = !DISubroutineType(types: !2996)
!2996 = !{!1445, !2628}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2975, file: !2976, line: 69, baseType: !2998, size: 64, offset: 640)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = !DISubroutineType(types: !3000)
!3000 = !{null, !2628, !1807, !1808}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2975, file: !2976, line: 71, baseType: !2640, size: 64, offset: 704)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2608, file: !82, line: 785, baseType: !560, size: 64, offset: 5440)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2608, file: !82, line: 787, baseType: !2636, size: 64, offset: 5504)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2608, file: !82, line: 788, baseType: !3005, size: 64, offset: 5568)
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3006 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !82, line: 46, flags: DIFlagFwdDecl)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2608, file: !82, line: 789, baseType: !3008, size: 64, offset: 5632)
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !82, line: 48, flags: DIFlagFwdDecl)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2608, file: !82, line: 791, baseType: !3011, size: 64, offset: 5696)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !82, line: 597, size: 128, elements: !3013)
!3013 = !{!3014, !3015, !3016, !3017, !3018}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3012, file: !82, line: 598, baseType: !109, size: 32)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3012, file: !82, line: 599, baseType: !118, size: 32, offset: 32)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3012, file: !82, line: 600, baseType: !123, size: 32, offset: 64)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3012, file: !82, line: 601, baseType: !706, size: 8, offset: 96)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3012, file: !82, line: 602, baseType: !706, size: 8, offset: 104)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2608, file: !82, line: 793, baseType: !128, size: 32, offset: 5760)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2608, file: !82, line: 795, baseType: !706, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2608, file: !82, line: 796, baseType: !706, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2608, file: !82, line: 797, baseType: !706, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2608, file: !82, line: 798, baseType: !706, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2608, file: !82, line: 799, baseType: !706, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !424, file: !65, line: 1226, baseType: !3026, size: 64, offset: 1664)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !65, line: 1226, flags: DIFlagFwdDecl)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !424, file: !65, line: 1227, baseType: !3029, size: 64, offset: 1728)
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3030, size: 64)
!3030 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !65, line: 50, flags: DIFlagFwdDecl)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !424, file: !65, line: 1228, baseType: !3032, size: 64, offset: 1792)
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3033, size: 64)
!3033 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !65, line: 1228, flags: DIFlagFwdDecl)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !424, file: !65, line: 1229, baseType: !230, size: 128, offset: 1856)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !424, file: !65, line: 1230, baseType: !13, size: 32, offset: 1984)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !424, file: !65, line: 1231, baseType: !3037, size: 2496, offset: 2048)
!3037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !70, line: 521, size: 2496, elements: !3038)
!3038 = !{!3039, !3040, !3041, !3043, !3075}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3037, file: !70, line: 522, baseType: !13, size: 32)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3037, file: !70, line: 523, baseType: !238, size: 320, offset: 64)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3037, file: !70, line: 524, baseType: !3042, size: 192, offset: 384)
!3042 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 192, elements: !513)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3037, file: !70, line: 525, baseType: !3044, size: 1728, offset: 576)
!3044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3045, size: 1728, elements: !513)
!3045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !70, line: 222, size: 576, elements: !3046)
!3046 = !{!3047, !3067, !3068, !3069, !3070, !3071, !3072, !3073, !3074}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3045, file: !70, line: 223, baseType: !3048, size: 64)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !70, line: 445, size: 256, elements: !3050)
!3050 = !{!3051, !3052, !3065, !3066}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3049, file: !70, line: 446, baseType: !102, size: 32)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3049, file: !70, line: 447, baseType: !3053, size: 64, offset: 64)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3054, size: 64)
!3054 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3055)
!3055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !70, line: 312, size: 512, elements: !3056)
!3056 = !{!3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3055, file: !70, line: 313, baseType: !2315, size: 64)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3055, file: !70, line: 314, baseType: !2315, size: 64, offset: 64)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3055, file: !70, line: 315, baseType: !2315, size: 64, offset: 128)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3055, file: !70, line: 316, baseType: !2315, size: 64, offset: 192)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3055, file: !70, line: 317, baseType: !2424, size: 64, offset: 256)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3055, file: !70, line: 318, baseType: !2424, size: 64, offset: 320)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3055, file: !70, line: 319, baseType: !2424, size: 64, offset: 384)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3055, file: !70, line: 320, baseType: !2454, size: 64, offset: 448)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3049, file: !70, line: 448, baseType: !459, size: 64, offset: 128)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3049, file: !70, line: 449, baseType: !3048, size: 64, offset: 192)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3045, file: !70, line: 224, baseType: !102, size: 32, offset: 64)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3045, file: !70, line: 226, baseType: !160, size: 128, offset: 128)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3045, file: !70, line: 227, baseType: !432, size: 64, offset: 256)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3045, file: !70, line: 228, baseType: !13, size: 32, offset: 320)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3045, file: !70, line: 229, baseType: !13, size: 32, offset: 352)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3045, file: !70, line: 230, baseType: !2392, size: 64, offset: 384)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3045, file: !70, line: 231, baseType: !2392, size: 64, offset: 448)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3045, file: !70, line: 232, baseType: !155, size: 64, offset: 512)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3037, file: !70, line: 526, baseType: !3076, size: 192, offset: 2304)
!3076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3053, size: 192, elements: !513)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !424, file: !65, line: 1233, baseType: !3078, size: 2368, offset: 4544)
!3078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !65, line: 1184, size: 2368, elements: !3079)
!3079 = !{!3080, !3081, !3082}
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3078, file: !65, line: 1185, baseType: !215, size: 16)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3078, file: !65, line: 1186, baseType: !215, size: 16, offset: 16)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3078, file: !65, line: 1187, baseType: !3083, size: 2304, offset: 64)
!3083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3084, size: 2304, elements: !513)
!3084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3085, line: 12, size: 768, elements: !3086)
!3085 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3086 = !{!3087, !3095, !3096, !4203, !4204}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3084, file: !3085, line: 13, baseType: !3088, size: 384)
!3088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3089, line: 17, size: 384, elements: !3090)
!3089 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3090 = !{!3091, !3092, !3093, !3094}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3088, file: !3089, line: 18, baseType: !102, size: 32)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3088, file: !3089, line: 19, baseType: !102, size: 32, offset: 32)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3088, file: !3089, line: 20, baseType: !869, size: 192, offset: 64)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3088, file: !3089, line: 22, baseType: !710, size: 128, align: 64, offset: 256)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3084, file: !3085, line: 14, baseType: !2018, size: 64, offset: 384)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3084, file: !3085, line: 15, baseType: !3097, size: 64, offset: 448)
!3097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3098, line: 16, size: 64, elements: !3099)
!3098 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3099 = !{!3100}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3097, file: !3098, line: 17, baseType: !3101, size: 64)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1303, line: 746, size: 58368, elements: !3103)
!3103 = !{!3104, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3130, !3131, !3132, !3133, !3134, !3135, !3136, !3137, !3138, !3139, !3140, !3184, !3195, !3215, !3219, !3222, !3253, !3254, !3255, !3256, !3267, !3269, !3270, !3271, !3272, !3273, !3274, !3285, !3286, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3303, !3304, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3392, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3440, !3446, !3447, !3448, !3449, !3450, !3454, !3457, !3464, !3469, !3472, !3475, !3478, !3481, !3619, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3657, !3658, !3659, !3668, !3676, !3677, !3678, !3679, !3680, !3685, !3686, !3687, !3690, !3691, !3694, !3697, !3700, !3707, !3710, !3711, !3797, !3798, !3799, !3800, !3801, !3807, !3808, !3809, !3810, !3813, !3814, !3817, !3820, !3821, !3824, !3825, !3826, !3829, !3830, !3831, !3832, !3833, !3834, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3866, !3867, !3873, !3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3955, !3957, !3958, !3959, !3960, !3961, !3962, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3980, !3981, !3982}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !3102, file: !1303, line: 752, baseType: !3105, size: 192)
!3105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !3106, line: 56, size: 192, elements: !3107)
!3106 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!3107 = !{!3108, !3109, !3110, !3111}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3105, file: !3106, line: 57, baseType: !432, size: 64)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !3105, file: !3106, line: 58, baseType: !432, size: 64, offset: 64)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3105, file: !3106, line: 59, baseType: !337, size: 32, offset: 128)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3105, file: !3106, line: 61, baseType: !337, size: 32, offset: 160)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !3102, file: !1303, line: 754, baseType: !13, size: 32, offset: 192)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3102, file: !1303, line: 767, baseType: !155, size: 64, offset: 256)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3102, file: !1303, line: 768, baseType: !853, size: 32, offset: 320)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3102, file: !1303, line: 770, baseType: !13, size: 32, offset: 352)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !3102, file: !1303, line: 771, baseType: !13, size: 32, offset: 384)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !3102, file: !1303, line: 774, baseType: !102, size: 32, offset: 416)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !3102, file: !1303, line: 775, baseType: !3119, size: 128, offset: 448)
!3119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !3120, line: 58, size: 128, elements: !3121)
!3120 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!3121 = !{!3122, !3123, !3128, !3129}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !3119, file: !3120, line: 59, baseType: !803, size: 64)
!3123 = !DIDerivedType(tag: DW_TAG_member, scope: !3119, file: !3120, line: 60, baseType: !3124, size: 32, offset: 64)
!3124 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3119, file: !3120, line: 60, size: 32, elements: !3125)
!3125 = !{!3126, !3127}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !3124, file: !3120, line: 61, baseType: !13, size: 32)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !3124, file: !3120, line: 62, baseType: !195, size: 32)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !3119, file: !3120, line: 65, baseType: !213, size: 16, offset: 96)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !3119, file: !3120, line: 65, baseType: !213, size: 16, offset: 112)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !3102, file: !1303, line: 776, baseType: !13, size: 32, offset: 576)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !3102, file: !1303, line: 777, baseType: !432, size: 64, offset: 640)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !3102, file: !1303, line: 778, baseType: !3101, size: 64, offset: 704)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !3102, file: !1303, line: 787, baseType: !102, size: 32, offset: 768)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !3102, file: !1303, line: 788, baseType: !102, size: 32, offset: 800)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3102, file: !1303, line: 790, baseType: !102, size: 32, offset: 832)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3102, file: !1303, line: 792, baseType: !102, size: 32, offset: 864)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !3102, file: !1303, line: 793, baseType: !102, size: 32, offset: 896)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !3102, file: !1303, line: 794, baseType: !102, size: 32, offset: 928)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !3102, file: !1303, line: 795, baseType: !13, size: 32, offset: 960)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !3102, file: !1303, line: 797, baseType: !3141, size: 2048, offset: 1024)
!3141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1303, line: 551, size: 2048, elements: !3142)
!3142 = !{!3143, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3163, !3166, !3167, !3168}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !3141, file: !1303, line: 553, baseType: !3144, size: 128)
!3144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1303, line: 411, size: 128, elements: !3145)
!3145 = !{!3146, !3147}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3144, file: !1303, line: 412, baseType: !432, size: 64)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !3144, file: !1303, line: 413, baseType: !337, size: 32, offset: 64)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !3141, file: !1303, line: 554, baseType: !608, size: 192, align: 64, offset: 128)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3141, file: !1303, line: 555, baseType: !341, size: 64, offset: 320)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !3141, file: !1303, line: 556, baseType: !341, size: 64, offset: 384)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !3141, file: !1303, line: 558, baseType: !160, size: 128, offset: 448)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3141, file: !1303, line: 559, baseType: !13, size: 32, offset: 576)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !3141, file: !1303, line: 561, baseType: !341, size: 64, offset: 640)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3141, file: !1303, line: 562, baseType: !341, size: 64, offset: 704)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !3141, file: !1303, line: 563, baseType: !341, size: 64, offset: 768)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !3141, file: !1303, line: 564, baseType: !341, size: 64, offset: 832)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !3141, file: !1303, line: 565, baseType: !248, size: 64, offset: 896)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !3141, file: !1303, line: 566, baseType: !341, size: 64, offset: 960)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !3141, file: !1303, line: 568, baseType: !341, size: 64, offset: 1024)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3141, file: !1303, line: 571, baseType: !102, size: 32, offset: 1088)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3141, file: !1303, line: 572, baseType: !3162, size: 64, offset: 1152)
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !3141, file: !1303, line: 574, baseType: !3164, size: 64, offset: 1216)
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1303, line: 49, flags: DIFlagFwdDecl)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !3141, file: !1303, line: 576, baseType: !3164, size: 64, offset: 1280)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !3141, file: !1303, line: 578, baseType: !432, size: 64, offset: 1344)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !3141, file: !1303, line: 588, baseType: !3169, size: 512, align: 512, offset: 1536)
!3169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1303, line: 497, size: 512, align: 512, elements: !3170)
!3170 = !{!3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179}
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !3169, file: !1303, line: 498, baseType: !341, size: 64)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !3169, file: !1303, line: 499, baseType: !341, size: 64, offset: 64)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !3169, file: !1303, line: 500, baseType: !341, size: 64, offset: 128)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !3169, file: !1303, line: 501, baseType: !337, size: 32, offset: 192)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !3169, file: !1303, line: 502, baseType: !337, size: 32, offset: 224)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !3169, file: !1303, line: 503, baseType: !432, size: 64, offset: 256)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !3169, file: !1303, line: 504, baseType: !432, size: 64, offset: 320)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !3169, file: !1303, line: 505, baseType: !432, size: 64, offset: 384)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !3169, file: !1303, line: 506, baseType: !3180, size: 64, align: 64, offset: 448)
!3180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1303, line: 445, size: 64, align: 64, elements: !3181)
!3181 = !{!3182, !3183}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !3180, file: !1303, line: 446, baseType: !13, size: 32)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !3180, file: !1303, line: 447, baseType: !13, size: 32, offset: 32)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !3102, file: !1303, line: 798, baseType: !3185, size: 384, offset: 3072)
!3185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1303, line: 592, size: 384, elements: !3186)
!3186 = !{!3187, !3188, !3189, !3190, !3191, !3192, !3193}
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !3185, file: !1303, line: 593, baseType: !160, size: 128)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3185, file: !1303, line: 594, baseType: !432, size: 64, offset: 128)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !3185, file: !1303, line: 595, baseType: !432, size: 64, offset: 192)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !3185, file: !1303, line: 596, baseType: !13, size: 32, offset: 256)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3185, file: !1303, line: 597, baseType: !215, size: 16, offset: 288)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !3185, file: !1303, line: 598, baseType: !215, size: 16, offset: 304)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !3185, file: !1303, line: 600, baseType: !3194, size: 64, offset: 320)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3185, size: 64)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !3102, file: !1303, line: 799, baseType: !3196, size: 1792, offset: 3456)
!3196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1303, line: 610, size: 1792, elements: !3197)
!3197 = !{!3198, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213}
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3196, file: !1303, line: 611, baseType: !608, size: 192, align: 64)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !3196, file: !1303, line: 618, baseType: !341, size: 64, offset: 192)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !3196, file: !1303, line: 619, baseType: !341, size: 64, offset: 256)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !3196, file: !1303, line: 620, baseType: !341, size: 64, offset: 320)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !3196, file: !1303, line: 621, baseType: !341, size: 64, offset: 384)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !3196, file: !1303, line: 622, baseType: !341, size: 64, offset: 448)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !3196, file: !1303, line: 629, baseType: !248, size: 64, offset: 512)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3196, file: !1303, line: 630, baseType: !341, size: 64, offset: 576)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3196, file: !1303, line: 631, baseType: !13, size: 32, offset: 640)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !3196, file: !1303, line: 653, baseType: !13, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !3196, file: !1303, line: 654, baseType: !13, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !3196, file: !1303, line: 655, baseType: !13, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !3196, file: !1303, line: 656, baseType: !13, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !3196, file: !1303, line: 662, baseType: !2804, size: 512, offset: 704)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !3196, file: !1303, line: 671, baseType: !2804, size: 512, offset: 1216)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !3196, file: !1303, line: 679, baseType: !3214, size: 64, offset: 1728)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !3102, file: !1303, line: 800, baseType: !3216, size: 64, offset: 5248)
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3218)
!3218 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1303, line: 800, flags: DIFlagFwdDecl)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !3102, file: !1303, line: 809, baseType: !3220, size: 64, offset: 5312)
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3221, size: 64)
!3221 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1303, line: 70, flags: DIFlagFwdDecl)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3102, file: !1303, line: 825, baseType: !3223, size: 2048, align: 512, offset: 5632)
!3223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1303, line: 509, size: 2048, align: 512, elements: !3224)
!3224 = !{!3225, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !3223, file: !1303, line: 511, baseType: !341, size: 64)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !3223, file: !1303, line: 512, baseType: !341, size: 64, offset: 64)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !3223, file: !1303, line: 513, baseType: !341, size: 64, offset: 128)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !3223, file: !1303, line: 514, baseType: !341, size: 64, offset: 192)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !3223, file: !1303, line: 515, baseType: !341, size: 64, offset: 256)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !3223, file: !1303, line: 516, baseType: !341, size: 64, offset: 320)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !3223, file: !1303, line: 518, baseType: !341, size: 64, offset: 384)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !3223, file: !1303, line: 519, baseType: !341, size: 64, offset: 448)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !3223, file: !1303, line: 520, baseType: !248, size: 64, offset: 512)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !3223, file: !1303, line: 522, baseType: !341, size: 64, offset: 576)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !3223, file: !1303, line: 523, baseType: !341, size: 64, offset: 640)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !3223, file: !1303, line: 524, baseType: !248, size: 64, offset: 704)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !3223, file: !1303, line: 526, baseType: !248, size: 64, offset: 768)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !3223, file: !1303, line: 527, baseType: !341, size: 64, offset: 832)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !3223, file: !1303, line: 529, baseType: !341, size: 64, offset: 896)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !3223, file: !1303, line: 530, baseType: !341, size: 64, offset: 960)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !3223, file: !1303, line: 531, baseType: !341, size: 64, offset: 1024)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !3223, file: !1303, line: 532, baseType: !341, size: 64, offset: 1088)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !3223, file: !1303, line: 533, baseType: !341, size: 64, offset: 1152)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !3223, file: !1303, line: 535, baseType: !341, size: 64, offset: 1216)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !3223, file: !1303, line: 536, baseType: !341, size: 64, offset: 1280)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !3223, file: !1303, line: 537, baseType: !341, size: 64, offset: 1344)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !3223, file: !1303, line: 538, baseType: !341, size: 64, offset: 1408)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !3223, file: !1303, line: 539, baseType: !341, size: 64, offset: 1472)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !3223, file: !1303, line: 540, baseType: !341, size: 64, offset: 1536)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !3223, file: !1303, line: 541, baseType: !341, size: 64, offset: 1600)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !3223, file: !1303, line: 542, baseType: !341, size: 64, offset: 1664)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !3223, file: !1303, line: 543, baseType: !341, size: 64, offset: 1728)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !3102, file: !1303, line: 833, baseType: !13, size: 32, offset: 7680)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !3102, file: !1303, line: 836, baseType: !13, size: 32, offset: 7712)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !3102, file: !1303, line: 837, baseType: !102, size: 32, offset: 7744)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !3102, file: !1303, line: 838, baseType: !3257, size: 64, offset: 7808)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3259)
!3259 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !3260, line: 19, baseType: !3261)
!3260 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!3261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !3260, line: 19, size: 64, elements: !3262)
!3262 = !{!3263}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3261, file: !3260, line: 19, baseType: !3264, size: 64)
!3264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !432, size: 64, elements: !3265)
!3265 = !{!3266}
!3266 = !DISubrange(count: 1)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !3102, file: !1303, line: 839, baseType: !3268, size: 64, offset: 7872)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !3102, file: !1303, line: 840, baseType: !3259, size: 64, offset: 7936)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !3102, file: !1303, line: 841, baseType: !155, size: 64, offset: 8000)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !3102, file: !1303, line: 843, baseType: !215, size: 16, offset: 8064)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !3102, file: !1303, line: 845, baseType: !215, size: 16, offset: 8080)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !3102, file: !1303, line: 848, baseType: !102, size: 32, offset: 8096)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !3102, file: !1303, line: 849, baseType: !3275, size: 32, offset: 8128)
!3275 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1303, line: 718, size: 32, elements: !3276)
!3276 = !{!3277, !3284}
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3275, file: !1303, line: 724, baseType: !3278, size: 32)
!3278 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3275, file: !1303, line: 719, size: 32, elements: !3279)
!3279 = !{!3280, !3281, !3282, !3283}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3278, file: !1303, line: 720, baseType: !203, size: 8)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !3278, file: !1303, line: 721, baseType: !203, size: 8, offset: 8)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !3278, file: !1303, line: 722, baseType: !203, size: 8, offset: 16)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !3278, file: !1303, line: 723, baseType: !203, size: 8, offset: 24)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3275, file: !1303, line: 725, baseType: !337, size: 32)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !3102, file: !1303, line: 850, baseType: !160, size: 128, offset: 8192)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !3102, file: !1303, line: 851, baseType: !3287, size: 64, offset: 8320)
!3287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3288, size: 64)
!3288 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1303, line: 60, flags: DIFlagFwdDecl)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !3102, file: !1303, line: 855, baseType: !432, size: 64, offset: 8384)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !3102, file: !1303, line: 856, baseType: !203, size: 8, offset: 8448)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !3102, file: !1303, line: 857, baseType: !203, size: 8, offset: 8456)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !3102, file: !1303, line: 858, baseType: !102, size: 32, offset: 8480)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !3102, file: !1303, line: 859, baseType: !160, size: 128, offset: 8512)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !3102, file: !1303, line: 860, baseType: !102, size: 32, offset: 8640)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !3102, file: !1303, line: 861, baseType: !160, size: 128, offset: 8704)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !3102, file: !1303, line: 873, baseType: !3297, size: 256, offset: 8832)
!3297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1303, line: 376, size: 256, elements: !3298)
!3298 = !{!3299, !3300, !3301, !3302}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !3297, file: !1303, line: 381, baseType: !432, size: 64)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !3297, file: !1303, line: 384, baseType: !343, size: 64, offset: 64)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !3297, file: !1303, line: 389, baseType: !343, size: 64, offset: 128)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !3297, file: !1303, line: 392, baseType: !343, size: 64, offset: 192)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3102, file: !1303, line: 875, baseType: !160, size: 128, offset: 9088)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !3102, file: !1303, line: 877, baseType: !3305, size: 320, offset: 9216)
!3305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !3306, line: 86, size: 320, elements: !3307)
!3306 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!3307 = !{!3308, !3309, !3310}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3305, file: !3306, line: 87, baseType: !102, size: 32)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !3305, file: !3306, line: 88, baseType: !160, size: 128, offset: 64)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !3305, file: !3306, line: 89, baseType: !160, size: 128, offset: 192)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !3102, file: !1303, line: 878, baseType: !608, size: 192, align: 64, offset: 9536)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !3102, file: !1303, line: 881, baseType: !768, size: 64, offset: 9728)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !3102, file: !1303, line: 882, baseType: !768, size: 64, offset: 9792)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !3102, file: !1303, line: 884, baseType: !102, size: 32, offset: 9856)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !3102, file: !1303, line: 885, baseType: !102, size: 32, offset: 9888)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !3102, file: !1303, line: 886, baseType: !102, size: 32, offset: 9920)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !3102, file: !1303, line: 888, baseType: !102, size: 32, offset: 9952)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !3102, file: !1303, line: 890, baseType: !432, size: 64, offset: 9984)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !3102, file: !1303, line: 893, baseType: !13, size: 32, offset: 10048)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !3102, file: !1303, line: 896, baseType: !13, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !3102, file: !1303, line: 897, baseType: !13, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !3102, file: !1303, line: 898, baseType: !13, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !3102, file: !1303, line: 899, baseType: !13, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !3102, file: !1303, line: 919, baseType: !13, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !3102, file: !1303, line: 922, baseType: !13, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !3102, file: !1303, line: 923, baseType: !13, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !3102, file: !1303, line: 925, baseType: !13, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !3102, file: !1303, line: 939, baseType: !13, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3102, file: !1303, line: 941, baseType: !13, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !3102, file: !1303, line: 944, baseType: !13, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !3102, file: !1303, line: 956, baseType: !13, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !3102, file: !1303, line: 962, baseType: !13, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !3102, file: !1303, line: 966, baseType: !13, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !3102, file: !1303, line: 969, baseType: !432, size: 64, offset: 10176)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !3102, file: !1303, line: 971, baseType: !3336, size: 448, offset: 10240)
!3336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !135, line: 25, size: 448, elements: !3337)
!3337 = !{!3338, !3339, !3344}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3336, file: !135, line: 26, baseType: !432, size: 64)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3336, file: !135, line: 27, baseType: !3340, size: 64, offset: 64)
!3340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3341, size: 64)
!3341 = !DISubroutineType(types: !3342)
!3342 = !{!266, !3343}
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3344 = !DIDerivedType(tag: DW_TAG_member, scope: !3336, file: !135, line: 28, baseType: !3345, size: 320, offset: 128)
!3345 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3336, file: !135, line: 28, size: 320, elements: !3346)
!3346 = !{!3347, !3357, !3382}
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3345, file: !135, line: 37, baseType: !3348, size: 320)
!3348 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3345, file: !135, line: 30, size: 320, elements: !3349)
!3349 = !{!3350, !3352, !3353, !3354, !3355, !3356}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3348, file: !135, line: 31, baseType: !3351, size: 64)
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3348, file: !135, line: 32, baseType: !337, size: 32, offset: 64)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3348, file: !135, line: 33, baseType: !337, size: 32, offset: 96)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3348, file: !135, line: 34, baseType: !337, size: 32, offset: 128)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3348, file: !135, line: 35, baseType: !341, size: 64, offset: 192)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3348, file: !135, line: 36, baseType: !3351, size: 64, offset: 256)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3345, file: !135, line: 47, baseType: !3358, size: 192)
!3358 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3345, file: !135, line: 39, size: 192, elements: !3359)
!3359 = !{!3360, !3361, !3362, !3381}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3358, file: !135, line: 40, baseType: !2849, size: 32)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3358, file: !135, line: 41, baseType: !134, size: 32, offset: 32)
!3362 = !DIDerivedType(tag: DW_TAG_member, scope: !3358, file: !135, line: 42, baseType: !3363, size: 64, offset: 64)
!3363 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3358, file: !135, line: 42, size: 64, elements: !3364)
!3364 = !{!3365, !3373}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3363, file: !135, line: 43, baseType: !3366, size: 64)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3368, line: 7, size: 128, elements: !3369)
!3368 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3369 = !{!3370, !3372}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3367, file: !3368, line: 8, baseType: !3371, size: 64)
!3371 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !223, line: 93, baseType: !224)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3367, file: !3368, line: 9, baseType: !224, size: 64, offset: 64)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3363, file: !135, line: 44, baseType: !3374, size: 64)
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3375, size: 64)
!3375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3376, line: 7, size: 64, elements: !3377)
!3376 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3377 = !{!3378, !3380}
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3375, file: !3376, line: 8, baseType: !3379, size: 32)
!3379 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3376, line: 5, baseType: !926)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3375, file: !3376, line: 9, baseType: !926, size: 32, offset: 32)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3358, file: !135, line: 46, baseType: !341, size: 64, offset: 128)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3345, file: !135, line: 55, baseType: !3383, size: 256)
!3383 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3345, file: !135, line: 49, size: 256, elements: !3384)
!3384 = !{!3385, !3388, !3389, !3390, !3391}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3383, file: !135, line: 50, baseType: !3386, size: 64)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !135, line: 14, flags: DIFlagFwdDecl)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3383, file: !135, line: 51, baseType: !102, size: 32, offset: 64)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3383, file: !135, line: 52, baseType: !102, size: 32, offset: 96)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3383, file: !135, line: 53, baseType: !432, size: 64, offset: 128)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3383, file: !135, line: 54, baseType: !432, size: 64, offset: 192)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3102, file: !1303, line: 973, baseType: !3393, size: 32, offset: 10688)
!3393 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !154, line: 27, baseType: !3394)
!3394 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !223, line: 28, baseType: !102)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !3102, file: !1303, line: 974, baseType: !3393, size: 32, offset: 10720)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !3102, file: !1303, line: 978, baseType: !432, size: 64, offset: 10752)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !3102, file: !1303, line: 987, baseType: !3101, size: 64, offset: 10816)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3102, file: !1303, line: 990, baseType: !3101, size: 64, offset: 10880)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3102, file: !1303, line: 995, baseType: !160, size: 128, offset: 10944)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3102, file: !1303, line: 996, baseType: !160, size: 128, offset: 11072)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !3102, file: !1303, line: 997, baseType: !3101, size: 64, offset: 11200)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !3102, file: !1303, line: 1005, baseType: !160, size: 128, offset: 11264)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !3102, file: !1303, line: 1006, baseType: !160, size: 128, offset: 11392)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !3102, file: !1303, line: 1009, baseType: !849, size: 64, offset: 11520)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !3102, file: !1303, line: 1010, baseType: !3406, size: 512, offset: 11584)
!3406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 512, elements: !865)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !3102, file: !1303, line: 1011, baseType: !160, size: 128, offset: 12096)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !3102, file: !1303, line: 1012, baseType: !160, size: 128, offset: 12224)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !3102, file: !1303, line: 1014, baseType: !1929, size: 64, offset: 12352)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !3102, file: !1303, line: 1017, baseType: !2066, size: 64, offset: 12416)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !3102, file: !1303, line: 1020, baseType: !2066, size: 64, offset: 12480)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !3102, file: !1303, line: 1023, baseType: !155, size: 64, offset: 12544)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3102, file: !1303, line: 1025, baseType: !341, size: 64, offset: 12608)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3102, file: !1303, line: 1026, baseType: !341, size: 64, offset: 12672)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3102, file: !1303, line: 1031, baseType: !341, size: 64, offset: 12736)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3102, file: !1303, line: 1032, baseType: !3417, size: 192, offset: 12800)
!3417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1303, line: 324, size: 192, elements: !3418)
!3418 = !{!3419, !3420, !3421}
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3417, file: !1303, line: 326, baseType: !341, size: 64)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3417, file: !1303, line: 327, baseType: !341, size: 64, offset: 64)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3417, file: !1303, line: 328, baseType: !257, size: 32, offset: 128)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3102, file: !1303, line: 1041, baseType: !432, size: 64, offset: 12992)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3102, file: !1303, line: 1042, baseType: !432, size: 64, offset: 13056)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !3102, file: !1303, line: 1045, baseType: !341, size: 64, offset: 13120)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !3102, file: !1303, line: 1048, baseType: !341, size: 64, offset: 13184)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3102, file: !1303, line: 1051, baseType: !432, size: 64, offset: 13248)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3102, file: !1303, line: 1052, baseType: !432, size: 64, offset: 13312)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3102, file: !1303, line: 1055, baseType: !3429, size: 640, offset: 13376)
!3429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3430, line: 132, size: 640, elements: !3431)
!3430 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3431 = !{!3432, !3438, !3439}
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3429, file: !3430, line: 133, baseType: !3433, size: 576)
!3433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3434, size: 576, elements: !513)
!3434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3430, line: 117, size: 192, elements: !3435)
!3435 = !{!3436, !3437}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3434, file: !3430, line: 118, baseType: !341, size: 64)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3434, file: !3430, line: 119, baseType: !2858, size: 128, offset: 64)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3429, file: !3430, line: 134, baseType: !13, size: 32, offset: 576)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3429, file: !3430, line: 135, baseType: !13, size: 32, offset: 608)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !3102, file: !1303, line: 1058, baseType: !3441, size: 448, offset: 14016)
!3441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3430, line: 144, size: 448, elements: !3442)
!3442 = !{!3443, !3444, !3445}
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3441, file: !3430, line: 145, baseType: !710, size: 128, align: 64)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3441, file: !3430, line: 146, baseType: !815, size: 256, offset: 128)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3441, file: !3430, line: 147, baseType: !13, size: 32, offset: 384)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !3102, file: !1303, line: 1064, baseType: !891, size: 64, offset: 14464)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !3102, file: !1303, line: 1067, baseType: !891, size: 64, offset: 14528)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !3102, file: !1303, line: 1070, baseType: !891, size: 64, offset: 14592)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !3102, file: !1303, line: 1074, baseType: !918, size: 64, offset: 14656)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3102, file: !1303, line: 1084, baseType: !3451, size: 128, offset: 14720)
!3451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !3452)
!3452 = !{!3453}
!3453 = !DISubrange(count: 16)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !3102, file: !1303, line: 1086, baseType: !3455, size: 64, offset: 14848)
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1303, line: 55, flags: DIFlagFwdDecl)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !3102, file: !1303, line: 1089, baseType: !3458, size: 64, offset: 14912)
!3458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3459, line: 12, size: 64, elements: !3460)
!3459 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3460 = !{!3461}
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3458, file: !3459, line: 13, baseType: !3462, size: 64)
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3463, size: 64)
!3463 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3459, line: 8, flags: DIFlagFwdDecl)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !3102, file: !1303, line: 1090, baseType: !3465, size: 128, offset: 14976)
!3465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3466, line: 13, size: 128, elements: !3467)
!3466 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3467 = !{!3468}
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3465, file: !3466, line: 14, baseType: !160, size: 128)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !3102, file: !1303, line: 1097, baseType: !3470, size: 64, offset: 15104)
!3470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3471, size: 64)
!3471 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1303, line: 50, flags: DIFlagFwdDecl)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3102, file: !1303, line: 1100, baseType: !3473, size: 64, offset: 15168)
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3474, size: 64)
!3474 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1303, line: 1100, flags: DIFlagFwdDecl)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !3102, file: !1303, line: 1103, baseType: !3476, size: 64, offset: 15232)
!3476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3477, size: 64)
!3477 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1303, line: 53, flags: DIFlagFwdDecl)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !3102, file: !1303, line: 1107, baseType: !3479, size: 64, offset: 15296)
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3480, size: 64)
!3480 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1303, line: 56, flags: DIFlagFwdDecl)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3102, file: !1303, line: 1110, baseType: !3482, size: 64, offset: 15360)
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3484, line: 93, size: 8768, elements: !3485)
!3484 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3485 = !{!3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3533, !3542, !3543, !3545, !3546, !3547, !3550, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3588, !3589, !3596, !3606, !3609, !3610, !3613, !3614, !3615, !3616, !3617, !3618}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3483, file: !3484, line: 94, baseType: !853, size: 32)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3483, file: !3484, line: 95, baseType: !195, size: 32, offset: 32)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3483, file: !3484, line: 96, baseType: !102, size: 32, offset: 64)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3483, file: !3484, line: 97, baseType: !102, size: 32, offset: 96)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3483, file: !3484, line: 98, baseType: !160, size: 128, offset: 128)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3483, file: !3484, line: 100, baseType: !869, size: 192, offset: 256)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3483, file: !3484, line: 103, baseType: !3101, size: 64, offset: 448)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3483, file: !3484, line: 106, baseType: !3494, size: 192, offset: 512)
!3494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1069, line: 32, size: 192, elements: !3495)
!3495 = !{!3496, !3497}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3494, file: !1069, line: 33, baseType: !160, size: 128)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3494, file: !1069, line: 34, baseType: !3498, size: 64, offset: 128)
!3498 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3499, line: 25, baseType: !3500)
!3499 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3500 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3499, line: 23, size: 64, elements: !3501)
!3501 = !{!3502}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3500, file: !3499, line: 24, baseType: !3264, size: 64)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3483, file: !3484, line: 109, baseType: !862, size: 64, offset: 704)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3483, file: !3484, line: 112, baseType: !102, size: 32, offset: 768)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3483, file: !3484, line: 114, baseType: !102, size: 32, offset: 800)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3483, file: !3484, line: 115, baseType: !3101, size: 64, offset: 832)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3483, file: !3484, line: 118, baseType: !102, size: 32, offset: 896)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3483, file: !3484, line: 119, baseType: !13, size: 32, offset: 928)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3483, file: !3484, line: 121, baseType: !3510, size: 64, offset: 960)
!3510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3511, size: 64)
!3511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3484, line: 80, size: 448, elements: !3512)
!3512 = !{!3513, !3514, !3520}
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3511, file: !3484, line: 81, baseType: !195, size: 32)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3511, file: !3484, line: 82, baseType: !3515, size: 128, offset: 64)
!3515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3484, line: 75, size: 128, elements: !3516)
!3516 = !{!3517, !3518}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3515, file: !3484, line: 76, baseType: !3101, size: 64)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3515, file: !3484, line: 77, baseType: !3519, size: 64, offset: 64)
!3519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3515, size: 64)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3511, file: !3484, line: 83, baseType: !720, size: 256, offset: 192)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3483, file: !3484, line: 132, baseType: !13, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3483, file: !3484, line: 133, baseType: !13, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3483, file: !3484, line: 138, baseType: !13, size: 32, offset: 1056)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3483, file: !3484, line: 139, baseType: !160, size: 128, offset: 1088)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3483, file: !3484, line: 142, baseType: !2804, size: 512, offset: 1216)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3483, file: !3484, line: 143, baseType: !2784, size: 64, offset: 1728)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3483, file: !3484, line: 150, baseType: !3528, size: 256, offset: 1792)
!3528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3529, size: 256, elements: !2056)
!3529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3484, line: 38, size: 128, elements: !3530)
!3530 = !{!3531, !3532}
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3529, file: !3484, line: 39, baseType: !341, size: 64)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3529, file: !3484, line: 40, baseType: !341, size: 64, offset: 64)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3483, file: !3484, line: 156, baseType: !3534, size: 192, offset: 2048)
!3534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3484, line: 66, size: 192, elements: !3535)
!3535 = !{!3536}
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3534, file: !3484, line: 67, baseType: !3537, size: 192)
!3537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3484, line: 47, size: 192, elements: !3538)
!3538 = !{!3539, !3540, !3541}
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3537, file: !3484, line: 48, baseType: !244, size: 64)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3537, file: !3484, line: 49, baseType: !244, size: 64, offset: 64)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3537, file: !3484, line: 50, baseType: !244, size: 64, offset: 128)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3483, file: !3484, line: 160, baseType: !3429, size: 640, offset: 2240)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3483, file: !3484, line: 163, baseType: !3544, size: 256, offset: 2880)
!3544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !849, size: 256, elements: !865)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3483, file: !3484, line: 169, baseType: !849, size: 64, offset: 3136)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3483, file: !3484, line: 172, baseType: !102, size: 32, offset: 3200)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3483, file: !3484, line: 174, baseType: !3548, size: 64, offset: 3264)
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3549 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3484, line: 174, flags: DIFlagFwdDecl)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3483, file: !3484, line: 185, baseType: !3551, size: 64, offset: 3328)
!3551 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !310, line: 860, baseType: !3552)
!3552 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !310, line: 853, size: 64, elements: !3553)
!3553 = !{!3554, !3555}
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3552, file: !310, line: 858, baseType: !309, size: 32)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3552, file: !310, line: 859, baseType: !175, size: 32, offset: 32)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3483, file: !3484, line: 186, baseType: !341, size: 64, offset: 3392)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3483, file: !3484, line: 186, baseType: !341, size: 64, offset: 3456)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3483, file: !3484, line: 186, baseType: !341, size: 64, offset: 3520)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3483, file: !3484, line: 186, baseType: !341, size: 64, offset: 3584)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3483, file: !3484, line: 187, baseType: !341, size: 64, offset: 3648)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3483, file: !3484, line: 188, baseType: !341, size: 64, offset: 3712)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3483, file: !3484, line: 189, baseType: !3417, size: 192, offset: 3776)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3483, file: !3484, line: 190, baseType: !432, size: 64, offset: 3968)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3483, file: !3484, line: 190, baseType: !432, size: 64, offset: 4032)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3483, file: !3484, line: 190, baseType: !432, size: 64, offset: 4096)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3483, file: !3484, line: 190, baseType: !432, size: 64, offset: 4160)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3483, file: !3484, line: 191, baseType: !432, size: 64, offset: 4224)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3483, file: !3484, line: 191, baseType: !432, size: 64, offset: 4288)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3483, file: !3484, line: 191, baseType: !432, size: 64, offset: 4352)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3483, file: !3484, line: 191, baseType: !432, size: 64, offset: 4416)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3483, file: !3484, line: 192, baseType: !432, size: 64, offset: 4480)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3483, file: !3484, line: 192, baseType: !432, size: 64, offset: 4544)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3483, file: !3484, line: 192, baseType: !432, size: 64, offset: 4608)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3483, file: !3484, line: 192, baseType: !432, size: 64, offset: 4672)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3483, file: !3484, line: 193, baseType: !432, size: 64, offset: 4736)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3483, file: !3484, line: 193, baseType: !432, size: 64, offset: 4800)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3483, file: !3484, line: 194, baseType: !3578, size: 448, offset: 4864)
!3578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3579, line: 12, size: 448, elements: !3580)
!3579 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3580 = !{!3581, !3582, !3583, !3584, !3585, !3586, !3587}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3578, file: !3579, line: 15, baseType: !341, size: 64)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3578, file: !3579, line: 17, baseType: !341, size: 64, offset: 64)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3578, file: !3579, line: 19, baseType: !341, size: 64, offset: 128)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3578, file: !3579, line: 21, baseType: !341, size: 64, offset: 192)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3578, file: !3579, line: 29, baseType: !341, size: 64, offset: 256)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3578, file: !3579, line: 35, baseType: !341, size: 64, offset: 320)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3578, file: !3579, line: 44, baseType: !341, size: 64, offset: 384)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3483, file: !3484, line: 202, baseType: !343, size: 64, offset: 5312)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3483, file: !3484, line: 213, baseType: !3590, size: 2048, offset: 5376)
!3590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3591, size: 2048, elements: !3452)
!3591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3592, line: 43, size: 128, elements: !3593)
!3592 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3593 = !{!3594, !3595}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3591, file: !3592, line: 44, baseType: !558, size: 64)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3591, file: !3592, line: 45, baseType: !558, size: 64, offset: 64)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3483, file: !3484, line: 216, baseType: !3597, size: 448, offset: 7424)
!3597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3484, line: 30, size: 448, elements: !3598)
!3598 = !{!3599, !3600, !3601, !3602, !3603, !3604, !3605}
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3597, file: !3484, line: 31, baseType: !102, size: 32)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3597, file: !3484, line: 32, baseType: !266, size: 64, offset: 64)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3597, file: !3484, line: 33, baseType: !432, size: 64, offset: 128)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3597, file: !3484, line: 34, baseType: !341, size: 64, offset: 192)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3597, file: !3484, line: 34, baseType: !341, size: 64, offset: 256)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3597, file: !3484, line: 35, baseType: !432, size: 64, offset: 320)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3597, file: !3484, line: 35, baseType: !432, size: 64, offset: 384)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3483, file: !3484, line: 219, baseType: !3607, size: 64, offset: 7872)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3608 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3484, line: 219, flags: DIFlagFwdDecl)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3483, file: !3484, line: 222, baseType: !13, size: 32, offset: 7936)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3483, file: !3484, line: 223, baseType: !3611, size: 64, offset: 8000)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3484, line: 223, flags: DIFlagFwdDecl)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3483, file: !3484, line: 230, baseType: !706, size: 8, offset: 8064)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3483, file: !3484, line: 231, baseType: !952, size: 16, offset: 8080)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3483, file: !3484, line: 232, baseType: !952, size: 16, offset: 8096)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3483, file: !3484, line: 234, baseType: !768, size: 64, offset: 8128)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3483, file: !3484, line: 237, baseType: !815, size: 256, offset: 8192)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3483, file: !3484, line: 243, baseType: !238, size: 320, offset: 8448)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !3102, file: !1303, line: 1111, baseType: !3620, size: 64, offset: 15424)
!3620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3621, size: 64)
!3621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3484, line: 20, size: 16640, elements: !3622)
!3622 = !{!3623, !3624, !3625, !3626}
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3621, file: !3484, line: 21, baseType: !175, size: 32)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3621, file: !3484, line: 22, baseType: !853, size: 32, offset: 32)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3621, file: !3484, line: 23, baseType: !869, size: 192, offset: 64)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3621, file: !3484, line: 24, baseType: !3627, size: 16384, offset: 256)
!3627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3628, size: 16384, elements: !517)
!3628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1069, line: 51, size: 256, elements: !3629)
!3629 = !{!3630}
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3628, file: !1069, line: 52, baseType: !3631, size: 256)
!3631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1069, line: 37, size: 256, elements: !3632)
!3632 = !{!3633, !3640, !3641, !3645}
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3631, file: !1069, line: 39, baseType: !3634, size: 64)
!3634 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3635, line: 83, baseType: !3636)
!3635 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3637, size: 64)
!3637 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3635, line: 82, baseType: !3638)
!3638 = !DISubroutineType(types: !3639)
!3639 = !{null, !102}
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3631, file: !1069, line: 40, baseType: !432, size: 64, offset: 64)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3631, file: !1069, line: 46, baseType: !3642, size: 64, offset: 128)
!3642 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3635, line: 86, baseType: !3643)
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3644, size: 64)
!3644 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3635, line: 85, baseType: !2271)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3631, file: !1069, line: 48, baseType: !3498, size: 64, offset: 192)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3102, file: !1303, line: 1112, baseType: !3498, size: 64, offset: 15488)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !3102, file: !1303, line: 1113, baseType: !3498, size: 64, offset: 15552)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !3102, file: !1303, line: 1115, baseType: !3498, size: 64, offset: 15616)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !3102, file: !1303, line: 1116, baseType: !3494, size: 192, offset: 15680)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !3102, file: !1303, line: 1117, baseType: !432, size: 64, offset: 15872)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !3102, file: !1303, line: 1118, baseType: !556, size: 64, offset: 15936)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !3102, file: !1303, line: 1119, baseType: !13, size: 32, offset: 16000)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !3102, file: !1303, line: 1121, baseType: !713, size: 64, offset: 16064)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !3102, file: !1303, line: 1125, baseType: !3655, size: 64, offset: 16128)
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3656, size: 64)
!3656 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1303, line: 43, flags: DIFlagFwdDecl)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !3102, file: !1303, line: 1127, baseType: !274, size: 32, offset: 16192)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !3102, file: !1303, line: 1128, baseType: !13, size: 32, offset: 16224)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !3102, file: !1303, line: 1130, baseType: !3660, size: 128, offset: 16256)
!3660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3661, line: 37, size: 128, elements: !3662)
!3661 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3662 = !{!3663, !3664, !3665}
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3660, file: !3661, line: 38, baseType: !102, size: 32)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3660, file: !3661, line: 39, baseType: !195, size: 32, offset: 32)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3660, file: !3661, line: 40, baseType: !3666, size: 64, offset: 64)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3661, line: 24, flags: DIFlagFwdDecl)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !3102, file: !1303, line: 1131, baseType: !3669, size: 256, offset: 16384)
!3669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3670, line: 12, size: 256, elements: !3671)
!3670 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3671 = !{!3672, !3673, !3674, !3675}
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3669, file: !3670, line: 13, baseType: !412, size: 64)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3669, file: !3670, line: 14, baseType: !432, size: 64, offset: 64)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3669, file: !3670, line: 15, baseType: !432, size: 64, offset: 128)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3669, file: !3670, line: 16, baseType: !706, size: 8, offset: 192)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !3102, file: !1303, line: 1134, baseType: !341, size: 64, offset: 16640)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !3102, file: !1303, line: 1135, baseType: !341, size: 64, offset: 16704)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !3102, file: !1303, line: 1138, baseType: !175, size: 32, offset: 16768)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !3102, file: !1303, line: 1141, baseType: !257, size: 32, offset: 16800)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !3102, file: !1303, line: 1143, baseType: !3681, size: 64, offset: 16832)
!3681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1303, line: 735, size: 64, elements: !3682)
!3682 = !{!3683}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3681, file: !1303, line: 736, baseType: !3684, size: 64)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !3102, file: !1303, line: 1147, baseType: !600, size: 128, offset: 16896)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !3102, file: !1303, line: 1149, baseType: !3101, size: 64, offset: 17024)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !3102, file: !1303, line: 1151, baseType: !3688, size: 64, offset: 17088)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1303, line: 1151, flags: DIFlagFwdDecl)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !3102, file: !1303, line: 1188, baseType: !155, size: 64, offset: 17152)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !3102, file: !1303, line: 1191, baseType: !3692, size: 64, offset: 17216)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1303, line: 44, flags: DIFlagFwdDecl)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !3102, file: !1303, line: 1194, baseType: !3695, size: 64, offset: 17280)
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1303, line: 45, flags: DIFlagFwdDecl)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !3102, file: !1303, line: 1197, baseType: !3698, size: 64, offset: 17344)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1303, line: 61, flags: DIFlagFwdDecl)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !3102, file: !1303, line: 1199, baseType: !3701, size: 64, offset: 17408)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2578, line: 99, size: 128, elements: !3703)
!3703 = !{!3704, !3705, !3706}
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3702, file: !2578, line: 100, baseType: !242, size: 64)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3702, file: !2578, line: 101, baseType: !195, size: 32, offset: 64)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3702, file: !2578, line: 103, baseType: !215, size: 16, offset: 96)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !3102, file: !1303, line: 1202, baseType: !3708, size: 64, offset: 17472)
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1303, line: 48, flags: DIFlagFwdDecl)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !3102, file: !1303, line: 1205, baseType: !432, size: 64, offset: 17536)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !3102, file: !1303, line: 1206, baseType: !3712, size: 64, offset: 17600)
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3713, size: 64)
!3713 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1069, line: 14, baseType: !3714)
!3714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1069, line: 12, size: 384, elements: !3715)
!3715 = !{!3716}
!3716 = !DIDerivedType(tag: DW_TAG_member, scope: !3714, file: !1069, line: 13, baseType: !3717, size: 384)
!3717 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3714, file: !1069, line: 13, size: 384, elements: !3718)
!3718 = !{!3719, !3720, !3721, !3722}
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3717, file: !1069, line: 13, baseType: !102, size: 32)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3717, file: !1069, line: 13, baseType: !102, size: 32, offset: 32)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3717, file: !1069, line: 13, baseType: !102, size: 32, offset: 64)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3717, file: !1069, line: 13, baseType: !3723, size: 256, offset: 128)
!3723 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3724, line: 37, size: 256, elements: !3725)
!3724 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3725 = !{!3726, !3731, !3744, !3750, !3759, !3786, !3791}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3723, file: !3724, line: 42, baseType: !3727, size: 64)
!3727 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3723, file: !3724, line: 39, size: 64, elements: !3728)
!3728 = !{!3729, !3730}
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3727, file: !3724, line: 40, baseType: !3394, size: 32)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3727, file: !3724, line: 41, baseType: !280, size: 32, offset: 32)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3723, file: !3724, line: 50, baseType: !3732, size: 192)
!3732 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3723, file: !3724, line: 45, size: 192, elements: !3733)
!3733 = !{!3734, !3736, !3737, !3743}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3732, file: !3724, line: 46, baseType: !3735, size: 32)
!3735 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !223, line: 95, baseType: !102)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3732, file: !3724, line: 47, baseType: !102, size: 32, offset: 32)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3732, file: !3724, line: 48, baseType: !3738, size: 64, offset: 64)
!3738 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3724, line: 11, baseType: !3739)
!3739 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3724, line: 8, size: 64, elements: !3740)
!3740 = !{!3741, !3742}
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3739, file: !3724, line: 9, baseType: !102, size: 32)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3739, file: !3724, line: 10, baseType: !155, size: 64)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3732, file: !3724, line: 49, baseType: !102, size: 32, offset: 128)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3723, file: !3724, line: 57, baseType: !3745, size: 128)
!3745 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3723, file: !3724, line: 53, size: 128, elements: !3746)
!3746 = !{!3747, !3748, !3749}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3745, file: !3724, line: 54, baseType: !3394, size: 32)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3745, file: !3724, line: 55, baseType: !280, size: 32, offset: 32)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3745, file: !3724, line: 56, baseType: !3738, size: 64, offset: 64)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3723, file: !3724, line: 66, baseType: !3751, size: 256)
!3751 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3723, file: !3724, line: 60, size: 256, elements: !3752)
!3752 = !{!3753, !3754, !3755, !3756, !3758}
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3751, file: !3724, line: 61, baseType: !3394, size: 32)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3751, file: !3724, line: 62, baseType: !280, size: 32, offset: 32)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3751, file: !3724, line: 63, baseType: !102, size: 32, offset: 64)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3751, file: !3724, line: 64, baseType: !3757, size: 64, offset: 128)
!3757 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !223, line: 94, baseType: !546)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3751, file: !3724, line: 65, baseType: !3757, size: 64, offset: 192)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3723, file: !3724, line: 105, baseType: !3760, size: 256)
!3760 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3723, file: !3724, line: 69, size: 256, elements: !3761)
!3761 = !{!3762, !3763}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3760, file: !3724, line: 70, baseType: !155, size: 64)
!3763 = !DIDerivedType(tag: DW_TAG_member, scope: !3760, file: !3724, line: 79, baseType: !3764, size: 192, offset: 64)
!3764 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3760, file: !3724, line: 79, size: 192, elements: !3765)
!3765 = !{!3766, !3767, !3768, !3775, !3780}
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3764, file: !3724, line: 81, baseType: !102, size: 32)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3764, file: !3724, line: 86, baseType: !952, size: 16)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3764, file: !3724, line: 92, baseType: !3769, size: 192)
!3769 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3764, file: !3724, line: 88, size: 192, elements: !3770)
!3770 = !{!3771, !3773, !3774}
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3769, file: !3724, line: 89, baseType: !3772, size: 64)
!3772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !2845)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3769, file: !3724, line: 90, baseType: !155, size: 64, offset: 64)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3769, file: !3724, line: 91, baseType: !155, size: 64, offset: 128)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3764, file: !3724, line: 97, baseType: !3776, size: 96)
!3776 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3764, file: !3724, line: 94, size: 96, elements: !3777)
!3777 = !{!3778, !3779}
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3776, file: !3724, line: 95, baseType: !3772, size: 64)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3776, file: !3724, line: 96, baseType: !338, size: 32, offset: 64)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3764, file: !3724, line: 103, baseType: !3781, size: 128)
!3781 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3764, file: !3724, line: 99, size: 128, elements: !3782)
!3782 = !{!3783, !3784, !3785}
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3781, file: !3724, line: 100, baseType: !432, size: 64)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3781, file: !3724, line: 101, baseType: !338, size: 32, offset: 64)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3781, file: !3724, line: 102, baseType: !338, size: 32, offset: 96)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3723, file: !3724, line: 111, baseType: !3787, size: 128)
!3787 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3723, file: !3724, line: 108, size: 128, elements: !3788)
!3788 = !{!3789, !3790}
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3787, file: !3724, line: 109, baseType: !266, size: 64)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3787, file: !3724, line: 110, baseType: !102, size: 32, offset: 64)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3723, file: !3724, line: 118, baseType: !3792, size: 128)
!3792 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3723, file: !3724, line: 114, size: 128, elements: !3793)
!3793 = !{!3794, !3795, !3796}
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3792, file: !3724, line: 115, baseType: !155, size: 64)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3792, file: !3724, line: 116, baseType: !102, size: 32, offset: 64)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3792, file: !3724, line: 117, baseType: !13, size: 32, offset: 96)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3102, file: !1303, line: 1208, baseType: !3578, size: 448, offset: 17664)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !3102, file: !1303, line: 1215, baseType: !341, size: 64, offset: 18112)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !3102, file: !1303, line: 1217, baseType: !341, size: 64, offset: 18176)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !3102, file: !1303, line: 1219, baseType: !341, size: 64, offset: 18240)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !3102, file: !1303, line: 1223, baseType: !3802, size: 64, offset: 18304)
!3802 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3803, line: 99, baseType: !3804)
!3803 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3804 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3803, line: 99, size: 64, elements: !3805)
!3805 = !{!3806}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3804, file: !3803, line: 99, baseType: !3264, size: 64)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !3102, file: !1303, line: 1225, baseType: !309, size: 32, offset: 18368)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !3102, file: !1303, line: 1226, baseType: !102, size: 32, offset: 18400)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !3102, file: !1303, line: 1227, baseType: !102, size: 32, offset: 18432)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !3102, file: !1303, line: 1231, baseType: !3811, size: 64, offset: 18496)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1303, line: 1231, flags: DIFlagFwdDecl)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !3102, file: !1303, line: 1233, baseType: !160, size: 128, offset: 18560)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !3102, file: !1303, line: 1240, baseType: !3815, size: 64, offset: 18688)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1303, line: 62, flags: DIFlagFwdDecl)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !3102, file: !1303, line: 1242, baseType: !3818, size: 64, offset: 18752)
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1303, line: 1242, flags: DIFlagFwdDecl)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !3102, file: !1303, line: 1244, baseType: !160, size: 128, offset: 18816)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !3102, file: !1303, line: 1245, baseType: !3822, size: 64, offset: 18944)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1303, line: 51, flags: DIFlagFwdDecl)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !3102, file: !1303, line: 1246, baseType: !815, size: 256, offset: 19008)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !3102, file: !1303, line: 1247, baseType: !13, size: 32, offset: 19264)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !3102, file: !1303, line: 1250, baseType: !3827, size: 64, offset: 19328)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1303, line: 57, flags: DIFlagFwdDecl)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !3102, file: !1303, line: 1251, baseType: !815, size: 256, offset: 19392)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !3102, file: !1303, line: 1252, baseType: !160, size: 128, offset: 19648)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !3102, file: !1303, line: 1259, baseType: !1575, size: 64, offset: 19776)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !3102, file: !1303, line: 1260, baseType: !952, size: 16, offset: 19840)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !3102, file: !1303, line: 1261, baseType: !952, size: 16, offset: 19856)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !3102, file: !1303, line: 1314, baseType: !3835, size: 64, offset: 19904)
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3837, line: 62, size: 256, align: 256, elements: !3838)
!3837 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3838 = !{!3839, !3840, !3841, !3842, !3843, !3844, !3845}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3836, file: !3837, line: 75, baseType: !338, size: 32)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3836, file: !3837, line: 90, baseType: !338, size: 32, offset: 32)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3836, file: !3837, line: 112, baseType: !342, size: 64, offset: 64)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3836, file: !3837, line: 132, baseType: !338, size: 32, offset: 128)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3836, file: !3837, line: 140, baseType: !338, size: 32, offset: 160)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3836, file: !3837, line: 149, baseType: !338, size: 32, offset: 192)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3836, file: !3837, line: 154, baseType: !3846, offset: 224)
!3846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !884)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !3102, file: !1303, line: 1315, baseType: !337, size: 32, offset: 19968)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !3102, file: !1303, line: 1316, baseType: !337, size: 32, offset: 20000)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !3102, file: !1303, line: 1321, baseType: !432, size: 64, offset: 20032)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3102, file: !1303, line: 1325, baseType: !102, size: 32, offset: 20096)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !3102, file: !1303, line: 1326, baseType: !102, size: 32, offset: 20128)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !3102, file: !1303, line: 1327, baseType: !102, size: 32, offset: 20160)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !3102, file: !1303, line: 1328, baseType: !102, size: 32, offset: 20192)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !3102, file: !1303, line: 1329, baseType: !710, size: 128, align: 64, offset: 20224)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !3102, file: !1303, line: 1332, baseType: !3856, size: 128, offset: 20352)
!3856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3857, line: 51, size: 128, elements: !3858)
!3857 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3858 = !{!3859, !3864, !3865}
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3856, file: !3857, line: 60, baseType: !3860, size: 64)
!3860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3861, line: 7, size: 64, elements: !3862)
!3861 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3862 = !{!3863}
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3860, file: !3861, line: 12, baseType: !3261, size: 64)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3856, file: !3857, line: 63, baseType: !706, size: 8, offset: 64)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3856, file: !3857, line: 70, baseType: !706, size: 8, offset: 72)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !3102, file: !1303, line: 1335, baseType: !1301, size: 64, offset: 20480)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !3102, file: !1303, line: 1337, baseType: !3868, size: 128, offset: 20544)
!3868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3857, line: 39, size: 128, elements: !3869)
!3869 = !{!3870, !3871, !3872}
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3868, file: !3857, line: 40, baseType: !625, size: 64)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3868, file: !3857, line: 42, baseType: !338, size: 32, offset: 64)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3868, file: !3857, line: 43, baseType: !338, size: 32, offset: 96)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !3102, file: !1303, line: 1340, baseType: !3874, size: 64, offset: 20672)
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3875 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1303, line: 69, flags: DIFlagFwdDecl)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !3102, file: !1303, line: 1351, baseType: !102, size: 32, offset: 20736)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !3102, file: !1303, line: 1352, baseType: !102, size: 32, offset: 20768)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !3102, file: !1303, line: 1354, baseType: !432, size: 64, offset: 20800)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !3102, file: !1303, line: 1364, baseType: !341, size: 64, offset: 20864)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !3102, file: !1303, line: 1365, baseType: !341, size: 64, offset: 20928)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !3102, file: !1303, line: 1412, baseType: !432, size: 64, offset: 20992)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !3102, file: !1303, line: 1453, baseType: !2573, size: 64, offset: 21056)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !3102, file: !1303, line: 1457, baseType: !3884, size: 64, offset: 21120)
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!3885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !141, line: 61, size: 576, elements: !3886)
!3886 = !{!3887, !3888, !3907, !3910, !3911, !3944, !3954}
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3885, file: !141, line: 62, baseType: !140, size: 32)
!3888 = !DIDerivedType(tag: DW_TAG_member, scope: !3885, file: !141, line: 64, baseType: !3889, size: 192, offset: 64)
!3889 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3885, file: !141, line: 64, size: 192, elements: !3890)
!3890 = !{!3891, !3902}
!3891 = !DIDerivedType(tag: DW_TAG_member, scope: !3889, file: !141, line: 65, baseType: !3892, size: 192)
!3892 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3889, file: !141, line: 65, size: 192, elements: !3893)
!3893 = !{!3894, !3901}
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3892, file: !141, line: 66, baseType: !3895, size: 128)
!3895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3896, line: 50, size: 128, elements: !3897)
!3896 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3897 = !{!3898, !3899, !3900}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3895, file: !3896, line: 52, baseType: !432, size: 64)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3895, file: !3896, line: 54, baseType: !13, size: 32, offset: 64)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3895, file: !3896, line: 55, baseType: !13, size: 32, offset: 96)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3892, file: !141, line: 67, baseType: !432, size: 64, offset: 128)
!3902 = !DIDerivedType(tag: DW_TAG_member, scope: !3889, file: !141, line: 70, baseType: !3903, size: 192)
!3903 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3889, file: !141, line: 70, size: 192, elements: !3904)
!3904 = !{!3905, !3906}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3903, file: !141, line: 71, baseType: !710, size: 128, align: 64)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3903, file: !141, line: 72, baseType: !432, size: 64, offset: 128)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3885, file: !141, line: 76, baseType: !3908, size: 64, offset: 256)
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3909, size: 64)
!3909 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !141, line: 76, flags: DIFlagFwdDecl)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3885, file: !141, line: 77, baseType: !432, size: 64, offset: 320)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3885, file: !141, line: 79, baseType: !3912, size: 64, offset: 384)
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3896, line: 25, size: 256, elements: !3914)
!3914 = !{!3915, !3921, !3925}
!3915 = !DIDerivedType(tag: DW_TAG_member, scope: !3913, file: !3896, line: 26, baseType: !3916, size: 128)
!3916 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3913, file: !3896, line: 26, size: 128, elements: !3917)
!3917 = !{!3918, !3920}
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3916, file: !3896, line: 27, baseType: !3919, size: 128)
!3919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 128, elements: !3452)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3916, file: !3896, line: 28, baseType: !3919, size: 128)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3913, file: !3896, line: 31, baseType: !3922, size: 64, offset: 128)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3924)
!3924 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3896, line: 23, flags: DIFlagFwdDecl)
!3925 = !DIDerivedType(tag: DW_TAG_member, scope: !3913, file: !3896, line: 33, baseType: !3926, size: 64, offset: 192)
!3926 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3913, file: !3896, line: 33, size: 64, elements: !3927)
!3927 = !{!3928, !3934, !3939}
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3926, file: !3896, line: 38, baseType: !3929, size: 64)
!3929 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3926, file: !3896, line: 34, size: 64, elements: !3930)
!3930 = !{!3931, !3932, !3933}
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3929, file: !3896, line: 35, baseType: !926, size: 32)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3929, file: !3896, line: 36, baseType: !203, size: 8, offset: 32)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3929, file: !3896, line: 37, baseType: !203, size: 8, offset: 40)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3926, file: !3896, line: 42, baseType: !3935, size: 16)
!3935 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3926, file: !3896, line: 39, size: 16, elements: !3936)
!3936 = !{!3937, !3938}
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3935, file: !3896, line: 40, baseType: !203, size: 8)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3935, file: !3896, line: 41, baseType: !203, size: 8, offset: 8)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3926, file: !3896, line: 46, baseType: !3940, size: 16)
!3940 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3926, file: !3896, line: 43, size: 16, elements: !3941)
!3941 = !{!3942, !3943}
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3940, file: !3896, line: 44, baseType: !203, size: 8)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3940, file: !3896, line: 45, baseType: !203, size: 8, offset: 8)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3885, file: !141, line: 81, baseType: !3945, size: 64, offset: 448)
!3945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3946, size: 64)
!3946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !141, line: 85, size: 384, elements: !3947)
!3947 = !{!3948, !3949, !3950, !3951, !3952, !3953}
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3946, file: !141, line: 86, baseType: !3908, size: 64)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3946, file: !141, line: 87, baseType: !432, size: 64, offset: 64)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3946, file: !141, line: 88, baseType: !432, size: 64, offset: 128)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3946, file: !141, line: 89, baseType: !432, size: 64, offset: 192)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3946, file: !141, line: 90, baseType: !706, size: 8, offset: 256)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3946, file: !141, line: 92, baseType: !3945, size: 64, offset: 320)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3885, file: !141, line: 82, baseType: !13, size: 32, offset: 512)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !3102, file: !1303, line: 1463, baseType: !3956, offset: 21184)
!3956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1303, line: 739, elements: !789)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3102, file: !1303, line: 1470, baseType: !710, size: 128, align: 64, offset: 21184)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3102, file: !1303, line: 1471, baseType: !853, size: 32, offset: 21312)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !3102, file: !1303, line: 1472, baseType: !102, size: 32, offset: 21344)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !3102, file: !1303, line: 1474, baseType: !3101, size: 64, offset: 21376)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !3102, file: !1303, line: 1475, baseType: !2166, size: 320, offset: 21440)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !3102, file: !1303, line: 1478, baseType: !3963, size: 64, offset: 21760)
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3964 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3965, line: 14, flags: DIFlagFwdDecl)
!3965 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !3102, file: !1303, line: 1482, baseType: !853, size: 32, offset: 21824)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3102, file: !1303, line: 1489, baseType: !155, size: 64, offset: 21888)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !3102, file: !1303, line: 1504, baseType: !155, size: 64, offset: 21952)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !3102, file: !1303, line: 1505, baseType: !342, size: 64, offset: 22016)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !3102, file: !1303, line: 1506, baseType: !341, size: 64, offset: 22080)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !3102, file: !1303, line: 1507, baseType: !342, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !3102, file: !1303, line: 1508, baseType: !342, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !3102, file: !1303, line: 1509, baseType: !342, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !3102, file: !1303, line: 1510, baseType: !710, size: 128, align: 64, offset: 22208)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !3102, file: !1303, line: 1511, baseType: !102, size: 32, offset: 22336)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !3102, file: !1303, line: 1515, baseType: !3977, size: 64, offset: 22400)
!3977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !804, line: 56, size: 64, elements: !3978)
!3978 = !{!3979}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3977, file: !804, line: 57, baseType: !807, size: 64)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !3102, file: !1303, line: 1518, baseType: !3977, size: 64, offset: 22464)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !3102, file: !1303, line: 1528, baseType: !710, size: 128, align: 64, offset: 22528)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !3102, file: !1303, line: 1552, baseType: !3983, size: 35328, offset: 23040)
!3983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3984, line: 430, size: 35328, elements: !3985)
!3984 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3985 = !{!3986, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4015, !4016, !4017, !4018, !4019, !4020, !4023, !4024, !4025, !4026}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3983, file: !3984, line: 432, baseType: !3987, size: 192)
!3987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3988, size: 192, elements: !513)
!3988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3989, line: 16, size: 64, elements: !3990)
!3989 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3990 = !{!3991, !3992, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4003}
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3988, file: !3989, line: 17, baseType: !213, size: 16)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3988, file: !3989, line: 18, baseType: !213, size: 16, offset: 16)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3988, file: !3989, line: 19, baseType: !213, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3988, file: !3989, line: 19, baseType: !213, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3988, file: !3989, line: 19, baseType: !213, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3988, file: !3989, line: 19, baseType: !213, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3988, file: !3989, line: 19, baseType: !213, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3988, file: !3989, line: 20, baseType: !213, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3988, file: !3989, line: 20, baseType: !213, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3988, file: !3989, line: 20, baseType: !213, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3988, file: !3989, line: 20, baseType: !213, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3988, file: !3989, line: 20, baseType: !213, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3988, file: !3989, line: 20, baseType: !213, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3983, file: !3984, line: 436, baseType: !432, size: 64, offset: 192)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3983, file: !3984, line: 440, baseType: !215, size: 16, offset: 256)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3983, file: !3984, line: 441, baseType: !215, size: 16, offset: 272)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3983, file: !3984, line: 442, baseType: !215, size: 16, offset: 288)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3983, file: !3984, line: 443, baseType: !215, size: 16, offset: 304)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3983, file: !3984, line: 447, baseType: !432, size: 64, offset: 320)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3983, file: !3984, line: 448, baseType: !432, size: 64, offset: 384)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3983, file: !3984, line: 459, baseType: !4012, size: 256, offset: 448)
!4012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4013, size: 256, elements: !865)
!4013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4014, size: 64)
!4014 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3984, line: 428, flags: DIFlagFwdDecl)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3983, file: !3984, line: 461, baseType: !432, size: 64, offset: 704)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3983, file: !3984, line: 463, baseType: !432, size: 64, offset: 768)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3983, file: !3984, line: 465, baseType: !432, size: 64, offset: 832)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3983, file: !3984, line: 466, baseType: !432, size: 64, offset: 896)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3983, file: !3984, line: 467, baseType: !432, size: 64, offset: 960)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3983, file: !3984, line: 473, baseType: !4021, size: 64, offset: 1024)
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4022, size: 64)
!4022 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3984, line: 10, flags: DIFlagFwdDecl)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3983, file: !3984, line: 480, baseType: !432, size: 64, offset: 1088)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3983, file: !3984, line: 482, baseType: !13, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3983, file: !3984, line: 491, baseType: !337, size: 32, offset: 1184)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3983, file: !3984, line: 501, baseType: !4027, size: 33792, offset: 1536)
!4027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4028, line: 448, size: 33792, elements: !4029)
!4028 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4029 = !{!4030, !4031, !4032, !4194, !4195, !4201, !4202}
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4027, file: !4028, line: 461, baseType: !13, size: 32)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4027, file: !4028, line: 468, baseType: !432, size: 64, offset: 64)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4027, file: !4028, line: 476, baseType: !4033, size: 64, offset: 128)
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4034, size: 64)
!4034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4028, line: 356, size: 33280, align: 512, elements: !4035)
!4035 = !{!4036, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045}
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4034, file: !4028, line: 358, baseType: !13, size: 32)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4034, file: !4028, line: 361, baseType: !13, size: 32, offset: 32)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4034, file: !4028, line: 364, baseType: !341, size: 64, offset: 64)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4034, file: !4028, line: 367, baseType: !341, size: 64, offset: 128)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4034, file: !4028, line: 370, baseType: !341, size: 64, offset: 192)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4034, file: !4028, line: 373, baseType: !13, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4034, file: !4028, line: 376, baseType: !13, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4034, file: !4028, line: 391, baseType: !13, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4034, file: !4028, line: 394, baseType: !13, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4034, file: !4028, line: 397, baseType: !4046, size: 32768, offset: 512)
!4046 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4028, line: 348, size: 32768, elements: !4047)
!4047 = !{!4048, !4063, !4100, !4177, !4190}
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4046, file: !4028, line: 349, baseType: !4049, size: 896)
!4049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4028, line: 12, size: 896, elements: !4050)
!4050 = !{!4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4062}
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4049, file: !4028, line: 13, baseType: !337, size: 32)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4049, file: !4028, line: 14, baseType: !337, size: 32, offset: 32)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4049, file: !4028, line: 15, baseType: !337, size: 32, offset: 64)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4049, file: !4028, line: 16, baseType: !337, size: 32, offset: 96)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4049, file: !4028, line: 17, baseType: !337, size: 32, offset: 128)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4049, file: !4028, line: 18, baseType: !337, size: 32, offset: 160)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4049, file: !4028, line: 19, baseType: !337, size: 32, offset: 192)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4049, file: !4028, line: 22, baseType: !4059, size: 640, offset: 224)
!4059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !337, size: 640, elements: !4060)
!4060 = !{!4061}
!4061 = !DISubrange(count: 20)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4049, file: !4028, line: 25, baseType: !337, size: 32, offset: 864)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4046, file: !4028, line: 350, baseType: !4064, size: 4096, align: 128)
!4064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4028, line: 34, size: 4096, align: 128, elements: !4065)
!4065 = !{!4066, !4067, !4068, !4069, !4070, !4085, !4086, !4087, !4089, !4091, !4095}
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4064, file: !4028, line: 35, baseType: !213, size: 16)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4064, file: !4028, line: 36, baseType: !213, size: 16, offset: 16)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4064, file: !4028, line: 37, baseType: !213, size: 16, offset: 32)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4064, file: !4028, line: 38, baseType: !213, size: 16, offset: 48)
!4070 = !DIDerivedType(tag: DW_TAG_member, scope: !4064, file: !4028, line: 39, baseType: !4071, size: 128, offset: 64)
!4071 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4064, file: !4028, line: 39, size: 128, elements: !4072)
!4072 = !{!4073, !4078}
!4073 = !DIDerivedType(tag: DW_TAG_member, scope: !4071, file: !4028, line: 40, baseType: !4074, size: 128)
!4074 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4071, file: !4028, line: 40, size: 128, elements: !4075)
!4075 = !{!4076, !4077}
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4074, file: !4028, line: 41, baseType: !341, size: 64)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4074, file: !4028, line: 42, baseType: !341, size: 64, offset: 64)
!4078 = !DIDerivedType(tag: DW_TAG_member, scope: !4071, file: !4028, line: 44, baseType: !4079, size: 128)
!4079 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4071, file: !4028, line: 44, size: 128, elements: !4080)
!4080 = !{!4081, !4082, !4083, !4084}
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4079, file: !4028, line: 45, baseType: !337, size: 32)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4079, file: !4028, line: 46, baseType: !337, size: 32, offset: 32)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4079, file: !4028, line: 47, baseType: !337, size: 32, offset: 64)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4079, file: !4028, line: 48, baseType: !337, size: 32, offset: 96)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4064, file: !4028, line: 51, baseType: !337, size: 32, offset: 192)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4064, file: !4028, line: 52, baseType: !337, size: 32, offset: 224)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4064, file: !4028, line: 55, baseType: !4088, size: 1024, offset: 256)
!4088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !337, size: 1024, elements: !351)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4064, file: !4028, line: 58, baseType: !4090, size: 2048, offset: 1280)
!4090 = !DICompositeType(tag: DW_TAG_array_type, baseType: !337, size: 2048, elements: !517)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4064, file: !4028, line: 60, baseType: !4092, size: 384, offset: 3328)
!4092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !337, size: 384, elements: !4093)
!4093 = !{!4094}
!4094 = !DISubrange(count: 12)
!4095 = !DIDerivedType(tag: DW_TAG_member, scope: !4064, file: !4028, line: 62, baseType: !4096, size: 384, offset: 3712)
!4096 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4064, file: !4028, line: 62, size: 384, elements: !4097)
!4097 = !{!4098, !4099}
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4096, file: !4028, line: 63, baseType: !4092, size: 384)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4096, file: !4028, line: 64, baseType: !4092, size: 384)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4046, file: !4028, line: 351, baseType: !4101, size: 1088)
!4101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4028, line: 79, size: 1088, elements: !4102)
!4102 = !{!4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4176}
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4101, file: !4028, line: 80, baseType: !337, size: 32)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4101, file: !4028, line: 81, baseType: !337, size: 32, offset: 32)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4101, file: !4028, line: 82, baseType: !337, size: 32, offset: 64)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4101, file: !4028, line: 83, baseType: !337, size: 32, offset: 96)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4101, file: !4028, line: 84, baseType: !337, size: 32, offset: 128)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4101, file: !4028, line: 85, baseType: !337, size: 32, offset: 160)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4101, file: !4028, line: 86, baseType: !337, size: 32, offset: 192)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4101, file: !4028, line: 88, baseType: !4059, size: 640, offset: 224)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4101, file: !4028, line: 89, baseType: !203, size: 8, offset: 864)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4101, file: !4028, line: 90, baseType: !203, size: 8, offset: 872)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4101, file: !4028, line: 91, baseType: !203, size: 8, offset: 880)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4101, file: !4028, line: 92, baseType: !203, size: 8, offset: 888)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4101, file: !4028, line: 93, baseType: !203, size: 8, offset: 896)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4101, file: !4028, line: 94, baseType: !203, size: 8, offset: 904)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4101, file: !4028, line: 95, baseType: !4118, size: 64, offset: 960)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4120, line: 11, size: 128, elements: !4121)
!4120 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4121 = !{!4122, !4123}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4119, file: !4120, line: 12, baseType: !266, size: 64)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4119, file: !4120, line: 13, baseType: !4124, size: 64, offset: 64)
!4124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4125, size: 64)
!4125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4126, line: 103, size: 1344, elements: !4127)
!4126 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4127 = !{!4128, !4129, !4130, !4131, !4132, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4156, !4157, !4158}
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4125, file: !4126, line: 109, baseType: !432, size: 64)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4125, file: !4126, line: 110, baseType: !432, size: 64, offset: 64)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4125, file: !4126, line: 111, baseType: !432, size: 64, offset: 128)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4125, file: !4126, line: 112, baseType: !432, size: 64, offset: 192)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4125, file: !4126, line: 113, baseType: !432, size: 64, offset: 256)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4125, file: !4126, line: 114, baseType: !432, size: 64, offset: 320)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4125, file: !4126, line: 117, baseType: !432, size: 64, offset: 384)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4125, file: !4126, line: 118, baseType: !432, size: 64, offset: 448)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4125, file: !4126, line: 119, baseType: !432, size: 64, offset: 512)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4125, file: !4126, line: 120, baseType: !432, size: 64, offset: 576)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4125, file: !4126, line: 121, baseType: !432, size: 64, offset: 640)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4125, file: !4126, line: 122, baseType: !432, size: 64, offset: 704)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4125, file: !4126, line: 123, baseType: !432, size: 64, offset: 768)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4125, file: !4126, line: 124, baseType: !432, size: 64, offset: 832)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4125, file: !4126, line: 125, baseType: !432, size: 64, offset: 896)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4125, file: !4126, line: 139, baseType: !432, size: 64, offset: 960)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4125, file: !4126, line: 142, baseType: !432, size: 64, offset: 1024)
!4145 = !DIDerivedType(tag: DW_TAG_member, scope: !4125, file: !4126, line: 144, baseType: !4146, size: 64, offset: 1088)
!4146 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4125, file: !4126, line: 144, size: 64, elements: !4147)
!4147 = !{!4148, !4149, !4150}
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4146, file: !4126, line: 146, baseType: !213, size: 16)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4146, file: !4126, line: 148, baseType: !341, size: 64)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4146, file: !4126, line: 150, baseType: !4151, size: 64)
!4151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4126, line: 59, size: 64, elements: !4152)
!4152 = !{!4153, !4154, !4155}
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4151, file: !4126, line: 61, baseType: !341, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4151, file: !4126, line: 63, baseType: !341, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4151, file: !4126, line: 65, baseType: !341, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4125, file: !4126, line: 153, baseType: !432, size: 64, offset: 1152)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4125, file: !4126, line: 154, baseType: !432, size: 64, offset: 1216)
!4158 = !DIDerivedType(tag: DW_TAG_member, scope: !4125, file: !4126, line: 156, baseType: !4159, size: 64, offset: 1280)
!4159 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4125, file: !4126, line: 156, size: 64, elements: !4160)
!4160 = !{!4161, !4162, !4163}
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4159, file: !4126, line: 158, baseType: !213, size: 16)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4159, file: !4126, line: 160, baseType: !341, size: 64)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4159, file: !4126, line: 162, baseType: !4164, size: 64)
!4164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4126, line: 69, size: 64, elements: !4165)
!4165 = !{!4166, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175}
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4164, file: !4126, line: 71, baseType: !341, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4164, file: !4126, line: 73, baseType: !341, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4164, file: !4126, line: 75, baseType: !341, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4164, file: !4126, line: 77, baseType: !341, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4164, file: !4126, line: 80, baseType: !341, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4164, file: !4126, line: 83, baseType: !341, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4164, file: !4126, line: 86, baseType: !341, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4164, file: !4126, line: 88, baseType: !341, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4164, file: !4126, line: 93, baseType: !341, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4164, file: !4126, line: 100, baseType: !341, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4101, file: !4028, line: 96, baseType: !337, size: 32, offset: 1024)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4046, file: !4028, line: 352, baseType: !4178, size: 4608, align: 512)
!4178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4028, line: 333, size: 4608, align: 512, elements: !4179)
!4179 = !{!4180, !4181, !4188}
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4178, file: !4028, line: 334, baseType: !4064, size: 4096, align: 128)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4178, file: !4028, line: 335, baseType: !4182, size: 512, offset: 4096)
!4182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4028, line: 312, size: 512, elements: !4183)
!4183 = !{!4184, !4185, !4186}
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4182, file: !4028, line: 313, baseType: !341, size: 64)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4182, file: !4028, line: 314, baseType: !341, size: 64, offset: 64)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4182, file: !4028, line: 315, baseType: !4187, size: 384, offset: 128)
!4187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !341, size: 384, elements: !970)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4178, file: !4028, line: 336, baseType: !4189, offset: 4608)
!4189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, elements: !884)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4046, file: !4028, line: 353, baseType: !4191, size: 32768)
!4191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 32768, elements: !4192)
!4192 = !{!4193}
!4193 = !DISubrange(count: 4096)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4027, file: !4028, line: 484, baseType: !4033, size: 64, offset: 192)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4027, file: !4028, line: 491, baseType: !4196, size: 128, offset: 256)
!4196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4028, line: 404, size: 128, elements: !4197)
!4197 = !{!4198, !4199, !4200}
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4196, file: !4028, line: 424, baseType: !341, size: 64)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4196, file: !4028, line: 432, baseType: !13, size: 32, offset: 64)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4196, file: !4028, line: 440, baseType: !13, size: 32, offset: 96)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4027, file: !4028, line: 498, baseType: !4196, size: 128, offset: 384)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4027, file: !4028, line: 508, baseType: !4034, size: 33280, align: 512, offset: 512)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3084, file: !3085, line: 16, baseType: !869, size: 192, offset: 512)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3084, file: !3085, line: 17, baseType: !195, size: 32, offset: 704)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !424, file: !65, line: 1240, baseType: !155, size: 64, offset: 6912)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !424, file: !65, line: 1243, baseType: !337, size: 32, offset: 6976)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !424, file: !65, line: 1245, baseType: !264, size: 64, offset: 7040)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !424, file: !65, line: 1246, baseType: !264, size: 64, offset: 7104)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !424, file: !65, line: 1248, baseType: !338, size: 32, offset: 7168)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !424, file: !65, line: 1249, baseType: !4211, size: 64, offset: 7232)
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4212, size: 64)
!4212 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !65, line: 634, flags: DIFlagFwdDecl)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !424, file: !65, line: 1252, baseType: !4214, size: 256, offset: 7296)
!4214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !351)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !424, file: !65, line: 1253, baseType: !4216, size: 128, offset: 7552)
!4216 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4217, line: 21, baseType: !4218)
!4217 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4218 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4217, line: 19, size: 128, elements: !4219)
!4219 = !{!4220}
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4218, file: !4217, line: 20, baseType: !4221, size: 128)
!4221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 128, elements: !3452)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !424, file: !65, line: 1255, baseType: !13, size: 32, offset: 7680)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !424, file: !65, line: 1261, baseType: !815, size: 256, offset: 7744)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !424, file: !65, line: 1267, baseType: !387, size: 64, offset: 8000)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !424, file: !65, line: 1269, baseType: !367, size: 64, offset: 8064)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !424, file: !65, line: 1271, baseType: !4227, size: 448, offset: 8128)
!4227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2407, line: 63, size: 448, elements: !4228)
!4228 = !{!4229, !4234, !4235, !4236, !4237, !4238, !4239}
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4227, file: !2407, line: 64, baseType: !4230, size: 64)
!4230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4231, size: 64)
!4231 = !DISubroutineType(types: !4232)
!4232 = !{!432, !4233, !2405}
!4233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4227, size: 64)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4227, file: !2407, line: 66, baseType: !4230, size: 64, offset: 64)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4227, file: !2407, line: 69, baseType: !266, size: 64, offset: 128)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4227, file: !2407, line: 70, baseType: !102, size: 32, offset: 192)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4227, file: !2407, line: 71, baseType: !13, size: 32, offset: 224)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4227, file: !2407, line: 74, baseType: !160, size: 128, offset: 256)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4227, file: !2407, line: 85, baseType: !4240, size: 64, offset: 384)
!4240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !424, file: !65, line: 1274, baseType: !242, size: 64, offset: 8576)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !424, file: !65, line: 1280, baseType: !242, size: 64, offset: 8640)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !424, file: !65, line: 1283, baseType: !102, size: 32, offset: 8704)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !424, file: !65, line: 1286, baseType: !1354, size: 32, offset: 8736)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !424, file: !65, line: 1289, baseType: !2228, size: 64, offset: 8768)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !424, file: !65, line: 1290, baseType: !862, size: 64, offset: 8832)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !424, file: !65, line: 1297, baseType: !1064, size: 64, offset: 8896)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !424, file: !65, line: 1304, baseType: !4249, size: 64, offset: 8960)
!4249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4250, line: 49, size: 64, elements: !4251)
!4250 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4251 = !{!4252}
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4249, file: !4250, line: 50, baseType: !4253, size: 64)
!4253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4250, line: 41, size: 512, align: 512, elements: !4255)
!4255 = !{!4256, !4257, !4262}
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4254, file: !4250, line: 43, baseType: !175, size: 32)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4254, file: !4250, line: 45, baseType: !4258, size: 192, offset: 64)
!4258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4250, line: 29, size: 192, elements: !4259)
!4259 = !{!4260, !4261}
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4258, file: !4250, line: 30, baseType: !160, size: 128)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4258, file: !4250, line: 32, baseType: !266, size: 64, offset: 128)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4254, file: !4250, line: 46, baseType: !266, size: 64, offset: 256)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !424, file: !65, line: 1305, baseType: !4249, size: 64, offset: 9024)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !424, file: !65, line: 1306, baseType: !710, size: 128, align: 64, offset: 9088)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !424, file: !65, line: 1307, baseType: !1484, size: 256, offset: 9216)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !424, file: !65, line: 1309, baseType: !815, size: 256, offset: 9472)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !424, file: !65, line: 1314, baseType: !102, size: 32, offset: 9728)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !424, file: !65, line: 1317, baseType: !175, size: 32, align: 512, offset: 10240)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !424, file: !65, line: 1318, baseType: !160, size: 128, offset: 10304)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !424, file: !65, line: 1320, baseType: !175, size: 32, offset: 10432)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !424, file: !65, line: 1321, baseType: !160, size: 128, offset: 10496)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !418, file: !419, line: 73, baseType: !102, size: 32, offset: 128)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !418, file: !419, line: 74, baseType: !4274, size: 64, offset: 192)
!4274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4275, size: 64)
!4275 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !908, line: 42, flags: DIFlagFwdDecl)
!4276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !369, file: !305, line: 141, baseType: !4278, size: 64, offset: 704)
!4278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4279, size: 64)
!4279 = !DISubroutineType(types: !4280)
!4280 = !{!102, !2467, !706}
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !369, file: !305, line: 142, baseType: !4282, size: 64, offset: 768)
!4282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4283, size: 64)
!4283 = !DISubroutineType(types: !4284)
!4284 = !{!303, !303, !4285}
!4285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4286, size: 64)
!4286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !268)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !304, file: !305, line: 96, baseType: !423, size: 64, offset: 832)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !304, file: !305, line: 97, baseType: !432, size: 64, offset: 896)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !304, file: !305, line: 98, baseType: !155, size: 64, offset: 960)
!4290 = !DIDerivedType(tag: DW_TAG_member, scope: !304, file: !305, line: 100, baseType: !4291, size: 128, offset: 1024)
!4291 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !304, file: !305, line: 100, size: 128, elements: !4292)
!4292 = !{!4293, !4294}
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4291, file: !305, line: 101, baseType: !160, size: 128)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4291, file: !305, line: 102, baseType: !4295, size: 64)
!4295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !304, file: !305, line: 104, baseType: !160, size: 128, offset: 1152)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !304, file: !305, line: 105, baseType: !160, size: 128, offset: 1280)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !304, file: !305, line: 113, baseType: !4299, size: 128, offset: 1408)
!4299 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !304, file: !305, line: 109, size: 128, elements: !4300)
!4300 = !{!4301, !4302, !4303}
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4299, file: !305, line: 110, baseType: !230, size: 128)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4299, file: !305, line: 111, baseType: !319, size: 128)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4299, file: !305, line: 112, baseType: !710, size: 128, align: 64)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !297, file: !65, line: 1968, baseType: !4305, size: 64, offset: 64)
!4305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4306, size: 64)
!4306 = !DISubroutineType(types: !4307)
!4307 = !{!387, !303, !348, !4308}
!4308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4309, size: 64)
!4309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4310, line: 10, size: 128, elements: !4311)
!4310 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4311 = !{!4312, !4313}
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4309, file: !4310, line: 11, baseType: !1796, size: 64)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4309, file: !4310, line: 12, baseType: !155, size: 64, offset: 64)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !297, file: !65, line: 1969, baseType: !4315, size: 64, offset: 128)
!4315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4316, size: 64)
!4316 = !DISubroutineType(types: !4317)
!4317 = !{!102, !4274, !348, !102}
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !297, file: !65, line: 1970, baseType: !4319, size: 64, offset: 192)
!4319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4320, size: 64)
!4320 = !DISubroutineType(types: !4321)
!4321 = !{!291, !348, !102, !706}
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !297, file: !65, line: 1972, baseType: !4323, size: 64, offset: 256)
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4324, size: 64)
!4324 = !DISubroutineType(types: !4325)
!4325 = !{!102, !303, !412, !102}
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !297, file: !65, line: 1974, baseType: !4327, size: 64, offset: 320)
!4327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4328, size: 64)
!4328 = !DISubroutineType(types: !4329)
!4329 = !{!102, !4274, !348, !303, !271, !706}
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !297, file: !65, line: 1976, baseType: !4331, size: 64, offset: 384)
!4331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4332, size: 64)
!4332 = !DISubroutineType(types: !4333)
!4333 = !{!102, !303, !348, !303}
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !297, file: !65, line: 1977, baseType: !4335, size: 64, offset: 448)
!4335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4336, size: 64)
!4336 = !DISubroutineType(types: !4337)
!4337 = !{!102, !348, !303}
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !297, file: !65, line: 1978, baseType: !4339, size: 64, offset: 512)
!4339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4340, size: 64)
!4340 = !DISubroutineType(types: !4341)
!4341 = !{!102, !4274, !348, !303, !387}
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !297, file: !65, line: 1980, baseType: !4343, size: 64, offset: 576)
!4343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4344, size: 64)
!4344 = !DISubroutineType(types: !4345)
!4345 = !{!102, !4274, !348, !303, !271}
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !297, file: !65, line: 1982, baseType: !4335, size: 64, offset: 640)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !297, file: !65, line: 1983, baseType: !4348, size: 64, offset: 704)
!4348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4349, size: 64)
!4349 = !DISubroutineType(types: !4350)
!4350 = !{!102, !4274, !348, !303, !271, !428}
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !297, file: !65, line: 1985, baseType: !4352, size: 64, offset: 768)
!4352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4353, size: 64)
!4353 = !DISubroutineType(types: !4354)
!4354 = !{!102, !4274, !348, !303, !348, !303, !13}
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !297, file: !65, line: 1987, baseType: !4356, size: 64, offset: 832)
!4356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4357, size: 64)
!4357 = !DISubroutineType(types: !4358)
!4358 = !{!102, !4274, !303, !4359}
!4359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4360, size: 64)
!4360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !65, line: 226, size: 640, elements: !4361)
!4361 = !{!4362, !4363, !4364, !4374, !4383, !4384, !4385, !4386, !4387}
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4360, file: !65, line: 227, baseType: !13, size: 32)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4360, file: !65, line: 228, baseType: !271, size: 16, offset: 32)
!4364 = !DIDerivedType(tag: DW_TAG_member, scope: !4360, file: !65, line: 241, baseType: !4365, size: 32, offset: 64)
!4365 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4360, file: !65, line: 241, size: 32, elements: !4366)
!4366 = !{!4367, !4368}
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !4365, file: !65, line: 242, baseType: !274, size: 32)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !4365, file: !65, line: 243, baseType: !4369, size: 32)
!4369 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !4370, line: 16, baseType: !4371)
!4370 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!4371 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4370, line: 14, size: 32, elements: !4372)
!4372 = !{!4373}
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4371, file: !4370, line: 15, baseType: !279, size: 32)
!4374 = !DIDerivedType(tag: DW_TAG_member, scope: !4360, file: !65, line: 245, baseType: !4375, size: 32, offset: 96)
!4375 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4360, file: !65, line: 245, size: 32, elements: !4376)
!4376 = !{!4377, !4378}
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4375, file: !65, line: 246, baseType: !283, size: 32)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !4375, file: !65, line: 247, baseType: !4379, size: 32)
!4379 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !4370, line: 20, baseType: !4380)
!4380 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4370, line: 18, size: 32, elements: !4381)
!4381 = !{!4382}
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4380, file: !4370, line: 19, baseType: !287, size: 32)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4360, file: !65, line: 249, baseType: !221, size: 64, offset: 128)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4360, file: !65, line: 250, baseType: !260, size: 128, offset: 192)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4360, file: !65, line: 251, baseType: !260, size: 128, offset: 320)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4360, file: !65, line: 252, baseType: !260, size: 128, offset: 448)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4360, file: !65, line: 259, baseType: !796, size: 64, offset: 576)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !297, file: !65, line: 1988, baseType: !4389, size: 64, offset: 896)
!4389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4390, size: 64)
!4390 = !DISubroutineType(types: !4391)
!4391 = !{!102, !4274, !2467, !4392, !337, !13}
!4392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4393, size: 64)
!4393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4394, line: 22, size: 1280, elements: !4395)
!4394 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4395 = !{!4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416}
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4393, file: !4394, line: 23, baseType: !337, size: 32)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4393, file: !4394, line: 24, baseType: !271, size: 16, offset: 32)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4393, file: !4394, line: 25, baseType: !13, size: 32, offset: 64)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4393, file: !4394, line: 26, baseType: !948, size: 32, offset: 96)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4393, file: !4394, line: 27, baseType: !341, size: 64, offset: 128)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4393, file: !4394, line: 28, baseType: !341, size: 64, offset: 192)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4393, file: !4394, line: 41, baseType: !341, size: 64, offset: 256)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4393, file: !4394, line: 42, baseType: !428, size: 32, offset: 320)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4393, file: !4394, line: 43, baseType: !428, size: 32, offset: 352)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4393, file: !4394, line: 44, baseType: !274, size: 32, offset: 384)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4393, file: !4394, line: 45, baseType: !283, size: 32, offset: 416)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4393, file: !4394, line: 46, baseType: !221, size: 64, offset: 448)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4393, file: !4394, line: 47, baseType: !260, size: 128, offset: 512)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4393, file: !4394, line: 48, baseType: !260, size: 128, offset: 640)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4393, file: !4394, line: 49, baseType: !260, size: 128, offset: 768)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4393, file: !4394, line: 50, baseType: !260, size: 128, offset: 896)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4393, file: !4394, line: 51, baseType: !341, size: 64, offset: 1024)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4393, file: !4394, line: 52, baseType: !341, size: 64, offset: 1088)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4393, file: !4394, line: 53, baseType: !337, size: 32, offset: 1152)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4393, file: !4394, line: 54, baseType: !337, size: 32, offset: 1184)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4393, file: !4394, line: 55, baseType: !341, size: 64, offset: 1216)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !297, file: !65, line: 1990, baseType: !4418, size: 64, offset: 960)
!4418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4419, size: 64)
!4419 = !DISubroutineType(types: !4420)
!4420 = !{!544, !303, !412, !556}
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !297, file: !65, line: 1991, baseType: !4422, size: 64, offset: 1024)
!4422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4423, size: 64)
!4423 = !DISubroutineType(types: !4424)
!4424 = !{!102, !348, !4425, !341, !341}
!4425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4426, size: 64)
!4426 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !65, line: 55, flags: DIFlagFwdDecl)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !297, file: !65, line: 1993, baseType: !4428, size: 64, offset: 1088)
!4428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4429, size: 64)
!4429 = !DISubroutineType(types: !4430)
!4430 = !{!102, !348, !102}
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !297, file: !65, line: 1994, baseType: !4432, size: 64, offset: 1152)
!4432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4433, size: 64)
!4433 = !DISubroutineType(types: !4434)
!4434 = !{!102, !348, !303, !796, !13, !271}
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !297, file: !65, line: 1997, baseType: !4436, size: 64, offset: 1216)
!4436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4437, size: 64)
!4437 = !DISubroutineType(types: !4438)
!4438 = !{!102, !4274, !348, !796, !271}
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !297, file: !65, line: 1999, baseType: !4440, size: 64, offset: 1280)
!4440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4441, size: 64)
!4441 = !DISubroutineType(types: !4442)
!4442 = !{!291, !4274, !303, !102}
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !297, file: !65, line: 2001, baseType: !4444, size: 64, offset: 1344)
!4444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4445, size: 64)
!4445 = !DISubroutineType(types: !4446)
!4446 = !{!102, !4274, !303, !291, !102}
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !297, file: !65, line: 2003, baseType: !4448, size: 64, offset: 1408)
!4448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4449, size: 64)
!4449 = !DISubroutineType(types: !4450)
!4450 = !{!102, !4274, !303, !4451}
!4451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4452, size: 64)
!4452 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !65, line: 76, flags: DIFlagFwdDecl)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !297, file: !65, line: 2005, baseType: !4454, size: 64, offset: 1472)
!4454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4455, size: 64)
!4455 = !DISubroutineType(types: !4456)
!4456 = !{!102, !303, !4451}
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !297, file: !65, line: 2006, baseType: !4458, size: 64, offset: 1536)
!4458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4459, size: 64)
!4459 = !DISubroutineType(types: !4460)
!4460 = !{!4461, !348}
!4461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4462, size: 64)
!4462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !65, line: 3192, size: 192, elements: !4463)
!4463 = !{!4464, !4465}
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4462, file: !65, line: 3193, baseType: !589, size: 128)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4462, file: !65, line: 3194, baseType: !337, size: 32, offset: 128)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !268, file: !65, line: 655, baseType: !423, size: 64, offset: 448)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !268, file: !65, line: 656, baseType: !584, size: 64, offset: 512)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !268, file: !65, line: 659, baseType: !155, size: 64, offset: 576)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !268, file: !65, line: 663, baseType: !432, size: 64, offset: 640)
!4470 = !DIDerivedType(tag: DW_TAG_member, scope: !268, file: !65, line: 671, baseType: !4471, size: 32, offset: 704)
!4471 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !268, file: !65, line: 671, size: 32, elements: !4472)
!4472 = !{!4473, !4475}
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4471, file: !65, line: 672, baseType: !4474, size: 32)
!4474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4471, file: !65, line: 673, baseType: !13, size: 32)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !268, file: !65, line: 675, baseType: !428, size: 32, offset: 736)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !268, file: !65, line: 676, baseType: !221, size: 64, offset: 768)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !268, file: !65, line: 677, baseType: !260, size: 128, offset: 832)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !268, file: !65, line: 678, baseType: !260, size: 128, offset: 960)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !268, file: !65, line: 679, baseType: !260, size: 128, offset: 1088)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !268, file: !65, line: 680, baseType: !175, size: 32, offset: 1216)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !268, file: !65, line: 681, baseType: !215, size: 16, offset: 1248)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !268, file: !65, line: 682, baseType: !203, size: 8, offset: 1264)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !268, file: !65, line: 683, baseType: !203, size: 8, offset: 1272)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !268, file: !65, line: 684, baseType: !2540, size: 64, offset: 1280)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !268, file: !65, line: 691, baseType: !432, size: 64, offset: 1344)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !268, file: !65, line: 692, baseType: !238, size: 320, offset: 1408)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !268, file: !65, line: 694, baseType: !432, size: 64, offset: 1728)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !268, file: !65, line: 695, baseType: !432, size: 64, offset: 1792)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !268, file: !65, line: 697, baseType: !230, size: 128, offset: 1856)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !268, file: !65, line: 698, baseType: !160, size: 128, offset: 1984)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !268, file: !65, line: 707, baseType: !160, size: 128, offset: 2112)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !268, file: !65, line: 708, baseType: !160, size: 128, offset: 2240)
!4494 = !DIDerivedType(tag: DW_TAG_member, scope: !268, file: !65, line: 709, baseType: !4495, size: 128, offset: 2368)
!4495 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !268, file: !65, line: 709, size: 128, elements: !4496)
!4496 = !{!4497, !4498}
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4495, file: !65, line: 710, baseType: !862, size: 64)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4495, file: !65, line: 711, baseType: !710, size: 128, align: 64)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !268, file: !65, line: 713, baseType: !244, size: 64, offset: 2496)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !268, file: !65, line: 714, baseType: !244, size: 64, offset: 2560)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !268, file: !65, line: 715, baseType: !195, size: 32, offset: 2624)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !268, file: !65, line: 716, baseType: !195, size: 32, offset: 2656)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !268, file: !65, line: 717, baseType: !195, size: 32, offset: 2688)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !268, file: !65, line: 719, baseType: !195, size: 32, offset: 2720)
!4505 = !DIDerivedType(tag: DW_TAG_member, scope: !268, file: !65, line: 721, baseType: !4506, size: 64, offset: 2752)
!4506 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !268, file: !65, line: 721, size: 64, elements: !4507)
!4507 = !{!4508, !4509}
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4506, file: !65, line: 722, baseType: !1100, size: 64)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4506, file: !65, line: 723, baseType: !2296, size: 64)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !268, file: !65, line: 725, baseType: !4511, size: 64, offset: 2816)
!4511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4512, size: 64)
!4512 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !65, line: 725, flags: DIFlagFwdDecl)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !268, file: !65, line: 726, baseType: !585, size: 1536, align: 64, offset: 2880)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !268, file: !65, line: 727, baseType: !160, size: 128, offset: 4416)
!4515 = !DIDerivedType(tag: DW_TAG_member, scope: !268, file: !65, line: 728, baseType: !4516, size: 64, offset: 4544)
!4516 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !268, file: !65, line: 728, size: 64, elements: !4517)
!4517 = !{!4518, !4519, !4522, !4523}
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4516, file: !65, line: 729, baseType: !1301, size: 64)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4516, file: !65, line: 730, baseType: !4520, size: 64)
!4520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4521, size: 64)
!4521 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !65, line: 730, flags: DIFlagFwdDecl)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4516, file: !65, line: 731, baseType: !412, size: 64)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4516, file: !65, line: 732, baseType: !13, size: 32)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !268, file: !65, line: 735, baseType: !338, size: 32, offset: 4608)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !268, file: !65, line: 738, baseType: !338, size: 32, offset: 4640)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !268, file: !65, line: 739, baseType: !4211, size: 64, offset: 4672)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !268, file: !65, line: 750, baseType: !155, size: 64, offset: 4736)
!4528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4529, size: 64)
!4529 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !169)
!4530 = !{!0, !4531, !4536, !4539, !4544, !4549, !7, !4554, !4581, !4586}
!4531 = !DIGlobalVariableExpression(var: !4532, expr: !DIExpression())
!4532 = distinct !DIGlobalVariable(scope: null, file: !2, line: 234, type: !4533, isLocal: true, isDefinition: true)
!4533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !4534)
!4534 = !{!4535}
!4535 = !DISubrange(count: 15)
!4536 = !DIGlobalVariableExpression(var: !4537, expr: !DIExpression())
!4537 = distinct !DIGlobalVariable(scope: null, file: !2, line: 239, type: !4538, isLocal: true, isDefinition: true)
!4538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 128, elements: !3452)
!4539 = !DIGlobalVariableExpression(var: !4540, expr: !DIExpression())
!4540 = distinct !DIGlobalVariable(scope: null, file: !2, line: 239, type: !4541, isLocal: true, isDefinition: true)
!4541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !4542)
!4542 = !{!4543}
!4543 = !DISubrange(count: 51)
!4544 = !DIGlobalVariableExpression(var: !4545, expr: !DIExpression())
!4545 = distinct !DIGlobalVariable(scope: null, file: !2, line: 259, type: !4546, isLocal: true, isDefinition: true)
!4546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 392, elements: !4547)
!4547 = !{!4548}
!4548 = !DISubrange(count: 49)
!4549 = !DIGlobalVariableExpression(var: !4550, expr: !DIExpression())
!4550 = distinct !DIGlobalVariable(scope: null, file: !2, line: 270, type: !4551, isLocal: true, isDefinition: true)
!4551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !4552)
!4552 = !{!4553}
!4553 = !DISubrange(count: 39)
!4554 = !DIGlobalVariableExpression(var: !4555, expr: !DIExpression())
!4555 = distinct !DIGlobalVariable(name: "nohit", scope: !4556, file: !2, line: 84, type: !157, isLocal: true, isDefinition: true)
!4556 = distinct !DISubprogram(name: "fat_cache_lookup", scope: !2, file: !2, line: 80, type: !4557, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4566)
!4557 = !DISubroutineType(types: !4558)
!4558 = !{!102, !348, !102, !4559, !2066, !2066}
!4559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4560, size: 64)
!4560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fat_cache_id", file: !2, line: 25, size: 128, elements: !4561)
!4561 = !{!4562, !4563, !4564, !4565}
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4560, file: !2, line: 26, baseType: !13, size: 32)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "nr_contig", scope: !4560, file: !2, line: 27, baseType: !102, size: 32, offset: 32)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "fcluster", scope: !4560, file: !2, line: 28, baseType: !102, size: 32, offset: 64)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "dcluster", scope: !4560, file: !2, line: 29, baseType: !102, size: 32, offset: 96)
!4566 = !{!4567, !4568, !4569, !4570, !4571, !4572, !4573, !4574, !4575, !4578}
!4567 = !DILocalVariable(name: "inode", arg: 1, scope: !4556, file: !2, line: 80, type: !348)
!4568 = !DILocalVariable(name: "fclus", arg: 2, scope: !4556, file: !2, line: 80, type: !102)
!4569 = !DILocalVariable(name: "cid", arg: 3, scope: !4556, file: !2, line: 81, type: !4559)
!4570 = !DILocalVariable(name: "cached_fclus", arg: 4, scope: !4556, file: !2, line: 82, type: !2066)
!4571 = !DILocalVariable(name: "cached_dclus", arg: 5, scope: !4556, file: !2, line: 82, type: !2066)
!4572 = !DILocalVariable(name: "hit", scope: !4556, file: !2, line: 86, type: !156)
!4573 = !DILocalVariable(name: "p", scope: !4556, file: !2, line: 86, type: !156)
!4574 = !DILocalVariable(name: "offset", scope: !4556, file: !2, line: 87, type: !102)
!4575 = !DILocalVariable(name: "__mptr", scope: !4576, file: !2, line: 90, type: !155)
!4576 = distinct !DILexicalBlock(scope: !4577, file: !2, line: 90, column: 2)
!4577 = distinct !DILexicalBlock(scope: !4556, file: !2, line: 90, column: 2)
!4578 = !DILocalVariable(name: "__mptr", scope: !4579, file: !2, line: 90, type: !155)
!4579 = distinct !DILexicalBlock(scope: !4580, file: !2, line: 90, column: 2)
!4580 = distinct !DILexicalBlock(scope: !4577, file: !2, line: 90, column: 2)
!4581 = !DIGlobalVariableExpression(var: !4582, expr: !DIExpression())
!4582 = distinct !DIGlobalVariable(scope: null, file: !2, line: 303, type: !4583, isLocal: true, isDefinition: true)
!4583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !4584)
!4584 = !{!4585}
!4585 = !DISubrange(count: 36)
!4586 = !DIGlobalVariableExpression(var: !4587, expr: !DIExpression())
!4587 = distinct !DIGlobalVariable(scope: null, file: !2, line: 303, type: !4588, isLocal: true, isDefinition: true)
!4588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 136, elements: !4589)
!4589 = !{!4590}
!4590 = !DISubrange(count: 17)
!4591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4592, size: 64)
!4592 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3965, line: 11, flags: DIFlagFwdDecl)
!4593 = !{i32 7, !"Dwarf Version", i32 5}
!4594 = !{i32 2, !"Debug Info Version", i32 3}
!4595 = !{i32 1, !"wchar_size", i32 2}
!4596 = !{i32 8, !"cf-protection-branch", i32 1}
!4597 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4598 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4599 = !{i32 1, !"Code Model", i32 2}
!4600 = !{i32 1, !"override-stack-alignment", i32 8}
!4601 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4602 = distinct !DISubprogram(name: "fat_cache_init", scope: !2, file: !2, line: 46, type: !2038, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!4603 = !DILocation(line: 48, column: 21, scope: !4602)
!4604 = !DILocation(line: 48, column: 19, scope: !4602)
!4605 = !DILocation(line: 52, column: 6, scope: !4606)
!4606 = distinct !DILexicalBlock(scope: !4602, file: !2, line: 52, column: 6)
!4607 = !DILocation(line: 52, column: 23, scope: !4606)
!4608 = !DILocation(line: 52, column: 6, scope: !4602)
!4609 = !DILocation(line: 53, column: 3, scope: !4606)
!4610 = !DILocation(line: 54, column: 2, scope: !4602)
!4611 = !DILocation(line: 55, column: 1, scope: !4602)
!4612 = !DISubprogram(name: "kmem_cache_create", scope: !4613, file: !4613, line: 189, type: !4614, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4613 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!4614 = !DISubroutineType(types: !4615)
!4615 = !{!4591, !387, !13, !13, !153, !1796}
!4616 = distinct !DISubprogram(name: "init_once", scope: !2, file: !2, line: 39, type: !1797, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4617)
!4617 = !{!4618, !4619}
!4618 = !DILocalVariable(name: "foo", arg: 1, scope: !4616, file: !2, line: 39, type: !155)
!4619 = !DILocalVariable(name: "cache", scope: !4616, file: !2, line: 41, type: !156)
!4620 = !DILocation(line: 39, column: 29, scope: !4616)
!4621 = !DILocation(line: 41, column: 2, scope: !4616)
!4622 = !DILocation(line: 41, column: 20, scope: !4616)
!4623 = !DILocation(line: 41, column: 48, scope: !4616)
!4624 = !DILocation(line: 43, column: 18, scope: !4616)
!4625 = !DILocation(line: 43, column: 25, scope: !4616)
!4626 = !DILocation(line: 43, column: 2, scope: !4616)
!4627 = !DILocation(line: 44, column: 1, scope: !4616)
!4628 = distinct !DISubprogram(name: "fat_cache_destroy", scope: !2, file: !2, line: 57, type: !2271, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!4629 = !DILocation(line: 59, column: 21, scope: !4628)
!4630 = !DILocation(line: 59, column: 2, scope: !4628)
!4631 = !DILocation(line: 60, column: 1, scope: !4628)
!4632 = !DISubprogram(name: "kmem_cache_destroy", scope: !4613, file: !4613, line: 197, type: !4633, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4633 = !DISubroutineType(types: !4634)
!4634 = !{null, !4591}
!4635 = distinct !DISubprogram(name: "fat_cache_inval_inode", scope: !2, file: !2, line: 204, type: !2297, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4636)
!4636 = !{!4637}
!4637 = !DILocalVariable(name: "inode", arg: 1, scope: !4635, file: !2, line: 204, type: !348)
!4638 = !DILocation(line: 204, column: 42, scope: !4635)
!4639 = !DILocation(line: 206, column: 21, scope: !4635)
!4640 = !DILocation(line: 206, column: 13, scope: !4635)
!4641 = !DILocation(line: 206, column: 29, scope: !4635)
!4642 = !DILocation(line: 206, column: 2, scope: !4635)
!4643 = !DILocation(line: 207, column: 26, scope: !4635)
!4644 = !DILocation(line: 207, column: 2, scope: !4635)
!4645 = !DILocation(line: 208, column: 23, scope: !4635)
!4646 = !DILocation(line: 208, column: 15, scope: !4635)
!4647 = !DILocation(line: 208, column: 31, scope: !4635)
!4648 = !DILocation(line: 208, column: 2, scope: !4635)
!4649 = !DILocation(line: 209, column: 1, scope: !4635)
!4650 = distinct !DISubprogram(name: "spin_lock", scope: !4651, file: !4651, line: 349, type: !4652, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4654)
!4651 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!4652 = !DISubroutineType(types: !4653)
!4653 = !{null, !1626}
!4654 = !{!4655}
!4655 = !DILocalVariable(name: "lock", arg: 1, scope: !4650, file: !4651, line: 349, type: !1626)
!4656 = !DILocation(line: 349, column: 51, scope: !4650)
!4657 = !DILocation(line: 351, column: 2, scope: !4650)
!4658 = !DILocation(line: 352, column: 1, scope: !4650)
!4659 = distinct !DISubprogram(name: "MSDOS_I", scope: !172, file: !172, line: 174, type: !4660, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4662)
!4660 = !DISubroutineType(types: !4661)
!4661 = !{!170, !348}
!4662 = !{!4663, !4664}
!4663 = !DILocalVariable(name: "inode", arg: 1, scope: !4659, file: !172, line: 174, type: !348)
!4664 = !DILocalVariable(name: "__mptr", scope: !4665, file: !172, line: 176, type: !155)
!4665 = distinct !DILexicalBlock(scope: !4659, file: !172, line: 176, column: 9)
!4666 = !DILocation(line: 174, column: 62, scope: !4659)
!4667 = !DILocation(line: 176, column: 9, scope: !4665)
!4668 = !DILocation(line: 176, column: 9, scope: !4659)
!4669 = !DILocation(line: 176, column: 2, scope: !4659)
!4670 = distinct !DISubprogram(name: "__fat_cache_inval_inode", scope: !2, file: !2, line: 186, type: !2297, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4671)
!4671 = !{!4672, !4673, !4674, !4675}
!4672 = !DILocalVariable(name: "inode", arg: 1, scope: !4670, file: !2, line: 186, type: !348)
!4673 = !DILocalVariable(name: "i", scope: !4670, file: !2, line: 188, type: !170)
!4674 = !DILocalVariable(name: "cache", scope: !4670, file: !2, line: 189, type: !156)
!4675 = !DILocalVariable(name: "__mptr", scope: !4676, file: !2, line: 192, type: !155)
!4676 = distinct !DILexicalBlock(scope: !4677, file: !2, line: 192, column: 11)
!4677 = distinct !DILexicalBlock(scope: !4670, file: !2, line: 191, column: 37)
!4678 = !DILocation(line: 186, column: 51, scope: !4670)
!4679 = !DILocation(line: 188, column: 2, scope: !4670)
!4680 = !DILocation(line: 188, column: 27, scope: !4670)
!4681 = !DILocation(line: 188, column: 39, scope: !4670)
!4682 = !DILocation(line: 188, column: 31, scope: !4670)
!4683 = !DILocation(line: 189, column: 2, scope: !4670)
!4684 = !DILocation(line: 189, column: 20, scope: !4670)
!4685 = !DILocation(line: 191, column: 2, scope: !4670)
!4686 = !DILocation(line: 191, column: 22, scope: !4670)
!4687 = !DILocation(line: 191, column: 25, scope: !4670)
!4688 = !DILocation(line: 191, column: 10, scope: !4670)
!4689 = !DILocation(line: 191, column: 9, scope: !4670)
!4690 = !DILocation(line: 192, column: 11, scope: !4676)
!4691 = !DILocation(line: 192, column: 11, scope: !4677)
!4692 = !DILocation(line: 192, column: 9, scope: !4677)
!4693 = !DILocation(line: 194, column: 18, scope: !4677)
!4694 = !DILocation(line: 194, column: 25, scope: !4677)
!4695 = !DILocation(line: 194, column: 3, scope: !4677)
!4696 = !DILocation(line: 195, column: 3, scope: !4677)
!4697 = !DILocation(line: 195, column: 6, scope: !4677)
!4698 = !DILocation(line: 195, column: 15, scope: !4677)
!4699 = !DILocation(line: 196, column: 18, scope: !4677)
!4700 = !DILocation(line: 196, column: 3, scope: !4677)
!4701 = distinct !{!4701, !4685, !4702, !4703, !4704}
!4702 = !DILocation(line: 197, column: 2, scope: !4670)
!4703 = !{!"llvm.loop.mustprogress"}
!4704 = !{!"llvm.loop.unroll.disable"}
!4705 = !DILocation(line: 199, column: 2, scope: !4670)
!4706 = !DILocation(line: 199, column: 5, scope: !4670)
!4707 = !DILocation(line: 199, column: 19, scope: !4670)
!4708 = !DILocation(line: 200, column: 6, scope: !4709)
!4709 = distinct !DILexicalBlock(scope: !4670, file: !2, line: 200, column: 6)
!4710 = !DILocation(line: 200, column: 9, scope: !4709)
!4711 = !DILocation(line: 200, column: 24, scope: !4709)
!4712 = !DILocation(line: 200, column: 6, scope: !4670)
!4713 = !DILocation(line: 201, column: 3, scope: !4709)
!4714 = !DILocation(line: 201, column: 6, scope: !4709)
!4715 = !DILocation(line: 201, column: 20, scope: !4709)
!4716 = !DILocation(line: 202, column: 1, scope: !4670)
!4717 = distinct !DISubprogram(name: "spin_unlock", scope: !4651, file: !4651, line: 389, type: !4652, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4718)
!4718 = !{!4719}
!4719 = !DILocalVariable(name: "lock", arg: 1, scope: !4717, file: !4651, line: 389, type: !1626)
!4720 = !DILocation(line: 389, column: 53, scope: !4717)
!4721 = !DILocation(line: 391, column: 2, scope: !4717)
!4722 = !DILocation(line: 392, column: 1, scope: !4717)
!4723 = distinct !DISubprogram(name: "fat_get_cluster", scope: !2, file: !2, line: 225, type: !4724, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4726)
!4724 = !DISubroutineType(types: !4725)
!4725 = !{!102, !348, !102, !2066, !2066}
!4726 = !{!4727, !4728, !4729, !4730, !4731, !4732, !4829, !4830, !4875, !4876, !4877}
!4727 = !DILocalVariable(name: "inode", arg: 1, scope: !4723, file: !2, line: 225, type: !348)
!4728 = !DILocalVariable(name: "cluster", arg: 2, scope: !4723, file: !2, line: 225, type: !102)
!4729 = !DILocalVariable(name: "fclus", arg: 3, scope: !4723, file: !2, line: 225, type: !2066)
!4730 = !DILocalVariable(name: "dclus", arg: 4, scope: !4723, file: !2, line: 225, type: !2066)
!4731 = !DILocalVariable(name: "sb", scope: !4723, file: !2, line: 227, type: !423)
!4732 = !DILocalVariable(name: "sbi", scope: !4723, file: !2, line: 228, type: !4733)
!4733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4734, size: 64)
!4734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msdos_sb_info", file: !172, line: 63, size: 35776, elements: !4735)
!4735 = !{!4736, !4737, !4738, !4739, !4740, !4741, !4742, !4743, !4744, !4745, !4746, !4747, !4748, !4749, !4750, !4751, !4752, !4753, !4754, !4755, !4785, !4807, !4808, !4809, !4810, !4811, !4812, !4813, !4817, !4818, !4819, !4820, !4821, !4825, !4826, !4827, !4828}
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "sec_per_clus", scope: !4734, file: !172, line: 64, baseType: !215, size: 16)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_bits", scope: !4734, file: !172, line: 65, baseType: !215, size: 16, offset: 16)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_size", scope: !4734, file: !172, line: 66, baseType: !13, size: 32, offset: 32)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "fats", scope: !4734, file: !172, line: 67, baseType: !207, size: 8, offset: 64)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "fat_bits", scope: !4734, file: !172, line: 67, baseType: !207, size: 8, offset: 72)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "fat_start", scope: !4734, file: !172, line: 68, baseType: !215, size: 16, offset: 80)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "fat_length", scope: !4734, file: !172, line: 69, baseType: !432, size: 64, offset: 128)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "dir_start", scope: !4734, file: !172, line: 70, baseType: !432, size: 64, offset: 192)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "dir_entries", scope: !4734, file: !172, line: 71, baseType: !215, size: 16, offset: 256)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "data_start", scope: !4734, file: !172, line: 72, baseType: !432, size: 64, offset: 320)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "max_cluster", scope: !4734, file: !172, line: 73, baseType: !432, size: 64, offset: 384)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "root_cluster", scope: !4734, file: !172, line: 74, baseType: !432, size: 64, offset: 448)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "fsinfo_sector", scope: !4734, file: !172, line: 75, baseType: !432, size: 64, offset: 512)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "fat_lock", scope: !4734, file: !172, line: 76, baseType: !815, size: 256, offset: 576)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_build_inode_lock", scope: !4734, file: !172, line: 77, baseType: !815, size: 256, offset: 832)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock", scope: !4734, file: !172, line: 78, baseType: !815, size: 256, offset: 1088)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "prev_free", scope: !4734, file: !172, line: 79, baseType: !13, size: 32, offset: 1344)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "free_clusters", scope: !4734, file: !172, line: 80, baseType: !13, size: 32, offset: 1376)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "free_clus_valid", scope: !4734, file: !172, line: 81, baseType: !13, size: 32, offset: 1408)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !4734, file: !172, line: 82, baseType: !4756, size: 384, offset: 1472)
!4756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fat_mount_options", file: !172, line: 27, size: 384, elements: !4757)
!4757 = !{!4758, !4759, !4760, !4761, !4762, !4763, !4764, !4765, !4766, !4767, !4768, !4769, !4770, !4771, !4772, !4773, !4774, !4775, !4776, !4777, !4778, !4779, !4780, !4781, !4782, !4783, !4784}
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "fs_uid", scope: !4756, file: !172, line: 28, baseType: !274, size: 32)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "fs_gid", scope: !4756, file: !172, line: 29, baseType: !283, size: 32, offset: 32)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "fs_fmask", scope: !4756, file: !172, line: 30, baseType: !215, size: 16, offset: 64)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "fs_dmask", scope: !4756, file: !172, line: 31, baseType: !215, size: 16, offset: 80)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "codepage", scope: !4756, file: !172, line: 32, baseType: !215, size: 16, offset: 96)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "time_offset", scope: !4756, file: !172, line: 33, baseType: !102, size: 32, offset: 128)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "iocharset", scope: !4756, file: !172, line: 34, baseType: !412, size: 64, offset: 192)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "shortname", scope: !4756, file: !172, line: 35, baseType: !215, size: 16, offset: 256)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "name_check", scope: !4756, file: !172, line: 36, baseType: !207, size: 8, offset: 272)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "errors", scope: !4756, file: !172, line: 37, baseType: !207, size: 8, offset: 280)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "nfs", scope: !4756, file: !172, line: 38, baseType: !207, size: 8, offset: 288)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "allow_utime", scope: !4756, file: !172, line: 39, baseType: !215, size: 16, offset: 304)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "quiet", scope: !4756, file: !172, line: 40, baseType: !13, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "showexec", scope: !4756, file: !172, line: 41, baseType: !13, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "sys_immutable", scope: !4756, file: !172, line: 42, baseType: !13, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "dotsOK", scope: !4756, file: !172, line: 43, baseType: !13, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "isvfat", scope: !4756, file: !172, line: 44, baseType: !13, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "utf8", scope: !4756, file: !172, line: 45, baseType: !13, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "unicode_xlate", scope: !4756, file: !172, line: 46, baseType: !13, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "numtail", scope: !4756, file: !172, line: 47, baseType: !13, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4756, file: !172, line: 48, baseType: !13, size: 1, offset: 328, flags: DIFlagBitField, extraData: i64 320)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "nocase", scope: !4756, file: !172, line: 49, baseType: !13, size: 1, offset: 329, flags: DIFlagBitField, extraData: i64 320)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "usefree", scope: !4756, file: !172, line: 50, baseType: !13, size: 1, offset: 330, flags: DIFlagBitField, extraData: i64 320)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "tz_set", scope: !4756, file: !172, line: 51, baseType: !13, size: 1, offset: 331, flags: DIFlagBitField, extraData: i64 320)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "rodir", scope: !4756, file: !172, line: 52, baseType: !13, size: 1, offset: 332, flags: DIFlagBitField, extraData: i64 320)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "discard", scope: !4756, file: !172, line: 53, baseType: !13, size: 1, offset: 333, flags: DIFlagBitField, extraData: i64 320)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "dos1xfloppy", scope: !4756, file: !172, line: 54, baseType: !13, size: 1, offset: 334, flags: DIFlagBitField, extraData: i64 320)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "nls_disk", scope: !4734, file: !172, line: 83, baseType: !4786, size: 64, offset: 1856)
!4786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4787, size: 64)
!4787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nls_table", file: !4788, line: 25, size: 512, elements: !4789)
!4788 = !DIFile(filename: "./include/linux/nls.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f76e83aacaae45c8b04af57df30b5af2")
!4789 = !{!4790, !4791, !4792, !4798, !4803, !4804, !4805, !4806}
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !4787, file: !4788, line: 26, baseType: !387, size: 64)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !4787, file: !4788, line: 27, baseType: !387, size: 64, offset: 64)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "uni2char", scope: !4787, file: !4788, line: 28, baseType: !4793, size: 64, offset: 128)
!4793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4794, size: 64)
!4794 = !DISubroutineType(types: !4795)
!4795 = !{!102, !4796, !4797, !102}
!4796 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !4788, line: 19, baseType: !213)
!4797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "char2uni", scope: !4787, file: !4788, line: 29, baseType: !4799, size: 64, offset: 192)
!4799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4800, size: 64)
!4800 = !DISubroutineType(types: !4801)
!4801 = !{!102, !345, !102, !4802}
!4802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4796, size: 64)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "charset2lower", scope: !4787, file: !4788, line: 31, baseType: !345, size: 64, offset: 256)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "charset2upper", scope: !4787, file: !4788, line: 32, baseType: !345, size: 64, offset: 320)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4787, file: !4788, line: 33, baseType: !459, size: 64, offset: 384)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4787, file: !4788, line: 34, baseType: !4786, size: 64, offset: 448)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "nls_io", scope: !4734, file: !172, line: 84, baseType: !4786, size: 64, offset: 1920)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "dir_ops", scope: !4734, file: !172, line: 85, baseType: !1445, size: 64, offset: 1984)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "dir_per_block", scope: !4734, file: !172, line: 86, baseType: !102, size: 32, offset: 2048)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "dir_per_block_bits", scope: !4734, file: !172, line: 87, baseType: !102, size: 32, offset: 2080)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "vol_id", scope: !4734, file: !172, line: 88, baseType: !13, size: 32, offset: 2112)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "fatent_shift", scope: !4734, file: !172, line: 90, baseType: !102, size: 32, offset: 2144)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "fatent_ops", scope: !4734, file: !172, line: 91, baseType: !4814, size: 64, offset: 2176)
!4814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4815, size: 64)
!4815 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4816)
!4816 = !DICompositeType(tag: DW_TAG_structure_type, name: "fatent_operations", file: !172, line: 91, flags: DIFlagFwdDecl)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "fat_inode", scope: !4734, file: !172, line: 92, baseType: !348, size: 64, offset: 2240)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "fsinfo_inode", scope: !4734, file: !172, line: 93, baseType: !348, size: 64, offset: 2304)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !4734, file: !172, line: 95, baseType: !1053, size: 320, offset: 2368)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "inode_hash_lock", scope: !4734, file: !172, line: 97, baseType: !175, size: 32, offset: 2688)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "inode_hashtable", scope: !4734, file: !172, line: 98, baseType: !4822, size: 16384, offset: 2752)
!4822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !862, size: 16384, elements: !4823)
!4823 = !{!4824}
!4824 = !DISubrange(count: 256)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "dir_hash_lock", scope: !4734, file: !172, line: 100, baseType: !175, size: 32, offset: 19136)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "dir_hashtable", scope: !4734, file: !172, line: 101, baseType: !4822, size: 16384, offset: 19200)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "dirty", scope: !4734, file: !172, line: 103, baseType: !13, size: 32, offset: 35584)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4734, file: !172, line: 104, baseType: !710, size: 128, align: 64, offset: 35648)
!4829 = !DILocalVariable(name: "limit", scope: !4723, file: !2, line: 229, type: !2130)
!4830 = !DILocalVariable(name: "fatent", scope: !4723, file: !2, line: 230, type: !4831)
!4831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fat_entry", file: !172, line: 342, size: 448, elements: !4832)
!4832 = !{!4833, !4834, !4846, !4847, !4874}
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4831, file: !172, line: 343, baseType: !102, size: 32)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !4831, file: !172, line: 348, baseType: !4835, size: 128, offset: 64)
!4835 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4831, file: !172, line: 344, size: 128, elements: !4836)
!4836 = !{!4837, !4840, !4843}
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "ent12_p", scope: !4835, file: !172, line: 345, baseType: !4838, size: 128)
!4838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4839, size: 128, elements: !2056)
!4839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "ent16_p", scope: !4835, file: !172, line: 346, baseType: !4841, size: 64)
!4841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4842, size: 64)
!4842 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !1254, line: 36, baseType: !214)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "ent32_p", scope: !4835, file: !172, line: 347, baseType: !4844, size: 64)
!4844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4845, size: 64)
!4845 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !1254, line: 38, baseType: !338)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "nr_bhs", scope: !4831, file: !172, line: 349, baseType: !102, size: 32, offset: 192)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "bhs", scope: !4831, file: !172, line: 350, baseType: !4848, size: 128, offset: 256)
!4848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4849, size: 128, elements: !2056)
!4849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4850, size: 64)
!4850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "buffer_head", file: !4851, line: 59, size: 832, elements: !4852)
!4851 = !DIFile(filename: "./include/linux/buffer_head.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc335f14f0fab7e7c331101f97325549")
!4852 = !{!4853, !4854, !4855, !4860, !4861, !4862, !4863, !4864, !4869, !4870, !4871, !4872, !4873}
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "b_state", scope: !4850, file: !4851, line: 60, baseType: !432, size: 64)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "b_this_page", scope: !4850, file: !4851, line: 61, baseType: !4849, size: 64, offset: 64)
!4855 = !DIDerivedType(tag: DW_TAG_member, scope: !4850, file: !4851, line: 62, baseType: !4856, size: 64, offset: 128)
!4856 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4850, file: !4851, line: 62, size: 64, elements: !4857)
!4857 = !{!4858, !4859}
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "b_page", scope: !4856, file: !4851, line: 63, baseType: !625, size: 64)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "b_folio", scope: !4856, file: !4851, line: 64, baseType: !1143, size: 64)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "b_blocknr", scope: !4850, file: !4851, line: 67, baseType: !1702, size: 64, offset: 192)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "b_size", scope: !4850, file: !4851, line: 68, baseType: !556, size: 64, offset: 256)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "b_data", scope: !4850, file: !4851, line: 69, baseType: !412, size: 64, offset: 320)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "b_bdev", scope: !4850, file: !4851, line: 71, baseType: !2566, size: 64, offset: 384)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "b_end_io", scope: !4850, file: !4851, line: 72, baseType: !4865, size: 64, offset: 448)
!4865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4866, size: 64)
!4866 = !DIDerivedType(tag: DW_TAG_typedef, name: "bh_end_io_t", file: !4851, line: 48, baseType: !4867)
!4867 = !DISubroutineType(types: !4868)
!4868 = !{null, !4849, !102}
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "b_private", scope: !4850, file: !4851, line: 73, baseType: !155, size: 64, offset: 512)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "b_assoc_buffers", scope: !4850, file: !4851, line: 74, baseType: !160, size: 128, offset: 576)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "b_assoc_map", scope: !4850, file: !4851, line: 75, baseType: !584, size: 64, offset: 704)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "b_count", scope: !4850, file: !4851, line: 77, baseType: !195, size: 32, offset: 768)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "b_uptodate_lock", scope: !4850, file: !4851, line: 78, baseType: !175, size: 32, offset: 800)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "fat_inode", scope: !4831, file: !172, line: 351, baseType: !348, size: 64, offset: 384)
!4875 = !DILocalVariable(name: "cid", scope: !4723, file: !2, line: 231, type: !4560)
!4876 = !DILocalVariable(name: "nr", scope: !4723, file: !2, line: 232, type: !102)
!4877 = !DILabel(scope: !4723, name: "out", file: !2, line: 286)
!4878 = !DILocation(line: 225, column: 35, scope: !4723)
!4879 = !DILocation(line: 225, column: 46, scope: !4723)
!4880 = !DILocation(line: 225, column: 60, scope: !4723)
!4881 = !DILocation(line: 225, column: 72, scope: !4723)
!4882 = !DILocation(line: 227, column: 2, scope: !4723)
!4883 = !DILocation(line: 227, column: 22, scope: !4723)
!4884 = !DILocation(line: 227, column: 27, scope: !4723)
!4885 = !DILocation(line: 227, column: 34, scope: !4723)
!4886 = !DILocation(line: 228, column: 2, scope: !4723)
!4887 = !DILocation(line: 228, column: 24, scope: !4723)
!4888 = !DILocation(line: 228, column: 39, scope: !4723)
!4889 = !DILocation(line: 228, column: 30, scope: !4723)
!4890 = !DILocation(line: 229, column: 2, scope: !4723)
!4891 = !DILocation(line: 229, column: 12, scope: !4723)
!4892 = !DILocation(line: 229, column: 20, scope: !4723)
!4893 = !DILocation(line: 229, column: 24, scope: !4723)
!4894 = !DILocation(line: 229, column: 38, scope: !4723)
!4895 = !DILocation(line: 229, column: 43, scope: !4723)
!4896 = !DILocation(line: 229, column: 35, scope: !4723)
!4897 = !DILocation(line: 230, column: 2, scope: !4723)
!4898 = !DILocation(line: 230, column: 19, scope: !4723)
!4899 = !DILocation(line: 231, column: 2, scope: !4723)
!4900 = !DILocation(line: 231, column: 22, scope: !4723)
!4901 = !DILocation(line: 232, column: 2, scope: !4723)
!4902 = !DILocation(line: 232, column: 6, scope: !4723)
!4903 = !DILocation(line: 234, column: 2, scope: !4723)
!4904 = !DILocation(line: 234, column: 2, scope: !4905)
!4905 = distinct !DILexicalBlock(scope: !4906, file: !2, line: 234, column: 2)
!4906 = distinct !DILexicalBlock(scope: !4723, file: !2, line: 234, column: 2)
!4907 = !DILocation(line: 234, column: 2, scope: !4906)
!4908 = !DILocation(line: 234, column: 2, scope: !4909)
!4909 = distinct !DILexicalBlock(scope: !4905, file: !2, line: 234, column: 2)
!4910 = !DILocation(line: 234, column: 2, scope: !4911)
!4911 = distinct !DILexicalBlock(scope: !4909, file: !2, line: 234, column: 2)
!4912 = !DILocation(line: 234, column: 2, scope: !4913)
!4913 = distinct !DILexicalBlock(scope: !4909, file: !2, line: 234, column: 2)
!4914 = !{i64 2154765149, i64 2154765178, i64 2154765224, i64 2154765282, i64 2154765336, i64 2154765390, i64 2154765445, i64 2154765476}
!4915 = !DILocation(line: 236, column: 3, scope: !4723)
!4916 = !DILocation(line: 236, column: 9, scope: !4723)
!4917 = !DILocation(line: 237, column: 19, scope: !4723)
!4918 = !DILocation(line: 237, column: 11, scope: !4723)
!4919 = !DILocation(line: 237, column: 27, scope: !4723)
!4920 = !DILocation(line: 237, column: 3, scope: !4723)
!4921 = !DILocation(line: 237, column: 9, scope: !4723)
!4922 = !DILocation(line: 238, column: 23, scope: !4923)
!4923 = distinct !DILexicalBlock(scope: !4723, file: !2, line: 238, column: 6)
!4924 = !DILocation(line: 238, column: 29, scope: !4923)
!4925 = !DILocation(line: 238, column: 28, scope: !4923)
!4926 = !DILocation(line: 238, column: 7, scope: !4923)
!4927 = !DILocation(line: 238, column: 6, scope: !4723)
!4928 = !DILocation(line: 239, column: 3, scope: !4929)
!4929 = distinct !DILexicalBlock(scope: !4923, file: !2, line: 238, column: 37)
!4930 = !DILocation(line: 242, column: 3, scope: !4929)
!4931 = !DILocation(line: 244, column: 6, scope: !4932)
!4932 = distinct !DILexicalBlock(scope: !4723, file: !2, line: 244, column: 6)
!4933 = !DILocation(line: 244, column: 14, scope: !4932)
!4934 = !DILocation(line: 244, column: 6, scope: !4723)
!4935 = !DILocation(line: 245, column: 3, scope: !4932)
!4936 = !DILocation(line: 247, column: 23, scope: !4937)
!4937 = distinct !DILexicalBlock(scope: !4723, file: !2, line: 247, column: 6)
!4938 = !DILocation(line: 247, column: 30, scope: !4937)
!4939 = !DILocation(line: 247, column: 45, scope: !4937)
!4940 = !DILocation(line: 247, column: 52, scope: !4937)
!4941 = !DILocation(line: 247, column: 6, scope: !4937)
!4942 = !DILocation(line: 247, column: 59, scope: !4937)
!4943 = !DILocation(line: 247, column: 6, scope: !4723)
!4944 = !DILocation(line: 252, column: 3, scope: !4945)
!4945 = distinct !DILexicalBlock(scope: !4937, file: !2, line: 247, column: 64)
!4946 = !DILocation(line: 253, column: 2, scope: !4945)
!4947 = !DILocation(line: 255, column: 2, scope: !4723)
!4948 = !DILocation(line: 256, column: 2, scope: !4723)
!4949 = !DILocation(line: 256, column: 10, scope: !4723)
!4950 = !DILocation(line: 256, column: 9, scope: !4723)
!4951 = !DILocation(line: 256, column: 18, scope: !4723)
!4952 = !DILocation(line: 256, column: 16, scope: !4723)
!4953 = !DILocation(line: 258, column: 8, scope: !4954)
!4954 = distinct !DILexicalBlock(scope: !4955, file: !2, line: 258, column: 7)
!4955 = distinct !DILexicalBlock(scope: !4723, file: !2, line: 256, column: 27)
!4956 = !DILocation(line: 258, column: 7, scope: !4954)
!4957 = !DILocation(line: 258, column: 16, scope: !4954)
!4958 = !DILocation(line: 258, column: 14, scope: !4954)
!4959 = !DILocation(line: 258, column: 7, scope: !4955)
!4960 = !DILocation(line: 259, column: 4, scope: !4961)
!4961 = distinct !DILexicalBlock(scope: !4954, file: !2, line: 258, column: 23)
!4962 = !DILocation(line: 262, column: 7, scope: !4961)
!4963 = !DILocation(line: 263, column: 4, scope: !4961)
!4964 = !DILocation(line: 266, column: 21, scope: !4955)
!4965 = !DILocation(line: 266, column: 38, scope: !4955)
!4966 = !DILocation(line: 266, column: 37, scope: !4955)
!4967 = !DILocation(line: 266, column: 8, scope: !4955)
!4968 = !DILocation(line: 266, column: 6, scope: !4955)
!4969 = !DILocation(line: 267, column: 7, scope: !4970)
!4970 = distinct !DILexicalBlock(scope: !4955, file: !2, line: 267, column: 7)
!4971 = !DILocation(line: 267, column: 10, scope: !4970)
!4972 = !DILocation(line: 267, column: 7, scope: !4955)
!4973 = !DILocation(line: 268, column: 4, scope: !4970)
!4974 = !DILocation(line: 269, column: 12, scope: !4975)
!4975 = distinct !DILexicalBlock(scope: !4970, file: !2, line: 269, column: 12)
!4976 = !DILocation(line: 269, column: 15, scope: !4975)
!4977 = !DILocation(line: 269, column: 12, scope: !4970)
!4978 = !DILocation(line: 270, column: 4, scope: !4979)
!4979 = distinct !DILexicalBlock(scope: !4975, file: !2, line: 269, column: 32)
!4980 = !DILocation(line: 273, column: 7, scope: !4979)
!4981 = !DILocation(line: 274, column: 4, scope: !4979)
!4982 = !DILocation(line: 275, column: 14, scope: !4983)
!4983 = distinct !DILexicalBlock(scope: !4975, file: !2, line: 275, column: 14)
!4984 = !DILocation(line: 275, column: 17, scope: !4983)
!4985 = !DILocation(line: 275, column: 14, scope: !4975)
!4986 = !DILocation(line: 276, column: 18, scope: !4987)
!4987 = distinct !DILexicalBlock(scope: !4983, file: !2, line: 275, column: 33)
!4988 = !DILocation(line: 276, column: 4, scope: !4987)
!4989 = !DILocation(line: 277, column: 4, scope: !4987)
!4990 = !DILocation(line: 279, column: 5, scope: !4955)
!4991 = !DILocation(line: 279, column: 11, scope: !4955)
!4992 = !DILocation(line: 280, column: 12, scope: !4955)
!4993 = !DILocation(line: 280, column: 4, scope: !4955)
!4994 = !DILocation(line: 280, column: 10, scope: !4955)
!4995 = !DILocation(line: 281, column: 32, scope: !4996)
!4996 = distinct !DILexicalBlock(scope: !4955, file: !2, line: 281, column: 7)
!4997 = !DILocation(line: 281, column: 31, scope: !4996)
!4998 = !DILocation(line: 281, column: 8, scope: !4996)
!4999 = !DILocation(line: 281, column: 7, scope: !4955)
!5000 = !DILocation(line: 282, column: 22, scope: !4996)
!5001 = !DILocation(line: 282, column: 21, scope: !4996)
!5002 = !DILocation(line: 282, column: 30, scope: !4996)
!5003 = !DILocation(line: 282, column: 29, scope: !4996)
!5004 = !DILocation(line: 282, column: 4, scope: !4996)
!5005 = distinct !{!5005, !4948, !5006, !4703, !4704}
!5006 = !DILocation(line: 283, column: 2, scope: !4723)
!5007 = !DILocation(line: 284, column: 5, scope: !4723)
!5008 = !DILocation(line: 285, column: 16, scope: !4723)
!5009 = !DILocation(line: 285, column: 2, scope: !4723)
!5010 = !DILocation(line: 286, column: 1, scope: !4723)
!5011 = !DILocation(line: 287, column: 2, scope: !4723)
!5012 = !DILocation(line: 288, column: 9, scope: !4723)
!5013 = !DILocation(line: 288, column: 2, scope: !4723)
!5014 = !DILocation(line: 289, column: 1, scope: !4723)
!5015 = distinct !DISubprogram(name: "MSDOS_SB", scope: !172, file: !172, line: 141, type: !5016, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5018)
!5016 = !DISubroutineType(types: !5017)
!5017 = !{!4733, !423}
!5018 = !{!5019}
!5019 = !DILocalVariable(name: "sb", arg: 1, scope: !5015, file: !172, line: 141, type: !423)
!5020 = !DILocation(line: 141, column: 66, scope: !5015)
!5021 = !DILocation(line: 143, column: 9, scope: !5015)
!5022 = !DILocation(line: 143, column: 13, scope: !5015)
!5023 = !DILocation(line: 143, column: 2, scope: !5015)
!5024 = distinct !DISubprogram(name: "fat_valid_entry", scope: !172, file: !172, line: 380, type: !5025, scopeLine: 381, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5027)
!5025 = !DISubroutineType(types: !5026)
!5026 = !{!706, !4733, !102}
!5027 = !{!5028, !5029}
!5028 = !DILocalVariable(name: "sbi", arg: 1, scope: !5024, file: !172, line: 380, type: !4733)
!5029 = !DILocalVariable(name: "entry", arg: 2, scope: !5024, file: !172, line: 380, type: !102)
!5030 = !DILocation(line: 380, column: 58, scope: !5024)
!5031 = !DILocation(line: 380, column: 67, scope: !5024)
!5032 = !DILocation(line: 382, column: 26, scope: !5024)
!5033 = !DILocation(line: 382, column: 23, scope: !5024)
!5034 = !DILocation(line: 382, column: 32, scope: !5024)
!5035 = !DILocation(line: 382, column: 35, scope: !5024)
!5036 = !DILocation(line: 382, column: 43, scope: !5024)
!5037 = !DILocation(line: 382, column: 48, scope: !5024)
!5038 = !DILocation(line: 382, column: 41, scope: !5024)
!5039 = !DILocation(line: 0, scope: !5024)
!5040 = !DILocation(line: 382, column: 2, scope: !5024)
!5041 = !DISubprogram(name: "__fat_fs_error", scope: !172, file: !172, line: 432, type: !5042, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5042 = !DISubroutineType(types: !5043)
!5043 = !{null, !423, !102, !387, null}
!5044 = !DISubprogram(name: "___ratelimit", scope: !1054, file: !1054, line: 44, type: !5045, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5045 = !DISubroutineType(types: !5046)
!5046 = !{!102, !5047, !387}
!5047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!5048 = !DILocation(line: 80, column: 43, scope: !4556)
!5049 = !DILocation(line: 80, column: 54, scope: !4556)
!5050 = !DILocation(line: 81, column: 29, scope: !4556)
!5051 = !DILocation(line: 82, column: 13, scope: !4556)
!5052 = !DILocation(line: 82, column: 32, scope: !4556)
!5053 = !DILocation(line: 86, column: 2, scope: !4556)
!5054 = !DILocation(line: 86, column: 20, scope: !4556)
!5055 = !DILocation(line: 86, column: 35, scope: !4556)
!5056 = !DILocation(line: 87, column: 2, scope: !4556)
!5057 = !DILocation(line: 87, column: 6, scope: !4556)
!5058 = !DILocation(line: 89, column: 21, scope: !4556)
!5059 = !DILocation(line: 89, column: 13, scope: !4556)
!5060 = !DILocation(line: 89, column: 29, scope: !4556)
!5061 = !DILocation(line: 89, column: 2, scope: !4556)
!5062 = !DILocation(line: 90, column: 2, scope: !4576)
!5063 = !DILocation(line: 90, column: 2, scope: !4577)
!5064 = !DILocation(line: 90, column: 2, scope: !4580)
!5065 = !DILocation(line: 92, column: 7, scope: !5066)
!5066 = distinct !DILexicalBlock(scope: !5067, file: !2, line: 92, column: 7)
!5067 = distinct !DILexicalBlock(scope: !4580, file: !2, line: 90, column: 65)
!5068 = !DILocation(line: 92, column: 10, scope: !5066)
!5069 = !DILocation(line: 92, column: 22, scope: !5066)
!5070 = !DILocation(line: 92, column: 19, scope: !5066)
!5071 = !DILocation(line: 92, column: 28, scope: !5066)
!5072 = !DILocation(line: 92, column: 31, scope: !5066)
!5073 = !DILocation(line: 92, column: 36, scope: !5066)
!5074 = !DILocation(line: 92, column: 47, scope: !5066)
!5075 = !DILocation(line: 92, column: 50, scope: !5066)
!5076 = !DILocation(line: 92, column: 45, scope: !5066)
!5077 = !DILocation(line: 92, column: 7, scope: !5067)
!5078 = !DILocation(line: 93, column: 10, scope: !5079)
!5079 = distinct !DILexicalBlock(scope: !5066, file: !2, line: 92, column: 60)
!5080 = !DILocation(line: 93, column: 8, scope: !5079)
!5081 = !DILocation(line: 94, column: 9, scope: !5082)
!5082 = distinct !DILexicalBlock(scope: !5079, file: !2, line: 94, column: 8)
!5083 = !DILocation(line: 94, column: 14, scope: !5082)
!5084 = !DILocation(line: 94, column: 25, scope: !5082)
!5085 = !DILocation(line: 94, column: 30, scope: !5082)
!5086 = !DILocation(line: 94, column: 23, scope: !5082)
!5087 = !DILocation(line: 94, column: 43, scope: !5082)
!5088 = !DILocation(line: 94, column: 41, scope: !5082)
!5089 = !DILocation(line: 94, column: 8, scope: !5079)
!5090 = !DILocation(line: 95, column: 14, scope: !5091)
!5091 = distinct !DILexicalBlock(scope: !5082, file: !2, line: 94, column: 50)
!5092 = !DILocation(line: 95, column: 19, scope: !5091)
!5093 = !DILocation(line: 95, column: 12, scope: !5091)
!5094 = !DILocation(line: 96, column: 4, scope: !5091)
!5095 = !DILocation(line: 97, column: 14, scope: !5096)
!5096 = distinct !DILexicalBlock(scope: !5082, file: !2, line: 96, column: 11)
!5097 = !DILocation(line: 97, column: 22, scope: !5096)
!5098 = !DILocation(line: 97, column: 27, scope: !5096)
!5099 = !DILocation(line: 97, column: 20, scope: !5096)
!5100 = !DILocation(line: 97, column: 12, scope: !5096)
!5101 = !DILocation(line: 98, column: 5, scope: !5096)
!5102 = !DILocation(line: 100, column: 3, scope: !5079)
!5103 = !DILocation(line: 101, column: 2, scope: !5067)
!5104 = !DILocation(line: 90, column: 2, scope: !4579)
!5105 = distinct !{!5105, !5063, !5106, !4703, !4704}
!5106 = !DILocation(line: 101, column: 2, scope: !4577)
!5107 = !DILocation(line: 102, column: 6, scope: !5108)
!5108 = distinct !DILexicalBlock(scope: !4556, file: !2, line: 102, column: 6)
!5109 = !DILocation(line: 102, column: 10, scope: !5108)
!5110 = !DILocation(line: 102, column: 6, scope: !4556)
!5111 = !DILocation(line: 103, column: 24, scope: !5112)
!5112 = distinct !DILexicalBlock(scope: !5108, file: !2, line: 102, column: 21)
!5113 = !DILocation(line: 103, column: 31, scope: !5112)
!5114 = !DILocation(line: 103, column: 3, scope: !5112)
!5115 = !DILocation(line: 105, column: 21, scope: !5112)
!5116 = !DILocation(line: 105, column: 13, scope: !5112)
!5117 = !DILocation(line: 105, column: 29, scope: !5112)
!5118 = !DILocation(line: 105, column: 3, scope: !5112)
!5119 = !DILocation(line: 105, column: 8, scope: !5112)
!5120 = !DILocation(line: 105, column: 11, scope: !5112)
!5121 = !DILocation(line: 106, column: 20, scope: !5112)
!5122 = !DILocation(line: 106, column: 25, scope: !5112)
!5123 = !DILocation(line: 106, column: 3, scope: !5112)
!5124 = !DILocation(line: 106, column: 8, scope: !5112)
!5125 = !DILocation(line: 106, column: 18, scope: !5112)
!5126 = !DILocation(line: 107, column: 19, scope: !5112)
!5127 = !DILocation(line: 107, column: 24, scope: !5112)
!5128 = !DILocation(line: 107, column: 3, scope: !5112)
!5129 = !DILocation(line: 107, column: 8, scope: !5112)
!5130 = !DILocation(line: 107, column: 17, scope: !5112)
!5131 = !DILocation(line: 108, column: 19, scope: !5112)
!5132 = !DILocation(line: 108, column: 24, scope: !5112)
!5133 = !DILocation(line: 108, column: 3, scope: !5112)
!5134 = !DILocation(line: 108, column: 8, scope: !5112)
!5135 = !DILocation(line: 108, column: 17, scope: !5112)
!5136 = !DILocation(line: 109, column: 19, scope: !5112)
!5137 = !DILocation(line: 109, column: 24, scope: !5112)
!5138 = !DILocation(line: 109, column: 35, scope: !5112)
!5139 = !DILocation(line: 109, column: 33, scope: !5112)
!5140 = !DILocation(line: 109, column: 4, scope: !5112)
!5141 = !DILocation(line: 109, column: 17, scope: !5112)
!5142 = !DILocation(line: 110, column: 19, scope: !5112)
!5143 = !DILocation(line: 110, column: 24, scope: !5112)
!5144 = !DILocation(line: 110, column: 35, scope: !5112)
!5145 = !DILocation(line: 110, column: 33, scope: !5112)
!5146 = !DILocation(line: 110, column: 4, scope: !5112)
!5147 = !DILocation(line: 110, column: 17, scope: !5112)
!5148 = !DILocation(line: 111, column: 2, scope: !5112)
!5149 = !DILocation(line: 112, column: 23, scope: !4556)
!5150 = !DILocation(line: 112, column: 15, scope: !4556)
!5151 = !DILocation(line: 112, column: 31, scope: !4556)
!5152 = !DILocation(line: 112, column: 2, scope: !4556)
!5153 = !DILocation(line: 114, column: 9, scope: !4556)
!5154 = !DILocation(line: 115, column: 1, scope: !4556)
!5155 = !DILocation(line: 114, column: 2, scope: !4556)
!5156 = distinct !DISubprogram(name: "cache_init", scope: !2, file: !2, line: 217, type: !5157, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5159)
!5157 = !DISubroutineType(types: !5158)
!5158 = !{null, !4559, !102, !102}
!5159 = !{!5160, !5161, !5162}
!5160 = !DILocalVariable(name: "cid", arg: 1, scope: !5156, file: !2, line: 217, type: !4559)
!5161 = !DILocalVariable(name: "fclus", arg: 2, scope: !5156, file: !2, line: 217, type: !102)
!5162 = !DILocalVariable(name: "dclus", arg: 3, scope: !5156, file: !2, line: 217, type: !102)
!5163 = !DILocation(line: 217, column: 52, scope: !5156)
!5164 = !DILocation(line: 217, column: 61, scope: !5156)
!5165 = !DILocation(line: 217, column: 72, scope: !5156)
!5166 = !DILocation(line: 219, column: 2, scope: !5156)
!5167 = !DILocation(line: 219, column: 7, scope: !5156)
!5168 = !DILocation(line: 219, column: 10, scope: !5156)
!5169 = !DILocation(line: 220, column: 18, scope: !5156)
!5170 = !DILocation(line: 220, column: 2, scope: !5156)
!5171 = !DILocation(line: 220, column: 7, scope: !5156)
!5172 = !DILocation(line: 220, column: 16, scope: !5156)
!5173 = !DILocation(line: 221, column: 18, scope: !5156)
!5174 = !DILocation(line: 221, column: 2, scope: !5156)
!5175 = !DILocation(line: 221, column: 7, scope: !5156)
!5176 = !DILocation(line: 221, column: 16, scope: !5156)
!5177 = !DILocation(line: 222, column: 2, scope: !5156)
!5178 = !DILocation(line: 222, column: 7, scope: !5156)
!5179 = !DILocation(line: 222, column: 17, scope: !5156)
!5180 = !DILocation(line: 223, column: 1, scope: !5156)
!5181 = distinct !DISubprogram(name: "fatent_init", scope: !172, file: !172, line: 354, type: !5182, scopeLine: 355, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5185)
!5182 = !DISubroutineType(types: !5183)
!5183 = !{null, !5184}
!5184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4831, size: 64)
!5185 = !{!5186}
!5186 = !DILocalVariable(name: "fatent", arg: 1, scope: !5181, file: !172, line: 354, type: !5184)
!5187 = !DILocation(line: 354, column: 50, scope: !5181)
!5188 = !DILocation(line: 356, column: 2, scope: !5181)
!5189 = !DILocation(line: 356, column: 10, scope: !5181)
!5190 = !DILocation(line: 356, column: 17, scope: !5181)
!5191 = !DILocation(line: 357, column: 2, scope: !5181)
!5192 = !DILocation(line: 357, column: 10, scope: !5181)
!5193 = !DILocation(line: 357, column: 16, scope: !5181)
!5194 = !DILocation(line: 358, column: 2, scope: !5181)
!5195 = !DILocation(line: 358, column: 10, scope: !5181)
!5196 = !DILocation(line: 358, column: 20, scope: !5181)
!5197 = !DILocation(line: 359, column: 19, scope: !5181)
!5198 = !DILocation(line: 359, column: 27, scope: !5181)
!5199 = !DILocation(line: 359, column: 34, scope: !5181)
!5200 = !DILocation(line: 359, column: 2, scope: !5181)
!5201 = !DILocation(line: 359, column: 10, scope: !5181)
!5202 = !DILocation(line: 359, column: 17, scope: !5181)
!5203 = !DILocation(line: 360, column: 2, scope: !5181)
!5204 = !DILocation(line: 360, column: 10, scope: !5181)
!5205 = !DILocation(line: 360, column: 20, scope: !5181)
!5206 = !DILocation(line: 361, column: 1, scope: !5181)
!5207 = !DISubprogram(name: "fat_ent_read", scope: !172, file: !172, line: 386, type: !5208, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5208 = !DISubroutineType(types: !5209)
!5209 = !{!102, !348, !5184, !102}
!5210 = distinct !DISubprogram(name: "fat_cache_add", scope: !2, file: !2, line: 134, type: !5211, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5213)
!5211 = !DISubroutineType(types: !5212)
!5212 = !{null, !348, !4559}
!5213 = !{!5214, !5215, !5216, !5217, !5218, !5223, !5225, !5226}
!5214 = !DILocalVariable(name: "inode", arg: 1, scope: !5210, file: !2, line: 134, type: !348)
!5215 = !DILocalVariable(name: "new", arg: 2, scope: !5210, file: !2, line: 134, type: !4559)
!5216 = !DILocalVariable(name: "cache", scope: !5210, file: !2, line: 136, type: !156)
!5217 = !DILocalVariable(name: "tmp", scope: !5210, file: !2, line: 136, type: !156)
!5218 = !DILocalVariable(name: "p", scope: !5219, file: !2, line: 169, type: !163)
!5219 = distinct !DILexicalBlock(scope: !5220, file: !2, line: 168, column: 10)
!5220 = distinct !DILexicalBlock(scope: !5221, file: !2, line: 148, column: 7)
!5221 = distinct !DILexicalBlock(scope: !5222, file: !2, line: 147, column: 21)
!5222 = distinct !DILexicalBlock(scope: !5210, file: !2, line: 147, column: 6)
!5223 = !DILocalVariable(name: "__mptr", scope: !5224, file: !2, line: 170, type: !155)
!5224 = distinct !DILexicalBlock(scope: !5219, file: !2, line: 170, column: 12)
!5225 = !DILabel(scope: !5210, name: "out_update_lru", file: !2, line: 176)
!5226 = !DILabel(scope: !5210, name: "out", file: !2, line: 178)
!5227 = !DILocation(line: 134, column: 41, scope: !5210)
!5228 = !DILocation(line: 134, column: 69, scope: !5210)
!5229 = !DILocation(line: 136, column: 2, scope: !5210)
!5230 = !DILocation(line: 136, column: 20, scope: !5210)
!5231 = !DILocation(line: 136, column: 28, scope: !5210)
!5232 = !DILocation(line: 138, column: 6, scope: !5233)
!5233 = distinct !DILexicalBlock(scope: !5210, file: !2, line: 138, column: 6)
!5234 = !DILocation(line: 138, column: 11, scope: !5233)
!5235 = !DILocation(line: 138, column: 20, scope: !5233)
!5236 = !DILocation(line: 138, column: 6, scope: !5210)
!5237 = !DILocation(line: 139, column: 3, scope: !5233)
!5238 = !DILocation(line: 141, column: 21, scope: !5210)
!5239 = !DILocation(line: 141, column: 13, scope: !5210)
!5240 = !DILocation(line: 141, column: 29, scope: !5210)
!5241 = !DILocation(line: 141, column: 2, scope: !5210)
!5242 = !DILocation(line: 142, column: 6, scope: !5243)
!5243 = distinct !DILexicalBlock(scope: !5210, file: !2, line: 142, column: 6)
!5244 = !DILocation(line: 142, column: 11, scope: !5243)
!5245 = !DILocation(line: 142, column: 14, scope: !5243)
!5246 = !DILocation(line: 142, column: 33, scope: !5243)
!5247 = !DILocation(line: 143, column: 6, scope: !5243)
!5248 = !DILocation(line: 143, column: 11, scope: !5243)
!5249 = !DILocation(line: 143, column: 25, scope: !5243)
!5250 = !DILocation(line: 143, column: 17, scope: !5243)
!5251 = !DILocation(line: 143, column: 33, scope: !5243)
!5252 = !DILocation(line: 143, column: 14, scope: !5243)
!5253 = !DILocation(line: 142, column: 6, scope: !5210)
!5254 = !DILocation(line: 144, column: 3, scope: !5243)
!5255 = !DILocation(line: 146, column: 26, scope: !5210)
!5256 = !DILocation(line: 146, column: 33, scope: !5210)
!5257 = !DILocation(line: 146, column: 10, scope: !5210)
!5258 = !DILocation(line: 146, column: 8, scope: !5210)
!5259 = !DILocation(line: 147, column: 6, scope: !5222)
!5260 = !DILocation(line: 147, column: 12, scope: !5222)
!5261 = !DILocation(line: 147, column: 6, scope: !5210)
!5262 = !DILocation(line: 148, column: 15, scope: !5220)
!5263 = !DILocation(line: 148, column: 7, scope: !5220)
!5264 = !DILocation(line: 148, column: 23, scope: !5220)
!5265 = !DILocation(line: 148, column: 49, scope: !5220)
!5266 = !DILocation(line: 148, column: 35, scope: !5220)
!5267 = !DILocation(line: 148, column: 33, scope: !5220)
!5268 = !DILocation(line: 148, column: 7, scope: !5221)
!5269 = !DILocation(line: 149, column: 12, scope: !5270)
!5270 = distinct !DILexicalBlock(scope: !5220, file: !2, line: 148, column: 57)
!5271 = !DILocation(line: 149, column: 4, scope: !5270)
!5272 = !DILocation(line: 149, column: 20, scope: !5270)
!5273 = !DILocation(line: 149, column: 29, scope: !5270)
!5274 = !DILocation(line: 150, column: 25, scope: !5270)
!5275 = !DILocation(line: 150, column: 17, scope: !5270)
!5276 = !DILocation(line: 150, column: 33, scope: !5270)
!5277 = !DILocation(line: 150, column: 4, scope: !5270)
!5278 = !DILocation(line: 152, column: 26, scope: !5270)
!5279 = !DILocation(line: 152, column: 10, scope: !5270)
!5280 = !DILocation(line: 152, column: 8, scope: !5270)
!5281 = !DILocation(line: 153, column: 9, scope: !5282)
!5282 = distinct !DILexicalBlock(scope: !5270, file: !2, line: 153, column: 8)
!5283 = !DILocation(line: 153, column: 8, scope: !5270)
!5284 = !DILocation(line: 154, column: 24, scope: !5285)
!5285 = distinct !DILexicalBlock(scope: !5282, file: !2, line: 153, column: 14)
!5286 = !DILocation(line: 154, column: 16, scope: !5285)
!5287 = !DILocation(line: 154, column: 32, scope: !5285)
!5288 = !DILocation(line: 154, column: 5, scope: !5285)
!5289 = !DILocation(line: 155, column: 13, scope: !5285)
!5290 = !DILocation(line: 155, column: 5, scope: !5285)
!5291 = !DILocation(line: 155, column: 21, scope: !5285)
!5292 = !DILocation(line: 155, column: 30, scope: !5285)
!5293 = !DILocation(line: 156, column: 26, scope: !5285)
!5294 = !DILocation(line: 156, column: 18, scope: !5285)
!5295 = !DILocation(line: 156, column: 34, scope: !5285)
!5296 = !DILocation(line: 156, column: 5, scope: !5285)
!5297 = !DILocation(line: 157, column: 5, scope: !5285)
!5298 = !DILocation(line: 160, column: 23, scope: !5270)
!5299 = !DILocation(line: 160, column: 15, scope: !5270)
!5300 = !DILocation(line: 160, column: 31, scope: !5270)
!5301 = !DILocation(line: 160, column: 4, scope: !5270)
!5302 = !DILocation(line: 161, column: 28, scope: !5270)
!5303 = !DILocation(line: 161, column: 35, scope: !5270)
!5304 = !DILocation(line: 161, column: 12, scope: !5270)
!5305 = !DILocation(line: 161, column: 10, scope: !5270)
!5306 = !DILocation(line: 162, column: 8, scope: !5307)
!5307 = distinct !DILexicalBlock(scope: !5270, file: !2, line: 162, column: 8)
!5308 = !DILocation(line: 162, column: 14, scope: !5307)
!5309 = !DILocation(line: 162, column: 8, scope: !5270)
!5310 = !DILocation(line: 163, column: 13, scope: !5311)
!5311 = distinct !DILexicalBlock(scope: !5307, file: !2, line: 162, column: 23)
!5312 = !DILocation(line: 163, column: 5, scope: !5311)
!5313 = !DILocation(line: 163, column: 21, scope: !5311)
!5314 = !DILocation(line: 163, column: 30, scope: !5311)
!5315 = !DILocation(line: 164, column: 20, scope: !5311)
!5316 = !DILocation(line: 164, column: 5, scope: !5311)
!5317 = !DILocation(line: 165, column: 5, scope: !5311)
!5318 = !DILocation(line: 167, column: 12, scope: !5270)
!5319 = !DILocation(line: 167, column: 10, scope: !5270)
!5320 = !DILocation(line: 168, column: 3, scope: !5270)
!5321 = !DILocation(line: 169, column: 4, scope: !5219)
!5322 = !DILocation(line: 169, column: 22, scope: !5219)
!5323 = !DILocation(line: 169, column: 34, scope: !5219)
!5324 = !DILocation(line: 169, column: 26, scope: !5219)
!5325 = !DILocation(line: 169, column: 42, scope: !5219)
!5326 = !DILocation(line: 169, column: 52, scope: !5219)
!5327 = !DILocation(line: 170, column: 12, scope: !5224)
!5328 = !DILocation(line: 170, column: 12, scope: !5219)
!5329 = !DILocation(line: 170, column: 10, scope: !5219)
!5330 = !DILocation(line: 171, column: 3, scope: !5220)
!5331 = !DILocation(line: 172, column: 21, scope: !5221)
!5332 = !DILocation(line: 172, column: 26, scope: !5221)
!5333 = !DILocation(line: 172, column: 3, scope: !5221)
!5334 = !DILocation(line: 172, column: 10, scope: !5221)
!5335 = !DILocation(line: 172, column: 19, scope: !5221)
!5336 = !DILocation(line: 173, column: 21, scope: !5221)
!5337 = !DILocation(line: 173, column: 26, scope: !5221)
!5338 = !DILocation(line: 173, column: 3, scope: !5221)
!5339 = !DILocation(line: 173, column: 10, scope: !5221)
!5340 = !DILocation(line: 173, column: 19, scope: !5221)
!5341 = !DILocation(line: 174, column: 22, scope: !5221)
!5342 = !DILocation(line: 174, column: 27, scope: !5221)
!5343 = !DILocation(line: 174, column: 3, scope: !5221)
!5344 = !DILocation(line: 174, column: 10, scope: !5221)
!5345 = !DILocation(line: 174, column: 20, scope: !5221)
!5346 = !DILocation(line: 175, column: 2, scope: !5221)
!5347 = !DILocation(line: 147, column: 15, scope: !5222)
!5348 = !DILocation(line: 176, column: 1, scope: !5210)
!5349 = !DILocation(line: 177, column: 23, scope: !5210)
!5350 = !DILocation(line: 177, column: 30, scope: !5210)
!5351 = !DILocation(line: 177, column: 2, scope: !5210)
!5352 = !DILocation(line: 178, column: 1, scope: !5210)
!5353 = !DILocation(line: 179, column: 23, scope: !5210)
!5354 = !DILocation(line: 179, column: 15, scope: !5210)
!5355 = !DILocation(line: 179, column: 31, scope: !5210)
!5356 = !DILocation(line: 179, column: 2, scope: !5210)
!5357 = !DILocation(line: 180, column: 1, scope: !5210)
!5358 = distinct !DISubprogram(name: "cache_contiguous", scope: !2, file: !2, line: 211, type: !5359, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5361)
!5359 = !DISubroutineType(types: !5360)
!5360 = !{!102, !4559, !102}
!5361 = !{!5362, !5363}
!5362 = !DILocalVariable(name: "cid", arg: 1, scope: !5358, file: !2, line: 211, type: !4559)
!5363 = !DILocalVariable(name: "dclus", arg: 2, scope: !5358, file: !2, line: 211, type: !102)
!5364 = !DILocation(line: 211, column: 57, scope: !5358)
!5365 = !DILocation(line: 211, column: 66, scope: !5358)
!5366 = !DILocation(line: 213, column: 2, scope: !5358)
!5367 = !DILocation(line: 213, column: 7, scope: !5358)
!5368 = !DILocation(line: 213, column: 16, scope: !5358)
!5369 = !DILocation(line: 214, column: 11, scope: !5358)
!5370 = !DILocation(line: 214, column: 16, scope: !5358)
!5371 = !DILocation(line: 214, column: 27, scope: !5358)
!5372 = !DILocation(line: 214, column: 32, scope: !5358)
!5373 = !DILocation(line: 214, column: 25, scope: !5358)
!5374 = !DILocation(line: 214, column: 46, scope: !5358)
!5375 = !DILocation(line: 214, column: 43, scope: !5358)
!5376 = !DILocation(line: 214, column: 2, scope: !5358)
!5377 = distinct !DISubprogram(name: "fatent_brelse", scope: !172, file: !172, line: 369, type: !5182, scopeLine: 370, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5378)
!5378 = !{!5379, !5380}
!5379 = !DILocalVariable(name: "fatent", arg: 1, scope: !5377, file: !172, line: 369, type: !5184)
!5380 = !DILocalVariable(name: "i", scope: !5377, file: !172, line: 371, type: !102)
!5381 = !DILocation(line: 369, column: 52, scope: !5377)
!5382 = !DILocation(line: 371, column: 2, scope: !5377)
!5383 = !DILocation(line: 371, column: 6, scope: !5377)
!5384 = !DILocation(line: 372, column: 2, scope: !5377)
!5385 = !DILocation(line: 372, column: 10, scope: !5377)
!5386 = !DILocation(line: 372, column: 20, scope: !5377)
!5387 = !DILocation(line: 373, column: 9, scope: !5388)
!5388 = distinct !DILexicalBlock(scope: !5377, file: !172, line: 373, column: 2)
!5389 = !DILocation(line: 373, column: 7, scope: !5388)
!5390 = !DILocation(line: 373, column: 14, scope: !5391)
!5391 = distinct !DILexicalBlock(scope: !5388, file: !172, line: 373, column: 2)
!5392 = !DILocation(line: 373, column: 18, scope: !5391)
!5393 = !DILocation(line: 373, column: 26, scope: !5391)
!5394 = !DILocation(line: 373, column: 16, scope: !5391)
!5395 = !DILocation(line: 373, column: 2, scope: !5388)
!5396 = !DILocation(line: 374, column: 10, scope: !5391)
!5397 = !DILocation(line: 374, column: 18, scope: !5391)
!5398 = !DILocation(line: 374, column: 22, scope: !5391)
!5399 = !DILocation(line: 374, column: 3, scope: !5391)
!5400 = !DILocation(line: 373, column: 35, scope: !5391)
!5401 = !DILocation(line: 373, column: 2, scope: !5391)
!5402 = distinct !{!5402, !5395, !5403, !4703, !4704}
!5403 = !DILocation(line: 374, column: 24, scope: !5388)
!5404 = !DILocation(line: 375, column: 2, scope: !5377)
!5405 = !DILocation(line: 375, column: 10, scope: !5377)
!5406 = !DILocation(line: 375, column: 17, scope: !5377)
!5407 = !DILocation(line: 376, column: 19, scope: !5377)
!5408 = !DILocation(line: 376, column: 27, scope: !5377)
!5409 = !DILocation(line: 376, column: 34, scope: !5377)
!5410 = !DILocation(line: 376, column: 2, scope: !5377)
!5411 = !DILocation(line: 376, column: 10, scope: !5377)
!5412 = !DILocation(line: 376, column: 17, scope: !5377)
!5413 = !DILocation(line: 377, column: 2, scope: !5377)
!5414 = !DILocation(line: 377, column: 10, scope: !5377)
!5415 = !DILocation(line: 377, column: 20, scope: !5377)
!5416 = !DILocation(line: 378, column: 1, scope: !5377)
!5417 = distinct !DISubprogram(name: "fat_get_mapped_cluster", scope: !2, file: !2, line: 310, type: !5418, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5420)
!5418 = !DISubroutineType(types: !5419)
!5419 = !{!102, !348, !1702, !1702, !2257, !1743}
!5420 = !{!5421, !5422, !5423, !5424, !5425, !5426, !5427, !5428, !5429}
!5421 = !DILocalVariable(name: "inode", arg: 1, scope: !5417, file: !2, line: 310, type: !348)
!5422 = !DILocalVariable(name: "sector", arg: 2, scope: !5417, file: !2, line: 310, type: !1702)
!5423 = !DILocalVariable(name: "last_block", arg: 3, scope: !5417, file: !2, line: 311, type: !1702)
!5424 = !DILocalVariable(name: "mapped_blocks", arg: 4, scope: !5417, file: !2, line: 312, type: !2257)
!5425 = !DILocalVariable(name: "bmap", arg: 5, scope: !5417, file: !2, line: 312, type: !1743)
!5426 = !DILocalVariable(name: "sb", scope: !5417, file: !2, line: 314, type: !423)
!5427 = !DILocalVariable(name: "sbi", scope: !5417, file: !2, line: 315, type: !4733)
!5428 = !DILocalVariable(name: "cluster", scope: !5417, file: !2, line: 316, type: !102)
!5429 = !DILocalVariable(name: "offset", scope: !5417, file: !2, line: 316, type: !102)
!5430 = !DILocation(line: 310, column: 42, scope: !5417)
!5431 = !DILocation(line: 310, column: 58, scope: !5417)
!5432 = !DILocation(line: 311, column: 16, scope: !5417)
!5433 = !DILocation(line: 312, column: 22, scope: !5417)
!5434 = !DILocation(line: 312, column: 47, scope: !5417)
!5435 = !DILocation(line: 314, column: 2, scope: !5417)
!5436 = !DILocation(line: 314, column: 22, scope: !5417)
!5437 = !DILocation(line: 314, column: 27, scope: !5417)
!5438 = !DILocation(line: 314, column: 34, scope: !5417)
!5439 = !DILocation(line: 315, column: 2, scope: !5417)
!5440 = !DILocation(line: 315, column: 24, scope: !5417)
!5441 = !DILocation(line: 315, column: 39, scope: !5417)
!5442 = !DILocation(line: 315, column: 30, scope: !5417)
!5443 = !DILocation(line: 316, column: 2, scope: !5417)
!5444 = !DILocation(line: 316, column: 6, scope: !5417)
!5445 = !DILocation(line: 316, column: 15, scope: !5417)
!5446 = !DILocation(line: 318, column: 12, scope: !5417)
!5447 = !DILocation(line: 318, column: 23, scope: !5417)
!5448 = !DILocation(line: 318, column: 28, scope: !5417)
!5449 = !DILocation(line: 318, column: 43, scope: !5417)
!5450 = !DILocation(line: 318, column: 47, scope: !5417)
!5451 = !DILocation(line: 318, column: 41, scope: !5417)
!5452 = !DILocation(line: 318, column: 19, scope: !5417)
!5453 = !DILocation(line: 318, column: 10, scope: !5417)
!5454 = !DILocation(line: 319, column: 12, scope: !5417)
!5455 = !DILocation(line: 319, column: 22, scope: !5417)
!5456 = !DILocation(line: 319, column: 27, scope: !5417)
!5457 = !DILocation(line: 319, column: 40, scope: !5417)
!5458 = !DILocation(line: 319, column: 21, scope: !5417)
!5459 = !DILocation(line: 319, column: 19, scope: !5417)
!5460 = !DILocation(line: 319, column: 10, scope: !5417)
!5461 = !DILocation(line: 320, column: 29, scope: !5417)
!5462 = !DILocation(line: 320, column: 36, scope: !5417)
!5463 = !DILocation(line: 320, column: 12, scope: !5417)
!5464 = !DILocation(line: 320, column: 10, scope: !5417)
!5465 = !DILocation(line: 321, column: 6, scope: !5466)
!5466 = distinct !DILexicalBlock(scope: !5417, file: !2, line: 321, column: 6)
!5467 = !DILocation(line: 321, column: 14, scope: !5466)
!5468 = !DILocation(line: 321, column: 6, scope: !5417)
!5469 = !DILocation(line: 322, column: 10, scope: !5466)
!5470 = !DILocation(line: 322, column: 3, scope: !5466)
!5471 = !DILocation(line: 323, column: 11, scope: !5472)
!5472 = distinct !DILexicalBlock(scope: !5466, file: !2, line: 323, column: 11)
!5473 = !DILocation(line: 323, column: 11, scope: !5466)
!5474 = !DILocation(line: 324, column: 29, scope: !5475)
!5475 = distinct !DILexicalBlock(scope: !5472, file: !2, line: 323, column: 20)
!5476 = !DILocation(line: 324, column: 34, scope: !5475)
!5477 = !DILocation(line: 324, column: 11, scope: !5475)
!5478 = !DILocation(line: 324, column: 45, scope: !5475)
!5479 = !DILocation(line: 324, column: 43, scope: !5475)
!5480 = !DILocation(line: 324, column: 4, scope: !5475)
!5481 = !DILocation(line: 324, column: 9, scope: !5475)
!5482 = !DILocation(line: 325, column: 20, scope: !5475)
!5483 = !DILocation(line: 325, column: 25, scope: !5475)
!5484 = !DILocation(line: 325, column: 40, scope: !5475)
!5485 = !DILocation(line: 325, column: 38, scope: !5475)
!5486 = !DILocation(line: 325, column: 4, scope: !5475)
!5487 = !DILocation(line: 325, column: 18, scope: !5475)
!5488 = !DILocation(line: 326, column: 8, scope: !5489)
!5489 = distinct !DILexicalBlock(scope: !5475, file: !2, line: 326, column: 7)
!5490 = !DILocation(line: 326, column: 7, scope: !5489)
!5491 = !DILocation(line: 326, column: 24, scope: !5489)
!5492 = !DILocation(line: 326, column: 37, scope: !5489)
!5493 = !DILocation(line: 326, column: 35, scope: !5489)
!5494 = !DILocation(line: 326, column: 22, scope: !5489)
!5495 = !DILocation(line: 326, column: 7, scope: !5475)
!5496 = !DILocation(line: 327, column: 21, scope: !5489)
!5497 = !DILocation(line: 327, column: 34, scope: !5489)
!5498 = !DILocation(line: 327, column: 32, scope: !5489)
!5499 = !DILocation(line: 327, column: 5, scope: !5489)
!5500 = !DILocation(line: 327, column: 19, scope: !5489)
!5501 = !DILocation(line: 327, column: 4, scope: !5489)
!5502 = !DILocation(line: 328, column: 2, scope: !5475)
!5503 = !DILocation(line: 330, column: 2, scope: !5417)
!5504 = !DILocation(line: 331, column: 1, scope: !5417)
!5505 = distinct !DISubprogram(name: "fat_bmap_cluster", scope: !2, file: !2, line: 291, type: !4429, scopeLine: 292, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5506)
!5506 = !{!5507, !5508, !5509, !5510, !5511, !5512}
!5507 = !DILocalVariable(name: "inode", arg: 1, scope: !5505, file: !2, line: 291, type: !348)
!5508 = !DILocalVariable(name: "cluster", arg: 2, scope: !5505, file: !2, line: 291, type: !102)
!5509 = !DILocalVariable(name: "sb", scope: !5505, file: !2, line: 293, type: !423)
!5510 = !DILocalVariable(name: "ret", scope: !5505, file: !2, line: 294, type: !102)
!5511 = !DILocalVariable(name: "fclus", scope: !5505, file: !2, line: 294, type: !102)
!5512 = !DILocalVariable(name: "dclus", scope: !5505, file: !2, line: 294, type: !102)
!5513 = !DILocation(line: 291, column: 43, scope: !5505)
!5514 = !DILocation(line: 291, column: 54, scope: !5505)
!5515 = !DILocation(line: 293, column: 2, scope: !5505)
!5516 = !DILocation(line: 293, column: 22, scope: !5505)
!5517 = !DILocation(line: 293, column: 27, scope: !5505)
!5518 = !DILocation(line: 293, column: 34, scope: !5505)
!5519 = !DILocation(line: 294, column: 2, scope: !5505)
!5520 = !DILocation(line: 294, column: 6, scope: !5505)
!5521 = !DILocation(line: 294, column: 11, scope: !5505)
!5522 = !DILocation(line: 294, column: 18, scope: !5505)
!5523 = !DILocation(line: 296, column: 14, scope: !5524)
!5524 = distinct !DILexicalBlock(scope: !5505, file: !2, line: 296, column: 6)
!5525 = !DILocation(line: 296, column: 6, scope: !5524)
!5526 = !DILocation(line: 296, column: 22, scope: !5524)
!5527 = !DILocation(line: 296, column: 30, scope: !5524)
!5528 = !DILocation(line: 296, column: 6, scope: !5505)
!5529 = !DILocation(line: 297, column: 3, scope: !5524)
!5530 = !DILocation(line: 299, column: 24, scope: !5505)
!5531 = !DILocation(line: 299, column: 31, scope: !5505)
!5532 = !DILocation(line: 299, column: 8, scope: !5505)
!5533 = !DILocation(line: 299, column: 6, scope: !5505)
!5534 = !DILocation(line: 300, column: 6, scope: !5535)
!5535 = distinct !DILexicalBlock(scope: !5505, file: !2, line: 300, column: 6)
!5536 = !DILocation(line: 300, column: 10, scope: !5535)
!5537 = !DILocation(line: 300, column: 6, scope: !5505)
!5538 = !DILocation(line: 301, column: 10, scope: !5535)
!5539 = !DILocation(line: 301, column: 3, scope: !5535)
!5540 = !DILocation(line: 302, column: 11, scope: !5541)
!5541 = distinct !DILexicalBlock(scope: !5535, file: !2, line: 302, column: 11)
!5542 = !DILocation(line: 302, column: 15, scope: !5541)
!5543 = !DILocation(line: 302, column: 11, scope: !5535)
!5544 = !DILocation(line: 303, column: 3, scope: !5545)
!5545 = distinct !DILexicalBlock(scope: !5541, file: !2, line: 302, column: 31)
!5546 = !DILocation(line: 305, column: 3, scope: !5545)
!5547 = !DILocation(line: 307, column: 9, scope: !5505)
!5548 = !DILocation(line: 307, column: 2, scope: !5505)
!5549 = !DILocation(line: 308, column: 1, scope: !5505)
!5550 = distinct !DISubprogram(name: "fat_clus_to_blknr", scope: !172, file: !172, line: 246, type: !5551, scopeLine: 247, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5553)
!5551 = !DISubroutineType(types: !5552)
!5552 = !{!1702, !4733, !102}
!5553 = !{!5554, !5555}
!5554 = !DILocalVariable(name: "sbi", arg: 1, scope: !5550, file: !172, line: 246, type: !4733)
!5555 = !DILocalVariable(name: "clus", arg: 2, scope: !5550, file: !172, line: 246, type: !102)
!5556 = !DILocation(line: 246, column: 64, scope: !5550)
!5557 = !DILocation(line: 246, column: 73, scope: !5550)
!5558 = !DILocation(line: 248, column: 20, scope: !5550)
!5559 = !DILocation(line: 248, column: 10, scope: !5550)
!5560 = !DILocation(line: 248, column: 25, scope: !5550)
!5561 = !DILocation(line: 248, column: 44, scope: !5550)
!5562 = !DILocation(line: 248, column: 49, scope: !5550)
!5563 = !DILocation(line: 248, column: 42, scope: !5550)
!5564 = !DILocation(line: 249, column: 5, scope: !5550)
!5565 = !DILocation(line: 249, column: 10, scope: !5550)
!5566 = !DILocation(line: 249, column: 3, scope: !5550)
!5567 = !DILocation(line: 248, column: 2, scope: !5550)
!5568 = distinct !DISubprogram(name: "fat_bmap", scope: !2, file: !2, line: 358, type: !5569, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5571)
!5569 = !DISubroutineType(types: !5570)
!5570 = !{!102, !348, !1702, !1743, !2257, !102, !706}
!5571 = !{!5572, !5573, !5574, !5575, !5576, !5577, !5578, !5579}
!5572 = !DILocalVariable(name: "inode", arg: 1, scope: !5568, file: !2, line: 358, type: !348)
!5573 = !DILocalVariable(name: "sector", arg: 2, scope: !5568, file: !2, line: 358, type: !1702)
!5574 = !DILocalVariable(name: "phys", arg: 3, scope: !5568, file: !2, line: 358, type: !1743)
!5575 = !DILocalVariable(name: "mapped_blocks", arg: 4, scope: !5568, file: !2, line: 359, type: !2257)
!5576 = !DILocalVariable(name: "create", arg: 5, scope: !5568, file: !2, line: 359, type: !102)
!5577 = !DILocalVariable(name: "from_bmap", arg: 6, scope: !5568, file: !2, line: 359, type: !706)
!5578 = !DILocalVariable(name: "sbi", scope: !5568, file: !2, line: 361, type: !4733)
!5579 = !DILocalVariable(name: "last_block", scope: !5568, file: !2, line: 362, type: !1702)
!5580 = !DILocation(line: 358, column: 28, scope: !5568)
!5581 = !DILocation(line: 358, column: 44, scope: !5568)
!5582 = !DILocation(line: 358, column: 62, scope: !5568)
!5583 = !DILocation(line: 359, column: 22, scope: !5568)
!5584 = !DILocation(line: 359, column: 41, scope: !5568)
!5585 = !DILocation(line: 359, column: 54, scope: !5568)
!5586 = !DILocation(line: 361, column: 2, scope: !5568)
!5587 = !DILocation(line: 361, column: 24, scope: !5568)
!5588 = !DILocation(line: 361, column: 39, scope: !5568)
!5589 = !DILocation(line: 361, column: 46, scope: !5568)
!5590 = !DILocation(line: 361, column: 30, scope: !5568)
!5591 = !DILocation(line: 362, column: 2, scope: !5568)
!5592 = !DILocation(line: 362, column: 11, scope: !5568)
!5593 = !DILocation(line: 364, column: 3, scope: !5568)
!5594 = !DILocation(line: 364, column: 8, scope: !5568)
!5595 = !DILocation(line: 365, column: 3, scope: !5568)
!5596 = !DILocation(line: 365, column: 17, scope: !5568)
!5597 = !DILocation(line: 366, column: 16, scope: !5598)
!5598 = distinct !DILexicalBlock(scope: !5568, file: !2, line: 366, column: 6)
!5599 = !DILocation(line: 366, column: 7, scope: !5598)
!5600 = !DILocation(line: 366, column: 21, scope: !5598)
!5601 = !DILocation(line: 366, column: 25, scope: !5598)
!5602 = !DILocation(line: 366, column: 32, scope: !5598)
!5603 = !DILocation(line: 366, column: 38, scope: !5598)
!5604 = !DILocation(line: 366, column: 6, scope: !5568)
!5605 = !DILocation(line: 367, column: 7, scope: !5606)
!5606 = distinct !DILexicalBlock(scope: !5607, file: !2, line: 367, column: 7)
!5607 = distinct !DILexicalBlock(scope: !5598, file: !2, line: 366, column: 58)
!5608 = !DILocation(line: 367, column: 17, scope: !5606)
!5609 = !DILocation(line: 367, column: 22, scope: !5606)
!5610 = !DILocation(line: 367, column: 37, scope: !5606)
!5611 = !DILocation(line: 367, column: 42, scope: !5606)
!5612 = !DILocation(line: 367, column: 34, scope: !5606)
!5613 = !DILocation(line: 367, column: 16, scope: !5606)
!5614 = !DILocation(line: 367, column: 14, scope: !5606)
!5615 = !DILocation(line: 367, column: 7, scope: !5607)
!5616 = !DILocation(line: 368, column: 12, scope: !5617)
!5617 = distinct !DILexicalBlock(scope: !5606, file: !2, line: 367, column: 63)
!5618 = !DILocation(line: 368, column: 21, scope: !5617)
!5619 = !DILocation(line: 368, column: 26, scope: !5617)
!5620 = !DILocation(line: 368, column: 19, scope: !5617)
!5621 = !DILocation(line: 368, column: 5, scope: !5617)
!5622 = !DILocation(line: 368, column: 10, scope: !5617)
!5623 = !DILocation(line: 369, column: 5, scope: !5617)
!5624 = !DILocation(line: 369, column: 19, scope: !5617)
!5625 = !DILocation(line: 370, column: 3, scope: !5617)
!5626 = !DILocation(line: 371, column: 3, scope: !5607)
!5627 = !DILocation(line: 374, column: 7, scope: !5628)
!5628 = distinct !DILexicalBlock(scope: !5568, file: !2, line: 374, column: 6)
!5629 = !{i8 0, i8 2}
!5630 = !DILocation(line: 374, column: 6, scope: !5568)
!5631 = !DILocation(line: 375, column: 21, scope: !5632)
!5632 = distinct !DILexicalBlock(scope: !5633, file: !2, line: 375, column: 7)
!5633 = distinct !DILexicalBlock(scope: !5628, file: !2, line: 374, column: 18)
!5634 = !DILocation(line: 375, column: 28, scope: !5632)
!5635 = !DILocation(line: 375, column: 49, scope: !5632)
!5636 = !DILocation(line: 375, column: 7, scope: !5632)
!5637 = !DILocation(line: 375, column: 7, scope: !5633)
!5638 = !DILocation(line: 376, column: 4, scope: !5632)
!5639 = !DILocation(line: 377, column: 2, scope: !5633)
!5640 = !DILocation(line: 378, column: 16, scope: !5641)
!5641 = distinct !DILexicalBlock(scope: !5628, file: !2, line: 377, column: 9)
!5642 = !DILocation(line: 378, column: 23, scope: !5641)
!5643 = !DILocation(line: 379, column: 6, scope: !5641)
!5644 = !DILocation(line: 379, column: 13, scope: !5641)
!5645 = !DILocation(line: 379, column: 19, scope: !5641)
!5646 = !DILocation(line: 379, column: 36, scope: !5641)
!5647 = !DILocation(line: 378, column: 32, scope: !5641)
!5648 = !DILocation(line: 378, column: 14, scope: !5641)
!5649 = !DILocation(line: 380, column: 7, scope: !5650)
!5650 = distinct !DILexicalBlock(scope: !5641, file: !2, line: 380, column: 7)
!5651 = !DILocation(line: 380, column: 17, scope: !5650)
!5652 = !DILocation(line: 380, column: 14, scope: !5650)
!5653 = !DILocation(line: 380, column: 7, scope: !5641)
!5654 = !DILocation(line: 381, column: 4, scope: !5650)
!5655 = !DILocation(line: 384, column: 32, scope: !5568)
!5656 = !DILocation(line: 384, column: 39, scope: !5568)
!5657 = !DILocation(line: 384, column: 47, scope: !5568)
!5658 = !DILocation(line: 384, column: 59, scope: !5568)
!5659 = !DILocation(line: 385, column: 11, scope: !5568)
!5660 = !DILocation(line: 384, column: 9, scope: !5568)
!5661 = !DILocation(line: 384, column: 2, scope: !5568)
!5662 = !DILocation(line: 386, column: 1, scope: !5568)
!5663 = distinct !DISubprogram(name: "is_fat32", scope: !172, file: !172, line: 160, type: !5664, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5668)
!5664 = !DISubroutineType(types: !5665)
!5665 = !{!706, !5666}
!5666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5667, size: 64)
!5667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4734)
!5668 = !{!5669}
!5669 = !DILocalVariable(name: "sbi", arg: 1, scope: !5663, file: !172, line: 160, type: !5666)
!5670 = !DILocation(line: 160, column: 57, scope: !5663)
!5671 = !DILocation(line: 162, column: 9, scope: !5663)
!5672 = !DILocation(line: 162, column: 14, scope: !5663)
!5673 = !DILocation(line: 162, column: 23, scope: !5663)
!5674 = !DILocation(line: 162, column: 2, scope: !5663)
!5675 = distinct !DISubprogram(name: "is_exceed_eof", scope: !2, file: !2, line: 333, type: !5676, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5678)
!5676 = !DISubroutineType(types: !5677)
!5677 = !{!102, !348, !1702, !1743, !102}
!5678 = !{!5679, !5680, !5681, !5682, !5683, !5684, !5685}
!5679 = !DILocalVariable(name: "inode", arg: 1, scope: !5675, file: !2, line: 333, type: !348)
!5680 = !DILocalVariable(name: "sector", arg: 2, scope: !5675, file: !2, line: 333, type: !1702)
!5681 = !DILocalVariable(name: "last_block", arg: 3, scope: !5675, file: !2, line: 334, type: !1743)
!5682 = !DILocalVariable(name: "create", arg: 4, scope: !5675, file: !2, line: 334, type: !102)
!5683 = !DILocalVariable(name: "sb", scope: !5675, file: !2, line: 336, type: !423)
!5684 = !DILocalVariable(name: "blocksize", scope: !5675, file: !2, line: 337, type: !683)
!5685 = !DILocalVariable(name: "blocksize_bits", scope: !5675, file: !2, line: 338, type: !346)
!5686 = !DILocation(line: 333, column: 40, scope: !5675)
!5687 = !DILocation(line: 333, column: 56, scope: !5675)
!5688 = !DILocation(line: 334, column: 15, scope: !5675)
!5689 = !DILocation(line: 334, column: 31, scope: !5675)
!5690 = !DILocation(line: 336, column: 2, scope: !5675)
!5691 = !DILocation(line: 336, column: 22, scope: !5675)
!5692 = !DILocation(line: 336, column: 27, scope: !5675)
!5693 = !DILocation(line: 336, column: 34, scope: !5675)
!5694 = !DILocation(line: 337, column: 2, scope: !5675)
!5695 = !DILocation(line: 337, column: 22, scope: !5675)
!5696 = !DILocation(line: 337, column: 34, scope: !5675)
!5697 = !DILocation(line: 337, column: 38, scope: !5675)
!5698 = !DILocation(line: 338, column: 2, scope: !5675)
!5699 = !DILocation(line: 338, column: 22, scope: !5675)
!5700 = !DILocation(line: 338, column: 39, scope: !5675)
!5701 = !DILocation(line: 338, column: 43, scope: !5675)
!5702 = !DILocation(line: 340, column: 29, scope: !5675)
!5703 = !DILocation(line: 340, column: 17, scope: !5675)
!5704 = !DILocation(line: 340, column: 39, scope: !5675)
!5705 = !DILocation(line: 340, column: 49, scope: !5675)
!5706 = !DILocation(line: 340, column: 36, scope: !5675)
!5707 = !DILocation(line: 340, column: 58, scope: !5675)
!5708 = !DILocation(line: 340, column: 55, scope: !5675)
!5709 = !DILocation(line: 340, column: 3, scope: !5675)
!5710 = !DILocation(line: 340, column: 14, scope: !5675)
!5711 = !DILocation(line: 341, column: 6, scope: !5712)
!5712 = distinct !DILexicalBlock(scope: !5675, file: !2, line: 341, column: 6)
!5713 = !DILocation(line: 341, column: 17, scope: !5712)
!5714 = !DILocation(line: 341, column: 16, scope: !5712)
!5715 = !DILocation(line: 341, column: 13, scope: !5712)
!5716 = !DILocation(line: 341, column: 6, scope: !5675)
!5717 = !DILocation(line: 342, column: 8, scope: !5718)
!5718 = distinct !DILexicalBlock(scope: !5719, file: !2, line: 342, column: 7)
!5719 = distinct !DILexicalBlock(scope: !5712, file: !2, line: 341, column: 29)
!5720 = !DILocation(line: 342, column: 7, scope: !5719)
!5721 = !DILocation(line: 343, column: 4, scope: !5718)
!5722 = !DILocation(line: 349, column: 26, scope: !5719)
!5723 = !DILocation(line: 349, column: 18, scope: !5719)
!5724 = !DILocation(line: 349, column: 34, scope: !5719)
!5725 = !DILocation(line: 349, column: 49, scope: !5719)
!5726 = !DILocation(line: 349, column: 59, scope: !5719)
!5727 = !DILocation(line: 349, column: 46, scope: !5719)
!5728 = !DILocation(line: 350, column: 7, scope: !5719)
!5729 = !DILocation(line: 350, column: 4, scope: !5719)
!5730 = !DILocation(line: 349, column: 4, scope: !5719)
!5731 = !DILocation(line: 349, column: 15, scope: !5719)
!5732 = !DILocation(line: 351, column: 7, scope: !5733)
!5733 = distinct !DILexicalBlock(scope: !5719, file: !2, line: 351, column: 7)
!5734 = !DILocation(line: 351, column: 18, scope: !5733)
!5735 = !DILocation(line: 351, column: 17, scope: !5733)
!5736 = !DILocation(line: 351, column: 14, scope: !5733)
!5737 = !DILocation(line: 351, column: 7, scope: !5719)
!5738 = !DILocation(line: 352, column: 4, scope: !5733)
!5739 = !DILocation(line: 353, column: 2, scope: !5719)
!5740 = !DILocation(line: 355, column: 2, scope: !5675)
!5741 = !DILocation(line: 356, column: 1, scope: !5675)
!5742 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !5743, file: !5743, line: 35, type: !5744, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5746)
!5743 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!5744 = !DISubroutineType(types: !5745)
!5745 = !{null, !163}
!5746 = !{!5747}
!5747 = !DILocalVariable(name: "list", arg: 1, scope: !5742, file: !5743, line: 35, type: !163)
!5748 = !DILocation(line: 35, column: 53, scope: !5742)
!5749 = !DILocation(line: 37, column: 2, scope: !5742)
!5750 = !DILocation(line: 37, column: 2, scope: !5751)
!5751 = distinct !DILexicalBlock(scope: !5742, file: !5743, line: 37, column: 2)
!5752 = !DILocation(line: 37, column: 2, scope: !5753)
!5753 = distinct !DILexicalBlock(scope: !5751, file: !5743, line: 37, column: 2)
!5754 = !DILocation(line: 37, column: 2, scope: !5755)
!5755 = distinct !DILexicalBlock(scope: !5751, file: !5743, line: 37, column: 2)
!5756 = !DILocation(line: 38, column: 2, scope: !5742)
!5757 = !DILocation(line: 38, column: 2, scope: !5758)
!5758 = distinct !DILexicalBlock(scope: !5742, file: !5743, line: 38, column: 2)
!5759 = !DILocation(line: 38, column: 2, scope: !5760)
!5760 = distinct !DILexicalBlock(scope: !5758, file: !5743, line: 38, column: 2)
!5761 = !DILocation(line: 38, column: 2, scope: !5762)
!5762 = distinct !DILexicalBlock(scope: !5758, file: !5743, line: 38, column: 2)
!5763 = !DILocation(line: 39, column: 1, scope: !5742)
!5764 = !DISubprogram(name: "_raw_spin_lock", scope: !5765, file: !5765, line: 22, type: !5766, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5765 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!5766 = !DISubroutineType(types: !5767)
!5767 = !{null, !5768}
!5768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!5769 = distinct !DISubprogram(name: "list_empty", scope: !5743, file: !5743, line: 371, type: !5770, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5774)
!5770 = !DISubroutineType(types: !5771)
!5771 = !{!102, !5772}
!5772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5773, size: 64)
!5773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !160)
!5774 = !{!5775}
!5775 = !DILocalVariable(name: "head", arg: 1, scope: !5769, file: !5743, line: 371, type: !5772)
!5776 = !DILocation(line: 371, column: 54, scope: !5769)
!5777 = !DILocation(line: 373, column: 9, scope: !5778)
!5778 = distinct !DILexicalBlock(scope: !5769, file: !5743, line: 373, column: 9)
!5779 = !DILocation(line: 373, column: 9, scope: !5780)
!5780 = distinct !DILexicalBlock(scope: !5778, file: !5743, line: 373, column: 9)
!5781 = !DILocation(line: 373, column: 34, scope: !5769)
!5782 = !DILocation(line: 373, column: 31, scope: !5769)
!5783 = !DILocation(line: 373, column: 2, scope: !5769)
!5784 = distinct !DISubprogram(name: "list_del_init", scope: !5743, file: !5743, line: 285, type: !5744, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5785)
!5785 = !{!5786}
!5786 = !DILocalVariable(name: "entry", arg: 1, scope: !5784, file: !5743, line: 285, type: !163)
!5787 = !DILocation(line: 285, column: 52, scope: !5784)
!5788 = !DILocation(line: 287, column: 19, scope: !5784)
!5789 = !DILocation(line: 287, column: 2, scope: !5784)
!5790 = !DILocation(line: 288, column: 17, scope: !5784)
!5791 = !DILocation(line: 288, column: 2, scope: !5784)
!5792 = !DILocation(line: 289, column: 1, scope: !5784)
!5793 = distinct !DISubprogram(name: "fat_cache_free", scope: !2, file: !2, line: 67, type: !5794, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5796)
!5794 = !DISubroutineType(types: !5795)
!5795 = !{null, !156}
!5796 = !{!5797}
!5797 = !DILocalVariable(name: "cache", arg: 1, scope: !5793, file: !2, line: 67, type: !156)
!5798 = !DILocation(line: 67, column: 53, scope: !5793)
!5799 = !DILocation(line: 69, column: 2, scope: !5793)
!5800 = !DILocation(line: 69, column: 2, scope: !5801)
!5801 = distinct !DILexicalBlock(scope: !5802, file: !2, line: 69, column: 2)
!5802 = distinct !DILexicalBlock(scope: !5793, file: !2, line: 69, column: 2)
!5803 = !DILocation(line: 69, column: 2, scope: !5802)
!5804 = !DILocation(line: 69, column: 2, scope: !5805)
!5805 = distinct !DILexicalBlock(scope: !5801, file: !2, line: 69, column: 2)
!5806 = !DILocation(line: 69, column: 2, scope: !5807)
!5807 = distinct !DILexicalBlock(scope: !5805, file: !2, line: 69, column: 2)
!5808 = !DILocation(line: 69, column: 2, scope: !5809)
!5809 = distinct !DILexicalBlock(scope: !5805, file: !2, line: 69, column: 2)
!5810 = !{i64 2154749098, i64 2154749127, i64 2154749173, i64 2154749231, i64 2154749285, i64 2154749339, i64 2154749394, i64 2154749425}
!5811 = !DILocation(line: 70, column: 18, scope: !5793)
!5812 = !DILocation(line: 70, column: 36, scope: !5793)
!5813 = !DILocation(line: 70, column: 2, scope: !5793)
!5814 = !DILocation(line: 71, column: 1, scope: !5793)
!5815 = distinct !DISubprogram(name: "__list_del_entry", scope: !5743, file: !5743, line: 213, type: !5744, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5816)
!5816 = !{!5817}
!5817 = !DILocalVariable(name: "entry", arg: 1, scope: !5815, file: !5743, line: 213, type: !163)
!5818 = !DILocation(line: 213, column: 55, scope: !5815)
!5819 = !DILocation(line: 215, column: 30, scope: !5820)
!5820 = distinct !DILexicalBlock(scope: !5815, file: !5743, line: 215, column: 6)
!5821 = !DILocation(line: 215, column: 7, scope: !5820)
!5822 = !DILocation(line: 215, column: 6, scope: !5815)
!5823 = !DILocation(line: 216, column: 3, scope: !5820)
!5824 = !DILocation(line: 218, column: 13, scope: !5815)
!5825 = !DILocation(line: 218, column: 20, scope: !5815)
!5826 = !DILocation(line: 218, column: 26, scope: !5815)
!5827 = !DILocation(line: 218, column: 33, scope: !5815)
!5828 = !DILocation(line: 218, column: 2, scope: !5815)
!5829 = !DILocation(line: 219, column: 1, scope: !5815)
!5830 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !5743, file: !5743, line: 134, type: !5831, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5833)
!5831 = !DISubroutineType(types: !5832)
!5832 = !{!706, !163}
!5833 = !{!5834}
!5834 = !DILocalVariable(name: "entry", arg: 1, scope: !5830, file: !5743, line: 134, type: !163)
!5835 = !DILocation(line: 134, column: 61, scope: !5830)
!5836 = !DILocation(line: 136, column: 2, scope: !5830)
!5837 = distinct !DISubprogram(name: "__list_del", scope: !5743, file: !5743, line: 193, type: !5838, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5840)
!5838 = !DISubroutineType(types: !5839)
!5839 = !{null, !163, !163}
!5840 = !{!5841, !5842}
!5841 = !DILocalVariable(name: "prev", arg: 1, scope: !5837, file: !5743, line: 193, type: !163)
!5842 = !DILocalVariable(name: "next", arg: 2, scope: !5837, file: !5743, line: 193, type: !163)
!5843 = !DILocation(line: 193, column: 50, scope: !5837)
!5844 = !DILocation(line: 193, column: 75, scope: !5837)
!5845 = !DILocation(line: 195, column: 15, scope: !5837)
!5846 = !DILocation(line: 195, column: 2, scope: !5837)
!5847 = !DILocation(line: 195, column: 8, scope: !5837)
!5848 = !DILocation(line: 195, column: 13, scope: !5837)
!5849 = !DILocation(line: 196, column: 2, scope: !5837)
!5850 = !DILocation(line: 196, column: 2, scope: !5851)
!5851 = distinct !DILexicalBlock(scope: !5837, file: !5743, line: 196, column: 2)
!5852 = !DILocation(line: 196, column: 2, scope: !5853)
!5853 = distinct !DILexicalBlock(scope: !5851, file: !5743, line: 196, column: 2)
!5854 = !DILocation(line: 196, column: 2, scope: !5855)
!5855 = distinct !DILexicalBlock(scope: !5851, file: !5743, line: 196, column: 2)
!5856 = !DILocation(line: 197, column: 1, scope: !5837)
!5857 = !DISubprogram(name: "kmem_cache_free", scope: !4613, file: !4613, line: 503, type: !5858, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5858 = !DISubroutineType(types: !5859)
!5859 = !{null, !4591, !155}
!5860 = !DISubprogram(name: "_raw_spin_unlock", scope: !5765, file: !5765, line: 39, type: !5766, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5861 = distinct !DISubprogram(name: "fat_cache_update_lru", scope: !2, file: !2, line: 73, type: !5862, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5864)
!5862 = !DISubroutineType(types: !5863)
!5863 = !{null, !348, !156}
!5864 = !{!5865, !5866}
!5865 = !DILocalVariable(name: "inode", arg: 1, scope: !5861, file: !2, line: 73, type: !348)
!5866 = !DILocalVariable(name: "cache", arg: 2, scope: !5861, file: !2, line: 74, type: !156)
!5867 = !DILocation(line: 73, column: 55, scope: !5861)
!5868 = !DILocation(line: 74, column: 24, scope: !5861)
!5869 = !DILocation(line: 76, column: 14, scope: !5870)
!5870 = distinct !DILexicalBlock(scope: !5861, file: !2, line: 76, column: 6)
!5871 = !DILocation(line: 76, column: 6, scope: !5870)
!5872 = !DILocation(line: 76, column: 22, scope: !5870)
!5873 = !DILocation(line: 76, column: 32, scope: !5870)
!5874 = !DILocation(line: 76, column: 41, scope: !5870)
!5875 = !DILocation(line: 76, column: 48, scope: !5870)
!5876 = !DILocation(line: 76, column: 37, scope: !5870)
!5877 = !DILocation(line: 76, column: 6, scope: !5861)
!5878 = !DILocation(line: 77, column: 14, scope: !5870)
!5879 = !DILocation(line: 77, column: 21, scope: !5870)
!5880 = !DILocation(line: 77, column: 42, scope: !5870)
!5881 = !DILocation(line: 77, column: 34, scope: !5870)
!5882 = !DILocation(line: 77, column: 50, scope: !5870)
!5883 = !DILocation(line: 77, column: 3, scope: !5870)
!5884 = !DILocation(line: 78, column: 1, scope: !5861)
!5885 = distinct !DISubprogram(name: "list_move", scope: !5743, file: !5743, line: 296, type: !5838, scopeLine: 297, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5886)
!5886 = !{!5887, !5888}
!5887 = !DILocalVariable(name: "list", arg: 1, scope: !5885, file: !5743, line: 296, type: !163)
!5888 = !DILocalVariable(name: "head", arg: 2, scope: !5885, file: !5743, line: 296, type: !163)
!5889 = !DILocation(line: 296, column: 48, scope: !5885)
!5890 = !DILocation(line: 296, column: 72, scope: !5885)
!5891 = !DILocation(line: 298, column: 19, scope: !5885)
!5892 = !DILocation(line: 298, column: 2, scope: !5885)
!5893 = !DILocation(line: 299, column: 11, scope: !5885)
!5894 = !DILocation(line: 299, column: 17, scope: !5885)
!5895 = !DILocation(line: 299, column: 2, scope: !5885)
!5896 = !DILocation(line: 300, column: 1, scope: !5885)
!5897 = distinct !DISubprogram(name: "list_add", scope: !5743, file: !5743, line: 167, type: !5838, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5898)
!5898 = !{!5899, !5900}
!5899 = !DILocalVariable(name: "new", arg: 1, scope: !5897, file: !5743, line: 167, type: !163)
!5900 = !DILocalVariable(name: "head", arg: 2, scope: !5897, file: !5743, line: 167, type: !163)
!5901 = !DILocation(line: 167, column: 47, scope: !5897)
!5902 = !DILocation(line: 167, column: 70, scope: !5897)
!5903 = !DILocation(line: 169, column: 13, scope: !5897)
!5904 = !DILocation(line: 169, column: 18, scope: !5897)
!5905 = !DILocation(line: 169, column: 24, scope: !5897)
!5906 = !DILocation(line: 169, column: 30, scope: !5897)
!5907 = !DILocation(line: 169, column: 2, scope: !5897)
!5908 = !DILocation(line: 170, column: 1, scope: !5897)
!5909 = distinct !DISubprogram(name: "__list_add", scope: !5743, file: !5743, line: 146, type: !5910, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5912)
!5910 = !DISubroutineType(types: !5911)
!5911 = !{null, !163, !163, !163}
!5912 = !{!5913, !5914, !5915}
!5913 = !DILocalVariable(name: "new", arg: 1, scope: !5909, file: !5743, line: 146, type: !163)
!5914 = !DILocalVariable(name: "prev", arg: 2, scope: !5909, file: !5743, line: 147, type: !163)
!5915 = !DILocalVariable(name: "next", arg: 3, scope: !5909, file: !5743, line: 148, type: !163)
!5916 = !DILocation(line: 146, column: 49, scope: !5909)
!5917 = !DILocation(line: 147, column: 28, scope: !5909)
!5918 = !DILocation(line: 148, column: 28, scope: !5909)
!5919 = !DILocation(line: 150, column: 24, scope: !5920)
!5920 = distinct !DILexicalBlock(scope: !5909, file: !5743, line: 150, column: 6)
!5921 = !DILocation(line: 150, column: 29, scope: !5920)
!5922 = !DILocation(line: 150, column: 35, scope: !5920)
!5923 = !DILocation(line: 150, column: 7, scope: !5920)
!5924 = !DILocation(line: 150, column: 6, scope: !5909)
!5925 = !DILocation(line: 151, column: 3, scope: !5920)
!5926 = !DILocation(line: 153, column: 15, scope: !5909)
!5927 = !DILocation(line: 153, column: 2, scope: !5909)
!5928 = !DILocation(line: 153, column: 8, scope: !5909)
!5929 = !DILocation(line: 153, column: 13, scope: !5909)
!5930 = !DILocation(line: 154, column: 14, scope: !5909)
!5931 = !DILocation(line: 154, column: 2, scope: !5909)
!5932 = !DILocation(line: 154, column: 7, scope: !5909)
!5933 = !DILocation(line: 154, column: 12, scope: !5909)
!5934 = !DILocation(line: 155, column: 14, scope: !5909)
!5935 = !DILocation(line: 155, column: 2, scope: !5909)
!5936 = !DILocation(line: 155, column: 7, scope: !5909)
!5937 = !DILocation(line: 155, column: 12, scope: !5909)
!5938 = !DILocation(line: 156, column: 2, scope: !5909)
!5939 = !DILocation(line: 156, column: 2, scope: !5940)
!5940 = distinct !DILexicalBlock(scope: !5909, file: !5743, line: 156, column: 2)
!5941 = !DILocation(line: 156, column: 2, scope: !5942)
!5942 = distinct !DILexicalBlock(scope: !5940, file: !5743, line: 156, column: 2)
!5943 = !DILocation(line: 156, column: 2, scope: !5944)
!5944 = distinct !DILexicalBlock(scope: !5940, file: !5743, line: 156, column: 2)
!5945 = !DILocation(line: 157, column: 1, scope: !5909)
!5946 = distinct !DISubprogram(name: "__list_add_valid", scope: !5743, file: !5743, line: 128, type: !5947, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5949)
!5947 = !DISubroutineType(types: !5948)
!5948 = !{!706, !163, !163, !163}
!5949 = !{!5950, !5951, !5952}
!5950 = !DILocalVariable(name: "new", arg: 1, scope: !5946, file: !5743, line: 128, type: !163)
!5951 = !DILocalVariable(name: "prev", arg: 2, scope: !5946, file: !5743, line: 129, type: !163)
!5952 = !DILocalVariable(name: "next", arg: 3, scope: !5946, file: !5743, line: 130, type: !163)
!5953 = !DILocation(line: 128, column: 55, scope: !5946)
!5954 = !DILocation(line: 129, column: 23, scope: !5946)
!5955 = !DILocation(line: 130, column: 23, scope: !5946)
!5956 = !DILocation(line: 132, column: 2, scope: !5946)
!5957 = distinct !DISubprogram(name: "fat_cache_merge", scope: !2, file: !2, line: 117, type: !5958, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5960)
!5958 = !DISubroutineType(types: !5959)
!5959 = !{!156, !348, !4559}
!5960 = !{!5961, !5962, !5963, !5964, !5967}
!5961 = !DILocalVariable(name: "inode", arg: 1, scope: !5957, file: !2, line: 117, type: !348)
!5962 = !DILocalVariable(name: "new", arg: 2, scope: !5957, file: !2, line: 118, type: !4559)
!5963 = !DILocalVariable(name: "p", scope: !5957, file: !2, line: 120, type: !156)
!5964 = !DILocalVariable(name: "__mptr", scope: !5965, file: !2, line: 122, type: !155)
!5965 = distinct !DILexicalBlock(scope: !5966, file: !2, line: 122, column: 2)
!5966 = distinct !DILexicalBlock(scope: !5957, file: !2, line: 122, column: 2)
!5967 = !DILocalVariable(name: "__mptr", scope: !5968, file: !2, line: 122, type: !155)
!5968 = distinct !DILexicalBlock(scope: !5969, file: !2, line: 122, column: 2)
!5969 = distinct !DILexicalBlock(scope: !5966, file: !2, line: 122, column: 2)
!5970 = !DILocation(line: 117, column: 56, scope: !5957)
!5971 = !DILocation(line: 118, column: 28, scope: !5957)
!5972 = !DILocation(line: 120, column: 2, scope: !5957)
!5973 = !DILocation(line: 120, column: 20, scope: !5957)
!5974 = !DILocation(line: 122, column: 2, scope: !5965)
!5975 = !DILocation(line: 122, column: 2, scope: !5966)
!5976 = !DILocation(line: 122, column: 2, scope: !5969)
!5977 = !DILocation(line: 124, column: 7, scope: !5978)
!5978 = distinct !DILexicalBlock(scope: !5979, file: !2, line: 124, column: 7)
!5979 = distinct !DILexicalBlock(scope: !5969, file: !2, line: 122, column: 65)
!5980 = !DILocation(line: 124, column: 10, scope: !5978)
!5981 = !DILocation(line: 124, column: 22, scope: !5978)
!5982 = !DILocation(line: 124, column: 27, scope: !5978)
!5983 = !DILocation(line: 124, column: 19, scope: !5978)
!5984 = !DILocation(line: 124, column: 7, scope: !5979)
!5985 = !DILocation(line: 125, column: 4, scope: !5986)
!5986 = distinct !DILexicalBlock(scope: !5978, file: !2, line: 124, column: 37)
!5987 = !DILocation(line: 125, column: 4, scope: !5988)
!5988 = distinct !DILexicalBlock(scope: !5989, file: !2, line: 125, column: 4)
!5989 = distinct !DILexicalBlock(scope: !5986, file: !2, line: 125, column: 4)
!5990 = !DILocation(line: 125, column: 4, scope: !5989)
!5991 = !DILocation(line: 125, column: 4, scope: !5992)
!5992 = distinct !DILexicalBlock(scope: !5988, file: !2, line: 125, column: 4)
!5993 = !DILocation(line: 125, column: 4, scope: !5994)
!5994 = distinct !DILexicalBlock(scope: !5992, file: !2, line: 125, column: 4)
!5995 = !DILocation(line: 125, column: 4, scope: !5996)
!5996 = distinct !DILexicalBlock(scope: !5992, file: !2, line: 125, column: 4)
!5997 = !{i64 2154761234, i64 2154761263, i64 2154761309, i64 2154761367, i64 2154761421, i64 2154761475, i64 2154761530, i64 2154761561}
!5998 = !DILocation(line: 126, column: 8, scope: !5999)
!5999 = distinct !DILexicalBlock(scope: !5986, file: !2, line: 126, column: 8)
!6000 = !DILocation(line: 126, column: 13, scope: !5999)
!6001 = !DILocation(line: 126, column: 25, scope: !5999)
!6002 = !DILocation(line: 126, column: 28, scope: !5999)
!6003 = !DILocation(line: 126, column: 23, scope: !5999)
!6004 = !DILocation(line: 126, column: 8, scope: !5986)
!6005 = !DILocation(line: 127, column: 20, scope: !5999)
!6006 = !DILocation(line: 127, column: 25, scope: !5999)
!6007 = !DILocation(line: 127, column: 5, scope: !5999)
!6008 = !DILocation(line: 127, column: 8, scope: !5999)
!6009 = !DILocation(line: 127, column: 18, scope: !5999)
!6010 = !DILocation(line: 128, column: 11, scope: !5986)
!6011 = !DILocation(line: 128, column: 4, scope: !5986)
!6012 = !DILocation(line: 130, column: 2, scope: !5979)
!6013 = !DILocation(line: 122, column: 2, scope: !5968)
!6014 = distinct !{!6014, !5975, !6015, !4703, !4704}
!6015 = !DILocation(line: 130, column: 2, scope: !5966)
!6016 = !DILocation(line: 131, column: 2, scope: !5957)
!6017 = !DILocation(line: 132, column: 1, scope: !5957)
!6018 = distinct !DISubprogram(name: "fat_max_cache", scope: !2, file: !2, line: 32, type: !2310, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6019)
!6019 = !{!6020}
!6020 = !DILocalVariable(name: "inode", arg: 1, scope: !6018, file: !2, line: 32, type: !348)
!6021 = !DILocation(line: 32, column: 47, scope: !6018)
!6022 = !DILocation(line: 34, column: 2, scope: !6018)
!6023 = distinct !DISubprogram(name: "fat_cache_alloc", scope: !2, file: !2, line: 62, type: !6024, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6026)
!6024 = !DISubroutineType(types: !6025)
!6025 = !{!156, !348}
!6026 = !{!6027}
!6027 = !DILocalVariable(name: "inode", arg: 1, scope: !6023, file: !2, line: 62, type: !348)
!6028 = !DILocation(line: 62, column: 63, scope: !6023)
!6029 = !DILocation(line: 64, column: 26, scope: !6023)
!6030 = !DILocation(line: 64, column: 9, scope: !6023)
!6031 = !DILocation(line: 64, column: 2, scope: !6023)
!6032 = !DISubprogram(name: "kmem_cache_alloc", scope: !4613, file: !4613, line: 500, type: !6033, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6033 = !DISubroutineType(types: !6034)
!6034 = !{!155, !4591, !594}
!6035 = distinct !DISubprogram(name: "brelse", scope: !4851, file: !4851, line: 311, type: !6036, scopeLine: 312, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6038)
!6036 = !DISubroutineType(types: !6037)
!6037 = !{null, !4849}
!6038 = !{!6039}
!6039 = !DILocalVariable(name: "bh", arg: 1, scope: !6035, file: !4851, line: 311, type: !4849)
!6040 = !DILocation(line: 311, column: 47, scope: !6035)
!6041 = !DILocation(line: 313, column: 6, scope: !6042)
!6042 = distinct !DILexicalBlock(scope: !6035, file: !4851, line: 313, column: 6)
!6043 = !DILocation(line: 313, column: 6, scope: !6035)
!6044 = !DILocation(line: 314, column: 12, scope: !6042)
!6045 = !DILocation(line: 314, column: 3, scope: !6042)
!6046 = !DILocation(line: 315, column: 1, scope: !6035)
!6047 = !DISubprogram(name: "__brelse", scope: !4851, file: !4851, line: 232, type: !6036, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6048 = distinct !DISubprogram(name: "i_size_read", scope: !65, file: !65, line: 893, type: !6049, scopeLine: 894, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6051)
!6049 = !DISubroutineType(types: !6050)
!6050 = !{!221, !4285}
!6051 = !{!6052}
!6052 = !DILocalVariable(name: "inode", arg: 1, scope: !6048, file: !65, line: 893, type: !4285)
!6053 = !DILocation(line: 893, column: 54, scope: !6048)
!6054 = !DILocation(line: 912, column: 9, scope: !6048)
!6055 = !DILocation(line: 912, column: 16, scope: !6048)
!6056 = !DILocation(line: 912, column: 2, scope: !6048)
