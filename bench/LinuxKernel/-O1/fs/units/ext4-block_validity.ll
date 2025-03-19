; ModuleID = 'fs/ext4/block_validity.c'
source_filename = "fs/ext4/block_validity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.static_call_key = type { ptr, %union.anon.17 }
%union.anon.17 = type { i64 }
%struct.ext4_sb_info = type { i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i32, i32, i64, ptr, ptr, ptr, i32, i32, i64, i32, i32, i64, %struct.atomic64_t, %struct.kuid_t, %struct.kgid_t, i16, i16, i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, ptr, ptr, %struct.kobject, %struct.completion, ptr, ptr, ptr, i64, %struct.mutex, %struct.list_head, %struct.ext4_orphan_info, i64, i32, i32, ptr, [3 x ptr], i32, i32, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.work_struct, %struct.atomic_t, ptr, ptr, ptr, ptr, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [5 x %struct.atomic_t], %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [5 x %struct.atomic64_t], [5 x %struct.atomic64_t], [5 x %struct.atomic64_t], %struct.atomic_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, i64, i64, i32, i32, ptr, i32, ptr, %struct.timer_list, ptr, i32, ptr, i64, ptr, i32, %struct.shrinker, %struct.list_head, i64, %struct.ext4_es_stats, ptr, ptr, [40 x i8], %struct.spinlock, [1 x %struct.ext4_journal_trigger], %struct.ratelimit_state, %struct.ratelimit_state, %struct.ratelimit_state, %struct.atomic_t, %struct.atomic_t, %struct.fscrypt_dummy_policy, %struct.percpu_rw_semaphore, ptr, i64, i32, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i64, ptr, i64, i32, i32, i32, i64, ptr, i64, %struct.work_struct, %struct.atomic_t, [2 x %struct.list_head], [2 x %struct.list_head], i32, %struct.spinlock, ptr, %struct.ext4_fc_stats, i32, %struct.ext4_fc_replay_state, [56 x i8] }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ext4_orphan_info = type { i32, i32, ptr }
%struct.atomic64_t = type { i64 }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.shrinker = type { ptr, ptr, i64, i32, i32, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.ext4_es_stats = type { i64, %struct.percpu_counter, %struct.percpu_counter, i64, i64, %struct.percpu_counter, %struct.percpu_counter }
%struct.ext4_journal_trigger = type { %struct.jbd2_buffer_trigger_type, ptr }
%struct.jbd2_buffer_trigger_type = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.fscrypt_dummy_policy = type {}
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.rcuwait = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.ext4_fc_stats = type { [10 x i32], i64, i64, i64, i64, i64, i64 }
%struct.ext4_fc_replay_state = type { i32, i32, i32, i32, i32, ptr, i32, i32, i32, ptr, i32, i32 }
%struct.ext4_super_block = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, i32, i16, i16, i32, i32, i32, [16 x i8], [16 x i8], [64 x i8], i32, i8, i8, i16, [16 x i8], i32, i32, i32, [4 x i32], i8, i8, i16, i32, i32, i32, [17 x i32], i32, i32, i32, i16, i16, i32, i16, i16, i64, i32, i8, i8, i8, i8, i64, i32, i32, i64, i32, i32, i32, i32, i64, [32 x i8], i32, i32, i32, i32, i64, [32 x i8], [64 x i8], i32, i32, i32, [2 x i32], [4 x i8], [16 x i8], i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, [94 x i32], i32 }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i64, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i16, i16, [3 x %struct.percpu_rw_semaphore] }
%struct.uuid_t = type { [16 x i8] }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr }
%struct.ext4_system_blocks = type { %struct.rb_root, %struct.callback_head }
%struct.rb_root = type { ptr }
%struct.ext4_system_zone = type { %struct.rb_node, i64, i32, i32 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.ext4_map_blocks = type { i64, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.13, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.14, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.15, ptr, %struct.address_space, %struct.list_head, %union.anon.16, i32, i32, ptr, ptr }
%union.anon.13 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.14 = type { %struct.callback_head }
%union.anon.15 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.16 = type { ptr }

@.str = private unnamed_addr constant [17 x i8] c"ext4_system_zone\00", align 1, !dbg !0
@ext4_system_zone_cachep = internal global ptr null, align 8, !dbg !7
@.str.1 = private unnamed_addr constant [25 x i8] c"fs/ext4/block_validity.c\00", align 1, !dbg !6022
@.str.2 = private unnamed_addr constant [14 x i8] c"invalid block\00", align 1, !dbg !6027
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !6030
@_cond_resched.__UNIQUE_ID___addressable___SCK__cond_resched181 = internal global ptr @__SCK__cond_resched, section ".discard.addressable", align 8, !dbg !6035
@__SCK__cond_resched = external dso_local global %struct.static_call_key, align 8
@__func__.ext4_protect_reserved_inode = private unnamed_addr constant [28 x i8] c"ext4_protect_reserved_inode\00", align 1, !dbg !6038
@.str.4 = private unnamed_addr constant [48 x i8] c"blocks %llu-%llu from inode overlap system zone\00", align 1, !dbg !6043
@.str.5 = private unnamed_addr constant [17 x i8] c"\016System zones: \00", align 1, !dbg !6048
@.str.6 = private unnamed_addr constant [14 x i8] c"\01c%s%llu-%llu\00", align 1, !dbg !6050
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !6052
@.str.8 = private unnamed_addr constant [3 x i8] c", \00", align 1, !dbg !6055
@.str.9 = private unnamed_addr constant [4 x i8] c"\01c\0A\00", align 1, !dbg !6058
@llvm.compiler.used = appending global [1 x ptr] [ptr @_cond_resched.__UNIQUE_ID___addressable___SCK__cond_resched181], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @ext4_init_system_zone() #0 section ".init.text" align 16 !dbg !6070 {
entry:
  %retval = alloca i32, align 4
  %call = call ptr @kmem_cache_create(ptr noundef @.str, i32 noundef 40, i32 noundef 8, i32 noundef 0, ptr noundef null) #15, !dbg !6071
  store ptr %call, ptr @ext4_system_zone_cachep, align 8, !dbg !6072
  %0 = load ptr, ptr @ext4_system_zone_cachep, align 8, !dbg !6073
  %cmp = icmp eq ptr %0, null, !dbg !6075
  br i1 %cmp, label %if.then, label %if.end, !dbg !6076

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !6077
  br label %return, !dbg !6077

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6078
  br label %return, !dbg !6078

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, ptr %retval, align 4, !dbg !6079
  ret i32 %1, !dbg !6079
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6080 dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ext4_exit_system_zone() #2 align 16 !dbg !6084 {
entry:
  call void @rcu_barrier() #15, !dbg !6085
  %0 = load ptr, ptr @ext4_system_zone_cachep, align 8, !dbg !6086
  call void @kmem_cache_destroy(ptr noundef %0) #15, !dbg !6087
  ret void, !dbg !6088
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6089 dso_local void @rcu_barrier() #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6091 dso_local void @kmem_cache_destroy(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ext4_setup_system_zone(ptr noundef %sb) #2 align 16 !dbg !6094 {
entry:
  %retval = alloca i32, align 4
  %sb.addr = alloca ptr, align 8
  %ngroups = alloca i32, align 4
  %sbi = alloca ptr, align 8
  %system_blks = alloca ptr, align 8
  %gdp = alloca ptr, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %meta_blks = alloca i32, align 4
  %tmp = alloca i32, align 4
  %_r_a_p__v = alloca i64, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !6096, metadata !DIExpression()), !dbg !6544
  call void @llvm.lifetime.start.p0(i64 4, ptr %ngroups) #16, !dbg !6545
  call void @llvm.dbg.declare(metadata ptr %ngroups, metadata !6097, metadata !DIExpression()), !dbg !6546
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !6547
  %call = call i32 @ext4_get_groups_count(ptr noundef %0) #15, !dbg !6548
  store i32 %call, ptr %ngroups, align 4, !dbg !6546
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbi) #16, !dbg !6549
  call void @llvm.dbg.declare(metadata ptr %sbi, metadata !6099, metadata !DIExpression()), !dbg !6550
  %1 = load ptr, ptr %sb.addr, align 8, !dbg !6551
  %call1 = call ptr @EXT4_SB(ptr noundef %1) #15, !dbg !6552
  store ptr %call1, ptr %sbi, align 8, !dbg !6550
  call void @llvm.lifetime.start.p0(i64 8, ptr %system_blks) #16, !dbg !6553
  call void @llvm.dbg.declare(metadata ptr %system_blks, metadata !6507, metadata !DIExpression()), !dbg !6554
  call void @llvm.lifetime.start.p0(i64 8, ptr %gdp) #16, !dbg !6555
  call void @llvm.dbg.declare(metadata ptr %gdp, metadata !6508, metadata !DIExpression()), !dbg !6556
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !6557
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6535, metadata !DIExpression()), !dbg !6558
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !6559
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6536, metadata !DIExpression()), !dbg !6560
  %call2 = call noalias ptr @kzalloc(i64 noundef 24, i32 noundef 3264) #17, !dbg !6561
  store ptr %call2, ptr %system_blks, align 8, !dbg !6562
  %2 = load ptr, ptr %system_blks, align 8, !dbg !6563
  %tobool = icmp ne ptr %2, null, !dbg !6563
  br i1 %tobool, label %if.end, label %if.then, !dbg !6565

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !6566
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup80, !dbg !6566

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !6567
  br label %for.cond, !dbg !6568

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, ptr %i, align 4, !dbg !6569
  %4 = load i32, ptr %ngroups, align 4, !dbg !6570
  %cmp = icmp ult i32 %3, %4, !dbg !6571
  br i1 %cmp, label %for.body, label %for.end, !dbg !6572

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %meta_blks) #16, !dbg !6573
  call void @llvm.dbg.declare(metadata ptr %meta_blks, metadata !6537, metadata !DIExpression()), !dbg !6574
  %5 = load ptr, ptr %sb.addr, align 8, !dbg !6575
  %6 = load i32, ptr %i, align 4, !dbg !6576
  %call3 = call i32 @ext4_num_base_meta_blocks(ptr noundef %5, i32 noundef %6) #15, !dbg !6577
  store i32 %call3, ptr %meta_blks, align 4, !dbg !6574
  call void @__might_resched(ptr noundef @.str.1, i32 noundef 227, i32 noundef 0) #15, !dbg !6578
  %call4 = call i32 @_cond_resched() #15, !dbg !6578
  store i32 %call4, ptr %tmp, align 4, !dbg !6578
  %7 = load i32, ptr %tmp, align 4, !dbg !6578
  %8 = load i32, ptr %meta_blks, align 4, !dbg !6580
  %cmp5 = icmp ne i32 %8, 0, !dbg !6582
  br i1 %cmp5, label %if.then6, label %if.end12, !dbg !6583

if.then6:                                         ; preds = %for.body
  %9 = load ptr, ptr %system_blks, align 8, !dbg !6584
  %10 = load ptr, ptr %sb.addr, align 8, !dbg !6586
  %11 = load i32, ptr %i, align 4, !dbg !6587
  %call7 = call i64 @ext4_group_first_block_no(ptr noundef %10, i32 noundef %11) #15, !dbg !6588
  %12 = load i32, ptr %meta_blks, align 4, !dbg !6589
  %call8 = call i32 @add_system_zone(ptr noundef %9, i64 noundef %call7, i32 noundef %12, i32 noundef 0) #15, !dbg !6590
  store i32 %call8, ptr %ret, align 4, !dbg !6591
  %13 = load i32, ptr %ret, align 4, !dbg !6592
  %tobool9 = icmp ne i32 %13, 0, !dbg !6592
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !6594

if.then10:                                        ; preds = %if.then6
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6595

if.end11:                                         ; preds = %if.then6
  br label %if.end12, !dbg !6596

if.end12:                                         ; preds = %if.end11, %for.body
  %14 = load ptr, ptr %sb.addr, align 8, !dbg !6597
  %15 = load i32, ptr %i, align 4, !dbg !6598
  %call13 = call ptr @ext4_get_group_desc(ptr noundef %14, i32 noundef %15, ptr noundef null) #15, !dbg !6599
  store ptr %call13, ptr %gdp, align 8, !dbg !6600
  %16 = load ptr, ptr %system_blks, align 8, !dbg !6601
  %17 = load ptr, ptr %sb.addr, align 8, !dbg !6602
  %18 = load ptr, ptr %gdp, align 8, !dbg !6603
  %call14 = call i64 @ext4_block_bitmap(ptr noundef %17, ptr noundef %18) #15, !dbg !6604
  %call15 = call i32 @add_system_zone(ptr noundef %16, i64 noundef %call14, i32 noundef 1, i32 noundef 0) #15, !dbg !6605
  store i32 %call15, ptr %ret, align 4, !dbg !6606
  %19 = load i32, ptr %ret, align 4, !dbg !6607
  %tobool16 = icmp ne i32 %19, 0, !dbg !6607
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !6609

if.then17:                                        ; preds = %if.end12
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6610

if.end18:                                         ; preds = %if.end12
  %20 = load ptr, ptr %system_blks, align 8, !dbg !6611
  %21 = load ptr, ptr %sb.addr, align 8, !dbg !6612
  %22 = load ptr, ptr %gdp, align 8, !dbg !6613
  %call19 = call i64 @ext4_inode_bitmap(ptr noundef %21, ptr noundef %22) #15, !dbg !6614
  %call20 = call i32 @add_system_zone(ptr noundef %20, i64 noundef %call19, i32 noundef 1, i32 noundef 0) #15, !dbg !6615
  store i32 %call20, ptr %ret, align 4, !dbg !6616
  %23 = load i32, ptr %ret, align 4, !dbg !6617
  %tobool21 = icmp ne i32 %23, 0, !dbg !6617
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !6619

if.then22:                                        ; preds = %if.end18
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6620

if.end23:                                         ; preds = %if.end18
  %24 = load ptr, ptr %system_blks, align 8, !dbg !6621
  %25 = load ptr, ptr %sb.addr, align 8, !dbg !6622
  %26 = load ptr, ptr %gdp, align 8, !dbg !6623
  %call24 = call i64 @ext4_inode_table(ptr noundef %25, ptr noundef %26) #15, !dbg !6624
  %27 = load ptr, ptr %sbi, align 8, !dbg !6625
  %s_itb_per_group = getelementptr inbounds %struct.ext4_sb_info, ptr %27, i32 0, i32 5, !dbg !6626
  %28 = load i64, ptr %s_itb_per_group, align 8, !dbg !6626
  %conv = trunc i64 %28 to i32, !dbg !6625
  %call25 = call i32 @add_system_zone(ptr noundef %24, i64 noundef %call24, i32 noundef %conv, i32 noundef 0) #15, !dbg !6627
  store i32 %call25, ptr %ret, align 4, !dbg !6628
  %29 = load i32, ptr %ret, align 4, !dbg !6629
  %tobool26 = icmp ne i32 %29, 0, !dbg !6629
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !6631

if.then27:                                        ; preds = %if.end23
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6632

if.end28:                                         ; preds = %if.end23
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6633
  br label %cleanup, !dbg !6633

cleanup:                                          ; preds = %if.then27, %if.then22, %if.then17, %if.then10, %if.end28
  call void @llvm.lifetime.end.p0(i64 4, ptr %meta_blks) #16, !dbg !6633
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup80 [
    i32 0, label %cleanup.cont
    i32 5, label %err
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !6634

for.inc:                                          ; preds = %cleanup.cont
  %30 = load i32, ptr %i, align 4, !dbg !6635
  %inc = add i32 %30, 1, !dbg !6635
  store i32 %inc, ptr %i, align 4, !dbg !6635
  br label %for.cond, !dbg !6636, !llvm.loop !6637

for.end:                                          ; preds = %for.cond
  %31 = load ptr, ptr %sb.addr, align 8, !dbg !6641
  %call29 = call zeroext i1 @ext4_has_feature_journal(ptr noundef %31) #15, !dbg !6643
  br i1 %call29, label %land.lhs.true, label %if.end39, !dbg !6644

land.lhs.true:                                    ; preds = %for.end
  %32 = load ptr, ptr %sbi, align 8, !dbg !6645
  %s_es = getelementptr inbounds %struct.ext4_sb_info, ptr %32, i32 0, i32 15, !dbg !6646
  %33 = load ptr, ptr %s_es, align 8, !dbg !6646
  %s_journal_inum = getelementptr inbounds %struct.ext4_super_block, ptr %33, i32 0, i32 39, !dbg !6647
  %34 = load i32, ptr %s_journal_inum, align 8, !dbg !6647
  %tobool31 = icmp ne i32 %34, 0, !dbg !6645
  br i1 %tobool31, label %if.then32, label %if.end39, !dbg !6648

if.then32:                                        ; preds = %land.lhs.true
  %35 = load ptr, ptr %sb.addr, align 8, !dbg !6649
  %36 = load ptr, ptr %system_blks, align 8, !dbg !6651
  %37 = load ptr, ptr %sbi, align 8, !dbg !6652
  %s_es33 = getelementptr inbounds %struct.ext4_sb_info, ptr %37, i32 0, i32 15, !dbg !6652
  %38 = load ptr, ptr %s_es33, align 8, !dbg !6652
  %s_journal_inum34 = getelementptr inbounds %struct.ext4_super_block, ptr %38, i32 0, i32 39, !dbg !6652
  %39 = load i32, ptr %s_journal_inum34, align 8, !dbg !6652
  %call35 = call i32 @ext4_protect_reserved_inode(ptr noundef %35, ptr noundef %36, i32 noundef %39) #15, !dbg !6653
  store i32 %call35, ptr %ret, align 4, !dbg !6654
  %40 = load i32, ptr %ret, align 4, !dbg !6655
  %tobool36 = icmp ne i32 %40, 0, !dbg !6655
  br i1 %tobool36, label %if.then37, label %if.end38, !dbg !6657

if.then37:                                        ; preds = %if.then32
  br label %err, !dbg !6658

if.end38:                                         ; preds = %if.then32
  br label %if.end39, !dbg !6659

if.end39:                                         ; preds = %if.end38, %land.lhs.true, %for.end
  br label %do.body, !dbg !6660

do.body:                                          ; preds = %if.end39
  call void @llvm.lifetime.start.p0(i64 8, ptr %_r_a_p__v) #16, !dbg !6661
  call void @llvm.dbg.declare(metadata ptr %_r_a_p__v, metadata !6541, metadata !DIExpression()), !dbg !6661
  %41 = load ptr, ptr %system_blks, align 8, !dbg !6661
  %42 = ptrtoint ptr %41 to i64, !dbg !6661
  store i64 %42, ptr %_r_a_p__v, align 8, !dbg !6661
  br i1 false, label %land.lhs.true40, label %if.else, !dbg !6662

land.lhs.true40:                                  ; preds = %do.body
  %43 = load i64, ptr %_r_a_p__v, align 8, !dbg !6662
  %cmp41 = icmp eq i64 %43, 0, !dbg !6662
  br i1 %cmp41, label %if.then43, label %if.else, !dbg !6661

if.then43:                                        ; preds = %land.lhs.true40
  br label %do.body44, !dbg !6662

do.body44:                                        ; preds = %if.then43
  br label %do.body45, !dbg !6664

do.body45:                                        ; preds = %do.body44
  br label %do.cond, !dbg !6666

do.cond:                                          ; preds = %do.body45
  br label %do.end, !dbg !6666

do.end:                                           ; preds = %do.cond
  br label %do.body46, !dbg !6664

do.body46:                                        ; preds = %do.end
  %44 = load i64, ptr %_r_a_p__v, align 8, !dbg !6668
  %45 = inttoptr i64 %44 to ptr, !dbg !6668
  %46 = load ptr, ptr %sbi, align 8, !dbg !6668
  %s_system_blks = getelementptr inbounds %struct.ext4_sb_info, ptr %46, i32 0, i32 60, !dbg !6668
  store volatile ptr %45, ptr %s_system_blks, align 16, !dbg !6668
  br label %do.cond47, !dbg !6668

do.cond47:                                        ; preds = %do.body46
  br label %do.end48, !dbg !6668

do.end48:                                         ; preds = %do.cond47
  br label %do.cond49, !dbg !6664

do.cond49:                                        ; preds = %do.end48
  br label %do.end50, !dbg !6664

do.end50:                                         ; preds = %do.cond49
  br label %if.end73, !dbg !6664

if.else:                                          ; preds = %land.lhs.true40, %do.body
  br label %do.body51, !dbg !6662

do.body51:                                        ; preds = %if.else
  br label %do.body52, !dbg !6670

do.body52:                                        ; preds = %do.body51
  br label %do.cond53, !dbg !6672

do.cond53:                                        ; preds = %do.body52
  br label %do.end54, !dbg !6672

do.end54:                                         ; preds = %do.cond53
  br label %do.body55, !dbg !6670

do.body55:                                        ; preds = %do.end54
  br label %do.body56, !dbg !6674

do.body56:                                        ; preds = %do.body55
  br label %do.cond57, !dbg !6676

do.cond57:                                        ; preds = %do.body56
  br label %do.end58, !dbg !6676

do.end58:                                         ; preds = %do.cond57
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !6674, !srcloc !6678
  br label %do.body59, !dbg !6674

do.body59:                                        ; preds = %do.end58
  br label %do.body60, !dbg !6679

do.body60:                                        ; preds = %do.body59
  br label %do.cond61, !dbg !6681

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !6681

do.end62:                                         ; preds = %do.cond61
  br label %do.body63, !dbg !6679

do.body63:                                        ; preds = %do.end62
  %47 = load i64, ptr %_r_a_p__v, align 8, !dbg !6683
  %48 = inttoptr i64 %47 to ptr, !dbg !6683
  %49 = load ptr, ptr %sbi, align 8, !dbg !6683
  %s_system_blks64 = getelementptr inbounds %struct.ext4_sb_info, ptr %49, i32 0, i32 60, !dbg !6683
  store volatile ptr %48, ptr %s_system_blks64, align 16, !dbg !6683
  br label %do.cond65, !dbg !6683

do.cond65:                                        ; preds = %do.body63
  br label %do.end66, !dbg !6683

do.end66:                                         ; preds = %do.cond65
  br label %do.cond67, !dbg !6679

do.cond67:                                        ; preds = %do.end66
  br label %do.end68, !dbg !6679

do.end68:                                         ; preds = %do.cond67
  br label %do.cond69, !dbg !6674

do.cond69:                                        ; preds = %do.end68
  br label %do.end70, !dbg !6674

do.end70:                                         ; preds = %do.cond69
  br label %do.cond71, !dbg !6670

do.cond71:                                        ; preds = %do.end70
  br label %do.end72, !dbg !6670

do.end72:                                         ; preds = %do.cond71
  br label %if.end73

if.end73:                                         ; preds = %do.end72, %do.end50
  call void @llvm.lifetime.end.p0(i64 8, ptr %_r_a_p__v) #16, !dbg !6660
  br label %do.cond74, !dbg !6661

do.cond74:                                        ; preds = %if.end73
  br label %do.end75, !dbg !6661

do.end75:                                         ; preds = %do.cond74
  %50 = load ptr, ptr %sb.addr, align 8, !dbg !6685
  %call76 = call ptr @EXT4_SB(ptr noundef %50) #15, !dbg !6685
  %s_mount_opt = getelementptr inbounds %struct.ext4_sb_info, ptr %call76, i32 0, i32 17, !dbg !6685
  %51 = load i32, ptr %s_mount_opt, align 8, !dbg !6685
  %and = and i32 %51, 8, !dbg !6685
  %tobool77 = icmp ne i32 %and, 0, !dbg !6685
  br i1 %tobool77, label %if.then78, label %if.end79, !dbg !6687

if.then78:                                        ; preds = %do.end75
  %52 = load ptr, ptr %sbi, align 8, !dbg !6688
  call void @debug_print_tree(ptr noundef %52) #15, !dbg !6689
  br label %if.end79, !dbg !6689

if.end79:                                         ; preds = %if.then78, %do.end75
  store i32 0, ptr %retval, align 4, !dbg !6690
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup80, !dbg !6690

err:                                              ; preds = %cleanup, %if.then37
  call void @llvm.dbg.label(metadata !6543), !dbg !6691
  %53 = load ptr, ptr %system_blks, align 8, !dbg !6692
  call void @release_system_zone(ptr noundef %53) #15, !dbg !6693
  %54 = load ptr, ptr %system_blks, align 8, !dbg !6694
  call void @kfree(ptr noundef %54) #15, !dbg !6695
  %55 = load i32, ptr %ret, align 4, !dbg !6696
  store i32 %55, ptr %retval, align 4, !dbg !6697
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup80, !dbg !6697

cleanup80:                                        ; preds = %err, %if.end79, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !6698
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !6698
  call void @llvm.lifetime.end.p0(i64 8, ptr %gdp) #16, !dbg !6698
  call void @llvm.lifetime.end.p0(i64 8, ptr %system_blks) #16, !dbg !6698
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbi) #16, !dbg !6698
  call void @llvm.lifetime.end.p0(i64 4, ptr %ngroups) #16, !dbg !6698
  %56 = load i32, ptr %retval, align 4, !dbg !6698
  ret i32 %56, !dbg !6698
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ext4_get_groups_count(ptr noundef %sb) #5 align 16 !dbg !6699 {
entry:
  %sb.addr = alloca ptr, align 8
  %ngroups = alloca i32, align 4
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !6703, metadata !DIExpression()), !dbg !6705
  call void @llvm.lifetime.start.p0(i64 4, ptr %ngroups) #16, !dbg !6706
  call void @llvm.dbg.declare(metadata ptr %ngroups, metadata !6704, metadata !DIExpression()), !dbg !6707
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !6708
  %call = call ptr @EXT4_SB(ptr noundef %0) #15, !dbg !6709
  %s_groups_count = getelementptr inbounds %struct.ext4_sb_info, ptr %call, i32 0, i32 8, !dbg !6710
  %1 = load i32, ptr %s_groups_count, align 64, !dbg !6710
  store i32 %1, ptr %ngroups, align 4, !dbg !6707
  br label %do.body, !dbg !6711

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6712

do.body1:                                         ; preds = %do.body
  br label %do.cond, !dbg !6714

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !6714

do.end:                                           ; preds = %do.cond
  br label %do.body2, !dbg !6712

do.body2:                                         ; preds = %do.end
  br label %do.body3, !dbg !6716

do.body3:                                         ; preds = %do.body2
  br label %do.cond4, !dbg !6718

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !6718

do.end5:                                          ; preds = %do.cond4
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !6716, !srcloc !6720
  br label %do.cond6, !dbg !6716

do.cond6:                                         ; preds = %do.end5
  br label %do.end7, !dbg !6716

do.end7:                                          ; preds = %do.cond6
  br label %do.cond8, !dbg !6712

do.cond8:                                         ; preds = %do.end7
  br label %do.end9, !dbg !6712

do.end9:                                          ; preds = %do.cond8
  %2 = load i32, ptr %ngroups, align 4, !dbg !6721
  call void @llvm.lifetime.end.p0(i64 4, ptr %ngroups) #16, !dbg !6722
  ret i32 %2, !dbg !6723
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @EXT4_SB(ptr noundef %sb) #5 align 16 !dbg !6724 {
entry:
  %sb.addr = alloca ptr, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !6728, metadata !DIExpression()), !dbg !6729
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !6730
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 29, !dbg !6731
  %1 = load ptr, ptr %s_fs_info, align 32, !dbg !6731
  ret ptr %1, !dbg !6732
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !6733 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6737, metadata !DIExpression()), !dbg !6739
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6738, metadata !DIExpression()), !dbg !6740
  %0 = load i64, ptr %size.addr, align 8, !dbg !6741
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6742
  %or = or i32 %1, 256, !dbg !6743
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #17, !dbg !6744
  ret ptr %call, !dbg !6745
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6746 dso_local i32 @ext4_num_base_meta_blocks(ptr noundef, i32 noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__might_resched(ptr noundef %file, i32 noundef %line, i32 noundef %offsets) #5 align 16 !dbg !6749 {
entry:
  %file.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %offsets.addr = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6754, metadata !DIExpression()), !dbg !6757
  store i32 %line, ptr %line.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %line.addr, metadata !6755, metadata !DIExpression()), !dbg !6758
  store i32 %offsets, ptr %offsets.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offsets.addr, metadata !6756, metadata !DIExpression()), !dbg !6759
  ret void, !dbg !6760
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @_cond_resched() #7 align 16 !dbg !6037 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__cond_resched, ptr %tmp, align 8, !dbg !6761
  %0 = load ptr, ptr %tmp, align 8, !dbg !6761
  %call = call i32 %0() #15, !dbg !6763
  ret i32 %call, !dbg !6764
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @add_system_zone(ptr noundef %system_blks, i64 noundef %start_blk, i32 noundef %count, i32 noundef %ino) #2 align 16 !dbg !6765 {
entry:
  %retval = alloca i32, align 4
  %system_blks.addr = alloca ptr, align 8
  %start_blk.addr = alloca i64, align 8
  %count.addr = alloca i32, align 4
  %ino.addr = alloca i32, align 4
  %new_entry = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %n = alloca ptr, align 8
  %node = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %new_node = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr21 = alloca ptr, align 8
  %tmp22 = alloca ptr, align 8
  %__mptr38 = alloca ptr, align 8
  %tmp39 = alloca ptr, align 8
  store ptr %system_blks, ptr %system_blks.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %system_blks.addr, metadata !6769, metadata !DIExpression()), !dbg !6792
  store i64 %start_blk, ptr %start_blk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start_blk.addr, metadata !6770, metadata !DIExpression()), !dbg !6793
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6771, metadata !DIExpression()), !dbg !6794
  store i32 %ino, ptr %ino.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ino.addr, metadata !6772, metadata !DIExpression()), !dbg !6795
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_entry) #16, !dbg !6796
  call void @llvm.dbg.declare(metadata ptr %new_entry, metadata !6773, metadata !DIExpression()), !dbg !6797
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #16, !dbg !6796
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !6774, metadata !DIExpression()), !dbg !6798
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #16, !dbg !6799
  call void @llvm.dbg.declare(metadata ptr %n, metadata !6775, metadata !DIExpression()), !dbg !6800
  %0 = load ptr, ptr %system_blks.addr, align 8, !dbg !6801
  %root = getelementptr inbounds %struct.ext4_system_blocks, ptr %0, i32 0, i32 0, !dbg !6802
  %rb_node = getelementptr inbounds %struct.rb_root, ptr %root, i32 0, i32 0, !dbg !6803
  store ptr %rb_node, ptr %n, align 8, !dbg !6800
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #16, !dbg !6799
  call void @llvm.dbg.declare(metadata ptr %node, metadata !6777, metadata !DIExpression()), !dbg !6804
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #16, !dbg !6805
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !6778, metadata !DIExpression()), !dbg !6806
  store ptr null, ptr %parent, align 8, !dbg !6806
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_node) #16, !dbg !6805
  call void @llvm.dbg.declare(metadata ptr %new_node, metadata !6779, metadata !DIExpression()), !dbg !6807
  store ptr null, ptr %new_node, align 8, !dbg !6807
  br label %while.cond, !dbg !6808

while.cond:                                       ; preds = %if.end9, %entry
  %1 = load ptr, ptr %n, align 8, !dbg !6809
  %2 = load ptr, ptr %1, align 8, !dbg !6810
  %tobool = icmp ne ptr %2, null, !dbg !6808
  br i1 %tobool, label %while.body, label %while.end, !dbg !6808

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %n, align 8, !dbg !6811
  %4 = load ptr, ptr %3, align 8, !dbg !6812
  store ptr %4, ptr %parent, align 8, !dbg !6813
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !6814
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6780, metadata !DIExpression()), !dbg !6814
  %5 = load ptr, ptr %parent, align 8, !dbg !6814
  store ptr %5, ptr %__mptr, align 8, !dbg !6814
  %6 = load ptr, ptr %__mptr, align 8, !dbg !6814
  %add.ptr = getelementptr i8, ptr %6, i64 0, !dbg !6814
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6814
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !6815
  %7 = load ptr, ptr %tmp, align 8, !dbg !6814
  store ptr %7, ptr %entry1, align 8, !dbg !6816
  %8 = load i64, ptr %start_blk.addr, align 8, !dbg !6817
  %9 = load ptr, ptr %entry1, align 8, !dbg !6819
  %start_blk2 = getelementptr inbounds %struct.ext4_system_zone, ptr %9, i32 0, i32 1, !dbg !6820
  %10 = load i64, ptr %start_blk2, align 8, !dbg !6820
  %cmp = icmp ult i64 %8, %10, !dbg !6821
  br i1 %cmp, label %if.then, label %if.else, !dbg !6822

if.then:                                          ; preds = %while.body
  %11 = load ptr, ptr %n, align 8, !dbg !6823
  %12 = load ptr, ptr %11, align 8, !dbg !6824
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %12, i32 0, i32 2, !dbg !6825
  store ptr %rb_left, ptr %n, align 8, !dbg !6826
  br label %if.end9, !dbg !6827

if.else:                                          ; preds = %while.body
  %13 = load i64, ptr %start_blk.addr, align 8, !dbg !6828
  %14 = load ptr, ptr %entry1, align 8, !dbg !6830
  %start_blk3 = getelementptr inbounds %struct.ext4_system_zone, ptr %14, i32 0, i32 1, !dbg !6831
  %15 = load i64, ptr %start_blk3, align 8, !dbg !6831
  %16 = load ptr, ptr %entry1, align 8, !dbg !6832
  %count4 = getelementptr inbounds %struct.ext4_system_zone, ptr %16, i32 0, i32 2, !dbg !6833
  %17 = load i32, ptr %count4, align 8, !dbg !6833
  %conv = zext i32 %17 to i64, !dbg !6832
  %add = add i64 %15, %conv, !dbg !6834
  %cmp5 = icmp uge i64 %13, %add, !dbg !6835
  br i1 %cmp5, label %if.then7, label %if.else8, !dbg !6836

if.then7:                                         ; preds = %if.else
  %18 = load ptr, ptr %n, align 8, !dbg !6837
  %19 = load ptr, ptr %18, align 8, !dbg !6838
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %19, i32 0, i32 1, !dbg !6839
  store ptr %rb_right, ptr %n, align 8, !dbg !6840
  br label %if.end, !dbg !6841

if.else8:                                         ; preds = %if.else
  store i32 -117, ptr %retval, align 4, !dbg !6842
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6842

if.end:                                           ; preds = %if.then7
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then
  br label %while.cond, !dbg !6808, !llvm.loop !6843

while.end:                                        ; preds = %while.cond
  %20 = load ptr, ptr @ext4_system_zone_cachep, align 8, !dbg !6845
  %call = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %20, i32 noundef 3264) #15, !dbg !6846
  store ptr %call, ptr %new_entry, align 8, !dbg !6847
  %21 = load ptr, ptr %new_entry, align 8, !dbg !6848
  %tobool10 = icmp ne ptr %21, null, !dbg !6848
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !6850

if.then11:                                        ; preds = %while.end
  store i32 -12, ptr %retval, align 4, !dbg !6851
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6851

if.end12:                                         ; preds = %while.end
  %22 = load i64, ptr %start_blk.addr, align 8, !dbg !6852
  %23 = load ptr, ptr %new_entry, align 8, !dbg !6853
  %start_blk13 = getelementptr inbounds %struct.ext4_system_zone, ptr %23, i32 0, i32 1, !dbg !6854
  store i64 %22, ptr %start_blk13, align 8, !dbg !6855
  %24 = load i32, ptr %count.addr, align 4, !dbg !6856
  %25 = load ptr, ptr %new_entry, align 8, !dbg !6857
  %count14 = getelementptr inbounds %struct.ext4_system_zone, ptr %25, i32 0, i32 2, !dbg !6858
  store i32 %24, ptr %count14, align 8, !dbg !6859
  %26 = load i32, ptr %ino.addr, align 4, !dbg !6860
  %27 = load ptr, ptr %new_entry, align 8, !dbg !6861
  %ino15 = getelementptr inbounds %struct.ext4_system_zone, ptr %27, i32 0, i32 3, !dbg !6862
  store i32 %26, ptr %ino15, align 4, !dbg !6863
  %28 = load ptr, ptr %new_entry, align 8, !dbg !6864
  %node16 = getelementptr inbounds %struct.ext4_system_zone, ptr %28, i32 0, i32 0, !dbg !6865
  store ptr %node16, ptr %new_node, align 8, !dbg !6866
  %29 = load ptr, ptr %new_node, align 8, !dbg !6867
  %30 = load ptr, ptr %parent, align 8, !dbg !6868
  %31 = load ptr, ptr %n, align 8, !dbg !6869
  call void @rb_link_node(ptr noundef %29, ptr noundef %30, ptr noundef %31) #15, !dbg !6870
  %32 = load ptr, ptr %new_node, align 8, !dbg !6871
  %33 = load ptr, ptr %system_blks.addr, align 8, !dbg !6872
  %root17 = getelementptr inbounds %struct.ext4_system_blocks, ptr %33, i32 0, i32 0, !dbg !6873
  call void @rb_insert_color(ptr noundef %32, ptr noundef %root17) #15, !dbg !6874
  %34 = load ptr, ptr %new_node, align 8, !dbg !6875
  %call18 = call ptr @rb_prev(ptr noundef %34) #15, !dbg !6876
  store ptr %call18, ptr %node, align 8, !dbg !6877
  %35 = load ptr, ptr %node, align 8, !dbg !6878
  %tobool19 = icmp ne ptr %35, null, !dbg !6878
  br i1 %tobool19, label %if.then20, label %if.end34, !dbg !6879

if.then20:                                        ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr21) #16, !dbg !6880
  call void @llvm.dbg.declare(metadata ptr %__mptr21, metadata !6783, metadata !DIExpression()), !dbg !6880
  %36 = load ptr, ptr %node, align 8, !dbg !6880
  store ptr %36, ptr %__mptr21, align 8, !dbg !6880
  %37 = load ptr, ptr %__mptr21, align 8, !dbg !6880
  %add.ptr23 = getelementptr i8, ptr %37, i64 0, !dbg !6880
  store ptr %add.ptr23, ptr %tmp22, align 8, !dbg !6880
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr21) #16, !dbg !6881
  %38 = load ptr, ptr %tmp22, align 8, !dbg !6880
  store ptr %38, ptr %entry1, align 8, !dbg !6882
  %39 = load ptr, ptr %entry1, align 8, !dbg !6883
  %40 = load ptr, ptr %new_entry, align 8, !dbg !6885
  %call24 = call i32 @can_merge(ptr noundef %39, ptr noundef %40) #15, !dbg !6886
  %tobool25 = icmp ne i32 %call24, 0, !dbg !6886
  br i1 %tobool25, label %if.then26, label %if.end33, !dbg !6887

if.then26:                                        ; preds = %if.then20
  %41 = load ptr, ptr %entry1, align 8, !dbg !6888
  %start_blk27 = getelementptr inbounds %struct.ext4_system_zone, ptr %41, i32 0, i32 1, !dbg !6890
  %42 = load i64, ptr %start_blk27, align 8, !dbg !6890
  %43 = load ptr, ptr %new_entry, align 8, !dbg !6891
  %start_blk28 = getelementptr inbounds %struct.ext4_system_zone, ptr %43, i32 0, i32 1, !dbg !6892
  store i64 %42, ptr %start_blk28, align 8, !dbg !6893
  %44 = load ptr, ptr %entry1, align 8, !dbg !6894
  %count29 = getelementptr inbounds %struct.ext4_system_zone, ptr %44, i32 0, i32 2, !dbg !6895
  %45 = load i32, ptr %count29, align 8, !dbg !6895
  %46 = load ptr, ptr %new_entry, align 8, !dbg !6896
  %count30 = getelementptr inbounds %struct.ext4_system_zone, ptr %46, i32 0, i32 2, !dbg !6897
  %47 = load i32, ptr %count30, align 8, !dbg !6898
  %add31 = add i32 %47, %45, !dbg !6898
  store i32 %add31, ptr %count30, align 8, !dbg !6898
  %48 = load ptr, ptr %node, align 8, !dbg !6899
  %49 = load ptr, ptr %system_blks.addr, align 8, !dbg !6900
  %root32 = getelementptr inbounds %struct.ext4_system_blocks, ptr %49, i32 0, i32 0, !dbg !6901
  call void @rb_erase(ptr noundef %48, ptr noundef %root32) #15, !dbg !6902
  %50 = load ptr, ptr @ext4_system_zone_cachep, align 8, !dbg !6903
  %51 = load ptr, ptr %entry1, align 8, !dbg !6904
  call void @kmem_cache_free(ptr noundef %50, ptr noundef %51) #15, !dbg !6905
  br label %if.end33, !dbg !6906

if.end33:                                         ; preds = %if.then26, %if.then20
  br label %if.end34, !dbg !6907

if.end34:                                         ; preds = %if.end33, %if.end12
  %52 = load ptr, ptr %new_node, align 8, !dbg !6908
  %call35 = call ptr @rb_next(ptr noundef %52) #15, !dbg !6909
  store ptr %call35, ptr %node, align 8, !dbg !6910
  %53 = load ptr, ptr %node, align 8, !dbg !6911
  %tobool36 = icmp ne ptr %53, null, !dbg !6911
  br i1 %tobool36, label %if.then37, label %if.end49, !dbg !6912

if.then37:                                        ; preds = %if.end34
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr38) #16, !dbg !6913
  call void @llvm.dbg.declare(metadata ptr %__mptr38, metadata !6788, metadata !DIExpression()), !dbg !6913
  %54 = load ptr, ptr %node, align 8, !dbg !6913
  store ptr %54, ptr %__mptr38, align 8, !dbg !6913
  %55 = load ptr, ptr %__mptr38, align 8, !dbg !6913
  %add.ptr40 = getelementptr i8, ptr %55, i64 0, !dbg !6913
  store ptr %add.ptr40, ptr %tmp39, align 8, !dbg !6913
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr38) #16, !dbg !6914
  %56 = load ptr, ptr %tmp39, align 8, !dbg !6913
  store ptr %56, ptr %entry1, align 8, !dbg !6915
  %57 = load ptr, ptr %new_entry, align 8, !dbg !6916
  %58 = load ptr, ptr %entry1, align 8, !dbg !6918
  %call41 = call i32 @can_merge(ptr noundef %57, ptr noundef %58) #15, !dbg !6919
  %tobool42 = icmp ne i32 %call41, 0, !dbg !6919
  br i1 %tobool42, label %if.then43, label %if.end48, !dbg !6920

if.then43:                                        ; preds = %if.then37
  %59 = load ptr, ptr %entry1, align 8, !dbg !6921
  %count44 = getelementptr inbounds %struct.ext4_system_zone, ptr %59, i32 0, i32 2, !dbg !6923
  %60 = load i32, ptr %count44, align 8, !dbg !6923
  %61 = load ptr, ptr %new_entry, align 8, !dbg !6924
  %count45 = getelementptr inbounds %struct.ext4_system_zone, ptr %61, i32 0, i32 2, !dbg !6925
  %62 = load i32, ptr %count45, align 8, !dbg !6926
  %add46 = add i32 %62, %60, !dbg !6926
  store i32 %add46, ptr %count45, align 8, !dbg !6926
  %63 = load ptr, ptr %node, align 8, !dbg !6927
  %64 = load ptr, ptr %system_blks.addr, align 8, !dbg !6928
  %root47 = getelementptr inbounds %struct.ext4_system_blocks, ptr %64, i32 0, i32 0, !dbg !6929
  call void @rb_erase(ptr noundef %63, ptr noundef %root47) #15, !dbg !6930
  %65 = load ptr, ptr @ext4_system_zone_cachep, align 8, !dbg !6931
  %66 = load ptr, ptr %entry1, align 8, !dbg !6932
  call void @kmem_cache_free(ptr noundef %65, ptr noundef %66) #15, !dbg !6933
  br label %if.end48, !dbg !6934

if.end48:                                         ; preds = %if.then43, %if.then37
  br label %if.end49, !dbg !6935

if.end49:                                         ; preds = %if.end48, %if.end34
  store i32 0, ptr %retval, align 4, !dbg !6936
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6936

cleanup:                                          ; preds = %if.end49, %if.then11, %if.else8
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_node) #16, !dbg !6937
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #16, !dbg !6937
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #16, !dbg !6937
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #16, !dbg !6937
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #16, !dbg !6937
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_entry) #16, !dbg !6937
  %67 = load i32, ptr %retval, align 4, !dbg !6937
  ret i32 %67, !dbg !6937
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ext4_group_first_block_no(ptr noundef %sb, i32 noundef %group_no) #5 align 16 !dbg !6938 {
entry:
  %sb.addr = alloca ptr, align 8
  %group_no.addr = alloca i32, align 4
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !6942, metadata !DIExpression()), !dbg !6944
  store i32 %group_no, ptr %group_no.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %group_no.addr, metadata !6943, metadata !DIExpression()), !dbg !6945
  %0 = load i32, ptr %group_no.addr, align 4, !dbg !6946
  %conv = zext i32 %0 to i64, !dbg !6946
  %1 = load ptr, ptr %sb.addr, align 8, !dbg !6947
  %call = call ptr @EXT4_SB(ptr noundef %1) #15, !dbg !6947
  %s_blocks_per_group = getelementptr inbounds %struct.ext4_sb_info, ptr %call, i32 0, i32 2, !dbg !6947
  %2 = load i64, ptr %s_blocks_per_group, align 16, !dbg !6947
  %mul = mul i64 %conv, %2, !dbg !6948
  %3 = load ptr, ptr %sb.addr, align 8, !dbg !6949
  %call1 = call ptr @EXT4_SB(ptr noundef %3) #15, !dbg !6949
  %s_es = getelementptr inbounds %struct.ext4_sb_info, ptr %call1, i32 0, i32 15, !dbg !6949
  %4 = load ptr, ptr %s_es, align 8, !dbg !6949
  %s_first_data_block = getelementptr inbounds %struct.ext4_super_block, ptr %4, i32 0, i32 5, !dbg !6949
  %5 = load i32, ptr %s_first_data_block, align 4, !dbg !6949
  %conv2 = zext i32 %5 to i64, !dbg !6949
  %add = add i64 %mul, %conv2, !dbg !6950
  ret i64 %add, !dbg !6951
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6952 dso_local ptr @ext4_get_group_desc(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6955 dso_local i64 @ext4_block_bitmap(ptr noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6958 dso_local i64 @ext4_inode_bitmap(ptr noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6959 dso_local i64 @ext4_inode_table(ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @ext4_has_feature_journal(ptr noundef %sb) #5 align 16 !dbg !6960 {
entry:
  %sb.addr = alloca ptr, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !6964, metadata !DIExpression()), !dbg !6965
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !6965
  %call = call ptr @EXT4_SB(ptr noundef %0) #15, !dbg !6965
  %s_es = getelementptr inbounds %struct.ext4_sb_info, ptr %call, i32 0, i32 15, !dbg !6965
  %1 = load ptr, ptr %s_es, align 8, !dbg !6965
  %s_feature_compat = getelementptr inbounds %struct.ext4_super_block, ptr %1, i32 0, i32 28, !dbg !6965
  %2 = load i32, ptr %s_feature_compat, align 4, !dbg !6965
  %and = and i32 %2, 4, !dbg !6965
  %cmp = icmp ne i32 %and, 0, !dbg !6965
  ret i1 %cmp, !dbg !6965
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ext4_protect_reserved_inode(ptr noundef %sb, ptr noundef %system_blks, i32 noundef %ino) #2 align 16 !dbg !6966 {
entry:
  %retval = alloca i32, align 4
  %sb.addr = alloca ptr, align 8
  %system_blks.addr = alloca ptr, align 8
  %ino.addr = alloca i32, align 4
  %inode = alloca ptr, align 8
  %sbi = alloca ptr, align 8
  %map = alloca %struct.ext4_map_blocks, align 8
  %i = alloca i32, align 4
  %num = alloca i32, align 4
  %err = alloca i32, align 4
  %n = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !6970, metadata !DIExpression()), !dbg !6986
  store ptr %system_blks, ptr %system_blks.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %system_blks.addr, metadata !6971, metadata !DIExpression()), !dbg !6987
  store i32 %ino, ptr %ino.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ino.addr, metadata !6972, metadata !DIExpression()), !dbg !6988
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #16, !dbg !6989
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !6973, metadata !DIExpression()), !dbg !6990
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbi) #16, !dbg !6991
  call void @llvm.dbg.declare(metadata ptr %sbi, metadata !6974, metadata !DIExpression()), !dbg !6992
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !6993
  %call = call ptr @EXT4_SB(ptr noundef %0) #15, !dbg !6994
  store ptr %call, ptr %sbi, align 8, !dbg !6992
  call void @llvm.lifetime.start.p0(i64 24, ptr %map) #16, !dbg !6995
  call void @llvm.dbg.declare(metadata ptr %map, metadata !6975, metadata !DIExpression()), !dbg !6996
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !6997
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6982, metadata !DIExpression()), !dbg !6998
  store i32 0, ptr %i, align 4, !dbg !6998
  call void @llvm.lifetime.start.p0(i64 4, ptr %num) #16, !dbg !6997
  call void @llvm.dbg.declare(metadata ptr %num, metadata !6983, metadata !DIExpression()), !dbg !6999
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !7000
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6984, metadata !DIExpression()), !dbg !7001
  store i32 0, ptr %err, align 4, !dbg !7001
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #16, !dbg !7000
  call void @llvm.dbg.declare(metadata ptr %n, metadata !6985, metadata !DIExpression()), !dbg !7002
  %1 = load i32, ptr %ino.addr, align 4, !dbg !7003
  %cmp = icmp ult i32 %1, 2, !dbg !7005
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !7006

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, ptr %ino.addr, align 4, !dbg !7007
  %3 = load ptr, ptr %sbi, align 8, !dbg !7008
  %s_es = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 15, !dbg !7008
  %4 = load ptr, ptr %s_es, align 8, !dbg !7008
  %s_inodes_count = getelementptr inbounds %struct.ext4_super_block, ptr %4, i32 0, i32 0, !dbg !7008
  %5 = load i32, ptr %s_inodes_count, align 8, !dbg !7008
  %cmp1 = icmp ugt i32 %2, %5, !dbg !7009
  br i1 %cmp1, label %if.then, label %if.end, !dbg !7010

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !7011
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7011

if.end:                                           ; preds = %lor.lhs.false
  %6 = load ptr, ptr %sb.addr, align 8, !dbg !7012
  %7 = load i32, ptr %ino.addr, align 4, !dbg !7012
  %conv = zext i32 %7 to i64, !dbg !7012
  %call2 = call ptr @__ext4_iget(ptr noundef %6, i64 noundef %conv, i32 noundef 1, ptr noundef @__func__.ext4_protect_reserved_inode, i32 noundef 160) #15, !dbg !7012
  store ptr %call2, ptr %inode, align 8, !dbg !7013
  %8 = load ptr, ptr %inode, align 8, !dbg !7014
  %call3 = call zeroext i1 @IS_ERR(ptr noundef %8) #15, !dbg !7016
  br i1 %call3, label %if.then4, label %if.end7, !dbg !7017

if.then4:                                         ; preds = %if.end
  %9 = load ptr, ptr %inode, align 8, !dbg !7018
  %call5 = call i64 @PTR_ERR(ptr noundef %9) #15, !dbg !7019
  %conv6 = trunc i64 %call5 to i32, !dbg !7019
  store i32 %conv6, ptr %retval, align 4, !dbg !7020
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7020

if.end7:                                          ; preds = %if.end
  %10 = load ptr, ptr %inode, align 8, !dbg !7021
  %i_size = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 15, !dbg !7022
  %11 = load i64, ptr %i_size, align 8, !dbg !7022
  %12 = load ptr, ptr %sb.addr, align 8, !dbg !7023
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 3, !dbg !7024
  %13 = load i64, ptr %s_blocksize, align 8, !dbg !7024
  %add = add i64 %11, %13, !dbg !7025
  %sub = sub i64 %add, 1, !dbg !7026
  %14 = load ptr, ptr %sb.addr, align 8, !dbg !7027
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 2, !dbg !7028
  %15 = load i8, ptr %s_blocksize_bits, align 4, !dbg !7028
  %conv8 = zext i8 %15 to i32, !dbg !7027
  %sh_prom = zext i32 %conv8 to i64, !dbg !7029
  %shr = lshr i64 %sub, %sh_prom, !dbg !7029
  %conv9 = trunc i64 %shr to i32, !dbg !7030
  store i32 %conv9, ptr %num, align 4, !dbg !7031
  br label %while.cond, !dbg !7032

while.cond:                                       ; preds = %if.end39, %if.end7
  %16 = load i32, ptr %i, align 4, !dbg !7033
  %17 = load i32, ptr %num, align 4, !dbg !7034
  %cmp10 = icmp ult i32 %16, %17, !dbg !7035
  br i1 %cmp10, label %while.body, label %while.end, !dbg !7032

while.body:                                       ; preds = %while.cond
  call void @__might_resched(ptr noundef @.str.1, i32 noundef 165, i32 noundef 0) #15, !dbg !7036
  %call12 = call i32 @_cond_resched() #15, !dbg !7036
  store i32 %call12, ptr %tmp, align 4, !dbg !7036
  %18 = load i32, ptr %tmp, align 4, !dbg !7036
  %19 = load i32, ptr %i, align 4, !dbg !7039
  %m_lblk = getelementptr inbounds %struct.ext4_map_blocks, ptr %map, i32 0, i32 1, !dbg !7040
  store i32 %19, ptr %m_lblk, align 8, !dbg !7041
  %20 = load i32, ptr %num, align 4, !dbg !7042
  %21 = load i32, ptr %i, align 4, !dbg !7043
  %sub13 = sub i32 %20, %21, !dbg !7044
  %m_len = getelementptr inbounds %struct.ext4_map_blocks, ptr %map, i32 0, i32 2, !dbg !7045
  store i32 %sub13, ptr %m_len, align 4, !dbg !7046
  %22 = load ptr, ptr %inode, align 8, !dbg !7047
  %call14 = call i32 @ext4_map_blocks(ptr noundef null, ptr noundef %22, ptr noundef %map, i32 noundef 0) #15, !dbg !7048
  store i32 %call14, ptr %n, align 4, !dbg !7049
  %23 = load i32, ptr %n, align 4, !dbg !7050
  %cmp15 = icmp slt i32 %23, 0, !dbg !7052
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !7053

if.then17:                                        ; preds = %while.body
  %24 = load i32, ptr %n, align 4, !dbg !7054
  store i32 %24, ptr %err, align 4, !dbg !7056
  br label %while.end, !dbg !7057

if.end18:                                         ; preds = %while.body
  %25 = load i32, ptr %n, align 4, !dbg !7058
  %cmp19 = icmp eq i32 %25, 0, !dbg !7060
  br i1 %cmp19, label %if.then21, label %if.else, !dbg !7061

if.then21:                                        ; preds = %if.end18
  %26 = load i32, ptr %i, align 4, !dbg !7062
  %inc = add i32 %26, 1, !dbg !7062
  store i32 %inc, ptr %i, align 4, !dbg !7062
  br label %if.end39, !dbg !7064

if.else:                                          ; preds = %if.end18
  %27 = load ptr, ptr %system_blks.addr, align 8, !dbg !7065
  %m_pblk = getelementptr inbounds %struct.ext4_map_blocks, ptr %map, i32 0, i32 0, !dbg !7067
  %28 = load i64, ptr %m_pblk, align 8, !dbg !7067
  %29 = load i32, ptr %n, align 4, !dbg !7068
  %30 = load i32, ptr %ino.addr, align 4, !dbg !7069
  %call22 = call i32 @add_system_zone(ptr noundef %27, i64 noundef %28, i32 noundef %29, i32 noundef %30) #15, !dbg !7070
  store i32 %call22, ptr %err, align 4, !dbg !7071
  %31 = load i32, ptr %err, align 4, !dbg !7072
  %cmp23 = icmp slt i32 %31, 0, !dbg !7074
  br i1 %cmp23, label %if.then25, label %if.end37, !dbg !7075

if.then25:                                        ; preds = %if.else
  %32 = load i32, ptr %err, align 4, !dbg !7076
  %cmp26 = icmp eq i32 %32, -117, !dbg !7079
  br i1 %cmp26, label %if.then28, label %if.end36, !dbg !7080

if.then28:                                        ; preds = %if.then25
  %33 = load ptr, ptr %inode, align 8, !dbg !7081
  %34 = load i32, ptr %err, align 4, !dbg !7081
  %sub29 = sub i32 0, %34, !dbg !7081
  %m_pblk30 = getelementptr inbounds %struct.ext4_map_blocks, ptr %map, i32 0, i32 0, !dbg !7081
  %35 = load i64, ptr %m_pblk30, align 8, !dbg !7081
  %m_pblk31 = getelementptr inbounds %struct.ext4_map_blocks, ptr %map, i32 0, i32 0, !dbg !7081
  %36 = load i64, ptr %m_pblk31, align 8, !dbg !7081
  %m_len32 = getelementptr inbounds %struct.ext4_map_blocks, ptr %map, i32 0, i32 2, !dbg !7081
  %37 = load i32, ptr %m_len32, align 4, !dbg !7081
  %conv33 = zext i32 %37 to i64, !dbg !7081
  %add34 = add i64 %36, %conv33, !dbg !7081
  %sub35 = sub i64 %add34, 1, !dbg !7081
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %33, ptr noundef @__func__.ext4_protect_reserved_inode, i32 noundef 182, i64 noundef 0, i32 noundef %sub29, ptr noundef @.str.4, i64 noundef %35, i64 noundef %sub35) #15, !dbg !7081
  br label %if.end36, !dbg !7083

if.end36:                                         ; preds = %if.then28, %if.then25
  br label %while.end, !dbg !7084

if.end37:                                         ; preds = %if.else
  %38 = load i32, ptr %n, align 4, !dbg !7085
  %39 = load i32, ptr %i, align 4, !dbg !7086
  %add38 = add i32 %39, %38, !dbg !7086
  store i32 %add38, ptr %i, align 4, !dbg !7086
  br label %if.end39

if.end39:                                         ; preds = %if.end37, %if.then21
  br label %while.cond, !dbg !7032, !llvm.loop !7087

while.end:                                        ; preds = %if.end36, %if.then17, %while.cond
  %40 = load ptr, ptr %inode, align 8, !dbg !7089
  call void @iput(ptr noundef %40) #15, !dbg !7090
  %41 = load i32, ptr %err, align 4, !dbg !7091
  store i32 %41, ptr %retval, align 4, !dbg !7092
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7092

cleanup:                                          ; preds = %while.end, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #16, !dbg !7093
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !7093
  call void @llvm.lifetime.end.p0(i64 4, ptr %num) #16, !dbg !7093
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !7093
  call void @llvm.lifetime.end.p0(i64 24, ptr %map) #16, !dbg !7093
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbi) #16, !dbg !7093
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #16, !dbg !7093
  %42 = load i32, ptr %retval, align 4, !dbg !7093
  ret i32 %42, !dbg !7093
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @debug_print_tree(ptr noundef %sbi) #2 align 16 !dbg !7094 {
entry:
  %sbi.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %system_blks = alloca ptr, align 8
  %first = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__UNIQUE_ID_rcu383 = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  %tmp9 = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp11 = alloca ptr, align 8
  %tmp15 = alloca i32, align 4
  %tmp23 = alloca i32, align 4
  store ptr %sbi, ptr %sbi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbi.addr, metadata !7098, metadata !DIExpression()), !dbg !7108
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #16, !dbg !7109
  call void @llvm.dbg.declare(metadata ptr %node, metadata !7099, metadata !DIExpression()), !dbg !7110
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #16, !dbg !7111
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !7100, metadata !DIExpression()), !dbg !7112
  call void @llvm.lifetime.start.p0(i64 8, ptr %system_blks) #16, !dbg !7113
  call void @llvm.dbg.declare(metadata ptr %system_blks, metadata !7101, metadata !DIExpression()), !dbg !7114
  call void @llvm.lifetime.start.p0(i64 4, ptr %first) #16, !dbg !7115
  call void @llvm.dbg.declare(metadata ptr %first, metadata !7102, metadata !DIExpression()), !dbg !7116
  store i32 1, ptr %first, align 4, !dbg !7116
  br label %do.body, !dbg !7117

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !7119

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !7119

do.end:                                           ; preds = %do.cond
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.5) #18, !dbg !7117
  store i32 %call, ptr %tmp, align 4, !dbg !7119
  %0 = load i32, ptr %tmp, align 4, !dbg !7117
  call void @rcu_read_lock() #15, !dbg !7121
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu383) #16, !dbg !7122
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu383, metadata !7103, metadata !DIExpression()), !dbg !7122
  br label %do.body2, !dbg !7123

do.body2:                                         ; preds = %do.end
  br label %do.cond3, !dbg !7125

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !7125

do.end4:                                          ; preds = %do.cond3
  %1 = load ptr, ptr %sbi.addr, align 8, !dbg !7123
  %s_system_blks = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 60, !dbg !7123
  %2 = load volatile ptr, ptr %s_system_blks, align 16, !dbg !7123
  store ptr %2, ptr %tmp5, align 8, !dbg !7125
  %3 = load ptr, ptr %tmp5, align 8, !dbg !7123
  store ptr %3, ptr %__UNIQUE_ID_rcu383, align 8, !dbg !7122
  br label %do.body6, !dbg !7122

do.body6:                                         ; preds = %do.end4
  br label %do.cond7, !dbg !7127

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !7127

do.end8:                                          ; preds = %do.cond7
  %4 = load ptr, ptr %__UNIQUE_ID_rcu383, align 8, !dbg !7122
  store ptr %4, ptr %tmp9, align 8, !dbg !7127
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu383) #16, !dbg !7129
  %5 = load ptr, ptr %tmp9, align 8, !dbg !7122
  store ptr %5, ptr %system_blks, align 8, !dbg !7130
  %6 = load ptr, ptr %system_blks, align 8, !dbg !7131
  %root = getelementptr inbounds %struct.ext4_system_blocks, ptr %6, i32 0, i32 0, !dbg !7132
  %call10 = call ptr @rb_first(ptr noundef %root) #15, !dbg !7133
  store ptr %call10, ptr %node, align 8, !dbg !7134
  br label %while.cond, !dbg !7135

while.cond:                                       ; preds = %do.end14, %do.end8
  %7 = load ptr, ptr %node, align 8, !dbg !7136
  %tobool = icmp ne ptr %7, null, !dbg !7135
  br i1 %tobool, label %while.body, label %while.end, !dbg !7135

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !7137
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !7105, metadata !DIExpression()), !dbg !7137
  %8 = load ptr, ptr %node, align 8, !dbg !7137
  store ptr %8, ptr %__mptr, align 8, !dbg !7137
  %9 = load ptr, ptr %__mptr, align 8, !dbg !7137
  %add.ptr = getelementptr i8, ptr %9, i64 0, !dbg !7137
  store ptr %add.ptr, ptr %tmp11, align 8, !dbg !7137
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !7138
  %10 = load ptr, ptr %tmp11, align 8, !dbg !7137
  store ptr %10, ptr %entry1, align 8, !dbg !7139
  br label %do.body12, !dbg !7140

do.body12:                                        ; preds = %while.body
  br label %do.cond13, !dbg !7142

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !7142

do.end14:                                         ; preds = %do.cond13
  %11 = load i32, ptr %first, align 4, !dbg !7140
  %tobool16 = icmp ne i32 %11, 0, !dbg !7140
  %12 = zext i1 %tobool16 to i64, !dbg !7140
  %cond = select i1 %tobool16, ptr @.str.7, ptr @.str.8, !dbg !7140
  %13 = load ptr, ptr %entry1, align 8, !dbg !7140
  %start_blk = getelementptr inbounds %struct.ext4_system_zone, ptr %13, i32 0, i32 1, !dbg !7140
  %14 = load i64, ptr %start_blk, align 8, !dbg !7140
  %15 = load ptr, ptr %entry1, align 8, !dbg !7140
  %start_blk17 = getelementptr inbounds %struct.ext4_system_zone, ptr %15, i32 0, i32 1, !dbg !7140
  %16 = load i64, ptr %start_blk17, align 8, !dbg !7140
  %17 = load ptr, ptr %entry1, align 8, !dbg !7140
  %count = getelementptr inbounds %struct.ext4_system_zone, ptr %17, i32 0, i32 2, !dbg !7140
  %18 = load i32, ptr %count, align 8, !dbg !7140
  %conv = zext i32 %18 to i64, !dbg !7140
  %add = add i64 %16, %conv, !dbg !7140
  %sub = sub i64 %add, 1, !dbg !7140
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef @.str.6, ptr noundef %cond, i64 noundef %14, i64 noundef %sub) #18, !dbg !7140
  store i32 %call18, ptr %tmp15, align 4, !dbg !7142
  %19 = load i32, ptr %tmp15, align 4, !dbg !7140
  store i32 0, ptr %first, align 4, !dbg !7144
  %20 = load ptr, ptr %node, align 8, !dbg !7145
  %call19 = call ptr @rb_next(ptr noundef %20) #15, !dbg !7146
  store ptr %call19, ptr %node, align 8, !dbg !7147
  br label %while.cond, !dbg !7135, !llvm.loop !7148

while.end:                                        ; preds = %while.cond
  call void @rcu_read_unlock() #15, !dbg !7150
  br label %do.body20, !dbg !7151

do.body20:                                        ; preds = %while.end
  br label %do.cond21, !dbg !7153

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !7153

do.end22:                                         ; preds = %do.cond21
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef @.str.9) #18, !dbg !7151
  store i32 %call24, ptr %tmp23, align 4, !dbg !7153
  %21 = load i32, ptr %tmp23, align 4, !dbg !7151
  call void @llvm.lifetime.end.p0(i64 4, ptr %first) #16, !dbg !7155
  call void @llvm.lifetime.end.p0(i64 8, ptr %system_blks) #16, !dbg !7155
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #16, !dbg !7155
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #16, !dbg !7155
  ret void, !dbg !7155
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @release_system_zone(ptr noundef %system_blks) #2 align 16 !dbg !7156 {
entry:
  %system_blks.addr = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %n = alloca ptr, align 8
  %____ptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %____ptr4 = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  %__mptr9 = alloca ptr, align 8
  %tmp10 = alloca ptr, align 8
  %tmp15 = alloca i32, align 4
  store ptr %system_blks, ptr %system_blks.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %system_blks.addr, metadata !7160, metadata !DIExpression()), !dbg !7174
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #16, !dbg !7175
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !7161, metadata !DIExpression()), !dbg !7176
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #16, !dbg !7175
  call void @llvm.dbg.declare(metadata ptr %n, metadata !7162, metadata !DIExpression()), !dbg !7177
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr) #16, !dbg !7178
  call void @llvm.dbg.declare(metadata ptr %____ptr, metadata !7163, metadata !DIExpression()), !dbg !7178
  %0 = load ptr, ptr %system_blks.addr, align 8, !dbg !7178
  %root = getelementptr inbounds %struct.ext4_system_blocks, ptr %0, i32 0, i32 0, !dbg !7178
  %call = call ptr @rb_first_postorder(ptr noundef %root) #15, !dbg !7178
  store ptr %call, ptr %____ptr, align 8, !dbg !7178
  %1 = load ptr, ptr %____ptr, align 8, !dbg !7178
  %tobool = icmp ne ptr %1, null, !dbg !7178
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !7178

cond.true:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !7179
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !7166, metadata !DIExpression()), !dbg !7179
  %2 = load ptr, ptr %____ptr, align 8, !dbg !7179
  store ptr %2, ptr %__mptr, align 8, !dbg !7179
  %3 = load ptr, ptr %__mptr, align 8, !dbg !7179
  %add.ptr = getelementptr i8, ptr %3, i64 0, !dbg !7179
  store ptr %add.ptr, ptr %tmp2, align 8, !dbg !7179
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !7178
  %4 = load ptr, ptr %tmp2, align 8, !dbg !7179
  br label %cond.end, !dbg !7178

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !7178

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %4, %cond.true ], [ null, %cond.false ], !dbg !7178
  store ptr %cond, ptr %tmp, align 8, !dbg !7178
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr) #16, !dbg !7180
  %5 = load ptr, ptr %tmp, align 8, !dbg !7178
  store ptr %5, ptr %entry1, align 8, !dbg !7180
  br label %for.cond, !dbg !7180

for.cond:                                         ; preds = %for.inc, %cond.end
  %6 = load ptr, ptr %entry1, align 8, !dbg !7181
  %tobool3 = icmp ne ptr %6, null, !dbg !7181
  br i1 %tobool3, label %land.rhs, label %land.end, !dbg !7181

land.rhs:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr4) #16, !dbg !7182
  call void @llvm.dbg.declare(metadata ptr %____ptr4, metadata !7168, metadata !DIExpression()), !dbg !7182
  %7 = load ptr, ptr %entry1, align 8, !dbg !7182
  %node = getelementptr inbounds %struct.ext4_system_zone, ptr %7, i32 0, i32 0, !dbg !7182
  %call5 = call ptr @rb_next_postorder(ptr noundef %node) #15, !dbg !7182
  store ptr %call5, ptr %____ptr4, align 8, !dbg !7182
  %8 = load ptr, ptr %____ptr4, align 8, !dbg !7182
  %tobool7 = icmp ne ptr %8, null, !dbg !7182
  br i1 %tobool7, label %cond.true8, label %cond.false12, !dbg !7182

cond.true8:                                       ; preds = %land.rhs
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr9) #16, !dbg !7183
  call void @llvm.dbg.declare(metadata ptr %__mptr9, metadata !7172, metadata !DIExpression()), !dbg !7183
  %9 = load ptr, ptr %____ptr4, align 8, !dbg !7183
  store ptr %9, ptr %__mptr9, align 8, !dbg !7183
  %10 = load ptr, ptr %__mptr9, align 8, !dbg !7183
  %add.ptr11 = getelementptr i8, ptr %10, i64 0, !dbg !7183
  store ptr %add.ptr11, ptr %tmp10, align 8, !dbg !7183
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr9) #16, !dbg !7182
  %11 = load ptr, ptr %tmp10, align 8, !dbg !7183
  br label %cond.end13, !dbg !7182

cond.false12:                                     ; preds = %land.rhs
  br label %cond.end13, !dbg !7182

cond.end13:                                       ; preds = %cond.false12, %cond.true8
  %cond14 = phi ptr [ %11, %cond.true8 ], [ null, %cond.false12 ], !dbg !7182
  store ptr %cond14, ptr %tmp6, align 8, !dbg !7182
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr4) #16, !dbg !7184
  %12 = load ptr, ptr %tmp6, align 8, !dbg !7182
  store ptr %12, ptr %n, align 8, !dbg !7184
  store i32 1, ptr %tmp15, align 4, !dbg !7184
  %13 = load i32, ptr %tmp15, align 4, !dbg !7184
  %tobool16 = icmp ne i32 %13, 0, !dbg !7181
  br label %land.end

land.end:                                         ; preds = %cond.end13, %for.cond
  %14 = phi i1 [ false, %for.cond ], [ %tobool16, %cond.end13 ], !dbg !7185
  br i1 %14, label %for.body, label %for.end, !dbg !7180

for.body:                                         ; preds = %land.end
  %15 = load ptr, ptr @ext4_system_zone_cachep, align 8, !dbg !7186
  %16 = load ptr, ptr %entry1, align 8, !dbg !7187
  call void @kmem_cache_free(ptr noundef %15, ptr noundef %16) #15, !dbg !7188
  br label %for.inc, !dbg !7188

for.inc:                                          ; preds = %for.body
  %17 = load ptr, ptr %n, align 8, !dbg !7181
  store ptr %17, ptr %entry1, align 8, !dbg !7181
  br label %for.cond, !dbg !7181, !llvm.loop !7189

for.end:                                          ; preds = %land.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #16, !dbg !7191
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #16, !dbg !7191
  ret void, !dbg !7191
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7192 dso_local void @kfree(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ext4_release_system_zone(ptr noundef %sb) #2 align 16 !dbg !7195 {
entry:
  %sb.addr = alloca ptr, align 8
  %system_blks = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %_r_a_p__v = alloca i64, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !7197, metadata !DIExpression()), !dbg !7201
  call void @llvm.lifetime.start.p0(i64 8, ptr %system_blks) #16, !dbg !7202
  call void @llvm.dbg.declare(metadata ptr %system_blks, metadata !7198, metadata !DIExpression()), !dbg !7203
  br label %do.body, !dbg !7204

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !7206

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !7206

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !7204
  %call = call ptr @EXT4_SB(ptr noundef %0) #15, !dbg !7204
  %s_system_blks = getelementptr inbounds %struct.ext4_sb_info, ptr %call, i32 0, i32 60, !dbg !7204
  %1 = load ptr, ptr %s_system_blks, align 16, !dbg !7204
  store ptr %1, ptr %tmp, align 8, !dbg !7206
  %2 = load ptr, ptr %tmp, align 8, !dbg !7204
  store ptr %2, ptr %system_blks, align 8, !dbg !7208
  br label %do.body1, !dbg !7209

do.body1:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %_r_a_p__v) #16, !dbg !7210
  call void @llvm.dbg.declare(metadata ptr %_r_a_p__v, metadata !7199, metadata !DIExpression()), !dbg !7210
  store i64 0, ptr %_r_a_p__v, align 8, !dbg !7210
  %3 = load i64, ptr %_r_a_p__v, align 8, !dbg !7211
  %cmp = icmp eq i64 %3, 0, !dbg !7211
  br i1 %cmp, label %if.then, label %if.else, !dbg !7210

if.then:                                          ; preds = %do.body1
  br label %do.body2, !dbg !7211

do.body2:                                         ; preds = %if.then
  br label %do.body3, !dbg !7213

do.body3:                                         ; preds = %do.body2
  br label %do.cond4, !dbg !7215

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !7215

do.end5:                                          ; preds = %do.cond4
  br label %do.body6, !dbg !7213

do.body6:                                         ; preds = %do.end5
  %4 = load i64, ptr %_r_a_p__v, align 8, !dbg !7217
  %5 = inttoptr i64 %4 to ptr, !dbg !7217
  %6 = load ptr, ptr %sb.addr, align 8, !dbg !7217
  %call7 = call ptr @EXT4_SB(ptr noundef %6) #15, !dbg !7217
  %s_system_blks8 = getelementptr inbounds %struct.ext4_sb_info, ptr %call7, i32 0, i32 60, !dbg !7217
  store volatile ptr %5, ptr %s_system_blks8, align 16, !dbg !7217
  br label %do.cond9, !dbg !7217

do.cond9:                                         ; preds = %do.body6
  br label %do.end10, !dbg !7217

do.end10:                                         ; preds = %do.cond9
  br label %do.cond11, !dbg !7213

do.cond11:                                        ; preds = %do.end10
  br label %do.end12, !dbg !7213

do.end12:                                         ; preds = %do.cond11
  br label %if.end, !dbg !7213

if.else:                                          ; preds = %do.body1
  br label %do.body13, !dbg !7211

do.body13:                                        ; preds = %if.else
  br label %do.body14, !dbg !7219

do.body14:                                        ; preds = %do.body13
  br label %do.cond15, !dbg !7221

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !7221

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !7219

do.body17:                                        ; preds = %do.end16
  br label %do.body18, !dbg !7223

do.body18:                                        ; preds = %do.body17
  br label %do.cond19, !dbg !7225

do.cond19:                                        ; preds = %do.body18
  br label %do.end20, !dbg !7225

do.end20:                                         ; preds = %do.cond19
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !7223, !srcloc !7227
  br label %do.body21, !dbg !7223

do.body21:                                        ; preds = %do.end20
  br label %do.body22, !dbg !7228

do.body22:                                        ; preds = %do.body21
  br label %do.cond23, !dbg !7230

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !7230

do.end24:                                         ; preds = %do.cond23
  br label %do.body25, !dbg !7228

do.body25:                                        ; preds = %do.end24
  %7 = load i64, ptr %_r_a_p__v, align 8, !dbg !7232
  %8 = inttoptr i64 %7 to ptr, !dbg !7232
  %9 = load ptr, ptr %sb.addr, align 8, !dbg !7232
  %call26 = call ptr @EXT4_SB(ptr noundef %9) #15, !dbg !7232
  %s_system_blks27 = getelementptr inbounds %struct.ext4_sb_info, ptr %call26, i32 0, i32 60, !dbg !7232
  store volatile ptr %8, ptr %s_system_blks27, align 16, !dbg !7232
  br label %do.cond28, !dbg !7232

do.cond28:                                        ; preds = %do.body25
  br label %do.end29, !dbg !7232

do.end29:                                         ; preds = %do.cond28
  br label %do.cond30, !dbg !7228

do.cond30:                                        ; preds = %do.end29
  br label %do.end31, !dbg !7228

do.end31:                                         ; preds = %do.cond30
  br label %do.cond32, !dbg !7223

do.cond32:                                        ; preds = %do.end31
  br label %do.end33, !dbg !7223

do.end33:                                         ; preds = %do.cond32
  br label %do.cond34, !dbg !7219

do.cond34:                                        ; preds = %do.end33
  br label %do.end35, !dbg !7219

do.end35:                                         ; preds = %do.cond34
  br label %if.end

if.end:                                           ; preds = %do.end35, %do.end12
  call void @llvm.lifetime.end.p0(i64 8, ptr %_r_a_p__v) #16, !dbg !7209
  br label %do.cond36, !dbg !7210

do.cond36:                                        ; preds = %if.end
  br label %do.end37, !dbg !7210

do.end37:                                         ; preds = %do.cond36
  %10 = load ptr, ptr %system_blks, align 8, !dbg !7234
  %tobool = icmp ne ptr %10, null, !dbg !7234
  br i1 %tobool, label %if.then38, label %if.end39, !dbg !7236

if.then38:                                        ; preds = %do.end37
  %11 = load ptr, ptr %system_blks, align 8, !dbg !7237
  %rcu = getelementptr inbounds %struct.ext4_system_blocks, ptr %11, i32 0, i32 1, !dbg !7238
  call void @call_rcu(ptr noundef %rcu, ptr noundef @ext4_destroy_system_zone) #15, !dbg !7239
  br label %if.end39, !dbg !7239

if.end39:                                         ; preds = %if.then38, %do.end37
  call void @llvm.lifetime.end.p0(i64 8, ptr %system_blks) #16, !dbg !7240
  ret void, !dbg !7240
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7241 dso_local void @call_rcu(ptr noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ext4_destroy_system_zone(ptr noundef %rcu) #2 align 16 !dbg !7246 {
entry:
  %rcu.addr = alloca ptr, align 8
  %system_blks = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %rcu, ptr %rcu.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rcu.addr, metadata !7248, metadata !DIExpression()), !dbg !7252
  call void @llvm.lifetime.start.p0(i64 8, ptr %system_blks) #16, !dbg !7253
  call void @llvm.dbg.declare(metadata ptr %system_blks, metadata !7249, metadata !DIExpression()), !dbg !7254
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !7255
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !7250, metadata !DIExpression()), !dbg !7255
  %0 = load ptr, ptr %rcu.addr, align 8, !dbg !7255
  store ptr %0, ptr %__mptr, align 8, !dbg !7255
  %1 = load ptr, ptr %__mptr, align 8, !dbg !7255
  %add.ptr = getelementptr i8, ptr %1, i64 -8, !dbg !7255
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !7255
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !7256
  %2 = load ptr, ptr %tmp, align 8, !dbg !7255
  store ptr %2, ptr %system_blks, align 8, !dbg !7257
  %3 = load ptr, ptr %system_blks, align 8, !dbg !7258
  call void @release_system_zone(ptr noundef %3) #15, !dbg !7259
  %4 = load ptr, ptr %system_blks, align 8, !dbg !7260
  call void @kfree(ptr noundef %4) #15, !dbg !7261
  call void @llvm.lifetime.end.p0(i64 8, ptr %system_blks) #16, !dbg !7262
  ret void, !dbg !7262
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ext4_sb_block_valid(ptr noundef %sb, ptr noundef %inode, i64 noundef %start_blk, i32 noundef %count) #2 align 16 !dbg !7263 {
entry:
  %retval = alloca i32, align 4
  %sb.addr = alloca ptr, align 8
  %inode.addr = alloca ptr, align 8
  %start_blk.addr = alloca i64, align 8
  %count.addr = alloca i32, align 4
  %sbi = alloca ptr, align 8
  %system_blks = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %n = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID_rcu391 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp16 = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp21 = alloca ptr, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !7267, metadata !DIExpression()), !dbg !7282
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !7268, metadata !DIExpression()), !dbg !7283
  store i64 %start_blk, ptr %start_blk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start_blk.addr, metadata !7269, metadata !DIExpression()), !dbg !7284
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !7270, metadata !DIExpression()), !dbg !7285
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbi) #16, !dbg !7286
  call void @llvm.dbg.declare(metadata ptr %sbi, metadata !7271, metadata !DIExpression()), !dbg !7287
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !7288
  %call = call ptr @EXT4_SB(ptr noundef %0) #15, !dbg !7289
  store ptr %call, ptr %sbi, align 8, !dbg !7287
  call void @llvm.lifetime.start.p0(i64 8, ptr %system_blks) #16, !dbg !7290
  call void @llvm.dbg.declare(metadata ptr %system_blks, metadata !7272, metadata !DIExpression()), !dbg !7291
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #16, !dbg !7292
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !7273, metadata !DIExpression()), !dbg !7293
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #16, !dbg !7294
  call void @llvm.dbg.declare(metadata ptr %n, metadata !7274, metadata !DIExpression()), !dbg !7295
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !7296
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !7275, metadata !DIExpression()), !dbg !7297
  store i32 1, ptr %ret, align 4, !dbg !7297
  %1 = load i64, ptr %start_blk.addr, align 8, !dbg !7298
  %2 = load ptr, ptr %sbi, align 8, !dbg !7300
  %s_es = getelementptr inbounds %struct.ext4_sb_info, ptr %2, i32 0, i32 15, !dbg !7300
  %3 = load ptr, ptr %s_es, align 8, !dbg !7300
  %s_first_data_block = getelementptr inbounds %struct.ext4_super_block, ptr %3, i32 0, i32 5, !dbg !7300
  %4 = load i32, ptr %s_first_data_block, align 4, !dbg !7300
  %conv = zext i32 %4 to i64, !dbg !7300
  %cmp = icmp ule i64 %1, %conv, !dbg !7301
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !7302

lor.lhs.false:                                    ; preds = %entry
  %5 = load i64, ptr %start_blk.addr, align 8, !dbg !7303
  %6 = load i32, ptr %count.addr, align 4, !dbg !7304
  %conv3 = zext i32 %6 to i64, !dbg !7304
  %add = add i64 %5, %conv3, !dbg !7305
  %7 = load i64, ptr %start_blk.addr, align 8, !dbg !7306
  %cmp4 = icmp ult i64 %add, %7, !dbg !7307
  br i1 %cmp4, label %if.then, label %lor.lhs.false6, !dbg !7308

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %8 = load i64, ptr %start_blk.addr, align 8, !dbg !7309
  %9 = load i32, ptr %count.addr, align 4, !dbg !7310
  %conv7 = zext i32 %9 to i64, !dbg !7310
  %add8 = add i64 %8, %conv7, !dbg !7311
  %10 = load ptr, ptr %sbi, align 8, !dbg !7312
  %s_es9 = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 15, !dbg !7313
  %11 = load ptr, ptr %s_es9, align 8, !dbg !7313
  %call10 = call i64 @ext4_blocks_count(ptr noundef %11) #15, !dbg !7314
  %cmp11 = icmp ugt i64 %add8, %call10, !dbg !7315
  br i1 %cmp11, label %if.then, label %if.end, !dbg !7316

if.then:                                          ; preds = %lor.lhs.false6, %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4, !dbg !7317
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7317

if.end:                                           ; preds = %lor.lhs.false6
  call void @rcu_read_lock() #15, !dbg !7318
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu391) #16, !dbg !7319
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu391, metadata !7276, metadata !DIExpression()), !dbg !7319
  br label %do.body, !dbg !7320

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !7322

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !7322

do.end:                                           ; preds = %do.cond
  %12 = load ptr, ptr %sbi, align 8, !dbg !7320
  %s_system_blks = getelementptr inbounds %struct.ext4_sb_info, ptr %12, i32 0, i32 60, !dbg !7320
  %13 = load volatile ptr, ptr %s_system_blks, align 16, !dbg !7320
  store ptr %13, ptr %tmp, align 8, !dbg !7322
  %14 = load ptr, ptr %tmp, align 8, !dbg !7320
  store ptr %14, ptr %__UNIQUE_ID_rcu391, align 8, !dbg !7319
  br label %do.body13, !dbg !7319

do.body13:                                        ; preds = %do.end
  br label %do.cond14, !dbg !7324

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !7324

do.end15:                                         ; preds = %do.cond14
  %15 = load ptr, ptr %__UNIQUE_ID_rcu391, align 8, !dbg !7319
  store ptr %15, ptr %tmp16, align 8, !dbg !7324
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu391) #16, !dbg !7326
  %16 = load ptr, ptr %tmp16, align 8, !dbg !7319
  store ptr %16, ptr %system_blks, align 8, !dbg !7327
  %17 = load ptr, ptr %system_blks, align 8, !dbg !7328
  %cmp17 = icmp eq ptr %17, null, !dbg !7330
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !7331

if.then19:                                        ; preds = %do.end15
  br label %out_rcu, !dbg !7332

if.end20:                                         ; preds = %do.end15
  %18 = load ptr, ptr %system_blks, align 8, !dbg !7333
  %root = getelementptr inbounds %struct.ext4_system_blocks, ptr %18, i32 0, i32 0, !dbg !7334
  %rb_node = getelementptr inbounds %struct.rb_root, ptr %root, i32 0, i32 0, !dbg !7335
  %19 = load ptr, ptr %rb_node, align 8, !dbg !7335
  store ptr %19, ptr %n, align 8, !dbg !7336
  br label %while.cond, !dbg !7337

while.cond:                                       ; preds = %if.end43, %if.end20
  %20 = load ptr, ptr %n, align 8, !dbg !7338
  %tobool = icmp ne ptr %20, null, !dbg !7337
  br i1 %tobool, label %while.body, label %while.end, !dbg !7337

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !7339
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !7278, metadata !DIExpression()), !dbg !7339
  %21 = load ptr, ptr %n, align 8, !dbg !7339
  store ptr %21, ptr %__mptr, align 8, !dbg !7339
  %22 = load ptr, ptr %__mptr, align 8, !dbg !7339
  %add.ptr = getelementptr i8, ptr %22, i64 0, !dbg !7339
  store ptr %add.ptr, ptr %tmp21, align 8, !dbg !7339
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !7340
  %23 = load ptr, ptr %tmp21, align 8, !dbg !7339
  store ptr %23, ptr %entry1, align 8, !dbg !7341
  %24 = load i64, ptr %start_blk.addr, align 8, !dbg !7342
  %25 = load i32, ptr %count.addr, align 4, !dbg !7344
  %conv22 = zext i32 %25 to i64, !dbg !7344
  %add23 = add i64 %24, %conv22, !dbg !7345
  %sub = sub i64 %add23, 1, !dbg !7346
  %26 = load ptr, ptr %entry1, align 8, !dbg !7347
  %start_blk24 = getelementptr inbounds %struct.ext4_system_zone, ptr %26, i32 0, i32 1, !dbg !7348
  %27 = load i64, ptr %start_blk24, align 8, !dbg !7348
  %cmp25 = icmp ult i64 %sub, %27, !dbg !7349
  br i1 %cmp25, label %if.then27, label %if.else, !dbg !7350

if.then27:                                        ; preds = %while.body
  %28 = load ptr, ptr %n, align 8, !dbg !7351
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %28, i32 0, i32 2, !dbg !7352
  %29 = load ptr, ptr %rb_left, align 8, !dbg !7352
  store ptr %29, ptr %n, align 8, !dbg !7353
  br label %if.end43, !dbg !7354

if.else:                                          ; preds = %while.body
  %30 = load i64, ptr %start_blk.addr, align 8, !dbg !7355
  %31 = load ptr, ptr %entry1, align 8, !dbg !7357
  %start_blk28 = getelementptr inbounds %struct.ext4_system_zone, ptr %31, i32 0, i32 1, !dbg !7358
  %32 = load i64, ptr %start_blk28, align 8, !dbg !7358
  %33 = load ptr, ptr %entry1, align 8, !dbg !7359
  %count29 = getelementptr inbounds %struct.ext4_system_zone, ptr %33, i32 0, i32 2, !dbg !7360
  %34 = load i32, ptr %count29, align 8, !dbg !7360
  %conv30 = zext i32 %34 to i64, !dbg !7359
  %add31 = add i64 %32, %conv30, !dbg !7361
  %cmp32 = icmp uge i64 %30, %add31, !dbg !7362
  br i1 %cmp32, label %if.then34, label %if.else35, !dbg !7363

if.then34:                                        ; preds = %if.else
  %35 = load ptr, ptr %n, align 8, !dbg !7364
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %35, i32 0, i32 1, !dbg !7365
  %36 = load ptr, ptr %rb_right, align 8, !dbg !7365
  store ptr %36, ptr %n, align 8, !dbg !7366
  br label %if.end42, !dbg !7367

if.else35:                                        ; preds = %if.else
  store i32 0, ptr %ret, align 4, !dbg !7368
  %37 = load ptr, ptr %inode.addr, align 8, !dbg !7370
  %tobool36 = icmp ne ptr %37, null, !dbg !7370
  br i1 %tobool36, label %if.then37, label %if.end41, !dbg !7372

if.then37:                                        ; preds = %if.else35
  %38 = load ptr, ptr %entry1, align 8, !dbg !7373
  %ino = getelementptr inbounds %struct.ext4_system_zone, ptr %38, i32 0, i32 3, !dbg !7374
  %39 = load i32, ptr %ino, align 4, !dbg !7374
  %conv38 = zext i32 %39 to i64, !dbg !7373
  %40 = load ptr, ptr %inode.addr, align 8, !dbg !7375
  %i_ino = getelementptr inbounds %struct.inode, ptr %40, i32 0, i32 12, !dbg !7376
  %41 = load i64, ptr %i_ino, align 8, !dbg !7376
  %cmp39 = icmp eq i64 %conv38, %41, !dbg !7377
  %conv40 = zext i1 %cmp39 to i32, !dbg !7377
  store i32 %conv40, ptr %ret, align 4, !dbg !7378
  br label %if.end41, !dbg !7379

if.end41:                                         ; preds = %if.then37, %if.else35
  br label %while.end, !dbg !7380

if.end42:                                         ; preds = %if.then34
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.then27
  br label %while.cond, !dbg !7337, !llvm.loop !7381

while.end:                                        ; preds = %if.end41, %while.cond
  br label %out_rcu, !dbg !7337

out_rcu:                                          ; preds = %while.end, %if.then19
  call void @llvm.dbg.label(metadata !7281), !dbg !7383
  call void @rcu_read_unlock() #15, !dbg !7384
  %42 = load i32, ptr %ret, align 4, !dbg !7385
  store i32 %42, ptr %retval, align 4, !dbg !7386
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7386

cleanup:                                          ; preds = %out_rcu, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !7387
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #16, !dbg !7387
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #16, !dbg !7387
  call void @llvm.lifetime.end.p0(i64 8, ptr %system_blks) #16, !dbg !7387
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbi) #16, !dbg !7387
  %43 = load i32, ptr %retval, align 4, !dbg !7387
  ret i32 %43, !dbg !7387
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ext4_blocks_count(ptr noundef %es) #5 align 16 !dbg !7388 {
entry:
  %es.addr = alloca ptr, align 8
  store ptr %es, ptr %es.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %es.addr, metadata !7392, metadata !DIExpression()), !dbg !7393
  %0 = load ptr, ptr %es.addr, align 8, !dbg !7394
  %s_feature_incompat = getelementptr inbounds %struct.ext4_super_block, ptr %0, i32 0, i32 29, !dbg !7394
  %1 = load i32, ptr %s_feature_incompat, align 8, !dbg !7394
  %and = and i32 %1, 128, !dbg !7394
  %tobool = icmp ne i32 %and, 0, !dbg !7394
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !7394

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %es.addr, align 8, !dbg !7394
  %s_blocks_count_hi = getelementptr inbounds %struct.ext4_super_block, ptr %2, i32 0, i32 50, !dbg !7394
  %3 = load i32, ptr %s_blocks_count_hi, align 8, !dbg !7394
  %conv = zext i32 %3 to i64, !dbg !7394
  %shl = shl i64 %conv, 32, !dbg !7394
  br label %cond.end, !dbg !7394

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !7394

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %shl, %cond.true ], [ 0, %cond.false ], !dbg !7394
  %4 = load ptr, ptr %es.addr, align 8, !dbg !7394
  %s_blocks_count_lo = getelementptr inbounds %struct.ext4_super_block, ptr %4, i32 0, i32 1, !dbg !7394
  %5 = load i32, ptr %s_blocks_count_lo, align 4, !dbg !7394
  %conv1 = zext i32 %5 to i64, !dbg !7394
  %or = or i64 %cond, %conv1, !dbg !7394
  ret i64 %or, !dbg !7395
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_lock() #7 align 16 !dbg !7396 {
entry:
  call void @__rcu_read_lock() #15, !dbg !7397
  br label %do.body, !dbg !7398

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !7399

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !7401

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !7402

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !7404
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_unlock() #5 align 16 !dbg !7405 {
entry:
  br label %do.body, !dbg !7406

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !7407

do.end:                                           ; preds = %do.body
  call void @__rcu_read_unlock() #15, !dbg !7409
  br label %do.body1, !dbg !7410

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !7411

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !7413
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ext4_inode_block_valid(ptr noundef %inode, i64 noundef %start_blk, i32 noundef %count) #2 align 16 !dbg !7414 {
entry:
  %inode.addr = alloca ptr, align 8
  %start_blk.addr = alloca i64, align 8
  %count.addr = alloca i32, align 4
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !7418, metadata !DIExpression()), !dbg !7421
  store i64 %start_blk, ptr %start_blk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start_blk.addr, metadata !7419, metadata !DIExpression()), !dbg !7422
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !7420, metadata !DIExpression()), !dbg !7423
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !7424
  %i_sb = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9, !dbg !7425
  %1 = load ptr, ptr %i_sb, align 8, !dbg !7425
  %2 = load ptr, ptr %inode.addr, align 8, !dbg !7426
  %3 = load i64, ptr %start_blk.addr, align 8, !dbg !7427
  %4 = load i32, ptr %count.addr, align 4, !dbg !7428
  %call = call i32 @ext4_sb_block_valid(ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) #15, !dbg !7429
  ret i32 %call, !dbg !7430
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ext4_check_blockref(ptr noundef %function, i32 noundef %line, ptr noundef %inode, ptr noundef %p, i32 noundef %max) #2 align 16 !dbg !7431 {
entry:
  %retval = alloca i32, align 4
  %function.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %inode.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %max.addr = alloca i32, align 4
  %bref = alloca ptr, align 8
  %blk = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %function, ptr %function.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %function.addr, metadata !7436, metadata !DIExpression()), !dbg !7443
  store i32 %line, ptr %line.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %line.addr, metadata !7437, metadata !DIExpression()), !dbg !7444
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !7438, metadata !DIExpression()), !dbg !7445
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7439, metadata !DIExpression()), !dbg !7446
  store i32 %max, ptr %max.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %max.addr, metadata !7440, metadata !DIExpression()), !dbg !7447
  call void @llvm.lifetime.start.p0(i64 8, ptr %bref) #16, !dbg !7448
  call void @llvm.dbg.declare(metadata ptr %bref, metadata !7441, metadata !DIExpression()), !dbg !7449
  %0 = load ptr, ptr %p.addr, align 8, !dbg !7450
  store ptr %0, ptr %bref, align 8, !dbg !7449
  call void @llvm.lifetime.start.p0(i64 4, ptr %blk) #16, !dbg !7451
  call void @llvm.dbg.declare(metadata ptr %blk, metadata !7442, metadata !DIExpression()), !dbg !7452
  %1 = load ptr, ptr %inode.addr, align 8, !dbg !7453
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9, !dbg !7455
  %2 = load ptr, ptr %i_sb, align 8, !dbg !7455
  %call = call zeroext i1 @ext4_has_feature_journal(ptr noundef %2) #15, !dbg !7456
  br i1 %call, label %land.lhs.true, label %if.end, !dbg !7457

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %inode.addr, align 8, !dbg !7458
  %i_ino = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 12, !dbg !7459
  %4 = load i64, ptr %i_ino, align 8, !dbg !7459
  %5 = load ptr, ptr %inode.addr, align 8, !dbg !7460
  %i_sb1 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 9, !dbg !7460
  %6 = load ptr, ptr %i_sb1, align 8, !dbg !7460
  %call2 = call ptr @EXT4_SB(ptr noundef %6) #15, !dbg !7460
  %s_es = getelementptr inbounds %struct.ext4_sb_info, ptr %call2, i32 0, i32 15, !dbg !7460
  %7 = load ptr, ptr %s_es, align 8, !dbg !7460
  %s_journal_inum = getelementptr inbounds %struct.ext4_super_block, ptr %7, i32 0, i32 39, !dbg !7460
  %8 = load i32, ptr %s_journal_inum, align 8, !dbg !7460
  %conv = zext i32 %8 to i64, !dbg !7460
  %cmp = icmp eq i64 %4, %conv, !dbg !7461
  br i1 %cmp, label %if.then, label %if.end, !dbg !7462

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4, !dbg !7463
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7463

if.end:                                           ; preds = %land.lhs.true, %entry
  br label %while.cond, !dbg !7464

while.cond:                                       ; preds = %if.end16, %if.end
  %9 = load ptr, ptr %bref, align 8, !dbg !7465
  %10 = load ptr, ptr %p.addr, align 8, !dbg !7466
  %11 = load i32, ptr %max.addr, align 4, !dbg !7467
  %idx.ext = zext i32 %11 to i64, !dbg !7468
  %add.ptr = getelementptr i32, ptr %10, i64 %idx.ext, !dbg !7468
  %cmp4 = icmp ult ptr %9, %add.ptr, !dbg !7469
  br i1 %cmp4, label %while.body, label %while.end, !dbg !7464

while.body:                                       ; preds = %while.cond
  %12 = load ptr, ptr %bref, align 8, !dbg !7470
  %incdec.ptr = getelementptr i32, ptr %12, i32 1, !dbg !7470
  store ptr %incdec.ptr, ptr %bref, align 8, !dbg !7470
  %13 = load i32, ptr %12, align 4, !dbg !7470
  store i32 %13, ptr %blk, align 4, !dbg !7472
  %14 = load i32, ptr %blk, align 4, !dbg !7473
  %tobool = icmp ne i32 %14, 0, !dbg !7473
  br i1 %tobool, label %land.lhs.true6, label %if.end16, !dbg !7475

land.lhs.true6:                                   ; preds = %while.body
  %15 = load ptr, ptr %inode.addr, align 8, !dbg !7476
  %16 = load i32, ptr %blk, align 4, !dbg !7476
  %conv7 = zext i32 %16 to i64, !dbg !7476
  %call8 = call i32 @ext4_inode_block_valid(ptr noundef %15, i64 noundef %conv7, i32 noundef 1) #15, !dbg !7476
  %tobool9 = icmp ne i32 %call8, 0, !dbg !7476
  %lnot = xor i1 %tobool9, true, !dbg !7476
  %lnot10 = xor i1 %lnot, true, !dbg !7476
  %lnot11 = xor i1 %lnot10, true, !dbg !7476
  %lnot.ext = zext i1 %lnot11 to i32, !dbg !7476
  %conv12 = sext i32 %lnot.ext to i64, !dbg !7476
  %expval = call i64 @llvm.expect.i64(i64 %conv12, i64 0), !dbg !7476
  %tobool13 = icmp ne i64 %expval, 0, !dbg !7476
  br i1 %tobool13, label %if.then14, label %if.end16, !dbg !7477

if.then14:                                        ; preds = %land.lhs.true6
  %17 = load ptr, ptr %inode.addr, align 8, !dbg !7478
  %18 = load ptr, ptr %function.addr, align 8, !dbg !7478
  %19 = load i32, ptr %line.addr, align 4, !dbg !7478
  %20 = load i32, ptr %blk, align 4, !dbg !7478
  %conv15 = zext i32 %20 to i64, !dbg !7478
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %17, ptr noundef %18, i32 noundef %19, i64 noundef %conv15, i32 noundef 0, ptr noundef @.str.2) #15, !dbg !7478
  store i32 -117, ptr %retval, align 4, !dbg !7480
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7480

if.end16:                                         ; preds = %land.lhs.true6, %while.body
  br label %while.cond, !dbg !7464, !llvm.loop !7481

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4, !dbg !7483
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7483

cleanup:                                          ; preds = %while.end, %if.then14, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %blk) #16, !dbg !7484
  call void @llvm.lifetime.end.p0(i64 8, ptr %bref) #16, !dbg !7484
  %21 = load i32, ptr %retval, align 4, !dbg !7484
  ret i32 %21, !dbg !7484
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7485 dso_local void @__ext4_error_inode(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef, ...) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !7488 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7490, metadata !DIExpression()), !dbg !7495
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7491, metadata !DIExpression()), !dbg !7496
  %0 = load i64, ptr %size.addr, align 8, !dbg !7497
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !7498
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !7499

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !7500
  %tobool = icmp ne i64 %2, 0, !dbg !7500
  br i1 %tobool, label %if.then, label %if.end7, !dbg !7501

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !7502
  call void @llvm.dbg.declare(metadata ptr %index, metadata !7492, metadata !DIExpression()), !dbg !7503
  %3 = load i64, ptr %size.addr, align 8, !dbg !7504
  %cmp = icmp ugt i64 %3, 8192, !dbg !7506
  br i1 %cmp, label %if.then1, label %if.end, !dbg !7507

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !7508
  %5 = load i32, ptr %flags.addr, align 4, !dbg !7509
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #17, !dbg !7510
  store ptr %call, ptr %retval, align 8, !dbg !7511
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7511

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !7512
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #15, !dbg !7512
  store i32 %call2, ptr %index, align 4, !dbg !7513
  %7 = load i32, ptr %flags.addr, align 4, !dbg !7514
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !7515
  %9 = ptrtoint ptr %8 to i64, !dbg !7515
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #15, !dbg !7516
  %idxprom = zext i32 %call3 to i64, !dbg !7517
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !7517
  %10 = load i32, ptr %index, align 4, !dbg !7518
  %idxprom4 = zext i32 %10 to i64, !dbg !7517
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !7517
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !7517
  %12 = load i32, ptr %flags.addr, align 4, !dbg !7519
  %13 = load i64, ptr %size.addr, align 8, !dbg !7520
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #19, !dbg !7521
  store ptr %call6, ptr %retval, align 8, !dbg !7522
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7522

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !7523
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !7524
  %15 = load i32, ptr %flags.addr, align 4, !dbg !7525
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #17, !dbg !7526
  store ptr %call8, ptr %retval, align 8, !dbg !7527
  br label %return, !dbg !7527

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !7528
  ret ptr %16, !dbg !7528
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !7529 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #7 align 16 !dbg !7530 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7534, metadata !DIExpression()), !dbg !7536
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !7535, metadata !DIExpression()), !dbg !7537
  %0 = load i64, ptr %size.addr, align 8, !dbg !7538
  %tobool = icmp ne i64 %0, 0, !dbg !7538
  br i1 %tobool, label %if.end, label %if.then, !dbg !7540

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7541
  br label %return, !dbg !7541

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !7542
  %cmp = icmp ule i64 %1, 8, !dbg !7544
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !7545

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !7546
  br label %return, !dbg !7546

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !7547
  %cmp3 = icmp ugt i64 %2, 64, !dbg !7549
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !7550

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !7551
  %cmp4 = icmp ule i64 %3, 96, !dbg !7552
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !7553

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !7554
  br label %return, !dbg !7554

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !7555
  %cmp7 = icmp ugt i64 %4, 128, !dbg !7557
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !7558

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !7559
  %cmp9 = icmp ule i64 %5, 192, !dbg !7560
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !7561

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !7562
  br label %return, !dbg !7562

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !7563
  %cmp12 = icmp ule i64 %6, 8, !dbg !7565
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !7566

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !7567
  br label %return, !dbg !7567

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !7568
  %cmp15 = icmp ule i64 %7, 16, !dbg !7570
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !7571

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !7572
  br label %return, !dbg !7572

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !7573
  %cmp18 = icmp ule i64 %8, 32, !dbg !7575
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !7576

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !7577
  br label %return, !dbg !7577

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !7578
  %cmp21 = icmp ule i64 %9, 64, !dbg !7580
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !7581

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !7582
  br label %return, !dbg !7582

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !7583
  %cmp24 = icmp ule i64 %10, 128, !dbg !7585
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !7586

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !7587
  br label %return, !dbg !7587

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !7588
  %cmp27 = icmp ule i64 %11, 256, !dbg !7590
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !7591

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !7592
  br label %return, !dbg !7592

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !7593
  %cmp30 = icmp ule i64 %12, 512, !dbg !7595
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !7596

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !7597
  br label %return, !dbg !7597

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !7598
  %cmp33 = icmp ule i64 %13, 1024, !dbg !7600
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !7601

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !7602
  br label %return, !dbg !7602

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !7603
  %cmp36 = icmp ule i64 %14, 2048, !dbg !7605
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !7606

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !7607
  br label %return, !dbg !7607

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !7608
  %cmp39 = icmp ule i64 %15, 4096, !dbg !7610
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !7611

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !7612
  br label %return, !dbg !7612

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !7613
  %cmp42 = icmp ule i64 %16, 8192, !dbg !7615
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !7616

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !7617
  br label %return, !dbg !7617

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !7618
  %cmp45 = icmp ule i64 %17, 16384, !dbg !7620
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !7621

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !7622
  br label %return, !dbg !7622

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !7623
  %cmp48 = icmp ule i64 %18, 32768, !dbg !7625
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !7626

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !7627
  br label %return, !dbg !7627

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !7628
  %cmp51 = icmp ule i64 %19, 65536, !dbg !7630
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !7631

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !7632
  br label %return, !dbg !7632

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !7633
  %cmp54 = icmp ule i64 %20, 131072, !dbg !7635
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !7636

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !7637
  br label %return, !dbg !7637

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !7638
  %cmp57 = icmp ule i64 %21, 262144, !dbg !7640
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !7641

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !7642
  br label %return, !dbg !7642

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !7643
  %cmp60 = icmp ule i64 %22, 524288, !dbg !7645
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !7646

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !7647
  br label %return, !dbg !7647

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !7648
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !7650
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !7651

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !7652
  br label %return, !dbg !7652

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !7653
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !7655
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !7656

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !7657
  br label %return, !dbg !7657

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !7658, !range !7660, !noundef !1398
  %tobool69 = trunc i8 %25 to i1, !dbg !7658
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !7661

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !7662

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_245() #20, !dbg !7663, !srcloc !7666
  unreachable, !dbg !7663

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !7667

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !7668

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !7669

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !7671

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !7669

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 480, i32 0, i64 12) #16, !dbg !7673, !srcloc !7675
  br label %do.end75, !dbg !7673

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !7669

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !7676
  br label %return, !dbg !7676

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !7677
  ret i32 %26, !dbg !7677
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !7678 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #7 align 16 !dbg !7681 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7685, metadata !DIExpression()), !dbg !7687
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !7686, metadata !DIExpression()), !dbg !7688
  %0 = load i32, ptr %flags.addr, align 4, !dbg !7689
  %and = and i32 %0, 17, !dbg !7689
  %cmp = icmp eq i32 %and, 0, !dbg !7689
  %lnot = xor i1 %cmp, true, !dbg !7689
  %lnot1 = xor i1 %lnot, true, !dbg !7689
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7689
  %conv = sext i32 %lnot.ext to i64, !dbg !7689
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !7689
  %tobool = icmp ne i64 %expval, 0, !dbg !7689
  br i1 %tobool, label %if.then, label %if.end, !dbg !7691

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7692
  br label %return, !dbg !7692

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !7693
  %and2 = and i32 %1, 1, !dbg !7695
  %tobool3 = icmp ne i32 %and2, 0, !dbg !7695
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !7696

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !7697
  br label %return, !dbg !7697

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !7698
  br label %return, !dbg !7698

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !7700
  ret i32 %2, !dbg !7700
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !7701 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #11

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !7702 dso_local void @__compiletime_assert_245() #13

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__cond_resched() #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7703 dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rb_link_node(ptr noundef %node, ptr noundef %parent, ptr noundef %rb_link) #5 align 16 !dbg !7706 {
entry:
  %node.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %rb_link.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !7711, metadata !DIExpression()), !dbg !7714
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !7712, metadata !DIExpression()), !dbg !7715
  store ptr %rb_link, ptr %rb_link.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb_link.addr, metadata !7713, metadata !DIExpression()), !dbg !7716
  %0 = load ptr, ptr %parent.addr, align 8, !dbg !7717
  %1 = ptrtoint ptr %0 to i64, !dbg !7718
  %2 = load ptr, ptr %node.addr, align 8, !dbg !7719
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, ptr %2, i32 0, i32 0, !dbg !7720
  store i64 %1, ptr %__rb_parent_color, align 8, !dbg !7721
  %3 = load ptr, ptr %node.addr, align 8, !dbg !7722
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %3, i32 0, i32 1, !dbg !7723
  store ptr null, ptr %rb_right, align 8, !dbg !7724
  %4 = load ptr, ptr %node.addr, align 8, !dbg !7725
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %4, i32 0, i32 2, !dbg !7726
  store ptr null, ptr %rb_left, align 8, !dbg !7727
  %5 = load ptr, ptr %node.addr, align 8, !dbg !7728
  %6 = load ptr, ptr %rb_link.addr, align 8, !dbg !7729
  store ptr %5, ptr %6, align 8, !dbg !7730
  ret void, !dbg !7731
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7732 dso_local void @rb_insert_color(ptr noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7736 dso_local ptr @rb_prev(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @can_merge(ptr noundef %entry1, ptr noundef %entry2) #5 align 16 !dbg !7741 {
entry:
  %retval = alloca i32, align 4
  %entry1.addr = alloca ptr, align 8
  %entry2.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry1.addr, metadata !7745, metadata !DIExpression()), !dbg !7747
  store ptr %entry2, ptr %entry2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry2.addr, metadata !7746, metadata !DIExpression()), !dbg !7748
  %0 = load ptr, ptr %entry1.addr, align 8, !dbg !7749
  %start_blk = getelementptr inbounds %struct.ext4_system_zone, ptr %0, i32 0, i32 1, !dbg !7751
  %1 = load i64, ptr %start_blk, align 8, !dbg !7751
  %2 = load ptr, ptr %entry1.addr, align 8, !dbg !7752
  %count = getelementptr inbounds %struct.ext4_system_zone, ptr %2, i32 0, i32 2, !dbg !7753
  %3 = load i32, ptr %count, align 8, !dbg !7753
  %conv = zext i32 %3 to i64, !dbg !7752
  %add = add i64 %1, %conv, !dbg !7754
  %4 = load ptr, ptr %entry2.addr, align 8, !dbg !7755
  %start_blk1 = getelementptr inbounds %struct.ext4_system_zone, ptr %4, i32 0, i32 1, !dbg !7756
  %5 = load i64, ptr %start_blk1, align 8, !dbg !7756
  %cmp = icmp eq i64 %add, %5, !dbg !7757
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !7758

land.lhs.true:                                    ; preds = %entry
  %6 = load ptr, ptr %entry1.addr, align 8, !dbg !7759
  %ino = getelementptr inbounds %struct.ext4_system_zone, ptr %6, i32 0, i32 3, !dbg !7760
  %7 = load i32, ptr %ino, align 4, !dbg !7760
  %8 = load ptr, ptr %entry2.addr, align 8, !dbg !7761
  %ino3 = getelementptr inbounds %struct.ext4_system_zone, ptr %8, i32 0, i32 3, !dbg !7762
  %9 = load i32, ptr %ino3, align 4, !dbg !7762
  %cmp4 = icmp eq i32 %7, %9, !dbg !7763
  br i1 %cmp4, label %if.then, label %if.end, !dbg !7764

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !7765
  br label %return, !dbg !7765

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 0, ptr %retval, align 4, !dbg !7766
  br label %return, !dbg !7766

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, ptr %retval, align 4, !dbg !7767
  ret i32 %10, !dbg !7767
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7768 dso_local void @rb_erase(ptr noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7769 dso_local void @kmem_cache_free(ptr noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7772 dso_local ptr @rb_next(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7773 dso_local ptr @__ext4_iget(ptr noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #5 align 16 !dbg !7777 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !7782, metadata !DIExpression()), !dbg !7783
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !7784
  %1 = ptrtoint ptr %0 to i64, !dbg !7784
  %2 = inttoptr i64 %1 to ptr, !dbg !7784
  %3 = ptrtoint ptr %2 to i64, !dbg !7784
  %cmp = icmp uge i64 %3, -4095, !dbg !7784
  %lnot = xor i1 %cmp, true, !dbg !7784
  %lnot1 = xor i1 %lnot, true, !dbg !7784
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7784
  %conv = sext i32 %lnot.ext to i64, !dbg !7784
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7784
  %tobool = icmp ne i64 %expval, 0, !dbg !7784
  ret i1 %tobool, !dbg !7785
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #5 align 16 !dbg !7786 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !7790, metadata !DIExpression()), !dbg !7791
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !7792
  %1 = ptrtoint ptr %0 to i64, !dbg !7793
  ret i64 %1, !dbg !7794
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7795 dso_local i32 @ext4_map_blocks(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7823 dso_local void @iput(ptr noundef) #1

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !7824 dso_local i32 @_printk(ptr noundef, ...) #14

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7828 dso_local ptr @rb_first(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7833 dso_local ptr @rb_first_postorder(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7834 dso_local ptr @rb_next_postorder(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7835 dso_local void @__rcu_read_lock() #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7836 dso_local void @__rcu_read_unlock() #1

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone }
attributes #16 = { nounwind }
attributes #17 = { noredzone allocsize(0) }
attributes #18 = { cold noredzone }
attributes #19 = { noredzone allocsize(2) }
attributes #20 = { noredzone noreturn }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!6061, !6062, !6063, !6064, !6065, !6066, !6067, !6068}
!llvm.ident = !{!6069}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 34, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "fs/ext4/block_validity.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "80ddbde65d41c8e55df46f4e4acf0001")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 17)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "ext4_system_zone_cachep", scope: !9, file: !2, line: 30, type: !2691, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/ext4/.block_validity.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/ext4/ext4\22 -D KBUILD_BASENAME=\22block_validity\22 -D KBUILD_MODNAME=\22ext4\22 -D __KBUILD_MODNAME=kmod_ext4 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/ext4/block_validity.ll fs/ext4/block_validity.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !6001, globals: !6021, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !20, !115, !122, !130, !146, !151, !158, !164, !170, !177, !182, !190, !197, !203, !212, !217, !222, !228, !232, !237, !249, !254, !260, !266, !273, !5894, !5974, !5979, !5984, !5994}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !12, line: 9, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16, !17, !18, !19}
!15 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!16 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!17 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!18 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!19 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !22, file: !21, line: 147, baseType: !13, size: 32, elements: !112)
!21 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !21, line: 135, size: 512, elements: !23)
!23 = !{!24, !27, !29, !31, !35, !36, !52, !110, !111}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !22, file: !21, line: 136, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !22, file: !21, line: 137, baseType: !28, size: 64, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !22, file: !21, line: 138, baseType: !30, size: 32, offset: 128)
!30 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !22, file: !21, line: 139, baseType: !32, size: 16, offset: 160)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !33, line: 24, baseType: !34)
!33 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!34 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !22, file: !21, line: 150, baseType: !20, size: 32, offset: 192)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !22, file: !21, line: 151, baseType: !37, size: 64, offset: 256)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !21, line: 64, baseType: !39)
!39 = !DISubroutineType(types: !40)
!40 = !{!30, !41, !30, !28, !42, !48}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !33, line: 61, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !45, line: 72, baseType: !46)
!45 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !45, line: 16, baseType: !47)
!47 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !33, line: 52, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !45, line: 88, baseType: !51)
!51 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !22, file: !21, line: 152, baseType: !53, size: 64, offset: 320)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !21, line: 117, size: 256, elements: !55)
!55 = !{!56, !61}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !54, file: !21, line: 118, baseType: !57, size: 32)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !33, line: 174, baseType: !58)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !33, line: 172, size: 32, elements: !59)
!59 = !{!60}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !58, file: !33, line: 173, baseType: !30, size: 32)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !54, file: !21, line: 119, baseType: !62, size: 192, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !63, line: 41, baseType: !64)
!63 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !63, line: 37, size: 192, elements: !65)
!65 = !{!66, !104}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !64, file: !63, line: 38, baseType: !67, size: 32)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !68, line: 29, baseType: !69)
!68 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !68, line: 17, size: 32, elements: !70)
!70 = !{!71}
!71 = !DIDerivedType(tag: DW_TAG_member, scope: !69, file: !68, line: 18, baseType: !72, size: 32)
!72 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !69, file: !68, line: 18, size: 32, elements: !73)
!73 = !{!74}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !72, file: !68, line: 19, baseType: !75, size: 32)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !76, line: 14, size: 32, elements: !77)
!76 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!77 = !{!78}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !75, file: !76, line: 15, baseType: !79, size: 32)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !80, line: 44, baseType: !81)
!80 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !80, line: 14, size: 32, elements: !82)
!82 = !{!83}
!83 = !DIDerivedType(tag: DW_TAG_member, scope: !81, file: !80, line: 15, baseType: !84, size: 32)
!84 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !81, file: !80, line: 15, size: 32, elements: !85)
!85 = !{!86, !87, !97}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !84, file: !80, line: 16, baseType: !57, size: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, scope: !84, file: !80, line: 24, baseType: !88, size: 16)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !84, file: !80, line: 24, size: 16, elements: !89)
!89 = !{!90, !96}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !88, file: !80, line: 25, baseType: !91, size: 8)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !92, line: 17, baseType: !93)
!92 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !94, line: 21, baseType: !95)
!94 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!95 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !88, file: !80, line: 26, baseType: !91, size: 8, offset: 8)
!97 = !DIDerivedType(tag: DW_TAG_member, scope: !84, file: !80, line: 28, baseType: !98, size: 32)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !84, file: !80, line: 28, size: 32, elements: !99)
!99 = !{!100, !103}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !98, file: !80, line: 29, baseType: !101, size: 16)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !92, line: 19, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !94, line: 24, baseType: !34)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !98, file: !80, line: 30, baseType: !101, size: 16, offset: 16)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !64, file: !63, line: 39, baseType: !105, size: 128, offset: 64)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !33, line: 190, size: 128, elements: !106)
!106 = !{!107, !109}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !105, file: !33, line: 191, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !105, file: !33, line: 191, baseType: !108, size: 64, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !22, file: !21, line: 153, baseType: !28, size: 64, offset: 384)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !22, file: !21, line: 154, baseType: !28, size: 64, offset: 448)
!112 = !{!113, !114}
!113 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!114 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!115 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !116, line: 312, baseType: !13, size: 32, elements: !117)
!116 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!117 = !{!118, !119, !120, !121}
!118 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!119 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!120 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!121 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !123, line: 68, baseType: !13, size: 32, elements: !124)
!123 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!124 = !{!125, !126, !127, !128, !129}
!125 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!126 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!127 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!128 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!129 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!130 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !131, line: 1325, baseType: !13, size: 32, elements: !132)
!131 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!132 = !{!133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145}
!133 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!134 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!135 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!136 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!137 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!138 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!139 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!140 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!141 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!142 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!143 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!144 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!145 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writeback_sync_modes", file: !147, line: 32, baseType: !13, size: 32, elements: !148)
!147 = !DIFile(filename: "./include/linux/writeback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "529df0d846991cd3030ee9505d2aaa60")
!148 = !{!149, !150}
!149 = !DIEnumerator(name: "WB_SYNC_NONE", value: 0)
!150 = !DIEnumerator(name: "WB_SYNC_ALL", value: 1)
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !152, line: 15, baseType: !13, size: 32, elements: !153)
!152 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!153 = !{!154, !155, !156, !157}
!154 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!155 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!156 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!157 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!158 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_unique_id", file: !159, line: 1381, baseType: !13, size: 32, elements: !160)
!159 = !DIFile(filename: "./include/linux/blkdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "802ed60c7d9aff392515db0b7890881d")
!160 = !{!161, !162, !163}
!161 = !DIEnumerator(name: "BLK_UID_T10", value: 1)
!162 = !DIEnumerator(name: "BLK_UID_EUI64", value: 2)
!163 = !DIEnumerator(name: "BLK_UID_NAA", value: 3)
!164 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !165, line: 45, baseType: !13, size: 32, elements: !166)
!165 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!166 = !{!167, !168, !169}
!167 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!168 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!169 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!170 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !171, line: 487, baseType: !13, size: 32, elements: !172)
!171 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!172 = !{!173, !174, !175, !176}
!173 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!174 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!175 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!176 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!177 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !178, line: 65, baseType: !13, size: 32, elements: !179)
!178 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!179 = !{!180, !181}
!180 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!181 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!182 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !183, line: 620, baseType: !13, size: 32, elements: !184)
!183 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!184 = !{!185, !186, !187, !188, !189}
!185 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!186 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!187 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!188 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!189 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!190 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !183, line: 597, baseType: !30, size: 32, elements: !191)
!191 = !{!192, !193, !194, !195, !196}
!192 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!193 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!194 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!195 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!196 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!197 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !198, line: 26, baseType: !13, size: 32, elements: !199)
!198 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!199 = !{!200, !201, !202}
!200 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!201 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!202 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!203 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !171, line: 547, baseType: !13, size: 32, elements: !204)
!204 = !{!205, !206, !207, !208, !209, !210, !211}
!205 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!206 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!207 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!208 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!209 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!210 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!211 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!212 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !171, line: 564, baseType: !13, size: 32, elements: !213)
!213 = !{!214, !215, !216}
!214 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!215 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!216 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!217 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !171, line: 577, baseType: !13, size: 32, elements: !218)
!218 = !{!219, !220, !221}
!219 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!220 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!221 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!222 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !171, line: 503, baseType: !13, size: 32, elements: !223)
!223 = !{!224, !225, !226, !227}
!224 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!225 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!226 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!227 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!228 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_bounce", file: !159, line: 295, baseType: !13, size: 32, elements: !229)
!229 = !{!230, !231}
!230 = !DIEnumerator(name: "BLK_BOUNCE_NONE", value: 0)
!231 = !DIEnumerator(name: "BLK_BOUNCE_HIGH", value: 1)
!232 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_zoned_model", file: !159, line: 285, baseType: !13, size: 32, elements: !233)
!233 = !{!234, !235, !236}
!234 = !DIEnumerator(name: "BLK_ZONED_NONE", value: 0)
!235 = !DIEnumerator(name: "BLK_ZONED_HA", value: 1)
!236 = !DIEnumerator(name: "BLK_ZONED_HM", value: 2)
!237 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !238, line: 44, baseType: !13, size: 32, elements: !239)
!238 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48876dd2050c245a6230a2e03c4bc3c9")
!239 = !{!240, !241, !242, !243, !244, !245, !246, !247, !248}
!240 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0)
!241 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1)
!242 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2)
!243 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3)
!244 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4)
!245 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5)
!246 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6)
!247 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7)
!248 = !DIEnumerator(name: "WB_REASON_MAX", value: 8)
!249 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !250, line: 2052, baseType: !13, size: 32, elements: !251)
!250 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!251 = !{!252, !253}
!252 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!253 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!254 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !255, line: 54, baseType: !13, size: 32, elements: !256)
!255 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!256 = !{!257, !258, !259}
!257 = !DIEnumerator(name: "USRQUOTA", value: 0)
!258 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!259 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!260 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !261, line: 16, baseType: !13, size: 32, elements: !262)
!261 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!262 = !{!263, !264, !265}
!263 = !DIEnumerator(name: "TT_NONE", value: 0)
!264 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!265 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!266 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !267, line: 51, baseType: !13, size: 32, elements: !268)
!267 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!268 = !{!269, !270, !271, !272}
!269 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!270 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!271 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!272 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!273 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !275, file: !274, line: 567, baseType: !13, size: 32, elements: !5964)
!274 = !DIFile(filename: "./include/linux/jbd2.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "072378681f9a7c8bcf642036e73917c8")
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "transaction_s", file: !274, line: 551, size: 1664, elements: !276)
!276 = !{!277, !5903, !5904, !5905, !5906, !5907, !5938, !5939, !5940, !5941, !5942, !5943, !5944, !5945, !5946, !5953, !5954, !5955, !5956, !5957, !5958, !5959, !5960, !5961, !5962, !5963}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "t_journal", scope: !275, file: !274, line: 554, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "journal_t", file: !274, line: 105, baseType: !280)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "journal_s", file: !274, line: 750, size: 11776, elements: !281)
!281 = !{!282, !283, !284, !285, !306, !5658, !5698, !5699, !5700, !5701, !5705, !5706, !5707, !5708, !5709, !5710, !5711, !5712, !5713, !5714, !5716, !5717, !5718, !5719, !5720, !5721, !5722, !5723, !5724, !5725, !5726, !5727, !5728, !5729, !5730, !5731, !5732, !5733, !5734, !5735, !5736, !5738, !5739, !5740, !5741, !5742, !5743, !5744, !5745, !5746, !5747, !5748, !5749, !5752, !5754, !5756, !5757, !5758, !5759, !5760, !5761, !5762, !5763, !5767, !5781, !5782, !5783, !5787, !5804, !5805, !5806, !5884, !5885, !5890, !5899}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "j_flags", scope: !280, file: !274, line: 756, baseType: !47, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "j_atomic_flags", scope: !280, file: !274, line: 761, baseType: !47, size: 64, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "j_errno", scope: !280, file: !274, line: 769, baseType: !30, size: 32, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "j_abort_mutex", scope: !280, file: !274, line: 774, baseType: !286, size: 256, offset: 192)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !287, line: 66, size: 256, elements: !288)
!287 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!288 = !{!289, !298, !300, !305}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !286, file: !287, line: 67, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !291, line: 13, baseType: !292)
!291 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !33, line: 181, baseType: !293)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !33, line: 179, size: 64, elements: !294)
!294 = !{!295}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !293, file: !33, line: 180, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !92, line: 22, baseType: !297)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !94, line: 30, baseType: !51)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !286, file: !287, line: 68, baseType: !299, size: 32, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !76, line: 23, baseType: !75)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !286, file: !287, line: 70, baseType: !301, size: 32, offset: 96)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !302, line: 15, size: 32, elements: !303)
!302 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!303 = !{!304}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !301, file: !302, line: 20, baseType: !57, size: 32)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !286, file: !287, line: 72, baseType: !105, size: 128, offset: 128)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "j_sb_buffer", scope: !280, file: !274, line: 779, baseType: !307, size: 64, offset: 448)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "buffer_head", file: !309, line: 59, size: 832, elements: !310)
!309 = !DIFile(filename: "./include/linux/buffer_head.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc335f14f0fab7e7c331101f97325549")
!310 = !{!311, !312, !313, !5644, !5645, !5646, !5647, !5648, !5653, !5654, !5655, !5656, !5657}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "b_state", scope: !308, file: !309, line: 60, baseType: !47, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "b_this_page", scope: !308, file: !309, line: 61, baseType: !307, size: 64, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, scope: !308, file: !309, line: 62, baseType: !314, size: 64, offset: 128)
!314 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !308, file: !309, line: 62, size: 64, elements: !315)
!315 = !{!316, !5643}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "b_page", scope: !314, file: !309, line: 63, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !131, line: 74, size: 512, align: 128, elements: !319)
!319 = !{!320, !321, !5637, !5642}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !318, file: !131, line: 75, baseType: !47, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, scope: !318, file: !131, line: 83, baseType: !322, size: 320, offset: 64)
!322 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !318, file: !131, line: 83, size: 320, elements: !323)
!323 = !{!324, !5563, !5577, !5581, !5636}
!324 = !DIDerivedType(tag: DW_TAG_member, scope: !322, file: !131, line: 84, baseType: !325, size: 320)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !322, file: !131, line: 84, size: 320, elements: !326)
!326 = !{!327, !338, !5557, !5562}
!327 = !DIDerivedType(tag: DW_TAG_member, scope: !325, file: !131, line: 90, baseType: !328, size: 128)
!328 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !325, file: !131, line: 90, size: 128, elements: !329)
!329 = !{!330, !331, !336, !337}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !328, file: !131, line: 91, baseType: !105, size: 128)
!331 = !DIDerivedType(tag: DW_TAG_member, scope: !328, file: !131, line: 94, baseType: !332, size: 128)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !328, file: !131, line: 94, size: 128, elements: !333)
!333 = !{!334, !335}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !332, file: !131, line: 96, baseType: !28, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !332, file: !131, line: 98, baseType: !13, size: 32, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !328, file: !131, line: 102, baseType: !105, size: 128)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !328, file: !131, line: 103, baseType: !105, size: 128)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !325, file: !131, line: 106, baseType: !339, size: 64, offset: 128)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !250, line: 472, size: 1536, align: 64, elements: !341)
!341 = !{!342, !5404, !5405, !5406, !5407, !5408, !5409, !5410, !5411, !5551, !5552, !5553, !5554, !5555, !5556}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !340, file: !250, line: 473, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !250, line: 641, size: 4800, elements: !345)
!345 = !{!346, !347, !348, !356, !357, !364, !365, !368, !369, !5342, !5343, !5344, !5345, !5346, !5352, !5353, !5354, !5355, !5356, !5357, !5358, !5359, !5360, !5361, !5362, !5363, !5364, !5365, !5366, !5367, !5368, !5369, !5370, !5375, !5376, !5377, !5378, !5379, !5380, !5381, !5386, !5389, !5390, !5391, !5400, !5401, !5402, !5403}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !344, file: !250, line: 642, baseType: !32, size: 16)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !344, file: !250, line: 643, baseType: !34, size: 16, offset: 16)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !344, file: !250, line: 644, baseType: !349, size: 32, offset: 32)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !350, line: 23, baseType: !351)
!350 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !350, line: 21, size: 32, elements: !352)
!352 = !{!353}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !351, file: !350, line: 22, baseType: !354, size: 32)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !33, line: 37, baseType: !355)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !45, line: 49, baseType: !13)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !344, file: !250, line: 645, baseType: !105, size: 128, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !344, file: !250, line: 646, baseType: !358, size: 32, offset: 192)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !350, line: 28, baseType: !359)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !350, line: 26, size: 32, elements: !360)
!360 = !{!361}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !359, file: !350, line: 27, baseType: !362, size: 32)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !33, line: 38, baseType: !363)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !45, line: 50, baseType: !13)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !344, file: !250, line: 647, baseType: !13, size: 32, offset: 224)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !344, file: !250, line: 650, baseType: !366, size: 64, offset: 256)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !250, line: 607, flags: DIFlagFwdDecl)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !344, file: !250, line: 651, baseType: !366, size: 64, offset: 320)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !344, file: !250, line: 654, baseType: !370, size: 64, offset: 384)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !372)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !250, line: 1966, size: 2048, align: 512, elements: !373)
!373 = !{!374, !5158, !5168, !5172, !5176, !5180, !5184, !5188, !5192, !5196, !5200, !5201, !5205, !5209, !5246, !5275, !5279, !5303, !5307, !5311, !5315, !5319, !5323, !5329, !5333}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !372, file: !250, line: 1967, baseType: !375, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DISubroutineType(types: !377)
!377 = !{!378, !343, !378, !13}
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !380, line: 82, size: 1536, elements: !381)
!380 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!381 = !{!382, !383, !393, !401, !402, !422, !423, !427, !440, !5141, !5142, !5143, !5144, !5150, !5151, !5152}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !379, file: !380, line: 84, baseType: !13, size: 32)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !379, file: !380, line: 85, baseType: !384, size: 32, offset: 32)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !385, line: 275, baseType: !386)
!385 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !385, line: 275, size: 32, elements: !387)
!387 = !{!388}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !386, file: !385, line: 275, baseType: !389, size: 32)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !385, line: 69, baseType: !390)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !385, line: 64, size: 32, elements: !391)
!391 = !{!392}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !390, file: !385, line: 65, baseType: !13, size: 32)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !379, file: !380, line: 86, baseType: !394, size: 128, offset: 64)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !395, line: 38, size: 128, elements: !396)
!395 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!396 = !{!397, !399}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !394, file: !395, line: 39, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !394, file: !395, line: 39, baseType: !400, size: 64, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !379, file: !380, line: 87, baseType: !378, size: 64, offset: 192)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !379, file: !380, line: 88, baseType: !403, size: 128, offset: 256)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !380, line: 49, size: 128, elements: !404)
!404 = !{!405, !419}
!405 = !DIDerivedType(tag: DW_TAG_member, scope: !403, file: !380, line: 50, baseType: !406, size: 64)
!406 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !403, file: !380, line: 50, size: 64, elements: !407)
!407 = !{!408, !415}
!408 = !DIDerivedType(tag: DW_TAG_member, scope: !406, file: !380, line: 51, baseType: !409, size: 64)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !406, file: !380, line: 51, size: 64, elements: !410)
!410 = !{!411, !414}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !409, file: !380, line: 52, baseType: !412, size: 32)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !92, line: 21, baseType: !413)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !94, line: 27, baseType: !13)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !409, file: !380, line: 52, baseType: !412, size: 32, offset: 32)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !406, file: !380, line: 54, baseType: !416, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !92, line: 23, baseType: !417)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !94, line: 31, baseType: !418)
!418 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !403, file: !380, line: 56, baseType: !420, size: 64, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !379, file: !380, line: 89, baseType: !343, size: 64, offset: 384)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !379, file: !380, line: 91, baseType: !424, size: 256, offset: 448)
!424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 256, elements: !425)
!425 = !{!426}
!426 = !DISubrange(count: 32)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !379, file: !380, line: 94, baseType: !428, size: 64, offset: 704)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !429, line: 25, size: 64, elements: !430)
!429 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!430 = !{!431}
!431 = !DIDerivedType(tag: DW_TAG_member, scope: !428, file: !429, line: 26, baseType: !432, size: 64)
!432 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !428, file: !429, line: 26, size: 64, elements: !433)
!433 = !{!434, !435}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !432, file: !429, line: 28, baseType: !417, size: 64, align: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, scope: !432, file: !429, line: 30, baseType: !436, size: 64)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !432, file: !429, line: 30, size: 64, elements: !437)
!437 = !{!438, !439}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !436, file: !429, line: 31, baseType: !67, size: 32)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !436, file: !429, line: 32, baseType: !30, size: 32, offset: 32)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !379, file: !380, line: 95, baseType: !441, size: 64, offset: 768)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !443)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !380, line: 128, size: 1024, align: 512, elements: !444)
!444 = !{!445, !449, !450, !457, !463, !467, !471, !475, !476, !480, !485, !5131, !5135}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !443, file: !380, line: 129, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{!30, !378, !13}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !443, file: !380, line: 130, baseType: !446, size: 64, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !443, file: !380, line: 131, baseType: !451, size: 64, offset: 128)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{!30, !454, !456}
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !379)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !443, file: !380, line: 132, baseType: !458, size: 64, offset: 192)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{!30, !454, !13, !25, !461}
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !403)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !443, file: !380, line: 134, baseType: !464, size: 64, offset: 256)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DISubroutineType(types: !466)
!466 = !{!30, !454}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !443, file: !380, line: 135, baseType: !468, size: 64, offset: 320)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{!30, !378}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !443, file: !380, line: 136, baseType: !472, size: 64, offset: 384)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{null, !378}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !443, file: !380, line: 137, baseType: !472, size: 64, offset: 448)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !443, file: !380, line: 138, baseType: !477, size: 64, offset: 512)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DISubroutineType(types: !479)
!479 = !{null, !378, !343}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !443, file: !380, line: 139, baseType: !481, size: 64, offset: 576)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{!484, !378, !484, !30}
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !443, file: !380, line: 140, baseType: !486, size: 64, offset: 640)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{!489, !5130}
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !491, line: 70, size: 256, elements: !492)
!491 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!492 = !{!493, !494, !5126, !5127}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !490, file: !491, line: 71, baseType: !378, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !490, file: !491, line: 72, baseType: !495, size: 64, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !250, line: 1190, size: 10752, elements: !497)
!497 = !{!498, !499, !502, !503, !504, !505, !2316, !2468, !2508, !2593, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2610, !2614, !2615, !3516, !3522, !3523, !3526, !3527, !3528, !3569, !5060, !5061, !5062, !5063, !5064, !5065, !5068, !5069, !5076, !5077, !5078, !5079, !5080, !5095, !5096, !5097, !5098, !5099, !5100, !5101, !5102, !5117, !5118, !5119, !5120, !5121, !5122, !5123, !5124, !5125}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !496, file: !250, line: 1191, baseType: !105, size: 128)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !496, file: !250, line: 1192, baseType: !500, size: 32, offset: 128)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !33, line: 21, baseType: !501)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !33, line: 18, baseType: !412)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !496, file: !250, line: 1193, baseType: !95, size: 8, offset: 160)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !496, file: !250, line: 1194, baseType: !47, size: 64, offset: 192)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !496, file: !250, line: 1195, baseType: !49, size: 64, offset: 256)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !496, file: !250, line: 1196, baseType: !506, size: 64, offset: 320)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !250, line: 2366, size: 576, elements: !508)
!508 = !{!509, !510, !511, !517, !521, !525, !529, !2304, !2305, !2306, !2308, !2309, !2310, !2312, !2313, !2314, !2315}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !507, file: !250, line: 2367, baseType: !25, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !507, file: !250, line: 2368, baseType: !30, size: 32, offset: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !507, file: !250, line: 2376, baseType: !512, size: 64, offset: 128)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{!30, !515}
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !491, line: 21, flags: DIFlagFwdDecl)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !507, file: !250, line: 2377, baseType: !518, size: 64, offset: 192)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !520)
!520 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !250, line: 75, flags: DIFlagFwdDecl)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !507, file: !250, line: 2378, baseType: !522, size: 64, offset: 256)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DISubroutineType(types: !524)
!524 = !{!378, !506, !30, !25, !28}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !507, file: !250, line: 2380, baseType: !526, size: 64, offset: 320)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DISubroutineType(types: !528)
!528 = !{null, !495}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !507, file: !250, line: 2381, baseType: !530, size: 64, offset: 384)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !116, line: 402, size: 9216, align: 512, elements: !532)
!532 = !{!533, !534, !535, !539, !1961, !1987, !1988, !1989, !1990, !1994, !1997, !1998, !1999, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2067, !2071, !2091, !2109, !2110, !2111, !2112, !2121, !2144, !2145, !2148, !2151, !2152, !2153, !2154, !2155, !2156, !2157, !2162, !2163, !2262, !2270, !2271, !2272, !2274, !2278, !2279, !2283, !2284, !2285, !2286, !2288, !2289, !2290, !2297, !2298, !2299, !2303}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !531, file: !116, line: 403, baseType: !115, size: 32)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !531, file: !116, line: 406, baseType: !105, size: 128, offset: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !531, file: !116, line: 409, baseType: !536, size: 448, offset: 192)
!536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !537)
!537 = !{!538}
!538 = !DISubrange(count: 56)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !531, file: !116, line: 417, baseType: !540, size: 768, offset: 640)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !116, line: 45, size: 768, elements: !541)
!541 = !{!542, !1955, !1956, !1957, !1960}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !540, file: !116, line: 46, baseType: !543, size: 512)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !544, line: 64, size: 512, elements: !545)
!544 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!545 = !{!546, !547, !548, !550, !596, !1853, !1945, !1950, !1951, !1952, !1953, !1954}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !543, file: !544, line: 65, baseType: !25, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !543, file: !544, line: 66, baseType: !105, size: 128, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !543, file: !544, line: 67, baseType: !549, size: 64, offset: 192)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !543, file: !544, line: 68, baseType: !551, size: 64, offset: 256)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !544, line: 168, size: 768, elements: !553)
!553 = !{!554, !555, !556, !557}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !552, file: !544, line: 169, baseType: !105, size: 128)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !552, file: !544, line: 170, baseType: !67, size: 32, offset: 128)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !552, file: !544, line: 171, baseType: !543, size: 512, offset: 192)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !552, file: !544, line: 172, baseType: !558, size: 64, offset: 704)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !560)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !544, line: 133, size: 192, elements: !561)
!561 = !{!562, !569, !574}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !560, file: !544, line: 134, baseType: !563, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !564)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DISubroutineType(types: !566)
!566 = !{!30, !567}
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !543)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !560, file: !544, line: 135, baseType: !570, size: 64, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !571)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{!25, !567}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !560, file: !544, line: 136, baseType: !575, size: 64, offset: 128)
!575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !576)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DISubroutineType(types: !578)
!578 = !{!30, !567, !579}
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !544, line: 125, size: 20736, elements: !581)
!581 = !{!582, !586, !590, !591, !595}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !580, file: !544, line: 126, baseType: !583, size: 192)
!583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !484, size: 192, elements: !584)
!584 = !{!585}
!585 = !DISubrange(count: 3)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !580, file: !544, line: 127, baseType: !587, size: 4096, offset: 192)
!587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !484, size: 4096, elements: !588)
!588 = !{!589}
!589 = !DISubrange(count: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !580, file: !544, line: 128, baseType: !30, size: 32, offset: 4288)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !580, file: !544, line: 129, baseType: !592, size: 16384, offset: 4320)
!592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !593)
!593 = !{!594}
!594 = !DISubrange(count: 2048)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !580, file: !544, line: 130, baseType: !30, size: 32, offset: 20704)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !543, file: !544, line: 69, baseType: !597, size: 64, offset: 320)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !599)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !544, line: 116, size: 384, elements: !600)
!600 = !{!601, !605, !628, !1814, !1845, !1849}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !599, file: !544, line: 117, baseType: !602, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DISubroutineType(types: !604)
!604 = !{null, !549}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !599, file: !544, line: 118, baseType: !606, size: 64, offset: 64)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !608)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !609, line: 254, size: 128, elements: !610)
!609 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!610 = !{!611, !624}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !608, file: !609, line: 255, baseType: !612, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DISubroutineType(types: !614)
!614 = !{!615, !549, !619, !484}
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !33, line: 66, baseType: !616)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !45, line: 73, baseType: !617)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !45, line: 15, baseType: !618)
!618 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !609, line: 30, size: 128, elements: !621)
!621 = !{!622, !623}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !620, file: !609, line: 31, baseType: !25, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !620, file: !609, line: 32, baseType: !32, size: 16, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !608, file: !609, line: 256, baseType: !625, size: 64, offset: 64)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DISubroutineType(types: !627)
!627 = !{!615, !549, !619, !25, !43}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !599, file: !544, line: 119, baseType: !629, size: 64, offset: 128)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !632)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !609, line: 84, size: 320, elements: !633)
!633 = !{!634, !635, !639, !1810, !1812}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !632, file: !609, line: 85, baseType: !25, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !632, file: !609, line: 86, baseType: !636, size: 64, offset: 64)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DISubroutineType(types: !638)
!638 = !{!32, !549, !619, !30}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !632, file: !609, line: 88, baseType: !640, size: 64, offset: 128)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DISubroutineType(types: !642)
!642 = !{!32, !549, !643, !30}
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !609, line: 175, size: 512, elements: !645)
!645 = !{!646, !647, !648, !649, !653, !1805, !1806}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !644, file: !609, line: 176, baseType: !620, size: 128)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !644, file: !609, line: 177, baseType: !43, size: 64, offset: 128)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !644, file: !609, line: 178, baseType: !28, size: 64, offset: 192)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !644, file: !609, line: 179, baseType: !650, size: 64, offset: 256)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DISubroutineType(types: !652)
!652 = !{!339}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !644, file: !609, line: 180, baseType: !654, size: 64, offset: 320)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{!615, !657, !549, !643, !484, !49, !43}
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !250, line: 994, size: 1856, align: 64, elements: !659)
!659 = !{!660, !679, !680, !682, !683, !684, !685, !686, !752, !1111, !1120, !1126, !1127, !1795, !1796, !1797, !1798, !1800, !1801, !1804}
!660 = !DIDerivedType(tag: DW_TAG_member, scope: !658, file: !250, line: 995, baseType: !661, size: 128)
!661 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !658, file: !250, line: 995, size: 128, elements: !662)
!662 = !{!663, !669, !678}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !661, file: !250, line: 996, baseType: !664, size: 64)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !665, line: 60, size: 64, elements: !666)
!665 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!666 = !{!667}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !664, file: !665, line: 61, baseType: !668, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !661, file: !250, line: 997, baseType: !670, size: 128, align: 64)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !33, line: 232, size: 128, align: 64, elements: !671)
!671 = !{!672, !674}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !670, file: !33, line: 233, baseType: !673, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !670, file: !33, line: 234, baseType: !675, size: 64, offset: 64)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DISubroutineType(types: !677)
!677 = !{null, !673}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !661, file: !250, line: 998, baseType: !13, size: 32)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !658, file: !250, line: 1005, baseType: !67, size: 32, offset: 128)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !658, file: !250, line: 1006, baseType: !681, size: 32, offset: 160)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !33, line: 156, baseType: !13)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !658, file: !250, line: 1007, baseType: !290, size: 64, offset: 192)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !658, file: !250, line: 1008, baseType: !286, size: 256, offset: 256)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !658, file: !250, line: 1009, baseType: !49, size: 64, offset: 512)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !658, file: !250, line: 1010, baseType: !13, size: 32, offset: 576)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !658, file: !250, line: 1011, baseType: !687, size: 256, offset: 640)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !250, line: 948, size: 256, elements: !688)
!688 = !{!689, !710, !748, !749, !750, !751}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !687, file: !250, line: 949, baseType: !690, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !691, line: 34, baseType: !692)
!691 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !691, line: 25, size: 64, elements: !693)
!693 = !{!694}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !692, file: !691, line: 26, baseType: !695, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !696, line: 27, baseType: !697)
!696 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !696, line: 13, size: 64, elements: !698)
!698 = !{!699, !709}
!699 = !DIDerivedType(tag: DW_TAG_member, scope: !697, file: !696, line: 14, baseType: !700, size: 32)
!700 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !697, file: !696, line: 14, size: 32, elements: !701)
!701 = !{!702, !703}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !700, file: !696, line: 15, baseType: !57, size: 32)
!703 = !DIDerivedType(tag: DW_TAG_member, scope: !700, file: !696, line: 16, baseType: !704, size: 32)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !700, file: !696, line: 16, size: 32, elements: !705)
!705 = !{!706, !707}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !704, file: !696, line: 18, baseType: !91, size: 8)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !704, file: !696, line: 19, baseType: !708, size: 24, offset: 8)
!708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 24, elements: !584)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !697, file: !696, line: 26, baseType: !79, size: 32, offset: 32)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !687, file: !250, line: 950, baseType: !711, size: 64, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !12, line: 59, size: 768, elements: !713)
!713 = !{!714, !720, !721, !722, !735, !736, !737, !738}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !712, file: !12, line: 61, baseType: !715, size: 32)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !716, line: 113, baseType: !717)
!716 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !716, line: 111, size: 32, elements: !718)
!718 = !{!719}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !717, file: !716, line: 112, baseType: !57, size: 32)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !712, file: !12, line: 62, baseType: !13, size: 32, offset: 32)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !712, file: !12, line: 63, baseType: !67, size: 32, offset: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !712, file: !12, line: 65, baseType: !723, size: 256, offset: 128)
!723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !724, size: 256, elements: !733)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !33, line: 194, size: 64, elements: !725)
!725 = !{!726}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !724, file: !33, line: 195, baseType: !727, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !33, line: 198, size: 128, elements: !729)
!729 = !{!730, !731}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !728, file: !33, line: 199, baseType: !727, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !728, file: !33, line: 199, baseType: !732, size: 64, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!733 = !{!734}
!734 = !DISubrange(count: 4)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !712, file: !12, line: 66, baseType: !724, size: 64, offset: 384)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !712, file: !12, line: 68, baseType: !62, size: 192, offset: 448)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !712, file: !12, line: 69, baseType: !670, size: 128, align: 64, offset: 640)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !712, file: !12, line: 70, baseType: !739, offset: 768)
!739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !740, elements: !746)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !12, line: 54, size: 128, elements: !741)
!741 = !{!742, !743}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !740, file: !12, line: 55, baseType: !30, size: 32)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !740, file: !12, line: 56, baseType: !744, size: 64, offset: 64)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !12, line: 56, flags: DIFlagFwdDecl)
!746 = !{!747}
!747 = !DISubrange(count: -1)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !687, file: !250, line: 951, baseType: !11, size: 32, offset: 128)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !687, file: !250, line: 952, baseType: !349, size: 32, offset: 160)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !687, file: !250, line: 952, baseType: !349, size: 32, offset: 192)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !687, file: !250, line: 953, baseType: !30, size: 32, offset: 224)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !658, file: !250, line: 1012, baseType: !753, size: 64, offset: 896)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !755)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !756, line: 110, size: 1472, elements: !757)
!756 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!757 = !{!758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !774, !775, !776, !777, !778, !779, !909, !910, !911, !912, !913, !944, !1097, !1098, !1106}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !755, file: !756, line: 111, baseType: !290, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !755, file: !756, line: 112, baseType: !349, size: 32, offset: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !755, file: !756, line: 113, baseType: !358, size: 32, offset: 96)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !755, file: !756, line: 114, baseType: !349, size: 32, offset: 128)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !755, file: !756, line: 115, baseType: !358, size: 32, offset: 160)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !755, file: !756, line: 116, baseType: !349, size: 32, offset: 192)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !755, file: !756, line: 117, baseType: !358, size: 32, offset: 224)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !755, file: !756, line: 118, baseType: !349, size: 32, offset: 256)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !755, file: !756, line: 119, baseType: !358, size: 32, offset: 288)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !755, file: !756, line: 120, baseType: !13, size: 32, offset: 320)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !755, file: !756, line: 121, baseType: !769, size: 64, offset: 384)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !770, line: 24, baseType: !771)
!770 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !770, line: 24, size: 64, elements: !772)
!772 = !{!773}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !771, file: !770, line: 24, baseType: !416, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !755, file: !756, line: 122, baseType: !769, size: 64, offset: 448)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !755, file: !756, line: 123, baseType: !769, size: 64, offset: 512)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !755, file: !756, line: 124, baseType: !769, size: 64, offset: 576)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !755, file: !756, line: 125, baseType: !769, size: 64, offset: 640)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !755, file: !756, line: 127, baseType: !95, size: 8, offset: 704)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !755, file: !756, line: 129, baseType: !780, size: 64, offset: 768)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !782, line: 195, size: 1728, elements: !783)
!782 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!783 = !{!784, !785, !790, !802, !811, !814, !815, !822, !823, !824, !825, !828, !829, !830, !832, !833, !873, !894}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !781, file: !782, line: 196, baseType: !715, size: 32)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !781, file: !782, line: 197, baseType: !786, size: 32, offset: 32)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !782, line: 28, baseType: !787)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !33, line: 104, baseType: !788)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !92, line: 20, baseType: !789)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !94, line: 26, baseType: !30)
!790 = !DIDerivedType(tag: DW_TAG_member, scope: !781, file: !782, line: 198, baseType: !791, size: 192, offset: 64)
!791 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !781, file: !782, line: 198, size: 192, elements: !792)
!792 = !{!793, !794}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !791, file: !782, line: 199, baseType: !105, size: 128)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !791, file: !782, line: 200, baseType: !795, size: 192, align: 64)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !796, line: 5, size: 192, align: 64, elements: !797)
!796 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!797 = !{!798, !799, !801}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !795, file: !796, line: 6, baseType: !47, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !795, file: !796, line: 7, baseType: !800, size: 64, offset: 64)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !795, file: !796, line: 8, baseType: !800, size: 64, offset: 128)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !781, file: !782, line: 205, baseType: !803, size: 320, offset: 256)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !804, line: 48, size: 320, elements: !805)
!804 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!805 = !{!806, !807, !808, !809, !810}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !803, file: !804, line: 49, baseType: !290, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !803, file: !804, line: 55, baseType: !290, size: 64, offset: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !803, file: !804, line: 57, baseType: !301, size: 32, offset: 128)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !803, file: !804, line: 59, baseType: !299, size: 32, offset: 160)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !803, file: !804, line: 60, baseType: !105, size: 128, offset: 192)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !781, file: !782, line: 206, baseType: !812, size: 64, offset: 576)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !782, line: 206, flags: DIFlagFwdDecl)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !781, file: !782, line: 207, baseType: !28, size: 64, offset: 640)
!815 = !DIDerivedType(tag: DW_TAG_member, scope: !781, file: !782, line: 208, baseType: !816, size: 64, offset: 704)
!816 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !781, file: !782, line: 208, size: 64, elements: !817)
!817 = !{!818, !821}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !816, file: !782, line: 209, baseType: !819, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !820, line: 8, baseType: !297)
!820 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!821 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !816, file: !782, line: 210, baseType: !819, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !781, file: !782, line: 212, baseType: !819, size: 64, offset: 768)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !781, file: !782, line: 213, baseType: !349, size: 32, offset: 832)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !781, file: !782, line: 214, baseType: !358, size: 32, offset: 864)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !781, file: !782, line: 215, baseType: !826, size: 32, offset: 896)
!826 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !782, line: 31, baseType: !827)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !33, line: 110, baseType: !412)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !781, file: !782, line: 216, baseType: !34, size: 16, offset: 928)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !781, file: !782, line: 217, baseType: !34, size: 16, offset: 944)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !781, file: !782, line: 221, baseType: !831, size: 16, offset: 960)
!831 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !781, file: !782, line: 228, baseType: !47, size: 64, offset: 1024)
!833 = !DIDerivedType(tag: DW_TAG_member, scope: !781, file: !782, line: 245, baseType: !834, size: 320, offset: 1088)
!834 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !781, file: !782, line: 245, size: 320, elements: !835)
!835 = !{!836, !865}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !834, file: !782, line: 246, baseType: !837, size: 320)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !782, line: 114, size: 320, elements: !838)
!838 = !{!839, !840, !852, !855, !864}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !837, file: !782, line: 116, baseType: !47, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, scope: !837, file: !782, line: 117, baseType: !841, size: 64, offset: 64)
!841 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !837, file: !782, line: 117, size: 64, elements: !842)
!842 = !{!843, !851}
!843 = !DIDerivedType(tag: DW_TAG_member, scope: !841, file: !782, line: 118, baseType: !844, size: 64)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !841, file: !782, line: 118, size: 64, elements: !845)
!845 = !{!846, !847}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !844, file: !782, line: 120, baseType: !101, size: 16)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !844, file: !782, line: 121, baseType: !848, size: 48, offset: 16)
!848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !849)
!849 = !{!850}
!850 = !DISubrange(count: 6)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !841, file: !782, line: 127, baseType: !47, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !837, file: !782, line: 129, baseType: !853, size: 64, offset: 128)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !782, line: 102, flags: DIFlagFwdDecl)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !837, file: !782, line: 130, baseType: !856, size: 64, offset: 192)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !782, line: 108, size: 192, elements: !858)
!858 = !{!859, !860, !861}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !857, file: !782, line: 109, baseType: !670, size: 128, align: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !857, file: !782, line: 110, baseType: !715, size: 32, offset: 128)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !857, file: !782, line: 111, baseType: !862, size: 8, offset: 160)
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !33, line: 35, baseType: !863)
!863 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !837, file: !782, line: 131, baseType: !25, size: 64, offset: 256)
!865 = !DIDerivedType(tag: DW_TAG_member, scope: !834, file: !782, line: 247, baseType: !866, size: 320)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !834, file: !782, line: 247, size: 320, elements: !867)
!867 = !{!868, !869, !870, !871, !872}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !866, file: !782, line: 248, baseType: !47, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !866, file: !782, line: 249, baseType: !47, size: 64, offset: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !866, file: !782, line: 250, baseType: !853, size: 64, offset: 128)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !866, file: !782, line: 251, baseType: !856, size: 64, offset: 192)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !866, file: !782, line: 252, baseType: !484, size: 64, offset: 256)
!873 = !DIDerivedType(tag: DW_TAG_member, scope: !781, file: !782, line: 260, baseType: !874, size: 256, offset: 1408)
!874 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !781, file: !782, line: 260, size: 256, elements: !875)
!875 = !{!876, !882}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !874, file: !782, line: 261, baseType: !877, size: 256)
!877 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !782, line: 134, size: 256, elements: !878)
!878 = !{!879, !880}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !877, file: !782, line: 135, baseType: !28, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !877, file: !782, line: 136, baseType: !881, size: 256)
!881 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 256, elements: !733)
!882 = !DIDerivedType(tag: DW_TAG_member, scope: !874, file: !782, line: 262, baseType: !883, size: 256)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !874, file: !782, line: 262, size: 256, elements: !884)
!884 = !{!885, !886}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !883, file: !782, line: 264, baseType: !105, size: 128)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !883, file: !782, line: 265, baseType: !887, size: 128, offset: 128)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !888, line: 22, size: 128, elements: !889)
!888 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!889 = !{!890, !893}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !887, file: !888, line: 23, baseType: !891, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !888, line: 23, flags: DIFlagFwdDecl)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !887, file: !888, line: 24, baseType: !47, size: 64, offset: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !781, file: !782, line: 280, baseType: !895, size: 64, offset: 1664)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !782, line: 176, size: 192, elements: !897)
!897 = !{!898, !907, !908}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !896, file: !782, line: 177, baseType: !899, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !782, line: 171, baseType: !900)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DISubroutineType(types: !902)
!902 = !{!30, !780, !903, !905, !780}
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !854)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !877)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !896, file: !782, line: 178, baseType: !780, size: 64, offset: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !896, file: !782, line: 179, baseType: !853, size: 64, offset: 128)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !755, file: !756, line: 130, baseType: !780, size: 64, offset: 832)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !755, file: !756, line: 131, baseType: !780, size: 64, offset: 896)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !755, file: !756, line: 132, baseType: !780, size: 64, offset: 960)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !755, file: !756, line: 135, baseType: !28, size: 64, offset: 1024)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !755, file: !756, line: 137, baseType: !914, size: 64, offset: 1088)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !916, line: 14, size: 1088, elements: !917)
!916 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!917 = !{!918, !919, !928, !929, !930, !931, !932, !933}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !915, file: !916, line: 15, baseType: !715, size: 32)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !915, file: !916, line: 17, baseType: !920, size: 320, offset: 64)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !921, line: 22, size: 320, elements: !922)
!921 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!922 = !{!923, !924, !925, !926}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !920, file: !921, line: 23, baseType: !299, size: 32)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !920, file: !921, line: 24, baseType: !296, size: 64, offset: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !920, file: !921, line: 26, baseType: !105, size: 128, offset: 128)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !920, file: !921, line: 28, baseType: !927, size: 64, offset: 256)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !915, file: !916, line: 19, baseType: !47, size: 64, offset: 384)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !915, file: !916, line: 20, baseType: !290, size: 64, offset: 448)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !915, file: !916, line: 23, baseType: !728, size: 128, offset: 512)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !915, file: !916, line: 24, baseType: !349, size: 32, offset: 640)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !915, file: !916, line: 29, baseType: !290, size: 64, offset: 704)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !915, file: !916, line: 36, baseType: !934, size: 320, offset: 768)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !935, line: 15, size: 320, elements: !936)
!935 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!936 = !{!937, !938, !939, !940, !941, !942, !943}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !934, file: !935, line: 16, baseType: !299, size: 32)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !934, file: !935, line: 18, baseType: !30, size: 32, offset: 32)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !934, file: !935, line: 19, baseType: !30, size: 32, offset: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !934, file: !935, line: 20, baseType: !30, size: 32, offset: 96)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !934, file: !935, line: 21, baseType: !30, size: 32, offset: 128)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !934, file: !935, line: 22, baseType: !47, size: 64, offset: 192)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !934, file: !935, line: 23, baseType: !47, size: 64, offset: 256)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !755, file: !756, line: 138, baseType: !945, size: 64, offset: 1152)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !947, line: 68, size: 4800, elements: !948)
!947 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!948 = !{!949, !971, !972, !973, !974, !975, !976, !977, !988, !989, !990, !991, !992, !993, !1005, !1078, !1079, !1093, !1095}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !946, file: !947, line: 69, baseType: !950, size: 576)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !947, line: 23, size: 576, elements: !951)
!951 = !{!952, !953}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !950, file: !947, line: 24, baseType: !412, size: 32)
!953 = !DIDerivedType(tag: DW_TAG_member, scope: !950, file: !947, line: 25, baseType: !954, size: 512, offset: 64)
!954 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !950, file: !947, line: 25, size: 512, elements: !955)
!955 = !{!956, !965}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !954, file: !947, line: 26, baseType: !957, size: 480)
!957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !958, size: 480, elements: !963)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !947, line: 17, size: 96, elements: !959)
!959 = !{!960, !961, !962}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !958, file: !947, line: 18, baseType: !412, size: 32)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !958, file: !947, line: 19, baseType: !412, size: 32, offset: 32)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !958, file: !947, line: 20, baseType: !412, size: 32, offset: 64)
!963 = !{!964}
!964 = !DISubrange(count: 5)
!965 = !DIDerivedType(tag: DW_TAG_member, scope: !954, file: !947, line: 27, baseType: !966, size: 128)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !954, file: !947, line: 27, size: 128, elements: !967)
!967 = !{!968, !970}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !966, file: !947, line: 28, baseType: !969, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !966, file: !947, line: 29, baseType: !969, size: 64, offset: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !946, file: !947, line: 70, baseType: !950, size: 576, offset: 576)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !946, file: !947, line: 71, baseType: !950, size: 576, offset: 1152)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !946, file: !947, line: 72, baseType: !945, size: 64, offset: 1728)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !946, file: !947, line: 73, baseType: !30, size: 32, offset: 1792)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !946, file: !947, line: 74, baseType: !349, size: 32, offset: 1824)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !946, file: !947, line: 75, baseType: !358, size: 32, offset: 1856)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !946, file: !947, line: 76, baseType: !978, size: 192, offset: 1920)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !979, line: 9, size: 192, elements: !980)
!979 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!980 = !{!981, !982, !986, !987}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !978, file: !979, line: 10, baseType: !290, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !978, file: !979, line: 11, baseType: !983, size: 64, offset: 64)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !985)
!985 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !979, line: 7, flags: DIFlagFwdDecl)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !978, file: !979, line: 12, baseType: !13, size: 32, offset: 128)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !978, file: !979, line: 13, baseType: !715, size: 32, offset: 160)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !946, file: !947, line: 77, baseType: !47, size: 64, offset: 2112)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !946, file: !947, line: 80, baseType: !862, size: 8, offset: 2176)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !946, file: !947, line: 88, baseType: !105, size: 128, offset: 2240)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !946, file: !947, line: 89, baseType: !780, size: 64, offset: 2368)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !946, file: !947, line: 90, baseType: !803, size: 320, offset: 2432)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !946, file: !947, line: 97, baseType: !994, size: 256, offset: 2752)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !995, line: 98, size: 256, elements: !996)
!995 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!996 = !{!997, !998, !999}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !994, file: !995, line: 99, baseType: !290, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !994, file: !995, line: 100, baseType: !105, size: 128, offset: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !994, file: !995, line: 101, baseType: !1000, size: 64, offset: 192)
!1000 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !995, line: 21, baseType: !1001)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{null, !1004}
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !946, file: !947, line: 99, baseType: !1006, size: 768, offset: 3008)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !21, line: 199, size: 768, elements: !1007)
!1007 = !{!1008, !1013}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1006, file: !21, line: 200, baseType: !1009, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!30, !1012}
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1006, file: !21, line: 201, baseType: !1014, size: 704, offset: 64)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !21, line: 193, size: 704, elements: !1015)
!1015 = !{!1016, !1074}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1014, file: !21, line: 195, baseType: !1017, size: 640)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !21, line: 173, size: 640, elements: !1018)
!1018 = !{!1019, !1031, !1043, !1044, !1064, !1065, !1067, !1073}
!1019 = !DIDerivedType(tag: DW_TAG_member, scope: !1017, file: !21, line: 174, baseType: !1020, size: 192)
!1020 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1017, file: !21, line: 174, size: 192, elements: !1021)
!1021 = !{!1022, !1030}
!1022 = !DIDerivedType(tag: DW_TAG_member, scope: !1020, file: !21, line: 175, baseType: !1023, size: 192)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1020, file: !21, line: 175, size: 192, elements: !1024)
!1024 = !{!1025, !1026, !1027, !1028, !1029}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1023, file: !21, line: 176, baseType: !41, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1023, file: !21, line: 177, baseType: !30, size: 32, offset: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1023, file: !21, line: 178, baseType: !30, size: 32, offset: 96)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1023, file: !21, line: 179, baseType: !30, size: 32, offset: 128)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1023, file: !21, line: 180, baseType: !30, size: 32, offset: 160)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1020, file: !21, line: 182, baseType: !670, size: 128, align: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1017, file: !21, line: 184, baseType: !1032, size: 64, offset: 192)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1034, line: 26, size: 256, elements: !1035)
!1034 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1035 = !{!1036, !1037}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1033, file: !1034, line: 27, baseType: !13, size: 32)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1033, file: !1034, line: 28, baseType: !1038, size: 192, offset: 64)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1039, line: 43, size: 192, elements: !1040)
!1039 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1040 = !{!1041, !1042}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1038, file: !1039, line: 44, baseType: !299, size: 32)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1038, file: !1039, line: 45, baseType: !105, size: 128, offset: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1017, file: !21, line: 185, baseType: !41, size: 64, offset: 256)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1017, file: !21, line: 186, baseType: !1045, size: 64, offset: 320)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !21, line: 204, size: 960, elements: !1047)
!1047 = !{!1048, !1049, !1053, !1060}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1046, file: !21, line: 205, baseType: !1006, size: 768)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1046, file: !21, line: 206, baseType: !1050, size: 64, offset: 768)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!1012, !1045}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1046, file: !21, line: 207, baseType: !1054, size: 64, offset: 832)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{null, !1057, !1058, !1059}
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1046, file: !21, line: 209, baseType: !1061, size: 64, offset: 896)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!30, !1057, !41}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1017, file: !21, line: 187, baseType: !1012, size: 64, offset: 384)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1017, file: !21, line: 188, baseType: !1066, size: 64, offset: 448)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1017, file: !21, line: 189, baseType: !1068, size: 64, offset: 512)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !21, line: 157, size: 256, elements: !1070)
!1070 = !{!1071, !1072}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1069, file: !21, line: 158, baseType: !795, size: 192, align: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1069, file: !21, line: 159, baseType: !1057, size: 64, offset: 192)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1017, file: !21, line: 190, baseType: !724, size: 64, offset: 576)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1014, file: !21, line: 196, baseType: !1075, size: 64, offset: 640)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !796, line: 12, size: 64, elements: !1076)
!1076 = !{!1077}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1075, file: !796, line: 13, baseType: !800, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !946, file: !947, line: 100, baseType: !1057, size: 64, offset: 3776)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !946, file: !947, line: 102, baseType: !1080, size: 64, offset: 3840)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !947, line: 107, size: 1152, elements: !1082)
!1082 = !{!1083, !1084, !1085, !1086, !1087, !1091}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1081, file: !947, line: 108, baseType: !728, size: 128)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1081, file: !947, line: 109, baseType: !945, size: 64, offset: 128)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1081, file: !947, line: 110, baseType: !349, size: 32, offset: 192)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1081, file: !947, line: 111, baseType: !57, size: 32, offset: 224)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1081, file: !947, line: 112, baseType: !1088, size: 640, offset: 256)
!1088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 640, elements: !1089)
!1089 = !{!1090}
!1090 = !DISubrange(count: 10)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1081, file: !947, line: 113, baseType: !1092, size: 256, offset: 896)
!1092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 256, elements: !733)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !946, file: !947, line: 103, baseType: !1094, size: 640, offset: 3904)
!1094 = !DICompositeType(tag: DW_TAG_array_type, baseType: !618, size: 640, elements: !1089)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !946, file: !947, line: 104, baseType: !1096, size: 256, offset: 4544)
!1096 = !DICompositeType(tag: DW_TAG_array_type, baseType: !618, size: 256, elements: !733)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !755, file: !756, line: 139, baseType: !1080, size: 64, offset: 1216)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !755, file: !756, line: 140, baseType: !1099, size: 64, offset: 1280)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !756, line: 25, size: 64, elements: !1101)
!1101 = !{!1102, !1103, !1104}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1100, file: !756, line: 26, baseType: !57, size: 32)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1100, file: !756, line: 27, baseType: !30, size: 32, offset: 32)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1100, file: !756, line: 28, baseType: !1105, offset: 64)
!1105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !358, elements: !746)
!1106 = !DIDerivedType(tag: DW_TAG_member, scope: !755, file: !756, line: 142, baseType: !1107, size: 128, offset: 1344)
!1107 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !755, file: !756, line: 142, size: 128, elements: !1108)
!1108 = !{!1109, !1110}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1107, file: !756, line: 143, baseType: !30, size: 32)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1107, file: !756, line: 144, baseType: !670, size: 128, align: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !658, file: !250, line: 1013, baseType: !1112, size: 256, offset: 960)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !250, line: 970, size: 256, elements: !1113)
!1113 = !{!1114, !1115, !1116, !1117, !1118, !1119}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1112, file: !250, line: 971, baseType: !47, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1112, file: !250, line: 972, baseType: !13, size: 32, offset: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1112, file: !250, line: 973, baseType: !13, size: 32, offset: 96)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1112, file: !250, line: 974, baseType: !13, size: 32, offset: 128)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1112, file: !250, line: 975, baseType: !13, size: 32, offset: 160)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1112, file: !250, line: 976, baseType: !49, size: 64, offset: 192)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !658, file: !250, line: 1014, baseType: !1121, size: 128, offset: 1216)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1122, line: 8, size: 128, elements: !1123)
!1122 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1123 = !{!1124, !1125}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1121, file: !1122, line: 9, baseType: !489, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1121, file: !1122, line: 10, baseType: !378, size: 64, offset: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !658, file: !250, line: 1015, baseType: !343, size: 64, offset: 1344)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !658, file: !250, line: 1016, baseType: !1128, size: 64, offset: 1408)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1130)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !250, line: 1914, size: 2112, elements: !1131)
!1131 = !{!1132, !1133, !1137, !1141, !1145, !1318, !1319, !1334, !1347, !1355, !1359, !1360, !1678, !1679, !1683, !1688, !1689, !1693, !1697, !1703, !1704, !1708, !1709, !1716, !1720, !1724, !1730, !1734, !1776, !1780, !1784, !1785, !1791}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1130, file: !250, line: 1915, baseType: !530, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1130, file: !250, line: 1916, baseType: !1134, size: 64, offset: 64)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!49, !657, !49, !30}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1130, file: !250, line: 1917, baseType: !1138, size: 64, offset: 128)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{!615, !657, !484, !43, !48}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1130, file: !250, line: 1918, baseType: !1142, size: 64, offset: 192)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{!615, !657, !25, !43, !48}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1130, file: !250, line: 1919, baseType: !1146, size: 64, offset: 256)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!615, !1149, !1254}
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !250, line: 373, size: 384, elements: !1151)
!1151 = !{!1152, !1153, !1154, !1158, !1159, !1160, !1161}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1150, file: !250, line: 374, baseType: !657, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1150, file: !250, line: 375, baseType: !49, size: 64, offset: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1150, file: !250, line: 376, baseType: !1155, size: 64, offset: 128)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{null, !1149, !618}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1150, file: !250, line: 377, baseType: !28, size: 64, offset: 192)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1150, file: !250, line: 378, baseType: !30, size: 32, offset: 256)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1150, file: !250, line: 379, baseType: !101, size: 16, offset: 288)
!1161 = !DIDerivedType(tag: DW_TAG_member, scope: !1150, file: !250, line: 380, baseType: !1162, size: 64, offset: 320)
!1162 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1150, file: !250, line: 380, size: 64, elements: !1163)
!1163 = !{!1164, !1250}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1162, file: !250, line: 386, baseType: !1165, size: 64)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !1167, line: 998, size: 448, elements: !1168)
!1167 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!1168 = !{!1169, !1236, !1237}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !1166, file: !1167, line: 999, baseType: !1170, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !131, line: 293, size: 1536, elements: !1172)
!1172 = !{!1173, !1203, !1217}
!1173 = !DIDerivedType(tag: DW_TAG_member, scope: !1171, file: !131, line: 295, baseType: !1174, size: 512)
!1174 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1171, file: !131, line: 295, size: 512, elements: !1175)
!1175 = !{!1176, !1202}
!1176 = !DIDerivedType(tag: DW_TAG_member, scope: !1174, file: !131, line: 296, baseType: !1177, size: 448)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1174, file: !131, line: 296, size: 448, elements: !1178)
!1178 = !{!1179, !1180, !1189, !1190, !1191, !1200, !1201}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1177, file: !131, line: 298, baseType: !47, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, scope: !1177, file: !131, line: 299, baseType: !1181, size: 128, offset: 64)
!1181 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1177, file: !131, line: 299, size: 128, elements: !1182)
!1182 = !{!1183, !1184}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1181, file: !131, line: 300, baseType: !105, size: 128)
!1184 = !DIDerivedType(tag: DW_TAG_member, scope: !1181, file: !131, line: 302, baseType: !1185, size: 128)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1181, file: !131, line: 302, size: 128, elements: !1186)
!1186 = !{!1187, !1188}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1185, file: !131, line: 303, baseType: !28, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1185, file: !131, line: 305, baseType: !13, size: 32, offset: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1177, file: !131, line: 310, baseType: !339, size: 64, offset: 192)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1177, file: !131, line: 311, baseType: !47, size: 64, offset: 256)
!1191 = !DIDerivedType(tag: DW_TAG_member, scope: !1177, file: !131, line: 312, baseType: !1192, size: 64, offset: 320)
!1192 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1177, file: !131, line: 312, size: 64, elements: !1193)
!1193 = !{!1194, !1195}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1192, file: !131, line: 313, baseType: !28, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1192, file: !131, line: 314, baseType: !1196, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !131, line: 257, baseType: !1197)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !131, line: 255, size: 64, elements: !1198)
!1198 = !{!1199}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1197, file: !131, line: 256, baseType: !47, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1177, file: !131, line: 316, baseType: !57, size: 32, offset: 384)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1177, file: !131, line: 317, baseType: !57, size: 32, offset: 416)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1174, file: !131, line: 323, baseType: !318, size: 512, align: 128)
!1203 = !DIDerivedType(tag: DW_TAG_member, scope: !1171, file: !131, line: 325, baseType: !1204, size: 512, offset: 512)
!1204 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1171, file: !131, line: 325, size: 512, elements: !1205)
!1205 = !{!1206, !1216}
!1206 = !DIDerivedType(tag: DW_TAG_member, scope: !1204, file: !131, line: 326, baseType: !1207, size: 320)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1204, file: !131, line: 326, size: 320, elements: !1208)
!1208 = !{!1209, !1210, !1211, !1212, !1213, !1214, !1215}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1207, file: !131, line: 327, baseType: !47, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1207, file: !131, line: 328, baseType: !47, size: 64, offset: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1207, file: !131, line: 329, baseType: !47, size: 64, offset: 128)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1207, file: !131, line: 331, baseType: !57, size: 32, offset: 192)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1207, file: !131, line: 332, baseType: !57, size: 32, offset: 224)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1207, file: !131, line: 333, baseType: !57, size: 32, offset: 256)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1207, file: !131, line: 335, baseType: !13, size: 32, offset: 288)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1204, file: !131, line: 339, baseType: !318, size: 512, align: 128)
!1217 = !DIDerivedType(tag: DW_TAG_member, scope: !1171, file: !131, line: 341, baseType: !1218, size: 512, offset: 1024)
!1218 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1171, file: !131, line: 341, size: 512, elements: !1219)
!1219 = !{!1220, !1229, !1235}
!1220 = !DIDerivedType(tag: DW_TAG_member, scope: !1218, file: !131, line: 342, baseType: !1221, size: 384)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1218, file: !131, line: 342, size: 384, elements: !1222)
!1222 = !{!1223, !1224, !1225, !1226, !1227, !1228}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1221, file: !131, line: 343, baseType: !47, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1221, file: !131, line: 344, baseType: !47, size: 64, offset: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1221, file: !131, line: 346, baseType: !28, size: 64, offset: 128)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1221, file: !131, line: 347, baseType: !28, size: 64, offset: 192)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1221, file: !131, line: 348, baseType: !28, size: 64, offset: 256)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1221, file: !131, line: 349, baseType: !28, size: 64, offset: 320)
!1229 = !DIDerivedType(tag: DW_TAG_member, scope: !1218, file: !131, line: 352, baseType: !1230, size: 256)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1218, file: !131, line: 352, size: 256, elements: !1231)
!1231 = !{!1232, !1233, !1234}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1230, file: !131, line: 353, baseType: !47, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1230, file: !131, line: 354, baseType: !47, size: 64, offset: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1230, file: !131, line: 356, baseType: !105, size: 128, offset: 128)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1218, file: !131, line: 359, baseType: !318, size: 512, align: 128)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !1166, file: !1167, line: 1000, baseType: !30, size: 32, offset: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1166, file: !1167, line: 1001, baseType: !1238, size: 320, offset: 128)
!1238 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !63, line: 14, baseType: !1239)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !63, line: 30, size: 320, elements: !1240)
!1240 = !{!1241, !1242, !1243, !1249}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1239, file: !63, line: 31, baseType: !13, size: 32)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1239, file: !63, line: 32, baseType: !28, size: 64, offset: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1239, file: !63, line: 33, baseType: !1244, size: 64, offset: 128)
!1244 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !63, line: 16, baseType: !1245)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!30, !1248, !13, !30, !28}
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1239, file: !63, line: 34, baseType: !105, size: 128, offset: 192)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1162, file: !250, line: 395, baseType: !1251, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!615, !28}
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1256, line: 41, size: 320, elements: !1257)
!1256 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!1257 = !{!1258, !1259, !1260, !1261, !1262, !1263, !1268, !1313}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !1255, file: !1256, line: 42, baseType: !91, size: 8)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !1255, file: !1256, line: 43, baseType: !862, size: 8, offset: 8)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !1255, file: !1256, line: 44, baseType: !862, size: 8, offset: 16)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !1255, file: !1256, line: 45, baseType: !862, size: 8, offset: 24)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !1255, file: !1256, line: 46, baseType: !862, size: 8, offset: 32)
!1263 = !DIDerivedType(tag: DW_TAG_member, scope: !1255, file: !1256, line: 47, baseType: !1264, size: 64, offset: 64)
!1264 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1255, file: !1256, line: 47, size: 64, elements: !1265)
!1265 = !{!1266, !1267}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !1264, file: !1256, line: 48, baseType: !43, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !1264, file: !1256, line: 49, baseType: !30, size: 32)
!1268 = !DIDerivedType(tag: DW_TAG_member, scope: !1255, file: !1256, line: 61, baseType: !1269, size: 128, offset: 128)
!1269 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1255, file: !1256, line: 61, size: 128, elements: !1270)
!1270 = !{!1271, !1277}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !1269, file: !1256, line: 67, baseType: !1272, size: 128)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1273, line: 17, size: 128, elements: !1274)
!1273 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!1274 = !{!1275, !1276}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1272, file: !1273, line: 19, baseType: !28, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1272, file: !1273, line: 20, baseType: !44, size: 64, offset: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, scope: !1269, file: !1256, line: 68, baseType: !1278, size: 128)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1269, file: !1256, line: 68, size: 128, elements: !1279)
!1279 = !{!1280, !1312}
!1280 = !DIDerivedType(tag: DW_TAG_member, scope: !1278, file: !1256, line: 69, baseType: !1281, size: 64)
!1281 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1278, file: !1256, line: 69, size: 64, elements: !1282)
!1282 = !{!1283, !1286, !1293, !1302, !1311}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !1281, file: !1256, line: 71, baseType: !1284, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1272)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !1281, file: !1256, line: 72, baseType: !1287, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1289)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !1256, line: 17, size: 128, elements: !1290)
!1290 = !{!1291, !1292}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1289, file: !1256, line: 18, baseType: !28, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1289, file: !1256, line: 19, baseType: !43, size: 64, offset: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !1281, file: !1256, line: 73, baseType: !1294, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1296)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1297, line: 31, size: 128, elements: !1298)
!1297 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b9bd326f7e1a9ed4bc3baca0011068cc")
!1298 = !{!1299, !1300, !1301}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !1296, file: !1297, line: 32, baseType: !317, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !1296, file: !1297, line: 33, baseType: !13, size: 32, offset: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !1296, file: !1297, line: 34, baseType: !13, size: 32, offset: 96)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !1281, file: !1256, line: 74, baseType: !1303, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1305, line: 296, size: 128, elements: !1306)
!1305 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1306 = !{!1307, !1308, !1310}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1304, file: !1305, line: 297, baseType: !67, size: 32)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1304, file: !1305, line: 299, baseType: !1309, size: 32, offset: 32)
!1309 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !33, line: 154, baseType: !13)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1304, file: !1305, line: 300, baseType: !28, size: 64, offset: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !1281, file: !1256, line: 75, baseType: !28, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1278, file: !1256, line: 77, baseType: !43, size: 64, offset: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, scope: !1255, file: !1256, line: 80, baseType: !1314, size: 64, offset: 256)
!1314 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1255, file: !1256, line: 80, size: 64, elements: !1315)
!1315 = !{!1316, !1317}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !1314, file: !1256, line: 81, baseType: !47, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !1314, file: !1256, line: 82, baseType: !49, size: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1130, file: !250, line: 1920, baseType: !1146, size: 64, offset: 320)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1130, file: !250, line: 1921, baseType: !1320, size: 64, offset: 384)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DISubroutineType(types: !1322)
!1322 = !{!30, !1149, !1323, !13}
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !159, line: 1559, size: 192, elements: !1325)
!1325 = !{!1326, !1329, !1330}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "req_list", scope: !1324, file: !159, line: 1560, baseType: !1327, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DICompositeType(tag: DW_TAG_structure_type, name: "request", file: !159, line: 32, flags: DIFlagFwdDecl)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "need_ts", scope: !1324, file: !159, line: 1561, baseType: !862, size: 8, offset: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1324, file: !159, line: 1562, baseType: !1331, size: 64, offset: 128)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{null, !1323}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1130, file: !250, line: 1923, baseType: !1335, size: 64, offset: 448)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = !DISubroutineType(types: !1337)
!1337 = !{!30, !657, !1338}
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !250, line: 1858, size: 128, elements: !1340)
!1340 = !{!1341, !1346}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1339, file: !250, line: 1859, baseType: !1342, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !250, line: 1855, baseType: !1343)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{!862, !1338, !25, !30, !49, !416, !13}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1339, file: !250, line: 1860, baseType: !49, size: 64, offset: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1130, file: !250, line: 1924, baseType: !1348, size: 64, offset: 512)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{!1351, !657, !1353}
!1351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1352, line: 59, baseType: !13)
!1352 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !250, line: 61, flags: DIFlagFwdDecl)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1130, file: !250, line: 1925, baseType: !1356, size: 64, offset: 576)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{!618, !657, !13, !47}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1130, file: !250, line: 1926, baseType: !1356, size: 64, offset: 640)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1130, file: !250, line: 1927, baseType: !1361, size: 64, offset: 704)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DISubroutineType(types: !1363)
!1363 = !{!30, !657, !1364}
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !131, line: 625, size: 1344, elements: !1366)
!1366 = !{!1367, !1376, !1534, !1540, !1547, !1548, !1553, !1554, !1559, !1560, !1563, !1671, !1672, !1673, !1674, !1675, !1676}
!1367 = !DIDerivedType(tag: DW_TAG_member, scope: !1365, file: !131, line: 628, baseType: !1368, size: 128)
!1368 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1365, file: !131, line: 628, size: 128, elements: !1369)
!1369 = !{!1370, !1375}
!1370 = !DIDerivedType(tag: DW_TAG_member, scope: !1368, file: !131, line: 629, baseType: !1371, size: 128)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1368, file: !131, line: 629, size: 128, elements: !1372)
!1372 = !{!1373, !1374}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1371, file: !131, line: 631, baseType: !47, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1371, file: !131, line: 632, baseType: !47, size: 64, offset: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1368, file: !131, line: 635, baseType: !670, size: 128, align: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1365, file: !131, line: 639, baseType: !1377, size: 64, offset: 128)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !131, line: 733, size: 10240, elements: !1379)
!1379 = !{!1380, !1532}
!1380 = !DIDerivedType(tag: DW_TAG_member, scope: !1378, file: !131, line: 734, baseType: !1381, size: 10240)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1378, file: !131, line: 734, size: 10240, elements: !1382)
!1382 = !{!1383, !1387, !1401, !1405, !1406, !1407, !1408, !1409, !1410, !1419, !1420, !1421, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1460, !1462, !1465, !1512, !1513, !1514, !1517, !1518, !1519, !1522, !1523, !1524, !1530, !1531}
!1383 = !DIDerivedType(tag: DW_TAG_member, scope: !1381, file: !131, line: 739, baseType: !1384, size: 512, align: 512)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1381, file: !131, line: 739, size: 512, align: 512, elements: !1385)
!1385 = !{!1386}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1384, file: !131, line: 747, baseType: !57, size: 32)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1381, file: !131, line: 750, baseType: !1388, size: 128, offset: 512)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1389, line: 218, size: 128, elements: !1390)
!1389 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1390 = !{!1391, !1399, !1400}
!1391 = !DIDerivedType(tag: DW_TAG_member, scope: !1388, file: !1389, line: 219, baseType: !1392, size: 32)
!1392 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1388, file: !1389, line: 219, size: 32, elements: !1393)
!1393 = !{!1394, !1395}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1392, file: !1389, line: 220, baseType: !67, size: 32)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1392, file: !1389, line: 221, baseType: !1396)
!1396 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1389, line: 197, baseType: !1397)
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1389, line: 197, elements: !1398)
!1398 = !{}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1388, file: !1389, line: 223, baseType: !13, size: 32, offset: 32)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1388, file: !1389, line: 224, baseType: !28, size: 64, offset: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1381, file: !131, line: 752, baseType: !1402, size: 64, offset: 640)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{!47, !657, !47, !47, !47, !47}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1381, file: !131, line: 756, baseType: !47, size: 64, offset: 704)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1381, file: !131, line: 757, baseType: !47, size: 64, offset: 768)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1381, file: !131, line: 760, baseType: !47, size: 64, offset: 832)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1381, file: !131, line: 761, baseType: !47, size: 64, offset: 896)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1381, file: !131, line: 763, baseType: !47, size: 64, offset: 960)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1381, file: !131, line: 764, baseType: !1411, size: 64, offset: 1024)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1413, line: 299, baseType: !1414)
!1413 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1413, line: 299, size: 64, elements: !1415)
!1415 = !{!1416}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1414, file: !1413, line: 299, baseType: !1417, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1418, line: 18, baseType: !47)
!1418 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1381, file: !131, line: 773, baseType: !57, size: 32, offset: 1088)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1381, file: !131, line: 785, baseType: !57, size: 32, offset: 1120)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1381, file: !131, line: 795, baseType: !1422, size: 64, offset: 1152)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !131, line: 726, size: 128, elements: !1424)
!1424 = !{!1425, !1426}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1423, file: !131, line: 727, baseType: !416, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1423, file: !131, line: 728, baseType: !30, size: 32, offset: 64)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1381, file: !131, line: 801, baseType: !47, size: 64, offset: 1216)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1381, file: !131, line: 804, baseType: !290, size: 64, offset: 1280)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1381, file: !131, line: 806, baseType: !30, size: 32, offset: 1344)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1381, file: !131, line: 808, baseType: !67, size: 32, offset: 1376)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1381, file: !131, line: 823, baseType: !803, size: 320, offset: 1408)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1381, file: !131, line: 825, baseType: !105, size: 128, offset: 1728)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1381, file: !131, line: 845, baseType: !30, size: 32, offset: 1856)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1381, file: !131, line: 849, baseType: !47, size: 64, offset: 1920)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1381, file: !131, line: 850, baseType: !47, size: 64, offset: 1984)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1381, file: !131, line: 852, baseType: !47, size: 64, offset: 2048)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1381, file: !131, line: 853, baseType: !47, size: 64, offset: 2112)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1381, file: !131, line: 854, baseType: !292, size: 64, offset: 2176)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1381, file: !131, line: 855, baseType: !47, size: 64, offset: 2240)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1381, file: !131, line: 856, baseType: !47, size: 64, offset: 2304)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1381, file: !131, line: 857, baseType: !47, size: 64, offset: 2368)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1381, file: !131, line: 858, baseType: !47, size: 64, offset: 2432)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1381, file: !131, line: 865, baseType: !389, size: 32, offset: 2496)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1381, file: !131, line: 867, baseType: !67, size: 32, offset: 2528)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1381, file: !131, line: 869, baseType: !47, size: 64, offset: 2560)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1381, file: !131, line: 869, baseType: !47, size: 64, offset: 2624)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1381, file: !131, line: 869, baseType: !47, size: 64, offset: 2688)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1381, file: !131, line: 869, baseType: !47, size: 64, offset: 2752)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1381, file: !131, line: 870, baseType: !47, size: 64, offset: 2816)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1381, file: !131, line: 870, baseType: !47, size: 64, offset: 2880)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1381, file: !131, line: 870, baseType: !47, size: 64, offset: 2944)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1381, file: !131, line: 871, baseType: !47, size: 64, offset: 3008)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1381, file: !131, line: 871, baseType: !47, size: 64, offset: 3072)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1381, file: !131, line: 871, baseType: !47, size: 64, offset: 3136)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1381, file: !131, line: 871, baseType: !47, size: 64, offset: 3200)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1381, file: !131, line: 873, baseType: !1457, size: 3328, offset: 3264)
!1457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 3328, elements: !1458)
!1458 = !{!1459}
!1459 = !DISubrange(count: 52)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1381, file: !131, line: 875, baseType: !1461, size: 1280, offset: 6592)
!1461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !920, size: 1280, elements: !733)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1381, file: !131, line: 877, baseType: !1463, size: 64, offset: 7872)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !131, line: 877, flags: DIFlagFwdDecl)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1381, file: !131, line: 880, baseType: !1466, size: 1088, offset: 7936)
!1466 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1467, line: 72, baseType: !1468)
!1467 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1467, line: 23, size: 1088, elements: !1469)
!1469 = !{!1470, !1471, !1472, !1473, !1474, !1477, !1478, !1479, !1480, !1507, !1508, !1509}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1468, file: !1467, line: 28, baseType: !416, size: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1468, file: !1467, line: 38, baseType: !292, size: 64, offset: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1468, file: !1467, line: 40, baseType: !47, size: 64, offset: 128)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1468, file: !1467, line: 43, baseType: !803, size: 320, offset: 192)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1468, file: !1467, line: 44, baseType: !1475, size: 64, offset: 512)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1467, line: 44, flags: DIFlagFwdDecl)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1468, file: !1467, line: 48, baseType: !47, size: 64, offset: 576)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1468, file: !1467, line: 59, baseType: !286, size: 256, offset: 640)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1468, file: !1467, line: 60, baseType: !28, size: 64, offset: 896)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1468, file: !1467, line: 61, baseType: !1481, size: 64, offset: 960)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1483)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1484, line: 13, size: 1216, elements: !1485)
!1484 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1485 = !{!1486, !1487, !1488, !1489, !1490, !1491, !1492, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1483, file: !1484, line: 14, baseType: !28, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1483, file: !1484, line: 15, baseType: !47, size: 64, offset: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1483, file: !1484, line: 17, baseType: !47, size: 64, offset: 128)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1483, file: !1484, line: 17, baseType: !47, size: 64, offset: 192)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1483, file: !1484, line: 18, baseType: !47, size: 64, offset: 256)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1483, file: !1484, line: 18, baseType: !47, size: 64, offset: 320)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1483, file: !1484, line: 19, baseType: !1493, size: 64, offset: 384)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1483, file: !1484, line: 21, baseType: !618, size: 64, offset: 448)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1483, file: !1484, line: 23, baseType: !618, size: 64, offset: 512)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1483, file: !1484, line: 24, baseType: !618, size: 64, offset: 576)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1483, file: !1484, line: 25, baseType: !618, size: 64, offset: 640)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1483, file: !1484, line: 26, baseType: !618, size: 64, offset: 704)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1483, file: !1484, line: 27, baseType: !618, size: 64, offset: 768)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1483, file: !1484, line: 28, baseType: !618, size: 64, offset: 832)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1483, file: !1484, line: 29, baseType: !618, size: 64, offset: 896)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1483, file: !1484, line: 30, baseType: !618, size: 64, offset: 960)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1483, file: !1484, line: 31, baseType: !618, size: 64, offset: 1024)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1483, file: !1484, line: 32, baseType: !618, size: 64, offset: 1088)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1483, file: !1484, line: 33, baseType: !618, size: 64, offset: 1152)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1468, file: !1467, line: 63, baseType: !57, size: 32, offset: 1024)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1468, file: !1467, line: 69, baseType: !101, size: 16, offset: 1056)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1468, file: !1467, line: 70, baseType: !1510, size: 16, offset: 1072)
!1510 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !92, line: 18, baseType: !1511)
!1511 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !94, line: 23, baseType: !831)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1381, file: !131, line: 882, baseType: !47, size: 64, offset: 9024)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1381, file: !131, line: 885, baseType: !67, size: 32, offset: 9088)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1381, file: !131, line: 886, baseType: !1515, size: 64, offset: 9152)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !131, line: 732, flags: DIFlagFwdDecl)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1381, file: !131, line: 901, baseType: !945, size: 64, offset: 9216)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1381, file: !131, line: 904, baseType: !657, size: 64, offset: 9280)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1381, file: !131, line: 906, baseType: !1520, size: 64, offset: 9344)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !131, line: 906, flags: DIFlagFwdDecl)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1381, file: !131, line: 930, baseType: !57, size: 32, offset: 9408)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1381, file: !131, line: 933, baseType: !57, size: 32, offset: 9440)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1381, file: !131, line: 935, baseType: !1525, size: 64, offset: 9472)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !267, line: 103, size: 64, elements: !1526)
!1526 = !{!1527}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1525, file: !267, line: 104, baseType: !1528, size: 64)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !267, line: 101, flags: DIFlagFwdDecl)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1381, file: !131, line: 940, baseType: !290, size: 64, offset: 9536)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1381, file: !131, line: 942, baseType: !994, size: 256, offset: 9600)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1378, file: !131, line: 986, baseType: !1533, offset: 10240)
!1533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, elements: !746)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1365, file: !131, line: 640, baseType: !1535, size: 64, offset: 192)
!1535 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1413, line: 297, baseType: !1536)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1413, line: 297, size: 64, elements: !1537)
!1537 = !{!1538}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1536, file: !1413, line: 297, baseType: !1539, size: 64)
!1539 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1418, line: 19, baseType: !47)
!1540 = !DIDerivedType(tag: DW_TAG_member, scope: !1365, file: !131, line: 646, baseType: !1541, size: 64, offset: 256)
!1541 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1365, file: !131, line: 646, size: 64, elements: !1542)
!1542 = !{!1543, !1546}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1541, file: !131, line: 647, baseType: !1544, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1545)
!1545 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !131, line: 542, baseType: !47)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1541, file: !131, line: 648, baseType: !1545, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1365, file: !131, line: 666, baseType: !30, size: 32, offset: 320)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1365, file: !131, line: 667, baseType: !1549, size: 64, offset: 384)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !131, line: 579, size: 320, elements: !1551)
!1551 = !{!1552}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1550, file: !131, line: 580, baseType: !803, size: 320)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1365, file: !131, line: 670, baseType: !862, size: 8, offset: 448)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1365, file: !131, line: 681, baseType: !1555, size: 256, offset: 512)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1365, file: !131, line: 678, size: 256, elements: !1556)
!1556 = !{!1557, !1558}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1555, file: !131, line: 679, baseType: !795, size: 192, align: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1555, file: !131, line: 680, baseType: !47, size: 64, offset: 192)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1365, file: !131, line: 689, baseType: !105, size: 128, offset: 768)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1365, file: !131, line: 691, baseType: !1561, size: 64, offset: 896)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !131, line: 691, flags: DIFlagFwdDecl)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1365, file: !131, line: 694, baseType: !1564, size: 64, offset: 960)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1566)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1567, line: 563, size: 1024, elements: !1568)
!1567 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1568 = !{!1569, !1573, !1574, !1578, !1582, !1586, !1635, !1639, !1643, !1647, !1648, !1649, !1653, !1657, !1663, !1667}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1566, file: !1567, line: 564, baseType: !1570, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DISubroutineType(types: !1572)
!1572 = !{null, !1364}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1566, file: !1567, line: 569, baseType: !1570, size: 64, offset: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1566, file: !1567, line: 571, baseType: !1575, size: 64, offset: 128)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DISubroutineType(types: !1577)
!1577 = !{!30, !1364, !47}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1566, file: !1567, line: 572, baseType: !1579, size: 64, offset: 192)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{!30, !1364}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1566, file: !1567, line: 578, baseType: !1583, size: 64, offset: 256)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{!30, !1364, !47, !47, !47}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1566, file: !1567, line: 580, baseType: !1587, size: 64, offset: 320)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DISubroutineType(types: !1589)
!1589 = !{!1590, !1591}
!1590 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !131, line: 1184, baseType: !13)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1567, line: 512, size: 896, elements: !1593)
!1593 = !{!1594, !1602, !1603, !1610, !1617, !1627, !1628, !1629, !1631, !1633}
!1594 = !DIDerivedType(tag: DW_TAG_member, scope: !1592, file: !1567, line: 513, baseType: !1595, size: 320)
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1592, file: !1567, line: 513, size: 320, elements: !1596)
!1596 = !{!1597, !1598, !1599, !1600, !1601}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1595, file: !1567, line: 514, baseType: !1364, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1595, file: !1567, line: 515, baseType: !1309, size: 32, offset: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1595, file: !1567, line: 516, baseType: !47, size: 64, offset: 128)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1595, file: !1567, line: 517, baseType: !47, size: 64, offset: 192)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1595, file: !1567, line: 518, baseType: !47, size: 64, offset: 256)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1592, file: !1567, line: 520, baseType: !130, size: 32, offset: 320)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1592, file: !1567, line: 522, baseType: !1604, size: 64, offset: 384)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1418, line: 22, baseType: !1606)
!1606 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1418, line: 22, size: 64, elements: !1607)
!1607 = !{!1608}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1606, file: !1418, line: 22, baseType: !1609, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1418, line: 15, baseType: !47)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1592, file: !1567, line: 524, baseType: !1611, size: 64, offset: 448)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1413, line: 372, baseType: !1613)
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1413, line: 372, size: 64, elements: !1614)
!1614 = !{!1615}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1613, file: !1413, line: 372, baseType: !1616, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1418, line: 16, baseType: !47)
!1617 = !DIDerivedType(tag: DW_TAG_member, scope: !1592, file: !1567, line: 527, baseType: !1618, size: 64, offset: 512)
!1618 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1592, file: !1567, line: 527, size: 64, elements: !1619)
!1619 = !{!1620, !1626}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1618, file: !1567, line: 528, baseType: !1621, size: 64)
!1621 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1418, line: 21, baseType: !1622)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1418, line: 21, size: 64, elements: !1623)
!1623 = !{!1624}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1622, file: !1418, line: 21, baseType: !1625, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1418, line: 14, baseType: !47)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1618, file: !1567, line: 529, baseType: !1605, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1592, file: !1567, line: 534, baseType: !317, size: 64, offset: 576)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1592, file: !1567, line: 535, baseType: !317, size: 64, offset: 640)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1592, file: !1567, line: 541, baseType: !1630, size: 64, offset: 704)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1592, file: !1567, line: 545, baseType: !1632, size: 64, offset: 768)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1592, file: !1567, line: 549, baseType: !1634, size: 64, offset: 832)
!1634 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1413, line: 520, baseType: !317)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1566, file: !1567, line: 581, baseType: !1636, size: 64, offset: 384)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{!1590, !1591, !13}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1566, file: !1567, line: 582, baseType: !1640, size: 64, offset: 448)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{!1590, !1591, !47, !47}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1566, file: !1567, line: 584, baseType: !1644, size: 64, offset: 512)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DISubroutineType(types: !1646)
!1646 = !{!47, !1364}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1566, file: !1567, line: 588, baseType: !1587, size: 64, offset: 576)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1566, file: !1567, line: 591, baseType: !1587, size: 64, offset: 640)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1566, file: !1567, line: 597, baseType: !1650, size: 64, offset: 704)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{!30, !1364, !47, !28, !30, !30}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1566, file: !1567, line: 603, baseType: !1654, size: 64, offset: 768)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{!25, !1364}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1566, file: !1567, line: 613, baseType: !1658, size: 64, offset: 832)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{!30, !1364, !1661}
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !131, line: 717, flags: DIFlagFwdDecl)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1566, file: !1567, line: 625, baseType: !1664, size: 64, offset: 896)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!1661, !1364, !47}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1566, file: !1567, line: 633, baseType: !1668, size: 64, offset: 960)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DISubroutineType(types: !1670)
!1670 = !{!317, !1364, !47}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1365, file: !131, line: 697, baseType: !47, size: 64, offset: 1024)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1365, file: !131, line: 699, baseType: !657, size: 64, offset: 1088)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1365, file: !131, line: 700, baseType: !28, size: 64, offset: 1152)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1365, file: !131, line: 711, baseType: !290, size: 64, offset: 1216)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1365, file: !131, line: 717, baseType: !1661, size: 64, offset: 1280)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1365, file: !131, line: 722, baseType: !1677, offset: 1344)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !131, line: 570, elements: !1398)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1130, file: !250, line: 1928, baseType: !47, size: 64, offset: 768)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1130, file: !250, line: 1929, baseType: !1680, size: 64, offset: 832)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{!30, !343, !657}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1130, file: !250, line: 1930, baseType: !1684, size: 64, offset: 896)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DISubroutineType(types: !1686)
!1686 = !{!30, !657, !1687}
!1687 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !250, line: 1061, baseType: !28)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1130, file: !250, line: 1931, baseType: !1680, size: 64, offset: 960)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1130, file: !250, line: 1932, baseType: !1690, size: 64, offset: 1024)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{!30, !657, !49, !49, !30}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1130, file: !250, line: 1933, baseType: !1694, size: 64, offset: 1088)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{!30, !30, !657, !30}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1130, file: !250, line: 1934, baseType: !1698, size: 64, offset: 1152)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!30, !657, !30, !1701}
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !250, line: 1063, flags: DIFlagFwdDecl)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1130, file: !250, line: 1935, baseType: !1402, size: 64, offset: 1216)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1130, file: !250, line: 1936, baseType: !1705, size: 64, offset: 1280)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{!30, !30}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1130, file: !250, line: 1937, baseType: !1698, size: 64, offset: 1344)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1130, file: !250, line: 1938, baseType: !1710, size: 64, offset: 1408)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!615, !1713, !657, !48, !43, !13}
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1715, line: 59, flags: DIFlagFwdDecl)
!1715 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1130, file: !250, line: 1939, baseType: !1717, size: 64, offset: 1472)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{!615, !657, !48, !1713, !43, !13}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1130, file: !250, line: 1940, baseType: !1721, size: 64, offset: 1536)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{null, !657}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1130, file: !250, line: 1941, baseType: !1725, size: 64, offset: 1600)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{!30, !657, !30, !1728, !1729}
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1130, file: !250, line: 1942, baseType: !1731, size: 64, offset: 1664)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{!618, !657, !30, !49, !49}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1130, file: !250, line: 1944, baseType: !1735, size: 64, offset: 1728)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{null, !1738, !657}
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1740, line: 17, size: 960, elements: !1741)
!1740 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1741 = !{!1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1771, !1772, !1775}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1739, file: !1740, line: 18, baseType: !484, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1739, file: !1740, line: 19, baseType: !43, size: 64, offset: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1739, file: !1740, line: 20, baseType: !43, size: 64, offset: 128)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1739, file: !1740, line: 21, baseType: !43, size: 64, offset: 192)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1739, file: !1740, line: 22, baseType: !43, size: 64, offset: 256)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1739, file: !1740, line: 23, baseType: !49, size: 64, offset: 320)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1739, file: !1740, line: 24, baseType: !49, size: 64, offset: 384)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1739, file: !1740, line: 25, baseType: !286, size: 256, offset: 448)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1739, file: !1740, line: 26, baseType: !1751, size: 64, offset: 704)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1753)
!1753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1740, line: 32, size: 256, elements: !1754)
!1754 = !{!1755, !1759, !1763, !1767}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1753, file: !1740, line: 33, baseType: !1756, size: 64)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{!28, !1738, !48}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1753, file: !1740, line: 34, baseType: !1760, size: 64, offset: 64)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = !DISubroutineType(types: !1762)
!1762 = !{null, !1738, !28}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1753, file: !1740, line: 35, baseType: !1764, size: 64, offset: 128)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = !DISubroutineType(types: !1766)
!1766 = !{!28, !1738, !28, !48}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1753, file: !1740, line: 36, baseType: !1768, size: 64, offset: 192)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DISubroutineType(types: !1770)
!1770 = !{!30, !1738, !28}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1739, file: !1740, line: 27, baseType: !30, size: 32, offset: 768)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1739, file: !1740, line: 28, baseType: !1773, size: 64, offset: 832)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !658)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1739, file: !1740, line: 29, baseType: !28, size: 64, offset: 896)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1130, file: !250, line: 1948, baseType: !1777, size: 64, offset: 1792)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DISubroutineType(types: !1779)
!1779 = !{!615, !657, !49, !657, !49, !43, !13}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1130, file: !250, line: 1950, baseType: !1781, size: 64, offset: 1856)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = !DISubroutineType(types: !1783)
!1783 = !{!49, !657, !49, !657, !49, !49, !13}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1130, file: !250, line: 1953, baseType: !1690, size: 64, offset: 1920)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1130, file: !250, line: 1954, baseType: !1786, size: 64, offset: 1984)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{!30, !1789, !13}
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !250, line: 1911, flags: DIFlagFwdDecl)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1130, file: !250, line: 1955, baseType: !1792, size: 64, offset: 2048)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DISubroutineType(types: !1794)
!1794 = !{!30, !1789, !1323, !13}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !658, file: !250, line: 1018, baseType: !416, size: 64, offset: 1472)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !658, file: !250, line: 1020, baseType: !28, size: 64, offset: 1536)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !658, file: !250, line: 1023, baseType: !28, size: 64, offset: 1600)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !658, file: !250, line: 1027, baseType: !1799, size: 64, offset: 1664)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !658, file: !250, line: 1029, baseType: !339, size: 64, offset: 1728)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !658, file: !250, line: 1030, baseType: !1802, size: 32, offset: 1792)
!1802 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1803, line: 8, baseType: !412)
!1803 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !658, file: !250, line: 1031, baseType: !1802, size: 32, offset: 1824)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !644, file: !609, line: 182, baseType: !654, size: 64, offset: 384)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !644, file: !609, line: 184, baseType: !1807, size: 64, offset: 448)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = !DISubroutineType(types: !1809)
!1809 = !{!30, !657, !549, !643, !1364}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !632, file: !609, line: 90, baseType: !1811, size: 64, offset: 192)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !632, file: !609, line: 91, baseType: !1813, size: 64, offset: 256)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !599, file: !544, line: 120, baseType: !1815, size: 64, offset: 192)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DISubroutineType(types: !1817)
!1817 = !{!1818, !567}
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1820)
!1820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !198, line: 39, size: 384, elements: !1821)
!1821 = !{!1822, !1823, !1827, !1831, !1837, !1841}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1820, file: !198, line: 40, baseType: !197, size: 32)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1820, file: !198, line: 41, baseType: !1824, size: 64, offset: 64)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DISubroutineType(types: !1826)
!1826 = !{!862}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1820, file: !198, line: 42, baseType: !1828, size: 64, offset: 128)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{!28}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1820, file: !198, line: 43, baseType: !1832, size: 64, offset: 192)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{!1493, !1835}
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !198, line: 19, flags: DIFlagFwdDecl)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1820, file: !198, line: 44, baseType: !1838, size: 64, offset: 256)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = !DISubroutineType(types: !1840)
!1840 = !{!1493}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1820, file: !198, line: 45, baseType: !1842, size: 64, offset: 320)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DISubroutineType(types: !1844)
!1844 = !{null, !28}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !599, file: !544, line: 121, baseType: !1846, size: 64, offset: 256)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{!1493, !567}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !599, file: !544, line: 122, baseType: !1850, size: 64, offset: 320)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{null, !567, !1058, !1059}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !543, file: !544, line: 70, baseType: !1854, size: 64, offset: 384)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1856, line: 190, size: 1152, elements: !1857)
!1856 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1857 = !{!1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1937, !1938, !1939, !1940, !1941, !1944}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1855, file: !1856, line: 191, baseType: !57, size: 32)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1855, file: !1856, line: 192, baseType: !57, size: 32, offset: 32)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1855, file: !1856, line: 202, baseType: !1854, size: 64, offset: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1855, file: !1856, line: 203, baseType: !25, size: 64, offset: 128)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1855, file: !1856, line: 205, baseType: !795, size: 192, align: 64, offset: 192)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1855, file: !1856, line: 207, baseType: !1493, size: 64, offset: 384)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1855, file: !1856, line: 208, baseType: !13, size: 32, offset: 448)
!1865 = !DIDerivedType(tag: DW_TAG_member, scope: !1855, file: !1856, line: 209, baseType: !1866, size: 256, offset: 512)
!1866 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1855, file: !1856, line: 209, size: 256, elements: !1867)
!1867 = !{!1868, !1877, !1881}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1866, file: !1856, line: 210, baseType: !1869, size: 256)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1856, line: 153, size: 256, elements: !1870)
!1870 = !{!1871, !1872, !1873, !1876}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1869, file: !1856, line: 154, baseType: !47, size: 64)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1869, file: !1856, line: 156, baseType: !1075, size: 64, offset: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1869, file: !1856, line: 162, baseType: !1874, size: 64, offset: 128)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1856, line: 162, flags: DIFlagFwdDecl)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1869, file: !1856, line: 167, baseType: !47, size: 64, offset: 192)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1866, file: !1856, line: 211, baseType: !1878, size: 64)
!1878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1856, line: 170, size: 64, elements: !1879)
!1879 = !{!1880}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1878, file: !1856, line: 171, baseType: !1854, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1866, file: !1856, line: 212, baseType: !1882, size: 256)
!1882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1856, line: 174, size: 256, elements: !1883)
!1883 = !{!1884, !1932, !1935, !1936}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1882, file: !1856, line: 175, baseType: !1885, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1887)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1856, line: 271, size: 768, elements: !1888)
!1888 = !{!1889, !1909, !1913, !1914, !1915, !1916, !1917, !1921, !1922, !1923, !1924, !1928}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1887, file: !1856, line: 276, baseType: !1890, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DISubroutineType(types: !1892)
!1892 = !{!30, !1893}
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1856, line: 251, size: 1216, elements: !1895)
!1895 = !{!1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1894, file: !1856, line: 253, baseType: !1854, size: 64)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1894, file: !1856, line: 254, baseType: !657, size: 64, offset: 64)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1894, file: !1856, line: 255, baseType: !1738, size: 64, offset: 128)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1894, file: !1856, line: 256, baseType: !28, size: 64, offset: 192)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1894, file: !1856, line: 259, baseType: !286, size: 256, offset: 256)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1894, file: !1856, line: 260, baseType: !286, size: 256, offset: 512)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1894, file: !1856, line: 261, baseType: !30, size: 32, offset: 768)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1894, file: !1856, line: 262, baseType: !105, size: 128, offset: 832)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1894, file: !1856, line: 263, baseType: !484, size: 64, offset: 960)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1894, file: !1856, line: 265, baseType: !43, size: 64, offset: 1024)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1894, file: !1856, line: 266, baseType: !862, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1894, file: !1856, line: 267, baseType: !862, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1894, file: !1856, line: 268, baseType: !1564, size: 64, offset: 1152)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1887, file: !1856, line: 277, baseType: !1910, size: 64, offset: 64)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DISubroutineType(types: !1912)
!1912 = !{null, !1893}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1887, file: !1856, line: 290, baseType: !1768, size: 64, offset: 128)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1887, file: !1856, line: 292, baseType: !1756, size: 64, offset: 192)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1887, file: !1856, line: 293, baseType: !1764, size: 64, offset: 256)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1887, file: !1856, line: 294, baseType: !1760, size: 64, offset: 320)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1887, file: !1856, line: 296, baseType: !1918, size: 64, offset: 384)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DISubroutineType(types: !1920)
!1920 = !{!615, !1893, !484, !43, !49}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1887, file: !1856, line: 306, baseType: !43, size: 64, offset: 448)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1887, file: !1856, line: 313, baseType: !862, size: 8, offset: 512)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1887, file: !1856, line: 314, baseType: !1918, size: 64, offset: 576)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1887, file: !1856, line: 317, baseType: !1925, size: 64, offset: 640)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{!1351, !1893, !1353}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1887, file: !1856, line: 320, baseType: !1929, size: 64, offset: 704)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{!30, !1893, !1364}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1882, file: !1856, line: 176, baseType: !1933, size: 64, offset: 64)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1856, line: 35, flags: DIFlagFwdDecl)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1882, file: !1856, line: 177, baseType: !49, size: 64, offset: 128)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1882, file: !1856, line: 178, baseType: !1854, size: 64, offset: 192)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1855, file: !1856, line: 215, baseType: !28, size: 64, offset: 768)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1855, file: !1856, line: 221, baseType: !416, size: 64, offset: 832)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1855, file: !1856, line: 223, baseType: !34, size: 16, offset: 896)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1855, file: !1856, line: 224, baseType: !32, size: 16, offset: 912)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1855, file: !1856, line: 225, baseType: !1942, size: 64, offset: 960)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1856, line: 36, flags: DIFlagFwdDecl)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1855, file: !1856, line: 227, baseType: !670, size: 128, align: 64, offset: 1024)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !543, file: !544, line: 71, baseType: !1946, size: 32, offset: 448)
!1946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1947, line: 19, size: 32, elements: !1948)
!1947 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1948 = !{!1949}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1946, file: !1947, line: 20, baseType: !715, size: 32)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !543, file: !544, line: 73, baseType: !13, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !543, file: !544, line: 74, baseType: !13, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !543, file: !544, line: 75, baseType: !13, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !543, file: !544, line: 76, baseType: !13, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !543, file: !544, line: 77, baseType: !13, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !540, file: !116, line: 47, baseType: !530, size: 64, offset: 512)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !540, file: !116, line: 48, baseType: !549, size: 64, offset: 576)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !540, file: !116, line: 49, baseType: !1958, size: 64, offset: 640)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !116, line: 49, flags: DIFlagFwdDecl)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !540, file: !116, line: 50, baseType: !1032, size: 64, offset: 704)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !531, file: !116, line: 418, baseType: !1962, size: 64, offset: 1408)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !116, line: 53, size: 448, elements: !1964)
!1964 = !{!1965, !1966, !1971, !1975, !1979, !1983}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1963, file: !116, line: 54, baseType: !620, size: 128)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1963, file: !116, line: 55, baseType: !1967, size: 64, offset: 128)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DISubroutineType(types: !1969)
!1969 = !{!615, !1962, !1970, !484}
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1963, file: !116, line: 57, baseType: !1972, size: 64, offset: 192)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{!615, !1962, !1970, !25, !43}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1963, file: !116, line: 59, baseType: !1976, size: 64, offset: 256)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DISubroutineType(types: !1978)
!1978 = !{null, !530, !25}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1963, file: !116, line: 60, baseType: !1980, size: 64, offset: 320)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{!30, !530}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1963, file: !116, line: 61, baseType: !1984, size: 64, offset: 384)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DISubroutineType(types: !1986)
!1986 = !{null, !530}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !531, file: !116, line: 419, baseType: !25, size: 64, offset: 1472)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !531, file: !116, line: 420, baseType: !25, size: 64, offset: 1536)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !531, file: !116, line: 421, baseType: !549, size: 64, offset: 1600)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !531, file: !116, line: 424, baseType: !1991, size: 64, offset: 1664)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1993)
!1993 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !116, line: 424, flags: DIFlagFwdDecl)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !531, file: !116, line: 425, baseType: !1995, size: 64, offset: 1728)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !788)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !531, file: !116, line: 426, baseType: !13, size: 32, offset: 1792)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !531, file: !116, line: 435, baseType: !286, size: 256, offset: 1856)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !531, file: !116, line: 437, baseType: !2000, size: 64, offset: 2112)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2002, line: 69, size: 320, elements: !2003)
!2002 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2003 = !{!2004, !2005, !2006, !2023, !2025, !2029, !2030}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2001, file: !2002, line: 70, baseType: !25, size: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2001, file: !2002, line: 71, baseType: !530, size: 64, offset: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2001, file: !2002, line: 72, baseType: !2007, size: 64, offset: 128)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2009)
!2009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2002, line: 47, size: 256, elements: !2010)
!2010 = !{!2011, !2012, !2018, !2022}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2009, file: !2002, line: 49, baseType: !13, size: 32)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2009, file: !2002, line: 51, baseType: !2013, size: 64, offset: 64)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{!30, !25, !2016}
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2001)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2009, file: !2002, line: 53, baseType: !2019, size: 64, offset: 128)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DISubroutineType(types: !2021)
!2021 = !{!30, !484, !2016}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2009, file: !2002, line: 55, baseType: !1842, size: 64, offset: 192)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2001, file: !2002, line: 73, baseType: !2024, size: 16, offset: 192)
!2024 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2001, file: !2002, line: 74, baseType: !2026, size: 8, offset: 208)
!2026 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !92, line: 16, baseType: !2027)
!2027 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !94, line: 20, baseType: !2028)
!2028 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2001, file: !2002, line: 75, baseType: !91, size: 8, offset: 216)
!2030 = !DIDerivedType(tag: DW_TAG_member, scope: !2001, file: !2002, line: 76, baseType: !2031, size: 64, offset: 256)
!2031 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2001, file: !2002, line: 76, size: 64, elements: !2032)
!2032 = !{!2033, !2034, !2041}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2031, file: !2002, line: 77, baseType: !28, size: 64)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2031, file: !2002, line: 78, baseType: !2035, size: 64)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2037)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2002, line: 86, size: 128, elements: !2038)
!2038 = !{!2039, !2040}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2037, file: !2002, line: 87, baseType: !13, size: 32)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2037, file: !2002, line: 88, baseType: !484, size: 64, offset: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2031, file: !2002, line: 79, baseType: !2042, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2044)
!2044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2002, line: 92, size: 256, elements: !2045)
!2045 = !{!2046, !2047, !2048, !2050, !2051}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2044, file: !2002, line: 94, baseType: !13, size: 32)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2044, file: !2002, line: 95, baseType: !13, size: 32, offset: 32)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2044, file: !2002, line: 96, baseType: !2049, size: 64, offset: 64)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2044, file: !2002, line: 97, baseType: !2007, size: 64, offset: 128)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2044, file: !2002, line: 98, baseType: !28, size: 64, offset: 192)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !531, file: !116, line: 438, baseType: !13, size: 32, offset: 2176)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !531, file: !116, line: 441, baseType: !13, size: 32, offset: 2208)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !531, file: !116, line: 442, baseType: !1991, size: 64, offset: 2240)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !531, file: !116, line: 443, baseType: !1995, size: 64, offset: 2304)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !531, file: !116, line: 444, baseType: !862, size: 8, offset: 2368)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !531, file: !116, line: 451, baseType: !862, size: 8, offset: 2376)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !531, file: !116, line: 454, baseType: !13, size: 32, offset: 2400)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !531, file: !116, line: 455, baseType: !2060, size: 64, offset: 2432)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2062, line: 23, size: 96, elements: !2063)
!2062 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2063 = !{!2064, !2065, !2066}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2061, file: !2062, line: 24, baseType: !30, size: 32)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2061, file: !2062, line: 24, baseType: !30, size: 32, offset: 32)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2061, file: !2062, line: 24, baseType: !30, size: 32, offset: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !531, file: !116, line: 458, baseType: !2068, size: 64, offset: 2496)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = !DISubroutineType(types: !2070)
!2070 = !{!30}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !531, file: !116, line: 460, baseType: !2072, size: 4032, align: 512, offset: 2560)
!2072 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2073, size: 4032, elements: !2089)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !116, line: 362, size: 576, elements: !2074)
!2074 = !{!2075, !2076, !2077}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2073, file: !116, line: 363, baseType: !28, size: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2073, file: !116, line: 364, baseType: !13, size: 32, offset: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2073, file: !116, line: 367, baseType: !2078, size: 448, offset: 128)
!2078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !116, line: 319, size: 448, elements: !2079)
!2079 = !{!2080, !2081}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2078, file: !116, line: 320, baseType: !530, size: 64)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2078, file: !116, line: 321, baseType: !2082, size: 384, offset: 64)
!2082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2083, line: 40, size: 384, elements: !2084)
!2083 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2084 = !{!2085}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2082, file: !2083, line: 41, baseType: !2086, size: 384, align: 64)
!2086 = !DICompositeType(tag: DW_TAG_array_type, baseType: !795, size: 384, align: 64, elements: !2087)
!2087 = !{!2088}
!2088 = !DISubrange(count: 2)
!2089 = !{!2090}
!2090 = !DISubrange(count: 7)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !531, file: !116, line: 463, baseType: !2092, size: 192, offset: 6592)
!2092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2093, line: 8, size: 192, elements: !2094)
!2093 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2094 = !{!2095, !2096, !2098}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2092, file: !2093, line: 10, baseType: !13, size: 32)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2092, file: !2093, line: 11, baseType: !2097, size: 64, offset: 64)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2092, file: !2093, line: 12, baseType: !2099, size: 64, offset: 128)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2101, line: 59, size: 48, elements: !2102)
!2101 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2102 = !{!2103, !2104, !2105, !2106, !2107, !2108}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2100, file: !2101, line: 60, baseType: !1510, size: 16)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2100, file: !2101, line: 61, baseType: !1510, size: 16, offset: 16)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2100, file: !2101, line: 63, baseType: !13, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2100, file: !2101, line: 64, baseType: !13, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2100, file: !2101, line: 65, baseType: !13, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2100, file: !2101, line: 66, baseType: !13, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !531, file: !116, line: 465, baseType: !47, size: 64, offset: 6784)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !531, file: !116, line: 469, baseType: !13, size: 32, offset: 6848)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !531, file: !116, line: 470, baseType: !105, size: 128, offset: 6912)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !531, file: !116, line: 471, baseType: !2113, size: 64, offset: 7040)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2115, line: 33, size: 96, elements: !2116)
!2115 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2116 = !{!2117, !2118, !2119, !2120}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2114, file: !2115, line: 37, baseType: !30, size: 32)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2114, file: !2115, line: 43, baseType: !30, size: 32, offset: 32)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2114, file: !2115, line: 45, baseType: !34, size: 16, offset: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2114, file: !2115, line: 47, baseType: !34, size: 16, offset: 80)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !531, file: !116, line: 476, baseType: !2122, size: 64, offset: 7104)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !116, line: 378, size: 256, elements: !2124)
!2124 = !{!2125, !2141, !2142, !2143}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2123, file: !116, line: 379, baseType: !2126, size: 64)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2128, line: 204, baseType: !2129)
!2128 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2128, line: 197, size: 192, elements: !2130)
!2130 = !{!2131, !2133, !2134, !2135, !2137, !2139}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2129, file: !2128, line: 198, baseType: !2132, size: 32)
!2132 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2128, line: 21, baseType: !413)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2129, file: !2128, line: 199, baseType: !95, size: 8, offset: 32)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2129, file: !2128, line: 200, baseType: !95, size: 8, offset: 40)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2129, file: !2128, line: 201, baseType: !2136, size: 16, offset: 48)
!2136 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2128, line: 17, baseType: !102)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2129, file: !2128, line: 202, baseType: !2138, size: 64, offset: 64)
!2138 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2128, line: 16, baseType: !417)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2129, file: !2128, line: 203, baseType: !2140, size: 64, offset: 128)
!2140 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2128, line: 22, baseType: !417)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2123, file: !116, line: 380, baseType: !13, size: 32, offset: 64)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2123, file: !116, line: 381, baseType: !484, size: 64, offset: 128)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2123, file: !116, line: 382, baseType: !484, size: 64, offset: 192)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !531, file: !116, line: 477, baseType: !2123, size: 256, offset: 7168)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !531, file: !116, line: 480, baseType: !2146, size: 64, offset: 7424)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !116, line: 480, flags: DIFlagFwdDecl)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !531, file: !116, line: 483, baseType: !2149, size: 64, offset: 7488)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !116, line: 483, flags: DIFlagFwdDecl)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !531, file: !116, line: 488, baseType: !484, size: 64, offset: 7552)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !531, file: !116, line: 492, baseType: !28, size: 64, offset: 7616)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !531, file: !116, line: 493, baseType: !13, size: 32, offset: 7680)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !531, file: !116, line: 495, baseType: !28, size: 64, offset: 7744)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !531, file: !116, line: 496, baseType: !13, size: 32, offset: 7808)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !531, file: !116, line: 499, baseType: !13, size: 32, offset: 7840)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !531, file: !116, line: 500, baseType: !2158, size: 64, offset: 7872)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2160, line: 45, baseType: !2161)
!2160 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !531, file: !116, line: 503, baseType: !13, size: 32, offset: 7936)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !531, file: !116, line: 504, baseType: !2164, size: 64, offset: 8000)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2167, line: 96, size: 192, elements: !2168)
!2167 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2168 = !{!2169, !2170, !2223, !2226}
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2166, file: !2167, line: 97, baseType: !13, size: 32)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2166, file: !2167, line: 98, baseType: !2171, size: 64, offset: 64)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2167, line: 24, size: 3072, elements: !2173)
!2173 = !{!2174, !2176, !2177, !2178, !2179, !2192, !2193, !2194, !2195, !2207, !2208, !2209, !2220, !2221, !2222}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2172, file: !2167, line: 26, baseType: !2175, size: 128)
!2175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 128, elements: !2087)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2172, file: !2167, line: 27, baseType: !2175, size: 128, offset: 128)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2172, file: !2167, line: 28, baseType: !30, size: 32, offset: 256)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2172, file: !2167, line: 31, baseType: !67, size: 32, align: 512, offset: 512)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2172, file: !2167, line: 32, baseType: !2180, size: 960, offset: 576)
!2180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2181, line: 206, size: 960, elements: !2182)
!2181 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2182 = !{!2183, !2184, !2187, !2189, !2190, !2191}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2180, file: !2181, line: 207, baseType: !673, size: 64)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2180, file: !2181, line: 208, baseType: !2185, size: 256, offset: 64)
!2185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2186, size: 256, elements: !733)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2180, file: !2181, line: 209, baseType: !2188, size: 256, offset: 320)
!2188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 256, elements: !733)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2180, file: !2181, line: 213, baseType: !618, size: 64, offset: 576)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2180, file: !2181, line: 215, baseType: !1096, size: 256, offset: 640)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2180, file: !2181, line: 216, baseType: !91, size: 8, offset: 896)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2172, file: !2167, line: 33, baseType: !47, size: 64, offset: 1536)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2172, file: !2167, line: 34, baseType: !47, size: 64, offset: 1600)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2172, file: !2167, line: 35, baseType: !862, size: 8, offset: 1664)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2172, file: !2167, line: 36, baseType: !2196, size: 320, offset: 1728)
!2196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2197, line: 11, size: 320, elements: !2198)
!2197 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2198 = !{!2199, !2200, !2201, !2206}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2196, file: !2197, line: 16, baseType: !728, size: 128)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2196, file: !2197, line: 17, baseType: !47, size: 64, offset: 128)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2196, file: !2197, line: 18, baseType: !2202, size: 64, offset: 192)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{null, !2205}
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2196, file: !2197, line: 19, baseType: !412, size: 32, offset: 256)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2172, file: !2167, line: 37, baseType: !994, size: 256, offset: 2048)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2172, file: !2167, line: 38, baseType: !670, size: 128, align: 64, offset: 2304)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2172, file: !2167, line: 39, baseType: !2210, size: 64, offset: 2432)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2167, line: 49, size: 768, elements: !2212)
!2212 = !{!2213, !2214, !2215, !2216, !2217, !2218, !2219}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2211, file: !2167, line: 50, baseType: !67, size: 32)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2211, file: !2167, line: 51, baseType: !2188, size: 256, offset: 64)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2211, file: !2167, line: 53, baseType: !2188, size: 256, offset: 320)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2211, file: !2167, line: 54, baseType: !47, size: 64, offset: 576)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2211, file: !2167, line: 55, baseType: !2210, size: 64, offset: 640)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2211, file: !2167, line: 56, baseType: !30, size: 32, offset: 704)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2211, file: !2167, line: 57, baseType: !30, size: 32, offset: 736)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2172, file: !2167, line: 40, baseType: !47, size: 64, offset: 2496)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2172, file: !2167, line: 42, baseType: !30, size: 32, offset: 2560)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2172, file: !2167, line: 43, baseType: !2165, size: 64, offset: 2624)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2166, file: !2167, line: 99, baseType: !2224, offset: 128)
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2225, line: 211, elements: !1398)
!2225 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2166, file: !2167, line: 100, baseType: !2227, size: 64, offset: 128)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2167, line: 63, size: 3008, elements: !2229)
!2229 = !{!2230, !2231, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2261}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2228, file: !2167, line: 64, baseType: !2210, size: 64)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2228, file: !2167, line: 65, baseType: !2232, size: 192, offset: 64)
!2232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2210, size: 192, elements: !584)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2228, file: !2167, line: 67, baseType: !30, size: 32, offset: 256)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2228, file: !2167, line: 68, baseType: !286, size: 256, offset: 320)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2228, file: !2167, line: 69, baseType: !67, size: 32, offset: 576)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2228, file: !2167, line: 70, baseType: !286, size: 256, offset: 640)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2228, file: !2167, line: 71, baseType: !47, size: 64, offset: 896)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2228, file: !2167, line: 72, baseType: !47, size: 64, offset: 960)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2228, file: !2167, line: 73, baseType: !47, size: 64, offset: 1024)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2228, file: !2167, line: 74, baseType: !47, size: 64, offset: 1088)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2228, file: !2167, line: 75, baseType: !47, size: 64, offset: 1152)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2228, file: !2167, line: 76, baseType: !47, size: 64, offset: 1216)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2228, file: !2167, line: 77, baseType: !47, size: 64, offset: 1280)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2228, file: !2167, line: 78, baseType: !47, size: 64, offset: 1344)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2228, file: !2167, line: 79, baseType: !862, size: 8, offset: 1408)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2228, file: !2167, line: 80, baseType: !47, size: 64, offset: 1472)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2228, file: !2167, line: 81, baseType: !286, size: 256, offset: 1536)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2228, file: !2167, line: 82, baseType: !1033, size: 256, offset: 1792)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2228, file: !2167, line: 84, baseType: !57, size: 32, offset: 2048)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2228, file: !2167, line: 87, baseType: !47, size: 64, offset: 2112)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2228, file: !2167, line: 88, baseType: !47, size: 64, offset: 2176)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2228, file: !2167, line: 89, baseType: !2253, size: 704, offset: 2240)
!2253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !995, line: 111, size: 704, elements: !2254)
!2254 = !{!2255, !2256, !2257, !2260}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2253, file: !995, line: 112, baseType: !994, size: 256)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2253, file: !995, line: 113, baseType: !2196, size: 320, offset: 256)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2253, file: !995, line: 116, baseType: !2258, size: 64, offset: 576)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !995, line: 18, flags: DIFlagFwdDecl)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2253, file: !995, line: 117, baseType: !30, size: 32, offset: 640)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2228, file: !2167, line: 90, baseType: !2165, size: 64, offset: 2944)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !531, file: !116, line: 515, baseType: !2263, size: 64, offset: 8064)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2265, line: 117, size: 128, elements: !2266)
!2265 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2266 = !{!2267, !2268, !2269}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2264, file: !2265, line: 118, baseType: !788, size: 32)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2264, file: !2265, line: 119, baseType: !788, size: 32, offset: 32)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2264, file: !2265, line: 120, baseType: !618, size: 64, offset: 64)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !531, file: !116, line: 516, baseType: !13, size: 32, offset: 8128)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !531, file: !116, line: 519, baseType: !13, size: 32, offset: 8160)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !531, file: !116, line: 520, baseType: !2273, size: 64, offset: 8192)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !531, file: !116, line: 523, baseType: !2275, size: 64, offset: 8256)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2277 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !116, line: 523, flags: DIFlagFwdDecl)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !531, file: !116, line: 524, baseType: !13, size: 32, offset: 8320)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !531, file: !116, line: 525, baseType: !2280, size: 64, offset: 8384)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !116, line: 525, flags: DIFlagFwdDecl)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !531, file: !116, line: 526, baseType: !13, size: 32, offset: 8448)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !531, file: !116, line: 533, baseType: !28, size: 64, offset: 8512)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !531, file: !116, line: 534, baseType: !13, size: 32, offset: 8576)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !531, file: !116, line: 535, baseType: !2287, size: 64, offset: 8640)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !531, file: !116, line: 536, baseType: !13, size: 32, offset: 8704)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !531, file: !116, line: 539, baseType: !30, size: 32, offset: 8736)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !531, file: !116, line: 540, baseType: !2291, size: 64, offset: 8768)
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2293, line: 32, size: 64, elements: !2294)
!2293 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2294 = !{!2295, !2296}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2292, file: !2293, line: 33, baseType: !788, size: 32)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2292, file: !2293, line: 34, baseType: !788, size: 32, offset: 32)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !531, file: !116, line: 563, baseType: !105, size: 128, offset: 8832)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !531, file: !116, line: 565, baseType: !105, size: 128, offset: 8960)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !531, file: !116, line: 568, baseType: !2300, size: 64, offset: 9088)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{null}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !531, file: !116, line: 570, baseType: !57, size: 32, offset: 9152)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !507, file: !250, line: 2382, baseType: !506, size: 64, offset: 448)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !507, file: !250, line: 2383, baseType: !724, size: 64, offset: 512)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !507, file: !250, line: 2385, baseType: !2307, offset: 576)
!2307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2225, line: 206, elements: !1398)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !507, file: !250, line: 2386, baseType: !2307, offset: 576)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !507, file: !250, line: 2387, baseType: !2307, offset: 576)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !507, file: !250, line: 2388, baseType: !2311, offset: 576)
!2311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2307, elements: !584)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !507, file: !250, line: 2390, baseType: !2307, offset: 576)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !507, file: !250, line: 2391, baseType: !2307, offset: 576)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !507, file: !250, line: 2392, baseType: !2307, offset: 576)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !507, file: !250, line: 2393, baseType: !2307, offset: 576)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !496, file: !250, line: 1197, baseType: !2317, size: 64, offset: 384)
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2319)
!2319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !250, line: 2057, size: 1664, elements: !2320)
!2320 = !{!2321, !2325, !2329, !2330, !2334, !2358, !2362, !2363, !2364, !2368, !2372, !2376, !2377, !2378, !2384, !2388, !2389, !2393, !2394, !2395, !2396, !2400, !2404, !2451, !2466, !2467}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2319, file: !250, line: 2058, baseType: !2322, size: 64)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = !DISubroutineType(types: !2324)
!2324 = !{!343, !495}
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2319, file: !250, line: 2059, baseType: !2326, size: 64, offset: 64)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = !DISubroutineType(types: !2328)
!2328 = !{null, !343}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2319, file: !250, line: 2060, baseType: !2326, size: 64, offset: 128)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2319, file: !250, line: 2062, baseType: !2331, size: 64, offset: 192)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = !DISubroutineType(types: !2333)
!2333 = !{null, !343, !30}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2319, file: !250, line: 2063, baseType: !2335, size: 64, offset: 256)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{!30, !343, !2338}
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !147, line: 42, size: 384, elements: !2340)
!2340 = !{!2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !2339, file: !147, line: 43, baseType: !618, size: 64)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !2339, file: !147, line: 45, baseType: !618, size: 64, offset: 64)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !2339, file: !147, line: 52, baseType: !49, size: 64, offset: 128)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !2339, file: !147, line: 53, baseType: !49, size: 64, offset: 192)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !2339, file: !147, line: 55, baseType: !146, size: 32, offset: 256)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !2339, file: !147, line: 57, baseType: !13, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !2339, file: !147, line: 58, baseType: !13, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !2339, file: !147, line: 59, baseType: !13, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !2339, file: !147, line: 60, baseType: !13, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !2339, file: !147, line: 61, baseType: !13, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !2339, file: !147, line: 62, baseType: !13, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "unpinned_fscache_wb", scope: !2339, file: !147, line: 63, baseType: !13, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !2339, file: !147, line: 71, baseType: !13, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "swap_plug", scope: !2339, file: !147, line: 78, baseType: !2355, size: 64, offset: 320)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!2357 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_iocb", file: !147, line: 78, flags: DIFlagFwdDecl)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2319, file: !250, line: 2064, baseType: !2359, size: 64, offset: 320)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = !DISubroutineType(types: !2361)
!2361 = !{!30, !343}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2319, file: !250, line: 2065, baseType: !2326, size: 64, offset: 384)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2319, file: !250, line: 2066, baseType: !526, size: 64, offset: 448)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2319, file: !250, line: 2067, baseType: !2365, size: 64, offset: 512)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{!30, !495, !30}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2319, file: !250, line: 2068, baseType: !2369, size: 64, offset: 576)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = !DISubroutineType(types: !2371)
!2371 = !{!30, !495, !249}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2319, file: !250, line: 2069, baseType: !2373, size: 64, offset: 640)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{!30, !495}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2319, file: !250, line: 2070, baseType: !2369, size: 64, offset: 704)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2319, file: !250, line: 2071, baseType: !2373, size: 64, offset: 768)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2319, file: !250, line: 2072, baseType: !2379, size: 64, offset: 832)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{!30, !378, !2382}
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !250, line: 62, flags: DIFlagFwdDecl)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2319, file: !250, line: 2073, baseType: !2385, size: 64, offset: 896)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{!30, !495, !2097, !484}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2319, file: !250, line: 2074, baseType: !526, size: 64, offset: 960)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2319, file: !250, line: 2076, baseType: !2390, size: 64, offset: 1024)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = !DISubroutineType(types: !2392)
!2392 = !{!30, !1738, !378}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2319, file: !250, line: 2077, baseType: !2390, size: 64, offset: 1088)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2319, file: !250, line: 2078, baseType: !2390, size: 64, offset: 1152)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2319, file: !250, line: 2079, baseType: !2390, size: 64, offset: 1216)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2319, file: !250, line: 2081, baseType: !2397, size: 64, offset: 1280)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{!615, !495, !30, !484, !43, !49}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2319, file: !250, line: 2082, baseType: !2401, size: 64, offset: 1344)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = !DISubroutineType(types: !2403)
!2403 = !{!615, !495, !30, !25, !43, !49}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2319, file: !250, line: 2083, baseType: !2405, size: 64, offset: 1408)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{!2408, !343}
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !255, line: 296, size: 1664, elements: !2411)
!2411 = !{!2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2436, !2437, !2438}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2410, file: !255, line: 297, baseType: !728, size: 128)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2410, file: !255, line: 298, baseType: !105, size: 128, offset: 128)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2410, file: !255, line: 299, baseType: !105, size: 128, offset: 256)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2410, file: !255, line: 300, baseType: !105, size: 128, offset: 384)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2410, file: !255, line: 301, baseType: !286, size: 256, offset: 512)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2410, file: !255, line: 302, baseType: !67, size: 32, offset: 768)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2410, file: !255, line: 303, baseType: !57, size: 32, offset: 800)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2410, file: !255, line: 304, baseType: !495, size: 64, offset: 832)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2410, file: !255, line: 305, baseType: !2421, size: 64, offset: 896)
!2421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !255, line: 68, size: 64, elements: !2422)
!2422 = !{!2423, !2435}
!2423 = !DIDerivedType(tag: DW_TAG_member, scope: !2421, file: !255, line: 69, baseType: !2424, size: 32)
!2424 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2421, file: !255, line: 69, size: 32, elements: !2425)
!2425 = !{!2426, !2427, !2428}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2424, file: !255, line: 70, baseType: !349, size: 32)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2424, file: !255, line: 71, baseType: !358, size: 32)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2424, file: !255, line: 72, baseType: !2429, size: 32)
!2429 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2430, line: 24, baseType: !2431)
!2430 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2431 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2430, line: 22, size: 32, elements: !2432)
!2432 = !{!2433}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2431, file: !2430, line: 23, baseType: !2434, size: 32)
!2434 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2430, line: 20, baseType: !355)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2421, file: !255, line: 74, baseType: !254, size: 32, offset: 32)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2410, file: !255, line: 306, baseType: !49, size: 64, offset: 960)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2410, file: !255, line: 307, baseType: !47, size: 64, offset: 1024)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2410, file: !255, line: 308, baseType: !2439, size: 576, offset: 1088)
!2439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !255, line: 205, size: 576, elements: !2440)
!2440 = !{!2441, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2439, file: !255, line: 206, baseType: !2442, size: 64)
!2442 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !255, line: 66, baseType: !51)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2439, file: !255, line: 207, baseType: !2442, size: 64, offset: 64)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2439, file: !255, line: 208, baseType: !2442, size: 64, offset: 128)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2439, file: !255, line: 209, baseType: !2442, size: 64, offset: 192)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2439, file: !255, line: 210, baseType: !2442, size: 64, offset: 256)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2439, file: !255, line: 211, baseType: !2442, size: 64, offset: 320)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2439, file: !255, line: 212, baseType: !2442, size: 64, offset: 384)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2439, file: !255, line: 213, baseType: !819, size: 64, offset: 448)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2439, file: !255, line: 214, baseType: !819, size: 64, offset: 512)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2319, file: !250, line: 2085, baseType: !2452, size: 64, offset: 1472)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{!618, !495, !2455}
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2457, line: 15, size: 256, elements: !2458)
!2457 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2458 = !{!2459, !2460, !2461, !2462, !2463}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2456, file: !2457, line: 16, baseType: !1309, size: 32)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2456, file: !2457, line: 19, baseType: !30, size: 32, offset: 32)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2456, file: !2457, line: 26, baseType: !47, size: 64, offset: 64)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2456, file: !2457, line: 33, baseType: !47, size: 64, offset: 128)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2456, file: !2457, line: 36, baseType: !2464, size: 64, offset: 192)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !2457, line: 36, flags: DIFlagFwdDecl)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2319, file: !250, line: 2087, baseType: !2452, size: 64, offset: 1536)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2319, file: !250, line: 2089, baseType: !526, size: 64, offset: 1600)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !496, file: !250, line: 1198, baseType: !2469, size: 64, offset: 448)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2471)
!2471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !255, line: 324, size: 704, elements: !2472)
!2472 = !{!2473, !2477, !2481, !2485, !2486, !2487, !2488, !2489, !2494, !2499, !2503}
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2471, file: !255, line: 325, baseType: !2474, size: 64)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{!30, !2409}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2471, file: !255, line: 326, baseType: !2478, size: 64, offset: 64)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{!2409, !495, !30}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2471, file: !255, line: 327, baseType: !2482, size: 64, offset: 128)
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = !DISubroutineType(types: !2484)
!2484 = !{null, !2409}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2471, file: !255, line: 328, baseType: !2474, size: 64, offset: 192)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2471, file: !255, line: 329, baseType: !2474, size: 64, offset: 256)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2471, file: !255, line: 330, baseType: !2474, size: 64, offset: 320)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2471, file: !255, line: 331, baseType: !2365, size: 64, offset: 384)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2471, file: !255, line: 334, baseType: !2490, size: 64, offset: 448)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = !DISubroutineType(types: !2492)
!2492 = !{!2493, !343}
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2471, file: !255, line: 335, baseType: !2495, size: 64, offset: 512)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{!30, !343, !2498}
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2471, file: !255, line: 337, baseType: !2500, size: 64, offset: 576)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{!30, !343, !2493}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2471, file: !255, line: 339, baseType: !2504, size: 64, offset: 640)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = !DISubroutineType(types: !2506)
!2506 = !{!30, !495, !2507}
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !496, file: !250, line: 1199, baseType: !2509, size: 64, offset: 512)
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2511)
!2511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !255, line: 430, size: 704, elements: !2512)
!2512 = !{!2513, !2519, !2520, !2524, !2525, !2526, !2541, !2564, !2568, !2569, !2592}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2511, file: !255, line: 431, baseType: !2514, size: 64)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = !DISubroutineType(types: !2516)
!2516 = !{!30, !495, !30, !30, !2517}
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1121)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2511, file: !255, line: 432, baseType: !2365, size: 64, offset: 64)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2511, file: !255, line: 433, baseType: !2521, size: 64, offset: 128)
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2522 = !DISubroutineType(types: !2523)
!2523 = !{!30, !495, !13}
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2511, file: !255, line: 434, baseType: !2521, size: 64, offset: 192)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2511, file: !255, line: 435, baseType: !2365, size: 64, offset: 256)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2511, file: !255, line: 436, baseType: !2527, size: 64, offset: 320)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = !DISubroutineType(types: !2529)
!2529 = !{!30, !495, !30, !2530}
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 64)
!2531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !255, line: 417, size: 256, elements: !2532)
!2532 = !{!2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2531, file: !255, line: 418, baseType: !30, size: 32)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2531, file: !255, line: 419, baseType: !13, size: 32, offset: 32)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2531, file: !255, line: 420, baseType: !13, size: 32, offset: 64)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2531, file: !255, line: 422, baseType: !13, size: 32, offset: 96)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2531, file: !255, line: 423, baseType: !13, size: 32, offset: 128)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2531, file: !255, line: 424, baseType: !13, size: 32, offset: 160)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2531, file: !255, line: 425, baseType: !13, size: 32, offset: 192)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2531, file: !255, line: 426, baseType: !13, size: 32, offset: 224)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2511, file: !255, line: 437, baseType: !2542, size: 64, offset: 384)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = !DISubroutineType(types: !2544)
!2544 = !{!30, !495, !2421, !2545}
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !255, line: 345, size: 960, elements: !2547)
!2547 = !{!2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2546, file: !255, line: 346, baseType: !30, size: 32)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2546, file: !255, line: 347, baseType: !416, size: 64, offset: 64)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2546, file: !255, line: 348, baseType: !416, size: 64, offset: 128)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2546, file: !255, line: 349, baseType: !416, size: 64, offset: 192)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2546, file: !255, line: 350, baseType: !416, size: 64, offset: 256)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2546, file: !255, line: 351, baseType: !416, size: 64, offset: 320)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2546, file: !255, line: 352, baseType: !416, size: 64, offset: 384)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2546, file: !255, line: 353, baseType: !296, size: 64, offset: 448)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2546, file: !255, line: 355, baseType: !296, size: 64, offset: 512)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2546, file: !255, line: 356, baseType: !30, size: 32, offset: 576)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2546, file: !255, line: 357, baseType: !30, size: 32, offset: 608)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2546, file: !255, line: 358, baseType: !416, size: 64, offset: 640)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2546, file: !255, line: 359, baseType: !416, size: 64, offset: 704)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2546, file: !255, line: 360, baseType: !416, size: 64, offset: 768)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2546, file: !255, line: 361, baseType: !296, size: 64, offset: 832)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2546, file: !255, line: 362, baseType: !30, size: 32, offset: 896)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2511, file: !255, line: 438, baseType: !2565, size: 64, offset: 448)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!30, !495, !2507, !2545}
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2511, file: !255, line: 440, baseType: !2542, size: 64, offset: 512)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2511, file: !255, line: 441, baseType: !2570, size: 64, offset: 576)
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2571 = !DISubroutineType(types: !2572)
!2572 = !{!30, !495, !2573}
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !255, line: 411, size: 1408, elements: !2575)
!2575 = !{!2576, !2577}
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2574, file: !255, line: 412, baseType: !13, size: 32)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2574, file: !255, line: 413, baseType: !2578, size: 1344, offset: 64)
!2578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2579, size: 1344, elements: !584)
!2579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !255, line: 397, size: 448, elements: !2580)
!2580 = !{!2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2591}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2579, file: !255, line: 398, baseType: !13, size: 32)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2579, file: !255, line: 399, baseType: !13, size: 32, offset: 32)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2579, file: !255, line: 401, baseType: !13, size: 32, offset: 64)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2579, file: !255, line: 402, baseType: !13, size: 32, offset: 96)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2579, file: !255, line: 403, baseType: !13, size: 32, offset: 128)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2579, file: !255, line: 404, baseType: !13, size: 32, offset: 160)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2579, file: !255, line: 405, baseType: !13, size: 32, offset: 192)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2579, file: !255, line: 406, baseType: !418, size: 64, offset: 256)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2579, file: !255, line: 407, baseType: !2590, size: 64, offset: 320)
!2590 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !33, line: 132, baseType: !416)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2579, file: !255, line: 408, baseType: !2590, size: 64, offset: 384)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2511, file: !255, line: 442, baseType: !2521, size: 64, offset: 640)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !496, file: !250, line: 1200, baseType: !2594, size: 64, offset: 576)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2596)
!2596 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !250, line: 54, flags: DIFlagFwdDecl)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !496, file: !250, line: 1201, baseType: !47, size: 64, offset: 640)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !496, file: !250, line: 1202, baseType: !47, size: 64, offset: 704)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !496, file: !250, line: 1203, baseType: !47, size: 64, offset: 768)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !496, file: !250, line: 1204, baseType: !378, size: 64, offset: 832)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !496, file: !250, line: 1205, baseType: !803, size: 320, offset: 896)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !496, file: !250, line: 1206, baseType: !30, size: 32, offset: 1216)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !496, file: !250, line: 1207, baseType: !57, size: 32, offset: 1248)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !496, file: !250, line: 1209, baseType: !28, size: 64, offset: 1280)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !496, file: !250, line: 1211, baseType: !2606, size: 64, offset: 1344)
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64)
!2608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2609)
!2609 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !250, line: 1211, flags: DIFlagFwdDecl)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !496, file: !250, line: 1223, baseType: !2611, size: 64, offset: 1408)
!2611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !395, line: 34, size: 64, elements: !2612)
!2612 = !{!2613}
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2611, file: !395, line: 35, baseType: !398, size: 64)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !496, file: !250, line: 1224, baseType: !105, size: 128, offset: 1472)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !496, file: !250, line: 1225, baseType: !2616, size: 64, offset: 1600)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !2618, line: 40, size: 7424, elements: !2619)
!2618 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!2619 = !{!2620, !2622, !2623, !3470, !3471, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3514, !3515}
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !2617, file: !2618, line: 41, baseType: !2621, size: 64)
!2621 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !33, line: 131, baseType: !416)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !2617, file: !2618, line: 42, baseType: !2621, size: 64, offset: 64)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !2617, file: !2618, line: 43, baseType: !2624, size: 64, offset: 128)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !159, line: 128, size: 4544, elements: !2626)
!2626 = !{!2627, !2628, !2629, !2630, !2632, !2633, !2634, !2635, !2636, !2816, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3436, !3437, !3438, !3439, !3442, !3443, !3446, !3449, !3450, !3453, !3454, !3455, !3456}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !2625, file: !159, line: 133, baseType: !30, size: 32)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "first_minor", scope: !2625, file: !159, line: 134, baseType: !30, size: 32, offset: 32)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "minors", scope: !2625, file: !159, line: 135, baseType: !30, size: 32, offset: 64)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "disk_name", scope: !2625, file: !159, line: 137, baseType: !2631, size: 256, offset: 96)
!2631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !425)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2625, file: !159, line: 139, baseType: !34, size: 16, offset: 352)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "event_flags", scope: !2625, file: !159, line: 140, baseType: !34, size: 16, offset: 368)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "part_tbl", scope: !2625, file: !159, line: 142, baseType: !1304, size: 128, offset: 384)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "part0", scope: !2625, file: !159, line: 143, baseType: !2616, size: 64, offset: 512)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !2625, file: !159, line: 145, baseType: !2637, size: 64, offset: 576)
!2637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2638, size: 64)
!2638 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2639)
!2639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device_operations", file: !159, line: 1388, size: 1152, elements: !2640)
!2640 = !{!2641, !2732, !2736, !2741, !2745, !2749, !2750, !2754, !2755, !2761, !2765, !2766, !2770, !2796, !2801, !2806, !2807, !2811}
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "submit_bio", scope: !2639, file: !159, line: 1389, baseType: !2642, size: 64)
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2643, size: 64)
!2643 = !DISubroutineType(types: !2644)
!2644 = !{null, !2645}
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio", file: !2618, line: 265, size: 960, elements: !2647)
!2647 = !{!2648, !2649, !2650, !2652, !2653, !2654, !2656, !2657, !2664, !2666, !2669, !2670, !2673, !2677, !2678, !2680, !2681, !2682, !2683, !2685, !2730}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "bi_next", scope: !2646, file: !2618, line: 266, baseType: !2645, size: 64)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bdev", scope: !2646, file: !2618, line: 267, baseType: !2616, size: 64, offset: 64)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "bi_opf", scope: !2646, file: !2618, line: 268, baseType: !2651, size: 32, offset: 128)
!2651 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_opf_t", file: !2618, line: 256, baseType: !413)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "bi_flags", scope: !2646, file: !2618, line: 271, baseType: !34, size: 16, offset: 160)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "bi_ioprio", scope: !2646, file: !2618, line: 272, baseType: !34, size: 16, offset: 176)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "bi_status", scope: !2646, file: !2618, line: 273, baseType: !2655, size: 8, offset: 192)
!2655 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_status_t", file: !2618, line: 97, baseType: !91)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_remaining", scope: !2646, file: !2618, line: 274, baseType: !57, size: 32, offset: 224)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iter", scope: !2646, file: !2618, line: 276, baseType: !2658, size: 160, align: 32, offset: 256)
!2658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bvec_iter", file: !1297, line: 77, size: 160, align: 32, elements: !2659)
!2659 = !{!2660, !2661, !2662, !2663}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "bi_sector", scope: !2658, file: !1297, line: 78, baseType: !2621, size: 64)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "bi_size", scope: !2658, file: !1297, line: 80, baseType: !13, size: 32, offset: 64)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "bi_idx", scope: !2658, file: !1297, line: 82, baseType: !13, size: 32, offset: 96)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bvec_done", scope: !2658, file: !1297, line: 84, baseType: !13, size: 32, offset: 128)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "bi_cookie", scope: !2646, file: !2618, line: 278, baseType: !2665, size: 32, offset: 416)
!2665 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_qc_t", file: !2618, line: 258, baseType: !13)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "bi_end_io", scope: !2646, file: !2618, line: 279, baseType: !2667, size: 64, offset: 448)
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2668 = !DIDerivedType(tag: DW_TAG_typedef, name: "bio_end_io_t", file: !2618, line: 20, baseType: !2643)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "bi_private", scope: !2646, file: !2618, line: 280, baseType: !28, size: 64, offset: 512)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "bi_blkg", scope: !2646, file: !2618, line: 288, baseType: !2671, size: 64, offset: 576)
!2671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2672, size: 64)
!2672 = !DICompositeType(tag: DW_TAG_structure_type, name: "blkcg_gq", file: !2618, line: 288, flags: DIFlagFwdDecl)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "bi_issue", scope: !2646, file: !2618, line: 289, baseType: !2674, size: 64, offset: 640)
!2674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_issue", file: !2618, line: 228, size: 64, elements: !2675)
!2675 = !{!2676}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2674, file: !2618, line: 229, baseType: !416, size: 64)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iocost_cost", scope: !2646, file: !2618, line: 291, baseType: !416, size: 64, offset: 704)
!2678 = !DIDerivedType(tag: DW_TAG_member, scope: !2646, file: !2618, line: 299, baseType: !2679, offset: 768)
!2679 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2646, file: !2618, line: 299, elements: !1398)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "bi_vcnt", scope: !2646, file: !2618, line: 305, baseType: !34, size: 16, offset: 768)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "bi_max_vecs", scope: !2646, file: !2618, line: 311, baseType: !34, size: 16, offset: 784)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_cnt", scope: !2646, file: !2618, line: 313, baseType: !57, size: 32, offset: 800)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "bi_io_vec", scope: !2646, file: !2618, line: 315, baseType: !2684, size: 64, offset: 832)
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "bi_pool", scope: !2646, file: !2618, line: 317, baseType: !2686, size: 64, offset: 896)
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_set", file: !2688, line: 678, size: 1984, elements: !2689)
!2688 = !DIFile(filename: "./include/linux/bio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48d164cf34dda85459af1fe5d2b8d08f")
!2689 = !{!2690, !2694, !2695, !2698, !2719, !2720, !2721, !2722, !2727, !2728, !2729}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "bio_slab", scope: !2687, file: !2688, line: 679, baseType: !2691, size: 64)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2693, line: 325, flags: DIFlagFwdDecl)
!2693 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "front_pad", scope: !2687, file: !2688, line: 680, baseType: !13, size: 32, offset: 64)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !2687, file: !2688, line: 685, baseType: !2696, size: 64, offset: 128)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_alloc_cache", file: !2688, line: 685, flags: DIFlagFwdDecl)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "bio_pool", scope: !2687, file: !2688, line: 687, baseType: !2699, size: 576, offset: 192)
!2699 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_t", file: !2700, line: 26, baseType: !2701)
!2700 = !DIFile(filename: "./include/linux/mempool.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1ef8a210e9c9e696cc7d6e9be9316611")
!2701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mempool_s", file: !2700, line: 16, size: 576, elements: !2702)
!2702 = !{!2703, !2704, !2705, !2706, !2707, !2708, !2713, !2718}
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2701, file: !2700, line: 17, baseType: !67, size: 32)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "min_nr", scope: !2701, file: !2700, line: 18, baseType: !30, size: 32, offset: 32)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "curr_nr", scope: !2701, file: !2700, line: 19, baseType: !30, size: 32, offset: 64)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !2701, file: !2700, line: 20, baseType: !1729, size: 64, offset: 128)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "pool_data", scope: !2701, file: !2700, line: 22, baseType: !28, size: 64, offset: 192)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2701, file: !2700, line: 23, baseType: !2709, size: 64, offset: 256)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_alloc_t", file: !2700, line: 13, baseType: !2711)
!2711 = !DISubroutineType(types: !2712)
!2712 = !{!28, !1309, !28}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2701, file: !2700, line: 24, baseType: !2714, size: 64, offset: 320)
!2714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2715, size: 64)
!2715 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_free_t", file: !2700, line: 14, baseType: !2716)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{null, !28, !28}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2701, file: !2700, line: 25, baseType: !62, size: 192, offset: 384)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "bvec_pool", scope: !2687, file: !2688, line: 688, baseType: !2699, size: 576, offset: 768)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "back_pad", scope: !2687, file: !2688, line: 694, baseType: !13, size: 32, offset: 1344)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_lock", scope: !2687, file: !2688, line: 699, baseType: !67, size: 32, offset: 1376)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_list", scope: !2687, file: !2688, line: 700, baseType: !2723, size: 128, offset: 1408)
!2723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !2688, line: 550, size: 128, elements: !2724)
!2724 = !{!2725, !2726}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2723, file: !2688, line: 551, baseType: !2645, size: 64)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2723, file: !2688, line: 552, baseType: !2645, size: 64, offset: 64)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_work", scope: !2687, file: !2688, line: 701, baseType: !994, size: 256, offset: 1536)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_workqueue", scope: !2687, file: !2688, line: 702, baseType: !2258, size: 64, offset: 1792)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_dead", scope: !2687, file: !2688, line: 707, baseType: !728, size: 128, offset: 1856)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "bi_inline_vecs", scope: !2646, file: !2618, line: 324, baseType: !2731, offset: 960)
!2731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1296, elements: !746)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "poll_bio", scope: !2639, file: !159, line: 1390, baseType: !2733, size: 64, offset: 64)
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2734, size: 64)
!2734 = !DISubroutineType(types: !2735)
!2735 = !{!30, !2645, !1323, !13}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2639, file: !159, line: 1392, baseType: !2737, size: 64, offset: 128)
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = !DISubroutineType(types: !2739)
!2739 = !{!30, !2624, !2740}
!2740 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_mode_t", file: !159, line: 115, baseType: !13)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2639, file: !159, line: 1393, baseType: !2742, size: 64, offset: 192)
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2743 = !DISubroutineType(types: !2744)
!2744 = !{null, !2624}
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !2639, file: !159, line: 1394, baseType: !2746, size: 64, offset: 256)
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64)
!2747 = !DISubroutineType(types: !2748)
!2748 = !{!30, !2616, !2740, !13, !47}
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2639, file: !159, line: 1396, baseType: !2746, size: 64, offset: 320)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "check_events", scope: !2639, file: !159, line: 1398, baseType: !2751, size: 64, offset: 384)
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2752, size: 64)
!2752 = !DISubroutineType(types: !2753)
!2753 = !{!13, !2624, !13}
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_native_capacity", scope: !2639, file: !159, line: 1400, baseType: !2742, size: 64, offset: 448)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "getgeo", scope: !2639, file: !159, line: 1401, baseType: !2756, size: 64, offset: 512)
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2757 = !DISubroutineType(types: !2758)
!2758 = !{!30, !2616, !2759}
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2760 = !DICompositeType(tag: DW_TAG_structure_type, name: "hd_geometry", file: !250, line: 56, flags: DIFlagFwdDecl)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "set_read_only", scope: !2639, file: !159, line: 1402, baseType: !2762, size: 64, offset: 576)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = !DISubroutineType(types: !2764)
!2764 = !{!30, !2616, !862}
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "free_disk", scope: !2639, file: !159, line: 1403, baseType: !2742, size: 64, offset: 640)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "swap_slot_free_notify", scope: !2639, file: !159, line: 1405, baseType: !2767, size: 64, offset: 704)
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2768, size: 64)
!2768 = !DISubroutineType(types: !2769)
!2769 = !{null, !2616, !47}
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "report_zones", scope: !2639, file: !159, line: 1406, baseType: !2771, size: 64, offset: 768)
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2772, size: 64)
!2772 = !DISubroutineType(types: !2773)
!2773 = !{!30, !2624, !2621, !13, !2774, !28}
!2774 = !DIDerivedType(tag: DW_TAG_typedef, name: "report_zones_cb", file: !159, line: 342, baseType: !2775)
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{!30, !2778, !13, !28}
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_zone", file: !2780, line: 106, size: 512, elements: !2781)
!2780 = !DIFile(filename: "./include/uapi/linux/blkzoned.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3d5e7016ed7b437a9c2a308f55db1257")
!2781 = !{!2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2791, !2792}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2779, file: !2780, line: 107, baseType: !417, size: 64)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2779, file: !2780, line: 108, baseType: !417, size: 64, offset: 64)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "wp", scope: !2779, file: !2780, line: 109, baseType: !417, size: 64, offset: 128)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2779, file: !2780, line: 110, baseType: !93, size: 8, offset: 192)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !2779, file: !2780, line: 111, baseType: !93, size: 8, offset: 200)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "non_seq", scope: !2779, file: !2780, line: 112, baseType: !93, size: 8, offset: 208)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !2779, file: !2780, line: 113, baseType: !93, size: 8, offset: 216)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !2779, file: !2780, line: 114, baseType: !2790, size: 32, offset: 224)
!2790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 32, elements: !733)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !2779, file: !2780, line: 115, baseType: !417, size: 64, offset: 256)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2779, file: !2780, line: 116, baseType: !2793, size: 192, offset: 320)
!2793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 192, elements: !2794)
!2794 = !{!2795}
!2795 = !DISubrange(count: 24)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2639, file: !159, line: 1408, baseType: !2797, size: 64, offset: 832)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = !DISubroutineType(types: !2799)
!2799 = !{!484, !2624, !2800}
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "get_unique_id", scope: !2639, file: !159, line: 1410, baseType: !2802, size: 64, offset: 896)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{!30, !2624, !2805, !158}
!2805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2639, file: !159, line: 1412, baseType: !530, size: 64, offset: 960)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "pr_ops", scope: !2639, file: !159, line: 1413, baseType: !2808, size: 64, offset: 1024)
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2809, size: 64)
!2809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2810)
!2810 = !DICompositeType(tag: DW_TAG_structure_type, name: "pr_ops", file: !159, line: 37, flags: DIFlagFwdDecl)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "alternative_gpt_sector", scope: !2639, file: !159, line: 1420, baseType: !2812, size: 64, offset: 1088)
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2813 = !DISubroutineType(types: !2814)
!2814 = !{!30, !2624, !2815}
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !2625, file: !159, line: 146, baseType: !2817, size: 64, offset: 640)
!2817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2818, size: 64)
!2818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !159, line: 391, size: 7296, elements: !2819)
!2819 = !{!2820, !2821, !2824, !2845, !2848, !2851, !2852, !2856, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3301, !3302, !3306, !3307, !3308, !3309, !3342, !3343, !3344, !3347, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3366, !3367, !3368, !3369, !3370, !3371}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "last_merge", scope: !2818, file: !159, line: 392, baseType: !1327, size: 64)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "elevator", scope: !2818, file: !159, line: 393, baseType: !2822, size: 64, offset: 64)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_queue", file: !159, line: 30, flags: DIFlagFwdDecl)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "q_usage_counter", scope: !2818, file: !159, line: 395, baseType: !2825, size: 128, offset: 128)
!2825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2826, line: 105, size: 128, elements: !2827)
!2826 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2827 = !{!2828, !2829}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2825, file: !2826, line: 110, baseType: !47, size: 64)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2825, file: !2826, line: 118, baseType: !2830, size: 64, offset: 64)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2831, size: 64)
!2831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2826, line: 95, size: 448, elements: !2832)
!2832 = !{!2833, !2834, !2840, !2841, !2842, !2843, !2844}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2831, file: !2826, line: 96, baseType: !290, size: 64)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2831, file: !2826, line: 97, baseType: !2835, size: 64, offset: 64)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2826, line: 60, baseType: !2837)
!2837 = !DISubroutineType(types: !2838)
!2838 = !{null, !2839}
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2831, file: !2826, line: 98, baseType: !2835, size: 64, offset: 128)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2831, file: !2826, line: 99, baseType: !862, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2831, file: !2826, line: 100, baseType: !862, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2831, file: !2826, line: 101, baseType: !670, size: 128, align: 64, offset: 256)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2831, file: !2826, line: 102, baseType: !2839, size: 64, offset: 384)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2818, file: !159, line: 397, baseType: !2846, size: 64, offset: 256)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_queue_stats", file: !159, line: 39, flags: DIFlagFwdDecl)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos", scope: !2818, file: !159, line: 398, baseType: !2849, size: 64, offset: 320)
!2849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2850, size: 64)
!2850 = !DICompositeType(tag: DW_TAG_structure_type, name: "rq_qos", file: !159, line: 38, flags: DIFlagFwdDecl)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos_mutex", scope: !2818, file: !159, line: 399, baseType: !286, size: 256, offset: 384)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ops", scope: !2818, file: !159, line: 401, baseType: !2853, size: 64, offset: 640)
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2854 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2855)
!2855 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ops", file: !159, line: 401, flags: DIFlagFwdDecl)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "queue_ctx", scope: !2818, file: !159, line: 404, baseType: !2857, size: 64, offset: 704)
!2857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2858, size: 64)
!2858 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ctx", file: !159, line: 404, flags: DIFlagFwdDecl)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !2818, file: !159, line: 406, baseType: !13, size: 32, offset: 768)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "hctx_table", scope: !2818, file: !159, line: 409, baseType: !1304, size: 128, offset: 832)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hw_queues", scope: !2818, file: !159, line: 410, baseType: !13, size: 32, offset: 960)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "queuedata", scope: !2818, file: !159, line: 416, baseType: !28, size: 64, offset: 1024)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "queue_flags", scope: !2818, file: !159, line: 421, baseType: !47, size: 64, offset: 1088)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "pm_only", scope: !2818, file: !159, line: 426, baseType: !57, size: 32, offset: 1152)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2818, file: !159, line: 432, baseType: !30, size: 32, offset: 1184)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "queue_lock", scope: !2818, file: !159, line: 434, baseType: !67, size: 32, offset: 1216)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "disk", scope: !2818, file: !159, line: 436, baseType: !2624, size: 64, offset: 1280)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !2818, file: !159, line: 438, baseType: !715, size: 32, offset: 1344)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "mq_kobj", scope: !2818, file: !159, line: 443, baseType: !549, size: 64, offset: 1408)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2818, file: !159, line: 450, baseType: !2871, size: 64, offset: 1472)
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !171, line: 705, size: 5824, elements: !2873)
!2873 = !{!2874, !2875, !2876, !2879, !2880, !2932, !3002, !3003, !3004, !3005, !3006, !3013, !3177, !3190, !3200, !3204, !3206, !3207, !3208, !3212, !3219, !3220, !3223, !3226, !3230, !3233, !3234, !3235, !3236, !3237, !3238, !3268, !3269, !3270, !3273, !3276, !3285, !3286, !3287, !3288, !3289, !3290}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2872, file: !171, line: 706, baseType: !543, size: 512)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2872, file: !171, line: 707, baseType: !2871, size: 64, offset: 512)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2872, file: !171, line: 709, baseType: !2877, size: 64, offset: 576)
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2878, size: 64)
!2878 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !171, line: 37, flags: DIFlagFwdDecl)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2872, file: !171, line: 711, baseType: !25, size: 64, offset: 640)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2872, file: !171, line: 712, baseType: !2881, size: 64, offset: 704)
!2881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2882, size: 64)
!2882 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2883)
!2883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !171, line: 89, size: 384, elements: !2884)
!2884 = !{!2885, !2886, !2887, !2893, !2897, !2901}
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2883, file: !171, line: 90, baseType: !25, size: 64)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2883, file: !171, line: 91, baseType: !629, size: 64, offset: 64)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2883, file: !171, line: 92, baseType: !2888, size: 64, offset: 128)
!2888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2889 = !DISubroutineType(types: !2890)
!2890 = !{!30, !2891, !579}
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2892, size: 64)
!2892 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2872)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2883, file: !171, line: 93, baseType: !2894, size: 64, offset: 192)
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{!484, !2891, !2800, !1058, !1059}
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2883, file: !171, line: 95, baseType: !2898, size: 64, offset: 256)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = !DISubroutineType(types: !2900)
!2900 = !{null, !2871}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2883, file: !171, line: 97, baseType: !2902, size: 64, offset: 320)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2904)
!2904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !183, line: 286, size: 1472, elements: !2905)
!2905 = !{!2906, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2904, file: !183, line: 287, baseType: !2907, size: 64)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DISubroutineType(types: !2909)
!2909 = !{!30, !2871}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2904, file: !183, line: 288, baseType: !2898, size: 64, offset: 64)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2904, file: !183, line: 289, baseType: !2907, size: 64, offset: 128)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2904, file: !183, line: 290, baseType: !2907, size: 64, offset: 192)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2904, file: !183, line: 291, baseType: !2907, size: 64, offset: 256)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2904, file: !183, line: 292, baseType: !2907, size: 64, offset: 320)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2904, file: !183, line: 293, baseType: !2907, size: 64, offset: 384)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2904, file: !183, line: 294, baseType: !2907, size: 64, offset: 448)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2904, file: !183, line: 295, baseType: !2907, size: 64, offset: 512)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2904, file: !183, line: 296, baseType: !2907, size: 64, offset: 576)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2904, file: !183, line: 297, baseType: !2907, size: 64, offset: 640)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2904, file: !183, line: 298, baseType: !2907, size: 64, offset: 704)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2904, file: !183, line: 299, baseType: !2907, size: 64, offset: 768)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2904, file: !183, line: 300, baseType: !2907, size: 64, offset: 832)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2904, file: !183, line: 301, baseType: !2907, size: 64, offset: 896)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2904, file: !183, line: 302, baseType: !2907, size: 64, offset: 960)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2904, file: !183, line: 303, baseType: !2907, size: 64, offset: 1024)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2904, file: !183, line: 304, baseType: !2907, size: 64, offset: 1088)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2904, file: !183, line: 305, baseType: !2907, size: 64, offset: 1152)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2904, file: !183, line: 306, baseType: !2907, size: 64, offset: 1216)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2904, file: !183, line: 307, baseType: !2907, size: 64, offset: 1280)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2904, file: !183, line: 308, baseType: !2907, size: 64, offset: 1344)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2904, file: !183, line: 309, baseType: !2907, size: 64, offset: 1408)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2872, file: !171, line: 714, baseType: !2933, size: 64, offset: 768)
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2934, size: 64)
!2934 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2935)
!2935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2936, line: 80, size: 1344, elements: !2937)
!2936 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2937 = !{!2938, !2939, !2940, !2941, !2942, !2943, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !3001}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2935, file: !2936, line: 81, baseType: !25, size: 64)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2935, file: !2936, line: 82, baseType: !25, size: 64, offset: 64)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2935, file: !2936, line: 83, baseType: !629, size: 64, offset: 128)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2935, file: !2936, line: 84, baseType: !629, size: 64, offset: 192)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2935, file: !2936, line: 85, baseType: !629, size: 64, offset: 256)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2935, file: !2936, line: 87, baseType: !2944, size: 64, offset: 320)
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!2945 = !DISubroutineType(types: !2946)
!2946 = !{!30, !2871, !2947}
!2947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2948, size: 64)
!2948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !165, line: 96, size: 1152, elements: !2949)
!2949 = !{!2950, !2951, !2952, !2953, !2954, !2955, !2956, !2960, !2964, !2965, !2966, !2967, !2968, !2976, !2977, !2978, !2979, !2980, !2981}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2948, file: !165, line: 97, baseType: !25, size: 64)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2948, file: !165, line: 98, baseType: !2933, size: 64, offset: 64)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2948, file: !165, line: 100, baseType: !530, size: 64, offset: 128)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2948, file: !165, line: 101, baseType: !25, size: 64, offset: 192)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2948, file: !165, line: 103, baseType: !862, size: 8, offset: 256)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2948, file: !165, line: 104, baseType: !164, size: 32, offset: 288)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2948, file: !165, line: 106, baseType: !2957, size: 64, offset: 320)
!2957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2958, size: 64)
!2958 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2959)
!2959 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !165, line: 106, flags: DIFlagFwdDecl)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2948, file: !165, line: 107, baseType: !2961, size: 64, offset: 384)
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2963)
!2963 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !165, line: 107, flags: DIFlagFwdDecl)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2948, file: !165, line: 109, baseType: !2907, size: 64, offset: 448)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2948, file: !165, line: 110, baseType: !2898, size: 64, offset: 512)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2948, file: !165, line: 111, baseType: !2907, size: 64, offset: 576)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2948, file: !165, line: 112, baseType: !2898, size: 64, offset: 640)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2948, file: !165, line: 113, baseType: !2969, size: 64, offset: 704)
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = !DISubroutineType(types: !2971)
!2971 = !{!30, !2871, !2972}
!2972 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !183, line: 60, baseType: !2973)
!2973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !183, line: 58, size: 32, elements: !2974)
!2974 = !{!2975}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2973, file: !183, line: 59, baseType: !30, size: 32)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2948, file: !165, line: 114, baseType: !2907, size: 64, offset: 768)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2948, file: !165, line: 115, baseType: !629, size: 64, offset: 832)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2948, file: !165, line: 116, baseType: !629, size: 64, offset: 896)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2948, file: !165, line: 118, baseType: !2902, size: 64, offset: 960)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2948, file: !165, line: 119, baseType: !2898, size: 64, offset: 1024)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2948, file: !165, line: 121, baseType: !2982, size: 64, offset: 1088)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2983 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !165, line: 121, flags: DIFlagFwdDecl)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2935, file: !2936, line: 88, baseType: !2888, size: 64, offset: 384)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2935, file: !2936, line: 89, baseType: !2907, size: 64, offset: 448)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2935, file: !2936, line: 90, baseType: !2898, size: 64, offset: 512)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2935, file: !2936, line: 91, baseType: !2898, size: 64, offset: 576)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2935, file: !2936, line: 92, baseType: !2898, size: 64, offset: 640)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2935, file: !2936, line: 94, baseType: !2907, size: 64, offset: 704)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2935, file: !2936, line: 95, baseType: !2907, size: 64, offset: 768)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2935, file: !2936, line: 97, baseType: !2969, size: 64, offset: 832)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2935, file: !2936, line: 98, baseType: !2907, size: 64, offset: 896)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2935, file: !2936, line: 100, baseType: !2907, size: 64, offset: 960)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2935, file: !2936, line: 102, baseType: !2907, size: 64, offset: 1024)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2935, file: !2936, line: 103, baseType: !2898, size: 64, offset: 1088)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2935, file: !2936, line: 105, baseType: !2902, size: 64, offset: 1152)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2935, file: !2936, line: 107, baseType: !2998, size: 64, offset: 1216)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3000)
!3000 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2936, line: 107, flags: DIFlagFwdDecl)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2935, file: !2936, line: 109, baseType: !862, size: 8, offset: 1280)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2872, file: !171, line: 715, baseType: !2947, size: 64, offset: 832)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2872, file: !171, line: 717, baseType: !28, size: 64, offset: 896)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2872, file: !171, line: 719, baseType: !28, size: 64, offset: 960)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2872, file: !171, line: 721, baseType: !286, size: 256, offset: 1024)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2872, file: !171, line: 725, baseType: !3007, size: 448, offset: 1280)
!3007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !171, line: 517, size: 448, elements: !3008)
!3008 = !{!3009, !3010, !3011, !3012}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3007, file: !171, line: 518, baseType: !105, size: 128)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3007, file: !171, line: 519, baseType: !105, size: 128, offset: 128)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !3007, file: !171, line: 520, baseType: !105, size: 128, offset: 256)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3007, file: !171, line: 521, baseType: !170, size: 32, offset: 384)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2872, file: !171, line: 726, baseType: !3014, size: 2496, offset: 1728)
!3014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !183, line: 663, size: 2496, elements: !3015)
!3015 = !{!3016, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3060, !3061, !3062, !3063, !3064, !3065, !3136, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3170, !3174}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3014, file: !183, line: 664, baseType: !2972, size: 32)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3014, file: !183, line: 665, baseType: !13, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3014, file: !183, line: 666, baseType: !13, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3014, file: !183, line: 667, baseType: !862, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3014, file: !183, line: 668, baseType: !862, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3014, file: !183, line: 669, baseType: !862, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3014, file: !183, line: 670, baseType: !862, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3014, file: !183, line: 671, baseType: !862, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3014, file: !183, line: 672, baseType: !862, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3014, file: !183, line: 673, baseType: !862, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3014, file: !183, line: 674, baseType: !862, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3014, file: !183, line: 675, baseType: !412, size: 32, offset: 64)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3014, file: !183, line: 676, baseType: !67, size: 32, offset: 96)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3014, file: !183, line: 678, baseType: !105, size: 128, offset: 128)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3014, file: !183, line: 679, baseType: !1033, size: 256, offset: 256)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3014, file: !183, line: 680, baseType: !3032, size: 64, offset: 512)
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3033, size: 64)
!3033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3034, line: 43, size: 1536, elements: !3035)
!3034 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!3035 = !{!3036, !3037, !3038, !3039, !3040, !3043, !3044, !3045, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3033, file: !3034, line: 44, baseType: !25, size: 64)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3033, file: !3034, line: 45, baseType: !30, size: 32, offset: 64)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3033, file: !3034, line: 46, baseType: !105, size: 128, offset: 128)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3033, file: !3034, line: 47, baseType: !67, size: 32, offset: 256)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3033, file: !3034, line: 48, baseType: !3041, size: 64, offset: 320)
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !183, line: 629, flags: DIFlagFwdDecl)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3033, file: !3034, line: 49, baseType: !2196, size: 320, offset: 384)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3033, file: !3034, line: 50, baseType: !47, size: 64, offset: 704)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3033, file: !3034, line: 51, baseType: !3046, size: 64, offset: 768)
!3046 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !3047, line: 29, baseType: !296)
!3047 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3033, file: !3034, line: 52, baseType: !3046, size: 64, offset: 832)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3033, file: !3034, line: 53, baseType: !3046, size: 64, offset: 896)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3033, file: !3034, line: 54, baseType: !3046, size: 64, offset: 960)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3033, file: !3034, line: 55, baseType: !3046, size: 64, offset: 1024)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3033, file: !3034, line: 56, baseType: !47, size: 64, offset: 1088)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3033, file: !3034, line: 57, baseType: !47, size: 64, offset: 1152)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3033, file: !3034, line: 58, baseType: !47, size: 64, offset: 1216)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3033, file: !3034, line: 59, baseType: !47, size: 64, offset: 1280)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3033, file: !3034, line: 60, baseType: !47, size: 64, offset: 1344)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3033, file: !3034, line: 61, baseType: !2871, size: 64, offset: 1408)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3033, file: !3034, line: 62, baseType: !862, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3033, file: !3034, line: 63, baseType: !862, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3014, file: !183, line: 681, baseType: !862, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3014, file: !183, line: 682, baseType: !862, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3014, file: !183, line: 683, baseType: !862, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3014, file: !183, line: 684, baseType: !13, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3014, file: !183, line: 685, baseType: !13, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3014, file: !183, line: 690, baseType: !3066, size: 512, offset: 640)
!3066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !178, line: 118, size: 512, elements: !3067)
!3067 = !{!3068, !3074, !3075, !3080, !3132, !3133, !3134, !3135}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3066, file: !178, line: 119, baseType: !3069, size: 256)
!3069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !3070, line: 9, size: 256, elements: !3071)
!3070 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!3071 = !{!3072, !3073}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3069, file: !3070, line: 10, baseType: !795, size: 192, align: 64)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3069, file: !3070, line: 11, baseType: !3046, size: 64, offset: 192)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !3066, file: !178, line: 120, baseType: !3046, size: 64, offset: 256)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3066, file: !178, line: 121, baseType: !3076, size: 64, offset: 320)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{!177, !3079}
!3079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3066, file: !178, line: 122, baseType: !3081, size: 64, offset: 384)
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !178, line: 159, size: 512, align: 512, elements: !3083)
!3083 = !{!3084, !3109, !3110, !3113, !3118, !3119, !3127, !3131}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !3082, file: !178, line: 160, baseType: !3085, size: 64)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !178, line: 215, size: 4608, align: 512, elements: !3087)
!3087 = !{!3088, !3089, !3090, !3091, !3092, !3093, !3094, !3095, !3096, !3097, !3098, !3099, !3100, !3101, !3102, !3103, !3104, !3105}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3086, file: !178, line: 216, baseType: !299, size: 32)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3086, file: !178, line: 217, baseType: !13, size: 32, offset: 32)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !3086, file: !178, line: 218, baseType: !13, size: 32, offset: 64)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !3086, file: !178, line: 219, baseType: !13, size: 32, offset: 96)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !3086, file: !178, line: 220, baseType: !13, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !3086, file: !178, line: 221, baseType: !13, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !3086, file: !178, line: 222, baseType: !13, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !3086, file: !178, line: 223, baseType: !13, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3086, file: !178, line: 224, baseType: !13, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3086, file: !178, line: 226, baseType: !13, size: 32, offset: 160)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !3086, file: !178, line: 227, baseType: !34, size: 16, offset: 192)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !3086, file: !178, line: 228, baseType: !34, size: 16, offset: 208)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !3086, file: !178, line: 229, baseType: !13, size: 32, offset: 224)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !3086, file: !178, line: 235, baseType: !3046, size: 64, offset: 256)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !3086, file: !178, line: 236, baseType: !3079, size: 64, offset: 320)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !3086, file: !178, line: 237, baseType: !3046, size: 64, offset: 384)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !3086, file: !178, line: 238, baseType: !3079, size: 64, offset: 448)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !3086, file: !178, line: 239, baseType: !3106, size: 4096, align: 512, offset: 512)
!3106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3082, size: 4096, align: 512, elements: !3107)
!3107 = !{!3108}
!3108 = !DISubrange(count: 8)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3082, file: !178, line: 161, baseType: !13, size: 32, offset: 64)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3082, file: !178, line: 162, baseType: !3111, size: 32, offset: 96)
!3111 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !33, line: 32, baseType: !3112)
!3112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !45, line: 96, baseType: !30)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !3082, file: !178, line: 163, baseType: !3114, size: 32, offset: 128)
!3114 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !385, line: 274, baseType: !3115)
!3115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !385, line: 274, size: 32, elements: !3116)
!3116 = !{!3117}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3115, file: !385, line: 274, baseType: !389, size: 32)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !3082, file: !178, line: 164, baseType: !3079, size: 64, offset: 192)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3082, file: !178, line: 165, baseType: !3120, size: 128, offset: 256)
!3120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !3070, line: 14, size: 128, elements: !3121)
!3121 = !{!3122}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !3120, file: !3070, line: 15, baseType: !3123, size: 128)
!3123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !796, line: 26, size: 128, elements: !3124)
!3124 = !{!3125, !3126}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !3123, file: !796, line: 27, baseType: !1075, size: 64)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !3123, file: !796, line: 28, baseType: !800, size: 64, offset: 64)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !3082, file: !178, line: 166, baseType: !3128, size: 64, offset: 384)
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3129, size: 64)
!3129 = !DISubroutineType(types: !3130)
!3130 = !{!3046}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3082, file: !178, line: 167, baseType: !3046, size: 64, offset: 448)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3066, file: !178, line: 123, baseType: !91, size: 8, offset: 448)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !3066, file: !178, line: 124, baseType: !91, size: 8, offset: 456)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !3066, file: !178, line: 125, baseType: !91, size: 8, offset: 464)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !3066, file: !178, line: 126, baseType: !91, size: 8, offset: 472)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3014, file: !183, line: 691, baseType: !416, size: 64, offset: 1152)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3014, file: !183, line: 692, baseType: !994, size: 256, offset: 1216)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3014, file: !183, line: 693, baseType: !62, size: 192, offset: 1472)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3014, file: !183, line: 694, baseType: !3041, size: 64, offset: 1664)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3014, file: !183, line: 695, baseType: !57, size: 32, offset: 1728)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3014, file: !183, line: 696, baseType: !57, size: 32, offset: 1760)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3014, file: !183, line: 697, baseType: !13, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3014, file: !183, line: 698, baseType: !13, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3014, file: !183, line: 699, baseType: !13, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3014, file: !183, line: 700, baseType: !13, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !3014, file: !183, line: 701, baseType: !13, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3014, file: !183, line: 702, baseType: !13, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3014, file: !183, line: 703, baseType: !862, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3014, file: !183, line: 704, baseType: !13, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3014, file: !183, line: 705, baseType: !13, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3014, file: !183, line: 706, baseType: !13, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3014, file: !183, line: 707, baseType: !13, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3014, file: !183, line: 708, baseType: !13, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3014, file: !183, line: 709, baseType: !13, size: 32, offset: 1824)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3014, file: !183, line: 710, baseType: !182, size: 32, offset: 1856)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3014, file: !183, line: 711, baseType: !190, size: 32, offset: 1888)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !3014, file: !183, line: 712, baseType: !190, size: 32, offset: 1920)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3014, file: !183, line: 713, baseType: !30, size: 32, offset: 1952)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3014, file: !183, line: 714, baseType: !30, size: 32, offset: 1984)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3014, file: !183, line: 715, baseType: !416, size: 64, offset: 2048)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3014, file: !183, line: 716, baseType: !416, size: 64, offset: 2112)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3014, file: !183, line: 717, baseType: !416, size: 64, offset: 2176)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3014, file: !183, line: 718, baseType: !416, size: 64, offset: 2240)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3014, file: !183, line: 720, baseType: !3165, size: 64, offset: 2304)
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3166, size: 64)
!3166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !183, line: 632, size: 64, elements: !3167)
!3167 = !{!3168, !3169}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3166, file: !183, line: 633, baseType: !67, size: 32)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3166, file: !183, line: 634, baseType: !13, size: 32, offset: 32)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3014, file: !183, line: 721, baseType: !3171, size: 64, offset: 2368)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = !DISubroutineType(types: !3173)
!3173 = !{null, !2871, !788}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3014, file: !183, line: 722, baseType: !3175, size: 64, offset: 2432)
!3175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3176, size: 64)
!3176 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !183, line: 722, flags: DIFlagFwdDecl)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2872, file: !171, line: 727, baseType: !3178, size: 64, offset: 4224)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !183, line: 742, size: 1792, elements: !3180)
!3180 = !{!3181, !3182, !3183, !3187, !3188, !3189}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3179, file: !183, line: 743, baseType: !2904, size: 1472)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3179, file: !183, line: 744, baseType: !2907, size: 64, offset: 1472)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3179, file: !183, line: 745, baseType: !3184, size: 64, offset: 1536)
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3185, size: 64)
!3185 = !DISubroutineType(types: !3186)
!3186 = !{null, !2871, !862}
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3179, file: !183, line: 746, baseType: !2907, size: 64, offset: 1600)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3179, file: !183, line: 747, baseType: !2898, size: 64, offset: 1664)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3179, file: !183, line: 748, baseType: !2898, size: 64, offset: 1728)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2872, file: !171, line: 736, baseType: !3191, size: 128, offset: 4288)
!3191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !171, line: 529, size: 128, elements: !3192)
!3192 = !{!3193, !3197}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3191, file: !171, line: 531, baseType: !3194, size: 64)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3195, size: 64)
!3195 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3196, line: 13, flags: DIFlagFwdDecl)
!3196 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3191, file: !171, line: 532, baseType: !3198, size: 64, offset: 64)
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3199, size: 64)
!3199 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !171, line: 49, flags: DIFlagFwdDecl)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2872, file: !171, line: 738, baseType: !3201, size: 64, offset: 4416)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3203)
!3203 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !171, line: 738, flags: DIFlagFwdDecl)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2872, file: !171, line: 740, baseType: !3205, size: 64, offset: 4480)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2872, file: !171, line: 741, baseType: !416, size: 64, offset: 4544)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2872, file: !171, line: 746, baseType: !416, size: 64, offset: 4608)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2872, file: !171, line: 747, baseType: !3209, size: 64, offset: 4672)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3211)
!3211 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !171, line: 747, flags: DIFlagFwdDecl)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2872, file: !171, line: 749, baseType: !3213, size: 64, offset: 4736)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !171, line: 428, size: 128, elements: !3215)
!3215 = !{!3216, !3217, !3218}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3214, file: !171, line: 433, baseType: !13, size: 32)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3214, file: !171, line: 434, baseType: !13, size: 32, offset: 32)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3214, file: !171, line: 435, baseType: !47, size: 64, offset: 64)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2872, file: !171, line: 751, baseType: !105, size: 128, offset: 4800)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2872, file: !171, line: 762, baseType: !3221, size: 64, offset: 4928)
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3222 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !171, line: 762, flags: DIFlagFwdDecl)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2872, file: !171, line: 770, baseType: !3224, offset: 4992)
!3224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3225, line: 5, elements: !1398)
!3225 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2872, file: !171, line: 772, baseType: !3227, size: 64, offset: 4992)
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3229, line: 18, flags: DIFlagFwdDecl)
!3229 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2872, file: !171, line: 773, baseType: !3231, size: 64, offset: 5056)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3232, size: 64)
!3232 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2936, line: 22, flags: DIFlagFwdDecl)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2872, file: !171, line: 776, baseType: !30, size: 32, offset: 5120)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2872, file: !171, line: 778, baseType: !500, size: 32, offset: 5152)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2872, file: !171, line: 779, baseType: !412, size: 32, offset: 5184)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2872, file: !171, line: 781, baseType: !67, size: 32, offset: 5216)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2872, file: !171, line: 782, baseType: !105, size: 128, offset: 5248)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2872, file: !171, line: 784, baseType: !3239, size: 64, offset: 5376)
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3241)
!3241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3242, line: 52, size: 768, elements: !3243)
!3242 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3243 = !{!3244, !3245, !3246, !3247, !3248, !3252, !3256, !3257, !3258, !3259, !3263, !3267}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3241, file: !3242, line: 53, baseType: !25, size: 64)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3241, file: !3242, line: 55, baseType: !629, size: 64, offset: 64)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3241, file: !3242, line: 56, baseType: !629, size: 64, offset: 128)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3241, file: !3242, line: 58, baseType: !2888, size: 64, offset: 192)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3241, file: !3242, line: 59, baseType: !3249, size: 64, offset: 256)
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = !DISubroutineType(types: !3251)
!3251 = !{!484, !2891, !2800}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3241, file: !3242, line: 61, baseType: !3253, size: 64, offset: 320)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = !DISubroutineType(types: !3255)
!3255 = !{null, !3239}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3241, file: !3242, line: 62, baseType: !2898, size: 64, offset: 384)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3241, file: !3242, line: 64, baseType: !2907, size: 64, offset: 448)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3241, file: !3242, line: 66, baseType: !1818, size: 64, offset: 512)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3241, file: !3242, line: 67, baseType: !3260, size: 64, offset: 576)
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = !DISubroutineType(types: !3262)
!3262 = !{!1493, !2891}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3241, file: !3242, line: 69, baseType: !3264, size: 64, offset: 640)
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3265 = !DISubroutineType(types: !3266)
!3266 = !{null, !2891, !1058, !1059}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3241, file: !3242, line: 71, baseType: !2902, size: 64, offset: 704)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2872, file: !171, line: 785, baseType: !629, size: 64, offset: 5440)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2872, file: !171, line: 787, baseType: !2898, size: 64, offset: 5504)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2872, file: !171, line: 788, baseType: !3271, size: 64, offset: 5568)
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !171, line: 46, flags: DIFlagFwdDecl)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2872, file: !171, line: 789, baseType: !3274, size: 64, offset: 5632)
!3274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3275, size: 64)
!3275 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !171, line: 48, flags: DIFlagFwdDecl)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2872, file: !171, line: 791, baseType: !3277, size: 64, offset: 5696)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !171, line: 597, size: 128, elements: !3279)
!3279 = !{!3280, !3281, !3282, !3283, !3284}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3278, file: !171, line: 598, baseType: !203, size: 32)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3278, file: !171, line: 599, baseType: !212, size: 32, offset: 32)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3278, file: !171, line: 600, baseType: !217, size: 32, offset: 64)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3278, file: !171, line: 601, baseType: !862, size: 8, offset: 96)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3278, file: !171, line: 602, baseType: !862, size: 8, offset: 104)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2872, file: !171, line: 793, baseType: !222, size: 32, offset: 5760)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2872, file: !171, line: 795, baseType: !862, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2872, file: !171, line: 796, baseType: !862, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2872, file: !171, line: 797, baseType: !862, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2872, file: !171, line: 798, baseType: !862, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2872, file: !171, line: 799, baseType: !862, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "rpm_status", scope: !2818, file: !159, line: 451, baseType: !190, size: 32, offset: 1536)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "nr_requests", scope: !2818, file: !159, line: 457, baseType: !47, size: 64, offset: 1600)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pad_mask", scope: !2818, file: !159, line: 459, baseType: !13, size: 32, offset: 1664)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "rq_timeout", scope: !2818, file: !159, line: 466, baseType: !13, size: 32, offset: 1696)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2818, file: !159, line: 468, baseType: !2196, size: 320, offset: 1728)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_work", scope: !2818, file: !159, line: 469, baseType: !994, size: 256, offset: 2048)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "nr_active_requests_shared_tags", scope: !2818, file: !159, line: 471, baseType: !57, size: 32, offset: 2304)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "sched_shared_tags", scope: !2818, file: !159, line: 473, baseType: !3299, size: 64, offset: 2368)
!3299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3300, size: 64)
!3300 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tags", file: !159, line: 473, flags: DIFlagFwdDecl)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2818, file: !159, line: 475, baseType: !105, size: 128, offset: 2432)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "blkcg_pols", scope: !2818, file: !159, line: 477, baseType: !3303, size: 64, offset: 2560)
!3303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 64, elements: !3304)
!3304 = !{!3305}
!3305 = !DISubrange(count: 1)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "root_blkg", scope: !2818, file: !159, line: 478, baseType: !2671, size: 64, offset: 2624)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "blkg_list", scope: !2818, file: !159, line: 479, baseType: !105, size: 128, offset: 2688)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "blkcg_mutex", scope: !2818, file: !159, line: 480, baseType: !286, size: 256, offset: 2816)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "limits", scope: !2818, file: !159, line: 483, baseType: !3310, size: 960, offset: 3072)
!3310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "queue_limits", file: !159, line: 300, size: 960, elements: !3311)
!3311 = !{!3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341}
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "bounce", scope: !3310, file: !159, line: 301, baseType: !228, size: 32)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "seg_boundary_mask", scope: !3310, file: !159, line: 302, baseType: !47, size: 64, offset: 64)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "virt_boundary_mask", scope: !3310, file: !159, line: 303, baseType: !47, size: 64, offset: 128)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_sectors", scope: !3310, file: !159, line: 305, baseType: !13, size: 32, offset: 192)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "max_dev_sectors", scope: !3310, file: !159, line: 306, baseType: !13, size: 32, offset: 224)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_sectors", scope: !3310, file: !159, line: 307, baseType: !13, size: 32, offset: 256)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "max_sectors", scope: !3310, file: !159, line: 308, baseType: !13, size: 32, offset: 288)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "max_user_sectors", scope: !3310, file: !159, line: 309, baseType: !13, size: 32, offset: 320)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3310, file: !159, line: 310, baseType: !13, size: 32, offset: 352)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "physical_block_size", scope: !3310, file: !159, line: 311, baseType: !13, size: 32, offset: 384)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "logical_block_size", scope: !3310, file: !159, line: 312, baseType: !13, size: 32, offset: 416)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_offset", scope: !3310, file: !159, line: 313, baseType: !13, size: 32, offset: 448)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "io_min", scope: !3310, file: !159, line: 314, baseType: !13, size: 32, offset: 480)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "io_opt", scope: !3310, file: !159, line: 315, baseType: !13, size: 32, offset: 512)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_sectors", scope: !3310, file: !159, line: 316, baseType: !13, size: 32, offset: 544)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_discard_sectors", scope: !3310, file: !159, line: 317, baseType: !13, size: 32, offset: 576)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "max_secure_erase_sectors", scope: !3310, file: !159, line: 318, baseType: !13, size: 32, offset: 608)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_zeroes_sectors", scope: !3310, file: !159, line: 319, baseType: !13, size: 32, offset: 640)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "max_zone_append_sectors", scope: !3310, file: !159, line: 320, baseType: !13, size: 32, offset: 672)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "discard_granularity", scope: !3310, file: !159, line: 321, baseType: !13, size: 32, offset: 704)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "discard_alignment", scope: !3310, file: !159, line: 322, baseType: !13, size: 32, offset: 736)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "zone_write_granularity", scope: !3310, file: !159, line: 323, baseType: !13, size: 32, offset: 768)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "max_segments", scope: !3310, file: !159, line: 325, baseType: !34, size: 16, offset: 800)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "max_integrity_segments", scope: !3310, file: !159, line: 326, baseType: !34, size: 16, offset: 816)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_segments", scope: !3310, file: !159, line: 327, baseType: !34, size: 16, offset: 832)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "misaligned", scope: !3310, file: !159, line: 329, baseType: !95, size: 8, offset: 848)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "discard_misaligned", scope: !3310, file: !159, line: 330, baseType: !95, size: 8, offset: 856)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "raid_partial_stripes_expensive", scope: !3310, file: !159, line: 331, baseType: !95, size: 8, offset: 864)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "zoned", scope: !3310, file: !159, line: 332, baseType: !232, size: 32, offset: 896)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alignment", scope: !3310, file: !159, line: 339, baseType: !13, size: 32, offset: 928)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "required_elevator_features", scope: !2818, file: !159, line: 485, baseType: !13, size: 32, offset: 4032)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2818, file: !159, line: 487, baseType: !30, size: 32, offset: 4064)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "blk_trace", scope: !2818, file: !159, line: 489, baseType: !3345, size: 64, offset: 4096)
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3346, size: 64)
!3346 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_trace", file: !159, line: 31, flags: DIFlagFwdDecl)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "fq", scope: !2818, file: !159, line: 494, baseType: !3348, size: 64, offset: 4160)
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3349 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_flush_queue", file: !159, line: 35, flags: DIFlagFwdDecl)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "flush_list", scope: !2818, file: !159, line: 495, baseType: !105, size: 128, offset: 4224)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_list", scope: !2818, file: !159, line: 497, baseType: !105, size: 128, offset: 4352)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_lock", scope: !2818, file: !159, line: 498, baseType: !67, size: 32, offset: 4480)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_work", scope: !2818, file: !159, line: 499, baseType: !2253, size: 704, offset: 4544)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_lock", scope: !2818, file: !159, line: 501, baseType: !286, size: 256, offset: 5248)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_dir_lock", scope: !2818, file: !159, line: 502, baseType: !286, size: 256, offset: 5504)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_list", scope: !2818, file: !159, line: 508, baseType: !105, size: 128, offset: 5760)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_lock", scope: !2818, file: !159, line: 509, baseType: !67, size: 32, offset: 5888)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_depth", scope: !2818, file: !159, line: 511, baseType: !30, size: 32, offset: 5920)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2818, file: !159, line: 517, baseType: !670, size: 128, align: 64, offset: 5952)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_wq", scope: !2818, file: !159, line: 518, baseType: !62, size: 192, offset: 6080)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_lock", scope: !2818, file: !159, line: 523, baseType: !286, size: 256, offset: 6272)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "quiesce_depth", scope: !2818, file: !159, line: 525, baseType: !30, size: 32, offset: 6528)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set", scope: !2818, file: !159, line: 527, baseType: !3364, size: 64, offset: 6592)
!3364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3365, size: 64)
!3365 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tag_set", file: !159, line: 527, flags: DIFlagFwdDecl)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set_list", scope: !2818, file: !159, line: 528, baseType: !105, size: 128, offset: 6656)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_dir", scope: !2818, file: !159, line: 530, baseType: !378, size: 64, offset: 6784)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "sched_debugfs_dir", scope: !2818, file: !159, line: 531, baseType: !378, size: 64, offset: 6848)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "rqos_debugfs_dir", scope: !2818, file: !159, line: 532, baseType: !378, size: 64, offset: 6912)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_mutex", scope: !2818, file: !159, line: 536, baseType: !286, size: 256, offset: 6976)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "mq_sysfs_init_done", scope: !2818, file: !159, line: 538, baseType: !862, size: 8, offset: 7232)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !2625, file: !159, line: 147, baseType: !28, size: 64, offset: 704)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "bio_split", scope: !2625, file: !159, line: 149, baseType: !2687, size: 1984, offset: 768)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2625, file: !159, line: 151, baseType: !30, size: 32, offset: 2752)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2625, file: !159, line: 152, baseType: !47, size: 64, offset: 2816)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "open_mutex", scope: !2625, file: !159, line: 161, baseType: !286, size: 256, offset: 2880)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "open_partitions", scope: !2625, file: !159, line: 162, baseType: !13, size: 32, offset: 3136)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !2625, file: !159, line: 164, baseType: !3379, size: 64, offset: 3200)
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3380, size: 64)
!3380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !238, line: 163, size: 6848, elements: !3381)
!3381 = !{!3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3428, !3429, !3430, !3431, !3433, !3434, !3435}
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3380, file: !238, line: 164, baseType: !416, size: 64)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3380, file: !238, line: 165, baseType: !795, size: 192, align: 64, offset: 64)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !3380, file: !238, line: 166, baseType: !105, size: 128, offset: 256)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3380, file: !238, line: 167, baseType: !47, size: 64, offset: 384)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !3380, file: !238, line: 168, baseType: !47, size: 64, offset: 448)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3380, file: !238, line: 170, baseType: !1946, size: 32, offset: 512)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !3380, file: !238, line: 171, baseType: !13, size: 32, offset: 544)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !3380, file: !238, line: 172, baseType: !13, size: 32, offset: 576)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !3380, file: !238, line: 173, baseType: !13, size: 32, offset: 608)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !3380, file: !238, line: 173, baseType: !13, size: 32, offset: 640)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !3380, file: !238, line: 179, baseType: !290, size: 64, offset: 704)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "last_bdp_sleep", scope: !3380, file: !238, line: 184, baseType: !47, size: 64, offset: 768)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !3380, file: !238, line: 186, baseType: !3395, size: 4672, offset: 832)
!3395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !238, line: 105, size: 4672, elements: !3396)
!3396 = !{!3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3421, !3422, !3423, !3424, !3425, !3426, !3427}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !3395, file: !238, line: 106, baseType: !3379, size: 64)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3395, file: !238, line: 108, baseType: !47, size: 64, offset: 64)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !3395, file: !238, line: 109, baseType: !47, size: 64, offset: 128)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !3395, file: !238, line: 111, baseType: !105, size: 128, offset: 192)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !3395, file: !238, line: 112, baseType: !105, size: 128, offset: 320)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !3395, file: !238, line: 113, baseType: !105, size: 128, offset: 448)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !3395, file: !238, line: 114, baseType: !105, size: 128, offset: 576)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !3395, file: !238, line: 115, baseType: !67, size: 32, offset: 704)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_inodes", scope: !3395, file: !238, line: 117, baseType: !57, size: 32, offset: 736)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !3395, file: !238, line: 118, baseType: !1461, size: 1280, offset: 768)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !3395, file: !238, line: 120, baseType: !47, size: 64, offset: 2048)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !3395, file: !238, line: 121, baseType: !47, size: 64, offset: 2112)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !3395, file: !238, line: 122, baseType: !47, size: 64, offset: 2176)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !3395, file: !238, line: 123, baseType: !47, size: 64, offset: 2240)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !3395, file: !238, line: 124, baseType: !47, size: 64, offset: 2304)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !3395, file: !238, line: 132, baseType: !47, size: 64, offset: 2368)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !3395, file: !238, line: 133, baseType: !47, size: 64, offset: 2432)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !3395, file: !238, line: 135, baseType: !3415, size: 384, offset: 2496)
!3415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !3416, line: 76, size: 384, elements: !3417)
!3416 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a71374c9cbe54a4b0f3b6bbea75a8cfc")
!3417 = !{!3418, !3419, !3420}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3415, file: !3416, line: 78, baseType: !920, size: 320)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3415, file: !3416, line: 80, baseType: !13, size: 32, offset: 320)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3415, file: !3416, line: 81, baseType: !299, size: 32, offset: 352)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !3395, file: !238, line: 136, baseType: !30, size: 32, offset: 2880)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !3395, file: !238, line: 137, baseType: !237, size: 32, offset: 2912)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !3395, file: !238, line: 139, baseType: !67, size: 32, offset: 2944)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !3395, file: !238, line: 140, baseType: !105, size: 128, offset: 3008)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !3395, file: !238, line: 141, baseType: !2253, size: 704, offset: 3136)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "bw_dwork", scope: !3395, file: !238, line: 142, baseType: !2253, size: 704, offset: 3840)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !3395, file: !238, line: 144, baseType: !105, size: 128, offset: 4544)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !3380, file: !238, line: 187, baseType: !105, size: 128, offset: 5504)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !3380, file: !238, line: 193, baseType: !62, size: 192, offset: 5632)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3380, file: !238, line: 195, baseType: !2871, size: 64, offset: 5824)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3380, file: !238, line: 196, baseType: !3432, size: 512, offset: 5888)
!3432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !588)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3380, file: !238, line: 197, baseType: !2871, size: 64, offset: 6400)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !3380, file: !238, line: 199, baseType: !2196, size: 320, offset: 6464)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !3380, file: !238, line: 202, baseType: !378, size: 64, offset: 6784)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "queue_kobj", scope: !2625, file: !159, line: 165, baseType: !543, size: 512, offset: 3264)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "slave_dir", scope: !2625, file: !159, line: 166, baseType: !549, size: 64, offset: 3776)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "slave_bdevs", scope: !2625, file: !159, line: 168, baseType: !105, size: 128, offset: 3840)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "random", scope: !2625, file: !159, line: 170, baseType: !3440, size: 64, offset: 3968)
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = !DICompositeType(tag: DW_TAG_structure_type, name: "timer_rand_state", file: !159, line: 170, flags: DIFlagFwdDecl)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "sync_io", scope: !2625, file: !159, line: 171, baseType: !57, size: 32, offset: 4032)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "ev", scope: !2625, file: !159, line: 172, baseType: !3444, size: 64, offset: 4096)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_events", file: !159, line: 104, flags: DIFlagFwdDecl)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "cdi", scope: !2625, file: !159, line: 197, baseType: !3447, size: 64, offset: 4160)
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3448 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdrom_device_info", file: !159, line: 197, flags: DIFlagFwdDecl)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2625, file: !159, line: 199, baseType: !30, size: 32, offset: 4224)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !2625, file: !159, line: 200, baseType: !3451, size: 64, offset: 4288)
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3452 = !DICompositeType(tag: DW_TAG_structure_type, name: "badblocks", file: !159, line: 105, flags: DIFlagFwdDecl)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "lockdep_map", scope: !2625, file: !159, line: 201, baseType: !2224, offset: 4352)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "diskseq", scope: !2625, file: !159, line: 202, baseType: !416, size: 64, offset: 4352)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "open_mode", scope: !2625, file: !159, line: 203, baseType: !2740, size: 32, offset: 4416)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ranges", scope: !2625, file: !159, line: 209, baseType: !3457, size: 64, offset: 4480)
!3457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3458, size: 64)
!3458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_independent_access_ranges", file: !159, line: 384, size: 576, elements: !3459)
!3459 = !{!3460, !3461, !3462, !3463}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3458, file: !159, line: 385, baseType: !543, size: 512)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_registered", scope: !3458, file: !159, line: 386, baseType: !862, size: 8, offset: 512)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ia_ranges", scope: !3458, file: !159, line: 387, baseType: !13, size: 32, offset: 544)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "ia_range", scope: !3458, file: !159, line: 388, baseType: !3464, offset: 576)
!3464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3465, elements: !746)
!3465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_independent_access_range", file: !159, line: 378, size: 640, elements: !3466)
!3466 = !{!3467, !3468, !3469}
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3465, file: !159, line: 379, baseType: !543, size: 512)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "sector", scope: !3465, file: !159, line: 380, baseType: !2621, size: 64, offset: 512)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "nr_sectors", scope: !3465, file: !159, line: 381, baseType: !2621, size: 64, offset: 576)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !2617, file: !2618, line: 44, baseType: !2817, size: 64, offset: 192)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !2617, file: !2618, line: 45, baseType: !3472, size: 64, offset: 256)
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64)
!3473 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !2618, line: 45, flags: DIFlagFwdDecl)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !2617, file: !2618, line: 46, baseType: !47, size: 64, offset: 320)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !2617, file: !2618, line: 47, baseType: !862, size: 8, offset: 384)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !2617, file: !2618, line: 48, baseType: !91, size: 8, offset: 392)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !2617, file: !2618, line: 49, baseType: !862, size: 8, offset: 400)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !2617, file: !2618, line: 50, baseType: !862, size: 8, offset: 408)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !2617, file: !2618, line: 51, baseType: !500, size: 32, offset: 416)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !2617, file: !2618, line: 52, baseType: !57, size: 32, offset: 448)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !2617, file: !2618, line: 53, baseType: !67, size: 32, offset: 480)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !2617, file: !2618, line: 54, baseType: !343, size: 64, offset: 512)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !2617, file: !2618, line: 55, baseType: !28, size: 64, offset: 576)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !2617, file: !2618, line: 56, baseType: !28, size: 64, offset: 640)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !2617, file: !2618, line: 57, baseType: !3486, size: 64, offset: 704)
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3488)
!3488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !159, line: 1477, size: 128, elements: !3489)
!3489 = !{!3490, !3494}
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dead", scope: !3488, file: !159, line: 1478, baseType: !3491, size: 64)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = !DISubroutineType(types: !3493)
!3493 = !{null, !2616, !862}
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3488, file: !159, line: 1483, baseType: !3495, size: 64, offset: 64)
!3495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3496, size: 64)
!3496 = !DISubroutineType(types: !3497)
!3497 = !{null, !2616}
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !2617, file: !2618, line: 58, baseType: !286, size: 256, offset: 768)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !2617, file: !2618, line: 60, baseType: !30, size: 32, offset: 1024)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !2617, file: !2618, line: 61, baseType: !30, size: 32, offset: 1056)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !2617, file: !2618, line: 62, baseType: !549, size: 64, offset: 1088)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !2617, file: !2618, line: 65, baseType: !286, size: 256, offset: 1152)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !2617, file: !2618, line: 66, baseType: !495, size: 64, offset: 1408)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !2617, file: !2618, line: 68, baseType: !3505, size: 64, offset: 1472)
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!3506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !159, line: 63, size: 808, elements: !3507)
!3507 = !{!3508, !3512}
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !3506, file: !159, line: 64, baseType: !3509, size: 296)
!3509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !3510)
!3510 = !{!3511}
!3511 = !DISubrange(count: 37)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "volname", scope: !3506, file: !159, line: 65, baseType: !3513, size: 512, offset: 296)
!3513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 512, elements: !588)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !2617, file: !2618, line: 72, baseType: !862, size: 8, offset: 1536)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !2617, file: !2618, line: 77, baseType: !2872, size: 5824, offset: 1600)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !496, file: !250, line: 1226, baseType: !3517, size: 64, offset: 1664)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !159, line: 1495, size: 128, elements: !3519)
!3519 = !{!3520, !3521}
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !3518, file: !159, line: 1496, baseType: !2616, size: 64)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "holder", scope: !3518, file: !159, line: 1497, baseType: !28, size: 64, offset: 64)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !496, file: !250, line: 1227, baseType: !3379, size: 64, offset: 1728)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !496, file: !250, line: 1228, baseType: !3524, size: 64, offset: 1792)
!3524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3525, size: 64)
!3525 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !250, line: 1228, flags: DIFlagFwdDecl)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !496, file: !250, line: 1229, baseType: !728, size: 128, offset: 1856)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !496, file: !250, line: 1230, baseType: !13, size: 32, offset: 1984)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !496, file: !250, line: 1231, baseType: !3529, size: 2496, offset: 2048)
!3529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !255, line: 521, size: 2496, elements: !3530)
!3530 = !{!3531, !3532, !3533, !3535, !3567}
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3529, file: !255, line: 522, baseType: !13, size: 32)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3529, file: !255, line: 523, baseType: !803, size: 320, offset: 64)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3529, file: !255, line: 524, baseType: !3534, size: 192, offset: 384)
!3534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 192, elements: !584)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3529, file: !255, line: 525, baseType: !3536, size: 1728, offset: 576)
!3536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3537, size: 1728, elements: !584)
!3537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !255, line: 222, size: 576, elements: !3538)
!3538 = !{!3539, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566}
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3537, file: !255, line: 223, baseType: !3540, size: 64)
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3541, size: 64)
!3541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !255, line: 445, size: 256, elements: !3542)
!3542 = !{!3543, !3544, !3557, !3558}
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3541, file: !255, line: 446, baseType: !30, size: 32)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3541, file: !255, line: 447, baseType: !3545, size: 64, offset: 64)
!3545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3546, size: 64)
!3546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3547)
!3547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !255, line: 312, size: 512, elements: !3548)
!3548 = !{!3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556}
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3547, file: !255, line: 313, baseType: !2365, size: 64)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3547, file: !255, line: 314, baseType: !2365, size: 64, offset: 64)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3547, file: !255, line: 315, baseType: !2365, size: 64, offset: 128)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3547, file: !255, line: 316, baseType: !2365, size: 64, offset: 192)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3547, file: !255, line: 317, baseType: !2474, size: 64, offset: 256)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3547, file: !255, line: 318, baseType: !2474, size: 64, offset: 320)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3547, file: !255, line: 319, baseType: !2474, size: 64, offset: 384)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3547, file: !255, line: 320, baseType: !2504, size: 64, offset: 448)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3541, file: !255, line: 448, baseType: !530, size: 64, offset: 128)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3541, file: !255, line: 449, baseType: !3540, size: 64, offset: 192)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3537, file: !255, line: 224, baseType: !30, size: 32, offset: 64)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3537, file: !255, line: 226, baseType: !105, size: 128, offset: 128)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3537, file: !255, line: 227, baseType: !47, size: 64, offset: 256)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3537, file: !255, line: 228, baseType: !13, size: 32, offset: 320)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3537, file: !255, line: 229, baseType: !13, size: 32, offset: 352)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3537, file: !255, line: 230, baseType: !2442, size: 64, offset: 384)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3537, file: !255, line: 231, baseType: !2442, size: 64, offset: 448)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3537, file: !255, line: 232, baseType: !28, size: 64, offset: 512)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3529, file: !255, line: 526, baseType: !3568, size: 192, offset: 2304)
!3568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3545, size: 192, elements: !584)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !496, file: !250, line: 1233, baseType: !3570, size: 2368, offset: 4544)
!3570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !250, line: 1184, size: 2368, elements: !3571)
!3571 = !{!3572, !3573, !3574}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3570, file: !250, line: 1185, baseType: !34, size: 16)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3570, file: !250, line: 1186, baseType: !34, size: 16, offset: 16)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3570, file: !250, line: 1187, baseType: !3575, size: 2304, offset: 64)
!3575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3576, size: 2304, elements: !584)
!3576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3577, line: 12, size: 768, elements: !3578)
!3577 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3578 = !{!3579, !3587, !3588, !5058, !5059}
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3576, file: !3577, line: 13, baseType: !3580, size: 384)
!3580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3581, line: 17, size: 384, elements: !3582)
!3581 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3582 = !{!3583, !3584, !3585, !3586}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3580, file: !3581, line: 18, baseType: !30, size: 32)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3580, file: !3581, line: 19, baseType: !30, size: 32, offset: 32)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3580, file: !3581, line: 20, baseType: !62, size: 192, offset: 64)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3580, file: !3581, line: 22, baseType: !670, size: 128, align: 64, offset: 256)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3576, file: !3577, line: 14, baseType: !2049, size: 64, offset: 384)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3576, file: !3577, line: 15, baseType: !3589, size: 64, offset: 448)
!3589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3590, line: 16, size: 64, elements: !3591)
!3590 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3591 = !{!3592}
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3589, file: !3590, line: 17, baseType: !3593, size: 64)
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3594, size: 64)
!3594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1715, line: 746, size: 58368, elements: !3595)
!3595 = !{!3596, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3676, !3687, !3707, !3711, !3714, !3745, !3746, !3747, !3748, !3756, !3758, !3759, !3760, !3761, !3762, !3763, !3774, !3775, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3792, !3793, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824, !3881, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3894, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3929, !3935, !3936, !3937, !3938, !3939, !3943, !3946, !3953, !3958, !3961, !3964, !3967, !4259, !4457, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4495, !4496, !4497, !4506, !4514, !4515, !4516, !4517, !4518, !4523, !4524, !4525, !4528, !4529, !4531, !4542, !4548, !4556, !4559, !4560, !4646, !4647, !4648, !4649, !4650, !4656, !4657, !4658, !4659, !4660, !4661, !4664, !4678, !4679, !4682, !4683, !4684, !4687, !4688, !4689, !4690, !4691, !4692, !4705, !4706, !4707, !4708, !4709, !4710, !4711, !4712, !4713, !4724, !4725, !4731, !4734, !4735, !4736, !4737, !4738, !4739, !4740, !4741, !4813, !4815, !4816, !4817, !4818, !4819, !4820, !4823, !4824, !4825, !4826, !4827, !4828, !4829, !4830, !4831, !4832, !4833, !4837, !4838, !4839}
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !3594, file: !1715, line: 752, baseType: !3597, size: 192)
!3597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !3598, line: 56, size: 192, elements: !3599)
!3598 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!3599 = !{!3600, !3601, !3602, !3603}
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3597, file: !3598, line: 57, baseType: !47, size: 64)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !3597, file: !3598, line: 58, baseType: !47, size: 64, offset: 64)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3597, file: !3598, line: 59, baseType: !412, size: 32, offset: 128)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3597, file: !3598, line: 61, baseType: !412, size: 32, offset: 160)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !3594, file: !1715, line: 754, baseType: !13, size: 32, offset: 192)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3594, file: !1715, line: 767, baseType: !28, size: 64, offset: 256)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3594, file: !1715, line: 768, baseType: !715, size: 32, offset: 320)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3594, file: !1715, line: 770, baseType: !13, size: 32, offset: 352)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !3594, file: !1715, line: 771, baseType: !13, size: 32, offset: 384)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !3594, file: !1715, line: 774, baseType: !30, size: 32, offset: 416)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !3594, file: !1715, line: 775, baseType: !3611, size: 128, offset: 448)
!3611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !3612, line: 58, size: 128, elements: !3613)
!3612 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!3613 = !{!3614, !3615, !3620, !3621}
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !3611, file: !3612, line: 59, baseType: !664, size: 64)
!3615 = !DIDerivedType(tag: DW_TAG_member, scope: !3611, file: !3612, line: 60, baseType: !3616, size: 32, offset: 64)
!3616 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3611, file: !3612, line: 60, size: 32, elements: !3617)
!3617 = !{!3618, !3619}
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !3616, file: !3612, line: 61, baseType: !13, size: 32)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !3616, file: !3612, line: 62, baseType: !57, size: 32)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !3611, file: !3612, line: 65, baseType: !101, size: 16, offset: 96)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !3611, file: !3612, line: 65, baseType: !101, size: 16, offset: 112)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !3594, file: !1715, line: 776, baseType: !13, size: 32, offset: 576)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !3594, file: !1715, line: 777, baseType: !47, size: 64, offset: 640)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !3594, file: !1715, line: 778, baseType: !3593, size: 64, offset: 704)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !3594, file: !1715, line: 787, baseType: !30, size: 32, offset: 768)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !3594, file: !1715, line: 788, baseType: !30, size: 32, offset: 800)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3594, file: !1715, line: 790, baseType: !30, size: 32, offset: 832)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3594, file: !1715, line: 792, baseType: !30, size: 32, offset: 864)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !3594, file: !1715, line: 793, baseType: !30, size: 32, offset: 896)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !3594, file: !1715, line: 794, baseType: !30, size: 32, offset: 928)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !3594, file: !1715, line: 795, baseType: !13, size: 32, offset: 960)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !3594, file: !1715, line: 797, baseType: !3633, size: 2048, offset: 1024)
!3633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1715, line: 551, size: 2048, elements: !3634)
!3634 = !{!3635, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3655, !3658, !3659, !3660}
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !3633, file: !1715, line: 553, baseType: !3636, size: 128)
!3636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1715, line: 411, size: 128, elements: !3637)
!3637 = !{!3638, !3639}
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3636, file: !1715, line: 412, baseType: !47, size: 64)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !3636, file: !1715, line: 413, baseType: !412, size: 32, offset: 64)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !3633, file: !1715, line: 554, baseType: !795, size: 192, align: 64, offset: 128)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3633, file: !1715, line: 555, baseType: !416, size: 64, offset: 320)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !3633, file: !1715, line: 556, baseType: !416, size: 64, offset: 384)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !3633, file: !1715, line: 558, baseType: !105, size: 128, offset: 448)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3633, file: !1715, line: 559, baseType: !13, size: 32, offset: 576)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !3633, file: !1715, line: 561, baseType: !416, size: 64, offset: 640)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3633, file: !1715, line: 562, baseType: !416, size: 64, offset: 704)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !3633, file: !1715, line: 563, baseType: !416, size: 64, offset: 768)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !3633, file: !1715, line: 564, baseType: !416, size: 64, offset: 832)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !3633, file: !1715, line: 565, baseType: !296, size: 64, offset: 896)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !3633, file: !1715, line: 566, baseType: !416, size: 64, offset: 960)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !3633, file: !1715, line: 568, baseType: !416, size: 64, offset: 1024)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3633, file: !1715, line: 571, baseType: !30, size: 32, offset: 1088)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3633, file: !1715, line: 572, baseType: !3654, size: 64, offset: 1152)
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !3633, file: !1715, line: 574, baseType: !3656, size: 64, offset: 1216)
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3657, size: 64)
!3657 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1715, line: 49, flags: DIFlagFwdDecl)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !3633, file: !1715, line: 576, baseType: !3656, size: 64, offset: 1280)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !3633, file: !1715, line: 578, baseType: !47, size: 64, offset: 1344)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !3633, file: !1715, line: 588, baseType: !3661, size: 512, align: 512, offset: 1536)
!3661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1715, line: 497, size: 512, align: 512, elements: !3662)
!3662 = !{!3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671}
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !3661, file: !1715, line: 498, baseType: !416, size: 64)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !3661, file: !1715, line: 499, baseType: !416, size: 64, offset: 64)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !3661, file: !1715, line: 500, baseType: !416, size: 64, offset: 128)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !3661, file: !1715, line: 501, baseType: !412, size: 32, offset: 192)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !3661, file: !1715, line: 502, baseType: !412, size: 32, offset: 224)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !3661, file: !1715, line: 503, baseType: !47, size: 64, offset: 256)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !3661, file: !1715, line: 504, baseType: !47, size: 64, offset: 320)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !3661, file: !1715, line: 505, baseType: !47, size: 64, offset: 384)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !3661, file: !1715, line: 506, baseType: !3672, size: 64, align: 64, offset: 448)
!3672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1715, line: 445, size: 64, align: 64, elements: !3673)
!3673 = !{!3674, !3675}
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !3672, file: !1715, line: 446, baseType: !13, size: 32)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !3672, file: !1715, line: 447, baseType: !13, size: 32, offset: 32)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !3594, file: !1715, line: 798, baseType: !3677, size: 384, offset: 3072)
!3677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1715, line: 592, size: 384, elements: !3678)
!3678 = !{!3679, !3680, !3681, !3682, !3683, !3684, !3685}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !3677, file: !1715, line: 593, baseType: !105, size: 128)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3677, file: !1715, line: 594, baseType: !47, size: 64, offset: 128)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !3677, file: !1715, line: 595, baseType: !47, size: 64, offset: 192)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !3677, file: !1715, line: 596, baseType: !13, size: 32, offset: 256)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3677, file: !1715, line: 597, baseType: !34, size: 16, offset: 288)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !3677, file: !1715, line: 598, baseType: !34, size: 16, offset: 304)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !3677, file: !1715, line: 600, baseType: !3686, size: 64, offset: 320)
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !3594, file: !1715, line: 799, baseType: !3688, size: 1792, offset: 3456)
!3688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1715, line: 610, size: 1792, elements: !3689)
!3689 = !{!3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3688, file: !1715, line: 611, baseType: !795, size: 192, align: 64)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !3688, file: !1715, line: 618, baseType: !416, size: 64, offset: 192)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !3688, file: !1715, line: 619, baseType: !416, size: 64, offset: 256)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !3688, file: !1715, line: 620, baseType: !416, size: 64, offset: 320)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !3688, file: !1715, line: 621, baseType: !416, size: 64, offset: 384)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !3688, file: !1715, line: 622, baseType: !416, size: 64, offset: 448)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !3688, file: !1715, line: 629, baseType: !296, size: 64, offset: 512)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3688, file: !1715, line: 630, baseType: !416, size: 64, offset: 576)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3688, file: !1715, line: 631, baseType: !13, size: 32, offset: 640)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !3688, file: !1715, line: 653, baseType: !13, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !3688, file: !1715, line: 654, baseType: !13, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !3688, file: !1715, line: 655, baseType: !13, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !3688, file: !1715, line: 656, baseType: !13, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !3688, file: !1715, line: 662, baseType: !3066, size: 512, offset: 704)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !3688, file: !1715, line: 671, baseType: !3066, size: 512, offset: 1216)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !3688, file: !1715, line: 679, baseType: !3706, size: 64, offset: 1728)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !3594, file: !1715, line: 800, baseType: !3708, size: 64, offset: 5248)
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3710)
!3710 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1715, line: 800, flags: DIFlagFwdDecl)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !3594, file: !1715, line: 809, baseType: !3712, size: 64, offset: 5312)
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3713, size: 64)
!3713 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1715, line: 70, flags: DIFlagFwdDecl)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3594, file: !1715, line: 825, baseType: !3715, size: 2048, align: 512, offset: 5632)
!3715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1715, line: 509, size: 2048, align: 512, elements: !3716)
!3716 = !{!3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !3715, file: !1715, line: 511, baseType: !416, size: 64)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !3715, file: !1715, line: 512, baseType: !416, size: 64, offset: 64)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !3715, file: !1715, line: 513, baseType: !416, size: 64, offset: 128)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !3715, file: !1715, line: 514, baseType: !416, size: 64, offset: 192)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !3715, file: !1715, line: 515, baseType: !416, size: 64, offset: 256)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !3715, file: !1715, line: 516, baseType: !416, size: 64, offset: 320)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !3715, file: !1715, line: 518, baseType: !416, size: 64, offset: 384)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !3715, file: !1715, line: 519, baseType: !416, size: 64, offset: 448)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !3715, file: !1715, line: 520, baseType: !296, size: 64, offset: 512)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !3715, file: !1715, line: 522, baseType: !416, size: 64, offset: 576)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !3715, file: !1715, line: 523, baseType: !416, size: 64, offset: 640)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !3715, file: !1715, line: 524, baseType: !296, size: 64, offset: 704)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !3715, file: !1715, line: 526, baseType: !296, size: 64, offset: 768)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !3715, file: !1715, line: 527, baseType: !416, size: 64, offset: 832)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !3715, file: !1715, line: 529, baseType: !416, size: 64, offset: 896)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !3715, file: !1715, line: 530, baseType: !416, size: 64, offset: 960)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !3715, file: !1715, line: 531, baseType: !416, size: 64, offset: 1024)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !3715, file: !1715, line: 532, baseType: !416, size: 64, offset: 1088)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !3715, file: !1715, line: 533, baseType: !416, size: 64, offset: 1152)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !3715, file: !1715, line: 535, baseType: !416, size: 64, offset: 1216)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !3715, file: !1715, line: 536, baseType: !416, size: 64, offset: 1280)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !3715, file: !1715, line: 537, baseType: !416, size: 64, offset: 1344)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !3715, file: !1715, line: 538, baseType: !416, size: 64, offset: 1408)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !3715, file: !1715, line: 539, baseType: !416, size: 64, offset: 1472)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !3715, file: !1715, line: 540, baseType: !416, size: 64, offset: 1536)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !3715, file: !1715, line: 541, baseType: !416, size: 64, offset: 1600)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !3715, file: !1715, line: 542, baseType: !416, size: 64, offset: 1664)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !3715, file: !1715, line: 543, baseType: !416, size: 64, offset: 1728)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !3594, file: !1715, line: 833, baseType: !13, size: 32, offset: 7680)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !3594, file: !1715, line: 836, baseType: !13, size: 32, offset: 7712)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !3594, file: !1715, line: 837, baseType: !30, size: 32, offset: 7744)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !3594, file: !1715, line: 838, baseType: !3749, size: 64, offset: 7808)
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3751)
!3751 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !3752, line: 19, baseType: !3753)
!3752 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!3753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !3752, line: 19, size: 64, elements: !3754)
!3754 = !{!3755}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3753, file: !3752, line: 19, baseType: !3303, size: 64)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !3594, file: !1715, line: 839, baseType: !3757, size: 64, offset: 7872)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !3594, file: !1715, line: 840, baseType: !3751, size: 64, offset: 7936)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !3594, file: !1715, line: 841, baseType: !28, size: 64, offset: 8000)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !3594, file: !1715, line: 843, baseType: !34, size: 16, offset: 8064)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !3594, file: !1715, line: 845, baseType: !34, size: 16, offset: 8080)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !3594, file: !1715, line: 848, baseType: !30, size: 32, offset: 8096)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !3594, file: !1715, line: 849, baseType: !3764, size: 32, offset: 8128)
!3764 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1715, line: 718, size: 32, elements: !3765)
!3765 = !{!3766, !3773}
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3764, file: !1715, line: 724, baseType: !3767, size: 32)
!3767 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3764, file: !1715, line: 719, size: 32, elements: !3768)
!3768 = !{!3769, !3770, !3771, !3772}
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3767, file: !1715, line: 720, baseType: !91, size: 8)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !3767, file: !1715, line: 721, baseType: !91, size: 8, offset: 8)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !3767, file: !1715, line: 722, baseType: !91, size: 8, offset: 16)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !3767, file: !1715, line: 723, baseType: !91, size: 8, offset: 24)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3764, file: !1715, line: 725, baseType: !412, size: 32)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !3594, file: !1715, line: 850, baseType: !105, size: 128, offset: 8192)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !3594, file: !1715, line: 851, baseType: !3776, size: 64, offset: 8320)
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3777 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1715, line: 60, flags: DIFlagFwdDecl)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !3594, file: !1715, line: 855, baseType: !47, size: 64, offset: 8384)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !3594, file: !1715, line: 856, baseType: !91, size: 8, offset: 8448)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !3594, file: !1715, line: 857, baseType: !91, size: 8, offset: 8456)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !3594, file: !1715, line: 858, baseType: !30, size: 32, offset: 8480)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !3594, file: !1715, line: 859, baseType: !105, size: 128, offset: 8512)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !3594, file: !1715, line: 860, baseType: !30, size: 32, offset: 8640)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !3594, file: !1715, line: 861, baseType: !105, size: 128, offset: 8704)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !3594, file: !1715, line: 873, baseType: !3786, size: 256, offset: 8832)
!3786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1715, line: 376, size: 256, elements: !3787)
!3787 = !{!3788, !3789, !3790, !3791}
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !3786, file: !1715, line: 381, baseType: !47, size: 64)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !3786, file: !1715, line: 384, baseType: !418, size: 64, offset: 64)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !3786, file: !1715, line: 389, baseType: !418, size: 64, offset: 128)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !3786, file: !1715, line: 392, baseType: !418, size: 64, offset: 192)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3594, file: !1715, line: 875, baseType: !105, size: 128, offset: 9088)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !3594, file: !1715, line: 877, baseType: !3794, size: 320, offset: 9216)
!3794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !3795, line: 86, size: 320, elements: !3796)
!3795 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!3796 = !{!3797, !3798, !3799}
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3794, file: !3795, line: 87, baseType: !30, size: 32)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !3794, file: !3795, line: 88, baseType: !105, size: 128, offset: 64)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !3794, file: !3795, line: 89, baseType: !105, size: 128, offset: 192)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !3594, file: !1715, line: 878, baseType: !795, size: 192, align: 64, offset: 9536)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !3594, file: !1715, line: 881, baseType: !1377, size: 64, offset: 9728)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !3594, file: !1715, line: 882, baseType: !1377, size: 64, offset: 9792)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !3594, file: !1715, line: 884, baseType: !30, size: 32, offset: 9856)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !3594, file: !1715, line: 885, baseType: !30, size: 32, offset: 9888)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !3594, file: !1715, line: 886, baseType: !30, size: 32, offset: 9920)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !3594, file: !1715, line: 888, baseType: !30, size: 32, offset: 9952)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !3594, file: !1715, line: 890, baseType: !47, size: 64, offset: 9984)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !3594, file: !1715, line: 893, baseType: !13, size: 32, offset: 10048)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !3594, file: !1715, line: 896, baseType: !13, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !3594, file: !1715, line: 897, baseType: !13, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !3594, file: !1715, line: 898, baseType: !13, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !3594, file: !1715, line: 899, baseType: !13, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !3594, file: !1715, line: 919, baseType: !13, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !3594, file: !1715, line: 922, baseType: !13, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !3594, file: !1715, line: 923, baseType: !13, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !3594, file: !1715, line: 925, baseType: !13, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !3594, file: !1715, line: 939, baseType: !13, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3594, file: !1715, line: 941, baseType: !13, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !3594, file: !1715, line: 944, baseType: !13, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !3594, file: !1715, line: 956, baseType: !13, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !3594, file: !1715, line: 962, baseType: !13, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !3594, file: !1715, line: 966, baseType: !13, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !3594, file: !1715, line: 969, baseType: !47, size: 64, offset: 10176)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !3594, file: !1715, line: 971, baseType: !3825, size: 448, offset: 10240)
!3825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !261, line: 25, size: 448, elements: !3826)
!3826 = !{!3827, !3828, !3833}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3825, file: !261, line: 26, baseType: !47, size: 64)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3825, file: !261, line: 27, baseType: !3829, size: 64, offset: 64)
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3830 = !DISubroutineType(types: !3831)
!3831 = !{!618, !3832}
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3833 = !DIDerivedType(tag: DW_TAG_member, scope: !3825, file: !261, line: 28, baseType: !3834, size: 320, offset: 128)
!3834 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3825, file: !261, line: 28, size: 320, elements: !3835)
!3835 = !{!3836, !3846, !3871}
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3834, file: !261, line: 37, baseType: !3837, size: 320)
!3837 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3834, file: !261, line: 30, size: 320, elements: !3838)
!3838 = !{!3839, !3841, !3842, !3843, !3844, !3845}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3837, file: !261, line: 31, baseType: !3840, size: 64)
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3837, file: !261, line: 32, baseType: !412, size: 32, offset: 64)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3837, file: !261, line: 33, baseType: !412, size: 32, offset: 96)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3837, file: !261, line: 34, baseType: !412, size: 32, offset: 128)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3837, file: !261, line: 35, baseType: !416, size: 64, offset: 192)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3837, file: !261, line: 36, baseType: !3840, size: 64, offset: 256)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3834, file: !261, line: 47, baseType: !3847, size: 192)
!3847 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3834, file: !261, line: 39, size: 192, elements: !3848)
!3848 = !{!3849, !3850, !3851, !3870}
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3847, file: !261, line: 40, baseType: !3111, size: 32)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3847, file: !261, line: 41, baseType: !260, size: 32, offset: 32)
!3851 = !DIDerivedType(tag: DW_TAG_member, scope: !3847, file: !261, line: 42, baseType: !3852, size: 64, offset: 64)
!3852 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3847, file: !261, line: 42, size: 64, elements: !3853)
!3853 = !{!3854, !3862}
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3852, file: !261, line: 43, baseType: !3855, size: 64)
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3857, line: 7, size: 128, elements: !3858)
!3857 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3858 = !{!3859, !3861}
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3856, file: !3857, line: 8, baseType: !3860, size: 64)
!3860 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !45, line: 93, baseType: !51)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3856, file: !3857, line: 9, baseType: !51, size: 64, offset: 64)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3852, file: !261, line: 44, baseType: !3863, size: 64)
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3865, line: 7, size: 64, elements: !3866)
!3865 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3866 = !{!3867, !3869}
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3864, file: !3865, line: 8, baseType: !3868, size: 32)
!3868 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3865, line: 5, baseType: !788)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3864, file: !3865, line: 9, baseType: !788, size: 32, offset: 32)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3847, file: !261, line: 46, baseType: !416, size: 64, offset: 128)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3834, file: !261, line: 55, baseType: !3872, size: 256)
!3872 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3834, file: !261, line: 49, size: 256, elements: !3873)
!3873 = !{!3874, !3877, !3878, !3879, !3880}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3872, file: !261, line: 50, baseType: !3875, size: 64)
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3876, size: 64)
!3876 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !261, line: 14, flags: DIFlagFwdDecl)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3872, file: !261, line: 51, baseType: !30, size: 32, offset: 64)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3872, file: !261, line: 52, baseType: !30, size: 32, offset: 96)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3872, file: !261, line: 53, baseType: !47, size: 64, offset: 128)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3872, file: !261, line: 54, baseType: !47, size: 64, offset: 192)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3594, file: !1715, line: 973, baseType: !3882, size: 32, offset: 10688)
!3882 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !33, line: 27, baseType: !3883)
!3883 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !45, line: 28, baseType: !30)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !3594, file: !1715, line: 974, baseType: !3882, size: 32, offset: 10720)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !3594, file: !1715, line: 978, baseType: !47, size: 64, offset: 10752)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !3594, file: !1715, line: 987, baseType: !3593, size: 64, offset: 10816)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3594, file: !1715, line: 990, baseType: !3593, size: 64, offset: 10880)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3594, file: !1715, line: 995, baseType: !105, size: 128, offset: 10944)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3594, file: !1715, line: 996, baseType: !105, size: 128, offset: 11072)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !3594, file: !1715, line: 997, baseType: !3593, size: 64, offset: 11200)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !3594, file: !1715, line: 1005, baseType: !105, size: 128, offset: 11264)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !3594, file: !1715, line: 1006, baseType: !105, size: 128, offset: 11392)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !3594, file: !1715, line: 1009, baseType: !711, size: 64, offset: 11520)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !3594, file: !1715, line: 1010, baseType: !3895, size: 512, offset: 11584)
!3895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !728, size: 512, elements: !733)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !3594, file: !1715, line: 1011, baseType: !105, size: 128, offset: 12096)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !3594, file: !1715, line: 1012, baseType: !105, size: 128, offset: 12224)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !3594, file: !1715, line: 1014, baseType: !1032, size: 64, offset: 12352)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !3594, file: !1715, line: 1017, baseType: !2097, size: 64, offset: 12416)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !3594, file: !1715, line: 1020, baseType: !2097, size: 64, offset: 12480)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !3594, file: !1715, line: 1023, baseType: !28, size: 64, offset: 12544)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3594, file: !1715, line: 1025, baseType: !416, size: 64, offset: 12608)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3594, file: !1715, line: 1026, baseType: !416, size: 64, offset: 12672)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3594, file: !1715, line: 1031, baseType: !416, size: 64, offset: 12736)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3594, file: !1715, line: 1032, baseType: !3906, size: 192, offset: 12800)
!3906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1715, line: 324, size: 192, elements: !3907)
!3907 = !{!3908, !3909, !3910}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3906, file: !1715, line: 326, baseType: !416, size: 64)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3906, file: !1715, line: 327, baseType: !416, size: 64, offset: 64)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3906, file: !1715, line: 328, baseType: !299, size: 32, offset: 128)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3594, file: !1715, line: 1041, baseType: !47, size: 64, offset: 12992)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3594, file: !1715, line: 1042, baseType: !47, size: 64, offset: 13056)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !3594, file: !1715, line: 1045, baseType: !416, size: 64, offset: 13120)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !3594, file: !1715, line: 1048, baseType: !416, size: 64, offset: 13184)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3594, file: !1715, line: 1051, baseType: !47, size: 64, offset: 13248)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3594, file: !1715, line: 1052, baseType: !47, size: 64, offset: 13312)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3594, file: !1715, line: 1055, baseType: !3918, size: 640, offset: 13376)
!3918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3919, line: 132, size: 640, elements: !3920)
!3919 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3920 = !{!3921, !3927, !3928}
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3918, file: !3919, line: 133, baseType: !3922, size: 576)
!3922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3923, size: 576, elements: !584)
!3923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3919, line: 117, size: 192, elements: !3924)
!3924 = !{!3925, !3926}
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3923, file: !3919, line: 118, baseType: !416, size: 64)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3923, file: !3919, line: 119, baseType: !3120, size: 128, offset: 64)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3918, file: !3919, line: 134, baseType: !13, size: 32, offset: 576)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3918, file: !3919, line: 135, baseType: !13, size: 32, offset: 608)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !3594, file: !1715, line: 1058, baseType: !3930, size: 448, offset: 14016)
!3930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3919, line: 144, size: 448, elements: !3931)
!3931 = !{!3932, !3933, !3934}
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3930, file: !3919, line: 145, baseType: !670, size: 128, align: 64)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3930, file: !3919, line: 146, baseType: !286, size: 256, offset: 128)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3930, file: !3919, line: 147, baseType: !13, size: 32, offset: 384)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !3594, file: !1715, line: 1064, baseType: !753, size: 64, offset: 14464)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !3594, file: !1715, line: 1067, baseType: !753, size: 64, offset: 14528)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !3594, file: !1715, line: 1070, baseType: !753, size: 64, offset: 14592)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !3594, file: !1715, line: 1074, baseType: !780, size: 64, offset: 14656)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3594, file: !1715, line: 1084, baseType: !3940, size: 128, offset: 14720)
!3940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !3941)
!3941 = !{!3942}
!3942 = !DISubrange(count: 16)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !3594, file: !1715, line: 1086, baseType: !3944, size: 64, offset: 14848)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1715, line: 55, flags: DIFlagFwdDecl)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !3594, file: !1715, line: 1089, baseType: !3947, size: 64, offset: 14912)
!3947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3948, line: 12, size: 64, elements: !3949)
!3948 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3949 = !{!3950}
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3947, file: !3948, line: 13, baseType: !3951, size: 64)
!3951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3952, size: 64)
!3952 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3948, line: 8, flags: DIFlagFwdDecl)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !3594, file: !1715, line: 1090, baseType: !3954, size: 128, offset: 14976)
!3954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3955, line: 13, size: 128, elements: !3956)
!3955 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3956 = !{!3957}
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3954, file: !3955, line: 14, baseType: !105, size: 128)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !3594, file: !1715, line: 1097, baseType: !3959, size: 64, offset: 15104)
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3960, size: 64)
!3960 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1715, line: 50, flags: DIFlagFwdDecl)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3594, file: !1715, line: 1100, baseType: !3962, size: 64, offset: 15168)
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3963, size: 64)
!3963 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1715, line: 1100, flags: DIFlagFwdDecl)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !3594, file: !1715, line: 1103, baseType: !3965, size: 64, offset: 15232)
!3965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3966, size: 64)
!3966 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1715, line: 53, flags: DIFlagFwdDecl)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !3594, file: !1715, line: 1107, baseType: !3968, size: 64, offset: 15296)
!3968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3969, size: 64)
!3969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !3970, line: 31, size: 576, elements: !3971)
!3970 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!3971 = !{!3972, !3973, !3976, !3979, !3982, !3983, !3986, !3989, !3990}
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3969, file: !3970, line: 32, baseType: !715, size: 32)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !3969, file: !3970, line: 33, baseType: !3974, size: 64, offset: 64)
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3975 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !3970, line: 9, flags: DIFlagFwdDecl)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !3969, file: !3970, line: 34, baseType: !3977, size: 64, offset: 128)
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3978 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !3970, line: 10, flags: DIFlagFwdDecl)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !3969, file: !3970, line: 35, baseType: !3980, size: 64, offset: 192)
!3980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3981, size: 64)
!3981 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !3970, line: 8, flags: DIFlagFwdDecl)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !3969, file: !3970, line: 36, baseType: !744, size: 64, offset: 256)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !3969, file: !3970, line: 37, baseType: !3984, size: 64, offset: 320)
!3984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3985, size: 64)
!3985 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !782, line: 34, flags: DIFlagFwdDecl)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !3969, file: !3970, line: 38, baseType: !3987, size: 64, offset: 384)
!3987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3988, size: 64)
!3988 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !3970, line: 38, flags: DIFlagFwdDecl)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !3969, file: !3970, line: 39, baseType: !3987, size: 64, offset: 448)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !3969, file: !3970, line: 40, baseType: !3991, size: 64, offset: 512)
!3991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3992, size: 64)
!3992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !3993, line: 771, size: 384, elements: !3994)
!3993 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!3994 = !{!3995, !3996, !3997, !3998}
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3992, file: !3993, line: 772, baseType: !978, size: 192)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !3992, file: !3993, line: 773, baseType: !945, size: 64, offset: 192)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !3992, file: !3993, line: 774, baseType: !1080, size: 64, offset: 256)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !3992, file: !3993, line: 775, baseType: !3999, size: 64, offset: 320)
!3999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4000, size: 64)
!4000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !4001, line: 209, size: 4736, elements: !4002)
!4001 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!4002 = !{!4003, !4238, !4239, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258}
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !4000, file: !4001, line: 215, baseType: !4004, size: 896)
!4004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4005, size: 896, elements: !4062)
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4006, size: 64)
!4006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !4001, line: 152, size: 1600, elements: !4007)
!4007 = !{!4008, !4113, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4230, !4231, !4237}
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !4006, file: !4001, line: 154, baseType: !4009, size: 64)
!4009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4010, size: 64)
!4010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !4001, line: 389, size: 7872, elements: !4011)
!4011 = !{!4012, !4013, !4014, !4015, !4016, !4017, !4018, !4019, !4020, !4021, !4022, !4023, !4024, !4025, !4031, !4032, !4036, !4037, !4038, !4039, !4040, !4041, !4059, !4060, !4064, !4065, !4066, !4088, !4089, !4090, !4091, !4092, !4093, !4094, !4095, !4096, !4100, !4103, !4104, !4111}
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4010, file: !4001, line: 391, baseType: !4006, size: 1600)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4010, file: !4001, line: 393, baseType: !47, size: 64, offset: 1600)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4010, file: !4001, line: 401, baseType: !30, size: 32, offset: 1664)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !4010, file: !4001, line: 404, baseType: !30, size: 32, offset: 1696)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !4010, file: !4001, line: 417, baseType: !30, size: 32, offset: 1728)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !4010, file: !4001, line: 418, baseType: !30, size: 32, offset: 1760)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !4010, file: !4001, line: 419, baseType: !30, size: 32, offset: 1792)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !4010, file: !4001, line: 432, baseType: !30, size: 32, offset: 1824)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !4010, file: !4001, line: 433, baseType: !30, size: 32, offset: 1856)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !4010, file: !4001, line: 434, baseType: !30, size: 32, offset: 1888)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !4010, file: !4001, line: 436, baseType: !30, size: 32, offset: 1920)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !4010, file: !4001, line: 439, baseType: !13, size: 32, offset: 1952)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4010, file: !4001, line: 441, baseType: !1854, size: 64, offset: 1984)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !4010, file: !4001, line: 442, baseType: !4026, size: 448, offset: 2048)
!4026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !4001, line: 138, size: 448, elements: !4027)
!4027 = !{!4028, !4029, !4030}
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4026, file: !4001, line: 140, baseType: !1854, size: 64)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !4026, file: !4001, line: 141, baseType: !47, size: 64, offset: 64)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !4026, file: !4001, line: 142, baseType: !2196, size: 320, offset: 128)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !4010, file: !4001, line: 443, baseType: !4026, size: 448, offset: 2496)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !4010, file: !4001, line: 446, baseType: !4033, offset: 2944)
!4033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4026, elements: !4034)
!4034 = !{!4035}
!4035 = !DISubrange(count: 0)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !4010, file: !4001, line: 455, baseType: !101, size: 16, offset: 2944)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !4010, file: !4001, line: 456, baseType: !101, size: 16, offset: 2960)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !4010, file: !4001, line: 457, baseType: !101, size: 16, offset: 2976)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !4010, file: !4001, line: 458, baseType: !101, size: 16, offset: 2992)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !4010, file: !4001, line: 461, baseType: !4004, size: 896, offset: 3008)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4010, file: !4001, line: 463, baseType: !4042, size: 64, offset: 3904)
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4043, size: 64)
!4043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !4001, line: 537, size: 41664, elements: !4044)
!4044 = !{!4045, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4054, !4058}
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !4043, file: !4001, line: 538, baseType: !1874, size: 64)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !4043, file: !4001, line: 541, baseType: !13, size: 32, offset: 64)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !4043, file: !4001, line: 544, baseType: !30, size: 32, offset: 96)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !4043, file: !4001, line: 547, baseType: !105, size: 128, offset: 128)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4043, file: !4001, line: 548, baseType: !670, size: 128, align: 64, offset: 256)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !4043, file: !4001, line: 555, baseType: !4010, size: 7872, offset: 384)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !4043, file: !4001, line: 558, baseType: !4009, size: 64, offset: 8256)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !4043, file: !4001, line: 561, baseType: !57, size: 32, offset: 8320)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4043, file: !4001, line: 564, baseType: !13, size: 32, offset: 8352)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !4043, file: !4001, line: 567, baseType: !4055, size: 32768, offset: 8384)
!4055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32768, elements: !4056)
!4056 = !{!4057}
!4057 = !DISubrange(count: 4096)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4043, file: !4001, line: 570, baseType: !3432, size: 512, offset: 41152)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !4010, file: !4001, line: 469, baseType: !105, size: 128, offset: 3968)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !4010, file: !4001, line: 478, baseType: !4061, size: 1792, offset: 4096)
!4061 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 1792, elements: !4062)
!4062 = !{!4063}
!4063 = !DISubrange(count: 14)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !4010, file: !4001, line: 487, baseType: !4009, size: 64, offset: 5888)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !4010, file: !4001, line: 488, baseType: !4009, size: 64, offset: 5952)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !4010, file: !4001, line: 491, baseType: !4067, size: 64, offset: 6016)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !4001, line: 327, size: 896, elements: !4069)
!4069 = !{!4070, !4073, !4083, !4084, !4085, !4086, !4087}
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !4068, file: !4001, line: 332, baseType: !4071)
!4071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !4072, line: 64, elements: !1398)
!4072 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !4068, file: !4001, line: 333, baseType: !4074, size: 192)
!4074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !4001, line: 299, size: 192, elements: !4075)
!4075 = !{!4076}
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !4074, file: !4001, line: 300, baseType: !4077, size: 192)
!4077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !4078, line: 17, size: 192, elements: !4079)
!4078 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!4079 = !{!4080, !4081, !4082}
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4077, file: !4078, line: 18, baseType: !416, size: 64)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4077, file: !4078, line: 19, baseType: !416, size: 64, offset: 64)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !4077, file: !4078, line: 20, baseType: !418, size: 64, offset: 128)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !4068, file: !4001, line: 339, baseType: !4074, size: 192, offset: 192)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !4068, file: !4001, line: 347, baseType: !4074, size: 192, offset: 384)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !4068, file: !4001, line: 353, baseType: !4074, size: 192, offset: 576)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !4068, file: !4001, line: 366, baseType: !4009, size: 64, offset: 768)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !4068, file: !4001, line: 367, baseType: !4009, size: 64, offset: 832)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !4010, file: !4001, line: 492, baseType: !105, size: 128, offset: 6080)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !4010, file: !4001, line: 495, baseType: !4074, size: 192, offset: 6208)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !4010, file: !4001, line: 496, baseType: !4074, size: 192, offset: 6400)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !4010, file: !4001, line: 497, baseType: !3906, size: 192, offset: 6592)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !4010, file: !4001, line: 503, baseType: !105, size: 128, offset: 6784)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !4010, file: !4001, line: 504, baseType: !286, size: 256, offset: 6912)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !4010, file: !4001, line: 507, baseType: !62, size: 192, offset: 7168)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !4010, file: !4001, line: 510, baseType: !994, size: 256, offset: 7360)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !4010, file: !4001, line: 513, baseType: !4097, size: 64, offset: 7616)
!4097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4098, size: 64)
!4098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !4099, line: 214, elements: !1398)
!4099 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !4010, file: !4001, line: 516, baseType: !4101, offset: 7680)
!4101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !4102, line: 76, elements: !1398)
!4102 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !4010, file: !4001, line: 519, baseType: !57, size: 32, offset: 7680)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !4010, file: !4001, line: 522, baseType: !4105, size: 128, offset: 7712)
!4105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !4001, line: 370, size: 128, elements: !4106)
!4106 = !{!4107, !4108, !4109, !4110}
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4105, file: !4001, line: 372, baseType: !862, size: 8)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !4105, file: !4001, line: 375, baseType: !30, size: 32, offset: 32)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !4105, file: !4001, line: 380, baseType: !30, size: 32, offset: 64)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !4105, file: !4001, line: 386, baseType: !30, size: 32, offset: 96)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !4010, file: !4001, line: 529, baseType: !4112, offset: 7872)
!4112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4009, elements: !746)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4006, file: !4001, line: 157, baseType: !4114, size: 64, offset: 64)
!4114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4115, size: 64)
!4115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !4001, line: 669, size: 1984, elements: !4116)
!4116 = !{!4117, !4121, !4125, !4129, !4130, !4131, !4132, !4136, !4140, !4141, !4147, !4151, !4152, !4153, !4157, !4161, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4182, !4183, !4220, !4221}
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !4115, file: !4001, line: 670, baseType: !4118, size: 64)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4119 = !DISubroutineType(types: !4120)
!4120 = !{!4005, !4005}
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !4115, file: !4001, line: 671, baseType: !4122, size: 64, offset: 64)
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4123, size: 64)
!4123 = !DISubroutineType(types: !4124)
!4124 = !{!30, !4005}
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !4115, file: !4001, line: 672, baseType: !4126, size: 64, offset: 128)
!4126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4127, size: 64)
!4127 = !DISubroutineType(types: !4128)
!4128 = !{null, !4005}
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !4115, file: !4001, line: 673, baseType: !4126, size: 64, offset: 192)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !4115, file: !4001, line: 674, baseType: !4126, size: 64, offset: 256)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !4115, file: !4001, line: 675, baseType: !4126, size: 64, offset: 320)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !4115, file: !4001, line: 676, baseType: !4133, size: 64, offset: 384)
!4133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4134, size: 64)
!4134 = !DISubroutineType(types: !4135)
!4135 = !{null, !4005, !30}
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !4115, file: !4001, line: 677, baseType: !4137, size: 64, offset: 448)
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4138 = !DISubroutineType(types: !4139)
!4139 = !{!30, !1738, !4005}
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !4115, file: !4001, line: 679, baseType: !4137, size: 64, offset: 512)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !4115, file: !4001, line: 682, baseType: !4142, size: 64, offset: 576)
!4142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4143, size: 64)
!4143 = !DISubroutineType(types: !4144)
!4144 = !{!30, !4145}
!4145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4146, size: 64)
!4146 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !4001, line: 30, flags: DIFlagFwdDecl)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !4115, file: !4001, line: 683, baseType: !4148, size: 64, offset: 640)
!4148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4149, size: 64)
!4149 = !DISubroutineType(types: !4150)
!4150 = !{null, !4145}
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !4115, file: !4001, line: 684, baseType: !4148, size: 64, offset: 704)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !4115, file: !4001, line: 685, baseType: !2300, size: 64, offset: 768)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !4115, file: !4001, line: 686, baseType: !4154, size: 64, offset: 832)
!4154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4155, size: 64)
!4155 = !DISubroutineType(types: !4156)
!4156 = !{!30, !3593, !3999}
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !4115, file: !4001, line: 688, baseType: !4158, size: 64, offset: 896)
!4158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4159, size: 64)
!4159 = !DISubroutineType(types: !4160)
!4160 = !{null, !3593, !3999}
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !4115, file: !4001, line: 689, baseType: !4162, size: 64, offset: 960)
!4162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4163, size: 64)
!4163 = !DISubroutineType(types: !4164)
!4164 = !{null, !3593}
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !4115, file: !4001, line: 690, baseType: !4162, size: 64, offset: 1024)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4115, file: !4001, line: 691, baseType: !4162, size: 64, offset: 1088)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !4115, file: !4001, line: 692, baseType: !4126, size: 64, offset: 1152)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4115, file: !4001, line: 694, baseType: !862, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !4115, file: !4001, line: 707, baseType: !862, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !4115, file: !4001, line: 719, baseType: !862, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4115, file: !4001, line: 722, baseType: !30, size: 32, offset: 1248)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4115, file: !4001, line: 723, baseType: !25, size: 64, offset: 1280)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !4115, file: !4001, line: 726, baseType: !25, size: 64, offset: 1344)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4115, file: !4001, line: 729, baseType: !4042, size: 64, offset: 1408)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !4115, file: !4001, line: 732, baseType: !4176, size: 192, offset: 1472)
!4176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !4177, line: 19, size: 192, elements: !4178)
!4177 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!4178 = !{!4179, !4180, !4181}
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !4176, file: !4177, line: 20, baseType: !1304, size: 128)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !4176, file: !4177, line: 21, baseType: !13, size: 32, offset: 128)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !4176, file: !4177, line: 22, baseType: !13, size: 32, offset: 160)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !4115, file: !4001, line: 738, baseType: !105, size: 128, offset: 1664)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !4115, file: !4001, line: 744, baseType: !4184, size: 64, offset: 1792)
!4184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4185, size: 64)
!4185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !4001, line: 580, size: 1728, elements: !4186)
!4186 = !{!4187, !4188, !4189, !4190, !4191, !4192, !4193, !4194, !4196, !4197, !4198, !4202, !4206, !4207, !4208, !4209, !4210, !4214, !4218, !4219}
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4185, file: !4001, line: 586, baseType: !3432, size: 512)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4185, file: !4001, line: 587, baseType: !47, size: 64, offset: 512)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4185, file: !4001, line: 593, baseType: !43, size: 64, offset: 576)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4185, file: !4001, line: 596, baseType: !13, size: 32, offset: 640)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !4185, file: !4001, line: 604, baseType: !13, size: 32, offset: 672)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4185, file: !4001, line: 610, baseType: !4114, size: 64, offset: 704)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4185, file: !4001, line: 611, baseType: !105, size: 128, offset: 768)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !4185, file: !4001, line: 612, baseType: !4195, size: 64, offset: 896)
!4195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4185, file: !4001, line: 614, baseType: !1890, size: 64, offset: 960)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4185, file: !4001, line: 615, baseType: !1910, size: 64, offset: 1024)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !4185, file: !4001, line: 621, baseType: !4199, size: 64, offset: 1088)
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4200, size: 64)
!4200 = !DISubroutineType(types: !4201)
!4201 = !{!416, !4005, !4184}
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !4185, file: !4001, line: 625, baseType: !4203, size: 64, offset: 1152)
!4203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4204, size: 64)
!4204 = !DISubroutineType(types: !4205)
!4205 = !{!296, !4005, !4184}
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4185, file: !4001, line: 628, baseType: !1768, size: 64, offset: 1216)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4185, file: !4001, line: 631, baseType: !1756, size: 64, offset: 1280)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4185, file: !4001, line: 632, baseType: !1764, size: 64, offset: 1344)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4185, file: !4001, line: 633, baseType: !1760, size: 64, offset: 1408)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !4185, file: !4001, line: 640, baseType: !4211, size: 64, offset: 1472)
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4212, size: 64)
!4212 = !DISubroutineType(types: !4213)
!4213 = !{!30, !4005, !4184, !416}
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !4185, file: !4001, line: 645, baseType: !4215, size: 64, offset: 1536)
!4215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4216, size: 64)
!4216 = !DISubroutineType(types: !4217)
!4217 = !{!30, !4005, !4184, !296}
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4185, file: !4001, line: 654, baseType: !1918, size: 64, offset: 1600)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4185, file: !4001, line: 657, baseType: !1925, size: 64, offset: 1664)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !4115, file: !4001, line: 745, baseType: !4184, size: 64, offset: 1856)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !4115, file: !4001, line: 754, baseType: !13, size: 32, offset: 1920)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !4006, file: !4001, line: 160, baseType: !2825, size: 128, offset: 128)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4006, file: !4001, line: 163, baseType: !105, size: 128, offset: 256)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4006, file: !4001, line: 164, baseType: !105, size: 128, offset: 384)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !4006, file: !4001, line: 167, baseType: !105, size: 128, offset: 512)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4006, file: !4001, line: 173, baseType: !30, size: 32, offset: 640)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4006, file: !4001, line: 175, baseType: !13, size: 32, offset: 672)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !4006, file: !4001, line: 183, baseType: !416, size: 64, offset: 704)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !4006, file: !4001, line: 189, baseType: !57, size: 32, offset: 768)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !4006, file: !4001, line: 192, baseType: !994, size: 256, offset: 832)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !4006, file: !4001, line: 193, baseType: !4232, size: 448, offset: 1088)
!4232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !995, line: 120, size: 448, elements: !4233)
!4233 = !{!4234, !4235, !4236}
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4232, file: !995, line: 121, baseType: !994, size: 256)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4232, file: !995, line: 122, baseType: !670, size: 128, align: 64, offset: 256)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4232, file: !995, line: 125, baseType: !2258, size: 64, offset: 384)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4006, file: !4001, line: 199, baseType: !4005, size: 64, offset: 1536)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4000, file: !4001, line: 218, baseType: !715, size: 32, offset: 896)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !4000, file: !4001, line: 226, baseType: !3999, size: 64, offset: 960)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !4000, file: !4001, line: 229, baseType: !4009, size: 64, offset: 1024)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !4000, file: !4001, line: 232, baseType: !30, size: 32, offset: 1088)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !4000, file: !4001, line: 241, baseType: !105, size: 128, offset: 1152)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !4000, file: !4001, line: 242, baseType: !105, size: 128, offset: 1280)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !4000, file: !4001, line: 243, baseType: !105, size: 128, offset: 1408)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !4000, file: !4001, line: 246, baseType: !105, size: 128, offset: 1536)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !4000, file: !4001, line: 255, baseType: !4061, size: 1792, offset: 1664)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !4000, file: !4001, line: 258, baseType: !105, size: 128, offset: 3456)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !4000, file: !4001, line: 259, baseType: !105, size: 128, offset: 3584)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !4000, file: !4001, line: 265, baseType: !728, size: 128, offset: 3712)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !4000, file: !4001, line: 271, baseType: !105, size: 128, offset: 3840)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !4000, file: !4001, line: 277, baseType: !105, size: 128, offset: 3968)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !4000, file: !4001, line: 278, baseType: !105, size: 128, offset: 4096)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !4000, file: !4001, line: 279, baseType: !105, size: 128, offset: 4224)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !4000, file: !4001, line: 288, baseType: !4009, size: 64, offset: 4352)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !4000, file: !4001, line: 289, baseType: !4009, size: 64, offset: 4416)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !4000, file: !4001, line: 290, baseType: !3999, size: 64, offset: 4480)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !4000, file: !4001, line: 293, baseType: !862, size: 8, offset: 4544)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !4000, file: !4001, line: 296, baseType: !670, size: 128, align: 64, offset: 4608)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3594, file: !1715, line: 1110, baseType: !4260, size: 64, offset: 15360)
!4260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4261, size: 64)
!4261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !4262, line: 93, size: 8768, elements: !4263)
!4262 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!4263 = !{!4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4300, !4301, !4302, !4303, !4304, !4305, !4306, !4312, !4321, !4322, !4324, !4325, !4326, !4329, !4335, !4336, !4337, !4338, !4339, !4340, !4341, !4342, !4343, !4344, !4345, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4367, !4368, !4375, !4385, !4447, !4448, !4451, !4452, !4453, !4454, !4455, !4456}
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !4261, file: !4262, line: 94, baseType: !715, size: 32)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !4261, file: !4262, line: 95, baseType: !57, size: 32, offset: 32)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !4261, file: !4262, line: 96, baseType: !30, size: 32, offset: 64)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !4261, file: !4262, line: 97, baseType: !30, size: 32, offset: 96)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !4261, file: !4262, line: 98, baseType: !105, size: 128, offset: 128)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !4261, file: !4262, line: 100, baseType: !62, size: 192, offset: 256)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !4261, file: !4262, line: 103, baseType: !3593, size: 64, offset: 448)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !4261, file: !4262, line: 106, baseType: !4272, size: 192, offset: 512)
!4272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !4273, line: 32, size: 192, elements: !4274)
!4273 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!4274 = !{!4275, !4276}
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4272, file: !4273, line: 33, baseType: !105, size: 128)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !4272, file: !4273, line: 34, baseType: !4277, size: 64, offset: 128)
!4277 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !4278, line: 25, baseType: !4279)
!4278 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!4279 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4278, line: 23, size: 64, elements: !4280)
!4280 = !{!4281}
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !4279, file: !4278, line: 24, baseType: !3303, size: 64)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !4261, file: !4262, line: 109, baseType: !724, size: 64, offset: 704)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !4261, file: !4262, line: 112, baseType: !30, size: 32, offset: 768)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !4261, file: !4262, line: 114, baseType: !30, size: 32, offset: 800)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !4261, file: !4262, line: 115, baseType: !3593, size: 64, offset: 832)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !4261, file: !4262, line: 118, baseType: !30, size: 32, offset: 896)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4261, file: !4262, line: 119, baseType: !13, size: 32, offset: 928)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !4261, file: !4262, line: 121, baseType: !4289, size: 64, offset: 960)
!4289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4290, size: 64)
!4290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !4262, line: 80, size: 448, elements: !4291)
!4291 = !{!4292, !4293, !4299}
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !4290, file: !4262, line: 81, baseType: !57, size: 32)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !4290, file: !4262, line: 82, baseType: !4294, size: 128, offset: 64)
!4294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !4262, line: 75, size: 128, elements: !4295)
!4295 = !{!4296, !4297}
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4294, file: !4262, line: 76, baseType: !3593, size: 64)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4294, file: !4262, line: 77, baseType: !4298, size: 64, offset: 64)
!4298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4294, size: 64)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !4290, file: !4262, line: 83, baseType: !1033, size: 256, offset: 192)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !4261, file: !4262, line: 132, baseType: !13, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !4261, file: !4262, line: 133, baseType: !13, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !4261, file: !4262, line: 138, baseType: !13, size: 32, offset: 1056)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !4261, file: !4262, line: 139, baseType: !105, size: 128, offset: 1088)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !4261, file: !4262, line: 142, baseType: !3066, size: 512, offset: 1216)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !4261, file: !4262, line: 143, baseType: !3046, size: 64, offset: 1728)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !4261, file: !4262, line: 150, baseType: !4307, size: 256, offset: 1792)
!4307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4308, size: 256, elements: !2087)
!4308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !4262, line: 38, size: 128, elements: !4309)
!4309 = !{!4310, !4311}
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !4308, file: !4262, line: 39, baseType: !416, size: 64)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !4308, file: !4262, line: 40, baseType: !416, size: 64, offset: 64)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !4261, file: !4262, line: 156, baseType: !4313, size: 192, offset: 2048)
!4313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !4262, line: 66, size: 192, elements: !4314)
!4314 = !{!4315}
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !4313, file: !4262, line: 67, baseType: !4316, size: 192)
!4316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !4262, line: 47, size: 192, elements: !4317)
!4317 = !{!4318, !4319, !4320}
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4316, file: !4262, line: 48, baseType: !292, size: 64)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4316, file: !4262, line: 49, baseType: !292, size: 64, offset: 64)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !4316, file: !4262, line: 50, baseType: !292, size: 64, offset: 128)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !4261, file: !4262, line: 160, baseType: !3918, size: 640, offset: 2240)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !4261, file: !4262, line: 163, baseType: !4323, size: 256, offset: 2880)
!4323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !711, size: 256, elements: !733)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !4261, file: !4262, line: 169, baseType: !711, size: 64, offset: 3136)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !4261, file: !4262, line: 172, baseType: !30, size: 32, offset: 3200)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !4261, file: !4262, line: 174, baseType: !4327, size: 64, offset: 3264)
!4327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4328, size: 64)
!4328 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !4262, line: 174, flags: DIFlagFwdDecl)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !4261, file: !4262, line: 185, baseType: !4330, size: 64, offset: 3328)
!4330 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !385, line: 860, baseType: !4331)
!4331 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !385, line: 853, size: 64, elements: !4332)
!4332 = !{!4333, !4334}
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !4331, file: !385, line: 858, baseType: !384, size: 32)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4331, file: !385, line: 859, baseType: !67, size: 32, offset: 32)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4261, file: !4262, line: 186, baseType: !416, size: 64, offset: 3392)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4261, file: !4262, line: 186, baseType: !416, size: 64, offset: 3456)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !4261, file: !4262, line: 186, baseType: !416, size: 64, offset: 3520)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !4261, file: !4262, line: 186, baseType: !416, size: 64, offset: 3584)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !4261, file: !4262, line: 187, baseType: !416, size: 64, offset: 3648)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !4261, file: !4262, line: 188, baseType: !416, size: 64, offset: 3712)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !4261, file: !4262, line: 189, baseType: !3906, size: 192, offset: 3776)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !4261, file: !4262, line: 190, baseType: !47, size: 64, offset: 3968)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !4261, file: !4262, line: 190, baseType: !47, size: 64, offset: 4032)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !4261, file: !4262, line: 190, baseType: !47, size: 64, offset: 4096)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !4261, file: !4262, line: 190, baseType: !47, size: 64, offset: 4160)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !4261, file: !4262, line: 191, baseType: !47, size: 64, offset: 4224)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !4261, file: !4262, line: 191, baseType: !47, size: 64, offset: 4288)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !4261, file: !4262, line: 191, baseType: !47, size: 64, offset: 4352)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !4261, file: !4262, line: 191, baseType: !47, size: 64, offset: 4416)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !4261, file: !4262, line: 192, baseType: !47, size: 64, offset: 4480)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !4261, file: !4262, line: 192, baseType: !47, size: 64, offset: 4544)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !4261, file: !4262, line: 192, baseType: !47, size: 64, offset: 4608)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !4261, file: !4262, line: 192, baseType: !47, size: 64, offset: 4672)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !4261, file: !4262, line: 193, baseType: !47, size: 64, offset: 4736)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !4261, file: !4262, line: 193, baseType: !47, size: 64, offset: 4800)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !4261, file: !4262, line: 194, baseType: !4357, size: 448, offset: 4864)
!4357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !4358, line: 12, size: 448, elements: !4359)
!4358 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!4359 = !{!4360, !4361, !4362, !4363, !4364, !4365, !4366}
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !4357, file: !4358, line: 15, baseType: !416, size: 64)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !4357, file: !4358, line: 17, baseType: !416, size: 64, offset: 64)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !4357, file: !4358, line: 19, baseType: !416, size: 64, offset: 128)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !4357, file: !4358, line: 21, baseType: !416, size: 64, offset: 192)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !4357, file: !4358, line: 29, baseType: !416, size: 64, offset: 256)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !4357, file: !4358, line: 35, baseType: !416, size: 64, offset: 320)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !4357, file: !4358, line: 44, baseType: !416, size: 64, offset: 384)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !4261, file: !4262, line: 202, baseType: !418, size: 64, offset: 5312)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !4261, file: !4262, line: 213, baseType: !4369, size: 2048, offset: 5376)
!4369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4370, size: 2048, elements: !3941)
!4370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !4371, line: 43, size: 128, elements: !4372)
!4371 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!4372 = !{!4373, !4374}
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !4370, file: !4371, line: 44, baseType: !46, size: 64)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !4370, file: !4371, line: 45, baseType: !46, size: 64, offset: 64)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !4261, file: !4262, line: 216, baseType: !4376, size: 448, offset: 7424)
!4376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !4262, line: 30, size: 448, elements: !4377)
!4377 = !{!4378, !4379, !4380, !4381, !4382, !4383, !4384}
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !4376, file: !4262, line: 31, baseType: !30, size: 32)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !4376, file: !4262, line: 32, baseType: !618, size: 64, offset: 64)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !4376, file: !4262, line: 33, baseType: !47, size: 64, offset: 128)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !4376, file: !4262, line: 34, baseType: !416, size: 64, offset: 192)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !4376, file: !4262, line: 34, baseType: !416, size: 64, offset: 256)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !4376, file: !4262, line: 35, baseType: !47, size: 64, offset: 320)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !4376, file: !4262, line: 35, baseType: !47, size: 64, offset: 384)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !4261, file: !4262, line: 219, baseType: !4386, size: 64, offset: 7872)
!4386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4387, size: 64)
!4387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !4388, line: 41, size: 3456, elements: !4389)
!4388 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!4389 = !{!4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4446}
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4387, file: !4388, line: 47, baseType: !102, size: 16)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !4387, file: !4388, line: 48, baseType: !413, size: 32, offset: 32)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !4387, file: !4388, line: 54, baseType: !93, size: 8, offset: 64)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !4387, file: !4388, line: 55, baseType: !93, size: 8, offset: 72)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !4387, file: !4388, line: 73, baseType: !417, size: 64, align: 64, offset: 128)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !4387, file: !4388, line: 74, baseType: !417, size: 64, offset: 192)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !4387, file: !4388, line: 81, baseType: !417, size: 64, offset: 256)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !4387, file: !4388, line: 82, baseType: !417, size: 64, offset: 320)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !4387, file: !4388, line: 85, baseType: !417, size: 64, offset: 384)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !4387, file: !4388, line: 86, baseType: !417, size: 64, offset: 448)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !4387, file: !4388, line: 94, baseType: !417, size: 64, offset: 512)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !4387, file: !4388, line: 102, baseType: !417, size: 64, offset: 576)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !4387, file: !4388, line: 107, baseType: !2631, size: 256, offset: 640)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !4387, file: !4388, line: 108, baseType: !93, size: 8, align: 64, offset: 896)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !4387, file: !4388, line: 110, baseType: !4405, size: 24, offset: 904)
!4405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 24, elements: !584)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !4387, file: !4388, line: 111, baseType: !413, size: 32, align: 64, offset: 960)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !4387, file: !4388, line: 113, baseType: !413, size: 32, offset: 992)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !4387, file: !4388, line: 114, baseType: !413, size: 32, offset: 1024)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !4387, file: !4388, line: 115, baseType: !413, size: 32, offset: 1056)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !4387, file: !4388, line: 117, baseType: !413, size: 32, offset: 1088)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !4387, file: !4388, line: 118, baseType: !417, size: 64, align: 64, offset: 1152)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !4387, file: !4388, line: 120, baseType: !417, size: 64, offset: 1216)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !4387, file: !4388, line: 121, baseType: !417, size: 64, offset: 1280)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !4387, file: !4388, line: 122, baseType: !417, size: 64, offset: 1344)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !4387, file: !4388, line: 123, baseType: !417, size: 64, offset: 1408)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !4387, file: !4388, line: 133, baseType: !417, size: 64, offset: 1472)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !4387, file: !4388, line: 137, baseType: !417, size: 64, offset: 1536)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !4387, file: !4388, line: 142, baseType: !417, size: 64, offset: 1600)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !4387, file: !4388, line: 143, baseType: !417, size: 64, offset: 1664)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !4387, file: !4388, line: 146, baseType: !417, size: 64, offset: 1728)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !4387, file: !4388, line: 147, baseType: !417, size: 64, offset: 1792)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !4387, file: !4388, line: 148, baseType: !417, size: 64, offset: 1856)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !4387, file: !4388, line: 149, baseType: !417, size: 64, offset: 1920)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !4387, file: !4388, line: 154, baseType: !417, size: 64, offset: 1984)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !4387, file: !4388, line: 155, baseType: !417, size: 64, offset: 2048)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !4387, file: !4388, line: 156, baseType: !417, size: 64, offset: 2112)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !4387, file: !4388, line: 158, baseType: !417, size: 64, offset: 2176)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !4387, file: !4388, line: 159, baseType: !417, size: 64, offset: 2240)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !4387, file: !4388, line: 162, baseType: !417, size: 64, offset: 2304)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !4387, file: !4388, line: 163, baseType: !417, size: 64, offset: 2368)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !4387, file: !4388, line: 164, baseType: !417, size: 64, offset: 2432)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !4387, file: !4388, line: 167, baseType: !417, size: 64, offset: 2496)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !4387, file: !4388, line: 168, baseType: !417, size: 64, offset: 2560)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !4387, file: !4388, line: 171, baseType: !417, size: 64, offset: 2624)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !4387, file: !4388, line: 172, baseType: !417, size: 64, offset: 2688)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !4387, file: !4388, line: 175, baseType: !417, size: 64, offset: 2752)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !4387, file: !4388, line: 178, baseType: !417, size: 64, offset: 2816)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !4387, file: !4388, line: 179, baseType: !417, size: 64, offset: 2880)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !4387, file: !4388, line: 182, baseType: !413, size: 32, offset: 2944)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !4387, file: !4388, line: 186, baseType: !417, size: 64, align: 64, offset: 3008)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !4387, file: !4388, line: 194, baseType: !417, size: 64, offset: 3072)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !4387, file: !4388, line: 195, baseType: !417, size: 64, offset: 3136)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !4387, file: !4388, line: 199, baseType: !417, size: 64, offset: 3200)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !4387, file: !4388, line: 200, baseType: !417, size: 64, offset: 3264)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !4387, file: !4388, line: 203, baseType: !417, size: 64, offset: 3328)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !4387, file: !4388, line: 204, baseType: !417, size: 64, offset: 3392)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !4261, file: !4262, line: 222, baseType: !13, size: 32, offset: 7936)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !4261, file: !4262, line: 223, baseType: !4449, size: 64, offset: 8000)
!4449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4450, size: 64)
!4450 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !4262, line: 223, flags: DIFlagFwdDecl)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !4261, file: !4262, line: 230, baseType: !862, size: 8, offset: 8064)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !4261, file: !4262, line: 231, baseType: !831, size: 16, offset: 8080)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !4261, file: !4262, line: 232, baseType: !831, size: 16, offset: 8096)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !4261, file: !4262, line: 234, baseType: !1377, size: 64, offset: 8128)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !4261, file: !4262, line: 237, baseType: !286, size: 256, offset: 8192)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !4261, file: !4262, line: 243, baseType: !803, size: 320, offset: 8448)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !3594, file: !1715, line: 1111, baseType: !4458, size: 64, offset: 15424)
!4458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4459, size: 64)
!4459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !4262, line: 20, size: 16640, elements: !4460)
!4460 = !{!4461, !4462, !4463, !4464}
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !4459, file: !4262, line: 21, baseType: !67, size: 32)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4459, file: !4262, line: 22, baseType: !715, size: 32, offset: 32)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !4459, file: !4262, line: 23, baseType: !62, size: 192, offset: 64)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !4459, file: !4262, line: 24, baseType: !4465, size: 16384, offset: 256)
!4465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4466, size: 16384, elements: !588)
!4466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !4273, line: 51, size: 256, elements: !4467)
!4467 = !{!4468}
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !4466, file: !4273, line: 52, baseType: !4469, size: 256)
!4469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !4273, line: 37, size: 256, elements: !4470)
!4470 = !{!4471, !4478, !4479, !4483}
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !4469, file: !4273, line: 39, baseType: !4472, size: 64)
!4472 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !4473, line: 83, baseType: !4474)
!4473 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!4474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4475, size: 64)
!4475 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !4473, line: 82, baseType: !4476)
!4476 = !DISubroutineType(types: !4477)
!4477 = !{null, !30}
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !4469, file: !4273, line: 40, baseType: !47, size: 64, offset: 64)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !4469, file: !4273, line: 46, baseType: !4480, size: 64, offset: 128)
!4480 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !4473, line: 86, baseType: !4481)
!4481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4482, size: 64)
!4482 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !4473, line: 85, baseType: !2301)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !4469, file: !4273, line: 48, baseType: !4277, size: 64, offset: 192)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3594, file: !1715, line: 1112, baseType: !4277, size: 64, offset: 15488)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !3594, file: !1715, line: 1113, baseType: !4277, size: 64, offset: 15552)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !3594, file: !1715, line: 1115, baseType: !4277, size: 64, offset: 15616)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !3594, file: !1715, line: 1116, baseType: !4272, size: 192, offset: 15680)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !3594, file: !1715, line: 1117, baseType: !47, size: 64, offset: 15872)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !3594, file: !1715, line: 1118, baseType: !43, size: 64, offset: 15936)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !3594, file: !1715, line: 1119, baseType: !13, size: 32, offset: 16000)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !3594, file: !1715, line: 1121, baseType: !673, size: 64, offset: 16064)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !3594, file: !1715, line: 1125, baseType: !4493, size: 64, offset: 16128)
!4493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4494, size: 64)
!4494 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1715, line: 43, flags: DIFlagFwdDecl)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !3594, file: !1715, line: 1127, baseType: !349, size: 32, offset: 16192)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !3594, file: !1715, line: 1128, baseType: !13, size: 32, offset: 16224)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !3594, file: !1715, line: 1130, baseType: !4498, size: 128, offset: 16256)
!4498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !4499, line: 37, size: 128, elements: !4500)
!4499 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!4500 = !{!4501, !4502, !4503}
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4498, file: !4499, line: 38, baseType: !30, size: 32)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !4498, file: !4499, line: 39, baseType: !57, size: 32, offset: 32)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4498, file: !4499, line: 40, baseType: !4504, size: 64, offset: 64)
!4504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4505, size: 64)
!4505 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !4499, line: 24, flags: DIFlagFwdDecl)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !3594, file: !1715, line: 1131, baseType: !4507, size: 256, offset: 16384)
!4507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !4508, line: 12, size: 256, elements: !4509)
!4508 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!4509 = !{!4510, !4511, !4512, !4513}
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !4507, file: !4508, line: 13, baseType: !484, size: 64)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4507, file: !4508, line: 14, baseType: !47, size: 64, offset: 64)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4507, file: !4508, line: 15, baseType: !47, size: 64, offset: 128)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !4507, file: !4508, line: 16, baseType: !862, size: 8, offset: 192)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !3594, file: !1715, line: 1134, baseType: !416, size: 64, offset: 16640)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !3594, file: !1715, line: 1135, baseType: !416, size: 64, offset: 16704)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !3594, file: !1715, line: 1138, baseType: !67, size: 32, offset: 16768)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !3594, file: !1715, line: 1141, baseType: !299, size: 32, offset: 16800)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !3594, file: !1715, line: 1143, baseType: !4519, size: 64, offset: 16832)
!4519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1715, line: 735, size: 64, elements: !4520)
!4520 = !{!4521}
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4519, file: !1715, line: 736, baseType: !4522, size: 64)
!4522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4519, size: 64)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !3594, file: !1715, line: 1147, baseType: !3123, size: 128, offset: 16896)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !3594, file: !1715, line: 1149, baseType: !3593, size: 64, offset: 17024)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !3594, file: !1715, line: 1151, baseType: !4526, size: 64, offset: 17088)
!4526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4527, size: 64)
!4527 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1715, line: 1151, flags: DIFlagFwdDecl)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !3594, file: !1715, line: 1188, baseType: !28, size: 64, offset: 17152)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !3594, file: !1715, line: 1191, baseType: !4530, size: 64, offset: 17216)
!4530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !3594, file: !1715, line: 1194, baseType: !4532, size: 64, offset: 17280)
!4532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4533, size: 64)
!4533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !159, line: 976, size: 320, elements: !4534)
!4534 = !{!4535, !4536, !4537, !4538, !4539, !4540, !4541}
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "mq_list", scope: !4533, file: !159, line: 977, baseType: !1327, size: 64)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "cached_rq", scope: !4533, file: !159, line: 980, baseType: !1327, size: 64, offset: 64)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ios", scope: !4533, file: !159, line: 981, baseType: !34, size: 16, offset: 128)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "rq_count", scope: !4533, file: !159, line: 983, baseType: !34, size: 16, offset: 144)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "multiple_queues", scope: !4533, file: !159, line: 985, baseType: !862, size: 8, offset: 160)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "has_elevator", scope: !4533, file: !159, line: 986, baseType: !862, size: 8, offset: 168)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !4533, file: !159, line: 988, baseType: !105, size: 128, offset: 192)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !3594, file: !1715, line: 1197, baseType: !4543, size: 64, offset: 17344)
!4543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4544, size: 64)
!4544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !4545, line: 155, size: 64, elements: !4546)
!4545 = !DIFile(filename: "./include/linux/swap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b48f968c4d3c1313a5ba7451c8be5b79")
!4546 = !{!4547}
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "reclaimed", scope: !4544, file: !4545, line: 157, baseType: !47, size: 64)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !3594, file: !1715, line: 1199, baseType: !4549, size: 64, offset: 17408)
!4549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4550, size: 64)
!4550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !4551, line: 99, size: 128, elements: !4552)
!4551 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!4552 = !{!4553, !4554, !4555}
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4550, file: !4551, line: 100, baseType: !290, size: 64)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !4550, file: !4551, line: 101, baseType: !57, size: 32, offset: 64)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !4550, file: !4551, line: 103, baseType: !34, size: 16, offset: 96)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !3594, file: !1715, line: 1202, baseType: !4557, size: 64, offset: 17472)
!4557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4558, size: 64)
!4558 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1715, line: 48, flags: DIFlagFwdDecl)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !3594, file: !1715, line: 1205, baseType: !47, size: 64, offset: 17536)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !3594, file: !1715, line: 1206, baseType: !4561, size: 64, offset: 17600)
!4561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4562, size: 64)
!4562 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !4273, line: 14, baseType: !4563)
!4563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !4273, line: 12, size: 384, elements: !4564)
!4564 = !{!4565}
!4565 = !DIDerivedType(tag: DW_TAG_member, scope: !4563, file: !4273, line: 13, baseType: !4566, size: 384)
!4566 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4563, file: !4273, line: 13, size: 384, elements: !4567)
!4567 = !{!4568, !4569, !4570, !4571}
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !4566, file: !4273, line: 13, baseType: !30, size: 32)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !4566, file: !4273, line: 13, baseType: !30, size: 32, offset: 32)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !4566, file: !4273, line: 13, baseType: !30, size: 32, offset: 64)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !4566, file: !4273, line: 13, baseType: !4572, size: 256, offset: 128)
!4572 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !4573, line: 37, size: 256, elements: !4574)
!4573 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!4574 = !{!4575, !4580, !4593, !4599, !4608, !4635, !4640}
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !4572, file: !4573, line: 42, baseType: !4576, size: 64)
!4576 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4572, file: !4573, line: 39, size: 64, elements: !4577)
!4577 = !{!4578, !4579}
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4576, file: !4573, line: 40, baseType: !3883, size: 32)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4576, file: !4573, line: 41, baseType: !355, size: 32, offset: 32)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !4572, file: !4573, line: 50, baseType: !4581, size: 192)
!4581 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4572, file: !4573, line: 45, size: 192, elements: !4582)
!4582 = !{!4583, !4585, !4586, !4592}
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !4581, file: !4573, line: 46, baseType: !4584, size: 32)
!4584 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !45, line: 95, baseType: !30)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !4581, file: !4573, line: 47, baseType: !30, size: 32, offset: 32)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4581, file: !4573, line: 48, baseType: !4587, size: 64, offset: 64)
!4587 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !4573, line: 11, baseType: !4588)
!4588 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !4573, line: 8, size: 64, elements: !4589)
!4589 = !{!4590, !4591}
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !4588, file: !4573, line: 9, baseType: !30, size: 32)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !4588, file: !4573, line: 10, baseType: !28, size: 64)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !4581, file: !4573, line: 49, baseType: !30, size: 32, offset: 128)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !4572, file: !4573, line: 57, baseType: !4594, size: 128)
!4594 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4572, file: !4573, line: 53, size: 128, elements: !4595)
!4595 = !{!4596, !4597, !4598}
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4594, file: !4573, line: 54, baseType: !3883, size: 32)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4594, file: !4573, line: 55, baseType: !355, size: 32, offset: 32)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4594, file: !4573, line: 56, baseType: !4587, size: 64, offset: 64)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !4572, file: !4573, line: 66, baseType: !4600, size: 256)
!4600 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4572, file: !4573, line: 60, size: 256, elements: !4601)
!4601 = !{!4602, !4603, !4604, !4605, !4607}
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4600, file: !4573, line: 61, baseType: !3883, size: 32)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4600, file: !4573, line: 62, baseType: !355, size: 32, offset: 32)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !4600, file: !4573, line: 63, baseType: !30, size: 32, offset: 64)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !4600, file: !4573, line: 64, baseType: !4606, size: 64, offset: 128)
!4606 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !45, line: 94, baseType: !617)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !4600, file: !4573, line: 65, baseType: !4606, size: 64, offset: 192)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !4572, file: !4573, line: 105, baseType: !4609, size: 256)
!4609 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4572, file: !4573, line: 69, size: 256, elements: !4610)
!4610 = !{!4611, !4612}
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !4609, file: !4573, line: 70, baseType: !28, size: 64)
!4612 = !DIDerivedType(tag: DW_TAG_member, scope: !4609, file: !4573, line: 79, baseType: !4613, size: 192, offset: 64)
!4613 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4609, file: !4573, line: 79, size: 192, elements: !4614)
!4614 = !{!4615, !4616, !4617, !4624, !4629}
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !4613, file: !4573, line: 81, baseType: !30, size: 32)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !4613, file: !4573, line: 86, baseType: !831, size: 16)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !4613, file: !4573, line: 92, baseType: !4618, size: 192)
!4618 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4613, file: !4573, line: 88, size: 192, elements: !4619)
!4619 = !{!4620, !4622, !4623}
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !4618, file: !4573, line: 89, baseType: !4621, size: 64)
!4621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !3107)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !4618, file: !4573, line: 90, baseType: !28, size: 64, offset: 64)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !4618, file: !4573, line: 91, baseType: !28, size: 64, offset: 128)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !4613, file: !4573, line: 97, baseType: !4625, size: 96)
!4625 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4613, file: !4573, line: 94, size: 96, elements: !4626)
!4626 = !{!4627, !4628}
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !4625, file: !4573, line: 95, baseType: !4621, size: 64)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !4625, file: !4573, line: 96, baseType: !413, size: 32, offset: 64)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !4613, file: !4573, line: 103, baseType: !4630, size: 128)
!4630 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4613, file: !4573, line: 99, size: 128, elements: !4631)
!4631 = !{!4632, !4633, !4634}
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !4630, file: !4573, line: 100, baseType: !47, size: 64)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !4630, file: !4573, line: 101, baseType: !413, size: 32, offset: 64)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4630, file: !4573, line: 102, baseType: !413, size: 32, offset: 96)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !4572, file: !4573, line: 111, baseType: !4636, size: 128)
!4636 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4572, file: !4573, line: 108, size: 128, elements: !4637)
!4637 = !{!4638, !4639}
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !4636, file: !4573, line: 109, baseType: !618, size: 64)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !4636, file: !4573, line: 110, baseType: !30, size: 32, offset: 64)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !4572, file: !4573, line: 118, baseType: !4641, size: 128)
!4641 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4572, file: !4573, line: 114, size: 128, elements: !4642)
!4642 = !{!4643, !4644, !4645}
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !4641, file: !4573, line: 115, baseType: !28, size: 64)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !4641, file: !4573, line: 116, baseType: !30, size: 32, offset: 64)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !4641, file: !4573, line: 117, baseType: !13, size: 32, offset: 96)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3594, file: !1715, line: 1208, baseType: !4357, size: 448, offset: 17664)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !3594, file: !1715, line: 1215, baseType: !416, size: 64, offset: 18112)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !3594, file: !1715, line: 1217, baseType: !416, size: 64, offset: 18176)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !3594, file: !1715, line: 1219, baseType: !416, size: 64, offset: 18240)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !3594, file: !1715, line: 1223, baseType: !4651, size: 64, offset: 18304)
!4651 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !4652, line: 99, baseType: !4653)
!4652 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!4653 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4652, line: 99, size: 64, elements: !4654)
!4654 = !{!4655}
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !4653, file: !4652, line: 99, baseType: !3303, size: 64)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !3594, file: !1715, line: 1225, baseType: !384, size: 32, offset: 18368)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !3594, file: !1715, line: 1226, baseType: !30, size: 32, offset: 18400)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !3594, file: !1715, line: 1227, baseType: !30, size: 32, offset: 18432)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !3594, file: !1715, line: 1231, baseType: !3999, size: 64, offset: 18496)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !3594, file: !1715, line: 1233, baseType: !105, size: 128, offset: 18560)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !3594, file: !1715, line: 1240, baseType: !4662, size: 64, offset: 18688)
!4662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4663, size: 64)
!4663 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1715, line: 62, flags: DIFlagFwdDecl)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !3594, file: !1715, line: 1242, baseType: !4665, size: 64, offset: 18752)
!4665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4666, size: 64)
!4666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !4667, line: 392, size: 96, elements: !4668)
!4667 = !DIFile(filename: "./include/linux/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb3431a0ca9e11a8015b961c002b640")
!4668 = !{!4669, !4675, !4677}
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4666, file: !4667, line: 393, baseType: !4670, size: 32)
!4670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list", file: !4667, line: 388, size: 32, elements: !4671)
!4671 = !{!4672}
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4670, file: !4667, line: 389, baseType: !4673, size: 32)
!4673 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_uptr_t", file: !4674, line: 46, baseType: !412)
!4674 = !DIFile(filename: "./include/asm-generic/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "789dd20e6944b4211a8be38fb9d0b245")
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "futex_offset", scope: !4666, file: !4667, line: 394, baseType: !4676, size: 32, offset: 32)
!4676 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_long_t", file: !4674, line: 42, baseType: !788)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "list_op_pending", scope: !4666, file: !4667, line: 395, baseType: !4673, size: 32, offset: 64)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !3594, file: !1715, line: 1244, baseType: !105, size: 128, offset: 18816)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !3594, file: !1715, line: 1245, baseType: !4680, size: 64, offset: 18944)
!4680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4681, size: 64)
!4681 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1715, line: 51, flags: DIFlagFwdDecl)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !3594, file: !1715, line: 1246, baseType: !286, size: 256, offset: 19008)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !3594, file: !1715, line: 1247, baseType: !13, size: 32, offset: 19264)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !3594, file: !1715, line: 1250, baseType: !4685, size: 64, offset: 19328)
!4685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4686, size: 64)
!4686 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1715, line: 57, flags: DIFlagFwdDecl)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !3594, file: !1715, line: 1251, baseType: !286, size: 256, offset: 19392)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !3594, file: !1715, line: 1252, baseType: !105, size: 128, offset: 19648)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !3594, file: !1715, line: 1259, baseType: !1661, size: 64, offset: 19776)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !3594, file: !1715, line: 1260, baseType: !831, size: 16, offset: 19840)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !3594, file: !1715, line: 1261, baseType: !831, size: 16, offset: 19856)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !3594, file: !1715, line: 1314, baseType: !4693, size: 64, offset: 19904)
!4693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4694, size: 64)
!4694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !4695, line: 62, size: 256, align: 256, elements: !4696)
!4695 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!4696 = !{!4697, !4698, !4699, !4700, !4701, !4702, !4703}
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !4694, file: !4695, line: 75, baseType: !413, size: 32)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !4694, file: !4695, line: 90, baseType: !413, size: 32, offset: 32)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !4694, file: !4695, line: 112, baseType: !417, size: 64, offset: 64)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4694, file: !4695, line: 132, baseType: !413, size: 32, offset: 128)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4694, file: !4695, line: 140, baseType: !413, size: 32, offset: 160)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !4694, file: !4695, line: 149, baseType: !413, size: 32, offset: 192)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4694, file: !4695, line: 154, baseType: !4704, offset: 224)
!4704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !746)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !3594, file: !1715, line: 1315, baseType: !412, size: 32, offset: 19968)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !3594, file: !1715, line: 1316, baseType: !412, size: 32, offset: 20000)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !3594, file: !1715, line: 1321, baseType: !47, size: 64, offset: 20032)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3594, file: !1715, line: 1325, baseType: !30, size: 32, offset: 20096)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !3594, file: !1715, line: 1326, baseType: !30, size: 32, offset: 20128)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !3594, file: !1715, line: 1327, baseType: !30, size: 32, offset: 20160)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !3594, file: !1715, line: 1328, baseType: !30, size: 32, offset: 20192)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !3594, file: !1715, line: 1329, baseType: !670, size: 128, align: 64, offset: 20224)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !3594, file: !1715, line: 1332, baseType: !4714, size: 128, offset: 20352)
!4714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4715, line: 51, size: 128, elements: !4716)
!4715 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!4716 = !{!4717, !4722, !4723}
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4714, file: !4715, line: 60, baseType: !4718, size: 64)
!4718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4719, line: 7, size: 64, elements: !4720)
!4719 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!4720 = !{!4721}
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4718, file: !4719, line: 12, baseType: !3753, size: 64)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4714, file: !4715, line: 63, baseType: !862, size: 8, offset: 64)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4714, file: !4715, line: 70, baseType: !862, size: 8, offset: 72)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !3594, file: !1715, line: 1335, baseType: !1713, size: 64, offset: 20480)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !3594, file: !1715, line: 1337, baseType: !4726, size: 128, offset: 20544)
!4726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4715, line: 39, size: 128, elements: !4727)
!4727 = !{!4728, !4729, !4730}
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4726, file: !4715, line: 40, baseType: !317, size: 64)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4726, file: !4715, line: 42, baseType: !413, size: 32, offset: 64)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4726, file: !4715, line: 43, baseType: !413, size: 32, offset: 96)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !3594, file: !1715, line: 1340, baseType: !4732, size: 64, offset: 20672)
!4732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4733, size: 64)
!4733 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1715, line: 69, flags: DIFlagFwdDecl)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !3594, file: !1715, line: 1351, baseType: !30, size: 32, offset: 20736)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !3594, file: !1715, line: 1352, baseType: !30, size: 32, offset: 20768)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !3594, file: !1715, line: 1354, baseType: !47, size: 64, offset: 20800)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !3594, file: !1715, line: 1364, baseType: !416, size: 64, offset: 20864)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !3594, file: !1715, line: 1365, baseType: !416, size: 64, offset: 20928)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !3594, file: !1715, line: 1412, baseType: !47, size: 64, offset: 20992)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !3594, file: !1715, line: 1453, baseType: !2624, size: 64, offset: 21056)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !3594, file: !1715, line: 1457, baseType: !4742, size: 64, offset: 21120)
!4742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4743, size: 64)
!4743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !267, line: 61, size: 576, elements: !4744)
!4744 = !{!4745, !4746, !4765, !4768, !4769, !4802, !4812}
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4743, file: !267, line: 62, baseType: !266, size: 32)
!4746 = !DIDerivedType(tag: DW_TAG_member, scope: !4743, file: !267, line: 64, baseType: !4747, size: 192, offset: 64)
!4747 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4743, file: !267, line: 64, size: 192, elements: !4748)
!4748 = !{!4749, !4760}
!4749 = !DIDerivedType(tag: DW_TAG_member, scope: !4747, file: !267, line: 65, baseType: !4750, size: 192)
!4750 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4747, file: !267, line: 65, size: 192, elements: !4751)
!4751 = !{!4752, !4759}
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4750, file: !267, line: 66, baseType: !4753, size: 128)
!4753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4754, line: 50, size: 128, elements: !4755)
!4754 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4755 = !{!4756, !4757, !4758}
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4753, file: !4754, line: 52, baseType: !47, size: 64)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4753, file: !4754, line: 54, baseType: !13, size: 32, offset: 64)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4753, file: !4754, line: 55, baseType: !13, size: 32, offset: 96)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4750, file: !267, line: 67, baseType: !47, size: 64, offset: 128)
!4760 = !DIDerivedType(tag: DW_TAG_member, scope: !4747, file: !267, line: 70, baseType: !4761, size: 192)
!4761 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4747, file: !267, line: 70, size: 192, elements: !4762)
!4762 = !{!4763, !4764}
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4761, file: !267, line: 71, baseType: !670, size: 128, align: 64)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4761, file: !267, line: 72, baseType: !47, size: 64, offset: 128)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4743, file: !267, line: 76, baseType: !4766, size: 64, offset: 256)
!4766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4767, size: 64)
!4767 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !267, line: 76, flags: DIFlagFwdDecl)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4743, file: !267, line: 77, baseType: !47, size: 64, offset: 320)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4743, file: !267, line: 79, baseType: !4770, size: 64, offset: 384)
!4770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4771, size: 64)
!4771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4754, line: 25, size: 256, elements: !4772)
!4772 = !{!4773, !4779, !4783}
!4773 = !DIDerivedType(tag: DW_TAG_member, scope: !4771, file: !4754, line: 26, baseType: !4774, size: 128)
!4774 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4771, file: !4754, line: 26, size: 128, elements: !4775)
!4775 = !{!4776, !4778}
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4774, file: !4754, line: 27, baseType: !4777, size: 128)
!4777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 128, elements: !3941)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4774, file: !4754, line: 28, baseType: !4777, size: 128)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4771, file: !4754, line: 31, baseType: !4780, size: 64, offset: 128)
!4780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4781, size: 64)
!4781 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4782)
!4782 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4754, line: 23, flags: DIFlagFwdDecl)
!4783 = !DIDerivedType(tag: DW_TAG_member, scope: !4771, file: !4754, line: 33, baseType: !4784, size: 64, offset: 192)
!4784 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4771, file: !4754, line: 33, size: 64, elements: !4785)
!4785 = !{!4786, !4792, !4797}
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4784, file: !4754, line: 38, baseType: !4787, size: 64)
!4787 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4784, file: !4754, line: 34, size: 64, elements: !4788)
!4788 = !{!4789, !4790, !4791}
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4787, file: !4754, line: 35, baseType: !788, size: 32)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4787, file: !4754, line: 36, baseType: !91, size: 8, offset: 32)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4787, file: !4754, line: 37, baseType: !91, size: 8, offset: 40)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4784, file: !4754, line: 42, baseType: !4793, size: 16)
!4793 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4784, file: !4754, line: 39, size: 16, elements: !4794)
!4794 = !{!4795, !4796}
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4793, file: !4754, line: 40, baseType: !91, size: 8)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4793, file: !4754, line: 41, baseType: !91, size: 8, offset: 8)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4784, file: !4754, line: 46, baseType: !4798, size: 16)
!4798 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4784, file: !4754, line: 43, size: 16, elements: !4799)
!4799 = !{!4800, !4801}
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4798, file: !4754, line: 44, baseType: !91, size: 8)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4798, file: !4754, line: 45, baseType: !91, size: 8, offset: 8)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4743, file: !267, line: 81, baseType: !4803, size: 64, offset: 448)
!4803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4804, size: 64)
!4804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !267, line: 85, size: 384, elements: !4805)
!4805 = !{!4806, !4807, !4808, !4809, !4810, !4811}
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4804, file: !267, line: 86, baseType: !4766, size: 64)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4804, file: !267, line: 87, baseType: !47, size: 64, offset: 64)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4804, file: !267, line: 88, baseType: !47, size: 64, offset: 128)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4804, file: !267, line: 89, baseType: !47, size: 64, offset: 192)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4804, file: !267, line: 90, baseType: !862, size: 8, offset: 256)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4804, file: !267, line: 92, baseType: !4803, size: 64, offset: 320)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4743, file: !267, line: 82, baseType: !13, size: 32, offset: 512)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !3594, file: !1715, line: 1463, baseType: !4814, offset: 21184)
!4814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1715, line: 739, elements: !1398)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3594, file: !1715, line: 1470, baseType: !670, size: 128, align: 64, offset: 21184)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3594, file: !1715, line: 1471, baseType: !715, size: 32, offset: 21312)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !3594, file: !1715, line: 1472, baseType: !30, size: 32, offset: 21344)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !3594, file: !1715, line: 1474, baseType: !3593, size: 64, offset: 21376)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !3594, file: !1715, line: 1475, baseType: !2196, size: 320, offset: 21440)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !3594, file: !1715, line: 1478, baseType: !4821, size: 64, offset: 21760)
!4821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4822, size: 64)
!4822 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1715, line: 1478, flags: DIFlagFwdDecl)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !3594, file: !1715, line: 1482, baseType: !715, size: 32, offset: 21824)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3594, file: !1715, line: 1489, baseType: !28, size: 64, offset: 21888)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !3594, file: !1715, line: 1504, baseType: !28, size: 64, offset: 21952)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !3594, file: !1715, line: 1505, baseType: !417, size: 64, offset: 22016)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !3594, file: !1715, line: 1506, baseType: !416, size: 64, offset: 22080)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !3594, file: !1715, line: 1507, baseType: !417, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !3594, file: !1715, line: 1508, baseType: !417, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !3594, file: !1715, line: 1509, baseType: !417, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !3594, file: !1715, line: 1510, baseType: !670, size: 128, align: 64, offset: 22208)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !3594, file: !1715, line: 1511, baseType: !30, size: 32, offset: 22336)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !3594, file: !1715, line: 1515, baseType: !4834, size: 64, offset: 22400)
!4834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !665, line: 56, size: 64, elements: !4835)
!4835 = !{!4836}
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4834, file: !665, line: 57, baseType: !668, size: 64)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !3594, file: !1715, line: 1518, baseType: !4834, size: 64, offset: 22464)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !3594, file: !1715, line: 1528, baseType: !670, size: 128, align: 64, offset: 22528)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !3594, file: !1715, line: 1552, baseType: !4840, size: 35328, offset: 23040)
!4840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4841, line: 430, size: 35328, elements: !4842)
!4841 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4842 = !{!4843, !4861, !4862, !4863, !4864, !4865, !4866, !4867, !4868, !4872, !4873, !4874, !4875, !4876, !4877, !4880, !4881, !4882, !4883}
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4840, file: !4841, line: 432, baseType: !4844, size: 192)
!4844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4845, size: 192, elements: !584)
!4845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4846, line: 16, size: 64, elements: !4847)
!4846 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4847 = !{!4848, !4849, !4850, !4851, !4852, !4853, !4854, !4855, !4856, !4857, !4858, !4859, !4860}
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4845, file: !4846, line: 17, baseType: !101, size: 16)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4845, file: !4846, line: 18, baseType: !101, size: 16, offset: 16)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4845, file: !4846, line: 19, baseType: !101, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4845, file: !4846, line: 19, baseType: !101, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4845, file: !4846, line: 19, baseType: !101, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4845, file: !4846, line: 19, baseType: !101, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4845, file: !4846, line: 19, baseType: !101, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4845, file: !4846, line: 20, baseType: !101, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4845, file: !4846, line: 20, baseType: !101, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4845, file: !4846, line: 20, baseType: !101, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4845, file: !4846, line: 20, baseType: !101, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4845, file: !4846, line: 20, baseType: !101, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4845, file: !4846, line: 20, baseType: !101, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4840, file: !4841, line: 436, baseType: !47, size: 64, offset: 192)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4840, file: !4841, line: 440, baseType: !34, size: 16, offset: 256)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4840, file: !4841, line: 441, baseType: !34, size: 16, offset: 272)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4840, file: !4841, line: 442, baseType: !34, size: 16, offset: 288)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4840, file: !4841, line: 443, baseType: !34, size: 16, offset: 304)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4840, file: !4841, line: 447, baseType: !47, size: 64, offset: 320)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4840, file: !4841, line: 448, baseType: !47, size: 64, offset: 384)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4840, file: !4841, line: 459, baseType: !4869, size: 256, offset: 448)
!4869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4870, size: 256, elements: !733)
!4870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4871, size: 64)
!4871 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4841, line: 428, flags: DIFlagFwdDecl)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4840, file: !4841, line: 461, baseType: !47, size: 64, offset: 704)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4840, file: !4841, line: 463, baseType: !47, size: 64, offset: 768)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4840, file: !4841, line: 465, baseType: !47, size: 64, offset: 832)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4840, file: !4841, line: 466, baseType: !47, size: 64, offset: 896)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4840, file: !4841, line: 467, baseType: !47, size: 64, offset: 960)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4840, file: !4841, line: 473, baseType: !4878, size: 64, offset: 1024)
!4878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4879, size: 64)
!4879 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4841, line: 10, flags: DIFlagFwdDecl)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4840, file: !4841, line: 480, baseType: !47, size: 64, offset: 1088)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4840, file: !4841, line: 482, baseType: !13, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4840, file: !4841, line: 491, baseType: !412, size: 32, offset: 1184)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4840, file: !4841, line: 501, baseType: !4884, size: 33792, offset: 1536)
!4884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4885, line: 448, size: 33792, elements: !4886)
!4885 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4886 = !{!4887, !4888, !4889, !5049, !5050, !5056, !5057}
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4884, file: !4885, line: 461, baseType: !13, size: 32)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4884, file: !4885, line: 468, baseType: !47, size: 64, offset: 64)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4884, file: !4885, line: 476, baseType: !4890, size: 64, offset: 128)
!4890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4891, size: 64)
!4891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4885, line: 356, size: 33280, align: 512, elements: !4892)
!4892 = !{!4893, !4894, !4895, !4896, !4897, !4898, !4899, !4900, !4901, !4902}
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4891, file: !4885, line: 358, baseType: !13, size: 32)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4891, file: !4885, line: 361, baseType: !13, size: 32, offset: 32)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4891, file: !4885, line: 364, baseType: !416, size: 64, offset: 64)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4891, file: !4885, line: 367, baseType: !416, size: 64, offset: 128)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4891, file: !4885, line: 370, baseType: !416, size: 64, offset: 192)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4891, file: !4885, line: 373, baseType: !13, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4891, file: !4885, line: 376, baseType: !13, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4891, file: !4885, line: 391, baseType: !13, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4891, file: !4885, line: 394, baseType: !13, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4891, file: !4885, line: 397, baseType: !4903, size: 32768, offset: 512)
!4903 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4885, line: 348, size: 32768, elements: !4904)
!4904 = !{!4905, !4920, !4957, !5034, !5047}
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4903, file: !4885, line: 349, baseType: !4906, size: 896)
!4906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4885, line: 12, size: 896, elements: !4907)
!4907 = !{!4908, !4909, !4910, !4911, !4912, !4913, !4914, !4915, !4919}
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4906, file: !4885, line: 13, baseType: !412, size: 32)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4906, file: !4885, line: 14, baseType: !412, size: 32, offset: 32)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4906, file: !4885, line: 15, baseType: !412, size: 32, offset: 64)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4906, file: !4885, line: 16, baseType: !412, size: 32, offset: 96)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4906, file: !4885, line: 17, baseType: !412, size: 32, offset: 128)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4906, file: !4885, line: 18, baseType: !412, size: 32, offset: 160)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4906, file: !4885, line: 19, baseType: !412, size: 32, offset: 192)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4906, file: !4885, line: 22, baseType: !4916, size: 640, offset: 224)
!4916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, size: 640, elements: !4917)
!4917 = !{!4918}
!4918 = !DISubrange(count: 20)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4906, file: !4885, line: 25, baseType: !412, size: 32, offset: 864)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4903, file: !4885, line: 350, baseType: !4921, size: 4096, align: 128)
!4921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4885, line: 34, size: 4096, align: 128, elements: !4922)
!4922 = !{!4923, !4924, !4925, !4926, !4927, !4942, !4943, !4944, !4946, !4948, !4952}
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4921, file: !4885, line: 35, baseType: !101, size: 16)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4921, file: !4885, line: 36, baseType: !101, size: 16, offset: 16)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4921, file: !4885, line: 37, baseType: !101, size: 16, offset: 32)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4921, file: !4885, line: 38, baseType: !101, size: 16, offset: 48)
!4927 = !DIDerivedType(tag: DW_TAG_member, scope: !4921, file: !4885, line: 39, baseType: !4928, size: 128, offset: 64)
!4928 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4921, file: !4885, line: 39, size: 128, elements: !4929)
!4929 = !{!4930, !4935}
!4930 = !DIDerivedType(tag: DW_TAG_member, scope: !4928, file: !4885, line: 40, baseType: !4931, size: 128)
!4931 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4928, file: !4885, line: 40, size: 128, elements: !4932)
!4932 = !{!4933, !4934}
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4931, file: !4885, line: 41, baseType: !416, size: 64)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4931, file: !4885, line: 42, baseType: !416, size: 64, offset: 64)
!4935 = !DIDerivedType(tag: DW_TAG_member, scope: !4928, file: !4885, line: 44, baseType: !4936, size: 128)
!4936 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4928, file: !4885, line: 44, size: 128, elements: !4937)
!4937 = !{!4938, !4939, !4940, !4941}
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4936, file: !4885, line: 45, baseType: !412, size: 32)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4936, file: !4885, line: 46, baseType: !412, size: 32, offset: 32)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4936, file: !4885, line: 47, baseType: !412, size: 32, offset: 64)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4936, file: !4885, line: 48, baseType: !412, size: 32, offset: 96)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4921, file: !4885, line: 51, baseType: !412, size: 32, offset: 192)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4921, file: !4885, line: 52, baseType: !412, size: 32, offset: 224)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4921, file: !4885, line: 55, baseType: !4945, size: 1024, offset: 256)
!4945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, size: 1024, elements: !425)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4921, file: !4885, line: 58, baseType: !4947, size: 2048, offset: 1280)
!4947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, size: 2048, elements: !588)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4921, file: !4885, line: 60, baseType: !4949, size: 384, offset: 3328)
!4949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, size: 384, elements: !4950)
!4950 = !{!4951}
!4951 = !DISubrange(count: 12)
!4952 = !DIDerivedType(tag: DW_TAG_member, scope: !4921, file: !4885, line: 62, baseType: !4953, size: 384, offset: 3712)
!4953 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4921, file: !4885, line: 62, size: 384, elements: !4954)
!4954 = !{!4955, !4956}
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4953, file: !4885, line: 63, baseType: !4949, size: 384)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4953, file: !4885, line: 64, baseType: !4949, size: 384)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4903, file: !4885, line: 351, baseType: !4958, size: 1088)
!4958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4885, line: 79, size: 1088, elements: !4959)
!4959 = !{!4960, !4961, !4962, !4963, !4964, !4965, !4966, !4967, !4968, !4969, !4970, !4971, !4972, !4973, !4974, !5033}
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4958, file: !4885, line: 80, baseType: !412, size: 32)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4958, file: !4885, line: 81, baseType: !412, size: 32, offset: 32)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4958, file: !4885, line: 82, baseType: !412, size: 32, offset: 64)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4958, file: !4885, line: 83, baseType: !412, size: 32, offset: 96)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4958, file: !4885, line: 84, baseType: !412, size: 32, offset: 128)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4958, file: !4885, line: 85, baseType: !412, size: 32, offset: 160)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4958, file: !4885, line: 86, baseType: !412, size: 32, offset: 192)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4958, file: !4885, line: 88, baseType: !4916, size: 640, offset: 224)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4958, file: !4885, line: 89, baseType: !91, size: 8, offset: 864)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4958, file: !4885, line: 90, baseType: !91, size: 8, offset: 872)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4958, file: !4885, line: 91, baseType: !91, size: 8, offset: 880)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4958, file: !4885, line: 92, baseType: !91, size: 8, offset: 888)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4958, file: !4885, line: 93, baseType: !91, size: 8, offset: 896)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4958, file: !4885, line: 94, baseType: !91, size: 8, offset: 904)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4958, file: !4885, line: 95, baseType: !4975, size: 64, offset: 960)
!4975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4976, size: 64)
!4976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4977, line: 11, size: 128, elements: !4978)
!4977 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4978 = !{!4979, !4980}
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4976, file: !4977, line: 12, baseType: !618, size: 64)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4976, file: !4977, line: 13, baseType: !4981, size: 64, offset: 64)
!4981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4982, size: 64)
!4982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4983, line: 103, size: 1344, elements: !4984)
!4983 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4984 = !{!4985, !4986, !4987, !4988, !4989, !4990, !4991, !4992, !4993, !4994, !4995, !4996, !4997, !4998, !4999, !5000, !5001, !5002, !5013, !5014, !5015}
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4982, file: !4983, line: 109, baseType: !47, size: 64)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4982, file: !4983, line: 110, baseType: !47, size: 64, offset: 64)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4982, file: !4983, line: 111, baseType: !47, size: 64, offset: 128)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4982, file: !4983, line: 112, baseType: !47, size: 64, offset: 192)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4982, file: !4983, line: 113, baseType: !47, size: 64, offset: 256)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4982, file: !4983, line: 114, baseType: !47, size: 64, offset: 320)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4982, file: !4983, line: 117, baseType: !47, size: 64, offset: 384)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4982, file: !4983, line: 118, baseType: !47, size: 64, offset: 448)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4982, file: !4983, line: 119, baseType: !47, size: 64, offset: 512)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4982, file: !4983, line: 120, baseType: !47, size: 64, offset: 576)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4982, file: !4983, line: 121, baseType: !47, size: 64, offset: 640)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4982, file: !4983, line: 122, baseType: !47, size: 64, offset: 704)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4982, file: !4983, line: 123, baseType: !47, size: 64, offset: 768)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4982, file: !4983, line: 124, baseType: !47, size: 64, offset: 832)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4982, file: !4983, line: 125, baseType: !47, size: 64, offset: 896)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4982, file: !4983, line: 139, baseType: !47, size: 64, offset: 960)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4982, file: !4983, line: 142, baseType: !47, size: 64, offset: 1024)
!5002 = !DIDerivedType(tag: DW_TAG_member, scope: !4982, file: !4983, line: 144, baseType: !5003, size: 64, offset: 1088)
!5003 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4982, file: !4983, line: 144, size: 64, elements: !5004)
!5004 = !{!5005, !5006, !5007}
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !5003, file: !4983, line: 146, baseType: !101, size: 16)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !5003, file: !4983, line: 148, baseType: !416, size: 64)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !5003, file: !4983, line: 150, baseType: !5008, size: 64)
!5008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4983, line: 59, size: 64, elements: !5009)
!5009 = !{!5010, !5011, !5012}
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !5008, file: !4983, line: 61, baseType: !416, size: 16, flags: DIFlagBitField, extraData: i64 0)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !5008, file: !4983, line: 63, baseType: !416, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !5008, file: !4983, line: 65, baseType: !416, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4982, file: !4983, line: 153, baseType: !47, size: 64, offset: 1152)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4982, file: !4983, line: 154, baseType: !47, size: 64, offset: 1216)
!5015 = !DIDerivedType(tag: DW_TAG_member, scope: !4982, file: !4983, line: 156, baseType: !5016, size: 64, offset: 1280)
!5016 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4982, file: !4983, line: 156, size: 64, elements: !5017)
!5017 = !{!5018, !5019, !5020}
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !5016, file: !4983, line: 158, baseType: !101, size: 16)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !5016, file: !4983, line: 160, baseType: !416, size: 64)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !5016, file: !4983, line: 162, baseType: !5021, size: 64)
!5021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4983, line: 69, size: 64, elements: !5022)
!5022 = !{!5023, !5024, !5025, !5026, !5027, !5028, !5029, !5030, !5031, !5032}
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !5021, file: !4983, line: 71, baseType: !416, size: 16, flags: DIFlagBitField, extraData: i64 0)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !5021, file: !4983, line: 73, baseType: !416, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !5021, file: !4983, line: 75, baseType: !416, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !5021, file: !4983, line: 77, baseType: !416, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !5021, file: !4983, line: 80, baseType: !416, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5021, file: !4983, line: 83, baseType: !416, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !5021, file: !4983, line: 86, baseType: !416, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !5021, file: !4983, line: 88, baseType: !416, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !5021, file: !4983, line: 93, baseType: !416, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !5021, file: !4983, line: 100, baseType: !416, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4958, file: !4885, line: 96, baseType: !412, size: 32, offset: 1024)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4903, file: !4885, line: 352, baseType: !5035, size: 4608, align: 512)
!5035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4885, line: 333, size: 4608, align: 512, elements: !5036)
!5036 = !{!5037, !5038, !5045}
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !5035, file: !4885, line: 334, baseType: !4921, size: 4096, align: 128)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !5035, file: !4885, line: 335, baseType: !5039, size: 512, offset: 4096)
!5039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4885, line: 312, size: 512, elements: !5040)
!5040 = !{!5041, !5042, !5043}
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5039, file: !4885, line: 313, baseType: !416, size: 64)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !5039, file: !4885, line: 314, baseType: !416, size: 64, offset: 64)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5039, file: !4885, line: 315, baseType: !5044, size: 384, offset: 128)
!5044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !416, size: 384, elements: !849)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !5035, file: !4885, line: 336, baseType: !5046, offset: 4608)
!5046 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, elements: !746)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4903, file: !4885, line: 353, baseType: !5048, size: 32768)
!5048 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 32768, elements: !4056)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4884, file: !4885, line: 484, baseType: !4890, size: 64, offset: 192)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4884, file: !4885, line: 491, baseType: !5051, size: 128, offset: 256)
!5051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4885, line: 404, size: 128, elements: !5052)
!5052 = !{!5053, !5054, !5055}
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !5051, file: !4885, line: 424, baseType: !416, size: 64)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !5051, file: !4885, line: 432, baseType: !13, size: 32, offset: 64)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !5051, file: !4885, line: 440, baseType: !13, size: 32, offset: 96)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4884, file: !4885, line: 498, baseType: !5051, size: 128, offset: 384)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4884, file: !4885, line: 508, baseType: !4891, size: 33280, align: 512, offset: 512)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3576, file: !3577, line: 16, baseType: !62, size: 192, offset: 512)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3576, file: !3577, line: 17, baseType: !57, size: 32, offset: 704)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !496, file: !250, line: 1240, baseType: !28, size: 64, offset: 6912)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !496, file: !250, line: 1243, baseType: !412, size: 32, offset: 6976)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !496, file: !250, line: 1245, baseType: !819, size: 64, offset: 7040)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !496, file: !250, line: 1246, baseType: !819, size: 64, offset: 7104)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !496, file: !250, line: 1248, baseType: !413, size: 32, offset: 7168)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !496, file: !250, line: 1249, baseType: !5066, size: 64, offset: 7232)
!5066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5067, size: 64)
!5067 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !250, line: 634, flags: DIFlagFwdDecl)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !496, file: !250, line: 1252, baseType: !2631, size: 256, offset: 7296)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !496, file: !250, line: 1253, baseType: !5070, size: 128, offset: 7552)
!5070 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !5071, line: 21, baseType: !5072)
!5071 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!5072 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5071, line: 19, size: 128, elements: !5073)
!5073 = !{!5074}
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !5072, file: !5071, line: 20, baseType: !5075, size: 128)
!5075 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 128, elements: !3941)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !496, file: !250, line: 1255, baseType: !13, size: 32, offset: 7680)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !496, file: !250, line: 1261, baseType: !286, size: 256, offset: 7744)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !496, file: !250, line: 1267, baseType: !25, size: 64, offset: 8000)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !496, file: !250, line: 1269, baseType: !441, size: 64, offset: 8064)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !496, file: !250, line: 1271, baseType: !5081, size: 448, offset: 8128)
!5081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2457, line: 63, size: 448, elements: !5082)
!5082 = !{!5083, !5088, !5089, !5090, !5091, !5092, !5093}
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !5081, file: !2457, line: 64, baseType: !5084, size: 64)
!5084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5085, size: 64)
!5085 = !DISubroutineType(types: !5086)
!5086 = !{!47, !5087, !2455}
!5087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5081, size: 64)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !5081, file: !2457, line: 66, baseType: !5084, size: 64, offset: 64)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !5081, file: !2457, line: 69, baseType: !618, size: 64, offset: 128)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !5081, file: !2457, line: 70, baseType: !30, size: 32, offset: 192)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5081, file: !2457, line: 71, baseType: !13, size: 32, offset: 224)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5081, file: !2457, line: 74, baseType: !105, size: 128, offset: 256)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !5081, file: !2457, line: 85, baseType: !5094, size: 64, offset: 384)
!5094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !496, file: !250, line: 1274, baseType: !290, size: 64, offset: 8576)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !496, file: !250, line: 1280, baseType: !290, size: 64, offset: 8640)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !496, file: !250, line: 1283, baseType: !30, size: 32, offset: 8704)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !496, file: !250, line: 1286, baseType: !1802, size: 32, offset: 8736)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !496, file: !250, line: 1289, baseType: !2258, size: 64, offset: 8768)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !496, file: !250, line: 1290, baseType: !724, size: 64, offset: 8832)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !496, file: !250, line: 1297, baseType: !945, size: 64, offset: 8896)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !496, file: !250, line: 1304, baseType: !5103, size: 64, offset: 8960)
!5103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !5104, line: 49, size: 64, elements: !5105)
!5104 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!5105 = !{!5106}
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5103, file: !5104, line: 50, baseType: !5107, size: 64)
!5107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5108, size: 64)
!5108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !5104, line: 41, size: 512, align: 512, elements: !5109)
!5109 = !{!5110, !5111, !5116}
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5108, file: !5104, line: 43, baseType: !67, size: 32)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !5108, file: !5104, line: 45, baseType: !5112, size: 192, offset: 64)
!5112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !5104, line: 29, size: 192, elements: !5113)
!5113 = !{!5114, !5115}
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5112, file: !5104, line: 30, baseType: !105, size: 128)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !5112, file: !5104, line: 32, baseType: !618, size: 64, offset: 128)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !5108, file: !5104, line: 46, baseType: !618, size: 64, offset: 256)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !496, file: !250, line: 1305, baseType: !5103, size: 64, offset: 9024)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !496, file: !250, line: 1306, baseType: !670, size: 128, align: 64, offset: 9088)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !496, file: !250, line: 1307, baseType: !994, size: 256, offset: 9216)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !496, file: !250, line: 1309, baseType: !286, size: 256, offset: 9472)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !496, file: !250, line: 1314, baseType: !30, size: 32, offset: 9728)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !496, file: !250, line: 1317, baseType: !67, size: 32, align: 512, offset: 10240)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !496, file: !250, line: 1318, baseType: !105, size: 128, offset: 10304)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !496, file: !250, line: 1320, baseType: !67, size: 32, offset: 10432)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !496, file: !250, line: 1321, baseType: !105, size: 128, offset: 10496)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !490, file: !491, line: 73, baseType: !30, size: 32, offset: 128)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !490, file: !491, line: 74, baseType: !5128, size: 64, offset: 192)
!5128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5129, size: 64)
!5129 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !770, line: 42, flags: DIFlagFwdDecl)
!5130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !443, file: !380, line: 141, baseType: !5132, size: 64, offset: 704)
!5132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5133, size: 64)
!5133 = !DISubroutineType(types: !5134)
!5134 = !{!30, !2517, !862}
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !443, file: !380, line: 142, baseType: !5136, size: 64, offset: 768)
!5136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5137, size: 64)
!5137 = !DISubroutineType(types: !5138)
!5138 = !{!378, !378, !5139}
!5139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5140, size: 64)
!5140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !344)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !379, file: !380, line: 96, baseType: !495, size: 64, offset: 832)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !379, file: !380, line: 97, baseType: !47, size: 64, offset: 896)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !379, file: !380, line: 98, baseType: !28, size: 64, offset: 960)
!5144 = !DIDerivedType(tag: DW_TAG_member, scope: !379, file: !380, line: 100, baseType: !5145, size: 128, offset: 1024)
!5145 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !379, file: !380, line: 100, size: 128, elements: !5146)
!5146 = !{!5147, !5148}
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !5145, file: !380, line: 101, baseType: !105, size: 128)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !5145, file: !380, line: 102, baseType: !5149, size: 64)
!5149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !379, file: !380, line: 104, baseType: !105, size: 128, offset: 1152)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !379, file: !380, line: 105, baseType: !105, size: 128, offset: 1280)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !379, file: !380, line: 113, baseType: !5153, size: 128, offset: 1408)
!5153 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !379, file: !380, line: 109, size: 128, elements: !5154)
!5154 = !{!5155, !5156, !5157}
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !5153, file: !380, line: 110, baseType: !728, size: 128)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !5153, file: !380, line: 111, baseType: !394, size: 128)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !5153, file: !380, line: 112, baseType: !670, size: 128, align: 64)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !372, file: !250, line: 1968, baseType: !5159, size: 64, offset: 64)
!5159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5160, size: 64)
!5160 = !DISubroutineType(types: !5161)
!5161 = !{!25, !378, !343, !5162}
!5162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5163, size: 64)
!5163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !5164, line: 10, size: 128, elements: !5165)
!5164 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!5165 = !{!5166, !5167}
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !5163, file: !5164, line: 11, baseType: !1842, size: 64)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !5163, file: !5164, line: 12, baseType: !28, size: 64, offset: 64)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !372, file: !250, line: 1969, baseType: !5169, size: 64, offset: 128)
!5169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5170, size: 64)
!5170 = !DISubroutineType(types: !5171)
!5171 = !{!30, !5128, !343, !30}
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !372, file: !250, line: 1970, baseType: !5173, size: 64, offset: 192)
!5173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5174, size: 64)
!5174 = !DISubroutineType(types: !5175)
!5175 = !{!366, !343, !30, !862}
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !372, file: !250, line: 1972, baseType: !5177, size: 64, offset: 256)
!5177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5178, size: 64)
!5178 = !DISubroutineType(types: !5179)
!5179 = !{!30, !378, !484, !30}
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !372, file: !250, line: 1974, baseType: !5181, size: 64, offset: 320)
!5181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5182, size: 64)
!5182 = !DISubroutineType(types: !5183)
!5183 = !{!30, !5128, !343, !378, !32, !862}
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !372, file: !250, line: 1976, baseType: !5185, size: 64, offset: 384)
!5185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5186, size: 64)
!5186 = !DISubroutineType(types: !5187)
!5187 = !{!30, !378, !343, !378}
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !372, file: !250, line: 1977, baseType: !5189, size: 64, offset: 448)
!5189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5190, size: 64)
!5190 = !DISubroutineType(types: !5191)
!5191 = !{!30, !343, !378}
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !372, file: !250, line: 1978, baseType: !5193, size: 64, offset: 512)
!5193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5194, size: 64)
!5194 = !DISubroutineType(types: !5195)
!5195 = !{!30, !5128, !343, !378, !25}
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !372, file: !250, line: 1980, baseType: !5197, size: 64, offset: 576)
!5197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5198, size: 64)
!5198 = !DISubroutineType(types: !5199)
!5199 = !{!30, !5128, !343, !378, !32}
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !372, file: !250, line: 1982, baseType: !5189, size: 64, offset: 640)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !372, file: !250, line: 1983, baseType: !5202, size: 64, offset: 704)
!5202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5203, size: 64)
!5203 = !DISubroutineType(types: !5204)
!5204 = !{!30, !5128, !343, !378, !32, !500}
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !372, file: !250, line: 1985, baseType: !5206, size: 64, offset: 768)
!5206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5207, size: 64)
!5207 = !DISubroutineType(types: !5208)
!5208 = !{!30, !5128, !343, !378, !343, !378, !13}
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !372, file: !250, line: 1987, baseType: !5210, size: 64, offset: 832)
!5210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5211, size: 64)
!5211 = !DISubroutineType(types: !5212)
!5212 = !{!30, !5128, !378, !5213}
!5213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5214, size: 64)
!5214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !250, line: 226, size: 640, elements: !5215)
!5215 = !{!5216, !5217, !5218, !5228, !5237, !5238, !5243, !5244, !5245}
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !5214, file: !250, line: 227, baseType: !13, size: 32)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !5214, file: !250, line: 228, baseType: !32, size: 16, offset: 32)
!5218 = !DIDerivedType(tag: DW_TAG_member, scope: !5214, file: !250, line: 241, baseType: !5219, size: 32, offset: 64)
!5219 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5214, file: !250, line: 241, size: 32, elements: !5220)
!5220 = !{!5221, !5222}
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !5219, file: !250, line: 242, baseType: !349, size: 32)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !5219, file: !250, line: 243, baseType: !5223, size: 32)
!5223 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !5224, line: 16, baseType: !5225)
!5224 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!5225 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5224, line: 14, size: 32, elements: !5226)
!5226 = !{!5227}
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5225, file: !5224, line: 15, baseType: !354, size: 32)
!5228 = !DIDerivedType(tag: DW_TAG_member, scope: !5214, file: !250, line: 245, baseType: !5229, size: 32, offset: 96)
!5229 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5214, file: !250, line: 245, size: 32, elements: !5230)
!5230 = !{!5231, !5232}
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !5229, file: !250, line: 246, baseType: !358, size: 32)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !5229, file: !250, line: 247, baseType: !5233, size: 32)
!5233 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !5224, line: 20, baseType: !5234)
!5234 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5224, line: 18, size: 32, elements: !5235)
!5235 = !{!5236}
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5234, file: !5224, line: 19, baseType: !362, size: 32)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !5214, file: !250, line: 249, baseType: !49, size: 64, offset: 128)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !5214, file: !250, line: 250, baseType: !5239, size: 128, offset: 192)
!5239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !820, line: 13, size: 128, elements: !5240)
!5240 = !{!5241, !5242}
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5239, file: !820, line: 14, baseType: !819, size: 64)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5239, file: !820, line: 15, baseType: !618, size: 64, offset: 64)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !5214, file: !250, line: 251, baseType: !5239, size: 128, offset: 320)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !5214, file: !250, line: 252, baseType: !5239, size: 128, offset: 448)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !5214, file: !250, line: 259, baseType: !657, size: 64, offset: 576)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !372, file: !250, line: 1988, baseType: !5247, size: 64, offset: 896)
!5247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5248, size: 64)
!5248 = !DISubroutineType(types: !5249)
!5249 = !{!30, !5128, !2517, !5250, !412, !13}
!5250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5251, size: 64)
!5251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !5252, line: 22, size: 1280, elements: !5253)
!5252 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!5253 = !{!5254, !5255, !5256, !5257, !5258, !5259, !5260, !5261, !5262, !5263, !5264, !5265, !5266, !5267, !5268, !5269, !5270, !5271, !5272, !5273, !5274}
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !5251, file: !5252, line: 23, baseType: !412, size: 32)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5251, file: !5252, line: 24, baseType: !32, size: 16, offset: 32)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !5251, file: !5252, line: 25, baseType: !13, size: 32, offset: 64)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !5251, file: !5252, line: 26, baseType: !827, size: 32, offset: 96)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !5251, file: !5252, line: 27, baseType: !416, size: 64, offset: 128)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !5251, file: !5252, line: 28, baseType: !416, size: 64, offset: 192)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !5251, file: !5252, line: 41, baseType: !416, size: 64, offset: 256)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5251, file: !5252, line: 42, baseType: !500, size: 32, offset: 320)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !5251, file: !5252, line: 43, baseType: !500, size: 32, offset: 352)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !5251, file: !5252, line: 44, baseType: !349, size: 32, offset: 384)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !5251, file: !5252, line: 45, baseType: !358, size: 32, offset: 416)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5251, file: !5252, line: 46, baseType: !49, size: 64, offset: 448)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !5251, file: !5252, line: 47, baseType: !5239, size: 128, offset: 512)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !5251, file: !5252, line: 48, baseType: !5239, size: 128, offset: 640)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !5251, file: !5252, line: 49, baseType: !5239, size: 128, offset: 768)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !5251, file: !5252, line: 50, baseType: !5239, size: 128, offset: 896)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !5251, file: !5252, line: 51, baseType: !416, size: 64, offset: 1024)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !5251, file: !5252, line: 52, baseType: !416, size: 64, offset: 1088)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !5251, file: !5252, line: 53, baseType: !412, size: 32, offset: 1152)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !5251, file: !5252, line: 54, baseType: !412, size: 32, offset: 1184)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !5251, file: !5252, line: 55, baseType: !416, size: 64, offset: 1216)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !372, file: !250, line: 1990, baseType: !5276, size: 64, offset: 960)
!5276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5277, size: 64)
!5277 = !DISubroutineType(types: !5278)
!5278 = !{!615, !378, !484, !43}
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !372, file: !250, line: 1991, baseType: !5280, size: 64, offset: 1024)
!5280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5281, size: 64)
!5281 = !DISubroutineType(types: !5282)
!5282 = !{!30, !343, !5283, !416, !416}
!5283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5284, size: 64)
!5284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !5285, line: 8, size: 192, elements: !5286)
!5285 = !DIFile(filename: "./include/linux/fiemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3549901db5ed482defb65607c38335f0")
!5286 = !{!5287, !5288, !5289, !5290}
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "fi_flags", scope: !5284, file: !5285, line: 9, baseType: !13, size: 32)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "fi_extents_mapped", scope: !5284, file: !5285, line: 10, baseType: !13, size: 32, offset: 32)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "fi_extents_max", scope: !5284, file: !5285, line: 11, baseType: !13, size: 32, offset: 64)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "fi_extents_start", scope: !5284, file: !5285, line: 12, baseType: !5291, size: 64, offset: 128)
!5291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5292, size: 64)
!5292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent", file: !5293, line: 17, size: 448, elements: !5294)
!5293 = !DIFile(filename: "./include/uapi/linux/fiemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f949abda36490fd9e5a2006af40ce33c")
!5294 = !{!5295, !5296, !5297, !5298, !5300, !5301}
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "fe_logical", scope: !5292, file: !5293, line: 18, baseType: !417, size: 64)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "fe_physical", scope: !5292, file: !5293, line: 20, baseType: !417, size: 64, offset: 64)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "fe_length", scope: !5292, file: !5293, line: 22, baseType: !417, size: 64, offset: 128)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "fe_reserved64", scope: !5292, file: !5293, line: 23, baseType: !5299, size: 128, offset: 192)
!5299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !417, size: 128, elements: !2087)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "fe_flags", scope: !5292, file: !5293, line: 24, baseType: !413, size: 32, offset: 320)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "fe_reserved", scope: !5292, file: !5293, line: 25, baseType: !5302, size: 96, offset: 352)
!5302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !413, size: 96, elements: !584)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !372, file: !250, line: 1993, baseType: !5304, size: 64, offset: 1088)
!5304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5305, size: 64)
!5305 = !DISubroutineType(types: !5306)
!5306 = !{!30, !343, !30}
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !372, file: !250, line: 1994, baseType: !5308, size: 64, offset: 1152)
!5308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5309, size: 64)
!5309 = !DISubroutineType(types: !5310)
!5310 = !{!30, !343, !378, !657, !13, !32}
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !372, file: !250, line: 1997, baseType: !5312, size: 64, offset: 1216)
!5312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5313, size: 64)
!5313 = !DISubroutineType(types: !5314)
!5314 = !{!30, !5128, !343, !657, !32}
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !372, file: !250, line: 1999, baseType: !5316, size: 64, offset: 1280)
!5316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5317, size: 64)
!5317 = !DISubroutineType(types: !5318)
!5318 = !{!366, !5128, !378, !30}
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !372, file: !250, line: 2001, baseType: !5320, size: 64, offset: 1344)
!5320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5321, size: 64)
!5321 = !DISubroutineType(types: !5322)
!5322 = !{!30, !5128, !378, !366, !30}
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !372, file: !250, line: 2003, baseType: !5324, size: 64, offset: 1408)
!5324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5325, size: 64)
!5325 = !DISubroutineType(types: !5326)
!5326 = !{!30, !5128, !378, !5327}
!5327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5328, size: 64)
!5328 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !250, line: 76, flags: DIFlagFwdDecl)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !372, file: !250, line: 2005, baseType: !5330, size: 64, offset: 1472)
!5330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5331, size: 64)
!5331 = !DISubroutineType(types: !5332)
!5332 = !{!30, !378, !5327}
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !372, file: !250, line: 2006, baseType: !5334, size: 64, offset: 1536)
!5334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5335, size: 64)
!5335 = !DISubroutineType(types: !5336)
!5336 = !{!5337, !343}
!5337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5338, size: 64)
!5338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !250, line: 3192, size: 192, elements: !5339)
!5339 = !{!5340, !5341}
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !5338, file: !250, line: 3193, baseType: !1304, size: 128)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !5338, file: !250, line: 3194, baseType: !412, size: 32, offset: 128)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !344, file: !250, line: 655, baseType: !495, size: 64, offset: 448)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !344, file: !250, line: 656, baseType: !339, size: 64, offset: 512)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !344, file: !250, line: 659, baseType: !28, size: 64, offset: 576)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !344, file: !250, line: 663, baseType: !47, size: 64, offset: 640)
!5346 = !DIDerivedType(tag: DW_TAG_member, scope: !344, file: !250, line: 671, baseType: !5347, size: 32, offset: 704)
!5347 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !344, file: !250, line: 671, size: 32, elements: !5348)
!5348 = !{!5349, !5351}
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !5347, file: !250, line: 672, baseType: !5350, size: 32)
!5350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !5347, file: !250, line: 673, baseType: !13, size: 32)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !344, file: !250, line: 675, baseType: !500, size: 32, offset: 736)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !344, file: !250, line: 676, baseType: !49, size: 64, offset: 768)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !344, file: !250, line: 677, baseType: !5239, size: 128, offset: 832)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !344, file: !250, line: 678, baseType: !5239, size: 128, offset: 960)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !344, file: !250, line: 679, baseType: !5239, size: 128, offset: 1088)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !344, file: !250, line: 680, baseType: !67, size: 32, offset: 1216)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !344, file: !250, line: 681, baseType: !34, size: 16, offset: 1248)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !344, file: !250, line: 682, baseType: !91, size: 8, offset: 1264)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !344, file: !250, line: 683, baseType: !91, size: 8, offset: 1272)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !344, file: !250, line: 684, baseType: !2590, size: 64, offset: 1280)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !344, file: !250, line: 691, baseType: !47, size: 64, offset: 1344)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !344, file: !250, line: 692, baseType: !803, size: 320, offset: 1408)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !344, file: !250, line: 694, baseType: !47, size: 64, offset: 1728)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !344, file: !250, line: 695, baseType: !47, size: 64, offset: 1792)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !344, file: !250, line: 697, baseType: !728, size: 128, offset: 1856)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !344, file: !250, line: 698, baseType: !105, size: 128, offset: 1984)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !344, file: !250, line: 707, baseType: !105, size: 128, offset: 2112)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !344, file: !250, line: 708, baseType: !105, size: 128, offset: 2240)
!5370 = !DIDerivedType(tag: DW_TAG_member, scope: !344, file: !250, line: 709, baseType: !5371, size: 128, offset: 2368)
!5371 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !344, file: !250, line: 709, size: 128, elements: !5372)
!5372 = !{!5373, !5374}
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !5371, file: !250, line: 710, baseType: !724, size: 64)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !5371, file: !250, line: 711, baseType: !670, size: 128, align: 64)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !344, file: !250, line: 713, baseType: !292, size: 64, offset: 2496)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !344, file: !250, line: 714, baseType: !292, size: 64, offset: 2560)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !344, file: !250, line: 715, baseType: !57, size: 32, offset: 2624)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !344, file: !250, line: 716, baseType: !57, size: 32, offset: 2656)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !344, file: !250, line: 717, baseType: !57, size: 32, offset: 2688)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !344, file: !250, line: 719, baseType: !57, size: 32, offset: 2720)
!5381 = !DIDerivedType(tag: DW_TAG_member, scope: !344, file: !250, line: 721, baseType: !5382, size: 64, offset: 2752)
!5382 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !344, file: !250, line: 721, size: 64, elements: !5383)
!5383 = !{!5384, !5385}
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !5382, file: !250, line: 722, baseType: !1128, size: 64)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !5382, file: !250, line: 723, baseType: !2326, size: 64)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !344, file: !250, line: 725, baseType: !5387, size: 64, offset: 2816)
!5387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5388, size: 64)
!5388 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !250, line: 725, flags: DIFlagFwdDecl)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !344, file: !250, line: 726, baseType: !340, size: 1536, align: 64, offset: 2880)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !344, file: !250, line: 727, baseType: !105, size: 128, offset: 4416)
!5391 = !DIDerivedType(tag: DW_TAG_member, scope: !344, file: !250, line: 728, baseType: !5392, size: 64, offset: 4544)
!5392 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !344, file: !250, line: 728, size: 64, elements: !5393)
!5393 = !{!5394, !5395, !5398, !5399}
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !5392, file: !250, line: 729, baseType: !1713, size: 64)
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !5392, file: !250, line: 730, baseType: !5396, size: 64)
!5396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5397, size: 64)
!5397 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !250, line: 730, flags: DIFlagFwdDecl)
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !5392, file: !250, line: 731, baseType: !484, size: 64)
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !5392, file: !250, line: 732, baseType: !13, size: 32)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !344, file: !250, line: 735, baseType: !413, size: 32, offset: 4608)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !344, file: !250, line: 738, baseType: !413, size: 32, offset: 4640)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !344, file: !250, line: 739, baseType: !5066, size: 64, offset: 4672)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !344, file: !250, line: 750, baseType: !28, size: 64, offset: 4736)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !340, file: !250, line: 474, baseType: !1304, size: 128, offset: 64)
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !340, file: !250, line: 475, baseType: !803, size: 320, offset: 192)
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !340, file: !250, line: 476, baseType: !1309, size: 32, offset: 512)
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !340, file: !250, line: 477, baseType: !57, size: 32, offset: 544)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !340, file: !250, line: 482, baseType: !3123, size: 128, offset: 576)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !340, file: !250, line: 483, baseType: !47, size: 64, offset: 704)
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !340, file: !250, line: 484, baseType: !47, size: 64, offset: 768)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !340, file: !250, line: 485, baseType: !5412, size: 64, offset: 832)
!5412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5413, size: 64)
!5413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5414)
!5414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !250, line: 404, size: 1280, elements: !5415)
!5415 = !{!5416, !5420, !5424, !5428, !5432, !5448, !5453, !5457, !5461, !5465, !5469, !5473, !5474, !5478, !5482, !5486, !5491, !5495, !5546, !5547}
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !5414, file: !250, line: 405, baseType: !5417, size: 64)
!5417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5418, size: 64)
!5418 = !DISubroutineType(types: !5419)
!5419 = !{!30, !317, !2338}
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !5414, file: !250, line: 406, baseType: !5421, size: 64, offset: 64)
!5421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5422, size: 64)
!5422 = !DISubroutineType(types: !5423)
!5423 = !{!30, !657, !1170}
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !5414, file: !250, line: 409, baseType: !5425, size: 64, offset: 128)
!5425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5426, size: 64)
!5426 = !DISubroutineType(types: !5427)
!5427 = !{!30, !339, !2338}
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !5414, file: !250, line: 412, baseType: !5429, size: 64, offset: 192)
!5429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5430, size: 64)
!5430 = !DISubroutineType(types: !5431)
!5431 = !{!862, !339, !1170}
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !5414, file: !250, line: 414, baseType: !5433, size: 64, offset: 256)
!5433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5434, size: 64)
!5434 = !DISubroutineType(types: !5435)
!5435 = !{null, !5436}
!5436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5437, size: 64)
!5437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !1167, line: 1276, size: 448, elements: !5438)
!5438 = !{!5439, !5440, !5441, !5443, !5444, !5445, !5446, !5447}
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !5437, file: !1167, line: 1277, baseType: !657, size: 64)
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !5437, file: !1167, line: 1278, baseType: !339, size: 64, offset: 64)
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !5437, file: !1167, line: 1279, baseType: !5442, size: 64, offset: 128)
!5442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !5437, file: !1167, line: 1281, baseType: !47, size: 64, offset: 192)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !5437, file: !1167, line: 1282, baseType: !13, size: 32, offset: 256)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !5437, file: !1167, line: 1283, baseType: !13, size: 32, offset: 288)
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !5437, file: !1167, line: 1284, baseType: !862, size: 8, offset: 320)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !5437, file: !1167, line: 1285, baseType: !47, size: 64, offset: 384)
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !5414, file: !250, line: 416, baseType: !5449, size: 64, offset: 320)
!5449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5450, size: 64)
!5450 = !DISubroutineType(types: !5451)
!5451 = !{!30, !657, !339, !49, !13, !5452, !1729}
!5452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !5414, file: !250, line: 419, baseType: !5454, size: 64, offset: 384)
!5454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5455, size: 64)
!5455 = !DISubroutineType(types: !5456)
!5456 = !{!30, !657, !339, !49, !13, !13, !317, !28}
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !5414, file: !250, line: 424, baseType: !5458, size: 64, offset: 448)
!5458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5459, size: 64)
!5459 = !DISubroutineType(types: !5460)
!5460 = !{!2621, !339, !2621}
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !5414, file: !250, line: 425, baseType: !5462, size: 64, offset: 512)
!5462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5463, size: 64)
!5463 = !DISubroutineType(types: !5464)
!5464 = !{null, !1170, !43, !43}
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !5414, file: !250, line: 426, baseType: !5466, size: 64, offset: 576)
!5466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5467, size: 64)
!5467 = !DISubroutineType(types: !5468)
!5468 = !{!862, !1170, !1309}
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !5414, file: !250, line: 427, baseType: !5470, size: 64, offset: 640)
!5470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5471, size: 64)
!5471 = !DISubroutineType(types: !5472)
!5472 = !{null, !1170}
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !5414, file: !250, line: 428, baseType: !1146, size: 64, offset: 704)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !5414, file: !250, line: 433, baseType: !5475, size: 64, offset: 768)
!5475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5476, size: 64)
!5476 = !DISubroutineType(types: !5477)
!5477 = !{!30, !339, !1170, !1170, !151}
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !5414, file: !250, line: 435, baseType: !5479, size: 64, offset: 832)
!5479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5480, size: 64)
!5480 = !DISubroutineType(types: !5481)
!5481 = !{!30, !1170}
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !5414, file: !250, line: 436, baseType: !5483, size: 64, offset: 896)
!5483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5484, size: 64)
!5484 = !DISubroutineType(types: !5485)
!5485 = !{!862, !1170, !43, !43}
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !5414, file: !250, line: 438, baseType: !5487, size: 64, offset: 960)
!5487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5488, size: 64)
!5488 = !DISubroutineType(types: !5489)
!5489 = !{null, !1170, !5490, !5490}
!5490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !5414, file: !250, line: 439, baseType: !5492, size: 64, offset: 1024)
!5492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5493, size: 64)
!5493 = !DISubroutineType(types: !5494)
!5494 = !{!30, !339, !317}
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !5414, file: !250, line: 442, baseType: !5496, size: 64, offset: 1088)
!5496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5497, size: 64)
!5497 = !DISubroutineType(types: !5498)
!5498 = !{!30, !5499, !657, !2815}
!5499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5500, size: 64)
!5500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !4545, line: 282, size: 2176, elements: !5501)
!5501 = !{!5502, !5503, !5504, !5505, !5506, !5507, !5508, !5510, !5517, !5522, !5523, !5524, !5525, !5526, !5527, !5528, !5529, !5535, !5536, !5537, !5538, !5539, !5540, !5541, !5542, !5543, !5544}
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !5500, file: !4545, line: 283, baseType: !2825, size: 128)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5500, file: !4545, line: 284, baseType: !47, size: 64, offset: 128)
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !5500, file: !4545, line: 285, baseType: !831, size: 16, offset: 192)
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5500, file: !4545, line: 286, baseType: !3794, size: 320, offset: 256)
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5500, file: !4545, line: 287, baseType: !2028, size: 8, offset: 576)
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !5500, file: !4545, line: 288, baseType: !13, size: 32, offset: 608)
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "swap_map", scope: !5500, file: !4545, line: 289, baseType: !5509, size: 64, offset: 640)
!5509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_info", scope: !5500, file: !4545, line: 290, baseType: !5511, size: 64, offset: 704)
!5511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5512, size: 64)
!5512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_info", file: !4545, line: 250, size: 64, elements: !5513)
!5513 = !{!5514, !5515, !5516}
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5512, file: !4545, line: 251, baseType: !67, size: 32)
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5512, file: !4545, line: 257, baseType: !13, size: 24, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5512, file: !4545, line: 258, baseType: !13, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "free_clusters", scope: !5500, file: !4545, line: 291, baseType: !5518, size: 128, offset: 768)
!5518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_list", file: !4545, line: 274, size: 128, elements: !5519)
!5519 = !{!5520, !5521}
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5518, file: !4545, line: 275, baseType: !5512, size: 64)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !5518, file: !4545, line: 276, baseType: !5512, size: 64, offset: 64)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_bit", scope: !5500, file: !4545, line: 292, baseType: !13, size: 32, offset: 896)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "highest_bit", scope: !5500, file: !4545, line: 293, baseType: !13, size: 32, offset: 928)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !5500, file: !4545, line: 294, baseType: !13, size: 32, offset: 960)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "inuse_pages", scope: !5500, file: !4545, line: 295, baseType: !13, size: 32, offset: 992)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next", scope: !5500, file: !4545, line: 296, baseType: !13, size: 32, offset: 1024)
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_nr", scope: !5500, file: !4545, line: 297, baseType: !13, size: 32, offset: 1056)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next_cpu", scope: !5500, file: !4545, line: 298, baseType: !2049, size: 64, offset: 1088)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_cluster", scope: !5500, file: !4545, line: 299, baseType: !5530, size: 64, offset: 1152)
!5530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5531, size: 64)
!5531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_cluster", file: !4545, line: 269, size: 96, elements: !5532)
!5532 = !{!5533, !5534}
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5531, file: !4545, line: 270, baseType: !5512, size: 64)
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5531, file: !4545, line: 271, baseType: !13, size: 32, offset: 64)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "swap_extent_root", scope: !5500, file: !4545, line: 300, baseType: !1075, size: 64, offset: 1216)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !5500, file: !4545, line: 301, baseType: !2616, size: 64, offset: 1280)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "swap_file", scope: !5500, file: !4545, line: 302, baseType: !657, size: 64, offset: 1344)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "old_block_size", scope: !5500, file: !4545, line: 303, baseType: !13, size: 32, offset: 1408)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !5500, file: !4545, line: 304, baseType: !1033, size: 256, offset: 1472)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5500, file: !4545, line: 305, baseType: !67, size: 32, offset: 1728)
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "cont_lock", scope: !5500, file: !4545, line: 318, baseType: !67, size: 32, offset: 1760)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "discard_work", scope: !5500, file: !4545, line: 322, baseType: !994, size: 256, offset: 1792)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "discard_clusters", scope: !5500, file: !4545, line: 323, baseType: !5518, size: 128, offset: 2048)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "avail_lists", scope: !5500, file: !4545, line: 324, baseType: !5545, offset: 2176)
!5545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3794, elements: !746)
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !5414, file: !250, line: 444, baseType: !1721, size: 64, offset: 1152)
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !5414, file: !250, line: 445, baseType: !5548, size: 64, offset: 1216)
!5548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5549, size: 64)
!5549 = !DISubroutineType(types: !5550)
!5550 = !{!30, !1149, !1254}
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !340, file: !250, line: 486, baseType: !47, size: 64, offset: 896)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !340, file: !250, line: 487, baseType: !803, size: 320, offset: 960)
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !340, file: !250, line: 488, baseType: !1802, size: 32, offset: 1280)
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !340, file: !250, line: 489, baseType: !67, size: 32, offset: 1312)
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !340, file: !250, line: 490, baseType: !105, size: 128, offset: 1344)
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !340, file: !250, line: 491, baseType: !28, size: 64, offset: 1472)
!5557 = !DIDerivedType(tag: DW_TAG_member, scope: !325, file: !131, line: 107, baseType: !5558, size: 64, offset: 192)
!5558 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !325, file: !131, line: 107, size: 64, elements: !5559)
!5559 = !{!5560, !5561}
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5558, file: !131, line: 108, baseType: !47, size: 64)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !5558, file: !131, line: 109, baseType: !47, size: 64)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !325, file: !131, line: 117, baseType: !47, size: 64, offset: 256)
!5563 = !DIDerivedType(tag: DW_TAG_member, scope: !322, file: !131, line: 119, baseType: !5564, size: 320)
!5564 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !322, file: !131, line: 119, size: 320, elements: !5565)
!5565 = !{!5566, !5567, !5570, !5571, !5572}
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !5564, file: !131, line: 124, baseType: !47, size: 64)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !5564, file: !131, line: 125, baseType: !5568, size: 64, offset: 64)
!5568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5569, size: 64)
!5569 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !131, line: 125, flags: DIFlagFwdDecl)
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !5564, file: !131, line: 126, baseType: !47, size: 64, offset: 128)
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !5564, file: !131, line: 127, baseType: !47, size: 64, offset: 192)
!5572 = !DIDerivedType(tag: DW_TAG_member, scope: !5564, file: !131, line: 128, baseType: !5573, size: 64, offset: 256)
!5573 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5564, file: !131, line: 128, size: 64, elements: !5574)
!5574 = !{!5575, !5576}
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !5573, file: !131, line: 133, baseType: !47, size: 64)
!5576 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !5573, file: !131, line: 138, baseType: !290, size: 64)
!5577 = !DIDerivedType(tag: DW_TAG_member, scope: !322, file: !131, line: 141, baseType: !5578, size: 64)
!5578 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !322, file: !131, line: 141, size: 64, elements: !5579)
!5579 = !{!5580}
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !5578, file: !131, line: 142, baseType: !47, size: 64)
!5581 = !DIDerivedType(tag: DW_TAG_member, scope: !322, file: !131, line: 144, baseType: !5582, size: 128)
!5582 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !322, file: !131, line: 144, size: 128, elements: !5583)
!5583 = !{!5584, !5635}
!5584 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !5582, file: !131, line: 146, baseType: !5585, size: 64)
!5585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5586, size: 64)
!5586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !123, line: 126, size: 1216, elements: !5587)
!5587 = !{!5588, !5598, !5599, !5600, !5601, !5602, !5603, !5617, !5618, !5619}
!5588 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !5586, file: !123, line: 127, baseType: !5589, size: 384)
!5589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !123, line: 21, size: 384, elements: !5590)
!5590 = !{!5591, !5592, !5594, !5595, !5596, !5597}
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !5589, file: !123, line: 22, baseType: !47, size: 64)
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !5589, file: !123, line: 23, baseType: !5593, size: 64, offset: 64)
!5593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !5589, file: !123, line: 24, baseType: !5593, size: 64, offset: 128)
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !5589, file: !123, line: 25, baseType: !47, size: 64, offset: 192)
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !5589, file: !123, line: 26, baseType: !47, size: 64, offset: 256)
!5597 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !5589, file: !123, line: 27, baseType: !47, size: 64, offset: 320)
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !5586, file: !123, line: 128, baseType: !2825, size: 128, offset: 384)
!5599 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !5586, file: !123, line: 129, baseType: !1033, size: 256, offset: 512)
!5600 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5586, file: !123, line: 130, baseType: !122, size: 32, offset: 768)
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5586, file: !123, line: 131, baseType: !13, size: 32, offset: 800)
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !5586, file: !123, line: 132, baseType: !47, size: 64, offset: 832)
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5586, file: !123, line: 133, baseType: !5604, size: 64, offset: 896)
!5604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5605, size: 64)
!5605 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5606)
!5606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !123, line: 77, size: 192, elements: !5607)
!5607 = !{!5608, !5612, !5613}
!5608 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !5606, file: !123, line: 83, baseType: !5609, size: 64)
!5609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5610, size: 64)
!5610 = !DISubroutineType(types: !5611)
!5611 = !{null, !317}
!5612 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !5606, file: !123, line: 89, baseType: !1587, size: 64, offset: 64)
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !5606, file: !123, line: 100, baseType: !5614, size: 64, offset: 128)
!5614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5615, size: 64)
!5615 = !DISubroutineType(types: !5616)
!5616 = !{!30, !5585, !47, !47, !30}
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5586, file: !123, line: 134, baseType: !28, size: 64, offset: 960)
!5618 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !5586, file: !123, line: 135, baseType: !30, size: 32, offset: 1024)
!5619 = !DIDerivedType(tag: DW_TAG_member, scope: !5586, file: !123, line: 136, baseType: !5620, size: 128, offset: 1088)
!5620 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5586, file: !123, line: 136, size: 128, elements: !5621)
!5621 = !{!5622, !5628}
!5622 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !5620, file: !123, line: 137, baseType: !5623, size: 128)
!5623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !5624, line: 6, size: 128, elements: !5625)
!5624 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!5625 = !{!5626, !5627}
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5623, file: !5624, line: 7, baseType: !416, size: 64)
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5623, file: !5624, line: 8, baseType: !416, size: 64, offset: 64)
!5628 = !DIDerivedType(tag: DW_TAG_member, scope: !5620, file: !123, line: 138, baseType: !5629)
!5629 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5620, file: !123, line: 138, elements: !5630)
!5630 = !{!5631, !5633}
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !5629, file: !123, line: 138, baseType: !5632)
!5632 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5629, file: !123, line: 138, elements: !1398)
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !5629, file: !123, line: 138, baseType: !5634)
!5634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5623, elements: !746)
!5635 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !5582, file: !131, line: 147, baseType: !28, size: 64, offset: 64)
!5636 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !322, file: !131, line: 161, baseType: !670, size: 128, align: 64)
!5637 = !DIDerivedType(tag: DW_TAG_member, scope: !318, file: !131, line: 164, baseType: !5638, size: 32, offset: 384)
!5638 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !318, file: !131, line: 164, size: 32, elements: !5639)
!5639 = !{!5640, !5641}
!5640 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !5638, file: !131, line: 169, baseType: !57, size: 32)
!5641 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !5638, file: !131, line: 177, baseType: !13, size: 32)
!5642 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !318, file: !131, line: 181, baseType: !57, size: 32, offset: 416)
!5643 = !DIDerivedType(tag: DW_TAG_member, name: "b_folio", scope: !314, file: !309, line: 64, baseType: !1170, size: 64)
!5644 = !DIDerivedType(tag: DW_TAG_member, name: "b_blocknr", scope: !308, file: !309, line: 67, baseType: !2621, size: 64, offset: 192)
!5645 = !DIDerivedType(tag: DW_TAG_member, name: "b_size", scope: !308, file: !309, line: 68, baseType: !43, size: 64, offset: 256)
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "b_data", scope: !308, file: !309, line: 69, baseType: !484, size: 64, offset: 320)
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "b_bdev", scope: !308, file: !309, line: 71, baseType: !2616, size: 64, offset: 384)
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "b_end_io", scope: !308, file: !309, line: 72, baseType: !5649, size: 64, offset: 448)
!5649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5650, size: 64)
!5650 = !DIDerivedType(tag: DW_TAG_typedef, name: "bh_end_io_t", file: !309, line: 48, baseType: !5651)
!5651 = !DISubroutineType(types: !5652)
!5652 = !{null, !307, !30}
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "b_private", scope: !308, file: !309, line: 73, baseType: !28, size: 64, offset: 512)
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "b_assoc_buffers", scope: !308, file: !309, line: 74, baseType: !105, size: 128, offset: 576)
!5655 = !DIDerivedType(tag: DW_TAG_member, name: "b_assoc_map", scope: !308, file: !309, line: 75, baseType: !339, size: 64, offset: 704)
!5656 = !DIDerivedType(tag: DW_TAG_member, name: "b_count", scope: !308, file: !309, line: 77, baseType: !57, size: 32, offset: 768)
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "b_uptodate_lock", scope: !308, file: !309, line: 78, baseType: !67, size: 32, offset: 800)
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "j_superblock", scope: !280, file: !274, line: 784, baseType: !5659, size: 64, offset: 512)
!5659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5660, size: 64)
!5660 = !DIDerivedType(tag: DW_TAG_typedef, name: "journal_superblock_t", file: !274, line: 277, baseType: !5661)
!5661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "journal_superblock_s", file: !274, line: 226, size: 8192, elements: !5662)
!5662 = !{!5663, !5671, !5672, !5673, !5674, !5675, !5676, !5677, !5678, !5679, !5680, !5681, !5682, !5683, !5684, !5685, !5686, !5687, !5688, !5689, !5693, !5694}
!5663 = !DIDerivedType(tag: DW_TAG_member, name: "s_header", scope: !5661, file: !274, line: 229, baseType: !5664, size: 96)
!5664 = !DIDerivedType(tag: DW_TAG_typedef, name: "journal_header_t", file: !274, line: 136, baseType: !5665)
!5665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "journal_header_s", file: !274, line: 131, size: 96, elements: !5666)
!5666 = !{!5667, !5669, !5670}
!5667 = !DIDerivedType(tag: DW_TAG_member, name: "h_magic", scope: !5665, file: !274, line: 133, baseType: !5668, size: 32)
!5668 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !1352, line: 39, baseType: !413)
!5669 = !DIDerivedType(tag: DW_TAG_member, name: "h_blocktype", scope: !5665, file: !274, line: 134, baseType: !5668, size: 32, offset: 32)
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "h_sequence", scope: !5665, file: !274, line: 135, baseType: !5668, size: 32, offset: 64)
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !5661, file: !274, line: 233, baseType: !5668, size: 32, offset: 96)
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxlen", scope: !5661, file: !274, line: 234, baseType: !5668, size: 32, offset: 128)
!5673 = !DIDerivedType(tag: DW_TAG_member, name: "s_first", scope: !5661, file: !274, line: 235, baseType: !5668, size: 32, offset: 160)
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "s_sequence", scope: !5661, file: !274, line: 239, baseType: !5668, size: 32, offset: 192)
!5675 = !DIDerivedType(tag: DW_TAG_member, name: "s_start", scope: !5661, file: !274, line: 240, baseType: !5668, size: 32, offset: 224)
!5676 = !DIDerivedType(tag: DW_TAG_member, name: "s_errno", scope: !5661, file: !274, line: 244, baseType: !5668, size: 32, offset: 256)
!5677 = !DIDerivedType(tag: DW_TAG_member, name: "s_feature_compat", scope: !5661, file: !274, line: 248, baseType: !5668, size: 32, offset: 288)
!5678 = !DIDerivedType(tag: DW_TAG_member, name: "s_feature_incompat", scope: !5661, file: !274, line: 249, baseType: !5668, size: 32, offset: 320)
!5679 = !DIDerivedType(tag: DW_TAG_member, name: "s_feature_ro_compat", scope: !5661, file: !274, line: 250, baseType: !5668, size: 32, offset: 352)
!5680 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !5661, file: !274, line: 252, baseType: !5075, size: 128, offset: 384)
!5681 = !DIDerivedType(tag: DW_TAG_member, name: "s_nr_users", scope: !5661, file: !274, line: 255, baseType: !5668, size: 32, offset: 512)
!5682 = !DIDerivedType(tag: DW_TAG_member, name: "s_dynsuper", scope: !5661, file: !274, line: 257, baseType: !5668, size: 32, offset: 544)
!5683 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_transaction", scope: !5661, file: !274, line: 260, baseType: !5668, size: 32, offset: 576)
!5684 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_trans_data", scope: !5661, file: !274, line: 261, baseType: !5668, size: 32, offset: 608)
!5685 = !DIDerivedType(tag: DW_TAG_member, name: "s_checksum_type", scope: !5661, file: !274, line: 264, baseType: !93, size: 8, offset: 640)
!5686 = !DIDerivedType(tag: DW_TAG_member, name: "s_padding2", scope: !5661, file: !274, line: 265, baseType: !4405, size: 24, offset: 648)
!5687 = !DIDerivedType(tag: DW_TAG_member, name: "s_num_fc_blks", scope: !5661, file: !274, line: 267, baseType: !5668, size: 32, offset: 672)
!5688 = !DIDerivedType(tag: DW_TAG_member, name: "s_head", scope: !5661, file: !274, line: 268, baseType: !5668, size: 32, offset: 704)
!5689 = !DIDerivedType(tag: DW_TAG_member, name: "s_padding", scope: !5661, file: !274, line: 271, baseType: !5690, size: 1280, offset: 736)
!5690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !413, size: 1280, elements: !5691)
!5691 = !{!5692}
!5692 = !DISubrange(count: 40)
!5693 = !DIDerivedType(tag: DW_TAG_member, name: "s_checksum", scope: !5661, file: !274, line: 272, baseType: !5668, size: 32, offset: 2016)
!5694 = !DIDerivedType(tag: DW_TAG_member, name: "s_users", scope: !5661, file: !274, line: 275, baseType: !5695, size: 6144, offset: 2048)
!5695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 6144, elements: !5696)
!5696 = !{!5697}
!5697 = !DISubrange(count: 768)
!5698 = !DIDerivedType(tag: DW_TAG_member, name: "j_state_lock", scope: !280, file: !274, line: 789, baseType: !690, size: 64, offset: 576)
!5699 = !DIDerivedType(tag: DW_TAG_member, name: "j_barrier_count", scope: !280, file: !274, line: 797, baseType: !30, size: 32, offset: 640)
!5700 = !DIDerivedType(tag: DW_TAG_member, name: "j_barrier", scope: !280, file: !274, line: 802, baseType: !286, size: 256, offset: 704)
!5701 = !DIDerivedType(tag: DW_TAG_member, name: "j_running_transaction", scope: !280, file: !274, line: 811, baseType: !5702, size: 64, offset: 960)
!5702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5703, size: 64)
!5703 = !DIDerivedType(tag: DW_TAG_typedef, name: "transaction_t", file: !5704, line: 17, baseType: !275)
!5704 = !DIFile(filename: "./include/linux/journal-head.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0a64d63ceb0222c76d889f081fb8fa94")
!5705 = !DIDerivedType(tag: DW_TAG_member, name: "j_committing_transaction", scope: !280, file: !274, line: 819, baseType: !5702, size: 64, offset: 1024)
!5706 = !DIDerivedType(tag: DW_TAG_member, name: "j_checkpoint_transactions", scope: !280, file: !274, line: 827, baseType: !5702, size: 64, offset: 1088)
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "j_wait_transaction_locked", scope: !280, file: !274, line: 835, baseType: !62, size: 192, offset: 1152)
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "j_wait_done_commit", scope: !280, file: !274, line: 840, baseType: !62, size: 192, offset: 1344)
!5709 = !DIDerivedType(tag: DW_TAG_member, name: "j_wait_commit", scope: !280, file: !274, line: 845, baseType: !62, size: 192, offset: 1536)
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "j_wait_updates", scope: !280, file: !274, line: 850, baseType: !62, size: 192, offset: 1728)
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "j_wait_reserved", scope: !280, file: !274, line: 857, baseType: !62, size: 192, offset: 1920)
!5712 = !DIDerivedType(tag: DW_TAG_member, name: "j_fc_wait", scope: !280, file: !274, line: 864, baseType: !62, size: 192, offset: 2112)
!5713 = !DIDerivedType(tag: DW_TAG_member, name: "j_checkpoint_mutex", scope: !280, file: !274, line: 871, baseType: !286, size: 256, offset: 2304)
!5714 = !DIDerivedType(tag: DW_TAG_member, name: "j_chkpt_bhs", scope: !280, file: !274, line: 881, baseType: !5715, size: 4096, offset: 2560)
!5715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, size: 4096, elements: !588)
!5716 = !DIDerivedType(tag: DW_TAG_member, name: "j_shrinker", scope: !280, file: !274, line: 889, baseType: !5081, size: 448, offset: 6656)
!5717 = !DIDerivedType(tag: DW_TAG_member, name: "j_checkpoint_jh_count", scope: !280, file: !274, line: 896, baseType: !920, size: 320, offset: 7104)
!5718 = !DIDerivedType(tag: DW_TAG_member, name: "j_shrink_transaction", scope: !280, file: !274, line: 904, baseType: !5702, size: 64, offset: 7424)
!5719 = !DIDerivedType(tag: DW_TAG_member, name: "j_head", scope: !280, file: !274, line: 912, baseType: !47, size: 64, offset: 7488)
!5720 = !DIDerivedType(tag: DW_TAG_member, name: "j_tail", scope: !280, file: !274, line: 920, baseType: !47, size: 64, offset: 7552)
!5721 = !DIDerivedType(tag: DW_TAG_member, name: "j_free", scope: !280, file: !274, line: 928, baseType: !47, size: 64, offset: 7616)
!5722 = !DIDerivedType(tag: DW_TAG_member, name: "j_first", scope: !280, file: !274, line: 936, baseType: !47, size: 64, offset: 7680)
!5723 = !DIDerivedType(tag: DW_TAG_member, name: "j_last", scope: !280, file: !274, line: 944, baseType: !47, size: 64, offset: 7744)
!5724 = !DIDerivedType(tag: DW_TAG_member, name: "j_fc_first", scope: !280, file: !274, line: 952, baseType: !47, size: 64, offset: 7808)
!5725 = !DIDerivedType(tag: DW_TAG_member, name: "j_fc_off", scope: !280, file: !274, line: 961, baseType: !47, size: 64, offset: 7872)
!5726 = !DIDerivedType(tag: DW_TAG_member, name: "j_fc_last", scope: !280, file: !274, line: 969, baseType: !47, size: 64, offset: 7936)
!5727 = !DIDerivedType(tag: DW_TAG_member, name: "j_dev", scope: !280, file: !274, line: 974, baseType: !2616, size: 64, offset: 8000)
!5728 = !DIDerivedType(tag: DW_TAG_member, name: "j_blocksize", scope: !280, file: !274, line: 979, baseType: !30, size: 32, offset: 8064)
!5729 = !DIDerivedType(tag: DW_TAG_member, name: "j_blk_offset", scope: !280, file: !274, line: 986, baseType: !418, size: 64, offset: 8128)
!5730 = !DIDerivedType(tag: DW_TAG_member, name: "j_devname", scope: !280, file: !274, line: 991, baseType: !536, size: 448, offset: 8192)
!5731 = !DIDerivedType(tag: DW_TAG_member, name: "j_fs_dev", scope: !280, file: !274, line: 999, baseType: !2616, size: 64, offset: 8640)
!5732 = !DIDerivedType(tag: DW_TAG_member, name: "j_total_len", scope: !280, file: !274, line: 1004, baseType: !13, size: 32, offset: 8704)
!5733 = !DIDerivedType(tag: DW_TAG_member, name: "j_reserved_credits", scope: !280, file: !274, line: 1011, baseType: !57, size: 32, offset: 8736)
!5734 = !DIDerivedType(tag: DW_TAG_member, name: "j_list_lock", scope: !280, file: !274, line: 1016, baseType: !67, size: 32, offset: 8768)
!5735 = !DIDerivedType(tag: DW_TAG_member, name: "j_inode", scope: !280, file: !274, line: 1024, baseType: !343, size: 64, offset: 8832)
!5736 = !DIDerivedType(tag: DW_TAG_member, name: "j_tail_sequence", scope: !280, file: !274, line: 1031, baseType: !5737, size: 32, offset: 8896)
!5737 = !DIDerivedType(tag: DW_TAG_typedef, name: "tid_t", file: !5704, line: 16, baseType: !13)
!5738 = !DIDerivedType(tag: DW_TAG_member, name: "j_transaction_sequence", scope: !280, file: !274, line: 1038, baseType: !5737, size: 32, offset: 8928)
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "j_commit_sequence", scope: !280, file: !274, line: 1046, baseType: !5737, size: 32, offset: 8960)
!5740 = !DIDerivedType(tag: DW_TAG_member, name: "j_commit_request", scope: !280, file: !274, line: 1054, baseType: !5737, size: 32, offset: 8992)
!5741 = !DIDerivedType(tag: DW_TAG_member, name: "j_uuid", scope: !280, file: !274, line: 1064, baseType: !5075, size: 128, offset: 9024)
!5742 = !DIDerivedType(tag: DW_TAG_member, name: "j_task", scope: !280, file: !274, line: 1069, baseType: !3593, size: 64, offset: 9152)
!5743 = !DIDerivedType(tag: DW_TAG_member, name: "j_max_transaction_buffers", scope: !280, file: !274, line: 1077, baseType: !30, size: 32, offset: 9216)
!5744 = !DIDerivedType(tag: DW_TAG_member, name: "j_revoke_records_per_block", scope: !280, file: !274, line: 1084, baseType: !30, size: 32, offset: 9248)
!5745 = !DIDerivedType(tag: DW_TAG_member, name: "j_transaction_overhead_buffers", scope: !280, file: !274, line: 1091, baseType: !30, size: 32, offset: 9280)
!5746 = !DIDerivedType(tag: DW_TAG_member, name: "j_commit_interval", scope: !280, file: !274, line: 1098, baseType: !47, size: 64, offset: 9344)
!5747 = !DIDerivedType(tag: DW_TAG_member, name: "j_commit_timer", scope: !280, file: !274, line: 1103, baseType: !2196, size: 320, offset: 9408)
!5748 = !DIDerivedType(tag: DW_TAG_member, name: "j_revoke_lock", scope: !280, file: !274, line: 1108, baseType: !67, size: 32, offset: 9728)
!5749 = !DIDerivedType(tag: DW_TAG_member, name: "j_revoke", scope: !280, file: !274, line: 1116, baseType: !5750, size: 64, offset: 9792)
!5750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5751, size: 64)
!5751 = !DICompositeType(tag: DW_TAG_structure_type, name: "jbd2_revoke_table_s", file: !274, line: 448, flags: DIFlagFwdDecl)
!5752 = !DIDerivedType(tag: DW_TAG_member, name: "j_revoke_table", scope: !280, file: !274, line: 1121, baseType: !5753, size: 128, offset: 9856)
!5753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5750, size: 128, elements: !2087)
!5754 = !DIDerivedType(tag: DW_TAG_member, name: "j_wbuf", scope: !280, file: !274, line: 1126, baseType: !5755, size: 64, offset: 9984)
!5755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!5756 = !DIDerivedType(tag: DW_TAG_member, name: "j_fc_wbuf", scope: !280, file: !274, line: 1133, baseType: !5755, size: 64, offset: 10048)
!5757 = !DIDerivedType(tag: DW_TAG_member, name: "j_wbufsize", scope: !280, file: !274, line: 1140, baseType: !30, size: 32, offset: 10112)
!5758 = !DIDerivedType(tag: DW_TAG_member, name: "j_fc_wbufsize", scope: !280, file: !274, line: 1147, baseType: !30, size: 32, offset: 10144)
!5759 = !DIDerivedType(tag: DW_TAG_member, name: "j_last_sync_writer", scope: !280, file: !274, line: 1155, baseType: !3882, size: 32, offset: 10176)
!5760 = !DIDerivedType(tag: DW_TAG_member, name: "j_average_commit_time", scope: !280, file: !274, line: 1163, baseType: !416, size: 64, offset: 10240)
!5761 = !DIDerivedType(tag: DW_TAG_member, name: "j_min_batch_time", scope: !280, file: !274, line: 1171, baseType: !412, size: 32, offset: 10304)
!5762 = !DIDerivedType(tag: DW_TAG_member, name: "j_max_batch_time", scope: !280, file: !274, line: 1179, baseType: !412, size: 32, offset: 10336)
!5763 = !DIDerivedType(tag: DW_TAG_member, name: "j_commit_callback", scope: !280, file: !274, line: 1186, baseType: !5764, size: 64, offset: 10368)
!5764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5765, size: 64)
!5765 = !DISubroutineType(types: !5766)
!5766 = !{null, !278, !5702}
!5767 = !DIDerivedType(tag: DW_TAG_member, name: "j_submit_inode_data_buffers", scope: !280, file: !274, line: 1196, baseType: !5768, size: 64, offset: 10432)
!5768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5769, size: 64)
!5769 = !DISubroutineType(types: !5770)
!5770 = !{!30, !5771}
!5771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5772, size: 64)
!5772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jbd2_inode", file: !274, line: 397, size: 512, elements: !5773)
!5773 = !{!5774, !5775, !5776, !5777, !5778, !5779, !5780}
!5774 = !DIDerivedType(tag: DW_TAG_member, name: "i_transaction", scope: !5772, file: !274, line: 404, baseType: !5702, size: 64)
!5775 = !DIDerivedType(tag: DW_TAG_member, name: "i_next_transaction", scope: !5772, file: !274, line: 412, baseType: !5702, size: 64, offset: 64)
!5776 = !DIDerivedType(tag: DW_TAG_member, name: "i_list", scope: !5772, file: !274, line: 417, baseType: !105, size: 128, offset: 128)
!5777 = !DIDerivedType(tag: DW_TAG_member, name: "i_vfs_inode", scope: !5772, file: !274, line: 424, baseType: !343, size: 64, offset: 256)
!5778 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !5772, file: !274, line: 429, baseType: !47, size: 64, offset: 320)
!5779 = !DIDerivedType(tag: DW_TAG_member, name: "i_dirty_start", scope: !5772, file: !274, line: 437, baseType: !49, size: 64, offset: 384)
!5780 = !DIDerivedType(tag: DW_TAG_member, name: "i_dirty_end", scope: !5772, file: !274, line: 445, baseType: !49, size: 64, offset: 448)
!5781 = !DIDerivedType(tag: DW_TAG_member, name: "j_finish_inode_data_buffers", scope: !280, file: !274, line: 1207, baseType: !5768, size: 64, offset: 10496)
!5782 = !DIDerivedType(tag: DW_TAG_member, name: "j_history_lock", scope: !280, file: !274, line: 1217, baseType: !67, size: 32, offset: 10560)
!5783 = !DIDerivedType(tag: DW_TAG_member, name: "j_proc_entry", scope: !280, file: !274, line: 1222, baseType: !5784, size: 64, offset: 10624)
!5784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5785, size: 64)
!5785 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !5786, line: 131, flags: DIFlagFwdDecl)
!5786 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!5787 = !DIDerivedType(tag: DW_TAG_member, name: "j_stats", scope: !280, file: !274, line: 1227, baseType: !5788, size: 640, offset: 10688)
!5788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "transaction_stats_s", file: !274, line: 724, size: 640, elements: !5789)
!5789 = !{!5790, !5791, !5792}
!5790 = !DIDerivedType(tag: DW_TAG_member, name: "ts_tid", scope: !5788, file: !274, line: 725, baseType: !47, size: 64)
!5791 = !DIDerivedType(tag: DW_TAG_member, name: "ts_requested", scope: !5788, file: !274, line: 726, baseType: !47, size: 64, offset: 64)
!5792 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !5788, file: !274, line: 727, baseType: !5793, size: 512, offset: 128)
!5793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "transaction_run_stats_s", file: !274, line: 711, size: 512, elements: !5794)
!5794 = !{!5795, !5796, !5797, !5798, !5799, !5800, !5801, !5802, !5803}
!5795 = !DIDerivedType(tag: DW_TAG_member, name: "rs_wait", scope: !5793, file: !274, line: 712, baseType: !47, size: 64)
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "rs_request_delay", scope: !5793, file: !274, line: 713, baseType: !47, size: 64, offset: 64)
!5797 = !DIDerivedType(tag: DW_TAG_member, name: "rs_running", scope: !5793, file: !274, line: 714, baseType: !47, size: 64, offset: 128)
!5798 = !DIDerivedType(tag: DW_TAG_member, name: "rs_locked", scope: !5793, file: !274, line: 715, baseType: !47, size: 64, offset: 192)
!5799 = !DIDerivedType(tag: DW_TAG_member, name: "rs_flushing", scope: !5793, file: !274, line: 716, baseType: !47, size: 64, offset: 256)
!5800 = !DIDerivedType(tag: DW_TAG_member, name: "rs_logging", scope: !5793, file: !274, line: 717, baseType: !47, size: 64, offset: 320)
!5801 = !DIDerivedType(tag: DW_TAG_member, name: "rs_handle_count", scope: !5793, file: !274, line: 719, baseType: !413, size: 32, offset: 384)
!5802 = !DIDerivedType(tag: DW_TAG_member, name: "rs_blocks", scope: !5793, file: !274, line: 720, baseType: !413, size: 32, offset: 416)
!5803 = !DIDerivedType(tag: DW_TAG_member, name: "rs_blocks_logged", scope: !5793, file: !274, line: 721, baseType: !413, size: 32, offset: 448)
!5804 = !DIDerivedType(tag: DW_TAG_member, name: "j_failed_commit", scope: !280, file: !274, line: 1232, baseType: !13, size: 32, offset: 11328)
!5805 = !DIDerivedType(tag: DW_TAG_member, name: "j_private", scope: !280, file: !274, line: 1240, baseType: !28, size: 64, offset: 11392)
!5806 = !DIDerivedType(tag: DW_TAG_member, name: "j_chksum_driver", scope: !280, file: !274, line: 1247, baseType: !5807, size: 64, offset: 11456)
!5807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5808, size: 64)
!5808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_shash", file: !5809, line: 268, size: 320, elements: !5810)
!5809 = !DIFile(filename: "./include/crypto/hash.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "898bc22f4cdebdebab6f93eb5fefb325")
!5810 = !{!5811, !5812}
!5811 = !DIDerivedType(tag: DW_TAG_member, name: "descsize", scope: !5808, file: !5809, line: 269, baseType: !13, size: 32)
!5812 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5808, file: !5809, line: 270, baseType: !5813, size: 256, offset: 64)
!5813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_tfm", file: !5814, line: 422, size: 256, elements: !5815)
!5814 = !DIFile(filename: "./include/linux/crypto.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cbfd5dd8032a2dca49778e0abbbe9ad8")
!5815 = !{!5816, !5817, !5818, !5819, !5824, !5882}
!5816 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !5813, file: !5814, line: 423, baseType: !715, size: 32)
!5817 = !DIDerivedType(tag: DW_TAG_member, name: "crt_flags", scope: !5813, file: !5814, line: 425, baseType: !412, size: 32, offset: 32)
!5818 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5813, file: !5814, line: 427, baseType: !30, size: 32, offset: 64)
!5819 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !5813, file: !5814, line: 429, baseType: !5820, size: 64, offset: 128)
!5820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5821, size: 64)
!5821 = !DISubroutineType(types: !5822)
!5822 = !{null, !5823}
!5823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5813, size: 64)
!5824 = !DIDerivedType(tag: DW_TAG_member, name: "__crt_alg", scope: !5813, file: !5814, line: 431, baseType: !5825, size: 64, offset: 192)
!5825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5826, size: 64)
!5826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_alg", file: !5814, line: 343, size: 3072, align: 64, elements: !5827)
!5827 = !{!5828, !5829, !5830, !5831, !5832, !5833, !5834, !5835, !5836, !5840, !5841, !5845, !5872, !5876, !5877, !5881}
!5828 = !DIDerivedType(tag: DW_TAG_member, name: "cra_list", scope: !5826, file: !5814, line: 344, baseType: !105, size: 128)
!5829 = !DIDerivedType(tag: DW_TAG_member, name: "cra_users", scope: !5826, file: !5814, line: 345, baseType: !105, size: 128, offset: 128)
!5830 = !DIDerivedType(tag: DW_TAG_member, name: "cra_flags", scope: !5826, file: !5814, line: 347, baseType: !412, size: 32, offset: 256)
!5831 = !DIDerivedType(tag: DW_TAG_member, name: "cra_blocksize", scope: !5826, file: !5814, line: 348, baseType: !13, size: 32, offset: 288)
!5832 = !DIDerivedType(tag: DW_TAG_member, name: "cra_ctxsize", scope: !5826, file: !5814, line: 349, baseType: !13, size: 32, offset: 320)
!5833 = !DIDerivedType(tag: DW_TAG_member, name: "cra_alignmask", scope: !5826, file: !5814, line: 350, baseType: !13, size: 32, offset: 352)
!5834 = !DIDerivedType(tag: DW_TAG_member, name: "cra_priority", scope: !5826, file: !5814, line: 352, baseType: !30, size: 32, offset: 384)
!5835 = !DIDerivedType(tag: DW_TAG_member, name: "cra_refcnt", scope: !5826, file: !5814, line: 353, baseType: !715, size: 32, offset: 416)
!5836 = !DIDerivedType(tag: DW_TAG_member, name: "cra_name", scope: !5826, file: !5814, line: 355, baseType: !5837, size: 1024, offset: 448)
!5837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1024, elements: !5838)
!5838 = !{!5839}
!5839 = !DISubrange(count: 128)
!5840 = !DIDerivedType(tag: DW_TAG_member, name: "cra_driver_name", scope: !5826, file: !5814, line: 356, baseType: !5837, size: 1024, offset: 1472)
!5841 = !DIDerivedType(tag: DW_TAG_member, name: "cra_type", scope: !5826, file: !5814, line: 358, baseType: !5842, size: 64, offset: 2496)
!5842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5843, size: 64)
!5843 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5844)
!5844 = !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_type", file: !5814, line: 160, flags: DIFlagFwdDecl)
!5845 = !DIDerivedType(tag: DW_TAG_member, name: "cra_u", scope: !5826, file: !5814, line: 363, baseType: !5846, size: 256, offset: 2560)
!5846 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5826, file: !5814, line: 360, size: 256, elements: !5847)
!5847 = !{!5848, !5864}
!5848 = !DIDerivedType(tag: DW_TAG_member, name: "cipher", scope: !5846, file: !5814, line: 361, baseType: !5849, size: 256)
!5849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cipher_alg", file: !5814, line: 235, size: 256, elements: !5850)
!5850 = !{!5851, !5852, !5853, !5859, !5863}
!5851 = !DIDerivedType(tag: DW_TAG_member, name: "cia_min_keysize", scope: !5849, file: !5814, line: 236, baseType: !13, size: 32)
!5852 = !DIDerivedType(tag: DW_TAG_member, name: "cia_max_keysize", scope: !5849, file: !5814, line: 237, baseType: !13, size: 32, offset: 32)
!5853 = !DIDerivedType(tag: DW_TAG_member, name: "cia_setkey", scope: !5849, file: !5814, line: 238, baseType: !5854, size: 64, offset: 64)
!5854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5855, size: 64)
!5855 = !DISubroutineType(types: !5856)
!5856 = !{!30, !5823, !5857, !13}
!5857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5858, size: 64)
!5858 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!5859 = !DIDerivedType(tag: DW_TAG_member, name: "cia_encrypt", scope: !5849, file: !5814, line: 240, baseType: !5860, size: 64, offset: 128)
!5860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5861, size: 64)
!5861 = !DISubroutineType(types: !5862)
!5862 = !{null, !5823, !2805, !5857}
!5863 = !DIDerivedType(tag: DW_TAG_member, name: "cia_decrypt", scope: !5849, file: !5814, line: 241, baseType: !5860, size: 64, offset: 192)
!5864 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !5846, file: !5814, line: 362, baseType: !5865, size: 128)
!5865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compress_alg", file: !5814, line: 255, size: 128, elements: !5866)
!5866 = !{!5867, !5871}
!5867 = !DIDerivedType(tag: DW_TAG_member, name: "coa_compress", scope: !5865, file: !5814, line: 256, baseType: !5868, size: 64)
!5868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5869, size: 64)
!5869 = !DISubroutineType(types: !5870)
!5870 = !{!30, !5823, !5857, !13, !2805, !2049}
!5871 = !DIDerivedType(tag: DW_TAG_member, name: "coa_decompress", scope: !5865, file: !5814, line: 258, baseType: !5868, size: 64, offset: 64)
!5872 = !DIDerivedType(tag: DW_TAG_member, name: "cra_init", scope: !5826, file: !5814, line: 365, baseType: !5873, size: 64, offset: 2816)
!5873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5874, size: 64)
!5874 = !DISubroutineType(types: !5875)
!5875 = !{!30, !5823}
!5876 = !DIDerivedType(tag: DW_TAG_member, name: "cra_exit", scope: !5826, file: !5814, line: 366, baseType: !5820, size: 64, offset: 2880)
!5877 = !DIDerivedType(tag: DW_TAG_member, name: "cra_destroy", scope: !5826, file: !5814, line: 367, baseType: !5878, size: 64, offset: 2944)
!5878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5879, size: 64)
!5879 = !DISubroutineType(types: !5880)
!5880 = !{null, !5825}
!5881 = !DIDerivedType(tag: DW_TAG_member, name: "cra_module", scope: !5826, file: !5814, line: 369, baseType: !530, size: 64, offset: 3008)
!5882 = !DIDerivedType(tag: DW_TAG_member, name: "__crt_ctx", scope: !5813, file: !5814, line: 433, baseType: !5883, align: 64, offset: 256)
!5883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, elements: !746)
!5884 = !DIDerivedType(tag: DW_TAG_member, name: "j_csum_seed", scope: !280, file: !274, line: 1254, baseType: !413, size: 32, offset: 11520)
!5885 = !DIDerivedType(tag: DW_TAG_member, name: "j_fc_cleanup_callback", scope: !280, file: !274, line: 1276, baseType: !5886, size: 64, offset: 11584)
!5886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5887, size: 64)
!5887 = !DISubroutineType(types: !5888)
!5888 = !{null, !5889, !30, !5737}
!5889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!5890 = !DIDerivedType(tag: DW_TAG_member, name: "j_fc_replay_callback", scope: !280, file: !274, line: 1289, baseType: !5891, size: 64, offset: 11648)
!5891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5892, size: 64)
!5892 = !DISubroutineType(types: !5893)
!5893 = !{!30, !5889, !307, !5894, !30, !5737}
!5894 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "passtype", file: !274, line: 741, baseType: !13, size: 32, elements: !5895)
!5895 = !{!5896, !5897, !5898}
!5896 = !DIEnumerator(name: "PASS_SCAN", value: 0)
!5897 = !DIEnumerator(name: "PASS_REVOKE", value: 1)
!5898 = !DIEnumerator(name: "PASS_REPLAY", value: 2)
!5899 = !DIDerivedType(tag: DW_TAG_member, name: "j_bmap", scope: !280, file: !274, line: 1300, baseType: !5900, size: 64, offset: 11712)
!5900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5901, size: 64)
!5901 = !DISubroutineType(types: !5902)
!5902 = !{!30, !5889, !2815}
!5903 = !DIDerivedType(tag: DW_TAG_member, name: "t_tid", scope: !275, file: !274, line: 557, baseType: !5737, size: 32, offset: 64)
!5904 = !DIDerivedType(tag: DW_TAG_member, name: "t_state", scope: !275, file: !274, line: 577, baseType: !273, size: 32, offset: 96)
!5905 = !DIDerivedType(tag: DW_TAG_member, name: "t_log_start", scope: !275, file: !274, line: 582, baseType: !47, size: 64, offset: 128)
!5906 = !DIDerivedType(tag: DW_TAG_member, name: "t_nr_buffers", scope: !275, file: !274, line: 588, baseType: !30, size: 32, offset: 192)
!5907 = !DIDerivedType(tag: DW_TAG_member, name: "t_reserved_list", scope: !275, file: !274, line: 595, baseType: !5908, size: 64, offset: 256)
!5908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5909, size: 64)
!5909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "journal_head", file: !5704, line: 22, size: 896, elements: !5910)
!5910 = !{!5911, !5912, !5913, !5914, !5915, !5916, !5917, !5918, !5919, !5920, !5921, !5922, !5923, !5924, !5925, !5937}
!5911 = !DIDerivedType(tag: DW_TAG_member, name: "b_bh", scope: !5909, file: !5704, line: 26, baseType: !307, size: 64)
!5912 = !DIDerivedType(tag: DW_TAG_member, name: "b_state_lock", scope: !5909, file: !5704, line: 31, baseType: !67, size: 32, offset: 64)
!5913 = !DIDerivedType(tag: DW_TAG_member, name: "b_jcount", scope: !5909, file: !5704, line: 37, baseType: !30, size: 32, offset: 96)
!5914 = !DIDerivedType(tag: DW_TAG_member, name: "b_jlist", scope: !5909, file: !5704, line: 46, baseType: !13, size: 32, offset: 128)
!5915 = !DIDerivedType(tag: DW_TAG_member, name: "b_modified", scope: !5909, file: !5704, line: 53, baseType: !13, size: 32, offset: 160)
!5916 = !DIDerivedType(tag: DW_TAG_member, name: "b_frozen_data", scope: !5909, file: !5704, line: 59, baseType: !484, size: 64, offset: 192)
!5917 = !DIDerivedType(tag: DW_TAG_member, name: "b_committed_data", scope: !5909, file: !5704, line: 66, baseType: !484, size: 64, offset: 256)
!5918 = !DIDerivedType(tag: DW_TAG_member, name: "b_transaction", scope: !5909, file: !5704, line: 77, baseType: !5702, size: 64, offset: 320)
!5919 = !DIDerivedType(tag: DW_TAG_member, name: "b_next_transaction", scope: !5909, file: !5704, line: 85, baseType: !5702, size: 64, offset: 384)
!5920 = !DIDerivedType(tag: DW_TAG_member, name: "b_tnext", scope: !5909, file: !5704, line: 91, baseType: !5908, size: 64, offset: 448)
!5921 = !DIDerivedType(tag: DW_TAG_member, name: "b_tprev", scope: !5909, file: !5704, line: 91, baseType: !5908, size: 64, offset: 512)
!5922 = !DIDerivedType(tag: DW_TAG_member, name: "b_cp_transaction", scope: !5909, file: !5704, line: 98, baseType: !5702, size: 64, offset: 576)
!5923 = !DIDerivedType(tag: DW_TAG_member, name: "b_cpnext", scope: !5909, file: !5704, line: 105, baseType: !5908, size: 64, offset: 640)
!5924 = !DIDerivedType(tag: DW_TAG_member, name: "b_cpprev", scope: !5909, file: !5704, line: 105, baseType: !5908, size: 64, offset: 704)
!5925 = !DIDerivedType(tag: DW_TAG_member, name: "b_triggers", scope: !5909, file: !5704, line: 108, baseType: !5926, size: 64, offset: 768)
!5926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5927, size: 64)
!5927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jbd2_buffer_trigger_type", file: !274, line: 1460, size: 128, elements: !5928)
!5928 = !{!5929, !5933}
!5929 = !DIDerivedType(tag: DW_TAG_member, name: "t_frozen", scope: !5927, file: !274, line: 1467, baseType: !5930, size: 64)
!5930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5931, size: 64)
!5931 = !DISubroutineType(types: !5932)
!5932 = !{null, !5926, !307, !28, !43}
!5933 = !DIDerivedType(tag: DW_TAG_member, name: "t_abort", scope: !5927, file: !274, line: 1475, baseType: !5934, size: 64, offset: 64)
!5934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5935, size: 64)
!5935 = !DISubroutineType(types: !5936)
!5936 = !{null, !5926, !307}
!5937 = !DIDerivedType(tag: DW_TAG_member, name: "b_frozen_triggers", scope: !5909, file: !5704, line: 111, baseType: !5926, size: 64, offset: 832)
!5938 = !DIDerivedType(tag: DW_TAG_member, name: "t_buffers", scope: !275, file: !274, line: 601, baseType: !5908, size: 64, offset: 320)
!5939 = !DIDerivedType(tag: DW_TAG_member, name: "t_forget", scope: !275, file: !274, line: 608, baseType: !5908, size: 64, offset: 384)
!5940 = !DIDerivedType(tag: DW_TAG_member, name: "t_checkpoint_list", scope: !275, file: !274, line: 614, baseType: !5908, size: 64, offset: 448)
!5941 = !DIDerivedType(tag: DW_TAG_member, name: "t_shadow_list", scope: !275, file: !274, line: 623, baseType: !5908, size: 64, offset: 512)
!5942 = !DIDerivedType(tag: DW_TAG_member, name: "t_inode_list", scope: !275, file: !274, line: 631, baseType: !105, size: 128, offset: 576)
!5943 = !DIDerivedType(tag: DW_TAG_member, name: "t_max_wait", scope: !275, file: !274, line: 636, baseType: !47, size: 64, offset: 704)
!5944 = !DIDerivedType(tag: DW_TAG_member, name: "t_start", scope: !275, file: !274, line: 641, baseType: !47, size: 64, offset: 768)
!5945 = !DIDerivedType(tag: DW_TAG_member, name: "t_requested", scope: !275, file: !274, line: 646, baseType: !47, size: 64, offset: 832)
!5946 = !DIDerivedType(tag: DW_TAG_member, name: "t_chp_stats", scope: !275, file: !274, line: 651, baseType: !5947, size: 192, offset: 896)
!5947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "transaction_chp_stats_s", file: !274, line: 510, size: 192, elements: !5948)
!5948 = !{!5949, !5950, !5951, !5952}
!5949 = !DIDerivedType(tag: DW_TAG_member, name: "cs_chp_time", scope: !5947, file: !274, line: 511, baseType: !47, size: 64)
!5950 = !DIDerivedType(tag: DW_TAG_member, name: "cs_forced_to_close", scope: !5947, file: !274, line: 512, baseType: !413, size: 32, offset: 64)
!5951 = !DIDerivedType(tag: DW_TAG_member, name: "cs_written", scope: !5947, file: !274, line: 513, baseType: !413, size: 32, offset: 96)
!5952 = !DIDerivedType(tag: DW_TAG_member, name: "cs_dropped", scope: !5947, file: !274, line: 514, baseType: !413, size: 32, offset: 128)
!5953 = !DIDerivedType(tag: DW_TAG_member, name: "t_updates", scope: !275, file: !274, line: 657, baseType: !57, size: 32, offset: 1088)
!5954 = !DIDerivedType(tag: DW_TAG_member, name: "t_outstanding_credits", scope: !275, file: !274, line: 665, baseType: !57, size: 32, offset: 1120)
!5955 = !DIDerivedType(tag: DW_TAG_member, name: "t_outstanding_revokes", scope: !275, file: !274, line: 671, baseType: !57, size: 32, offset: 1152)
!5956 = !DIDerivedType(tag: DW_TAG_member, name: "t_handle_count", scope: !275, file: !274, line: 676, baseType: !57, size: 32, offset: 1184)
!5957 = !DIDerivedType(tag: DW_TAG_member, name: "t_cpnext", scope: !275, file: !274, line: 682, baseType: !5702, size: 64, offset: 1216)
!5958 = !DIDerivedType(tag: DW_TAG_member, name: "t_cpprev", scope: !275, file: !274, line: 682, baseType: !5702, size: 64, offset: 1280)
!5959 = !DIDerivedType(tag: DW_TAG_member, name: "t_expires", scope: !275, file: !274, line: 688, baseType: !47, size: 64, offset: 1344)
!5960 = !DIDerivedType(tag: DW_TAG_member, name: "t_start_time", scope: !275, file: !274, line: 693, baseType: !3046, size: 64, offset: 1408)
!5961 = !DIDerivedType(tag: DW_TAG_member, name: "t_synchronous_commit", scope: !275, file: !274, line: 699, baseType: !13, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!5962 = !DIDerivedType(tag: DW_TAG_member, name: "t_need_data_flush", scope: !275, file: !274, line: 702, baseType: !30, size: 32, offset: 1504)
!5963 = !DIDerivedType(tag: DW_TAG_member, name: "t_private_list", scope: !275, file: !274, line: 708, baseType: !105, size: 128, offset: 1536)
!5964 = !{!5965, !5966, !5967, !5968, !5969, !5970, !5971, !5972, !5973}
!5965 = !DIEnumerator(name: "T_RUNNING", value: 0)
!5966 = !DIEnumerator(name: "T_LOCKED", value: 1)
!5967 = !DIEnumerator(name: "T_SWITCH", value: 2)
!5968 = !DIEnumerator(name: "T_FLUSH", value: 3)
!5969 = !DIEnumerator(name: "T_COMMIT", value: 4)
!5970 = !DIEnumerator(name: "T_COMMIT_DFLUSH", value: 5)
!5971 = !DIEnumerator(name: "T_COMMIT_JFLUSH", value: 6)
!5972 = !DIEnumerator(name: "T_COMMIT_CALLBACK", value: 7)
!5973 = !DIEnumerator(name: "T_FINISHED", value: 8)
!5974 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ext4_li_mode", file: !5975, line: 2584, baseType: !13, size: 32, elements: !5976)
!5975 = !DIFile(filename: "fs/ext4/ext4.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e5787aa1e5cfdc086e99d72d01ea51d")
!5976 = !{!5977, !5978}
!5977 = !DIEnumerator(name: "EXT4_LI_MODE_PREFETCH_BBITMAP", value: 0)
!5978 = !DIEnumerator(name: "EXT4_LI_MODE_ITABLE", value: 1)
!5979 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !5980, line: 10, baseType: !13, size: 32, elements: !5981)
!5980 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!5981 = !{!5982, !5983}
!5982 = !DIEnumerator(name: "false", value: 0)
!5983 = !DIEnumerator(name: "true", value: 1)
!5984 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !5985, line: 364, baseType: !13, size: 32, elements: !5986)
!5985 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!5986 = !{!5987, !5988, !5989, !5990, !5991, !5992, !5993}
!5987 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!5988 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!5989 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!5990 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!5991 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!5992 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!5993 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!5994 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !5975, line: 2963, baseType: !13, size: 32, elements: !5995)
!5995 = !{!5996, !5997, !5998, !5999, !6000}
!5996 = !DIEnumerator(name: "EXT4_IGET_NORMAL", value: 0)
!5997 = !DIEnumerator(name: "EXT4_IGET_SPECIAL", value: 1)
!5998 = !DIEnumerator(name: "EXT4_IGET_HANDLE", value: 2)
!5999 = !DIEnumerator(name: "EXT4_IGET_BAD", value: 4)
!6000 = !DIEnumerator(name: "EXT4_IGET_EA_INODE", value: 8)
!6001 = !{!28, !1309, !413, !6002, !6003, !6004, !6009, !6011, !6013, !47, !6018, !618}
!6002 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !1352, line: 38, baseType: !413)
!6003 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !33, line: 42, baseType: !47)
!6004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6005, size: 64)
!6005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ext4_system_blocks", file: !5975, line: 268, size: 192, elements: !6006)
!6006 = !{!6007, !6008}
!6007 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !6005, file: !5975, line: 269, baseType: !1075, size: 64)
!6008 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !6005, file: !5975, line: 270, baseType: !670, size: 128, align: 64, offset: 64)
!6009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6010, size: 64)
!6010 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !6004)
!6011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6012, size: 64)
!6012 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6010)
!6013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6014, size: 64)
!6014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ext4_system_zone", file: !2, line: 23, size: 320, elements: !6015)
!6015 = !{!6016, !6017, !6019, !6020}
!6016 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !6014, file: !2, line: 24, baseType: !795, size: 192, align: 64)
!6017 = !DIDerivedType(tag: DW_TAG_member, name: "start_blk", scope: !6014, file: !2, line: 25, baseType: !6018, size: 64, offset: 192)
!6018 = !DIDerivedType(tag: DW_TAG_typedef, name: "ext4_fsblk_t", file: !5975, line: 117, baseType: !418)
!6019 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !6014, file: !2, line: 26, baseType: !13, size: 32, offset: 256)
!6020 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !6014, file: !2, line: 27, baseType: !412, size: 32, offset: 288)
!6021 = !{!0, !6022, !6027, !7, !6030, !6035, !6038, !6043, !6048, !6050, !6052, !6055, !6058}
!6022 = !DIGlobalVariableExpression(var: !6023, expr: !DIExpression())
!6023 = distinct !DIGlobalVariable(scope: null, file: !2, line: 227, type: !6024, isLocal: true, isDefinition: true)
!6024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !6025)
!6025 = !{!6026}
!6026 = !DISubrange(count: 25)
!6027 = !DIGlobalVariableExpression(var: !6028, expr: !DIExpression())
!6028 = distinct !DIGlobalVariable(scope: null, file: !2, line: 364, type: !6029, isLocal: true, isDefinition: true)
!6029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !4062)
!6030 = !DIGlobalVariableExpression(var: !6031, expr: !DIExpression())
!6031 = distinct !DIGlobalVariable(scope: null, file: !5985, line: 480, type: !6032, isLocal: true, isDefinition: true)
!6032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !6033)
!6033 = !{!6034}
!6034 = !DISubrange(count: 21)
!6035 = !DIGlobalVariableExpression(var: !6036, expr: !DIExpression())
!6036 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__cond_resched181", scope: !6037, file: !1715, line: 2104, type: !28, isLocal: true, isDefinition: true)
!6037 = distinct !DISubprogram(name: "_cond_resched", scope: !1715, file: !1715, line: 2102, type: !2069, scopeLine: 2103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!6038 = !DIGlobalVariableExpression(var: !6039, expr: !DIExpression())
!6039 = distinct !DIGlobalVariable(scope: null, file: !2, line: 160, type: !6040, isLocal: true, isDefinition: true)
!6040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 224, elements: !6041)
!6041 = !{!6042}
!6042 = !DISubrange(count: 28)
!6043 = !DIGlobalVariableExpression(var: !6044, expr: !DIExpression())
!6044 = distinct !DIGlobalVariable(scope: null, file: !2, line: 179, type: !6045, isLocal: true, isDefinition: true)
!6045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !6046)
!6046 = !{!6047}
!6047 = !DISubrange(count: 48)
!6048 = !DIGlobalVariableExpression(var: !6049, expr: !DIExpression())
!6049 = distinct !DIGlobalVariable(scope: null, file: !2, line: 132, type: !3, isLocal: true, isDefinition: true)
!6050 = !DIGlobalVariableExpression(var: !6051, expr: !DIExpression())
!6051 = distinct !DIGlobalVariable(scope: null, file: !2, line: 138, type: !6029, isLocal: true, isDefinition: true)
!6052 = !DIGlobalVariableExpression(var: !6053, expr: !DIExpression())
!6053 = distinct !DIGlobalVariable(scope: null, file: !2, line: 138, type: !6054, isLocal: true, isDefinition: true)
!6054 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !3304)
!6055 = !DIGlobalVariableExpression(var: !6056, expr: !DIExpression())
!6056 = distinct !DIGlobalVariable(scope: null, file: !2, line: 138, type: !6057, isLocal: true, isDefinition: true)
!6057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !584)
!6058 = !DIGlobalVariableExpression(var: !6059, expr: !DIExpression())
!6059 = distinct !DIGlobalVariable(scope: null, file: !2, line: 144, type: !6060, isLocal: true, isDefinition: true)
!6060 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !733)
!6061 = !{i32 7, !"Dwarf Version", i32 5}
!6062 = !{i32 2, !"Debug Info Version", i32 3}
!6063 = !{i32 1, !"wchar_size", i32 2}
!6064 = !{i32 8, !"cf-protection-branch", i32 1}
!6065 = !{i32 4, !"function_return_thunk_extern", i32 1}
!6066 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!6067 = !{i32 1, !"Code Model", i32 2}
!6068 = !{i32 1, !"override-stack-alignment", i32 8}
!6069 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6070 = distinct !DISubprogram(name: "ext4_init_system_zone", scope: !2, file: !2, line: 32, type: !2069, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!6071 = !DILocation(line: 34, column: 28, scope: !6070)
!6072 = !DILocation(line: 34, column: 26, scope: !6070)
!6073 = !DILocation(line: 35, column: 6, scope: !6074)
!6074 = distinct !DILexicalBlock(scope: !6070, file: !2, line: 35, column: 6)
!6075 = !DILocation(line: 35, column: 30, scope: !6074)
!6076 = !DILocation(line: 35, column: 6, scope: !6070)
!6077 = !DILocation(line: 36, column: 3, scope: !6074)
!6078 = !DILocation(line: 37, column: 2, scope: !6070)
!6079 = !DILocation(line: 38, column: 1, scope: !6070)
!6080 = !DISubprogram(name: "kmem_cache_create", scope: !5985, file: !5985, line: 189, type: !6081, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6081 = !DISubroutineType(types: !6082)
!6082 = !{!2691, !25, !13, !13, !6083, !1842}
!6083 = !DIDerivedType(tag: DW_TAG_typedef, name: "slab_flags_t", file: !33, line: 155, baseType: !13)
!6084 = distinct !DISubprogram(name: "ext4_exit_system_zone", scope: !2, file: !2, line: 40, type: !2301, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!6085 = !DILocation(line: 42, column: 2, scope: !6084)
!6086 = !DILocation(line: 43, column: 21, scope: !6084)
!6087 = !DILocation(line: 43, column: 2, scope: !6084)
!6088 = !DILocation(line: 44, column: 1, scope: !6084)
!6089 = !DISubprogram(name: "rcu_barrier", scope: !6090, file: !6090, line: 39, type: !2301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6090 = !DIFile(filename: "./include/linux/rcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ba1a11a02717ea844631ceb399131463")
!6091 = !DISubprogram(name: "kmem_cache_destroy", scope: !5985, file: !5985, line: 197, type: !6092, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6092 = !DISubroutineType(types: !6093)
!6093 = !{null, !2691}
!6094 = distinct !DISubprogram(name: "ext4_setup_system_zone", scope: !2, file: !2, line: 211, type: !2374, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6095)
!6095 = !{!6096, !6097, !6099, !6507, !6508, !6535, !6536, !6537, !6541, !6543}
!6096 = !DILocalVariable(name: "sb", arg: 1, scope: !6094, file: !2, line: 211, type: !495)
!6097 = !DILocalVariable(name: "ngroups", scope: !6094, file: !2, line: 213, type: !6098)
!6098 = !DIDerivedType(tag: DW_TAG_typedef, name: "ext4_group_t", file: !5975, line: 123, baseType: !13)
!6099 = !DILocalVariable(name: "sbi", scope: !6094, file: !2, line: 214, type: !6100)
!6100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6101, size: 64)
!6101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ext4_sb_info", file: !5975, line: 1490, size: 18432, elements: !6102)
!6102 = !{!6103, !6104, !6105, !6106, !6107, !6108, !6109, !6110, !6111, !6112, !6113, !6114, !6115, !6116, !6117, !6118, !6235, !6236, !6237, !6238, !6239, !6240, !6241, !6242, !6243, !6244, !6245, !6246, !6247, !6248, !6249, !6250, !6251, !6252, !6253, !6255, !6256, !6257, !6258, !6259, !6260, !6261, !6262, !6272, !6273, !6274, !6275, !6276, !6277, !6278, !6279, !6280, !6281, !6292, !6293, !6294, !6295, !6296, !6297, !6298, !6299, !6300, !6321, !6322, !6323, !6325, !6326, !6327, !6328, !6329, !6330, !6331, !6332, !6333, !6335, !6336, !6337, !6338, !6339, !6340, !6341, !6342, !6343, !6344, !6345, !6346, !6347, !6348, !6349, !6350, !6351, !6352, !6353, !6354, !6355, !6357, !6358, !6359, !6360, !6361, !6362, !6363, !6364, !6365, !6367, !6368, !6369, !6370, !6371, !6372, !6373, !6374, !6375, !6378, !6379, !6380, !6381, !6382, !6390, !6391, !6392, !6393, !6404, !6405, !6406, !6407, !6408, !6409, !6410, !6411, !6412, !6423, !6426, !6427, !6428, !6434, !6435, !6436, !6437, !6438, !6439, !6442, !6443, !6446, !6447, !6448, !6449, !6450, !6451, !6452, !6453, !6454, !6455, !6456, !6457, !6458, !6459, !6460, !6461, !6462, !6463, !6464, !6465, !6467, !6468, !6469, !6470, !6471, !6483, !6484}
!6103 = !DIDerivedType(tag: DW_TAG_member, name: "s_desc_size", scope: !6101, file: !5975, line: 1491, baseType: !47, size: 64)
!6104 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_per_block", scope: !6101, file: !5975, line: 1492, baseType: !47, size: 64, offset: 64)
!6105 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocks_per_group", scope: !6101, file: !5975, line: 1493, baseType: !47, size: 64, offset: 128)
!6106 = !DIDerivedType(tag: DW_TAG_member, name: "s_clusters_per_group", scope: !6101, file: !5975, line: 1494, baseType: !47, size: 64, offset: 192)
!6107 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_per_group", scope: !6101, file: !5975, line: 1495, baseType: !47, size: 64, offset: 256)
!6108 = !DIDerivedType(tag: DW_TAG_member, name: "s_itb_per_group", scope: !6101, file: !5975, line: 1496, baseType: !47, size: 64, offset: 320)
!6109 = !DIDerivedType(tag: DW_TAG_member, name: "s_gdb_count", scope: !6101, file: !5975, line: 1497, baseType: !47, size: 64, offset: 384)
!6110 = !DIDerivedType(tag: DW_TAG_member, name: "s_desc_per_block", scope: !6101, file: !5975, line: 1498, baseType: !47, size: 64, offset: 448)
!6111 = !DIDerivedType(tag: DW_TAG_member, name: "s_groups_count", scope: !6101, file: !5975, line: 1499, baseType: !6098, size: 32, offset: 512)
!6112 = !DIDerivedType(tag: DW_TAG_member, name: "s_blockfile_groups", scope: !6101, file: !5975, line: 1500, baseType: !6098, size: 32, offset: 544)
!6113 = !DIDerivedType(tag: DW_TAG_member, name: "s_overhead", scope: !6101, file: !5975, line: 1501, baseType: !47, size: 64, offset: 576)
!6114 = !DIDerivedType(tag: DW_TAG_member, name: "s_cluster_ratio", scope: !6101, file: !5975, line: 1502, baseType: !13, size: 32, offset: 640)
!6115 = !DIDerivedType(tag: DW_TAG_member, name: "s_cluster_bits", scope: !6101, file: !5975, line: 1503, baseType: !13, size: 32, offset: 672)
!6116 = !DIDerivedType(tag: DW_TAG_member, name: "s_bitmap_maxbytes", scope: !6101, file: !5975, line: 1504, baseType: !49, size: 64, offset: 704)
!6117 = !DIDerivedType(tag: DW_TAG_member, name: "s_sbh", scope: !6101, file: !5975, line: 1505, baseType: !307, size: 64, offset: 768)
!6118 = !DIDerivedType(tag: DW_TAG_member, name: "s_es", scope: !6101, file: !5975, line: 1506, baseType: !6119, size: 64, offset: 832)
!6119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6120, size: 64)
!6120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ext4_super_block", file: !5975, line: 1299, size: 8192, elements: !6121)
!6121 = !{!6122, !6123, !6124, !6125, !6126, !6127, !6128, !6129, !6130, !6131, !6132, !6133, !6134, !6135, !6137, !6138, !6139, !6140, !6141, !6142, !6143, !6144, !6145, !6146, !6147, !6148, !6149, !6150, !6151, !6152, !6153, !6154, !6155, !6156, !6157, !6158, !6159, !6160, !6161, !6162, !6163, !6164, !6165, !6167, !6168, !6169, !6170, !6171, !6172, !6173, !6175, !6176, !6177, !6178, !6179, !6180, !6181, !6182, !6183, !6185, !6186, !6187, !6188, !6189, !6190, !6191, !6192, !6193, !6194, !6195, !6196, !6197, !6198, !6199, !6201, !6202, !6203, !6204, !6205, !6206, !6207, !6209, !6210, !6211, !6212, !6214, !6215, !6216, !6217, !6218, !6219, !6220, !6221, !6222, !6223, !6224, !6225, !6226, !6227, !6228, !6229, !6230, !6234}
!6122 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_count", scope: !6120, file: !5975, line: 1300, baseType: !6002, size: 32)
!6123 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocks_count_lo", scope: !6120, file: !5975, line: 1301, baseType: !6002, size: 32, offset: 32)
!6124 = !DIDerivedType(tag: DW_TAG_member, name: "s_r_blocks_count_lo", scope: !6120, file: !5975, line: 1302, baseType: !6002, size: 32, offset: 64)
!6125 = !DIDerivedType(tag: DW_TAG_member, name: "s_free_blocks_count_lo", scope: !6120, file: !5975, line: 1303, baseType: !6002, size: 32, offset: 96)
!6126 = !DIDerivedType(tag: DW_TAG_member, name: "s_free_inodes_count", scope: !6120, file: !5975, line: 1304, baseType: !6002, size: 32, offset: 128)
!6127 = !DIDerivedType(tag: DW_TAG_member, name: "s_first_data_block", scope: !6120, file: !5975, line: 1305, baseType: !6002, size: 32, offset: 160)
!6128 = !DIDerivedType(tag: DW_TAG_member, name: "s_log_block_size", scope: !6120, file: !5975, line: 1306, baseType: !6002, size: 32, offset: 192)
!6129 = !DIDerivedType(tag: DW_TAG_member, name: "s_log_cluster_size", scope: !6120, file: !5975, line: 1307, baseType: !6002, size: 32, offset: 224)
!6130 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocks_per_group", scope: !6120, file: !5975, line: 1308, baseType: !6002, size: 32, offset: 256)
!6131 = !DIDerivedType(tag: DW_TAG_member, name: "s_clusters_per_group", scope: !6120, file: !5975, line: 1309, baseType: !6002, size: 32, offset: 288)
!6132 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_per_group", scope: !6120, file: !5975, line: 1310, baseType: !6002, size: 32, offset: 320)
!6133 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtime", scope: !6120, file: !5975, line: 1311, baseType: !6002, size: 32, offset: 352)
!6134 = !DIDerivedType(tag: DW_TAG_member, name: "s_wtime", scope: !6120, file: !5975, line: 1312, baseType: !6002, size: 32, offset: 384)
!6135 = !DIDerivedType(tag: DW_TAG_member, name: "s_mnt_count", scope: !6120, file: !5975, line: 1313, baseType: !6136, size: 16, offset: 416)
!6136 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !1352, line: 36, baseType: !102)
!6137 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_mnt_count", scope: !6120, file: !5975, line: 1314, baseType: !6136, size: 16, offset: 432)
!6138 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !6120, file: !5975, line: 1315, baseType: !6136, size: 16, offset: 448)
!6139 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !6120, file: !5975, line: 1316, baseType: !6136, size: 16, offset: 464)
!6140 = !DIDerivedType(tag: DW_TAG_member, name: "s_errors", scope: !6120, file: !5975, line: 1317, baseType: !6136, size: 16, offset: 480)
!6141 = !DIDerivedType(tag: DW_TAG_member, name: "s_minor_rev_level", scope: !6120, file: !5975, line: 1318, baseType: !6136, size: 16, offset: 496)
!6142 = !DIDerivedType(tag: DW_TAG_member, name: "s_lastcheck", scope: !6120, file: !5975, line: 1319, baseType: !6002, size: 32, offset: 512)
!6143 = !DIDerivedType(tag: DW_TAG_member, name: "s_checkinterval", scope: !6120, file: !5975, line: 1320, baseType: !6002, size: 32, offset: 544)
!6144 = !DIDerivedType(tag: DW_TAG_member, name: "s_creator_os", scope: !6120, file: !5975, line: 1321, baseType: !6002, size: 32, offset: 576)
!6145 = !DIDerivedType(tag: DW_TAG_member, name: "s_rev_level", scope: !6120, file: !5975, line: 1322, baseType: !6002, size: 32, offset: 608)
!6146 = !DIDerivedType(tag: DW_TAG_member, name: "s_def_resuid", scope: !6120, file: !5975, line: 1323, baseType: !6136, size: 16, offset: 640)
!6147 = !DIDerivedType(tag: DW_TAG_member, name: "s_def_resgid", scope: !6120, file: !5975, line: 1324, baseType: !6136, size: 16, offset: 656)
!6148 = !DIDerivedType(tag: DW_TAG_member, name: "s_first_ino", scope: !6120, file: !5975, line: 1338, baseType: !6002, size: 32, offset: 672)
!6149 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_size", scope: !6120, file: !5975, line: 1339, baseType: !6136, size: 16, offset: 704)
!6150 = !DIDerivedType(tag: DW_TAG_member, name: "s_block_group_nr", scope: !6120, file: !5975, line: 1340, baseType: !6136, size: 16, offset: 720)
!6151 = !DIDerivedType(tag: DW_TAG_member, name: "s_feature_compat", scope: !6120, file: !5975, line: 1341, baseType: !6002, size: 32, offset: 736)
!6152 = !DIDerivedType(tag: DW_TAG_member, name: "s_feature_incompat", scope: !6120, file: !5975, line: 1342, baseType: !6002, size: 32, offset: 768)
!6153 = !DIDerivedType(tag: DW_TAG_member, name: "s_feature_ro_compat", scope: !6120, file: !5975, line: 1343, baseType: !6002, size: 32, offset: 800)
!6154 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !6120, file: !5975, line: 1344, baseType: !5075, size: 128, offset: 832)
!6155 = !DIDerivedType(tag: DW_TAG_member, name: "s_volume_name", scope: !6120, file: !5975, line: 1345, baseType: !3940, size: 128, offset: 960)
!6156 = !DIDerivedType(tag: DW_TAG_member, name: "s_last_mounted", scope: !6120, file: !5975, line: 1346, baseType: !3432, size: 512, offset: 1088)
!6157 = !DIDerivedType(tag: DW_TAG_member, name: "s_algorithm_usage_bitmap", scope: !6120, file: !5975, line: 1347, baseType: !6002, size: 32, offset: 1600)
!6158 = !DIDerivedType(tag: DW_TAG_member, name: "s_prealloc_blocks", scope: !6120, file: !5975, line: 1352, baseType: !93, size: 8, offset: 1632)
!6159 = !DIDerivedType(tag: DW_TAG_member, name: "s_prealloc_dir_blocks", scope: !6120, file: !5975, line: 1353, baseType: !93, size: 8, offset: 1640)
!6160 = !DIDerivedType(tag: DW_TAG_member, name: "s_reserved_gdt_blocks", scope: !6120, file: !5975, line: 1354, baseType: !6136, size: 16, offset: 1648)
!6161 = !DIDerivedType(tag: DW_TAG_member, name: "s_journal_uuid", scope: !6120, file: !5975, line: 1358, baseType: !5075, size: 128, offset: 1664)
!6162 = !DIDerivedType(tag: DW_TAG_member, name: "s_journal_inum", scope: !6120, file: !5975, line: 1359, baseType: !6002, size: 32, offset: 1792)
!6163 = !DIDerivedType(tag: DW_TAG_member, name: "s_journal_dev", scope: !6120, file: !5975, line: 1360, baseType: !6002, size: 32, offset: 1824)
!6164 = !DIDerivedType(tag: DW_TAG_member, name: "s_last_orphan", scope: !6120, file: !5975, line: 1361, baseType: !6002, size: 32, offset: 1856)
!6165 = !DIDerivedType(tag: DW_TAG_member, name: "s_hash_seed", scope: !6120, file: !5975, line: 1362, baseType: !6166, size: 128, offset: 1888)
!6166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6002, size: 128, elements: !733)
!6167 = !DIDerivedType(tag: DW_TAG_member, name: "s_def_hash_version", scope: !6120, file: !5975, line: 1363, baseType: !93, size: 8, offset: 2016)
!6168 = !DIDerivedType(tag: DW_TAG_member, name: "s_jnl_backup_type", scope: !6120, file: !5975, line: 1364, baseType: !93, size: 8, offset: 2024)
!6169 = !DIDerivedType(tag: DW_TAG_member, name: "s_desc_size", scope: !6120, file: !5975, line: 1365, baseType: !6136, size: 16, offset: 2032)
!6170 = !DIDerivedType(tag: DW_TAG_member, name: "s_default_mount_opts", scope: !6120, file: !5975, line: 1366, baseType: !6002, size: 32, offset: 2048)
!6171 = !DIDerivedType(tag: DW_TAG_member, name: "s_first_meta_bg", scope: !6120, file: !5975, line: 1367, baseType: !6002, size: 32, offset: 2080)
!6172 = !DIDerivedType(tag: DW_TAG_member, name: "s_mkfs_time", scope: !6120, file: !5975, line: 1368, baseType: !6002, size: 32, offset: 2112)
!6173 = !DIDerivedType(tag: DW_TAG_member, name: "s_jnl_blocks", scope: !6120, file: !5975, line: 1369, baseType: !6174, size: 544, offset: 2144)
!6174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6002, size: 544, elements: !5)
!6175 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocks_count_hi", scope: !6120, file: !5975, line: 1371, baseType: !6002, size: 32, offset: 2688)
!6176 = !DIDerivedType(tag: DW_TAG_member, name: "s_r_blocks_count_hi", scope: !6120, file: !5975, line: 1372, baseType: !6002, size: 32, offset: 2720)
!6177 = !DIDerivedType(tag: DW_TAG_member, name: "s_free_blocks_count_hi", scope: !6120, file: !5975, line: 1373, baseType: !6002, size: 32, offset: 2752)
!6178 = !DIDerivedType(tag: DW_TAG_member, name: "s_min_extra_isize", scope: !6120, file: !5975, line: 1374, baseType: !6136, size: 16, offset: 2784)
!6179 = !DIDerivedType(tag: DW_TAG_member, name: "s_want_extra_isize", scope: !6120, file: !5975, line: 1375, baseType: !6136, size: 16, offset: 2800)
!6180 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !6120, file: !5975, line: 1376, baseType: !6002, size: 32, offset: 2816)
!6181 = !DIDerivedType(tag: DW_TAG_member, name: "s_raid_stride", scope: !6120, file: !5975, line: 1377, baseType: !6136, size: 16, offset: 2848)
!6182 = !DIDerivedType(tag: DW_TAG_member, name: "s_mmp_update_interval", scope: !6120, file: !5975, line: 1378, baseType: !6136, size: 16, offset: 2864)
!6183 = !DIDerivedType(tag: DW_TAG_member, name: "s_mmp_block", scope: !6120, file: !5975, line: 1379, baseType: !6184, size: 64, offset: 2880)
!6184 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le64", file: !1352, line: 40, baseType: !417)
!6185 = !DIDerivedType(tag: DW_TAG_member, name: "s_raid_stripe_width", scope: !6120, file: !5975, line: 1380, baseType: !6002, size: 32, offset: 2944)
!6186 = !DIDerivedType(tag: DW_TAG_member, name: "s_log_groups_per_flex", scope: !6120, file: !5975, line: 1381, baseType: !93, size: 8, offset: 2976)
!6187 = !DIDerivedType(tag: DW_TAG_member, name: "s_checksum_type", scope: !6120, file: !5975, line: 1382, baseType: !93, size: 8, offset: 2984)
!6188 = !DIDerivedType(tag: DW_TAG_member, name: "s_encryption_level", scope: !6120, file: !5975, line: 1383, baseType: !93, size: 8, offset: 2992)
!6189 = !DIDerivedType(tag: DW_TAG_member, name: "s_reserved_pad", scope: !6120, file: !5975, line: 1384, baseType: !93, size: 8, offset: 3000)
!6190 = !DIDerivedType(tag: DW_TAG_member, name: "s_kbytes_written", scope: !6120, file: !5975, line: 1385, baseType: !6184, size: 64, offset: 3008)
!6191 = !DIDerivedType(tag: DW_TAG_member, name: "s_snapshot_inum", scope: !6120, file: !5975, line: 1386, baseType: !6002, size: 32, offset: 3072)
!6192 = !DIDerivedType(tag: DW_TAG_member, name: "s_snapshot_id", scope: !6120, file: !5975, line: 1387, baseType: !6002, size: 32, offset: 3104)
!6193 = !DIDerivedType(tag: DW_TAG_member, name: "s_snapshot_r_blocks_count", scope: !6120, file: !5975, line: 1388, baseType: !6184, size: 64, offset: 3136)
!6194 = !DIDerivedType(tag: DW_TAG_member, name: "s_snapshot_list", scope: !6120, file: !5975, line: 1390, baseType: !6002, size: 32, offset: 3200)
!6195 = !DIDerivedType(tag: DW_TAG_member, name: "s_error_count", scope: !6120, file: !5975, line: 1393, baseType: !6002, size: 32, offset: 3232)
!6196 = !DIDerivedType(tag: DW_TAG_member, name: "s_first_error_time", scope: !6120, file: !5975, line: 1394, baseType: !6002, size: 32, offset: 3264)
!6197 = !DIDerivedType(tag: DW_TAG_member, name: "s_first_error_ino", scope: !6120, file: !5975, line: 1395, baseType: !6002, size: 32, offset: 3296)
!6198 = !DIDerivedType(tag: DW_TAG_member, name: "s_first_error_block", scope: !6120, file: !5975, line: 1396, baseType: !6184, size: 64, offset: 3328)
!6199 = !DIDerivedType(tag: DW_TAG_member, name: "s_first_error_func", scope: !6120, file: !5975, line: 1397, baseType: !6200, size: 256, offset: 3392)
!6200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 256, elements: !425)
!6201 = !DIDerivedType(tag: DW_TAG_member, name: "s_first_error_line", scope: !6120, file: !5975, line: 1398, baseType: !6002, size: 32, offset: 3648)
!6202 = !DIDerivedType(tag: DW_TAG_member, name: "s_last_error_time", scope: !6120, file: !5975, line: 1399, baseType: !6002, size: 32, offset: 3680)
!6203 = !DIDerivedType(tag: DW_TAG_member, name: "s_last_error_ino", scope: !6120, file: !5975, line: 1400, baseType: !6002, size: 32, offset: 3712)
!6204 = !DIDerivedType(tag: DW_TAG_member, name: "s_last_error_line", scope: !6120, file: !5975, line: 1401, baseType: !6002, size: 32, offset: 3744)
!6205 = !DIDerivedType(tag: DW_TAG_member, name: "s_last_error_block", scope: !6120, file: !5975, line: 1402, baseType: !6184, size: 64, offset: 3776)
!6206 = !DIDerivedType(tag: DW_TAG_member, name: "s_last_error_func", scope: !6120, file: !5975, line: 1403, baseType: !6200, size: 256, offset: 3840)
!6207 = !DIDerivedType(tag: DW_TAG_member, name: "s_mount_opts", scope: !6120, file: !5975, line: 1405, baseType: !6208, size: 512, offset: 4096)
!6208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 512, elements: !588)
!6209 = !DIDerivedType(tag: DW_TAG_member, name: "s_usr_quota_inum", scope: !6120, file: !5975, line: 1406, baseType: !6002, size: 32, offset: 4608)
!6210 = !DIDerivedType(tag: DW_TAG_member, name: "s_grp_quota_inum", scope: !6120, file: !5975, line: 1407, baseType: !6002, size: 32, offset: 4640)
!6211 = !DIDerivedType(tag: DW_TAG_member, name: "s_overhead_clusters", scope: !6120, file: !5975, line: 1408, baseType: !6002, size: 32, offset: 4672)
!6212 = !DIDerivedType(tag: DW_TAG_member, name: "s_backup_bgs", scope: !6120, file: !5975, line: 1409, baseType: !6213, size: 64, offset: 4704)
!6213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6002, size: 64, elements: !2087)
!6214 = !DIDerivedType(tag: DW_TAG_member, name: "s_encrypt_algos", scope: !6120, file: !5975, line: 1410, baseType: !2790, size: 32, offset: 4768)
!6215 = !DIDerivedType(tag: DW_TAG_member, name: "s_encrypt_pw_salt", scope: !6120, file: !5975, line: 1411, baseType: !5075, size: 128, offset: 4800)
!6216 = !DIDerivedType(tag: DW_TAG_member, name: "s_lpf_ino", scope: !6120, file: !5975, line: 1412, baseType: !6002, size: 32, offset: 4928)
!6217 = !DIDerivedType(tag: DW_TAG_member, name: "s_prj_quota_inum", scope: !6120, file: !5975, line: 1413, baseType: !6002, size: 32, offset: 4960)
!6218 = !DIDerivedType(tag: DW_TAG_member, name: "s_checksum_seed", scope: !6120, file: !5975, line: 1414, baseType: !6002, size: 32, offset: 4992)
!6219 = !DIDerivedType(tag: DW_TAG_member, name: "s_wtime_hi", scope: !6120, file: !5975, line: 1415, baseType: !93, size: 8, offset: 5024)
!6220 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtime_hi", scope: !6120, file: !5975, line: 1416, baseType: !93, size: 8, offset: 5032)
!6221 = !DIDerivedType(tag: DW_TAG_member, name: "s_mkfs_time_hi", scope: !6120, file: !5975, line: 1417, baseType: !93, size: 8, offset: 5040)
!6222 = !DIDerivedType(tag: DW_TAG_member, name: "s_lastcheck_hi", scope: !6120, file: !5975, line: 1418, baseType: !93, size: 8, offset: 5048)
!6223 = !DIDerivedType(tag: DW_TAG_member, name: "s_first_error_time_hi", scope: !6120, file: !5975, line: 1419, baseType: !93, size: 8, offset: 5056)
!6224 = !DIDerivedType(tag: DW_TAG_member, name: "s_last_error_time_hi", scope: !6120, file: !5975, line: 1420, baseType: !93, size: 8, offset: 5064)
!6225 = !DIDerivedType(tag: DW_TAG_member, name: "s_first_error_errcode", scope: !6120, file: !5975, line: 1421, baseType: !93, size: 8, offset: 5072)
!6226 = !DIDerivedType(tag: DW_TAG_member, name: "s_last_error_errcode", scope: !6120, file: !5975, line: 1422, baseType: !93, size: 8, offset: 5080)
!6227 = !DIDerivedType(tag: DW_TAG_member, name: "s_encoding", scope: !6120, file: !5975, line: 1423, baseType: !6136, size: 16, offset: 5088)
!6228 = !DIDerivedType(tag: DW_TAG_member, name: "s_encoding_flags", scope: !6120, file: !5975, line: 1424, baseType: !6136, size: 16, offset: 5104)
!6229 = !DIDerivedType(tag: DW_TAG_member, name: "s_orphan_file_inum", scope: !6120, file: !5975, line: 1425, baseType: !6002, size: 32, offset: 5120)
!6230 = !DIDerivedType(tag: DW_TAG_member, name: "s_reserved", scope: !6120, file: !5975, line: 1426, baseType: !6231, size: 3008, offset: 5152)
!6231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6002, size: 3008, elements: !6232)
!6232 = !{!6233}
!6233 = !DISubrange(count: 94)
!6234 = !DIDerivedType(tag: DW_TAG_member, name: "s_checksum", scope: !6120, file: !5975, line: 1427, baseType: !6002, size: 32, offset: 8160)
!6235 = !DIDerivedType(tag: DW_TAG_member, name: "s_group_desc", scope: !6101, file: !5975, line: 1507, baseType: !5755, size: 64, offset: 896)
!6236 = !DIDerivedType(tag: DW_TAG_member, name: "s_mount_opt", scope: !6101, file: !5975, line: 1508, baseType: !13, size: 32, offset: 960)
!6237 = !DIDerivedType(tag: DW_TAG_member, name: "s_mount_opt2", scope: !6101, file: !5975, line: 1509, baseType: !13, size: 32, offset: 992)
!6238 = !DIDerivedType(tag: DW_TAG_member, name: "s_mount_flags", scope: !6101, file: !5975, line: 1510, baseType: !47, size: 64, offset: 1024)
!6239 = !DIDerivedType(tag: DW_TAG_member, name: "s_def_mount_opt", scope: !6101, file: !5975, line: 1511, baseType: !13, size: 32, offset: 1088)
!6240 = !DIDerivedType(tag: DW_TAG_member, name: "s_def_mount_opt2", scope: !6101, file: !5975, line: 1512, baseType: !13, size: 32, offset: 1120)
!6241 = !DIDerivedType(tag: DW_TAG_member, name: "s_sb_block", scope: !6101, file: !5975, line: 1513, baseType: !6018, size: 64, offset: 1152)
!6242 = !DIDerivedType(tag: DW_TAG_member, name: "s_resv_clusters", scope: !6101, file: !5975, line: 1514, baseType: !292, size: 64, offset: 1216)
!6243 = !DIDerivedType(tag: DW_TAG_member, name: "s_resuid", scope: !6101, file: !5975, line: 1515, baseType: !349, size: 32, offset: 1280)
!6244 = !DIDerivedType(tag: DW_TAG_member, name: "s_resgid", scope: !6101, file: !5975, line: 1516, baseType: !358, size: 32, offset: 1312)
!6245 = !DIDerivedType(tag: DW_TAG_member, name: "s_mount_state", scope: !6101, file: !5975, line: 1517, baseType: !34, size: 16, offset: 1344)
!6246 = !DIDerivedType(tag: DW_TAG_member, name: "s_pad", scope: !6101, file: !5975, line: 1518, baseType: !34, size: 16, offset: 1360)
!6247 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr_per_block_bits", scope: !6101, file: !5975, line: 1519, baseType: !30, size: 32, offset: 1376)
!6248 = !DIDerivedType(tag: DW_TAG_member, name: "s_desc_per_block_bits", scope: !6101, file: !5975, line: 1520, baseType: !30, size: 32, offset: 1408)
!6249 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_size", scope: !6101, file: !5975, line: 1521, baseType: !30, size: 32, offset: 1440)
!6250 = !DIDerivedType(tag: DW_TAG_member, name: "s_first_ino", scope: !6101, file: !5975, line: 1522, baseType: !30, size: 32, offset: 1472)
!6251 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_readahead_blks", scope: !6101, file: !5975, line: 1523, baseType: !13, size: 32, offset: 1504)
!6252 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_goal", scope: !6101, file: !5975, line: 1524, baseType: !13, size: 32, offset: 1536)
!6253 = !DIDerivedType(tag: DW_TAG_member, name: "s_hash_seed", scope: !6101, file: !5975, line: 1525, baseType: !6254, size: 128, offset: 1568)
!6254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, size: 128, elements: !733)
!6255 = !DIDerivedType(tag: DW_TAG_member, name: "s_def_hash_version", scope: !6101, file: !5975, line: 1526, baseType: !30, size: 32, offset: 1696)
!6256 = !DIDerivedType(tag: DW_TAG_member, name: "s_hash_unsigned", scope: !6101, file: !5975, line: 1527, baseType: !30, size: 32, offset: 1728)
!6257 = !DIDerivedType(tag: DW_TAG_member, name: "s_freeclusters_counter", scope: !6101, file: !5975, line: 1528, baseType: !920, size: 320, offset: 1792)
!6258 = !DIDerivedType(tag: DW_TAG_member, name: "s_freeinodes_counter", scope: !6101, file: !5975, line: 1529, baseType: !920, size: 320, offset: 2112)
!6259 = !DIDerivedType(tag: DW_TAG_member, name: "s_dirs_counter", scope: !6101, file: !5975, line: 1530, baseType: !920, size: 320, offset: 2432)
!6260 = !DIDerivedType(tag: DW_TAG_member, name: "s_dirtyclusters_counter", scope: !6101, file: !5975, line: 1531, baseType: !920, size: 320, offset: 2752)
!6261 = !DIDerivedType(tag: DW_TAG_member, name: "s_sra_exceeded_retry_limit", scope: !6101, file: !5975, line: 1532, baseType: !920, size: 320, offset: 3072)
!6262 = !DIDerivedType(tag: DW_TAG_member, name: "s_blockgroup_lock", scope: !6101, file: !5975, line: 1533, baseType: !6263, size: 64, offset: 3392)
!6263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6264, size: 64)
!6264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockgroup_lock", file: !6265, line: 23, size: 65536, elements: !6266)
!6265 = !DIFile(filename: "./include/linux/blockgroup_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff9f5c31f6330308389fc4f693a8520f")
!6266 = !{!6267}
!6267 = !DIDerivedType(tag: DW_TAG_member, name: "locks", scope: !6264, file: !6265, line: 24, baseType: !6268, size: 65536, align: 512)
!6268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6269, size: 65536, align: 512, elements: !5838)
!6269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bgl_lock", file: !6265, line: 19, size: 512, align: 512, elements: !6270)
!6270 = !{!6271}
!6271 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !6269, file: !6265, line: 20, baseType: !67, size: 32)
!6272 = !DIDerivedType(tag: DW_TAG_member, name: "s_proc", scope: !6101, file: !5975, line: 1534, baseType: !5784, size: 64, offset: 3456)
!6273 = !DIDerivedType(tag: DW_TAG_member, name: "s_kobj", scope: !6101, file: !5975, line: 1535, baseType: !543, size: 512, offset: 3520)
!6274 = !DIDerivedType(tag: DW_TAG_member, name: "s_kobj_unregister", scope: !6101, file: !5975, line: 1536, baseType: !1033, size: 256, offset: 4032)
!6275 = !DIDerivedType(tag: DW_TAG_member, name: "s_sb", scope: !6101, file: !5975, line: 1537, baseType: !495, size: 64, offset: 4288)
!6276 = !DIDerivedType(tag: DW_TAG_member, name: "s_mmp_bh", scope: !6101, file: !5975, line: 1538, baseType: !307, size: 64, offset: 4352)
!6277 = !DIDerivedType(tag: DW_TAG_member, name: "s_journal", scope: !6101, file: !5975, line: 1541, baseType: !5889, size: 64, offset: 4416)
!6278 = !DIDerivedType(tag: DW_TAG_member, name: "s_ext4_flags", scope: !6101, file: !5975, line: 1542, baseType: !47, size: 64, offset: 4480)
!6279 = !DIDerivedType(tag: DW_TAG_member, name: "s_orphan_lock", scope: !6101, file: !5975, line: 1543, baseType: !286, size: 256, offset: 4544)
!6280 = !DIDerivedType(tag: DW_TAG_member, name: "s_orphan", scope: !6101, file: !5975, line: 1544, baseType: !105, size: 128, offset: 4800)
!6281 = !DIDerivedType(tag: DW_TAG_member, name: "s_orphan_info", scope: !6101, file: !5975, line: 1546, baseType: !6282, size: 128, offset: 4928)
!6282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ext4_orphan_info", file: !5975, line: 1480, size: 128, elements: !6283)
!6283 = !{!6284, !6285, !6286}
!6284 = !DIDerivedType(tag: DW_TAG_member, name: "of_blocks", scope: !6282, file: !5975, line: 1481, baseType: !30, size: 32)
!6285 = !DIDerivedType(tag: DW_TAG_member, name: "of_csum_seed", scope: !6282, file: !5975, line: 1482, baseType: !413, size: 32, offset: 32)
!6286 = !DIDerivedType(tag: DW_TAG_member, name: "of_binfo", scope: !6282, file: !5975, line: 1483, baseType: !6287, size: 64, offset: 64)
!6287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6288, size: 64)
!6288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ext4_orphan_block", file: !5975, line: 1472, size: 128, elements: !6289)
!6289 = !{!6290, !6291}
!6290 = !DIDerivedType(tag: DW_TAG_member, name: "ob_free_entries", scope: !6288, file: !5975, line: 1473, baseType: !57, size: 32)
!6291 = !DIDerivedType(tag: DW_TAG_member, name: "ob_bh", scope: !6288, file: !5975, line: 1474, baseType: !307, size: 64, offset: 64)
!6292 = !DIDerivedType(tag: DW_TAG_member, name: "s_commit_interval", scope: !6101, file: !5975, line: 1547, baseType: !47, size: 64, offset: 5056)
!6293 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_batch_time", scope: !6101, file: !5975, line: 1548, baseType: !412, size: 32, offset: 5120)
!6294 = !DIDerivedType(tag: DW_TAG_member, name: "s_min_batch_time", scope: !6101, file: !5975, line: 1549, baseType: !412, size: 32, offset: 5152)
!6295 = !DIDerivedType(tag: DW_TAG_member, name: "s_journal_bdev", scope: !6101, file: !5975, line: 1550, baseType: !2616, size: 64, offset: 5184)
!6296 = !DIDerivedType(tag: DW_TAG_member, name: "s_qf_names", scope: !6101, file: !5975, line: 1553, baseType: !583, size: 192, offset: 5248)
!6297 = !DIDerivedType(tag: DW_TAG_member, name: "s_jquota_fmt", scope: !6101, file: !5975, line: 1554, baseType: !30, size: 32, offset: 5440)
!6298 = !DIDerivedType(tag: DW_TAG_member, name: "s_want_extra_isize", scope: !6101, file: !5975, line: 1556, baseType: !13, size: 32, offset: 5472)
!6299 = !DIDerivedType(tag: DW_TAG_member, name: "s_system_blks", scope: !6101, file: !5975, line: 1557, baseType: !6004, size: 64, offset: 5504)
!6300 = !DIDerivedType(tag: DW_TAG_member, name: "s_group_info", scope: !6101, file: !5975, line: 1570, baseType: !6301, size: 64, offset: 5568)
!6301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6302, size: 64)
!6302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6303, size: 64)
!6303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6304, size: 64)
!6304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ext4_group_info", file: !5975, line: 3397, size: 1024, elements: !6305)
!6305 = !{!6306, !6307, !6308, !6310, !6311, !6312, !6313, !6314, !6315, !6316, !6317, !6318, !6319}
!6306 = !DIDerivedType(tag: DW_TAG_member, name: "bb_state", scope: !6304, file: !5975, line: 3398, baseType: !47, size: 64)
!6307 = !DIDerivedType(tag: DW_TAG_member, name: "bb_free_root", scope: !6304, file: !5975, line: 3402, baseType: !1075, size: 64, offset: 64)
!6308 = !DIDerivedType(tag: DW_TAG_member, name: "bb_first_free", scope: !6304, file: !5975, line: 3403, baseType: !6309, size: 32, offset: 128)
!6309 = !DIDerivedType(tag: DW_TAG_typedef, name: "ext4_grpblk_t", file: !5975, line: 114, baseType: !30)
!6310 = !DIDerivedType(tag: DW_TAG_member, name: "bb_free", scope: !6304, file: !5975, line: 3404, baseType: !6309, size: 32, offset: 160)
!6311 = !DIDerivedType(tag: DW_TAG_member, name: "bb_fragments", scope: !6304, file: !5975, line: 3405, baseType: !6309, size: 32, offset: 192)
!6312 = !DIDerivedType(tag: DW_TAG_member, name: "bb_avg_fragment_size_order", scope: !6304, file: !5975, line: 3406, baseType: !30, size: 32, offset: 224)
!6313 = !DIDerivedType(tag: DW_TAG_member, name: "bb_largest_free_order", scope: !6304, file: !5975, line: 3408, baseType: !6309, size: 32, offset: 256)
!6314 = !DIDerivedType(tag: DW_TAG_member, name: "bb_group", scope: !6304, file: !5975, line: 3409, baseType: !6098, size: 32, offset: 288)
!6315 = !DIDerivedType(tag: DW_TAG_member, name: "bb_prealloc_list", scope: !6304, file: !5975, line: 3410, baseType: !105, size: 128, offset: 320)
!6316 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_sem", scope: !6304, file: !5975, line: 3414, baseType: !803, size: 320, offset: 448)
!6317 = !DIDerivedType(tag: DW_TAG_member, name: "bb_avg_fragment_size_node", scope: !6304, file: !5975, line: 3415, baseType: !105, size: 128, offset: 768)
!6318 = !DIDerivedType(tag: DW_TAG_member, name: "bb_largest_free_order_node", scope: !6304, file: !5975, line: 3416, baseType: !105, size: 128, offset: 896)
!6319 = !DIDerivedType(tag: DW_TAG_member, name: "bb_counters", scope: !6304, file: !5975, line: 3417, baseType: !6320, offset: 1024)
!6320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6309, elements: !746)
!6321 = !DIDerivedType(tag: DW_TAG_member, name: "s_buddy_cache", scope: !6101, file: !5975, line: 1571, baseType: !343, size: 64, offset: 5632)
!6322 = !DIDerivedType(tag: DW_TAG_member, name: "s_md_lock", scope: !6101, file: !5975, line: 1572, baseType: !67, size: 32, offset: 5696)
!6323 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_offsets", scope: !6101, file: !5975, line: 1573, baseType: !6324, size: 64, offset: 5760)
!6324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!6325 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_maxs", scope: !6101, file: !5975, line: 1574, baseType: !2049, size: 64, offset: 5824)
!6326 = !DIDerivedType(tag: DW_TAG_member, name: "s_group_info_size", scope: !6101, file: !5975, line: 1575, baseType: !13, size: 32, offset: 5888)
!6327 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_free_pending", scope: !6101, file: !5975, line: 1576, baseType: !13, size: 32, offset: 5920)
!6328 = !DIDerivedType(tag: DW_TAG_member, name: "s_freed_data_list", scope: !6101, file: !5975, line: 1577, baseType: !105, size: 128, offset: 5952)
!6329 = !DIDerivedType(tag: DW_TAG_member, name: "s_discard_list", scope: !6101, file: !5975, line: 1579, baseType: !105, size: 128, offset: 6080)
!6330 = !DIDerivedType(tag: DW_TAG_member, name: "s_discard_work", scope: !6101, file: !5975, line: 1580, baseType: !994, size: 256, offset: 6208)
!6331 = !DIDerivedType(tag: DW_TAG_member, name: "s_retry_alloc_pending", scope: !6101, file: !5975, line: 1581, baseType: !57, size: 32, offset: 6464)
!6332 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_avg_fragment_size", scope: !6101, file: !5975, line: 1582, baseType: !108, size: 64, offset: 6528)
!6333 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_avg_fragment_size_locks", scope: !6101, file: !5975, line: 1583, baseType: !6334, size: 64, offset: 6592)
!6334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!6335 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_largest_free_orders", scope: !6101, file: !5975, line: 1584, baseType: !108, size: 64, offset: 6656)
!6336 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_largest_free_orders_locks", scope: !6101, file: !5975, line: 1585, baseType: !6334, size: 64, offset: 6720)
!6337 = !DIDerivedType(tag: DW_TAG_member, name: "s_stripe", scope: !6101, file: !5975, line: 1588, baseType: !47, size: 64, offset: 6784)
!6338 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_max_linear_groups", scope: !6101, file: !5975, line: 1589, baseType: !13, size: 32, offset: 6848)
!6339 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_stream_request", scope: !6101, file: !5975, line: 1590, baseType: !13, size: 32, offset: 6880)
!6340 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_max_to_scan", scope: !6101, file: !5975, line: 1591, baseType: !13, size: 32, offset: 6912)
!6341 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_min_to_scan", scope: !6101, file: !5975, line: 1592, baseType: !13, size: 32, offset: 6944)
!6342 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_stats", scope: !6101, file: !5975, line: 1593, baseType: !13, size: 32, offset: 6976)
!6343 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_order2_reqs", scope: !6101, file: !5975, line: 1594, baseType: !13, size: 32, offset: 7008)
!6344 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_group_prealloc", scope: !6101, file: !5975, line: 1595, baseType: !13, size: 32, offset: 7040)
!6345 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_dir_size_kb", scope: !6101, file: !5975, line: 1596, baseType: !13, size: 32, offset: 7072)
!6346 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_last_group", scope: !6101, file: !5975, line: 1598, baseType: !47, size: 64, offset: 7104)
!6347 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_last_start", scope: !6101, file: !5975, line: 1599, baseType: !47, size: 64, offset: 7168)
!6348 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_prefetch", scope: !6101, file: !5975, line: 1600, baseType: !13, size: 32, offset: 7232)
!6349 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_prefetch_limit", scope: !6101, file: !5975, line: 1601, baseType: !13, size: 32, offset: 7264)
!6350 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_best_avail_max_trim_order", scope: !6101, file: !5975, line: 1602, baseType: !13, size: 32, offset: 7296)
!6351 = !DIDerivedType(tag: DW_TAG_member, name: "s_bal_reqs", scope: !6101, file: !5975, line: 1605, baseType: !57, size: 32, offset: 7328)
!6352 = !DIDerivedType(tag: DW_TAG_member, name: "s_bal_success", scope: !6101, file: !5975, line: 1606, baseType: !57, size: 32, offset: 7360)
!6353 = !DIDerivedType(tag: DW_TAG_member, name: "s_bal_allocated", scope: !6101, file: !5975, line: 1607, baseType: !57, size: 32, offset: 7392)
!6354 = !DIDerivedType(tag: DW_TAG_member, name: "s_bal_ex_scanned", scope: !6101, file: !5975, line: 1608, baseType: !57, size: 32, offset: 7424)
!6355 = !DIDerivedType(tag: DW_TAG_member, name: "s_bal_cX_ex_scanned", scope: !6101, file: !5975, line: 1609, baseType: !6356, size: 160, offset: 7456)
!6356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 160, elements: !963)
!6357 = !DIDerivedType(tag: DW_TAG_member, name: "s_bal_groups_scanned", scope: !6101, file: !5975, line: 1610, baseType: !57, size: 32, offset: 7616)
!6358 = !DIDerivedType(tag: DW_TAG_member, name: "s_bal_goals", scope: !6101, file: !5975, line: 1611, baseType: !57, size: 32, offset: 7648)
!6359 = !DIDerivedType(tag: DW_TAG_member, name: "s_bal_len_goals", scope: !6101, file: !5975, line: 1612, baseType: !57, size: 32, offset: 7680)
!6360 = !DIDerivedType(tag: DW_TAG_member, name: "s_bal_breaks", scope: !6101, file: !5975, line: 1613, baseType: !57, size: 32, offset: 7712)
!6361 = !DIDerivedType(tag: DW_TAG_member, name: "s_bal_2orders", scope: !6101, file: !5975, line: 1614, baseType: !57, size: 32, offset: 7744)
!6362 = !DIDerivedType(tag: DW_TAG_member, name: "s_bal_p2_aligned_bad_suggestions", scope: !6101, file: !5975, line: 1615, baseType: !57, size: 32, offset: 7776)
!6363 = !DIDerivedType(tag: DW_TAG_member, name: "s_bal_goal_fast_bad_suggestions", scope: !6101, file: !5975, line: 1616, baseType: !57, size: 32, offset: 7808)
!6364 = !DIDerivedType(tag: DW_TAG_member, name: "s_bal_best_avail_bad_suggestions", scope: !6101, file: !5975, line: 1617, baseType: !57, size: 32, offset: 7840)
!6365 = !DIDerivedType(tag: DW_TAG_member, name: "s_bal_cX_groups_considered", scope: !6101, file: !5975, line: 1618, baseType: !6366, size: 320, offset: 7872)
!6366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 320, elements: !963)
!6367 = !DIDerivedType(tag: DW_TAG_member, name: "s_bal_cX_hits", scope: !6101, file: !5975, line: 1619, baseType: !6366, size: 320, offset: 8192)
!6368 = !DIDerivedType(tag: DW_TAG_member, name: "s_bal_cX_failed", scope: !6101, file: !5975, line: 1620, baseType: !6366, size: 320, offset: 8512)
!6369 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_buddies_generated", scope: !6101, file: !5975, line: 1621, baseType: !57, size: 32, offset: 8832)
!6370 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_generation_time", scope: !6101, file: !5975, line: 1622, baseType: !292, size: 64, offset: 8896)
!6371 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_lost_chunks", scope: !6101, file: !5975, line: 1623, baseType: !57, size: 32, offset: 8960)
!6372 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_preallocated", scope: !6101, file: !5975, line: 1624, baseType: !57, size: 32, offset: 8992)
!6373 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_discarded", scope: !6101, file: !5975, line: 1625, baseType: !57, size: 32, offset: 9024)
!6374 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_busy", scope: !6101, file: !5975, line: 1626, baseType: !57, size: 32, offset: 9056)
!6375 = !DIDerivedType(tag: DW_TAG_member, name: "s_locality_groups", scope: !6101, file: !5975, line: 1629, baseType: !6376, size: 64, offset: 9088)
!6376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6377, size: 64)
!6377 = !DICompositeType(tag: DW_TAG_structure_type, name: "ext4_locality_group", file: !5975, line: 1629, flags: DIFlagFwdDecl)
!6378 = !DIDerivedType(tag: DW_TAG_member, name: "s_sectors_written_start", scope: !6101, file: !5975, line: 1632, baseType: !47, size: 64, offset: 9152)
!6379 = !DIDerivedType(tag: DW_TAG_member, name: "s_kbytes_written", scope: !6101, file: !5975, line: 1633, baseType: !416, size: 64, offset: 9216)
!6380 = !DIDerivedType(tag: DW_TAG_member, name: "s_extent_max_zeroout_kb", scope: !6101, file: !5975, line: 1636, baseType: !13, size: 32, offset: 9280)
!6381 = !DIDerivedType(tag: DW_TAG_member, name: "s_log_groups_per_flex", scope: !6101, file: !5975, line: 1638, baseType: !13, size: 32, offset: 9312)
!6382 = !DIDerivedType(tag: DW_TAG_member, name: "s_flex_groups", scope: !6101, file: !5975, line: 1639, baseType: !6383, size: 64, offset: 9344)
!6383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6384, size: 64)
!6384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6385, size: 64)
!6385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "flex_groups", file: !5975, line: 428, size: 128, elements: !6386)
!6386 = !{!6387, !6388, !6389}
!6387 = !DIDerivedType(tag: DW_TAG_member, name: "free_clusters", scope: !6385, file: !5975, line: 429, baseType: !292, size: 64)
!6388 = !DIDerivedType(tag: DW_TAG_member, name: "free_inodes", scope: !6385, file: !5975, line: 430, baseType: !57, size: 32, offset: 64)
!6389 = !DIDerivedType(tag: DW_TAG_member, name: "used_dirs", scope: !6385, file: !5975, line: 431, baseType: !57, size: 32, offset: 96)
!6390 = !DIDerivedType(tag: DW_TAG_member, name: "s_flex_groups_allocated", scope: !6101, file: !5975, line: 1640, baseType: !6098, size: 32, offset: 9408)
!6391 = !DIDerivedType(tag: DW_TAG_member, name: "rsv_conversion_wq", scope: !6101, file: !5975, line: 1643, baseType: !2258, size: 64, offset: 9472)
!6392 = !DIDerivedType(tag: DW_TAG_member, name: "s_err_report", scope: !6101, file: !5975, line: 1646, baseType: !2196, size: 320, offset: 9536)
!6393 = !DIDerivedType(tag: DW_TAG_member, name: "s_li_request", scope: !6101, file: !5975, line: 1649, baseType: !6394, size: 64, offset: 9856)
!6394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6395, size: 64)
!6395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ext4_li_request", file: !5975, line: 2589, size: 448, elements: !6396)
!6396 = !{!6397, !6398, !6399, !6400, !6401, !6402, !6403}
!6397 = !DIDerivedType(tag: DW_TAG_member, name: "lr_super", scope: !6395, file: !5975, line: 2590, baseType: !495, size: 64)
!6398 = !DIDerivedType(tag: DW_TAG_member, name: "lr_mode", scope: !6395, file: !5975, line: 2591, baseType: !5974, size: 32, offset: 64)
!6399 = !DIDerivedType(tag: DW_TAG_member, name: "lr_first_not_zeroed", scope: !6395, file: !5975, line: 2592, baseType: !6098, size: 32, offset: 96)
!6400 = !DIDerivedType(tag: DW_TAG_member, name: "lr_next_group", scope: !6395, file: !5975, line: 2593, baseType: !6098, size: 32, offset: 128)
!6401 = !DIDerivedType(tag: DW_TAG_member, name: "lr_request", scope: !6395, file: !5975, line: 2594, baseType: !105, size: 128, offset: 192)
!6402 = !DIDerivedType(tag: DW_TAG_member, name: "lr_next_sched", scope: !6395, file: !5975, line: 2595, baseType: !47, size: 64, offset: 320)
!6403 = !DIDerivedType(tag: DW_TAG_member, name: "lr_timeout", scope: !6395, file: !5975, line: 2596, baseType: !47, size: 64, offset: 384)
!6404 = !DIDerivedType(tag: DW_TAG_member, name: "s_li_wait_mult", scope: !6101, file: !5975, line: 1651, baseType: !13, size: 32, offset: 9920)
!6405 = !DIDerivedType(tag: DW_TAG_member, name: "s_mmp_tsk", scope: !6101, file: !5975, line: 1654, baseType: !3593, size: 64, offset: 9984)
!6406 = !DIDerivedType(tag: DW_TAG_member, name: "s_last_trim_minblks", scope: !6101, file: !5975, line: 1657, baseType: !47, size: 64, offset: 10048)
!6407 = !DIDerivedType(tag: DW_TAG_member, name: "s_chksum_driver", scope: !6101, file: !5975, line: 1660, baseType: !5807, size: 64, offset: 10112)
!6408 = !DIDerivedType(tag: DW_TAG_member, name: "s_csum_seed", scope: !6101, file: !5975, line: 1663, baseType: !413, size: 32, offset: 10176)
!6409 = !DIDerivedType(tag: DW_TAG_member, name: "s_es_shrinker", scope: !6101, file: !5975, line: 1666, baseType: !5081, size: 448, offset: 10240)
!6410 = !DIDerivedType(tag: DW_TAG_member, name: "s_es_list", scope: !6101, file: !5975, line: 1667, baseType: !105, size: 128, offset: 10688)
!6411 = !DIDerivedType(tag: DW_TAG_member, name: "s_es_nr_inode", scope: !6101, file: !5975, line: 1668, baseType: !618, size: 64, offset: 10816)
!6412 = !DIDerivedType(tag: DW_TAG_member, name: "s_es_stats", scope: !6101, file: !5975, line: 1669, baseType: !6413, size: 1472, offset: 10880)
!6413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ext4_es_stats", file: !6414, line: 71, size: 1472, elements: !6415)
!6414 = !DIFile(filename: "fs/ext4/extents_status.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "648897cf7c169849fe8d39a5b97e872e")
!6415 = !{!6416, !6417, !6418, !6419, !6420, !6421, !6422}
!6416 = !DIDerivedType(tag: DW_TAG_member, name: "es_stats_shrunk", scope: !6413, file: !6414, line: 72, baseType: !47, size: 64)
!6417 = !DIDerivedType(tag: DW_TAG_member, name: "es_stats_cache_hits", scope: !6413, file: !6414, line: 73, baseType: !920, size: 320, offset: 64)
!6418 = !DIDerivedType(tag: DW_TAG_member, name: "es_stats_cache_misses", scope: !6413, file: !6414, line: 74, baseType: !920, size: 320, offset: 384)
!6419 = !DIDerivedType(tag: DW_TAG_member, name: "es_stats_scan_time", scope: !6413, file: !6414, line: 75, baseType: !416, size: 64, offset: 704)
!6420 = !DIDerivedType(tag: DW_TAG_member, name: "es_stats_max_scan_time", scope: !6413, file: !6414, line: 76, baseType: !416, size: 64, offset: 768)
!6421 = !DIDerivedType(tag: DW_TAG_member, name: "es_stats_all_cnt", scope: !6413, file: !6414, line: 77, baseType: !920, size: 320, offset: 832)
!6422 = !DIDerivedType(tag: DW_TAG_member, name: "es_stats_shk_cnt", scope: !6413, file: !6414, line: 78, baseType: !920, size: 320, offset: 1152)
!6423 = !DIDerivedType(tag: DW_TAG_member, name: "s_ea_block_cache", scope: !6101, file: !5975, line: 1670, baseType: !6424, size: 64, offset: 12352)
!6424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6425, size: 64)
!6425 = !DICompositeType(tag: DW_TAG_structure_type, name: "mb_cache", file: !5975, line: 1670, flags: DIFlagFwdDecl)
!6426 = !DIDerivedType(tag: DW_TAG_member, name: "s_ea_inode_cache", scope: !6101, file: !5975, line: 1671, baseType: !6424, size: 64, offset: 12416)
!6427 = !DIDerivedType(tag: DW_TAG_member, name: "s_es_lock", scope: !6101, file: !5975, line: 1672, baseType: !67, size: 32, align: 512, offset: 12800)
!6428 = !DIDerivedType(tag: DW_TAG_member, name: "s_journal_triggers", scope: !6101, file: !5975, line: 1675, baseType: !6429, size: 192, offset: 12864)
!6429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6430, size: 192, elements: !3304)
!6430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ext4_journal_trigger", file: !5975, line: 1447, size: 192, elements: !6431)
!6431 = !{!6432, !6433}
!6432 = !DIDerivedType(tag: DW_TAG_member, name: "tr_triggers", scope: !6430, file: !5975, line: 1448, baseType: !5927, size: 128)
!6433 = !DIDerivedType(tag: DW_TAG_member, name: "sb", scope: !6430, file: !5975, line: 1449, baseType: !495, size: 64, offset: 128)
!6434 = !DIDerivedType(tag: DW_TAG_member, name: "s_err_ratelimit_state", scope: !6101, file: !5975, line: 1678, baseType: !934, size: 320, offset: 13056)
!6435 = !DIDerivedType(tag: DW_TAG_member, name: "s_warning_ratelimit_state", scope: !6101, file: !5975, line: 1679, baseType: !934, size: 320, offset: 13376)
!6436 = !DIDerivedType(tag: DW_TAG_member, name: "s_msg_ratelimit_state", scope: !6101, file: !5975, line: 1680, baseType: !934, size: 320, offset: 13696)
!6437 = !DIDerivedType(tag: DW_TAG_member, name: "s_warning_count", scope: !6101, file: !5975, line: 1681, baseType: !57, size: 32, offset: 14016)
!6438 = !DIDerivedType(tag: DW_TAG_member, name: "s_msg_count", scope: !6101, file: !5975, line: 1682, baseType: !57, size: 32, offset: 14048)
!6439 = !DIDerivedType(tag: DW_TAG_member, name: "s_dummy_enc_policy", scope: !6101, file: !5975, line: 1685, baseType: !6440, offset: 14080)
!6440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fscrypt_dummy_policy", file: !6441, line: 508, elements: !1398)
!6441 = !DIFile(filename: "./include/linux/fscrypt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "65ccc03ddf43dd4b78f86896df8d37b6")
!6442 = !DIDerivedType(tag: DW_TAG_member, name: "s_writepages_rwsem", scope: !6101, file: !5975, line: 1692, baseType: !3576, size: 768, offset: 14080)
!6443 = !DIDerivedType(tag: DW_TAG_member, name: "s_daxdev", scope: !6101, file: !5975, line: 1693, baseType: !6444, size: 64, offset: 14848)
!6444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6445, size: 64)
!6445 = !DICompositeType(tag: DW_TAG_structure_type, name: "dax_device", file: !5975, line: 1693, flags: DIFlagFwdDecl)
!6446 = !DIDerivedType(tag: DW_TAG_member, name: "s_dax_part_off", scope: !6101, file: !5975, line: 1694, baseType: !416, size: 64, offset: 14912)
!6447 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_wb_err", scope: !6101, file: !5975, line: 1699, baseType: !1802, size: 32, offset: 14976)
!6448 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_wb_lock", scope: !6101, file: !5975, line: 1700, baseType: !67, size: 32, offset: 15008)
!6449 = !DIDerivedType(tag: DW_TAG_member, name: "s_error_lock", scope: !6101, file: !5975, line: 1703, baseType: !67, size: 32, offset: 15040)
!6450 = !DIDerivedType(tag: DW_TAG_member, name: "s_add_error_count", scope: !6101, file: !5975, line: 1704, baseType: !30, size: 32, offset: 15072)
!6451 = !DIDerivedType(tag: DW_TAG_member, name: "s_first_error_code", scope: !6101, file: !5975, line: 1705, baseType: !30, size: 32, offset: 15104)
!6452 = !DIDerivedType(tag: DW_TAG_member, name: "s_first_error_line", scope: !6101, file: !5975, line: 1706, baseType: !413, size: 32, offset: 15136)
!6453 = !DIDerivedType(tag: DW_TAG_member, name: "s_first_error_ino", scope: !6101, file: !5975, line: 1707, baseType: !413, size: 32, offset: 15168)
!6454 = !DIDerivedType(tag: DW_TAG_member, name: "s_first_error_block", scope: !6101, file: !5975, line: 1708, baseType: !417, size: 64, offset: 15232)
!6455 = !DIDerivedType(tag: DW_TAG_member, name: "s_first_error_func", scope: !6101, file: !5975, line: 1709, baseType: !25, size: 64, offset: 15296)
!6456 = !DIDerivedType(tag: DW_TAG_member, name: "s_first_error_time", scope: !6101, file: !5975, line: 1710, baseType: !819, size: 64, offset: 15360)
!6457 = !DIDerivedType(tag: DW_TAG_member, name: "s_last_error_code", scope: !6101, file: !5975, line: 1711, baseType: !30, size: 32, offset: 15424)
!6458 = !DIDerivedType(tag: DW_TAG_member, name: "s_last_error_line", scope: !6101, file: !5975, line: 1712, baseType: !413, size: 32, offset: 15456)
!6459 = !DIDerivedType(tag: DW_TAG_member, name: "s_last_error_ino", scope: !6101, file: !5975, line: 1713, baseType: !413, size: 32, offset: 15488)
!6460 = !DIDerivedType(tag: DW_TAG_member, name: "s_last_error_block", scope: !6101, file: !5975, line: 1714, baseType: !417, size: 64, offset: 15552)
!6461 = !DIDerivedType(tag: DW_TAG_member, name: "s_last_error_func", scope: !6101, file: !5975, line: 1715, baseType: !25, size: 64, offset: 15616)
!6462 = !DIDerivedType(tag: DW_TAG_member, name: "s_last_error_time", scope: !6101, file: !5975, line: 1716, baseType: !819, size: 64, offset: 15680)
!6463 = !DIDerivedType(tag: DW_TAG_member, name: "s_sb_upd_work", scope: !6101, file: !5975, line: 1724, baseType: !994, size: 256, offset: 15744)
!6464 = !DIDerivedType(tag: DW_TAG_member, name: "s_fc_subtid", scope: !6101, file: !5975, line: 1727, baseType: !57, size: 32, offset: 16000)
!6465 = !DIDerivedType(tag: DW_TAG_member, name: "s_fc_q", scope: !6101, file: !5975, line: 1735, baseType: !6466, size: 256, offset: 16064)
!6466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 256, elements: !2087)
!6467 = !DIDerivedType(tag: DW_TAG_member, name: "s_fc_dentry_q", scope: !6101, file: !5975, line: 1738, baseType: !6466, size: 256, offset: 16320)
!6468 = !DIDerivedType(tag: DW_TAG_member, name: "s_fc_bytes", scope: !6101, file: !5975, line: 1739, baseType: !13, size: 32, offset: 16576)
!6469 = !DIDerivedType(tag: DW_TAG_member, name: "s_fc_lock", scope: !6101, file: !5975, line: 1745, baseType: !67, size: 32, offset: 16608)
!6470 = !DIDerivedType(tag: DW_TAG_member, name: "s_fc_bh", scope: !6101, file: !5975, line: 1746, baseType: !307, size: 64, offset: 16640)
!6471 = !DIDerivedType(tag: DW_TAG_member, name: "s_fc_stats", scope: !6101, file: !5975, line: 1747, baseType: !6472, size: 704, offset: 16704)
!6472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ext4_fc_stats", file: !6473, line: 118, size: 704, elements: !6474)
!6473 = !DIFile(filename: "fs/ext4/fast_commit.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a5cfa5ab26e1ae185395a32f83e37577")
!6474 = !{!6475, !6477, !6478, !6479, !6480, !6481, !6482}
!6475 = !DIDerivedType(tag: DW_TAG_member, name: "fc_ineligible_reason_count", scope: !6472, file: !6473, line: 119, baseType: !6476, size: 320)
!6476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 320, elements: !1089)
!6477 = !DIDerivedType(tag: DW_TAG_member, name: "fc_num_commits", scope: !6472, file: !6473, line: 120, baseType: !47, size: 64, offset: 320)
!6478 = !DIDerivedType(tag: DW_TAG_member, name: "fc_ineligible_commits", scope: !6472, file: !6473, line: 121, baseType: !47, size: 64, offset: 384)
!6479 = !DIDerivedType(tag: DW_TAG_member, name: "fc_failed_commits", scope: !6472, file: !6473, line: 122, baseType: !47, size: 64, offset: 448)
!6480 = !DIDerivedType(tag: DW_TAG_member, name: "fc_skipped_commits", scope: !6472, file: !6473, line: 123, baseType: !47, size: 64, offset: 512)
!6481 = !DIDerivedType(tag: DW_TAG_member, name: "fc_numblks", scope: !6472, file: !6473, line: 124, baseType: !47, size: 64, offset: 576)
!6482 = !DIDerivedType(tag: DW_TAG_member, name: "s_fc_avg_commit_time", scope: !6472, file: !6473, line: 125, baseType: !416, size: 64, offset: 640)
!6483 = !DIDerivedType(tag: DW_TAG_member, name: "s_fc_ineligible_tid", scope: !6101, file: !5975, line: 1748, baseType: !5737, size: 32, offset: 17408)
!6484 = !DIDerivedType(tag: DW_TAG_member, name: "s_fc_replay_state", scope: !6101, file: !5975, line: 1752, baseType: !6485, size: 512, offset: 17472)
!6485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ext4_fc_replay_state", file: !6473, line: 146, size: 512, elements: !6486)
!6486 = !{!6487, !6488, !6489, !6490, !6491, !6492, !6501, !6502, !6503, !6504, !6505, !6506}
!6487 = !DIDerivedType(tag: DW_TAG_member, name: "fc_replay_num_tags", scope: !6485, file: !6473, line: 147, baseType: !30, size: 32)
!6488 = !DIDerivedType(tag: DW_TAG_member, name: "fc_replay_expected_off", scope: !6485, file: !6473, line: 148, baseType: !30, size: 32, offset: 32)
!6489 = !DIDerivedType(tag: DW_TAG_member, name: "fc_current_pass", scope: !6485, file: !6473, line: 149, baseType: !30, size: 32, offset: 64)
!6490 = !DIDerivedType(tag: DW_TAG_member, name: "fc_cur_tag", scope: !6485, file: !6473, line: 150, baseType: !30, size: 32, offset: 96)
!6491 = !DIDerivedType(tag: DW_TAG_member, name: "fc_crc", scope: !6485, file: !6473, line: 151, baseType: !30, size: 32, offset: 128)
!6492 = !DIDerivedType(tag: DW_TAG_member, name: "fc_regions", scope: !6485, file: !6473, line: 152, baseType: !6493, size: 64, offset: 192)
!6493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6494, size: 64)
!6494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ext4_fc_alloc_region", file: !6473, line: 137, size: 192, elements: !6495)
!6495 = !{!6496, !6498, !6499, !6500}
!6496 = !DIDerivedType(tag: DW_TAG_member, name: "lblk", scope: !6494, file: !6473, line: 138, baseType: !6497, size: 32)
!6497 = !DIDerivedType(tag: DW_TAG_typedef, name: "ext4_lblk_t", file: !5975, line: 120, baseType: !413)
!6498 = !DIDerivedType(tag: DW_TAG_member, name: "pblk", scope: !6494, file: !6473, line: 139, baseType: !6018, size: 64, offset: 64)
!6499 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !6494, file: !6473, line: 140, baseType: !30, size: 32, offset: 128)
!6500 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !6494, file: !6473, line: 140, baseType: !30, size: 32, offset: 160)
!6501 = !DIDerivedType(tag: DW_TAG_member, name: "fc_regions_size", scope: !6485, file: !6473, line: 153, baseType: !30, size: 32, offset: 256)
!6502 = !DIDerivedType(tag: DW_TAG_member, name: "fc_regions_used", scope: !6485, file: !6473, line: 153, baseType: !30, size: 32, offset: 288)
!6503 = !DIDerivedType(tag: DW_TAG_member, name: "fc_regions_valid", scope: !6485, file: !6473, line: 153, baseType: !30, size: 32, offset: 320)
!6504 = !DIDerivedType(tag: DW_TAG_member, name: "fc_modified_inodes", scope: !6485, file: !6473, line: 154, baseType: !2097, size: 64, offset: 384)
!6505 = !DIDerivedType(tag: DW_TAG_member, name: "fc_modified_inodes_used", scope: !6485, file: !6473, line: 155, baseType: !30, size: 32, offset: 448)
!6506 = !DIDerivedType(tag: DW_TAG_member, name: "fc_modified_inodes_size", scope: !6485, file: !6473, line: 155, baseType: !30, size: 32, offset: 480)
!6507 = !DILocalVariable(name: "system_blks", scope: !6094, file: !2, line: 215, type: !6004)
!6508 = !DILocalVariable(name: "gdp", scope: !6094, file: !2, line: 216, type: !6509)
!6509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6510, size: 64)
!6510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ext4_group_desc", file: !5975, line: 390, size: 512, elements: !6511)
!6511 = !{!6512, !6513, !6514, !6515, !6516, !6517, !6518, !6519, !6520, !6521, !6522, !6523, !6524, !6525, !6526, !6527, !6528, !6529, !6530, !6531, !6532, !6533, !6534}
!6512 = !DIDerivedType(tag: DW_TAG_member, name: "bg_block_bitmap_lo", scope: !6510, file: !5975, line: 392, baseType: !6002, size: 32)
!6513 = !DIDerivedType(tag: DW_TAG_member, name: "bg_inode_bitmap_lo", scope: !6510, file: !5975, line: 393, baseType: !6002, size: 32, offset: 32)
!6514 = !DIDerivedType(tag: DW_TAG_member, name: "bg_inode_table_lo", scope: !6510, file: !5975, line: 394, baseType: !6002, size: 32, offset: 64)
!6515 = !DIDerivedType(tag: DW_TAG_member, name: "bg_free_blocks_count_lo", scope: !6510, file: !5975, line: 395, baseType: !6136, size: 16, offset: 96)
!6516 = !DIDerivedType(tag: DW_TAG_member, name: "bg_free_inodes_count_lo", scope: !6510, file: !5975, line: 396, baseType: !6136, size: 16, offset: 112)
!6517 = !DIDerivedType(tag: DW_TAG_member, name: "bg_used_dirs_count_lo", scope: !6510, file: !5975, line: 397, baseType: !6136, size: 16, offset: 128)
!6518 = !DIDerivedType(tag: DW_TAG_member, name: "bg_flags", scope: !6510, file: !5975, line: 398, baseType: !6136, size: 16, offset: 144)
!6519 = !DIDerivedType(tag: DW_TAG_member, name: "bg_exclude_bitmap_lo", scope: !6510, file: !5975, line: 399, baseType: !6002, size: 32, offset: 160)
!6520 = !DIDerivedType(tag: DW_TAG_member, name: "bg_block_bitmap_csum_lo", scope: !6510, file: !5975, line: 400, baseType: !6136, size: 16, offset: 192)
!6521 = !DIDerivedType(tag: DW_TAG_member, name: "bg_inode_bitmap_csum_lo", scope: !6510, file: !5975, line: 401, baseType: !6136, size: 16, offset: 208)
!6522 = !DIDerivedType(tag: DW_TAG_member, name: "bg_itable_unused_lo", scope: !6510, file: !5975, line: 402, baseType: !6136, size: 16, offset: 224)
!6523 = !DIDerivedType(tag: DW_TAG_member, name: "bg_checksum", scope: !6510, file: !5975, line: 403, baseType: !6136, size: 16, offset: 240)
!6524 = !DIDerivedType(tag: DW_TAG_member, name: "bg_block_bitmap_hi", scope: !6510, file: !5975, line: 404, baseType: !6002, size: 32, offset: 256)
!6525 = !DIDerivedType(tag: DW_TAG_member, name: "bg_inode_bitmap_hi", scope: !6510, file: !5975, line: 405, baseType: !6002, size: 32, offset: 288)
!6526 = !DIDerivedType(tag: DW_TAG_member, name: "bg_inode_table_hi", scope: !6510, file: !5975, line: 406, baseType: !6002, size: 32, offset: 320)
!6527 = !DIDerivedType(tag: DW_TAG_member, name: "bg_free_blocks_count_hi", scope: !6510, file: !5975, line: 407, baseType: !6136, size: 16, offset: 352)
!6528 = !DIDerivedType(tag: DW_TAG_member, name: "bg_free_inodes_count_hi", scope: !6510, file: !5975, line: 408, baseType: !6136, size: 16, offset: 368)
!6529 = !DIDerivedType(tag: DW_TAG_member, name: "bg_used_dirs_count_hi", scope: !6510, file: !5975, line: 409, baseType: !6136, size: 16, offset: 384)
!6530 = !DIDerivedType(tag: DW_TAG_member, name: "bg_itable_unused_hi", scope: !6510, file: !5975, line: 410, baseType: !6136, size: 16, offset: 400)
!6531 = !DIDerivedType(tag: DW_TAG_member, name: "bg_exclude_bitmap_hi", scope: !6510, file: !5975, line: 411, baseType: !6002, size: 32, offset: 416)
!6532 = !DIDerivedType(tag: DW_TAG_member, name: "bg_block_bitmap_csum_hi", scope: !6510, file: !5975, line: 412, baseType: !6136, size: 16, offset: 448)
!6533 = !DIDerivedType(tag: DW_TAG_member, name: "bg_inode_bitmap_csum_hi", scope: !6510, file: !5975, line: 413, baseType: !6136, size: 16, offset: 464)
!6534 = !DIDerivedType(tag: DW_TAG_member, name: "bg_reserved", scope: !6510, file: !5975, line: 414, baseType: !413, size: 32, offset: 480)
!6535 = !DILocalVariable(name: "i", scope: !6094, file: !2, line: 217, type: !6098)
!6536 = !DILocalVariable(name: "ret", scope: !6094, file: !2, line: 218, type: !30)
!6537 = !DILocalVariable(name: "meta_blks", scope: !6538, file: !2, line: 225, type: !13)
!6538 = distinct !DILexicalBlock(scope: !6539, file: !2, line: 224, column: 30)
!6539 = distinct !DILexicalBlock(scope: !6540, file: !2, line: 224, column: 2)
!6540 = distinct !DILexicalBlock(scope: !6094, file: !2, line: 224, column: 2)
!6541 = !DILocalVariable(name: "_r_a_p__v", scope: !6542, file: !2, line: 262, type: !6003)
!6542 = distinct !DILexicalBlock(scope: !6094, file: !2, line: 262, column: 2)
!6543 = !DILabel(scope: !6094, name: "err", file: !2, line: 267)
!6544 = !DILocation(line: 211, column: 48, scope: !6094)
!6545 = !DILocation(line: 213, column: 2, scope: !6094)
!6546 = !DILocation(line: 213, column: 15, scope: !6094)
!6547 = !DILocation(line: 213, column: 47, scope: !6094)
!6548 = !DILocation(line: 213, column: 25, scope: !6094)
!6549 = !DILocation(line: 214, column: 2, scope: !6094)
!6550 = !DILocation(line: 214, column: 23, scope: !6094)
!6551 = !DILocation(line: 214, column: 37, scope: !6094)
!6552 = !DILocation(line: 214, column: 29, scope: !6094)
!6553 = !DILocation(line: 215, column: 2, scope: !6094)
!6554 = !DILocation(line: 215, column: 29, scope: !6094)
!6555 = !DILocation(line: 216, column: 2, scope: !6094)
!6556 = !DILocation(line: 216, column: 26, scope: !6094)
!6557 = !DILocation(line: 217, column: 2, scope: !6094)
!6558 = !DILocation(line: 217, column: 15, scope: !6094)
!6559 = !DILocation(line: 218, column: 2, scope: !6094)
!6560 = !DILocation(line: 218, column: 6, scope: !6094)
!6561 = !DILocation(line: 220, column: 16, scope: !6094)
!6562 = !DILocation(line: 220, column: 14, scope: !6094)
!6563 = !DILocation(line: 221, column: 7, scope: !6564)
!6564 = distinct !DILexicalBlock(scope: !6094, file: !2, line: 221, column: 6)
!6565 = !DILocation(line: 221, column: 6, scope: !6094)
!6566 = !DILocation(line: 222, column: 3, scope: !6564)
!6567 = !DILocation(line: 224, column: 8, scope: !6540)
!6568 = !DILocation(line: 224, column: 7, scope: !6540)
!6569 = !DILocation(line: 224, column: 12, scope: !6539)
!6570 = !DILocation(line: 224, column: 16, scope: !6539)
!6571 = !DILocation(line: 224, column: 14, scope: !6539)
!6572 = !DILocation(line: 224, column: 2, scope: !6540)
!6573 = !DILocation(line: 225, column: 3, scope: !6538)
!6574 = !DILocation(line: 225, column: 16, scope: !6538)
!6575 = !DILocation(line: 225, column: 54, scope: !6538)
!6576 = !DILocation(line: 225, column: 58, scope: !6538)
!6577 = !DILocation(line: 225, column: 28, scope: !6538)
!6578 = !DILocation(line: 227, column: 3, scope: !6579)
!6579 = distinct !DILexicalBlock(scope: !6538, file: !2, line: 227, column: 3)
!6580 = !DILocation(line: 228, column: 7, scope: !6581)
!6581 = distinct !DILexicalBlock(scope: !6538, file: !2, line: 228, column: 7)
!6582 = !DILocation(line: 228, column: 17, scope: !6581)
!6583 = !DILocation(line: 228, column: 7, scope: !6538)
!6584 = !DILocation(line: 229, column: 26, scope: !6585)
!6585 = distinct !DILexicalBlock(scope: !6581, file: !2, line: 228, column: 23)
!6586 = !DILocation(line: 230, column: 32, scope: !6585)
!6587 = !DILocation(line: 230, column: 36, scope: !6585)
!6588 = !DILocation(line: 230, column: 6, scope: !6585)
!6589 = !DILocation(line: 231, column: 6, scope: !6585)
!6590 = !DILocation(line: 229, column: 10, scope: !6585)
!6591 = !DILocation(line: 229, column: 8, scope: !6585)
!6592 = !DILocation(line: 232, column: 8, scope: !6593)
!6593 = distinct !DILexicalBlock(scope: !6585, file: !2, line: 232, column: 8)
!6594 = !DILocation(line: 232, column: 8, scope: !6585)
!6595 = !DILocation(line: 233, column: 5, scope: !6593)
!6596 = !DILocation(line: 234, column: 3, scope: !6585)
!6597 = !DILocation(line: 235, column: 29, scope: !6538)
!6598 = !DILocation(line: 235, column: 33, scope: !6538)
!6599 = !DILocation(line: 235, column: 9, scope: !6538)
!6600 = !DILocation(line: 235, column: 7, scope: !6538)
!6601 = !DILocation(line: 236, column: 25, scope: !6538)
!6602 = !DILocation(line: 237, column: 23, scope: !6538)
!6603 = !DILocation(line: 237, column: 27, scope: !6538)
!6604 = !DILocation(line: 237, column: 5, scope: !6538)
!6605 = !DILocation(line: 236, column: 9, scope: !6538)
!6606 = !DILocation(line: 236, column: 7, scope: !6538)
!6607 = !DILocation(line: 238, column: 7, scope: !6608)
!6608 = distinct !DILexicalBlock(scope: !6538, file: !2, line: 238, column: 7)
!6609 = !DILocation(line: 238, column: 7, scope: !6538)
!6610 = !DILocation(line: 239, column: 4, scope: !6608)
!6611 = !DILocation(line: 240, column: 25, scope: !6538)
!6612 = !DILocation(line: 241, column: 23, scope: !6538)
!6613 = !DILocation(line: 241, column: 27, scope: !6538)
!6614 = !DILocation(line: 241, column: 5, scope: !6538)
!6615 = !DILocation(line: 240, column: 9, scope: !6538)
!6616 = !DILocation(line: 240, column: 7, scope: !6538)
!6617 = !DILocation(line: 242, column: 7, scope: !6618)
!6618 = distinct !DILexicalBlock(scope: !6538, file: !2, line: 242, column: 7)
!6619 = !DILocation(line: 242, column: 7, scope: !6538)
!6620 = !DILocation(line: 243, column: 4, scope: !6618)
!6621 = !DILocation(line: 244, column: 25, scope: !6538)
!6622 = !DILocation(line: 245, column: 22, scope: !6538)
!6623 = !DILocation(line: 245, column: 26, scope: !6538)
!6624 = !DILocation(line: 245, column: 5, scope: !6538)
!6625 = !DILocation(line: 246, column: 5, scope: !6538)
!6626 = !DILocation(line: 246, column: 10, scope: !6538)
!6627 = !DILocation(line: 244, column: 9, scope: !6538)
!6628 = !DILocation(line: 244, column: 7, scope: !6538)
!6629 = !DILocation(line: 247, column: 7, scope: !6630)
!6630 = distinct !DILexicalBlock(scope: !6538, file: !2, line: 247, column: 7)
!6631 = !DILocation(line: 247, column: 7, scope: !6538)
!6632 = !DILocation(line: 248, column: 4, scope: !6630)
!6633 = !DILocation(line: 249, column: 2, scope: !6539)
!6634 = !DILocation(line: 249, column: 2, scope: !6538)
!6635 = !DILocation(line: 224, column: 26, scope: !6539)
!6636 = !DILocation(line: 224, column: 2, scope: !6539)
!6637 = distinct !{!6637, !6572, !6638, !6639, !6640}
!6638 = !DILocation(line: 249, column: 2, scope: !6540)
!6639 = !{!"llvm.loop.mustprogress"}
!6640 = !{!"llvm.loop.unroll.disable"}
!6641 = !DILocation(line: 250, column: 31, scope: !6642)
!6642 = distinct !DILexicalBlock(scope: !6094, file: !2, line: 250, column: 6)
!6643 = !DILocation(line: 250, column: 6, scope: !6642)
!6644 = !DILocation(line: 250, column: 35, scope: !6642)
!6645 = !DILocation(line: 250, column: 38, scope: !6642)
!6646 = !DILocation(line: 250, column: 43, scope: !6642)
!6647 = !DILocation(line: 250, column: 49, scope: !6642)
!6648 = !DILocation(line: 250, column: 6, scope: !6094)
!6649 = !DILocation(line: 251, column: 37, scope: !6650)
!6650 = distinct !DILexicalBlock(scope: !6642, file: !2, line: 250, column: 65)
!6651 = !DILocation(line: 251, column: 41, scope: !6650)
!6652 = !DILocation(line: 252, column: 5, scope: !6650)
!6653 = !DILocation(line: 251, column: 9, scope: !6650)
!6654 = !DILocation(line: 251, column: 7, scope: !6650)
!6655 = !DILocation(line: 253, column: 7, scope: !6656)
!6656 = distinct !DILexicalBlock(scope: !6650, file: !2, line: 253, column: 7)
!6657 = !DILocation(line: 253, column: 7, scope: !6650)
!6658 = !DILocation(line: 254, column: 4, scope: !6656)
!6659 = !DILocation(line: 255, column: 2, scope: !6650)
!6660 = !DILocation(line: 262, column: 2, scope: !6094)
!6661 = !DILocation(line: 262, column: 2, scope: !6542)
!6662 = !DILocation(line: 262, column: 2, scope: !6663)
!6663 = distinct !DILexicalBlock(scope: !6542, file: !2, line: 262, column: 2)
!6664 = !DILocation(line: 262, column: 2, scope: !6665)
!6665 = distinct !DILexicalBlock(scope: !6663, file: !2, line: 262, column: 2)
!6666 = !DILocation(line: 262, column: 2, scope: !6667)
!6667 = distinct !DILexicalBlock(scope: !6665, file: !2, line: 262, column: 2)
!6668 = !DILocation(line: 262, column: 2, scope: !6669)
!6669 = distinct !DILexicalBlock(scope: !6665, file: !2, line: 262, column: 2)
!6670 = !DILocation(line: 262, column: 2, scope: !6671)
!6671 = distinct !DILexicalBlock(scope: !6663, file: !2, line: 262, column: 2)
!6672 = !DILocation(line: 262, column: 2, scope: !6673)
!6673 = distinct !DILexicalBlock(scope: !6671, file: !2, line: 262, column: 2)
!6674 = !DILocation(line: 262, column: 2, scope: !6675)
!6675 = distinct !DILexicalBlock(scope: !6671, file: !2, line: 262, column: 2)
!6676 = !DILocation(line: 262, column: 2, scope: !6677)
!6677 = distinct !DILexicalBlock(scope: !6675, file: !2, line: 262, column: 2)
!6678 = !{i64 2156565662}
!6679 = !DILocation(line: 262, column: 2, scope: !6680)
!6680 = distinct !DILexicalBlock(scope: !6675, file: !2, line: 262, column: 2)
!6681 = !DILocation(line: 262, column: 2, scope: !6682)
!6682 = distinct !DILexicalBlock(scope: !6680, file: !2, line: 262, column: 2)
!6683 = !DILocation(line: 262, column: 2, scope: !6684)
!6684 = distinct !DILexicalBlock(scope: !6680, file: !2, line: 262, column: 2)
!6685 = !DILocation(line: 264, column: 6, scope: !6686)
!6686 = distinct !DILexicalBlock(scope: !6094, file: !2, line: 264, column: 6)
!6687 = !DILocation(line: 264, column: 6, scope: !6094)
!6688 = !DILocation(line: 265, column: 20, scope: !6686)
!6689 = !DILocation(line: 265, column: 3, scope: !6686)
!6690 = !DILocation(line: 266, column: 2, scope: !6094)
!6691 = !DILocation(line: 267, column: 1, scope: !6094)
!6692 = !DILocation(line: 268, column: 22, scope: !6094)
!6693 = !DILocation(line: 268, column: 2, scope: !6094)
!6694 = !DILocation(line: 269, column: 8, scope: !6094)
!6695 = !DILocation(line: 269, column: 2, scope: !6094)
!6696 = !DILocation(line: 270, column: 9, scope: !6094)
!6697 = !DILocation(line: 270, column: 2, scope: !6094)
!6698 = !DILocation(line: 271, column: 1, scope: !6094)
!6699 = distinct !DISubprogram(name: "ext4_get_groups_count", scope: !5975, file: !5975, line: 3332, type: !6700, scopeLine: 3333, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6702)
!6700 = !DISubroutineType(types: !6701)
!6701 = !{!6098, !495}
!6702 = !{!6703, !6704}
!6703 = !DILocalVariable(name: "sb", arg: 1, scope: !6699, file: !5975, line: 3332, type: !495)
!6704 = !DILocalVariable(name: "ngroups", scope: !6699, file: !5975, line: 3334, type: !6098)
!6705 = !DILocation(line: 3332, column: 70, scope: !6699)
!6706 = !DILocation(line: 3334, column: 2, scope: !6699)
!6707 = !DILocation(line: 3334, column: 15, scope: !6699)
!6708 = !DILocation(line: 3334, column: 33, scope: !6699)
!6709 = !DILocation(line: 3334, column: 25, scope: !6699)
!6710 = !DILocation(line: 3334, column: 38, scope: !6699)
!6711 = !DILocation(line: 3336, column: 2, scope: !6699)
!6712 = !DILocation(line: 3336, column: 2, scope: !6713)
!6713 = distinct !DILexicalBlock(scope: !6699, file: !5975, line: 3336, column: 2)
!6714 = !DILocation(line: 3336, column: 2, scope: !6715)
!6715 = distinct !DILexicalBlock(scope: !6713, file: !5975, line: 3336, column: 2)
!6716 = !DILocation(line: 3336, column: 2, scope: !6717)
!6717 = distinct !DILexicalBlock(scope: !6713, file: !5975, line: 3336, column: 2)
!6718 = !DILocation(line: 3336, column: 2, scope: !6719)
!6719 = distinct !DILexicalBlock(scope: !6717, file: !5975, line: 3336, column: 2)
!6720 = !{i64 2156532110}
!6721 = !DILocation(line: 3337, column: 9, scope: !6699)
!6722 = !DILocation(line: 3338, column: 1, scope: !6699)
!6723 = !DILocation(line: 3337, column: 2, scope: !6699)
!6724 = distinct !DISubprogram(name: "EXT4_SB", scope: !5975, file: !5975, line: 1755, type: !6725, scopeLine: 1756, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6727)
!6725 = !DISubroutineType(types: !6726)
!6726 = !{!6100, !495}
!6727 = !{!6728}
!6728 = !DILocalVariable(name: "sb", arg: 1, scope: !6724, file: !5975, line: 1755, type: !495)
!6729 = !DILocation(line: 1755, column: 64, scope: !6724)
!6730 = !DILocation(line: 1757, column: 9, scope: !6724)
!6731 = !DILocation(line: 1757, column: 13, scope: !6724)
!6732 = !DILocation(line: 1757, column: 2, scope: !6724)
!6733 = distinct !DISubprogram(name: "kzalloc", scope: !5985, file: !5985, line: 719, type: !6734, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6736)
!6734 = !DISubroutineType(types: !6735)
!6735 = !{!28, !43, !1309}
!6736 = !{!6737, !6738}
!6737 = !DILocalVariable(name: "size", arg: 1, scope: !6733, file: !5985, line: 719, type: !43)
!6738 = !DILocalVariable(name: "flags", arg: 2, scope: !6733, file: !5985, line: 719, type: !1309)
!6739 = !DILocation(line: 719, column: 52, scope: !6733)
!6740 = !DILocation(line: 719, column: 64, scope: !6733)
!6741 = !DILocation(line: 721, column: 17, scope: !6733)
!6742 = !DILocation(line: 721, column: 23, scope: !6733)
!6743 = !DILocation(line: 721, column: 29, scope: !6733)
!6744 = !DILocation(line: 721, column: 9, scope: !6733)
!6745 = !DILocation(line: 721, column: 2, scope: !6733)
!6746 = !DISubprogram(name: "ext4_num_base_meta_blocks", scope: !5975, file: !5975, line: 3094, type: !6747, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6747 = !DISubroutineType(types: !6748)
!6748 = !{!13, !495, !6098}
!6749 = distinct !DISubprogram(name: "__might_resched", scope: !6750, file: !6750, line: 184, type: !6751, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6753)
!6750 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!6751 = !DISubroutineType(types: !6752)
!6752 = !{null, !25, !30, !13}
!6753 = !{!6754, !6755, !6756}
!6754 = !DILocalVariable(name: "file", arg: 1, scope: !6749, file: !6750, line: 184, type: !25)
!6755 = !DILocalVariable(name: "line", arg: 2, scope: !6749, file: !6750, line: 184, type: !30)
!6756 = !DILocalVariable(name: "offsets", arg: 3, scope: !6749, file: !6750, line: 185, type: !13)
!6757 = !DILocation(line: 184, column: 50, scope: !6749)
!6758 = !DILocation(line: 184, column: 60, scope: !6749)
!6759 = !DILocation(line: 185, column: 23, scope: !6749)
!6760 = !DILocation(line: 185, column: 34, scope: !6749)
!6761 = !DILocation(line: 2104, column: 9, scope: !6762)
!6762 = distinct !DILexicalBlock(scope: !6037, file: !1715, line: 2104, column: 9)
!6763 = !DILocation(line: 2104, column: 9, scope: !6037)
!6764 = !DILocation(line: 2104, column: 2, scope: !6037)
!6765 = distinct !DISubprogram(name: "add_system_zone", scope: !2, file: !2, line: 69, type: !6766, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6768)
!6766 = !DISubroutineType(types: !6767)
!6767 = !{!30, !6004, !6018, !13, !412}
!6768 = !{!6769, !6770, !6771, !6772, !6773, !6774, !6775, !6777, !6778, !6779, !6780, !6783, !6788}
!6769 = !DILocalVariable(name: "system_blks", arg: 1, scope: !6765, file: !2, line: 69, type: !6004)
!6770 = !DILocalVariable(name: "start_blk", arg: 2, scope: !6765, file: !2, line: 70, type: !6018)
!6771 = !DILocalVariable(name: "count", arg: 3, scope: !6765, file: !2, line: 71, type: !13)
!6772 = !DILocalVariable(name: "ino", arg: 4, scope: !6765, file: !2, line: 71, type: !412)
!6773 = !DILocalVariable(name: "new_entry", scope: !6765, file: !2, line: 73, type: !6013)
!6774 = !DILocalVariable(name: "entry", scope: !6765, file: !2, line: 73, type: !6013)
!6775 = !DILocalVariable(name: "n", scope: !6765, file: !2, line: 74, type: !6776)
!6776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!6777 = !DILocalVariable(name: "node", scope: !6765, file: !2, line: 74, type: !800)
!6778 = !DILocalVariable(name: "parent", scope: !6765, file: !2, line: 75, type: !800)
!6779 = !DILocalVariable(name: "new_node", scope: !6765, file: !2, line: 75, type: !800)
!6780 = !DILocalVariable(name: "__mptr", scope: !6781, file: !2, line: 79, type: !28)
!6781 = distinct !DILexicalBlock(scope: !6782, file: !2, line: 79, column: 11)
!6782 = distinct !DILexicalBlock(scope: !6765, file: !2, line: 77, column: 13)
!6783 = !DILocalVariable(name: "__mptr", scope: !6784, file: !2, line: 103, type: !28)
!6784 = distinct !DILexicalBlock(scope: !6785, file: !2, line: 103, column: 11)
!6785 = distinct !DILexicalBlock(scope: !6786, file: !2, line: 102, column: 12)
!6786 = distinct !DILexicalBlock(scope: !6787, file: !2, line: 102, column: 6)
!6787 = !DILexicalBlockFile(scope: !6765, file: !2, discriminator: 0)
!6788 = !DILocalVariable(name: "__mptr", scope: !6789, file: !2, line: 115, type: !28)
!6789 = distinct !DILexicalBlock(scope: !6790, file: !2, line: 115, column: 11)
!6790 = distinct !DILexicalBlock(scope: !6791, file: !2, line: 114, column: 12)
!6791 = distinct !DILexicalBlock(scope: !6787, file: !2, line: 114, column: 6)
!6792 = !DILocation(line: 69, column: 55, scope: !6765)
!6793 = !DILocation(line: 70, column: 20, scope: !6765)
!6794 = !DILocation(line: 71, column: 20, scope: !6765)
!6795 = !DILocation(line: 71, column: 31, scope: !6765)
!6796 = !DILocation(line: 73, column: 2, scope: !6765)
!6797 = !DILocation(line: 73, column: 27, scope: !6765)
!6798 = !DILocation(line: 73, column: 39, scope: !6765)
!6799 = !DILocation(line: 74, column: 2, scope: !6765)
!6800 = !DILocation(line: 74, column: 19, scope: !6765)
!6801 = !DILocation(line: 74, column: 24, scope: !6765)
!6802 = !DILocation(line: 74, column: 37, scope: !6765)
!6803 = !DILocation(line: 74, column: 42, scope: !6765)
!6804 = !DILocation(line: 74, column: 52, scope: !6765)
!6805 = !DILocation(line: 75, column: 2, scope: !6765)
!6806 = !DILocation(line: 75, column: 18, scope: !6765)
!6807 = !DILocation(line: 75, column: 34, scope: !6765)
!6808 = !DILocation(line: 77, column: 2, scope: !6765)
!6809 = !DILocation(line: 77, column: 10, scope: !6765)
!6810 = !DILocation(line: 77, column: 9, scope: !6765)
!6811 = !DILocation(line: 78, column: 13, scope: !6782)
!6812 = !DILocation(line: 78, column: 12, scope: !6782)
!6813 = !DILocation(line: 78, column: 10, scope: !6782)
!6814 = !DILocation(line: 79, column: 11, scope: !6781)
!6815 = !DILocation(line: 79, column: 11, scope: !6782)
!6816 = !DILocation(line: 79, column: 9, scope: !6782)
!6817 = !DILocation(line: 80, column: 7, scope: !6818)
!6818 = distinct !DILexicalBlock(scope: !6782, file: !2, line: 80, column: 7)
!6819 = !DILocation(line: 80, column: 19, scope: !6818)
!6820 = !DILocation(line: 80, column: 26, scope: !6818)
!6821 = !DILocation(line: 80, column: 17, scope: !6818)
!6822 = !DILocation(line: 80, column: 7, scope: !6782)
!6823 = !DILocation(line: 81, column: 11, scope: !6818)
!6824 = !DILocation(line: 81, column: 10, scope: !6818)
!6825 = !DILocation(line: 81, column: 15, scope: !6818)
!6826 = !DILocation(line: 81, column: 6, scope: !6818)
!6827 = !DILocation(line: 81, column: 4, scope: !6818)
!6828 = !DILocation(line: 82, column: 12, scope: !6829)
!6829 = distinct !DILexicalBlock(scope: !6818, file: !2, line: 82, column: 12)
!6830 = !DILocation(line: 82, column: 26, scope: !6829)
!6831 = !DILocation(line: 82, column: 33, scope: !6829)
!6832 = !DILocation(line: 82, column: 45, scope: !6829)
!6833 = !DILocation(line: 82, column: 52, scope: !6829)
!6834 = !DILocation(line: 82, column: 43, scope: !6829)
!6835 = !DILocation(line: 82, column: 22, scope: !6829)
!6836 = !DILocation(line: 82, column: 12, scope: !6818)
!6837 = !DILocation(line: 83, column: 11, scope: !6829)
!6838 = !DILocation(line: 83, column: 10, scope: !6829)
!6839 = !DILocation(line: 83, column: 15, scope: !6829)
!6840 = !DILocation(line: 83, column: 6, scope: !6829)
!6841 = !DILocation(line: 83, column: 4, scope: !6829)
!6842 = !DILocation(line: 85, column: 4, scope: !6829)
!6843 = distinct !{!6843, !6808, !6844, !6639, !6640}
!6844 = !DILocation(line: 86, column: 2, scope: !6765)
!6845 = !DILocation(line: 88, column: 31, scope: !6765)
!6846 = !DILocation(line: 88, column: 14, scope: !6765)
!6847 = !DILocation(line: 88, column: 12, scope: !6765)
!6848 = !DILocation(line: 90, column: 7, scope: !6849)
!6849 = distinct !DILexicalBlock(scope: !6787, file: !2, line: 90, column: 6)
!6850 = !DILocation(line: 90, column: 6, scope: !6787)
!6851 = !DILocation(line: 91, column: 3, scope: !6849)
!6852 = !DILocation(line: 92, column: 25, scope: !6787)
!6853 = !DILocation(line: 92, column: 2, scope: !6787)
!6854 = !DILocation(line: 92, column: 13, scope: !6787)
!6855 = !DILocation(line: 92, column: 23, scope: !6787)
!6856 = !DILocation(line: 93, column: 21, scope: !6787)
!6857 = !DILocation(line: 93, column: 2, scope: !6787)
!6858 = !DILocation(line: 93, column: 13, scope: !6787)
!6859 = !DILocation(line: 93, column: 19, scope: !6787)
!6860 = !DILocation(line: 94, column: 19, scope: !6787)
!6861 = !DILocation(line: 94, column: 2, scope: !6787)
!6862 = !DILocation(line: 94, column: 13, scope: !6787)
!6863 = !DILocation(line: 94, column: 17, scope: !6787)
!6864 = !DILocation(line: 95, column: 14, scope: !6787)
!6865 = !DILocation(line: 95, column: 25, scope: !6787)
!6866 = !DILocation(line: 95, column: 11, scope: !6787)
!6867 = !DILocation(line: 97, column: 15, scope: !6787)
!6868 = !DILocation(line: 97, column: 25, scope: !6787)
!6869 = !DILocation(line: 97, column: 33, scope: !6787)
!6870 = !DILocation(line: 97, column: 2, scope: !6787)
!6871 = !DILocation(line: 98, column: 18, scope: !6787)
!6872 = !DILocation(line: 98, column: 29, scope: !6787)
!6873 = !DILocation(line: 98, column: 42, scope: !6787)
!6874 = !DILocation(line: 98, column: 2, scope: !6787)
!6875 = !DILocation(line: 101, column: 17, scope: !6787)
!6876 = !DILocation(line: 101, column: 9, scope: !6787)
!6877 = !DILocation(line: 101, column: 7, scope: !6787)
!6878 = !DILocation(line: 102, column: 6, scope: !6786)
!6879 = !DILocation(line: 102, column: 6, scope: !6787)
!6880 = !DILocation(line: 103, column: 11, scope: !6784)
!6881 = !DILocation(line: 103, column: 11, scope: !6785)
!6882 = !DILocation(line: 103, column: 9, scope: !6785)
!6883 = !DILocation(line: 104, column: 17, scope: !6884)
!6884 = distinct !DILexicalBlock(scope: !6785, file: !2, line: 104, column: 7)
!6885 = !DILocation(line: 104, column: 24, scope: !6884)
!6886 = !DILocation(line: 104, column: 7, scope: !6884)
!6887 = !DILocation(line: 104, column: 7, scope: !6785)
!6888 = !DILocation(line: 105, column: 27, scope: !6889)
!6889 = distinct !DILexicalBlock(scope: !6884, file: !2, line: 104, column: 36)
!6890 = !DILocation(line: 105, column: 34, scope: !6889)
!6891 = !DILocation(line: 105, column: 4, scope: !6889)
!6892 = !DILocation(line: 105, column: 15, scope: !6889)
!6893 = !DILocation(line: 105, column: 25, scope: !6889)
!6894 = !DILocation(line: 106, column: 24, scope: !6889)
!6895 = !DILocation(line: 106, column: 31, scope: !6889)
!6896 = !DILocation(line: 106, column: 4, scope: !6889)
!6897 = !DILocation(line: 106, column: 15, scope: !6889)
!6898 = !DILocation(line: 106, column: 21, scope: !6889)
!6899 = !DILocation(line: 107, column: 13, scope: !6889)
!6900 = !DILocation(line: 107, column: 20, scope: !6889)
!6901 = !DILocation(line: 107, column: 33, scope: !6889)
!6902 = !DILocation(line: 107, column: 4, scope: !6889)
!6903 = !DILocation(line: 108, column: 20, scope: !6889)
!6904 = !DILocation(line: 108, column: 45, scope: !6889)
!6905 = !DILocation(line: 108, column: 4, scope: !6889)
!6906 = !DILocation(line: 109, column: 3, scope: !6889)
!6907 = !DILocation(line: 110, column: 2, scope: !6785)
!6908 = !DILocation(line: 113, column: 17, scope: !6787)
!6909 = !DILocation(line: 113, column: 9, scope: !6787)
!6910 = !DILocation(line: 113, column: 7, scope: !6787)
!6911 = !DILocation(line: 114, column: 6, scope: !6791)
!6912 = !DILocation(line: 114, column: 6, scope: !6787)
!6913 = !DILocation(line: 115, column: 11, scope: !6789)
!6914 = !DILocation(line: 115, column: 11, scope: !6790)
!6915 = !DILocation(line: 115, column: 9, scope: !6790)
!6916 = !DILocation(line: 116, column: 17, scope: !6917)
!6917 = distinct !DILexicalBlock(scope: !6790, file: !2, line: 116, column: 7)
!6918 = !DILocation(line: 116, column: 28, scope: !6917)
!6919 = !DILocation(line: 116, column: 7, scope: !6917)
!6920 = !DILocation(line: 116, column: 7, scope: !6790)
!6921 = !DILocation(line: 117, column: 24, scope: !6922)
!6922 = distinct !DILexicalBlock(scope: !6917, file: !2, line: 116, column: 36)
!6923 = !DILocation(line: 117, column: 31, scope: !6922)
!6924 = !DILocation(line: 117, column: 4, scope: !6922)
!6925 = !DILocation(line: 117, column: 15, scope: !6922)
!6926 = !DILocation(line: 117, column: 21, scope: !6922)
!6927 = !DILocation(line: 118, column: 13, scope: !6922)
!6928 = !DILocation(line: 118, column: 20, scope: !6922)
!6929 = !DILocation(line: 118, column: 33, scope: !6922)
!6930 = !DILocation(line: 118, column: 4, scope: !6922)
!6931 = !DILocation(line: 119, column: 20, scope: !6922)
!6932 = !DILocation(line: 119, column: 45, scope: !6922)
!6933 = !DILocation(line: 119, column: 4, scope: !6922)
!6934 = !DILocation(line: 120, column: 3, scope: !6922)
!6935 = !DILocation(line: 121, column: 2, scope: !6790)
!6936 = !DILocation(line: 122, column: 2, scope: !6787)
!6937 = !DILocation(line: 123, column: 1, scope: !6787)
!6938 = distinct !DISubprogram(name: "ext4_group_first_block_no", scope: !5975, file: !5975, line: 2546, type: !6939, scopeLine: 2547, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6941)
!6939 = !DISubroutineType(types: !6940)
!6940 = !{!6018, !495, !6098}
!6941 = !{!6942, !6943}
!6942 = !DILocalVariable(name: "sb", arg: 1, scope: !6938, file: !5975, line: 2546, type: !495)
!6943 = !DILocalVariable(name: "group_no", arg: 2, scope: !6938, file: !5975, line: 2546, type: !6098)
!6944 = !DILocation(line: 2546, column: 47, scope: !6938)
!6945 = !DILocation(line: 2546, column: 64, scope: !6938)
!6946 = !DILocation(line: 2548, column: 9, scope: !6938)
!6947 = !DILocation(line: 2548, column: 34, scope: !6938)
!6948 = !DILocation(line: 2548, column: 18, scope: !6938)
!6949 = !DILocation(line: 2549, column: 3, scope: !6938)
!6950 = !DILocation(line: 2548, column: 60, scope: !6938)
!6951 = !DILocation(line: 2548, column: 2, scope: !6938)
!6952 = !DISubprogram(name: "ext4_get_group_desc", scope: !5975, file: !5975, line: 2712, type: !6953, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6953 = !DISubroutineType(types: !6954)
!6954 = !{!6509, !495, !6098, !5755}
!6955 = !DISubprogram(name: "ext4_block_bitmap", scope: !5975, file: !5975, line: 3219, type: !6956, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6956 = !DISubroutineType(types: !6957)
!6957 = !{!6018, !495, !6509}
!6958 = !DISubprogram(name: "ext4_inode_bitmap", scope: !5975, file: !5975, line: 3221, type: !6956, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6959 = !DISubprogram(name: "ext4_inode_table", scope: !5975, file: !5975, line: 3223, type: !6956, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6960 = distinct !DISubprogram(name: "ext4_has_feature_journal", scope: !5975, file: !5975, line: 2104, type: !6961, scopeLine: 2104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6963)
!6961 = !DISubroutineType(types: !6962)
!6962 = !{!862, !495}
!6963 = !{!6964}
!6964 = !DILocalVariable(name: "sb", arg: 1, scope: !6960, file: !5975, line: 2104, type: !495)
!6965 = !DILocation(line: 2104, column: 1, scope: !6960)
!6966 = distinct !DISubprogram(name: "ext4_protect_reserved_inode", scope: !2, file: !2, line: 147, type: !6967, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6969)
!6967 = !DISubroutineType(types: !6968)
!6968 = !{!30, !495, !6004, !412}
!6969 = !{!6970, !6971, !6972, !6973, !6974, !6975, !6982, !6983, !6984, !6985}
!6970 = !DILocalVariable(name: "sb", arg: 1, scope: !6966, file: !2, line: 147, type: !495)
!6971 = !DILocalVariable(name: "system_blks", arg: 2, scope: !6966, file: !2, line: 148, type: !6004)
!6972 = !DILocalVariable(name: "ino", arg: 3, scope: !6966, file: !2, line: 149, type: !412)
!6973 = !DILocalVariable(name: "inode", scope: !6966, file: !2, line: 151, type: !343)
!6974 = !DILocalVariable(name: "sbi", scope: !6966, file: !2, line: 152, type: !6100)
!6975 = !DILocalVariable(name: "map", scope: !6966, file: !2, line: 153, type: !6976)
!6976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ext4_map_blocks", file: !5975, line: 258, size: 192, elements: !6977)
!6977 = !{!6978, !6979, !6980, !6981}
!6978 = !DIDerivedType(tag: DW_TAG_member, name: "m_pblk", scope: !6976, file: !5975, line: 259, baseType: !6018, size: 64)
!6979 = !DIDerivedType(tag: DW_TAG_member, name: "m_lblk", scope: !6976, file: !5975, line: 260, baseType: !6497, size: 32, offset: 64)
!6980 = !DIDerivedType(tag: DW_TAG_member, name: "m_len", scope: !6976, file: !5975, line: 261, baseType: !13, size: 32, offset: 96)
!6981 = !DIDerivedType(tag: DW_TAG_member, name: "m_flags", scope: !6976, file: !5975, line: 262, baseType: !13, size: 32, offset: 128)
!6982 = !DILocalVariable(name: "i", scope: !6966, file: !2, line: 154, type: !412)
!6983 = !DILocalVariable(name: "num", scope: !6966, file: !2, line: 154, type: !412)
!6984 = !DILocalVariable(name: "err", scope: !6966, file: !2, line: 155, type: !30)
!6985 = !DILocalVariable(name: "n", scope: !6966, file: !2, line: 155, type: !30)
!6986 = !DILocation(line: 147, column: 60, scope: !6966)
!6987 = !DILocation(line: 148, column: 39, scope: !6966)
!6988 = !DILocation(line: 149, column: 16, scope: !6966)
!6989 = !DILocation(line: 151, column: 2, scope: !6966)
!6990 = !DILocation(line: 151, column: 16, scope: !6966)
!6991 = !DILocation(line: 152, column: 2, scope: !6966)
!6992 = !DILocation(line: 152, column: 23, scope: !6966)
!6993 = !DILocation(line: 152, column: 37, scope: !6966)
!6994 = !DILocation(line: 152, column: 29, scope: !6966)
!6995 = !DILocation(line: 153, column: 2, scope: !6966)
!6996 = !DILocation(line: 153, column: 25, scope: !6966)
!6997 = !DILocation(line: 154, column: 2, scope: !6966)
!6998 = !DILocation(line: 154, column: 6, scope: !6966)
!6999 = !DILocation(line: 154, column: 13, scope: !6966)
!7000 = !DILocation(line: 155, column: 2, scope: !6966)
!7001 = !DILocation(line: 155, column: 6, scope: !6966)
!7002 = !DILocation(line: 155, column: 15, scope: !6966)
!7003 = !DILocation(line: 157, column: 7, scope: !7004)
!7004 = distinct !DILexicalBlock(scope: !6966, file: !2, line: 157, column: 6)
!7005 = !DILocation(line: 157, column: 11, scope: !7004)
!7006 = !DILocation(line: 157, column: 28, scope: !7004)
!7007 = !DILocation(line: 158, column: 7, scope: !7004)
!7008 = !DILocation(line: 158, column: 13, scope: !7004)
!7009 = !DILocation(line: 158, column: 11, scope: !7004)
!7010 = !DILocation(line: 157, column: 6, scope: !6966)
!7011 = !DILocation(line: 159, column: 3, scope: !7004)
!7012 = !DILocation(line: 160, column: 10, scope: !6966)
!7013 = !DILocation(line: 160, column: 8, scope: !6966)
!7014 = !DILocation(line: 161, column: 13, scope: !7015)
!7015 = distinct !DILexicalBlock(scope: !6966, file: !2, line: 161, column: 6)
!7016 = !DILocation(line: 161, column: 6, scope: !7015)
!7017 = !DILocation(line: 161, column: 6, scope: !6966)
!7018 = !DILocation(line: 162, column: 18, scope: !7015)
!7019 = !DILocation(line: 162, column: 10, scope: !7015)
!7020 = !DILocation(line: 162, column: 3, scope: !7015)
!7021 = !DILocation(line: 163, column: 9, scope: !6966)
!7022 = !DILocation(line: 163, column: 16, scope: !6966)
!7023 = !DILocation(line: 163, column: 25, scope: !6966)
!7024 = !DILocation(line: 163, column: 29, scope: !6966)
!7025 = !DILocation(line: 163, column: 23, scope: !6966)
!7026 = !DILocation(line: 163, column: 41, scope: !6966)
!7027 = !DILocation(line: 163, column: 49, scope: !6966)
!7028 = !DILocation(line: 163, column: 53, scope: !6966)
!7029 = !DILocation(line: 163, column: 46, scope: !6966)
!7030 = !DILocation(line: 163, column: 8, scope: !6966)
!7031 = !DILocation(line: 163, column: 6, scope: !6966)
!7032 = !DILocation(line: 164, column: 2, scope: !6966)
!7033 = !DILocation(line: 164, column: 9, scope: !6966)
!7034 = !DILocation(line: 164, column: 13, scope: !6966)
!7035 = !DILocation(line: 164, column: 11, scope: !6966)
!7036 = !DILocation(line: 165, column: 3, scope: !7037)
!7037 = distinct !DILexicalBlock(scope: !7038, file: !2, line: 165, column: 3)
!7038 = distinct !DILexicalBlock(scope: !6966, file: !2, line: 164, column: 18)
!7039 = !DILocation(line: 166, column: 16, scope: !7038)
!7040 = !DILocation(line: 166, column: 7, scope: !7038)
!7041 = !DILocation(line: 166, column: 14, scope: !7038)
!7042 = !DILocation(line: 167, column: 15, scope: !7038)
!7043 = !DILocation(line: 167, column: 21, scope: !7038)
!7044 = !DILocation(line: 167, column: 19, scope: !7038)
!7045 = !DILocation(line: 167, column: 7, scope: !7038)
!7046 = !DILocation(line: 167, column: 13, scope: !7038)
!7047 = !DILocation(line: 168, column: 29, scope: !7038)
!7048 = !DILocation(line: 168, column: 7, scope: !7038)
!7049 = !DILocation(line: 168, column: 5, scope: !7038)
!7050 = !DILocation(line: 169, column: 7, scope: !7051)
!7051 = distinct !DILexicalBlock(scope: !7038, file: !2, line: 169, column: 7)
!7052 = !DILocation(line: 169, column: 9, scope: !7051)
!7053 = !DILocation(line: 169, column: 7, scope: !7038)
!7054 = !DILocation(line: 170, column: 10, scope: !7055)
!7055 = distinct !DILexicalBlock(scope: !7051, file: !2, line: 169, column: 14)
!7056 = !DILocation(line: 170, column: 8, scope: !7055)
!7057 = !DILocation(line: 171, column: 4, scope: !7055)
!7058 = !DILocation(line: 173, column: 7, scope: !7059)
!7059 = distinct !DILexicalBlock(scope: !7038, file: !2, line: 173, column: 7)
!7060 = !DILocation(line: 173, column: 9, scope: !7059)
!7061 = !DILocation(line: 173, column: 7, scope: !7038)
!7062 = !DILocation(line: 174, column: 5, scope: !7063)
!7063 = distinct !DILexicalBlock(scope: !7059, file: !2, line: 173, column: 15)
!7064 = !DILocation(line: 175, column: 3, scope: !7063)
!7065 = !DILocation(line: 176, column: 26, scope: !7066)
!7066 = distinct !DILexicalBlock(scope: !7059, file: !2, line: 175, column: 10)
!7067 = !DILocation(line: 176, column: 43, scope: !7066)
!7068 = !DILocation(line: 176, column: 51, scope: !7066)
!7069 = !DILocation(line: 176, column: 54, scope: !7066)
!7070 = !DILocation(line: 176, column: 10, scope: !7066)
!7071 = !DILocation(line: 176, column: 8, scope: !7066)
!7072 = !DILocation(line: 177, column: 8, scope: !7073)
!7073 = distinct !DILexicalBlock(scope: !7066, file: !2, line: 177, column: 8)
!7074 = !DILocation(line: 177, column: 12, scope: !7073)
!7075 = !DILocation(line: 177, column: 8, scope: !7066)
!7076 = !DILocation(line: 178, column: 9, scope: !7077)
!7077 = distinct !DILexicalBlock(scope: !7078, file: !2, line: 178, column: 9)
!7078 = distinct !DILexicalBlock(scope: !7073, file: !2, line: 177, column: 17)
!7079 = !DILocation(line: 178, column: 13, scope: !7077)
!7080 = !DILocation(line: 178, column: 9, scope: !7078)
!7081 = !DILocation(line: 179, column: 6, scope: !7082)
!7082 = distinct !DILexicalBlock(scope: !7077, file: !2, line: 178, column: 31)
!7083 = !DILocation(line: 183, column: 5, scope: !7082)
!7084 = !DILocation(line: 184, column: 5, scope: !7078)
!7085 = !DILocation(line: 186, column: 9, scope: !7066)
!7086 = !DILocation(line: 186, column: 6, scope: !7066)
!7087 = distinct !{!7087, !7032, !7088, !6639, !6640}
!7088 = !DILocation(line: 188, column: 2, scope: !6966)
!7089 = !DILocation(line: 189, column: 7, scope: !6966)
!7090 = !DILocation(line: 189, column: 2, scope: !6966)
!7091 = !DILocation(line: 190, column: 9, scope: !6966)
!7092 = !DILocation(line: 190, column: 2, scope: !6966)
!7093 = !DILocation(line: 191, column: 1, scope: !6966)
!7094 = distinct !DISubprogram(name: "debug_print_tree", scope: !2, file: !2, line: 125, type: !7095, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7097)
!7095 = !DISubroutineType(types: !7096)
!7096 = !{null, !6100}
!7097 = !{!7098, !7099, !7100, !7101, !7102, !7103, !7105}
!7098 = !DILocalVariable(name: "sbi", arg: 1, scope: !7094, file: !2, line: 125, type: !6100)
!7099 = !DILocalVariable(name: "node", scope: !7094, file: !2, line: 127, type: !800)
!7100 = !DILocalVariable(name: "entry", scope: !7094, file: !2, line: 128, type: !6013)
!7101 = !DILocalVariable(name: "system_blks", scope: !7094, file: !2, line: 129, type: !6004)
!7102 = !DILocalVariable(name: "first", scope: !7094, file: !2, line: 130, type: !30)
!7103 = !DILocalVariable(name: "__UNIQUE_ID_rcu383", scope: !7104, file: !2, line: 134, type: !6004)
!7104 = distinct !DILexicalBlock(scope: !7094, file: !2, line: 134, column: 16)
!7105 = !DILocalVariable(name: "__mptr", scope: !7106, file: !2, line: 137, type: !28)
!7106 = distinct !DILexicalBlock(scope: !7107, file: !2, line: 137, column: 11)
!7107 = distinct !DILexicalBlock(scope: !7094, file: !2, line: 136, column: 15)
!7108 = !DILocation(line: 125, column: 51, scope: !7094)
!7109 = !DILocation(line: 127, column: 2, scope: !7094)
!7110 = !DILocation(line: 127, column: 18, scope: !7094)
!7111 = !DILocation(line: 128, column: 2, scope: !7094)
!7112 = !DILocation(line: 128, column: 27, scope: !7094)
!7113 = !DILocation(line: 129, column: 2, scope: !7094)
!7114 = !DILocation(line: 129, column: 29, scope: !7094)
!7115 = !DILocation(line: 130, column: 2, scope: !7094)
!7116 = !DILocation(line: 130, column: 6, scope: !7094)
!7117 = !DILocation(line: 132, column: 2, scope: !7118)
!7118 = distinct !DILexicalBlock(scope: !7094, file: !2, line: 132, column: 2)
!7119 = !DILocation(line: 132, column: 2, scope: !7120)
!7120 = distinct !DILexicalBlock(scope: !7118, file: !2, line: 132, column: 2)
!7121 = !DILocation(line: 133, column: 2, scope: !7094)
!7122 = !DILocation(line: 134, column: 16, scope: !7104)
!7123 = !DILocation(line: 134, column: 16, scope: !7124)
!7124 = distinct !DILexicalBlock(scope: !7104, file: !2, line: 134, column: 16)
!7125 = !DILocation(line: 134, column: 16, scope: !7126)
!7126 = distinct !DILexicalBlock(scope: !7124, file: !2, line: 134, column: 16)
!7127 = !DILocation(line: 134, column: 16, scope: !7128)
!7128 = distinct !DILexicalBlock(scope: !7104, file: !2, line: 134, column: 16)
!7129 = !DILocation(line: 134, column: 16, scope: !7094)
!7130 = !DILocation(line: 134, column: 14, scope: !7094)
!7131 = !DILocation(line: 135, column: 19, scope: !7094)
!7132 = !DILocation(line: 135, column: 32, scope: !7094)
!7133 = !DILocation(line: 135, column: 9, scope: !7094)
!7134 = !DILocation(line: 135, column: 7, scope: !7094)
!7135 = !DILocation(line: 136, column: 2, scope: !7094)
!7136 = !DILocation(line: 136, column: 9, scope: !7094)
!7137 = !DILocation(line: 137, column: 11, scope: !7106)
!7138 = !DILocation(line: 137, column: 11, scope: !7107)
!7139 = !DILocation(line: 137, column: 9, scope: !7107)
!7140 = !DILocation(line: 138, column: 3, scope: !7141)
!7141 = distinct !DILexicalBlock(scope: !7107, file: !2, line: 138, column: 3)
!7142 = !DILocation(line: 138, column: 3, scope: !7143)
!7143 = distinct !DILexicalBlock(scope: !7141, file: !2, line: 138, column: 3)
!7144 = !DILocation(line: 140, column: 9, scope: !7107)
!7145 = !DILocation(line: 141, column: 18, scope: !7107)
!7146 = !DILocation(line: 141, column: 10, scope: !7107)
!7147 = !DILocation(line: 141, column: 8, scope: !7107)
!7148 = distinct !{!7148, !7135, !7149, !6639, !6640}
!7149 = !DILocation(line: 142, column: 2, scope: !7094)
!7150 = !DILocation(line: 143, column: 2, scope: !7094)
!7151 = !DILocation(line: 144, column: 2, scope: !7152)
!7152 = distinct !DILexicalBlock(scope: !7094, file: !2, line: 144, column: 2)
!7153 = !DILocation(line: 144, column: 2, scope: !7154)
!7154 = distinct !DILexicalBlock(scope: !7152, file: !2, line: 144, column: 2)
!7155 = !DILocation(line: 145, column: 1, scope: !7094)
!7156 = distinct !DISubprogram(name: "release_system_zone", scope: !2, file: !2, line: 55, type: !7157, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7159)
!7157 = !DISubroutineType(types: !7158)
!7158 = !{null, !6004}
!7159 = !{!7160, !7161, !7162, !7163, !7166, !7168, !7172}
!7160 = !DILocalVariable(name: "system_blks", arg: 1, scope: !7156, file: !2, line: 55, type: !6004)
!7161 = !DILocalVariable(name: "entry", scope: !7156, file: !2, line: 57, type: !6013)
!7162 = !DILocalVariable(name: "n", scope: !7156, file: !2, line: 57, type: !6013)
!7163 = !DILocalVariable(name: "____ptr", scope: !7164, file: !2, line: 59, type: !800)
!7164 = distinct !DILexicalBlock(scope: !7165, file: !2, line: 59, column: 2)
!7165 = distinct !DILexicalBlock(scope: !7156, file: !2, line: 59, column: 2)
!7166 = !DILocalVariable(name: "__mptr", scope: !7167, file: !2, line: 59, type: !28)
!7167 = distinct !DILexicalBlock(scope: !7164, file: !2, line: 59, column: 2)
!7168 = !DILocalVariable(name: "____ptr", scope: !7169, file: !2, line: 59, type: !800)
!7169 = distinct !DILexicalBlock(scope: !7170, file: !2, line: 59, column: 2)
!7170 = distinct !DILexicalBlock(scope: !7171, file: !2, line: 59, column: 2)
!7171 = distinct !DILexicalBlock(scope: !7165, file: !2, line: 59, column: 2)
!7172 = !DILocalVariable(name: "__mptr", scope: !7173, file: !2, line: 59, type: !28)
!7173 = distinct !DILexicalBlock(scope: !7169, file: !2, line: 59, column: 2)
!7174 = !DILocation(line: 55, column: 60, scope: !7156)
!7175 = !DILocation(line: 57, column: 2, scope: !7156)
!7176 = !DILocation(line: 57, column: 27, scope: !7156)
!7177 = !DILocation(line: 57, column: 35, scope: !7156)
!7178 = !DILocation(line: 59, column: 2, scope: !7164)
!7179 = !DILocation(line: 59, column: 2, scope: !7167)
!7180 = !DILocation(line: 59, column: 2, scope: !7165)
!7181 = !DILocation(line: 59, column: 2, scope: !7171)
!7182 = !DILocation(line: 59, column: 2, scope: !7169)
!7183 = !DILocation(line: 59, column: 2, scope: !7173)
!7184 = !DILocation(line: 59, column: 2, scope: !7170)
!7185 = !DILocation(line: 0, scope: !7171)
!7186 = !DILocation(line: 61, column: 19, scope: !7171)
!7187 = !DILocation(line: 61, column: 44, scope: !7171)
!7188 = !DILocation(line: 61, column: 3, scope: !7171)
!7189 = distinct !{!7189, !7180, !7190, !6639, !6640}
!7190 = !DILocation(line: 61, column: 49, scope: !7165)
!7191 = !DILocation(line: 62, column: 1, scope: !7156)
!7192 = !DISubprogram(name: "kfree", scope: !5985, file: !5985, line: 227, type: !7193, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7193 = !DISubroutineType(types: !7194)
!7194 = !{null, !1493}
!7195 = distinct !DISubprogram(name: "ext4_release_system_zone", scope: !2, file: !2, line: 283, type: !527, scopeLine: 284, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7196)
!7196 = !{!7197, !7198, !7199}
!7197 = !DILocalVariable(name: "sb", arg: 1, scope: !7195, file: !2, line: 283, type: !495)
!7198 = !DILocalVariable(name: "system_blks", scope: !7195, file: !2, line: 285, type: !6004)
!7199 = !DILocalVariable(name: "_r_a_p__v", scope: !7200, file: !2, line: 289, type: !6003)
!7200 = distinct !DILexicalBlock(scope: !7195, file: !2, line: 289, column: 2)
!7201 = !DILocation(line: 283, column: 51, scope: !7195)
!7202 = !DILocation(line: 285, column: 2, scope: !7195)
!7203 = !DILocation(line: 285, column: 29, scope: !7195)
!7204 = !DILocation(line: 287, column: 16, scope: !7205)
!7205 = distinct !DILexicalBlock(scope: !7195, file: !2, line: 287, column: 16)
!7206 = !DILocation(line: 287, column: 16, scope: !7207)
!7207 = distinct !DILexicalBlock(scope: !7205, file: !2, line: 287, column: 16)
!7208 = !DILocation(line: 287, column: 14, scope: !7195)
!7209 = !DILocation(line: 289, column: 2, scope: !7195)
!7210 = !DILocation(line: 289, column: 2, scope: !7200)
!7211 = !DILocation(line: 289, column: 2, scope: !7212)
!7212 = distinct !DILexicalBlock(scope: !7200, file: !2, line: 289, column: 2)
!7213 = !DILocation(line: 289, column: 2, scope: !7214)
!7214 = distinct !DILexicalBlock(scope: !7212, file: !2, line: 289, column: 2)
!7215 = !DILocation(line: 289, column: 2, scope: !7216)
!7216 = distinct !DILexicalBlock(scope: !7214, file: !2, line: 289, column: 2)
!7217 = !DILocation(line: 289, column: 2, scope: !7218)
!7218 = distinct !DILexicalBlock(scope: !7214, file: !2, line: 289, column: 2)
!7219 = !DILocation(line: 289, column: 2, scope: !7220)
!7220 = distinct !DILexicalBlock(scope: !7212, file: !2, line: 289, column: 2)
!7221 = !DILocation(line: 289, column: 2, scope: !7222)
!7222 = distinct !DILexicalBlock(scope: !7220, file: !2, line: 289, column: 2)
!7223 = !DILocation(line: 289, column: 2, scope: !7224)
!7224 = distinct !DILexicalBlock(scope: !7220, file: !2, line: 289, column: 2)
!7225 = !DILocation(line: 289, column: 2, scope: !7226)
!7226 = distinct !DILexicalBlock(scope: !7224, file: !2, line: 289, column: 2)
!7227 = !{i64 2156574691}
!7228 = !DILocation(line: 289, column: 2, scope: !7229)
!7229 = distinct !DILexicalBlock(scope: !7224, file: !2, line: 289, column: 2)
!7230 = !DILocation(line: 289, column: 2, scope: !7231)
!7231 = distinct !DILexicalBlock(scope: !7229, file: !2, line: 289, column: 2)
!7232 = !DILocation(line: 289, column: 2, scope: !7233)
!7233 = distinct !DILexicalBlock(scope: !7229, file: !2, line: 289, column: 2)
!7234 = !DILocation(line: 291, column: 6, scope: !7235)
!7235 = distinct !DILexicalBlock(scope: !7195, file: !2, line: 291, column: 6)
!7236 = !DILocation(line: 291, column: 6, scope: !7195)
!7237 = !DILocation(line: 292, column: 13, scope: !7235)
!7238 = !DILocation(line: 292, column: 26, scope: !7235)
!7239 = !DILocation(line: 292, column: 3, scope: !7235)
!7240 = !DILocation(line: 293, column: 1, scope: !7195)
!7241 = !DISubprogram(name: "call_rcu", scope: !7242, file: !7242, line: 42, type: !7243, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7242 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!7243 = !DISubroutineType(types: !7244)
!7244 = !{null, !673, !7245}
!7245 = !DIDerivedType(tag: DW_TAG_typedef, name: "rcu_callback_t", file: !33, line: 238, baseType: !675)
!7246 = distinct !DISubprogram(name: "ext4_destroy_system_zone", scope: !2, file: !2, line: 193, type: !676, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7247)
!7247 = !{!7248, !7249, !7250}
!7248 = !DILocalVariable(name: "rcu", arg: 1, scope: !7246, file: !2, line: 193, type: !673)
!7249 = !DILocalVariable(name: "system_blks", scope: !7246, file: !2, line: 195, type: !6004)
!7250 = !DILocalVariable(name: "__mptr", scope: !7251, file: !2, line: 197, type: !28)
!7251 = distinct !DILexicalBlock(scope: !7246, file: !2, line: 197, column: 16)
!7252 = !DILocation(line: 193, column: 55, scope: !7246)
!7253 = !DILocation(line: 195, column: 2, scope: !7246)
!7254 = !DILocation(line: 195, column: 29, scope: !7246)
!7255 = !DILocation(line: 197, column: 16, scope: !7251)
!7256 = !DILocation(line: 197, column: 16, scope: !7246)
!7257 = !DILocation(line: 197, column: 14, scope: !7246)
!7258 = !DILocation(line: 198, column: 22, scope: !7246)
!7259 = !DILocation(line: 198, column: 2, scope: !7246)
!7260 = !DILocation(line: 199, column: 8, scope: !7246)
!7261 = !DILocation(line: 199, column: 2, scope: !7246)
!7262 = !DILocation(line: 200, column: 1, scope: !7246)
!7263 = distinct !DISubprogram(name: "ext4_sb_block_valid", scope: !2, file: !2, line: 295, type: !7264, scopeLine: 297, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7266)
!7264 = !DISubroutineType(types: !7265)
!7265 = !{!30, !495, !343, !6018, !13}
!7266 = !{!7267, !7268, !7269, !7270, !7271, !7272, !7273, !7274, !7275, !7276, !7278, !7281}
!7267 = !DILocalVariable(name: "sb", arg: 1, scope: !7263, file: !2, line: 295, type: !495)
!7268 = !DILocalVariable(name: "inode", arg: 2, scope: !7263, file: !2, line: 295, type: !343)
!7269 = !DILocalVariable(name: "start_blk", arg: 3, scope: !7263, file: !2, line: 296, type: !6018)
!7270 = !DILocalVariable(name: "count", arg: 4, scope: !7263, file: !2, line: 296, type: !13)
!7271 = !DILocalVariable(name: "sbi", scope: !7263, file: !2, line: 298, type: !6100)
!7272 = !DILocalVariable(name: "system_blks", scope: !7263, file: !2, line: 299, type: !6004)
!7273 = !DILocalVariable(name: "entry", scope: !7263, file: !2, line: 300, type: !6013)
!7274 = !DILocalVariable(name: "n", scope: !7263, file: !2, line: 301, type: !800)
!7275 = !DILocalVariable(name: "ret", scope: !7263, file: !2, line: 302, type: !30)
!7276 = !DILocalVariable(name: "__UNIQUE_ID_rcu391", scope: !7277, file: !2, line: 315, type: !6004)
!7277 = distinct !DILexicalBlock(scope: !7263, file: !2, line: 315, column: 16)
!7278 = !DILocalVariable(name: "__mptr", scope: !7279, file: !2, line: 321, type: !28)
!7279 = distinct !DILexicalBlock(scope: !7280, file: !2, line: 321, column: 11)
!7280 = distinct !DILexicalBlock(scope: !7263, file: !2, line: 320, column: 12)
!7281 = !DILabel(scope: !7263, name: "out_rcu", file: !2, line: 333)
!7282 = !DILocation(line: 295, column: 45, scope: !7263)
!7283 = !DILocation(line: 295, column: 63, scope: !7263)
!7284 = !DILocation(line: 296, column: 18, scope: !7263)
!7285 = !DILocation(line: 296, column: 42, scope: !7263)
!7286 = !DILocation(line: 298, column: 2, scope: !7263)
!7287 = !DILocation(line: 298, column: 23, scope: !7263)
!7288 = !DILocation(line: 298, column: 37, scope: !7263)
!7289 = !DILocation(line: 298, column: 29, scope: !7263)
!7290 = !DILocation(line: 299, column: 2, scope: !7263)
!7291 = !DILocation(line: 299, column: 29, scope: !7263)
!7292 = !DILocation(line: 300, column: 2, scope: !7263)
!7293 = !DILocation(line: 300, column: 27, scope: !7263)
!7294 = !DILocation(line: 301, column: 2, scope: !7263)
!7295 = !DILocation(line: 301, column: 18, scope: !7263)
!7296 = !DILocation(line: 302, column: 2, scope: !7263)
!7297 = !DILocation(line: 302, column: 6, scope: !7263)
!7298 = !DILocation(line: 304, column: 7, scope: !7299)
!7299 = distinct !DILexicalBlock(scope: !7263, file: !2, line: 304, column: 6)
!7300 = !DILocation(line: 304, column: 20, scope: !7299)
!7301 = !DILocation(line: 304, column: 17, scope: !7299)
!7302 = !DILocation(line: 304, column: 64, scope: !7299)
!7303 = !DILocation(line: 305, column: 7, scope: !7299)
!7304 = !DILocation(line: 305, column: 19, scope: !7299)
!7305 = !DILocation(line: 305, column: 17, scope: !7299)
!7306 = !DILocation(line: 305, column: 27, scope: !7299)
!7307 = !DILocation(line: 305, column: 25, scope: !7299)
!7308 = !DILocation(line: 305, column: 38, scope: !7299)
!7309 = !DILocation(line: 306, column: 7, scope: !7299)
!7310 = !DILocation(line: 306, column: 19, scope: !7299)
!7311 = !DILocation(line: 306, column: 17, scope: !7299)
!7312 = !DILocation(line: 306, column: 45, scope: !7299)
!7313 = !DILocation(line: 306, column: 50, scope: !7299)
!7314 = !DILocation(line: 306, column: 27, scope: !7299)
!7315 = !DILocation(line: 306, column: 25, scope: !7299)
!7316 = !DILocation(line: 304, column: 6, scope: !7263)
!7317 = !DILocation(line: 307, column: 3, scope: !7299)
!7318 = !DILocation(line: 314, column: 2, scope: !7263)
!7319 = !DILocation(line: 315, column: 16, scope: !7277)
!7320 = !DILocation(line: 315, column: 16, scope: !7321)
!7321 = distinct !DILexicalBlock(scope: !7277, file: !2, line: 315, column: 16)
!7322 = !DILocation(line: 315, column: 16, scope: !7323)
!7323 = distinct !DILexicalBlock(scope: !7321, file: !2, line: 315, column: 16)
!7324 = !DILocation(line: 315, column: 16, scope: !7325)
!7325 = distinct !DILexicalBlock(scope: !7277, file: !2, line: 315, column: 16)
!7326 = !DILocation(line: 315, column: 16, scope: !7263)
!7327 = !DILocation(line: 315, column: 14, scope: !7263)
!7328 = !DILocation(line: 316, column: 6, scope: !7329)
!7329 = distinct !DILexicalBlock(scope: !7263, file: !2, line: 316, column: 6)
!7330 = !DILocation(line: 316, column: 18, scope: !7329)
!7331 = !DILocation(line: 316, column: 6, scope: !7263)
!7332 = !DILocation(line: 317, column: 3, scope: !7329)
!7333 = !DILocation(line: 319, column: 6, scope: !7263)
!7334 = !DILocation(line: 319, column: 19, scope: !7263)
!7335 = !DILocation(line: 319, column: 24, scope: !7263)
!7336 = !DILocation(line: 319, column: 4, scope: !7263)
!7337 = !DILocation(line: 320, column: 2, scope: !7263)
!7338 = !DILocation(line: 320, column: 9, scope: !7263)
!7339 = !DILocation(line: 321, column: 11, scope: !7279)
!7340 = !DILocation(line: 321, column: 11, scope: !7280)
!7341 = !DILocation(line: 321, column: 9, scope: !7280)
!7342 = !DILocation(line: 322, column: 7, scope: !7343)
!7343 = distinct !DILexicalBlock(scope: !7280, file: !2, line: 322, column: 7)
!7344 = !DILocation(line: 322, column: 19, scope: !7343)
!7345 = !DILocation(line: 322, column: 17, scope: !7343)
!7346 = !DILocation(line: 322, column: 25, scope: !7343)
!7347 = !DILocation(line: 322, column: 31, scope: !7343)
!7348 = !DILocation(line: 322, column: 38, scope: !7343)
!7349 = !DILocation(line: 322, column: 29, scope: !7343)
!7350 = !DILocation(line: 322, column: 7, scope: !7280)
!7351 = !DILocation(line: 323, column: 8, scope: !7343)
!7352 = !DILocation(line: 323, column: 11, scope: !7343)
!7353 = !DILocation(line: 323, column: 6, scope: !7343)
!7354 = !DILocation(line: 323, column: 4, scope: !7343)
!7355 = !DILocation(line: 324, column: 12, scope: !7356)
!7356 = distinct !DILexicalBlock(scope: !7343, file: !2, line: 324, column: 12)
!7357 = !DILocation(line: 324, column: 26, scope: !7356)
!7358 = !DILocation(line: 324, column: 33, scope: !7356)
!7359 = !DILocation(line: 324, column: 45, scope: !7356)
!7360 = !DILocation(line: 324, column: 52, scope: !7356)
!7361 = !DILocation(line: 324, column: 43, scope: !7356)
!7362 = !DILocation(line: 324, column: 22, scope: !7356)
!7363 = !DILocation(line: 324, column: 12, scope: !7343)
!7364 = !DILocation(line: 325, column: 8, scope: !7356)
!7365 = !DILocation(line: 325, column: 11, scope: !7356)
!7366 = !DILocation(line: 325, column: 6, scope: !7356)
!7367 = !DILocation(line: 325, column: 4, scope: !7356)
!7368 = !DILocation(line: 327, column: 8, scope: !7369)
!7369 = distinct !DILexicalBlock(scope: !7356, file: !2, line: 326, column: 8)
!7370 = !DILocation(line: 328, column: 8, scope: !7371)
!7371 = distinct !DILexicalBlock(scope: !7369, file: !2, line: 328, column: 8)
!7372 = !DILocation(line: 328, column: 8, scope: !7369)
!7373 = !DILocation(line: 329, column: 12, scope: !7371)
!7374 = !DILocation(line: 329, column: 19, scope: !7371)
!7375 = !DILocation(line: 329, column: 26, scope: !7371)
!7376 = !DILocation(line: 329, column: 33, scope: !7371)
!7377 = !DILocation(line: 329, column: 23, scope: !7371)
!7378 = !DILocation(line: 329, column: 9, scope: !7371)
!7379 = !DILocation(line: 329, column: 5, scope: !7371)
!7380 = !DILocation(line: 330, column: 4, scope: !7369)
!7381 = distinct !{!7381, !7337, !7382, !6639, !6640}
!7382 = !DILocation(line: 332, column: 2, scope: !7263)
!7383 = !DILocation(line: 333, column: 1, scope: !7263)
!7384 = !DILocation(line: 334, column: 2, scope: !7263)
!7385 = !DILocation(line: 335, column: 9, scope: !7263)
!7386 = !DILocation(line: 335, column: 2, scope: !7263)
!7387 = !DILocation(line: 336, column: 1, scope: !7263)
!7388 = distinct !DISubprogram(name: "ext4_blocks_count", scope: !5975, file: !5975, line: 3274, type: !7389, scopeLine: 3275, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7391)
!7389 = !DISubroutineType(types: !7390)
!7390 = !{!6018, !6119}
!7391 = !{!7392}
!7392 = !DILocalVariable(name: "es", arg: 1, scope: !7388, file: !5975, line: 3274, type: !6119)
!7393 = !DILocation(line: 3274, column: 71, scope: !7388)
!7394 = !DILocation(line: 3276, column: 9, scope: !7388)
!7395 = !DILocation(line: 3276, column: 2, scope: !7388)
!7396 = distinct !DISubprogram(name: "rcu_read_lock", scope: !7242, file: !7242, line: 782, type: !2301, scopeLine: 783, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!7397 = !DILocation(line: 784, column: 2, scope: !7396)
!7398 = !DILocation(line: 786, column: 2, scope: !7396)
!7399 = !DILocation(line: 786, column: 2, scope: !7400)
!7400 = distinct !DILexicalBlock(scope: !7396, file: !7242, line: 786, column: 2)
!7401 = !DILocation(line: 787, column: 2, scope: !7396)
!7402 = !DILocation(line: 787, column: 2, scope: !7403)
!7403 = distinct !DILexicalBlock(scope: !7396, file: !7242, line: 787, column: 2)
!7404 = !DILocation(line: 789, column: 1, scope: !7396)
!7405 = distinct !DISubprogram(name: "rcu_read_unlock", scope: !7242, file: !7242, line: 813, type: !2301, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!7406 = !DILocation(line: 815, column: 2, scope: !7405)
!7407 = !DILocation(line: 815, column: 2, scope: !7408)
!7408 = distinct !DILexicalBlock(scope: !7405, file: !7242, line: 815, column: 2)
!7409 = !DILocation(line: 818, column: 2, scope: !7405)
!7410 = !DILocation(line: 819, column: 2, scope: !7405)
!7411 = !DILocation(line: 819, column: 2, scope: !7412)
!7412 = distinct !DILexicalBlock(scope: !7405, file: !7242, line: 819, column: 2)
!7413 = !DILocation(line: 820, column: 1, scope: !7405)
!7414 = distinct !DISubprogram(name: "ext4_inode_block_valid", scope: !2, file: !2, line: 343, type: !7415, scopeLine: 345, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7417)
!7415 = !DISubroutineType(types: !7416)
!7416 = !{!30, !343, !6018, !13}
!7417 = !{!7418, !7419, !7420}
!7418 = !DILocalVariable(name: "inode", arg: 1, scope: !7414, file: !2, line: 343, type: !343)
!7419 = !DILocalVariable(name: "start_blk", arg: 2, scope: !7414, file: !2, line: 343, type: !6018)
!7420 = !DILocalVariable(name: "count", arg: 3, scope: !7414, file: !2, line: 344, type: !13)
!7421 = !DILocation(line: 343, column: 42, scope: !7414)
!7422 = !DILocation(line: 343, column: 62, scope: !7414)
!7423 = !DILocation(line: 344, column: 19, scope: !7414)
!7424 = !DILocation(line: 346, column: 29, scope: !7414)
!7425 = !DILocation(line: 346, column: 36, scope: !7414)
!7426 = !DILocation(line: 346, column: 42, scope: !7414)
!7427 = !DILocation(line: 346, column: 49, scope: !7414)
!7428 = !DILocation(line: 346, column: 60, scope: !7414)
!7429 = !DILocation(line: 346, column: 9, scope: !7414)
!7430 = !DILocation(line: 346, column: 2, scope: !7414)
!7431 = distinct !DISubprogram(name: "ext4_check_blockref", scope: !2, file: !2, line: 349, type: !7432, scopeLine: 351, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7435)
!7432 = !DISubroutineType(types: !7433)
!7433 = !{!30, !25, !13, !343, !7434, !13}
!7434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6002, size: 64)
!7435 = !{!7436, !7437, !7438, !7439, !7440, !7441, !7442}
!7436 = !DILocalVariable(name: "function", arg: 1, scope: !7431, file: !2, line: 349, type: !25)
!7437 = !DILocalVariable(name: "line", arg: 2, scope: !7431, file: !2, line: 349, type: !13)
!7438 = !DILocalVariable(name: "inode", arg: 3, scope: !7431, file: !2, line: 350, type: !343)
!7439 = !DILocalVariable(name: "p", arg: 4, scope: !7431, file: !2, line: 350, type: !7434)
!7440 = !DILocalVariable(name: "max", arg: 5, scope: !7431, file: !2, line: 350, type: !13)
!7441 = !DILocalVariable(name: "bref", scope: !7431, file: !2, line: 352, type: !7434)
!7442 = !DILocalVariable(name: "blk", scope: !7431, file: !2, line: 353, type: !13)
!7443 = !DILocation(line: 349, column: 37, scope: !7431)
!7444 = !DILocation(line: 349, column: 60, scope: !7431)
!7445 = !DILocation(line: 350, column: 18, scope: !7431)
!7446 = !DILocation(line: 350, column: 33, scope: !7431)
!7447 = !DILocation(line: 350, column: 49, scope: !7431)
!7448 = !DILocation(line: 352, column: 2, scope: !7431)
!7449 = !DILocation(line: 352, column: 10, scope: !7431)
!7450 = !DILocation(line: 352, column: 17, scope: !7431)
!7451 = !DILocation(line: 353, column: 2, scope: !7431)
!7452 = !DILocation(line: 353, column: 15, scope: !7431)
!7453 = !DILocation(line: 355, column: 31, scope: !7454)
!7454 = distinct !DILexicalBlock(scope: !7431, file: !2, line: 355, column: 6)
!7455 = !DILocation(line: 355, column: 38, scope: !7454)
!7456 = !DILocation(line: 355, column: 6, scope: !7454)
!7457 = !DILocation(line: 355, column: 44, scope: !7454)
!7458 = !DILocation(line: 356, column: 7, scope: !7454)
!7459 = !DILocation(line: 356, column: 14, scope: !7454)
!7460 = !DILocation(line: 357, column: 7, scope: !7454)
!7461 = !DILocation(line: 356, column: 20, scope: !7454)
!7462 = !DILocation(line: 355, column: 6, scope: !7431)
!7463 = !DILocation(line: 358, column: 3, scope: !7454)
!7464 = !DILocation(line: 360, column: 2, scope: !7431)
!7465 = !DILocation(line: 360, column: 9, scope: !7431)
!7466 = !DILocation(line: 360, column: 16, scope: !7431)
!7467 = !DILocation(line: 360, column: 18, scope: !7431)
!7468 = !DILocation(line: 360, column: 17, scope: !7431)
!7469 = !DILocation(line: 360, column: 14, scope: !7431)
!7470 = !DILocation(line: 361, column: 9, scope: !7471)
!7471 = distinct !DILexicalBlock(scope: !7431, file: !2, line: 360, column: 23)
!7472 = !DILocation(line: 361, column: 7, scope: !7471)
!7473 = !DILocation(line: 362, column: 7, scope: !7474)
!7474 = distinct !DILexicalBlock(scope: !7471, file: !2, line: 362, column: 7)
!7475 = !DILocation(line: 362, column: 11, scope: !7474)
!7476 = !DILocation(line: 363, column: 7, scope: !7474)
!7477 = !DILocation(line: 362, column: 7, scope: !7471)
!7478 = !DILocation(line: 364, column: 4, scope: !7479)
!7479 = distinct !DILexicalBlock(scope: !7474, file: !2, line: 363, column: 57)
!7480 = !DILocation(line: 366, column: 4, scope: !7479)
!7481 = distinct !{!7481, !7464, !7482, !6639, !6640}
!7482 = !DILocation(line: 368, column: 2, scope: !7431)
!7483 = !DILocation(line: 369, column: 2, scope: !7431)
!7484 = !DILocation(line: 370, column: 1, scope: !7431)
!7485 = !DISubprogram(name: "__ext4_error_inode", scope: !5975, file: !5975, line: 3101, type: !7486, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7486 = !DISubroutineType(types: !7487)
!7487 = !{null, !343, !25, !13, !6018, !30, !25, null}
!7488 = distinct !DISubprogram(name: "kmalloc", scope: !5985, file: !5985, line: 591, type: !6734, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7489)
!7489 = !{!7490, !7491, !7492}
!7490 = !DILocalVariable(name: "size", arg: 1, scope: !7488, file: !5985, line: 591, type: !43)
!7491 = !DILocalVariable(name: "flags", arg: 2, scope: !7488, file: !5985, line: 591, type: !1309)
!7492 = !DILocalVariable(name: "index", scope: !7493, file: !5985, line: 594, type: !13)
!7493 = distinct !DILexicalBlock(scope: !7494, file: !5985, line: 593, column: 42)
!7494 = distinct !DILexicalBlock(scope: !7488, file: !5985, line: 593, column: 6)
!7495 = !DILocation(line: 591, column: 61, scope: !7488)
!7496 = !DILocation(line: 591, column: 73, scope: !7488)
!7497 = !DILocation(line: 593, column: 27, scope: !7494)
!7498 = !DILocation(line: 593, column: 6, scope: !7494)
!7499 = !DILocation(line: 593, column: 33, scope: !7494)
!7500 = !DILocation(line: 593, column: 36, scope: !7494)
!7501 = !DILocation(line: 593, column: 6, scope: !7488)
!7502 = !DILocation(line: 594, column: 3, scope: !7493)
!7503 = !DILocation(line: 594, column: 16, scope: !7493)
!7504 = !DILocation(line: 596, column: 7, scope: !7505)
!7505 = distinct !DILexicalBlock(scope: !7493, file: !5985, line: 596, column: 7)
!7506 = !DILocation(line: 596, column: 12, scope: !7505)
!7507 = !DILocation(line: 596, column: 7, scope: !7493)
!7508 = !DILocation(line: 597, column: 25, scope: !7505)
!7509 = !DILocation(line: 597, column: 31, scope: !7505)
!7510 = !DILocation(line: 597, column: 11, scope: !7505)
!7511 = !DILocation(line: 597, column: 4, scope: !7505)
!7512 = !DILocation(line: 599, column: 11, scope: !7493)
!7513 = !DILocation(line: 599, column: 9, scope: !7493)
!7514 = !DILocation(line: 601, column: 33, scope: !7493)
!7515 = !DILocation(line: 601, column: 40, scope: !7493)
!7516 = !DILocation(line: 601, column: 20, scope: !7493)
!7517 = !DILocation(line: 601, column: 5, scope: !7493)
!7518 = !DILocation(line: 601, column: 51, scope: !7493)
!7519 = !DILocation(line: 602, column: 5, scope: !7493)
!7520 = !DILocation(line: 602, column: 12, scope: !7493)
!7521 = !DILocation(line: 600, column: 10, scope: !7493)
!7522 = !DILocation(line: 600, column: 3, scope: !7493)
!7523 = !DILocation(line: 603, column: 2, scope: !7494)
!7524 = !DILocation(line: 604, column: 19, scope: !7488)
!7525 = !DILocation(line: 604, column: 25, scope: !7488)
!7526 = !DILocation(line: 604, column: 9, scope: !7488)
!7527 = !DILocation(line: 604, column: 2, scope: !7488)
!7528 = !DILocation(line: 605, column: 1, scope: !7488)
!7529 = !DISubprogram(name: "kmalloc_large", scope: !5985, file: !5985, line: 531, type: !6734, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7530 = distinct !DISubprogram(name: "__kmalloc_index", scope: !5985, file: !5985, line: 444, type: !7531, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7533)
!7531 = !DISubroutineType(types: !7532)
!7532 = !{!13, !43, !862}
!7533 = !{!7534, !7535}
!7534 = !DILocalVariable(name: "size", arg: 1, scope: !7530, file: !5985, line: 444, type: !43)
!7535 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !7530, file: !5985, line: 445, type: !862)
!7536 = !DILocation(line: 444, column: 60, scope: !7530)
!7537 = !DILocation(line: 445, column: 16, scope: !7530)
!7538 = !DILocation(line: 447, column: 7, scope: !7539)
!7539 = distinct !DILexicalBlock(scope: !7530, file: !5985, line: 447, column: 6)
!7540 = !DILocation(line: 447, column: 6, scope: !7530)
!7541 = !DILocation(line: 448, column: 3, scope: !7539)
!7542 = !DILocation(line: 450, column: 6, scope: !7543)
!7543 = distinct !DILexicalBlock(scope: !7530, file: !5985, line: 450, column: 6)
!7544 = !DILocation(line: 450, column: 11, scope: !7543)
!7545 = !DILocation(line: 450, column: 6, scope: !7530)
!7546 = !DILocation(line: 451, column: 3, scope: !7543)
!7547 = !DILocation(line: 453, column: 32, scope: !7548)
!7548 = distinct !DILexicalBlock(scope: !7530, file: !5985, line: 453, column: 6)
!7549 = !DILocation(line: 453, column: 37, scope: !7548)
!7550 = !DILocation(line: 453, column: 42, scope: !7548)
!7551 = !DILocation(line: 453, column: 45, scope: !7548)
!7552 = !DILocation(line: 453, column: 50, scope: !7548)
!7553 = !DILocation(line: 453, column: 6, scope: !7530)
!7554 = !DILocation(line: 454, column: 3, scope: !7548)
!7555 = !DILocation(line: 455, column: 32, scope: !7556)
!7556 = distinct !DILexicalBlock(scope: !7530, file: !5985, line: 455, column: 6)
!7557 = !DILocation(line: 455, column: 37, scope: !7556)
!7558 = !DILocation(line: 455, column: 43, scope: !7556)
!7559 = !DILocation(line: 455, column: 46, scope: !7556)
!7560 = !DILocation(line: 455, column: 51, scope: !7556)
!7561 = !DILocation(line: 455, column: 6, scope: !7530)
!7562 = !DILocation(line: 456, column: 3, scope: !7556)
!7563 = !DILocation(line: 457, column: 6, scope: !7564)
!7564 = distinct !DILexicalBlock(scope: !7530, file: !5985, line: 457, column: 6)
!7565 = !DILocation(line: 457, column: 11, scope: !7564)
!7566 = !DILocation(line: 457, column: 6, scope: !7530)
!7567 = !DILocation(line: 457, column: 26, scope: !7564)
!7568 = !DILocation(line: 458, column: 6, scope: !7569)
!7569 = distinct !DILexicalBlock(scope: !7530, file: !5985, line: 458, column: 6)
!7570 = !DILocation(line: 458, column: 11, scope: !7569)
!7571 = !DILocation(line: 458, column: 6, scope: !7530)
!7572 = !DILocation(line: 458, column: 26, scope: !7569)
!7573 = !DILocation(line: 459, column: 6, scope: !7574)
!7574 = distinct !DILexicalBlock(scope: !7530, file: !5985, line: 459, column: 6)
!7575 = !DILocation(line: 459, column: 11, scope: !7574)
!7576 = !DILocation(line: 459, column: 6, scope: !7530)
!7577 = !DILocation(line: 459, column: 26, scope: !7574)
!7578 = !DILocation(line: 460, column: 6, scope: !7579)
!7579 = distinct !DILexicalBlock(scope: !7530, file: !5985, line: 460, column: 6)
!7580 = !DILocation(line: 460, column: 11, scope: !7579)
!7581 = !DILocation(line: 460, column: 6, scope: !7530)
!7582 = !DILocation(line: 460, column: 26, scope: !7579)
!7583 = !DILocation(line: 461, column: 6, scope: !7584)
!7584 = distinct !DILexicalBlock(scope: !7530, file: !5985, line: 461, column: 6)
!7585 = !DILocation(line: 461, column: 11, scope: !7584)
!7586 = !DILocation(line: 461, column: 6, scope: !7530)
!7587 = !DILocation(line: 461, column: 26, scope: !7584)
!7588 = !DILocation(line: 462, column: 6, scope: !7589)
!7589 = distinct !DILexicalBlock(scope: !7530, file: !5985, line: 462, column: 6)
!7590 = !DILocation(line: 462, column: 11, scope: !7589)
!7591 = !DILocation(line: 462, column: 6, scope: !7530)
!7592 = !DILocation(line: 462, column: 26, scope: !7589)
!7593 = !DILocation(line: 463, column: 6, scope: !7594)
!7594 = distinct !DILexicalBlock(scope: !7530, file: !5985, line: 463, column: 6)
!7595 = !DILocation(line: 463, column: 11, scope: !7594)
!7596 = !DILocation(line: 463, column: 6, scope: !7530)
!7597 = !DILocation(line: 463, column: 26, scope: !7594)
!7598 = !DILocation(line: 464, column: 6, scope: !7599)
!7599 = distinct !DILexicalBlock(scope: !7530, file: !5985, line: 464, column: 6)
!7600 = !DILocation(line: 464, column: 11, scope: !7599)
!7601 = !DILocation(line: 464, column: 6, scope: !7530)
!7602 = !DILocation(line: 464, column: 26, scope: !7599)
!7603 = !DILocation(line: 465, column: 6, scope: !7604)
!7604 = distinct !DILexicalBlock(scope: !7530, file: !5985, line: 465, column: 6)
!7605 = !DILocation(line: 465, column: 11, scope: !7604)
!7606 = !DILocation(line: 465, column: 6, scope: !7530)
!7607 = !DILocation(line: 465, column: 26, scope: !7604)
!7608 = !DILocation(line: 466, column: 6, scope: !7609)
!7609 = distinct !DILexicalBlock(scope: !7530, file: !5985, line: 466, column: 6)
!7610 = !DILocation(line: 466, column: 11, scope: !7609)
!7611 = !DILocation(line: 466, column: 6, scope: !7530)
!7612 = !DILocation(line: 466, column: 26, scope: !7609)
!7613 = !DILocation(line: 467, column: 6, scope: !7614)
!7614 = distinct !DILexicalBlock(scope: !7530, file: !5985, line: 467, column: 6)
!7615 = !DILocation(line: 467, column: 11, scope: !7614)
!7616 = !DILocation(line: 467, column: 6, scope: !7530)
!7617 = !DILocation(line: 467, column: 26, scope: !7614)
!7618 = !DILocation(line: 468, column: 6, scope: !7619)
!7619 = distinct !DILexicalBlock(scope: !7530, file: !5985, line: 468, column: 6)
!7620 = !DILocation(line: 468, column: 11, scope: !7619)
!7621 = !DILocation(line: 468, column: 6, scope: !7530)
!7622 = !DILocation(line: 468, column: 26, scope: !7619)
!7623 = !DILocation(line: 469, column: 6, scope: !7624)
!7624 = distinct !DILexicalBlock(scope: !7530, file: !5985, line: 469, column: 6)
!7625 = !DILocation(line: 469, column: 11, scope: !7624)
!7626 = !DILocation(line: 469, column: 6, scope: !7530)
!7627 = !DILocation(line: 469, column: 26, scope: !7624)
!7628 = !DILocation(line: 470, column: 6, scope: !7629)
!7629 = distinct !DILexicalBlock(scope: !7530, file: !5985, line: 470, column: 6)
!7630 = !DILocation(line: 470, column: 11, scope: !7629)
!7631 = !DILocation(line: 470, column: 6, scope: !7530)
!7632 = !DILocation(line: 470, column: 26, scope: !7629)
!7633 = !DILocation(line: 471, column: 6, scope: !7634)
!7634 = distinct !DILexicalBlock(scope: !7530, file: !5985, line: 471, column: 6)
!7635 = !DILocation(line: 471, column: 11, scope: !7634)
!7636 = !DILocation(line: 471, column: 6, scope: !7530)
!7637 = !DILocation(line: 471, column: 26, scope: !7634)
!7638 = !DILocation(line: 472, column: 6, scope: !7639)
!7639 = distinct !DILexicalBlock(scope: !7530, file: !5985, line: 472, column: 6)
!7640 = !DILocation(line: 472, column: 11, scope: !7639)
!7641 = !DILocation(line: 472, column: 6, scope: !7530)
!7642 = !DILocation(line: 472, column: 26, scope: !7639)
!7643 = !DILocation(line: 473, column: 6, scope: !7644)
!7644 = distinct !DILexicalBlock(scope: !7530, file: !5985, line: 473, column: 6)
!7645 = !DILocation(line: 473, column: 11, scope: !7644)
!7646 = !DILocation(line: 473, column: 6, scope: !7530)
!7647 = !DILocation(line: 473, column: 26, scope: !7644)
!7648 = !DILocation(line: 474, column: 6, scope: !7649)
!7649 = distinct !DILexicalBlock(scope: !7530, file: !5985, line: 474, column: 6)
!7650 = !DILocation(line: 474, column: 11, scope: !7649)
!7651 = !DILocation(line: 474, column: 6, scope: !7530)
!7652 = !DILocation(line: 474, column: 27, scope: !7649)
!7653 = !DILocation(line: 475, column: 6, scope: !7654)
!7654 = distinct !DILexicalBlock(scope: !7530, file: !5985, line: 475, column: 6)
!7655 = !DILocation(line: 475, column: 11, scope: !7654)
!7656 = !DILocation(line: 475, column: 6, scope: !7530)
!7657 = !DILocation(line: 475, column: 32, scope: !7654)
!7658 = !DILocation(line: 477, column: 50, scope: !7659)
!7659 = distinct !DILexicalBlock(scope: !7530, file: !5985, line: 477, column: 6)
!7660 = !{i8 0, i8 2}
!7661 = !DILocation(line: 477, column: 6, scope: !7530)
!7662 = !DILocation(line: 478, column: 3, scope: !7659)
!7663 = !DILocation(line: 478, column: 3, scope: !7664)
!7664 = distinct !DILexicalBlock(scope: !7665, file: !5985, line: 478, column: 3)
!7665 = distinct !DILexicalBlock(scope: !7659, file: !5985, line: 478, column: 3)
!7666 = !{i32 -2141715436}
!7667 = !DILocation(line: 478, column: 3, scope: !7665)
!7668 = !DILocation(line: 480, column: 3, scope: !7659)
!7669 = !DILocation(line: 480, column: 3, scope: !7670)
!7670 = distinct !DILexicalBlock(scope: !7659, file: !5985, line: 480, column: 3)
!7671 = !DILocation(line: 480, column: 3, scope: !7672)
!7672 = distinct !DILexicalBlock(scope: !7670, file: !5985, line: 480, column: 3)
!7673 = !DILocation(line: 480, column: 3, scope: !7674)
!7674 = distinct !DILexicalBlock(scope: !7670, file: !5985, line: 480, column: 3)
!7675 = !{i64 2153252063, i64 2153252092, i64 2153252138, i64 2153252196, i64 2153252250, i64 2153252304, i64 2153252359, i64 2153252390}
!7676 = !DILocation(line: 483, column: 2, scope: !7530)
!7677 = !DILocation(line: 484, column: 1, scope: !7530)
!7678 = !DISubprogram(name: "kmalloc_trace", scope: !5985, file: !5985, line: 525, type: !7679, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7679 = !DISubroutineType(types: !7680)
!7680 = !{!28, !2691, !1309, !43}
!7681 = distinct !DISubprogram(name: "kmalloc_type", scope: !5985, file: !5985, line: 401, type: !7682, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7684)
!7682 = !DISubroutineType(types: !7683)
!7683 = !{!5984, !1309, !47}
!7684 = !{!7685, !7686}
!7685 = !DILocalVariable(name: "flags", arg: 1, scope: !7681, file: !5985, line: 401, type: !1309)
!7686 = !DILocalVariable(name: "caller", arg: 2, scope: !7681, file: !5985, line: 401, type: !47)
!7687 = !DILocation(line: 401, column: 67, scope: !7681)
!7688 = !DILocation(line: 401, column: 88, scope: !7681)
!7689 = !DILocation(line: 407, column: 6, scope: !7690)
!7690 = distinct !DILexicalBlock(scope: !7681, file: !5985, line: 407, column: 6)
!7691 = !DILocation(line: 407, column: 6, scope: !7681)
!7692 = !DILocation(line: 413, column: 3, scope: !7690)
!7693 = !DILocation(line: 423, column: 38, scope: !7694)
!7694 = distinct !DILexicalBlock(scope: !7681, file: !5985, line: 423, column: 6)
!7695 = !DILocation(line: 423, column: 44, scope: !7694)
!7696 = !DILocation(line: 423, column: 6, scope: !7681)
!7697 = !DILocation(line: 424, column: 3, scope: !7694)
!7698 = !DILocation(line: 426, column: 3, scope: !7699)
!7699 = distinct !DILexicalBlock(scope: !7681, file: !5985, line: 425, column: 6)
!7700 = !DILocation(line: 429, column: 1, scope: !7681)
!7701 = !DISubprogram(name: "__kmalloc", scope: !5985, file: !5985, line: 488, type: !6734, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7702 = !DISubprogram(name: "__compiletime_assert_245", scope: !5985, file: !5985, line: 478, type: !2301, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!7703 = !DISubprogram(name: "kmem_cache_alloc", scope: !5985, file: !5985, line: 500, type: !7704, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7704 = !DISubroutineType(types: !7705)
!7705 = !{!28, !2691, !1309}
!7706 = distinct !DISubprogram(name: "rb_link_node", scope: !7707, file: !7707, line: 59, type: !7708, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7710)
!7707 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6e0facf00d8c55244f0fbd487ce02705")
!7708 = !DISubroutineType(types: !7709)
!7709 = !{null, !800, !800, !6776}
!7710 = !{!7711, !7712, !7713}
!7711 = !DILocalVariable(name: "node", arg: 1, scope: !7706, file: !7707, line: 59, type: !800)
!7712 = !DILocalVariable(name: "parent", arg: 2, scope: !7706, file: !7707, line: 59, type: !800)
!7713 = !DILocalVariable(name: "rb_link", arg: 3, scope: !7706, file: !7707, line: 60, type: !6776)
!7714 = !DILocation(line: 59, column: 49, scope: !7706)
!7715 = !DILocation(line: 59, column: 71, scope: !7706)
!7716 = !DILocation(line: 60, column: 22, scope: !7706)
!7717 = !DILocation(line: 62, column: 43, scope: !7706)
!7718 = !DILocation(line: 62, column: 28, scope: !7706)
!7719 = !DILocation(line: 62, column: 2, scope: !7706)
!7720 = !DILocation(line: 62, column: 8, scope: !7706)
!7721 = !DILocation(line: 62, column: 26, scope: !7706)
!7722 = !DILocation(line: 63, column: 18, scope: !7706)
!7723 = !DILocation(line: 63, column: 24, scope: !7706)
!7724 = !DILocation(line: 63, column: 33, scope: !7706)
!7725 = !DILocation(line: 63, column: 2, scope: !7706)
!7726 = !DILocation(line: 63, column: 8, scope: !7706)
!7727 = !DILocation(line: 63, column: 16, scope: !7706)
!7728 = !DILocation(line: 65, column: 13, scope: !7706)
!7729 = !DILocation(line: 65, column: 3, scope: !7706)
!7730 = !DILocation(line: 65, column: 11, scope: !7706)
!7731 = !DILocation(line: 66, column: 1, scope: !7706)
!7732 = !DISubprogram(name: "rb_insert_color", scope: !7707, file: !7707, line: 39, type: !7733, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7733 = !DISubroutineType(types: !7734)
!7734 = !{null, !800, !7735}
!7735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!7736 = !DISubprogram(name: "rb_prev", scope: !7707, file: !7707, line: 45, type: !7737, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7737 = !DISubroutineType(types: !7738)
!7738 = !{!800, !7739}
!7739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7740, size: 64)
!7740 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !795)
!7741 = distinct !DISubprogram(name: "can_merge", scope: !2, file: !2, line: 46, type: !7742, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7744)
!7742 = !DISubroutineType(types: !7743)
!7743 = !{!30, !6013, !6013}
!7744 = !{!7745, !7746}
!7745 = !DILocalVariable(name: "entry1", arg: 1, scope: !7741, file: !2, line: 46, type: !6013)
!7746 = !DILocalVariable(name: "entry2", arg: 2, scope: !7741, file: !2, line: 47, type: !6013)
!7747 = !DILocation(line: 46, column: 54, scope: !7741)
!7748 = !DILocation(line: 47, column: 33, scope: !7741)
!7749 = !DILocation(line: 49, column: 7, scope: !7750)
!7750 = distinct !DILexicalBlock(scope: !7741, file: !2, line: 49, column: 6)
!7751 = !DILocation(line: 49, column: 15, scope: !7750)
!7752 = !DILocation(line: 49, column: 27, scope: !7750)
!7753 = !DILocation(line: 49, column: 35, scope: !7750)
!7754 = !DILocation(line: 49, column: 25, scope: !7750)
!7755 = !DILocation(line: 49, column: 45, scope: !7750)
!7756 = !DILocation(line: 49, column: 53, scope: !7750)
!7757 = !DILocation(line: 49, column: 42, scope: !7750)
!7758 = !DILocation(line: 49, column: 63, scope: !7750)
!7759 = !DILocation(line: 50, column: 6, scope: !7750)
!7760 = !DILocation(line: 50, column: 14, scope: !7750)
!7761 = !DILocation(line: 50, column: 21, scope: !7750)
!7762 = !DILocation(line: 50, column: 29, scope: !7750)
!7763 = !DILocation(line: 50, column: 18, scope: !7750)
!7764 = !DILocation(line: 49, column: 6, scope: !7741)
!7765 = !DILocation(line: 51, column: 3, scope: !7750)
!7766 = !DILocation(line: 52, column: 2, scope: !7741)
!7767 = !DILocation(line: 53, column: 1, scope: !7741)
!7768 = !DISubprogram(name: "rb_erase", scope: !7707, file: !7707, line: 40, type: !7733, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7769 = !DISubprogram(name: "kmem_cache_free", scope: !5985, file: !5985, line: 503, type: !7770, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7770 = !DISubroutineType(types: !7771)
!7771 = !{null, !2691, !28}
!7772 = !DISubprogram(name: "rb_next", scope: !7707, file: !7707, line: 44, type: !7737, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7773 = !DISubprogram(name: "__ext4_iget", scope: !5975, file: !5975, line: 2971, type: !7774, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7774 = !DISubroutineType(types: !7775)
!7775 = !{!343, !495, !47, !7776, !25, !13}
!7776 = !DIDerivedType(tag: DW_TAG_typedef, name: "ext4_iget_flags", file: !5975, line: 2969, baseType: !5994)
!7777 = distinct !DISubprogram(name: "IS_ERR", scope: !7778, file: !7778, line: 59, type: !7779, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7781)
!7778 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!7779 = !DISubroutineType(types: !7780)
!7780 = !{!862, !1493}
!7781 = !{!7782}
!7782 = !DILocalVariable(name: "ptr", arg: 1, scope: !7777, file: !7778, line: 59, type: !1493)
!7783 = !DILocation(line: 59, column: 60, scope: !7777)
!7784 = !DILocation(line: 61, column: 9, scope: !7777)
!7785 = !DILocation(line: 61, column: 2, scope: !7777)
!7786 = distinct !DISubprogram(name: "PTR_ERR", scope: !7778, file: !7778, line: 49, type: !7787, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7789)
!7787 = !DISubroutineType(types: !7788)
!7788 = !{!618, !1493}
!7789 = !{!7790}
!7790 = !DILocalVariable(name: "ptr", arg: 1, scope: !7786, file: !7778, line: 49, type: !1493)
!7791 = !DILocation(line: 49, column: 61, scope: !7786)
!7792 = !DILocation(line: 51, column: 16, scope: !7786)
!7793 = !DILocation(line: 51, column: 9, scope: !7786)
!7794 = !DILocation(line: 51, column: 2, scope: !7786)
!7795 = !DISubprogram(name: "ext4_map_blocks", scope: !5975, file: !5975, line: 3685, type: !7796, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7796 = !DISubroutineType(types: !7797)
!7797 = !{!30, !7798, !343, !7822, !30}
!7798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7799, size: 64)
!7799 = !DIDerivedType(tag: DW_TAG_typedef, name: "handle_t", file: !274, line: 91, baseType: !7800)
!7800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jbd2_journal_handle", file: !274, line: 477, size: 448, elements: !7801)
!7801 = !{!7802, !7807, !7808, !7809, !7810, !7811, !7812, !7813, !7814, !7815, !7816, !7817, !7818, !7819, !7820, !7821}
!7802 = !DIDerivedType(tag: DW_TAG_member, scope: !7800, file: !274, line: 479, baseType: !7803, size: 64)
!7803 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !7800, file: !274, line: 479, size: 64, elements: !7804)
!7804 = !{!7805, !7806}
!7805 = !DIDerivedType(tag: DW_TAG_member, name: "h_transaction", scope: !7803, file: !274, line: 480, baseType: !5702, size: 64)
!7806 = !DIDerivedType(tag: DW_TAG_member, name: "h_journal", scope: !7803, file: !274, line: 482, baseType: !278, size: 64)
!7807 = !DIDerivedType(tag: DW_TAG_member, name: "h_rsv_handle", scope: !7800, file: !274, line: 485, baseType: !7798, size: 64, offset: 64)
!7808 = !DIDerivedType(tag: DW_TAG_member, name: "h_total_credits", scope: !7800, file: !274, line: 486, baseType: !30, size: 32, offset: 128)
!7809 = !DIDerivedType(tag: DW_TAG_member, name: "h_revoke_credits", scope: !7800, file: !274, line: 487, baseType: !30, size: 32, offset: 160)
!7810 = !DIDerivedType(tag: DW_TAG_member, name: "h_revoke_credits_requested", scope: !7800, file: !274, line: 488, baseType: !30, size: 32, offset: 192)
!7811 = !DIDerivedType(tag: DW_TAG_member, name: "h_ref", scope: !7800, file: !274, line: 489, baseType: !30, size: 32, offset: 224)
!7812 = !DIDerivedType(tag: DW_TAG_member, name: "h_err", scope: !7800, file: !274, line: 490, baseType: !30, size: 32, offset: 256)
!7813 = !DIDerivedType(tag: DW_TAG_member, name: "h_sync", scope: !7800, file: !274, line: 493, baseType: !13, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!7814 = !DIDerivedType(tag: DW_TAG_member, name: "h_jdata", scope: !7800, file: !274, line: 494, baseType: !13, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!7815 = !DIDerivedType(tag: DW_TAG_member, name: "h_reserved", scope: !7800, file: !274, line: 495, baseType: !13, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!7816 = !DIDerivedType(tag: DW_TAG_member, name: "h_aborted", scope: !7800, file: !274, line: 496, baseType: !13, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!7817 = !DIDerivedType(tag: DW_TAG_member, name: "h_type", scope: !7800, file: !274, line: 497, baseType: !13, size: 8, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!7818 = !DIDerivedType(tag: DW_TAG_member, name: "h_line_no", scope: !7800, file: !274, line: 498, baseType: !13, size: 16, offset: 300, flags: DIFlagBitField, extraData: i64 288)
!7819 = !DIDerivedType(tag: DW_TAG_member, name: "h_start_jiffies", scope: !7800, file: !274, line: 500, baseType: !47, size: 64, offset: 320)
!7820 = !DIDerivedType(tag: DW_TAG_member, name: "h_requested_credits", scope: !7800, file: !274, line: 501, baseType: !13, size: 32, offset: 384)
!7821 = !DIDerivedType(tag: DW_TAG_member, name: "saved_alloc_context", scope: !7800, file: !274, line: 503, baseType: !13, size: 32, offset: 416)
!7822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6976, size: 64)
!7823 = !DISubprogram(name: "iput", scope: !250, file: !250, line: 2459, type: !2327, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7824 = !DISubprogram(name: "_printk", scope: !7825, file: !7825, line: 153, type: !7826, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7825 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!7826 = !DISubroutineType(types: !7827)
!7827 = !{!30, !25, null}
!7828 = !DISubprogram(name: "rb_first", scope: !7707, file: !7707, line: 46, type: !7829, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7829 = !DISubroutineType(types: !7830)
!7830 = !{!800, !7831}
!7831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7832, size: 64)
!7832 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1075)
!7833 = !DISubprogram(name: "rb_first_postorder", scope: !7707, file: !7707, line: 50, type: !7829, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7834 = !DISubprogram(name: "rb_next_postorder", scope: !7707, file: !7707, line: 51, type: !7737, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7835 = !DISubprogram(name: "__rcu_read_lock", scope: !7242, file: !7242, line: 74, type: !2301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7836 = !DISubprogram(name: "__rcu_read_unlock", scope: !7242, file: !7242, line: 75, type: !2301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
