; ModuleID = 'fs/ext4/acl.c'
source_filename = "fs/ext4/acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.list_head, ptr, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [10 x i64], [4 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.19 }
%union.anon.19 = type { %struct.anon.20, [48 x i8] }
%struct.anon.20 = type { ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic64_t, ptr, i32, %struct.refcount_struct }
%struct.atomic64_t = type { i64 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.21, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { ptr, i32, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.ext4_acl_header = type { i32 }
%struct.ext4_acl_entry = type { i16, i16, i32 }
%struct.posix_acl = type { %struct.refcount_struct, %struct.callback_head, i32, [0 x %struct.posix_acl_entry] }
%struct.callback_head = type { ptr, ptr }
%struct.posix_acl_entry = type { i16, i16, %union.anon.14 }
%union.anon.14 = type { %struct.kuid_t }
%struct.timespec64 = type { i64, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.15, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.16, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.17, ptr, %struct.address_space, %struct.list_head, %union.anon.18, i32, i32, ptr, ptr }
%union.anon.15 = type { i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.hlist_node = type { ptr, ptr }
%union.anon.16 = type { %struct.callback_head }
%union.anon.17 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.18 = type { ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [32 x i8], %struct.lockref, ptr, ptr, i64, ptr, %union.anon.27, %struct.list_head, %struct.list_head, %union.anon.28 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.23, ptr }
%union.anon.23 = type { i64 }
%struct.lockref = type { %union.anon.25 }
%union.anon.25 = type { i64 }
%union.anon.27 = type { %struct.list_head }
%union.anon.28 = type { %struct.hlist_node }
%struct.ext4_sb_info = type { i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i32, i32, i64, ptr, ptr, ptr, i32, i32, i64, i32, i32, i64, %struct.atomic64_t, %struct.kuid_t, %struct.kgid_t, i16, i16, i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, ptr, ptr, %struct.kobject, %struct.completion, ptr, ptr, ptr, i64, %struct.mutex, %struct.list_head, %struct.ext4_orphan_info, i64, i32, i32, ptr, [3 x ptr], i32, i32, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.work_struct, %struct.atomic_t, ptr, ptr, ptr, ptr, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [5 x %struct.atomic_t], %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [5 x %struct.atomic64_t], [5 x %struct.atomic64_t], [5 x %struct.atomic64_t], %struct.atomic_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, i64, i64, i32, i32, ptr, i32, ptr, %struct.timer_list, ptr, i32, ptr, i64, ptr, i32, %struct.shrinker, %struct.list_head, i64, %struct.ext4_es_stats, ptr, ptr, [40 x i8], %struct.spinlock, [1 x %struct.ext4_journal_trigger], %struct.ratelimit_state, %struct.ratelimit_state, %struct.ratelimit_state, %struct.atomic_t, %struct.atomic_t, %struct.fscrypt_dummy_policy, %struct.percpu_rw_semaphore, ptr, i64, i32, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i64, ptr, i64, i32, i32, i32, i64, ptr, i64, %struct.work_struct, %struct.atomic_t, [2 x %struct.list_head], [2 x %struct.list_head], i32, %struct.spinlock, ptr, %struct.ext4_fc_stats, i32, %struct.ext4_fc_replay_state, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.ext4_orphan_info = type { i32, i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i64, i32, i32, %struct.list_head, ptr }
%struct.ext4_es_stats = type { i64, %struct.percpu_counter, %struct.percpu_counter, i64, i64, %struct.percpu_counter, %struct.percpu_counter }
%struct.ext4_journal_trigger = type { %struct.jbd2_buffer_trigger_type, ptr }
%struct.jbd2_buffer_trigger_type = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.fscrypt_dummy_policy = type {}
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ext4_fc_stats = type { [10 x i32], i64, i64, i64, i64, i64, i64 }
%struct.ext4_fc_replay_state = type { i32, i32, i32, i32, i32, ptr, i32, i32, i32, ptr, i32, i32 }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i64, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i16, i16, [3 x %struct.percpu_rw_semaphore] }
%struct.uuid_t = type { [16 x i8] }
%struct.list_lru = type { ptr }

@.str = private unnamed_addr constant [14 x i8] c"fs/ext4/acl.c\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !7
@__func__.ext4_set_acl = private unnamed_addr constant [13 x i8] c"ext4_set_acl\00", align 1, !dbg !12
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !18
@init_user_ns = external dso_local global %struct.user_namespace, align 8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @ext4_get_acl(ptr noundef %inode, i32 noundef %type, i1 noundef zeroext %rcu) #0 align 16 !dbg !5588 {
entry:
  %retval = alloca ptr, align 8
  %inode.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %rcu.addr = alloca i8, align 1
  %name_index = alloca i32, align 4
  %value = alloca ptr, align 8
  %acl = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5590, metadata !DIExpression()), !dbg !5597
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5591, metadata !DIExpression()), !dbg !5598
  %frombool = zext i1 %rcu to i8
  store i8 %frombool, ptr %rcu.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %rcu.addr, metadata !5592, metadata !DIExpression()), !dbg !5599
  call void @llvm.lifetime.start.p0(i64 4, ptr %name_index) #13, !dbg !5600
  call void @llvm.dbg.declare(metadata ptr %name_index, metadata !5593, metadata !DIExpression()), !dbg !5601
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #13, !dbg !5602
  call void @llvm.dbg.declare(metadata ptr %value, metadata !5594, metadata !DIExpression()), !dbg !5603
  store ptr null, ptr %value, align 8, !dbg !5603
  call void @llvm.lifetime.start.p0(i64 8, ptr %acl) #13, !dbg !5604
  call void @llvm.dbg.declare(metadata ptr %acl, metadata !5595, metadata !DIExpression()), !dbg !5605
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #13, !dbg !5606
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !5596, metadata !DIExpression()), !dbg !5607
  %0 = load i8, ptr %rcu.addr, align 1, !dbg !5608, !range !5610, !noundef !1416
  %tobool = trunc i8 %0 to i1, !dbg !5608
  br i1 %tobool, label %if.then, label %if.end, !dbg !5611

if.then:                                          ; preds = %entry
  %call = call ptr @ERR_PTR(i64 noundef -10) #14, !dbg !5612
  store ptr %call, ptr %retval, align 8, !dbg !5613
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5613

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %type.addr, align 4, !dbg !5614
  switch i32 %1, label %sw.default [
    i32 32768, label %sw.bb
    i32 16384, label %sw.bb2
  ], !dbg !5615

sw.bb:                                            ; preds = %if.end
  store i32 2, ptr %name_index, align 4, !dbg !5616
  br label %sw.epilog, !dbg !5618

sw.bb2:                                           ; preds = %if.end
  store i32 3, ptr %name_index, align 4, !dbg !5619
  br label %sw.epilog, !dbg !5620

sw.default:                                       ; preds = %if.end
  br label %do.body, !dbg !5621

do.body:                                          ; preds = %sw.default
  br label %do.body3, !dbg !5622

do.body3:                                         ; preds = %do.body
  br label %do.cond, !dbg !5624

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !5624

do.end:                                           ; preds = %do.cond
  br label %do.body4, !dbg !5622

do.body4:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 163, i32 0, i64 12) #13, !dbg !5626, !srcloc !5628
  br label %do.cond5, !dbg !5626

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !5626

do.end6:                                          ; preds = %do.cond5
  unreachable, !dbg !5622

do.cond7:                                         ; No predecessors!
  br label %do.end8, !dbg !5622

do.end8:                                          ; preds = %do.cond7
  br label %sw.epilog, !dbg !5629

sw.epilog:                                        ; preds = %do.end8, %sw.bb2, %sw.bb
  %2 = load ptr, ptr %inode.addr, align 8, !dbg !5630
  %3 = load i32, ptr %name_index, align 4, !dbg !5631
  %call9 = call i32 @ext4_xattr_get(ptr noundef %2, i32 noundef %3, ptr noundef @.str.1, ptr noundef null, i64 noundef 0) #14, !dbg !5632
  store i32 %call9, ptr %retval1, align 4, !dbg !5633
  %4 = load i32, ptr %retval1, align 4, !dbg !5634
  %cmp = icmp sgt i32 %4, 0, !dbg !5636
  br i1 %cmp, label %if.then10, label %if.end18, !dbg !5637

if.then10:                                        ; preds = %sw.epilog
  %5 = load i32, ptr %retval1, align 4, !dbg !5638
  %conv = sext i32 %5 to i64, !dbg !5638
  %call11 = call noalias ptr @kmalloc(i64 noundef %conv, i32 noundef 3136) #15, !dbg !5640
  store ptr %call11, ptr %value, align 8, !dbg !5641
  %6 = load ptr, ptr %value, align 8, !dbg !5642
  %tobool12 = icmp ne ptr %6, null, !dbg !5642
  br i1 %tobool12, label %if.end15, label %if.then13, !dbg !5644

if.then13:                                        ; preds = %if.then10
  %call14 = call ptr @ERR_PTR(i64 noundef -12) #14, !dbg !5645
  store ptr %call14, ptr %retval, align 8, !dbg !5646
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5646

if.end15:                                         ; preds = %if.then10
  %7 = load ptr, ptr %inode.addr, align 8, !dbg !5647
  %8 = load i32, ptr %name_index, align 4, !dbg !5648
  %9 = load ptr, ptr %value, align 8, !dbg !5649
  %10 = load i32, ptr %retval1, align 4, !dbg !5650
  %conv16 = sext i32 %10 to i64, !dbg !5650
  %call17 = call i32 @ext4_xattr_get(ptr noundef %7, i32 noundef %8, ptr noundef @.str.1, ptr noundef %9, i64 noundef %conv16) #14, !dbg !5651
  store i32 %call17, ptr %retval1, align 4, !dbg !5652
  br label %if.end18, !dbg !5653

if.end18:                                         ; preds = %if.end15, %sw.epilog
  %11 = load i32, ptr %retval1, align 4, !dbg !5654
  %cmp19 = icmp sgt i32 %11, 0, !dbg !5656
  br i1 %cmp19, label %if.then21, label %if.else, !dbg !5657

if.then21:                                        ; preds = %if.end18
  %12 = load ptr, ptr %value, align 8, !dbg !5658
  %13 = load i32, ptr %retval1, align 4, !dbg !5659
  %conv22 = sext i32 %13 to i64, !dbg !5659
  %call23 = call ptr @ext4_acl_from_disk(ptr noundef %12, i64 noundef %conv22) #14, !dbg !5660
  store ptr %call23, ptr %acl, align 8, !dbg !5661
  br label %if.end33, !dbg !5662

if.else:                                          ; preds = %if.end18
  %14 = load i32, ptr %retval1, align 4, !dbg !5663
  %cmp24 = icmp eq i32 %14, -61, !dbg !5665
  br i1 %cmp24, label %if.then28, label %lor.lhs.false, !dbg !5666

lor.lhs.false:                                    ; preds = %if.else
  %15 = load i32, ptr %retval1, align 4, !dbg !5667
  %cmp26 = icmp eq i32 %15, -38, !dbg !5668
  br i1 %cmp26, label %if.then28, label %if.else29, !dbg !5669

if.then28:                                        ; preds = %lor.lhs.false, %if.else
  store ptr null, ptr %acl, align 8, !dbg !5670
  br label %if.end32, !dbg !5671

if.else29:                                        ; preds = %lor.lhs.false
  %16 = load i32, ptr %retval1, align 4, !dbg !5672
  %conv30 = sext i32 %16 to i64, !dbg !5672
  %call31 = call ptr @ERR_PTR(i64 noundef %conv30) #14, !dbg !5673
  store ptr %call31, ptr %acl, align 8, !dbg !5674
  br label %if.end32

if.end32:                                         ; preds = %if.else29, %if.then28
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.then21
  %17 = load ptr, ptr %value, align 8, !dbg !5675
  call void @kfree(ptr noundef %17) #14, !dbg !5676
  %18 = load ptr, ptr %acl, align 8, !dbg !5677
  store ptr %18, ptr %retval, align 8, !dbg !5678
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5678

cleanup:                                          ; preds = %if.end33, %if.then13, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #13, !dbg !5679
  call void @llvm.lifetime.end.p0(i64 8, ptr %acl) #13, !dbg !5679
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #13, !dbg !5679
  call void @llvm.lifetime.end.p0(i64 4, ptr %name_index) #13, !dbg !5679
  %19 = load ptr, ptr %retval, align 8, !dbg !5679
  ret ptr %19, !dbg !5679
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #3 align 16 !dbg !5680 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !5685, metadata !DIExpression()), !dbg !5686
  %0 = load i64, ptr %error.addr, align 8, !dbg !5687
  %1 = inttoptr i64 %0 to ptr, !dbg !5688
  ret ptr %1, !dbg !5689
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5690 dso_local i32 @ext4_xattr_get(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !5694 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5698, metadata !DIExpression()), !dbg !5703
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5699, metadata !DIExpression()), !dbg !5704
  %0 = load i64, ptr %size.addr, align 8, !dbg !5705
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5706
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5707

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5708
  %tobool = icmp ne i64 %2, 0, !dbg !5708
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5709

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #13, !dbg !5710
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5700, metadata !DIExpression()), !dbg !5711
  %3 = load i64, ptr %size.addr, align 8, !dbg !5712
  %cmp = icmp ugt i64 %3, 8192, !dbg !5714
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5715

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5716
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5717
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #15, !dbg !5718
  store ptr %call, ptr %retval, align 8, !dbg !5719
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5719

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5720
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #14, !dbg !5720
  store i32 %call2, ptr %index, align 4, !dbg !5721
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5722
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5723
  %9 = ptrtoint ptr %8 to i64, !dbg !5723
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #14, !dbg !5724
  %idxprom = zext i32 %call3 to i64, !dbg !5725
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5725
  %10 = load i32, ptr %index, align 4, !dbg !5726
  %idxprom4 = zext i32 %10 to i64, !dbg !5725
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5725
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5725
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5727
  %13 = load i64, ptr %size.addr, align 8, !dbg !5728
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #16, !dbg !5729
  store ptr %call6, ptr %retval, align 8, !dbg !5730
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5730

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #13, !dbg !5731
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5732
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5733
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #15, !dbg !5734
  store ptr %call8, ptr %retval, align 8, !dbg !5735
  br label %return, !dbg !5735

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5736
  ret ptr %16, !dbg !5736
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ext4_acl_from_disk(ptr noundef %value, i64 noundef %size) #0 align 16 !dbg !5737 {
entry:
  %retval = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %end = alloca ptr, align 8
  %n = alloca i32, align 4
  %count = alloca i32, align 4
  %acl = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %entry22 = alloca ptr, align 8
  %tmp = alloca %struct.kuid_t, align 4
  %tmp56 = alloca %struct.kgid_t, align 4
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5741, metadata !DIExpression()), !dbg !5752
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5742, metadata !DIExpression()), !dbg !5753
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #13, !dbg !5754
  call void @llvm.dbg.declare(metadata ptr %end, metadata !5743, metadata !DIExpression()), !dbg !5755
  %0 = load ptr, ptr %value.addr, align 8, !dbg !5756
  %1 = load i64, ptr %size.addr, align 8, !dbg !5757
  %add.ptr = getelementptr i8, ptr %0, i64 %1, !dbg !5758
  store ptr %add.ptr, ptr %end, align 8, !dbg !5755
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #13, !dbg !5759
  call void @llvm.dbg.declare(metadata ptr %n, metadata !5744, metadata !DIExpression()), !dbg !5760
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #13, !dbg !5759
  call void @llvm.dbg.declare(metadata ptr %count, metadata !5745, metadata !DIExpression()), !dbg !5761
  call void @llvm.lifetime.start.p0(i64 8, ptr %acl) #13, !dbg !5762
  call void @llvm.dbg.declare(metadata ptr %acl, metadata !5746, metadata !DIExpression()), !dbg !5763
  %2 = load ptr, ptr %value.addr, align 8, !dbg !5764
  %tobool = icmp ne ptr %2, null, !dbg !5764
  br i1 %tobool, label %if.end, label %if.then, !dbg !5766

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5767
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup65, !dbg !5767

if.end:                                           ; preds = %entry
  %3 = load i64, ptr %size.addr, align 8, !dbg !5768
  %cmp = icmp ult i64 %3, 4, !dbg !5770
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5771

if.then1:                                         ; preds = %if.end
  %call = call ptr @ERR_PTR(i64 noundef -22) #14, !dbg !5772
  store ptr %call, ptr %retval, align 8, !dbg !5773
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup65, !dbg !5773

if.end2:                                          ; preds = %if.end
  %4 = load ptr, ptr %value.addr, align 8, !dbg !5774
  %a_version = getelementptr inbounds %struct.ext4_acl_header, ptr %4, i32 0, i32 0, !dbg !5776
  %5 = load i32, ptr %a_version, align 4, !dbg !5776
  %cmp3 = icmp ne i32 %5, 1, !dbg !5777
  br i1 %cmp3, label %if.then4, label %if.end6, !dbg !5778

if.then4:                                         ; preds = %if.end2
  %call5 = call ptr @ERR_PTR(i64 noundef -22) #14, !dbg !5779
  store ptr %call5, ptr %retval, align 8, !dbg !5780
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup65, !dbg !5780

if.end6:                                          ; preds = %if.end2
  %6 = load ptr, ptr %value.addr, align 8, !dbg !5781
  %add.ptr7 = getelementptr i8, ptr %6, i64 4, !dbg !5782
  store ptr %add.ptr7, ptr %value.addr, align 8, !dbg !5783
  %7 = load i64, ptr %size.addr, align 8, !dbg !5784
  %call8 = call i32 @ext4_acl_count(i64 noundef %7) #14, !dbg !5785
  store i32 %call8, ptr %count, align 4, !dbg !5786
  %8 = load i32, ptr %count, align 4, !dbg !5787
  %cmp9 = icmp slt i32 %8, 0, !dbg !5789
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !5790

if.then10:                                        ; preds = %if.end6
  %call11 = call ptr @ERR_PTR(i64 noundef -22) #14, !dbg !5791
  store ptr %call11, ptr %retval, align 8, !dbg !5792
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup65, !dbg !5792

if.end12:                                         ; preds = %if.end6
  %9 = load i32, ptr %count, align 4, !dbg !5793
  %cmp13 = icmp eq i32 %9, 0, !dbg !5795
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !5796

if.then14:                                        ; preds = %if.end12
  store ptr null, ptr %retval, align 8, !dbg !5797
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup65, !dbg !5797

if.end15:                                         ; preds = %if.end12
  %10 = load i32, ptr %count, align 4, !dbg !5798
  %call16 = call ptr @posix_acl_alloc(i32 noundef %10, i32 noundef 3136) #14, !dbg !5799
  store ptr %call16, ptr %acl, align 8, !dbg !5800
  %11 = load ptr, ptr %acl, align 8, !dbg !5801
  %tobool17 = icmp ne ptr %11, null, !dbg !5801
  br i1 %tobool17, label %if.end20, label %if.then18, !dbg !5803

if.then18:                                        ; preds = %if.end15
  %call19 = call ptr @ERR_PTR(i64 noundef -12) #14, !dbg !5804
  store ptr %call19, ptr %retval, align 8, !dbg !5805
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup65, !dbg !5805

if.end20:                                         ; preds = %if.end15
  store i32 0, ptr %n, align 4, !dbg !5806
  br label %for.cond, !dbg !5807

for.cond:                                         ; preds = %for.inc, %if.end20
  %12 = load i32, ptr %n, align 4, !dbg !5808
  %13 = load i32, ptr %count, align 4, !dbg !5809
  %cmp21 = icmp slt i32 %12, %13, !dbg !5810
  br i1 %cmp21, label %for.body, label %for.end, !dbg !5811

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry22) #13, !dbg !5812
  call void @llvm.dbg.declare(metadata ptr %entry22, metadata !5747, metadata !DIExpression()), !dbg !5813
  %14 = load ptr, ptr %value.addr, align 8, !dbg !5814
  store ptr %14, ptr %entry22, align 8, !dbg !5813
  %15 = load ptr, ptr %value.addr, align 8, !dbg !5815
  %add.ptr23 = getelementptr i8, ptr %15, i64 4, !dbg !5817
  %16 = load ptr, ptr %end, align 8, !dbg !5818
  %cmp24 = icmp ugt ptr %add.ptr23, %16, !dbg !5819
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5820

if.then25:                                        ; preds = %for.body
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5821

if.end26:                                         ; preds = %for.body
  %17 = load ptr, ptr %entry22, align 8, !dbg !5822
  %e_tag = getelementptr inbounds %struct.ext4_acl_entry, ptr %17, i32 0, i32 0, !dbg !5822
  %18 = load i16, ptr %e_tag, align 4, !dbg !5822
  %19 = load ptr, ptr %acl, align 8, !dbg !5823
  %a_entries = getelementptr inbounds %struct.posix_acl, ptr %19, i32 0, i32 3, !dbg !5824
  %20 = load i32, ptr %n, align 4, !dbg !5825
  %idxprom = sext i32 %20 to i64, !dbg !5823
  %arrayidx = getelementptr [0 x %struct.posix_acl_entry], ptr %a_entries, i64 0, i64 %idxprom, !dbg !5823
  %e_tag27 = getelementptr inbounds %struct.posix_acl_entry, ptr %arrayidx, i32 0, i32 0, !dbg !5826
  store i16 %18, ptr %e_tag27, align 4, !dbg !5827
  %21 = load ptr, ptr %entry22, align 8, !dbg !5828
  %e_perm = getelementptr inbounds %struct.ext4_acl_entry, ptr %21, i32 0, i32 1, !dbg !5828
  %22 = load i16, ptr %e_perm, align 2, !dbg !5828
  %23 = load ptr, ptr %acl, align 8, !dbg !5829
  %a_entries28 = getelementptr inbounds %struct.posix_acl, ptr %23, i32 0, i32 3, !dbg !5830
  %24 = load i32, ptr %n, align 4, !dbg !5831
  %idxprom29 = sext i32 %24 to i64, !dbg !5829
  %arrayidx30 = getelementptr [0 x %struct.posix_acl_entry], ptr %a_entries28, i64 0, i64 %idxprom29, !dbg !5829
  %e_perm31 = getelementptr inbounds %struct.posix_acl_entry, ptr %arrayidx30, i32 0, i32 1, !dbg !5832
  store i16 %22, ptr %e_perm31, align 2, !dbg !5833
  %25 = load ptr, ptr %acl, align 8, !dbg !5834
  %a_entries32 = getelementptr inbounds %struct.posix_acl, ptr %25, i32 0, i32 3, !dbg !5835
  %26 = load i32, ptr %n, align 4, !dbg !5836
  %idxprom33 = sext i32 %26 to i64, !dbg !5834
  %arrayidx34 = getelementptr [0 x %struct.posix_acl_entry], ptr %a_entries32, i64 0, i64 %idxprom33, !dbg !5834
  %e_tag35 = getelementptr inbounds %struct.posix_acl_entry, ptr %arrayidx34, i32 0, i32 0, !dbg !5837
  %27 = load i16, ptr %e_tag35, align 4, !dbg !5837
  %conv = sext i16 %27 to i32, !dbg !5834
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 4, label %sw.bb
    i32 16, label %sw.bb
    i32 32, label %sw.bb
    i32 2, label %sw.bb37
    i32 8, label %sw.bb47
  ], !dbg !5838

sw.bb:                                            ; preds = %if.end26, %if.end26, %if.end26, %if.end26
  %28 = load ptr, ptr %value.addr, align 8, !dbg !5839
  %add.ptr36 = getelementptr i8, ptr %28, i64 4, !dbg !5841
  store ptr %add.ptr36, ptr %value.addr, align 8, !dbg !5842
  br label %sw.epilog, !dbg !5843

sw.bb37:                                          ; preds = %if.end26
  %29 = load ptr, ptr %value.addr, align 8, !dbg !5844
  %add.ptr38 = getelementptr i8, ptr %29, i64 8, !dbg !5845
  store ptr %add.ptr38, ptr %value.addr, align 8, !dbg !5846
  %30 = load ptr, ptr %value.addr, align 8, !dbg !5847
  %31 = load ptr, ptr %end, align 8, !dbg !5849
  %cmp39 = icmp ugt ptr %30, %31, !dbg !5850
  br i1 %cmp39, label %if.then41, label %if.end42, !dbg !5851

if.then41:                                        ; preds = %sw.bb37
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5852

if.end42:                                         ; preds = %sw.bb37
  %32 = load ptr, ptr %acl, align 8, !dbg !5853
  %a_entries43 = getelementptr inbounds %struct.posix_acl, ptr %32, i32 0, i32 3, !dbg !5854
  %33 = load i32, ptr %n, align 4, !dbg !5855
  %idxprom44 = sext i32 %33 to i64, !dbg !5853
  %arrayidx45 = getelementptr [0 x %struct.posix_acl_entry], ptr %a_entries43, i64 0, i64 %idxprom44, !dbg !5853
  %34 = getelementptr inbounds %struct.posix_acl_entry, ptr %arrayidx45, i32 0, i32 2, !dbg !5856
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #13, !dbg !5857
  %35 = load ptr, ptr %entry22, align 8, !dbg !5858
  %e_id = getelementptr inbounds %struct.ext4_acl_entry, ptr %35, i32 0, i32 2, !dbg !5858
  %36 = load i32, ptr %e_id, align 4, !dbg !5858
  %call46 = call i32 @make_kuid(ptr noundef @init_user_ns, i32 noundef %36) #14, !dbg !5857
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %tmp, i32 0, i32 0, !dbg !5857
  store i32 %call46, ptr %coerce.dive, align 4, !dbg !5857
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %34, ptr align 4 %tmp, i64 4, i1 false), !dbg !5857
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #13, !dbg !5857
  br label %sw.epilog, !dbg !5859

sw.bb47:                                          ; preds = %if.end26
  %37 = load ptr, ptr %value.addr, align 8, !dbg !5860
  %add.ptr48 = getelementptr i8, ptr %37, i64 8, !dbg !5861
  store ptr %add.ptr48, ptr %value.addr, align 8, !dbg !5862
  %38 = load ptr, ptr %value.addr, align 8, !dbg !5863
  %39 = load ptr, ptr %end, align 8, !dbg !5865
  %cmp49 = icmp ugt ptr %38, %39, !dbg !5866
  br i1 %cmp49, label %if.then51, label %if.end52, !dbg !5867

if.then51:                                        ; preds = %sw.bb47
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5868

if.end52:                                         ; preds = %sw.bb47
  %40 = load ptr, ptr %acl, align 8, !dbg !5869
  %a_entries53 = getelementptr inbounds %struct.posix_acl, ptr %40, i32 0, i32 3, !dbg !5870
  %41 = load i32, ptr %n, align 4, !dbg !5871
  %idxprom54 = sext i32 %41 to i64, !dbg !5869
  %arrayidx55 = getelementptr [0 x %struct.posix_acl_entry], ptr %a_entries53, i64 0, i64 %idxprom54, !dbg !5869
  %42 = getelementptr inbounds %struct.posix_acl_entry, ptr %arrayidx55, i32 0, i32 2, !dbg !5872
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp56) #13, !dbg !5873
  %43 = load ptr, ptr %entry22, align 8, !dbg !5874
  %e_id57 = getelementptr inbounds %struct.ext4_acl_entry, ptr %43, i32 0, i32 2, !dbg !5874
  %44 = load i32, ptr %e_id57, align 4, !dbg !5874
  %call58 = call i32 @make_kgid(ptr noundef @init_user_ns, i32 noundef %44) #14, !dbg !5873
  %coerce.dive59 = getelementptr inbounds %struct.kgid_t, ptr %tmp56, i32 0, i32 0, !dbg !5873
  store i32 %call58, ptr %coerce.dive59, align 4, !dbg !5873
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %42, ptr align 4 %tmp56, i64 4, i1 false), !dbg !5873
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp56) #13, !dbg !5873
  br label %sw.epilog, !dbg !5875

sw.default:                                       ; preds = %if.end26
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5876

sw.epilog:                                        ; preds = %if.end52, %if.end42, %sw.bb
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5877
  br label %cleanup, !dbg !5877

cleanup:                                          ; preds = %sw.default, %if.then51, %if.then41, %if.then25, %sw.epilog
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry22) #13, !dbg !5877
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup65 [
    i32 0, label %cleanup.cont
    i32 5, label %fail
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !5878

for.inc:                                          ; preds = %cleanup.cont
  %45 = load i32, ptr %n, align 4, !dbg !5879
  %inc = add i32 %45, 1, !dbg !5879
  store i32 %inc, ptr %n, align 4, !dbg !5879
  br label %for.cond, !dbg !5880, !llvm.loop !5881

for.end:                                          ; preds = %for.cond
  %46 = load ptr, ptr %value.addr, align 8, !dbg !5885
  %47 = load ptr, ptr %end, align 8, !dbg !5887
  %cmp60 = icmp ne ptr %46, %47, !dbg !5888
  br i1 %cmp60, label %if.then62, label %if.end63, !dbg !5889

if.then62:                                        ; preds = %for.end
  br label %fail, !dbg !5890

if.end63:                                         ; preds = %for.end
  %48 = load ptr, ptr %acl, align 8, !dbg !5891
  store ptr %48, ptr %retval, align 8, !dbg !5892
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup65, !dbg !5892

fail:                                             ; preds = %cleanup, %if.then62
  call void @llvm.dbg.label(metadata !5751), !dbg !5893
  %49 = load ptr, ptr %acl, align 8, !dbg !5894
  call void @posix_acl_release(ptr noundef %49) #14, !dbg !5895
  %call64 = call ptr @ERR_PTR(i64 noundef -22) #14, !dbg !5896
  store ptr %call64, ptr %retval, align 8, !dbg !5897
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup65, !dbg !5897

cleanup65:                                        ; preds = %fail, %if.end63, %cleanup, %if.then18, %if.then14, %if.then10, %if.then4, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %acl) #13, !dbg !5898
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #13, !dbg !5898
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #13, !dbg !5898
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #13, !dbg !5898
  %50 = load ptr, ptr %retval, align 8, !dbg !5898
  ret ptr %50, !dbg !5898
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5899 dso_local void @kfree(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ext4_set_acl(ptr noundef %idmap, ptr noundef %dentry, ptr noundef %acl, i32 noundef %type) #0 align 16 !dbg !5902 {
entry:
  %retval = alloca i32, align 4
  %idmap.addr = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %acl.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %handle = alloca ptr, align 8
  %error = alloca i32, align 4
  %credits = alloca i32, align 4
  %retries = alloca i32, align 4
  %acl_size = alloca i64, align 8
  %inode = alloca ptr, align 8
  %mode = alloca i16, align 2
  %update_mode = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %coerce = alloca %struct.timespec64, align 8
  store ptr %idmap, ptr %idmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idmap.addr, metadata !5904, metadata !DIExpression()), !dbg !5942
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5905, metadata !DIExpression()), !dbg !5943
  store ptr %acl, ptr %acl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %acl.addr, metadata !5906, metadata !DIExpression()), !dbg !5944
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5907, metadata !DIExpression()), !dbg !5945
  call void @llvm.lifetime.start.p0(i64 8, ptr %handle) #13, !dbg !5946
  call void @llvm.dbg.declare(metadata ptr %handle, metadata !5908, metadata !DIExpression()), !dbg !5947
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #13, !dbg !5948
  call void @llvm.dbg.declare(metadata ptr %error, metadata !5933, metadata !DIExpression()), !dbg !5949
  call void @llvm.lifetime.start.p0(i64 4, ptr %credits) #13, !dbg !5948
  call void @llvm.dbg.declare(metadata ptr %credits, metadata !5934, metadata !DIExpression()), !dbg !5950
  call void @llvm.lifetime.start.p0(i64 4, ptr %retries) #13, !dbg !5948
  call void @llvm.dbg.declare(metadata ptr %retries, metadata !5935, metadata !DIExpression()), !dbg !5951
  store i32 0, ptr %retries, align 4, !dbg !5951
  call void @llvm.lifetime.start.p0(i64 8, ptr %acl_size) #13, !dbg !5952
  call void @llvm.dbg.declare(metadata ptr %acl_size, metadata !5936, metadata !DIExpression()), !dbg !5953
  %0 = load ptr, ptr %acl.addr, align 8, !dbg !5954
  %tobool = icmp ne ptr %0, null, !dbg !5954
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5954

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %acl.addr, align 8, !dbg !5955
  %a_count = getelementptr inbounds %struct.posix_acl, ptr %1, i32 0, i32 2, !dbg !5956
  %2 = load i32, ptr %a_count, align 8, !dbg !5956
  %call = call i64 @ext4_acl_size(i32 noundef %2) #14, !dbg !5957
  br label %cond.end, !dbg !5954

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !5954

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call, %cond.true ], [ 0, %cond.false ], !dbg !5954
  store i64 %cond, ptr %acl_size, align 8, !dbg !5953
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #13, !dbg !5958
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !5937, metadata !DIExpression()), !dbg !5959
  %3 = load ptr, ptr %dentry.addr, align 8, !dbg !5960
  %call1 = call ptr @d_inode(ptr noundef %3) #14, !dbg !5961
  store ptr %call1, ptr %inode, align 8, !dbg !5959
  call void @llvm.lifetime.start.p0(i64 2, ptr %mode) #13, !dbg !5962
  call void @llvm.dbg.declare(metadata ptr %mode, metadata !5938, metadata !DIExpression()), !dbg !5963
  %4 = load ptr, ptr %inode, align 8, !dbg !5964
  %i_mode = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 0, !dbg !5965
  %5 = load i16, ptr %i_mode, align 8, !dbg !5965
  store i16 %5, ptr %mode, align 2, !dbg !5963
  call void @llvm.lifetime.start.p0(i64 4, ptr %update_mode) #13, !dbg !5966
  call void @llvm.dbg.declare(metadata ptr %update_mode, metadata !5939, metadata !DIExpression()), !dbg !5967
  store i32 0, ptr %update_mode, align 4, !dbg !5967
  %6 = load ptr, ptr %inode, align 8, !dbg !5968
  %call2 = call i32 @dquot_initialize(ptr noundef %6) #14, !dbg !5969
  store i32 %call2, ptr %error, align 4, !dbg !5970
  %7 = load i32, ptr %error, align 4, !dbg !5971
  %tobool3 = icmp ne i32 %7, 0, !dbg !5971
  br i1 %tobool3, label %if.then, label %if.end, !dbg !5973

if.then:                                          ; preds = %cond.end
  %8 = load i32, ptr %error, align 4, !dbg !5974
  store i32 %8, ptr %retval, align 4, !dbg !5975
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5975

if.end:                                           ; preds = %cond.end
  br label %retry, !dbg !5971

retry:                                            ; preds = %if.then45, %if.end
  call void @llvm.dbg.label(metadata !5940), !dbg !5976
  %9 = load ptr, ptr %inode, align 8, !dbg !5977
  %10 = load i64, ptr %acl_size, align 8, !dbg !5978
  %call4 = call i32 @ext4_xattr_set_credits(ptr noundef %9, i64 noundef %10, i1 noundef zeroext false, ptr noundef %credits) #14, !dbg !5979
  store i32 %call4, ptr %error, align 4, !dbg !5980
  %11 = load i32, ptr %error, align 4, !dbg !5981
  %tobool5 = icmp ne i32 %11, 0, !dbg !5981
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !5983

if.then6:                                         ; preds = %retry
  %12 = load i32, ptr %error, align 4, !dbg !5984
  store i32 %12, ptr %retval, align 4, !dbg !5985
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5985

if.end7:                                          ; preds = %retry
  %13 = load ptr, ptr %inode, align 8, !dbg !5986
  %14 = load i32, ptr %credits, align 4, !dbg !5986
  %15 = load ptr, ptr %inode, align 8, !dbg !5986
  %i_sb = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 9, !dbg !5986
  %16 = load ptr, ptr %i_sb, align 8, !dbg !5986
  %call8 = call i32 @ext4_trans_default_revoke_credits(ptr noundef %16) #14, !dbg !5986
  %call9 = call ptr @__ext4_journal_start(ptr noundef %13, i32 noundef 247, i32 noundef 10, i32 noundef %14, i32 noundef 0, i32 noundef %call8) #14, !dbg !5986
  store ptr %call9, ptr %handle, align 8, !dbg !5987
  %17 = load ptr, ptr %handle, align 8, !dbg !5988
  %call10 = call zeroext i1 @IS_ERR(ptr noundef %17) #14, !dbg !5990
  br i1 %call10, label %if.then11, label %if.end13, !dbg !5991

if.then11:                                        ; preds = %if.end7
  %18 = load ptr, ptr %handle, align 8, !dbg !5992
  %call12 = call i64 @PTR_ERR(ptr noundef %18) #14, !dbg !5993
  %conv = trunc i64 %call12 to i32, !dbg !5993
  store i32 %conv, ptr %retval, align 4, !dbg !5994
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5994

if.end13:                                         ; preds = %if.end7
  %19 = load i32, ptr %type.addr, align 4, !dbg !5995
  %cmp = icmp eq i32 %19, 32768, !dbg !5997
  br i1 %cmp, label %land.lhs.true, label %if.end28, !dbg !5998

land.lhs.true:                                    ; preds = %if.end13
  %20 = load ptr, ptr %acl.addr, align 8, !dbg !5999
  %tobool15 = icmp ne ptr %20, null, !dbg !5999
  br i1 %tobool15, label %if.then16, label %if.end28, !dbg !6000

if.then16:                                        ; preds = %land.lhs.true
  %21 = load ptr, ptr %idmap.addr, align 8, !dbg !6001
  %22 = load ptr, ptr %inode, align 8, !dbg !6003
  %call17 = call i32 @posix_acl_update_mode(ptr noundef %21, ptr noundef %22, ptr noundef %mode, ptr noundef %acl.addr) #14, !dbg !6004
  store i32 %call17, ptr %error, align 4, !dbg !6005
  %23 = load i32, ptr %error, align 4, !dbg !6006
  %tobool18 = icmp ne i32 %23, 0, !dbg !6006
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !6008

if.then19:                                        ; preds = %if.then16
  br label %out_stop, !dbg !6009

if.end20:                                         ; preds = %if.then16
  %24 = load i16, ptr %mode, align 2, !dbg !6010
  %conv21 = zext i16 %24 to i32, !dbg !6010
  %25 = load ptr, ptr %inode, align 8, !dbg !6012
  %i_mode22 = getelementptr inbounds %struct.inode, ptr %25, i32 0, i32 0, !dbg !6013
  %26 = load i16, ptr %i_mode22, align 8, !dbg !6013
  %conv23 = zext i16 %26 to i32, !dbg !6012
  %cmp24 = icmp ne i32 %conv21, %conv23, !dbg !6014
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !6015

if.then26:                                        ; preds = %if.end20
  store i32 1, ptr %update_mode, align 4, !dbg !6016
  br label %if.end27, !dbg !6017

if.end27:                                         ; preds = %if.then26, %if.end20
  br label %if.end28, !dbg !6018

if.end28:                                         ; preds = %if.end27, %land.lhs.true, %if.end13
  %27 = load ptr, ptr %handle, align 8, !dbg !6019
  %28 = load ptr, ptr %inode, align 8, !dbg !6020
  %29 = load i32, ptr %type.addr, align 4, !dbg !6021
  %30 = load ptr, ptr %acl.addr, align 8, !dbg !6022
  %call29 = call i32 @__ext4_set_acl(ptr noundef %27, ptr noundef %28, i32 noundef %29, ptr noundef %30, i32 noundef 0) #14, !dbg !6023
  store i32 %call29, ptr %error, align 4, !dbg !6024
  %31 = load i32, ptr %error, align 4, !dbg !6025
  %tobool30 = icmp ne i32 %31, 0, !dbg !6025
  br i1 %tobool30, label %if.end37, label %land.lhs.true31, !dbg !6027

land.lhs.true31:                                  ; preds = %if.end28
  %32 = load i32, ptr %update_mode, align 4, !dbg !6028
  %tobool32 = icmp ne i32 %32, 0, !dbg !6028
  br i1 %tobool32, label %if.then33, label %if.end37, !dbg !6029

if.then33:                                        ; preds = %land.lhs.true31
  %33 = load i16, ptr %mode, align 2, !dbg !6030
  %34 = load ptr, ptr %inode, align 8, !dbg !6032
  %i_mode34 = getelementptr inbounds %struct.inode, ptr %34, i32 0, i32 0, !dbg !6033
  store i16 %33, ptr %i_mode34, align 8, !dbg !6034
  %35 = load ptr, ptr %inode, align 8, !dbg !6035
  %call35 = call { i64, i64 } @inode_set_ctime_current(ptr noundef %35) #14, !dbg !6036
  %36 = getelementptr inbounds { i64, i64 }, ptr %coerce, i32 0, i32 0, !dbg !6036
  %37 = extractvalue { i64, i64 } %call35, 0, !dbg !6036
  store i64 %37, ptr %36, align 8, !dbg !6036
  %38 = getelementptr inbounds { i64, i64 }, ptr %coerce, i32 0, i32 1, !dbg !6036
  %39 = extractvalue { i64, i64 } %call35, 1, !dbg !6036
  store i64 %39, ptr %38, align 8, !dbg !6036
  %40 = load ptr, ptr %handle, align 8, !dbg !6037
  %41 = load ptr, ptr %inode, align 8, !dbg !6037
  %call36 = call i32 @__ext4_mark_inode_dirty(ptr noundef %40, ptr noundef %41, ptr noundef @__func__.ext4_set_acl, i32 noundef 263) #14, !dbg !6037
  store i32 %call36, ptr %error, align 4, !dbg !6038
  br label %if.end37, !dbg !6039

if.end37:                                         ; preds = %if.then33, %land.lhs.true31, %if.end28
  br label %out_stop, !dbg !6028

out_stop:                                         ; preds = %if.end37, %if.then19
  call void @llvm.dbg.label(metadata !5941), !dbg !6040
  %42 = load ptr, ptr %handle, align 8, !dbg !6041
  %call38 = call i32 @__ext4_journal_stop(ptr noundef @__func__.ext4_set_acl, i32 noundef 266, ptr noundef %42) #14, !dbg !6041
  %43 = load i32, ptr %error, align 4, !dbg !6042
  %cmp39 = icmp eq i32 %43, -28, !dbg !6044
  br i1 %cmp39, label %land.lhs.true41, label %if.end46, !dbg !6045

land.lhs.true41:                                  ; preds = %out_stop
  %44 = load ptr, ptr %inode, align 8, !dbg !6046
  %i_sb42 = getelementptr inbounds %struct.inode, ptr %44, i32 0, i32 9, !dbg !6047
  %45 = load ptr, ptr %i_sb42, align 8, !dbg !6047
  %call43 = call i32 @ext4_should_retry_alloc(ptr noundef %45, ptr noundef %retries) #14, !dbg !6048
  %tobool44 = icmp ne i32 %call43, 0, !dbg !6048
  br i1 %tobool44, label %if.then45, label %if.end46, !dbg !6049

if.then45:                                        ; preds = %land.lhs.true41
  br label %retry, !dbg !6050

if.end46:                                         ; preds = %land.lhs.true41, %out_stop
  %46 = load i32, ptr %error, align 4, !dbg !6051
  store i32 %46, ptr %retval, align 4, !dbg !6052
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6052

cleanup:                                          ; preds = %if.end46, %if.then11, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %update_mode) #13, !dbg !6053
  call void @llvm.lifetime.end.p0(i64 2, ptr %mode) #13, !dbg !6053
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #13, !dbg !6053
  call void @llvm.lifetime.end.p0(i64 8, ptr %acl_size) #13, !dbg !6053
  call void @llvm.lifetime.end.p0(i64 4, ptr %retries) #13, !dbg !6053
  call void @llvm.lifetime.end.p0(i64 4, ptr %credits) #13, !dbg !6053
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #13, !dbg !6053
  call void @llvm.lifetime.end.p0(i64 8, ptr %handle) #13, !dbg !6053
  %47 = load i32, ptr %retval, align 4, !dbg !6053
  ret i32 %47, !dbg !6053
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ext4_acl_size(i32 noundef %count) #3 align 16 !dbg !6054 {
entry:
  %retval = alloca i64, align 8
  %count.addr = alloca i32, align 4
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6058, metadata !DIExpression()), !dbg !6059
  %0 = load i32, ptr %count.addr, align 4, !dbg !6060
  %cmp = icmp sle i32 %0, 4, !dbg !6062
  br i1 %cmp, label %if.then, label %if.else, !dbg !6063

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %count.addr, align 4, !dbg !6064
  %conv = sext i32 %1 to i64, !dbg !6064
  %mul = mul i64 %conv, 4, !dbg !6066
  %add = add i64 4, %mul, !dbg !6067
  store i64 %add, ptr %retval, align 8, !dbg !6068
  br label %return, !dbg !6068

if.else:                                          ; preds = %entry
  %2 = load i32, ptr %count.addr, align 4, !dbg !6069
  %sub = sub i32 %2, 4, !dbg !6071
  %conv1 = sext i32 %sub to i64, !dbg !6072
  %mul2 = mul i64 %conv1, 8, !dbg !6073
  %add3 = add i64 20, %mul2, !dbg !6074
  store i64 %add3, ptr %retval, align 8, !dbg !6075
  br label %return, !dbg !6075

return:                                           ; preds = %if.else, %if.then
  %3 = load i64, ptr %retval, align 8, !dbg !6076
  ret i64 %3, !dbg !6076
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @d_inode(ptr noundef %dentry) #3 align 16 !dbg !6077 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !6081, metadata !DIExpression()), !dbg !6082
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !6083
  %d_inode = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5, !dbg !6084
  %1 = load ptr, ptr %d_inode, align 8, !dbg !6084
  ret ptr %1, !dbg !6085
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6086 dso_local i32 @dquot_initialize(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6088 dso_local i32 @ext4_xattr_set_credits(ptr noundef, i64 noundef, i1 noundef zeroext, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__ext4_journal_start(ptr noundef %inode, i32 noundef %line, i32 noundef %type, i32 noundef %blocks, i32 noundef %rsv_blocks, i32 noundef %revoke_creds) #3 align 16 !dbg !6091 {
entry:
  %inode.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %blocks.addr = alloca i32, align 4
  %rsv_blocks.addr = alloca i32, align 4
  %revoke_creds.addr = alloca i32, align 4
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6096, metadata !DIExpression()), !dbg !6102
  store i32 %line, ptr %line.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %line.addr, metadata !6097, metadata !DIExpression()), !dbg !6103
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6098, metadata !DIExpression()), !dbg !6104
  store i32 %blocks, ptr %blocks.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %blocks.addr, metadata !6099, metadata !DIExpression()), !dbg !6105
  store i32 %rsv_blocks, ptr %rsv_blocks.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %rsv_blocks.addr, metadata !6100, metadata !DIExpression()), !dbg !6106
  store i32 %revoke_creds, ptr %revoke_creds.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %revoke_creds.addr, metadata !6101, metadata !DIExpression()), !dbg !6107
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !6108
  %1 = load ptr, ptr %inode.addr, align 8, !dbg !6109
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9, !dbg !6110
  %2 = load ptr, ptr %i_sb, align 8, !dbg !6110
  %3 = load i32, ptr %line.addr, align 4, !dbg !6111
  %4 = load i32, ptr %type.addr, align 4, !dbg !6112
  %5 = load i32, ptr %blocks.addr, align 4, !dbg !6113
  %6 = load i32, ptr %rsv_blocks.addr, align 4, !dbg !6114
  %7 = load i32, ptr %revoke_creds.addr, align 4, !dbg !6115
  %call = call ptr @__ext4_journal_start_sb(ptr noundef %0, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #14, !dbg !6116
  ret ptr %call, !dbg !6117
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ext4_trans_default_revoke_credits(ptr noundef %sb) #3 align 16 !dbg !6118 {
entry:
  %sb.addr = alloca ptr, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !6120, metadata !DIExpression()), !dbg !6121
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !6122
  %call = call i32 @ext4_free_metadata_revoke_credits(ptr noundef %0, i32 noundef 8) #14, !dbg !6123
  ret i32 %call, !dbg !6124
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #3 align 16 !dbg !6125 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6129, metadata !DIExpression()), !dbg !6130
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6131
  %1 = ptrtoint ptr %0 to i64, !dbg !6131
  %2 = inttoptr i64 %1 to ptr, !dbg !6131
  %3 = ptrtoint ptr %2 to i64, !dbg !6131
  %cmp = icmp uge i64 %3, -4095, !dbg !6131
  %lnot = xor i1 %cmp, true, !dbg !6131
  %lnot1 = xor i1 %lnot, true, !dbg !6131
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6131
  %conv = sext i32 %lnot.ext to i64, !dbg !6131
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6131
  %tobool = icmp ne i64 %expval, 0, !dbg !6131
  ret i1 %tobool, !dbg !6132
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #3 align 16 !dbg !6133 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6137, metadata !DIExpression()), !dbg !6138
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6139
  %1 = ptrtoint ptr %0 to i64, !dbg !6140
  ret i64 %1, !dbg !6141
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6142 dso_local i32 @posix_acl_update_mode(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__ext4_set_acl(ptr noundef %handle, ptr noundef %inode, i32 noundef %type, ptr noundef %acl, i32 noundef %xattr_flags) #0 align 16 !dbg !6146 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca ptr, align 8
  %inode.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %acl.addr = alloca ptr, align 8
  %xattr_flags.addr = alloca i32, align 4
  %name_index = alloca i32, align 4
  %value = alloca ptr, align 8
  %size = alloca i64, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !6150, metadata !DIExpression()), !dbg !6159
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6151, metadata !DIExpression()), !dbg !6160
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6152, metadata !DIExpression()), !dbg !6161
  store ptr %acl, ptr %acl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %acl.addr, metadata !6153, metadata !DIExpression()), !dbg !6162
  store i32 %xattr_flags, ptr %xattr_flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %xattr_flags.addr, metadata !6154, metadata !DIExpression()), !dbg !6163
  call void @llvm.lifetime.start.p0(i64 4, ptr %name_index) #13, !dbg !6164
  call void @llvm.dbg.declare(metadata ptr %name_index, metadata !6155, metadata !DIExpression()), !dbg !6165
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #13, !dbg !6166
  call void @llvm.dbg.declare(metadata ptr %value, metadata !6156, metadata !DIExpression()), !dbg !6167
  store ptr null, ptr %value, align 8, !dbg !6167
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #13, !dbg !6168
  call void @llvm.dbg.declare(metadata ptr %size, metadata !6157, metadata !DIExpression()), !dbg !6169
  store i64 0, ptr %size, align 8, !dbg !6169
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #13, !dbg !6170
  call void @llvm.dbg.declare(metadata ptr %error, metadata !6158, metadata !DIExpression()), !dbg !6171
  %0 = load i32, ptr %type.addr, align 4, !dbg !6172
  switch i32 %0, label %sw.default [
    i32 32768, label %sw.bb
    i32 16384, label %sw.bb1
  ], !dbg !6173

sw.bb:                                            ; preds = %entry
  store i32 2, ptr %name_index, align 4, !dbg !6174
  br label %sw.epilog, !dbg !6176

sw.bb1:                                           ; preds = %entry
  store i32 3, ptr %name_index, align 4, !dbg !6177
  %1 = load ptr, ptr %inode.addr, align 8, !dbg !6178
  %i_mode = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 0, !dbg !6178
  %2 = load i16, ptr %i_mode, align 8, !dbg !6178
  %conv = zext i16 %2 to i32, !dbg !6178
  %and = and i32 %conv, 61440, !dbg !6178
  %cmp = icmp eq i32 %and, 16384, !dbg !6178
  br i1 %cmp, label %if.end, label %if.then, !dbg !6180

if.then:                                          ; preds = %sw.bb1
  %3 = load ptr, ptr %acl.addr, align 8, !dbg !6181
  %tobool = icmp ne ptr %3, null, !dbg !6181
  %4 = zext i1 %tobool to i64, !dbg !6181
  %cond = select i1 %tobool, i32 -13, i32 0, !dbg !6181
  store i32 %cond, ptr %retval, align 4, !dbg !6182
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6182

if.end:                                           ; preds = %sw.bb1
  br label %sw.epilog, !dbg !6183

sw.default:                                       ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !6184
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6184

sw.epilog:                                        ; preds = %if.end, %sw.bb
  %5 = load ptr, ptr %acl.addr, align 8, !dbg !6185
  %tobool3 = icmp ne ptr %5, null, !dbg !6185
  br i1 %tobool3, label %if.then4, label %if.end10, !dbg !6187

if.then4:                                         ; preds = %sw.epilog
  %6 = load ptr, ptr %acl.addr, align 8, !dbg !6188
  %call = call ptr @ext4_acl_to_disk(ptr noundef %6, ptr noundef %size) #14, !dbg !6190
  store ptr %call, ptr %value, align 8, !dbg !6191
  %7 = load ptr, ptr %value, align 8, !dbg !6192
  %call5 = call zeroext i1 @IS_ERR(ptr noundef %7) #14, !dbg !6194
  br i1 %call5, label %if.then6, label %if.end9, !dbg !6195

if.then6:                                         ; preds = %if.then4
  %8 = load ptr, ptr %value, align 8, !dbg !6196
  %call7 = call i64 @PTR_ERR(ptr noundef %8) #14, !dbg !6197
  %conv8 = trunc i64 %call7 to i32, !dbg !6198
  store i32 %conv8, ptr %retval, align 4, !dbg !6199
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6199

if.end9:                                          ; preds = %if.then4
  br label %if.end10, !dbg !6200

if.end10:                                         ; preds = %if.end9, %sw.epilog
  %9 = load ptr, ptr %handle.addr, align 8, !dbg !6201
  %10 = load ptr, ptr %inode.addr, align 8, !dbg !6202
  %11 = load i32, ptr %name_index, align 4, !dbg !6203
  %12 = load ptr, ptr %value, align 8, !dbg !6204
  %13 = load i64, ptr %size, align 8, !dbg !6205
  %14 = load i32, ptr %xattr_flags.addr, align 4, !dbg !6206
  %call11 = call i32 @ext4_xattr_set_handle(ptr noundef %9, ptr noundef %10, i32 noundef %11, ptr noundef @.str.1, ptr noundef %12, i64 noundef %13, i32 noundef %14) #14, !dbg !6207
  store i32 %call11, ptr %error, align 4, !dbg !6208
  %15 = load ptr, ptr %value, align 8, !dbg !6209
  call void @kfree(ptr noundef %15) #14, !dbg !6210
  %16 = load i32, ptr %error, align 4, !dbg !6211
  %tobool12 = icmp ne i32 %16, 0, !dbg !6211
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !6213

if.then13:                                        ; preds = %if.end10
  %17 = load ptr, ptr %inode.addr, align 8, !dbg !6214
  %18 = load i32, ptr %type.addr, align 4, !dbg !6215
  %19 = load ptr, ptr %acl.addr, align 8, !dbg !6216
  call void @set_cached_acl(ptr noundef %17, i32 noundef %18, ptr noundef %19) #14, !dbg !6217
  br label %if.end14, !dbg !6217

if.end14:                                         ; preds = %if.then13, %if.end10
  %20 = load i32, ptr %error, align 4, !dbg !6218
  store i32 %20, ptr %retval, align 4, !dbg !6219
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6219

cleanup:                                          ; preds = %if.end14, %if.then6, %sw.default, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #13, !dbg !6220
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #13, !dbg !6220
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #13, !dbg !6220
  call void @llvm.lifetime.end.p0(i64 4, ptr %name_index) #13, !dbg !6220
  %21 = load i32, ptr %retval, align 4, !dbg !6220
  ret i32 %21, !dbg !6220
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6221 dso_local { i64, i64 } @inode_set_ctime_current(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6224 dso_local i32 @__ext4_mark_inode_dirty(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6227 dso_local i32 @__ext4_journal_stop(ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6230 dso_local i32 @ext4_should_retry_alloc(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ext4_init_acl(ptr noundef %handle, ptr noundef %inode, ptr noundef %dir) #0 align 16 !dbg !6233 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca ptr, align 8
  %inode.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %default_acl = alloca ptr, align 8
  %acl = alloca ptr, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !6237, metadata !DIExpression()), !dbg !6243
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6238, metadata !DIExpression()), !dbg !6244
  store ptr %dir, ptr %dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !6239, metadata !DIExpression()), !dbg !6245
  call void @llvm.lifetime.start.p0(i64 8, ptr %default_acl) #13, !dbg !6246
  call void @llvm.dbg.declare(metadata ptr %default_acl, metadata !6240, metadata !DIExpression()), !dbg !6247
  call void @llvm.lifetime.start.p0(i64 8, ptr %acl) #13, !dbg !6246
  call void @llvm.dbg.declare(metadata ptr %acl, metadata !6241, metadata !DIExpression()), !dbg !6248
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #13, !dbg !6249
  call void @llvm.dbg.declare(metadata ptr %error, metadata !6242, metadata !DIExpression()), !dbg !6250
  %0 = load ptr, ptr %dir.addr, align 8, !dbg !6251
  %1 = load ptr, ptr %inode.addr, align 8, !dbg !6252
  %i_mode = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 0, !dbg !6253
  %call = call i32 @posix_acl_create(ptr noundef %0, ptr noundef %i_mode, ptr noundef %default_acl, ptr noundef %acl) #14, !dbg !6254
  store i32 %call, ptr %error, align 4, !dbg !6255
  %2 = load i32, ptr %error, align 4, !dbg !6256
  %tobool = icmp ne i32 %2, 0, !dbg !6256
  br i1 %tobool, label %if.then, label %if.end, !dbg !6258

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %error, align 4, !dbg !6259
  store i32 %3, ptr %retval, align 4, !dbg !6260
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6260

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %default_acl, align 8, !dbg !6261
  %tobool1 = icmp ne ptr %4, null, !dbg !6261
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !6263

if.then2:                                         ; preds = %if.end
  %5 = load ptr, ptr %handle.addr, align 8, !dbg !6264
  %6 = load ptr, ptr %inode.addr, align 8, !dbg !6266
  %7 = load ptr, ptr %default_acl, align 8, !dbg !6267
  %call3 = call i32 @__ext4_set_acl(ptr noundef %5, ptr noundef %6, i32 noundef 16384, ptr noundef %7, i32 noundef 1) #14, !dbg !6268
  store i32 %call3, ptr %error, align 4, !dbg !6269
  %8 = load ptr, ptr %default_acl, align 8, !dbg !6270
  call void @posix_acl_release(ptr noundef %8) #14, !dbg !6271
  br label %if.end4, !dbg !6272

if.else:                                          ; preds = %if.end
  %9 = load ptr, ptr %inode.addr, align 8, !dbg !6273
  %i_default_acl = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 7, !dbg !6275
  store ptr null, ptr %i_default_acl, align 8, !dbg !6276
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then2
  %10 = load ptr, ptr %acl, align 8, !dbg !6277
  %tobool5 = icmp ne ptr %10, null, !dbg !6277
  br i1 %tobool5, label %if.then6, label %if.else11, !dbg !6279

if.then6:                                         ; preds = %if.end4
  %11 = load i32, ptr %error, align 4, !dbg !6280
  %tobool7 = icmp ne i32 %11, 0, !dbg !6280
  br i1 %tobool7, label %if.end10, label %if.then8, !dbg !6283

if.then8:                                         ; preds = %if.then6
  %12 = load ptr, ptr %handle.addr, align 8, !dbg !6284
  %13 = load ptr, ptr %inode.addr, align 8, !dbg !6285
  %14 = load ptr, ptr %acl, align 8, !dbg !6286
  %call9 = call i32 @__ext4_set_acl(ptr noundef %12, ptr noundef %13, i32 noundef 32768, ptr noundef %14, i32 noundef 1) #14, !dbg !6287
  store i32 %call9, ptr %error, align 4, !dbg !6288
  br label %if.end10, !dbg !6289

if.end10:                                         ; preds = %if.then8, %if.then6
  %15 = load ptr, ptr %acl, align 8, !dbg !6290
  call void @posix_acl_release(ptr noundef %15) #14, !dbg !6291
  br label %if.end12, !dbg !6292

if.else11:                                        ; preds = %if.end4
  %16 = load ptr, ptr %inode.addr, align 8, !dbg !6293
  %i_acl = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 6, !dbg !6295
  store ptr null, ptr %i_acl, align 8, !dbg !6296
  br label %if.end12

if.end12:                                         ; preds = %if.else11, %if.end10
  %17 = load i32, ptr %error, align 4, !dbg !6297
  store i32 %17, ptr %retval, align 4, !dbg !6298
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6298

cleanup:                                          ; preds = %if.end12, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #13, !dbg !6299
  call void @llvm.lifetime.end.p0(i64 8, ptr %acl) #13, !dbg !6299
  call void @llvm.lifetime.end.p0(i64 8, ptr %default_acl) #13, !dbg !6299
  %18 = load i32, ptr %retval, align 4, !dbg !6299
  ret i32 %18, !dbg !6299
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6300 dso_local i32 @posix_acl_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @posix_acl_release(ptr noundef %acl) #3 align 16 !dbg !6303 {
entry:
  %acl.addr = alloca ptr, align 8
  %___p = alloca ptr, align 8
  store ptr %acl, ptr %acl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %acl.addr, metadata !6307, metadata !DIExpression()), !dbg !6311
  %0 = load ptr, ptr %acl.addr, align 8, !dbg !6312
  %tobool = icmp ne ptr %0, null, !dbg !6312
  br i1 %tobool, label %land.lhs.true, label %if.end6, !dbg !6313

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %acl.addr, align 8, !dbg !6314
  %a_refcount = getelementptr inbounds %struct.posix_acl, ptr %1, i32 0, i32 0, !dbg !6315
  %call = call zeroext i1 @refcount_dec_and_test(ptr noundef %a_refcount) #14, !dbg !6316
  br i1 %call, label %if.then, label %if.end6, !dbg !6317

if.then:                                          ; preds = %land.lhs.true
  br label %do.body, !dbg !6318

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %___p) #13, !dbg !6319
  call void @llvm.dbg.declare(metadata ptr %___p, metadata !6308, metadata !DIExpression()), !dbg !6319
  %2 = load ptr, ptr %acl.addr, align 8, !dbg !6319
  store ptr %2, ptr %___p, align 8, !dbg !6319
  %3 = load ptr, ptr %___p, align 8, !dbg !6320
  %tobool1 = icmp ne ptr %3, null, !dbg !6320
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !6319

if.then2:                                         ; preds = %do.body
  br label %do.body3, !dbg !6322

do.body3:                                         ; preds = %if.then2
  br label %do.cond, !dbg !6324

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !6324

do.end:                                           ; preds = %do.cond
  %4 = load ptr, ptr %___p, align 8, !dbg !6322
  %a_rcu = getelementptr inbounds %struct.posix_acl, ptr %4, i32 0, i32 1, !dbg !6322
  %5 = load ptr, ptr %___p, align 8, !dbg !6322
  call void @kvfree_call_rcu(ptr noundef %a_rcu, ptr noundef %5) #14, !dbg !6322
  br label %if.end, !dbg !6322

if.end:                                           ; preds = %do.end, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %___p) #13, !dbg !6318
  br label %do.end5, !dbg !6319

do.end5:                                          ; preds = %if.end
  br label %if.end6, !dbg !6319

if.end6:                                          ; preds = %do.end5, %land.lhs.true, %entry
  ret void, !dbg !6326
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6327 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #8 align 16 !dbg !6328 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6332, metadata !DIExpression()), !dbg !6334
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6333, metadata !DIExpression()), !dbg !6335
  %0 = load i64, ptr %size.addr, align 8, !dbg !6336
  %tobool = icmp ne i64 %0, 0, !dbg !6336
  br i1 %tobool, label %if.end, label %if.then, !dbg !6338

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6339
  br label %return, !dbg !6339

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6340
  %cmp = icmp ule i64 %1, 8, !dbg !6342
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6343

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6344
  br label %return, !dbg !6344

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6345
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6347
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6348

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6349
  %cmp4 = icmp ule i64 %3, 96, !dbg !6350
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6351

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6352
  br label %return, !dbg !6352

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6353
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6355
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6356

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6357
  %cmp9 = icmp ule i64 %5, 192, !dbg !6358
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6359

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6360
  br label %return, !dbg !6360

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6361
  %cmp12 = icmp ule i64 %6, 8, !dbg !6363
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6364

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6365
  br label %return, !dbg !6365

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6366
  %cmp15 = icmp ule i64 %7, 16, !dbg !6368
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6369

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6370
  br label %return, !dbg !6370

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6371
  %cmp18 = icmp ule i64 %8, 32, !dbg !6373
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6374

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6375
  br label %return, !dbg !6375

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6376
  %cmp21 = icmp ule i64 %9, 64, !dbg !6378
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6379

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6380
  br label %return, !dbg !6380

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6381
  %cmp24 = icmp ule i64 %10, 128, !dbg !6383
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6384

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6385
  br label %return, !dbg !6385

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6386
  %cmp27 = icmp ule i64 %11, 256, !dbg !6388
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6389

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6390
  br label %return, !dbg !6390

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6391
  %cmp30 = icmp ule i64 %12, 512, !dbg !6393
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6394

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6395
  br label %return, !dbg !6395

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6396
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6398
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6399

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6400
  br label %return, !dbg !6400

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6401
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6403
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6404

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6405
  br label %return, !dbg !6405

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6406
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6408
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6409

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6410
  br label %return, !dbg !6410

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6411
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6413
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6414

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6415
  br label %return, !dbg !6415

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6416
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6418
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6419

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6420
  br label %return, !dbg !6420

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6421
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6423
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6424

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6425
  br label %return, !dbg !6425

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6426
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6428
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6429

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6430
  br label %return, !dbg !6430

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6431
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6433
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6434

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6435
  br label %return, !dbg !6435

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6436
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6438
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6439

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6440
  br label %return, !dbg !6440

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6441
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6443
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6444

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6445
  br label %return, !dbg !6445

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6446
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6448
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6449

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6450
  br label %return, !dbg !6450

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6451
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6453
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6454

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6455
  br label %return, !dbg !6455

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6456, !range !5610, !noundef !1416
  %tobool69 = trunc i8 %25 to i1, !dbg !6456
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6458

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6459

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_245() #17, !dbg !6460, !srcloc !6463
  unreachable, !dbg !6460

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6464

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6465

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6466

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6468

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6466

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 480, i32 0, i64 12) #13, !dbg !6470, !srcloc !6472
  br label %do.end75, !dbg !6470

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6466

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6473
  br label %return, !dbg !6473

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6474
  ret i32 %26, !dbg !6474
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6475 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #8 align 16 !dbg !6478 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6482, metadata !DIExpression()), !dbg !6484
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6483, metadata !DIExpression()), !dbg !6485
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6486
  %and = and i32 %0, 17, !dbg !6486
  %cmp = icmp eq i32 %and, 0, !dbg !6486
  %lnot = xor i1 %cmp, true, !dbg !6486
  %lnot1 = xor i1 %lnot, true, !dbg !6486
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6486
  %conv = sext i32 %lnot.ext to i64, !dbg !6486
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6486
  %tobool = icmp ne i64 %expval, 0, !dbg !6486
  br i1 %tobool, label %if.then, label %if.end, !dbg !6488

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6489
  br label %return, !dbg !6489

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6490
  %and2 = and i32 %1, 1, !dbg !6492
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6492
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6493

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6494
  br label %return, !dbg !6494

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6495
  br label %return, !dbg !6495

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6497
  ret i32 %2, !dbg !6497
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6498 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #7

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6499 dso_local void @__compiletime_assert_245() #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ext4_acl_count(i64 noundef %size) #3 align 16 !dbg !6500 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %s = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6504, metadata !DIExpression()), !dbg !6506
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #13, !dbg !6507
  call void @llvm.dbg.declare(metadata ptr %s, metadata !6505, metadata !DIExpression()), !dbg !6508
  %0 = load i64, ptr %size.addr, align 8, !dbg !6509
  %sub = sub i64 %0, 4, !dbg !6509
  store i64 %sub, ptr %size.addr, align 8, !dbg !6509
  %1 = load i64, ptr %size.addr, align 8, !dbg !6510
  %sub1 = sub i64 %1, 16, !dbg !6511
  store i64 %sub1, ptr %s, align 8, !dbg !6512
  %2 = load i64, ptr %s, align 8, !dbg !6513
  %cmp = icmp slt i64 %2, 0, !dbg !6515
  br i1 %cmp, label %if.then, label %if.else, !dbg !6516

if.then:                                          ; preds = %entry
  %3 = load i64, ptr %size.addr, align 8, !dbg !6517
  %rem = urem i64 %3, 4, !dbg !6520
  %tobool = icmp ne i64 %rem, 0, !dbg !6520
  br i1 %tobool, label %if.then2, label %if.end, !dbg !6521

if.then2:                                         ; preds = %if.then
  store i32 -1, ptr %retval, align 4, !dbg !6522
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6522

if.end:                                           ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6523
  %div = udiv i64 %4, 4, !dbg !6524
  %conv = trunc i64 %div to i32, !dbg !6523
  store i32 %conv, ptr %retval, align 4, !dbg !6525
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6525

if.else:                                          ; preds = %entry
  %5 = load i64, ptr %s, align 8, !dbg !6526
  %rem3 = urem i64 %5, 8, !dbg !6529
  %tobool4 = icmp ne i64 %rem3, 0, !dbg !6529
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !6530

if.then5:                                         ; preds = %if.else
  store i32 -1, ptr %retval, align 4, !dbg !6531
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6531

if.end6:                                          ; preds = %if.else
  %6 = load i64, ptr %s, align 8, !dbg !6532
  %div7 = udiv i64 %6, 8, !dbg !6533
  %add = add i64 %div7, 4, !dbg !6534
  %conv8 = trunc i64 %add to i32, !dbg !6532
  store i32 %conv8, ptr %retval, align 4, !dbg !6535
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6535

cleanup:                                          ; preds = %if.end6, %if.then5, %if.end, %if.then2
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #13, !dbg !6536
  %7 = load i32, ptr %retval, align 4, !dbg !6536
  ret i32 %7, !dbg !6536
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6537 dso_local ptr @posix_acl_alloc(i32 noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @make_kuid(ptr noundef %from, i32 noundef %uid) #3 align 16 !dbg !6540 {
entry:
  %retval = alloca %struct.kuid_t, align 4
  %from.addr = alloca ptr, align 8
  %uid.addr = alloca i32, align 4
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6544, metadata !DIExpression()), !dbg !6546
  store i32 %uid, ptr %uid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %uid.addr, metadata !6545, metadata !DIExpression()), !dbg !6547
  %val = getelementptr inbounds %struct.kuid_t, ptr %retval, i32 0, i32 0, !dbg !6548
  %0 = load i32, ptr %uid.addr, align 4, !dbg !6548
  store i32 %0, ptr %val, align 4, !dbg !6548
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %retval, i32 0, i32 0, !dbg !6549
  %1 = load i32, ptr %coerce.dive, align 4, !dbg !6549
  ret i32 %1, !dbg !6549
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @make_kgid(ptr noundef %from, i32 noundef %gid) #3 align 16 !dbg !6550 {
entry:
  %retval = alloca %struct.kgid_t, align 4
  %from.addr = alloca ptr, align 8
  %gid.addr = alloca i32, align 4
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6554, metadata !DIExpression()), !dbg !6556
  store i32 %gid, ptr %gid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gid.addr, metadata !6555, metadata !DIExpression()), !dbg !6557
  %val = getelementptr inbounds %struct.kgid_t, ptr %retval, i32 0, i32 0, !dbg !6558
  %0 = load i32, ptr %gid.addr, align 4, !dbg !6558
  store i32 %0, ptr %val, align 4, !dbg !6558
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %retval, i32 0, i32 0, !dbg !6559
  %1 = load i32, ptr %coerce.dive, align 4, !dbg !6559
  ret i32 %1, !dbg !6559
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6560 dso_local ptr @__ext4_journal_start_sb(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ext4_free_metadata_revoke_credits(ptr noundef %sb, i32 noundef %blocks) #3 align 16 !dbg !6563 {
entry:
  %sb.addr = alloca ptr, align 8
  %blocks.addr = alloca i32, align 4
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !6565, metadata !DIExpression()), !dbg !6567
  store i32 %blocks, ptr %blocks.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %blocks.addr, metadata !6566, metadata !DIExpression()), !dbg !6568
  %0 = load i32, ptr %blocks.addr, align 4, !dbg !6569
  %1 = load ptr, ptr %sb.addr, align 8, !dbg !6570
  %call = call ptr @EXT4_SB(ptr noundef %1) #14, !dbg !6571
  %s_cluster_ratio = getelementptr inbounds %struct.ext4_sb_info, ptr %call, i32 0, i32 11, !dbg !6572
  %2 = load i32, ptr %s_cluster_ratio, align 16, !dbg !6572
  %mul = mul i32 %0, %2, !dbg !6573
  ret i32 %mul, !dbg !6574
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @EXT4_SB(ptr noundef %sb) #3 align 16 !dbg !6575 {
entry:
  %sb.addr = alloca ptr, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !6995, metadata !DIExpression()), !dbg !6996
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !6997
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 29, !dbg !6998
  %1 = load ptr, ptr %s_fs_info, align 32, !dbg !6998
  ret ptr %1, !dbg !6999
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ext4_acl_to_disk(ptr noundef %acl, ptr noundef %size) #0 align 16 !dbg !7000 {
entry:
  %retval = alloca ptr, align 8
  %acl.addr = alloca ptr, align 8
  %size.addr = alloca ptr, align 8
  %ext_acl = alloca ptr, align 8
  %e = alloca ptr, align 8
  %n = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %acl_e = alloca ptr, align 8
  %entry7 = alloca ptr, align 8
  store ptr %acl, ptr %acl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %acl.addr, metadata !7006, metadata !DIExpression()), !dbg !7019
  store ptr %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7007, metadata !DIExpression()), !dbg !7020
  call void @llvm.lifetime.start.p0(i64 8, ptr %ext_acl) #13, !dbg !7021
  call void @llvm.dbg.declare(metadata ptr %ext_acl, metadata !7008, metadata !DIExpression()), !dbg !7022
  call void @llvm.lifetime.start.p0(i64 8, ptr %e) #13, !dbg !7023
  call void @llvm.dbg.declare(metadata ptr %e, metadata !7009, metadata !DIExpression()), !dbg !7024
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #13, !dbg !7025
  call void @llvm.dbg.declare(metadata ptr %n, metadata !7010, metadata !DIExpression()), !dbg !7026
  %0 = load ptr, ptr %acl.addr, align 8, !dbg !7027
  %a_count = getelementptr inbounds %struct.posix_acl, ptr %0, i32 0, i32 2, !dbg !7028
  %1 = load i32, ptr %a_count, align 8, !dbg !7028
  %call = call i64 @ext4_acl_size(i32 noundef %1) #14, !dbg !7029
  %2 = load ptr, ptr %size.addr, align 8, !dbg !7030
  store i64 %call, ptr %2, align 8, !dbg !7031
  %3 = load ptr, ptr %acl.addr, align 8, !dbg !7032
  %a_count1 = getelementptr inbounds %struct.posix_acl, ptr %3, i32 0, i32 2, !dbg !7033
  %4 = load i32, ptr %a_count1, align 8, !dbg !7033
  %conv = zext i32 %4 to i64, !dbg !7032
  %mul = mul i64 %conv, 8, !dbg !7034
  %add = add i64 4, %mul, !dbg !7035
  %call2 = call noalias ptr @kmalloc(i64 noundef %add, i32 noundef 3136) #15, !dbg !7036
  store ptr %call2, ptr %ext_acl, align 8, !dbg !7037
  %5 = load ptr, ptr %ext_acl, align 8, !dbg !7038
  %tobool = icmp ne ptr %5, null, !dbg !7038
  br i1 %tobool, label %if.end, label %if.then, !dbg !7040

if.then:                                          ; preds = %entry
  %call3 = call ptr @ERR_PTR(i64 noundef -12) #14, !dbg !7041
  store ptr %call3, ptr %retval, align 8, !dbg !7042
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup23, !dbg !7042

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %ext_acl, align 8, !dbg !7043
  %a_version = getelementptr inbounds %struct.ext4_acl_header, ptr %6, i32 0, i32 0, !dbg !7044
  store i32 1, ptr %a_version, align 4, !dbg !7045
  %7 = load ptr, ptr %ext_acl, align 8, !dbg !7046
  %add.ptr = getelementptr i8, ptr %7, i64 4, !dbg !7047
  store ptr %add.ptr, ptr %e, align 8, !dbg !7048
  store i64 0, ptr %n, align 8, !dbg !7049
  br label %for.cond, !dbg !7050

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i64, ptr %n, align 8, !dbg !7051
  %9 = load ptr, ptr %acl.addr, align 8, !dbg !7052
  %a_count4 = getelementptr inbounds %struct.posix_acl, ptr %9, i32 0, i32 2, !dbg !7053
  %10 = load i32, ptr %a_count4, align 8, !dbg !7053
  %conv5 = zext i32 %10 to i64, !dbg !7052
  %cmp = icmp ult i64 %8, %conv5, !dbg !7054
  br i1 %cmp, label %for.body, label %for.end, !dbg !7055

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %acl_e) #13, !dbg !7056
  call void @llvm.dbg.declare(metadata ptr %acl_e, metadata !7011, metadata !DIExpression()), !dbg !7057
  %11 = load ptr, ptr %acl.addr, align 8, !dbg !7058
  %a_entries = getelementptr inbounds %struct.posix_acl, ptr %11, i32 0, i32 3, !dbg !7059
  %12 = load i64, ptr %n, align 8, !dbg !7060
  %arrayidx = getelementptr [0 x %struct.posix_acl_entry], ptr %a_entries, i64 0, i64 %12, !dbg !7058
  store ptr %arrayidx, ptr %acl_e, align 8, !dbg !7057
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry7) #13, !dbg !7061
  call void @llvm.dbg.declare(metadata ptr %entry7, metadata !7017, metadata !DIExpression()), !dbg !7062
  %13 = load ptr, ptr %e, align 8, !dbg !7063
  store ptr %13, ptr %entry7, align 8, !dbg !7062
  %14 = load ptr, ptr %acl_e, align 8, !dbg !7064
  %e_tag = getelementptr inbounds %struct.posix_acl_entry, ptr %14, i32 0, i32 0, !dbg !7064
  %15 = load i16, ptr %e_tag, align 4, !dbg !7064
  %16 = load ptr, ptr %entry7, align 8, !dbg !7065
  %e_tag8 = getelementptr inbounds %struct.ext4_acl_entry, ptr %16, i32 0, i32 0, !dbg !7066
  store i16 %15, ptr %e_tag8, align 4, !dbg !7067
  %17 = load ptr, ptr %acl_e, align 8, !dbg !7068
  %e_perm = getelementptr inbounds %struct.posix_acl_entry, ptr %17, i32 0, i32 1, !dbg !7068
  %18 = load i16, ptr %e_perm, align 2, !dbg !7068
  %19 = load ptr, ptr %entry7, align 8, !dbg !7069
  %e_perm9 = getelementptr inbounds %struct.ext4_acl_entry, ptr %19, i32 0, i32 1, !dbg !7070
  store i16 %18, ptr %e_perm9, align 2, !dbg !7071
  %20 = load ptr, ptr %acl_e, align 8, !dbg !7072
  %e_tag10 = getelementptr inbounds %struct.posix_acl_entry, ptr %20, i32 0, i32 0, !dbg !7073
  %21 = load i16, ptr %e_tag10, align 4, !dbg !7073
  %conv11 = sext i16 %21 to i32, !dbg !7072
  switch i32 %conv11, label %sw.default [
    i32 2, label %sw.bb
    i32 8, label %sw.bb14
    i32 1, label %sw.bb19
    i32 4, label %sw.bb19
    i32 16, label %sw.bb19
    i32 32, label %sw.bb19
  ], !dbg !7074

sw.bb:                                            ; preds = %for.body
  %22 = load ptr, ptr %acl_e, align 8, !dbg !7075
  %23 = getelementptr inbounds %struct.posix_acl_entry, ptr %22, i32 0, i32 2, !dbg !7075
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %23, i32 0, i32 0, !dbg !7075
  %24 = load i32, ptr %coerce.dive, align 4, !dbg !7075
  %call12 = call i32 @from_kuid(ptr noundef @init_user_ns, i32 %24) #14, !dbg !7075
  %25 = load ptr, ptr %entry7, align 8, !dbg !7077
  %e_id = getelementptr inbounds %struct.ext4_acl_entry, ptr %25, i32 0, i32 2, !dbg !7078
  store i32 %call12, ptr %e_id, align 4, !dbg !7079
  %26 = load ptr, ptr %e, align 8, !dbg !7080
  %add.ptr13 = getelementptr i8, ptr %26, i64 8, !dbg !7080
  store ptr %add.ptr13, ptr %e, align 8, !dbg !7080
  br label %sw.epilog, !dbg !7081

sw.bb14:                                          ; preds = %for.body
  %27 = load ptr, ptr %acl_e, align 8, !dbg !7082
  %28 = getelementptr inbounds %struct.posix_acl_entry, ptr %27, i32 0, i32 2, !dbg !7082
  %coerce.dive15 = getelementptr inbounds %struct.kgid_t, ptr %28, i32 0, i32 0, !dbg !7082
  %29 = load i32, ptr %coerce.dive15, align 4, !dbg !7082
  %call16 = call i32 @from_kgid(ptr noundef @init_user_ns, i32 %29) #14, !dbg !7082
  %30 = load ptr, ptr %entry7, align 8, !dbg !7083
  %e_id17 = getelementptr inbounds %struct.ext4_acl_entry, ptr %30, i32 0, i32 2, !dbg !7084
  store i32 %call16, ptr %e_id17, align 4, !dbg !7085
  %31 = load ptr, ptr %e, align 8, !dbg !7086
  %add.ptr18 = getelementptr i8, ptr %31, i64 8, !dbg !7086
  store ptr %add.ptr18, ptr %e, align 8, !dbg !7086
  br label %sw.epilog, !dbg !7087

sw.bb19:                                          ; preds = %for.body, %for.body, %for.body, %for.body
  %32 = load ptr, ptr %e, align 8, !dbg !7088
  %add.ptr20 = getelementptr i8, ptr %32, i64 4, !dbg !7088
  store ptr %add.ptr20, ptr %e, align 8, !dbg !7088
  br label %sw.epilog, !dbg !7089

sw.default:                                       ; preds = %for.body
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7090

sw.epilog:                                        ; preds = %sw.bb19, %sw.bb14, %sw.bb
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !7091
  br label %cleanup, !dbg !7091

cleanup:                                          ; preds = %sw.default, %sw.epilog
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry7) #13, !dbg !7091
  call void @llvm.lifetime.end.p0(i64 8, ptr %acl_e) #13, !dbg !7091
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup23 [
    i32 0, label %cleanup.cont
    i32 6, label %fail
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !7092

for.inc:                                          ; preds = %cleanup.cont
  %33 = load i64, ptr %n, align 8, !dbg !7093
  %inc = add i64 %33, 1, !dbg !7093
  store i64 %inc, ptr %n, align 8, !dbg !7093
  br label %for.cond, !dbg !7094, !llvm.loop !7095

for.end:                                          ; preds = %for.cond
  %34 = load ptr, ptr %ext_acl, align 8, !dbg !7097
  store ptr %34, ptr %retval, align 8, !dbg !7098
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup23, !dbg !7098

fail:                                             ; preds = %cleanup
  call void @llvm.dbg.label(metadata !7018), !dbg !7099
  %35 = load ptr, ptr %ext_acl, align 8, !dbg !7100
  call void @kfree(ptr noundef %35) #14, !dbg !7101
  %call22 = call ptr @ERR_PTR(i64 noundef -22) #14, !dbg !7102
  store ptr %call22, ptr %retval, align 8, !dbg !7103
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup23, !dbg !7103

cleanup23:                                        ; preds = %fail, %for.end, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #13, !dbg !7104
  call void @llvm.lifetime.end.p0(i64 8, ptr %e) #13, !dbg !7104
  call void @llvm.lifetime.end.p0(i64 8, ptr %ext_acl) #13, !dbg !7104
  %36 = load ptr, ptr %retval, align 8, !dbg !7104
  ret ptr %36, !dbg !7104
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7105 dso_local i32 @ext4_xattr_set_handle(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7108 dso_local void @set_cached_acl(ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kuid(ptr noundef %to, i32 %kuid.coerce) #3 align 16 !dbg !7111 {
entry:
  %kuid = alloca %struct.kuid_t, align 4
  %to.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0
  store i32 %kuid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !7115, metadata !DIExpression()), !dbg !7117
  call void @llvm.dbg.declare(metadata ptr %kuid, metadata !7116, metadata !DIExpression()), !dbg !7118
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0, !dbg !7119
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !7119
  %call = call i32 @__kuid_val(i32 %0) #14, !dbg !7119
  ret i32 %call, !dbg !7120
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kgid(ptr noundef %to, i32 %kgid.coerce) #3 align 16 !dbg !7121 {
entry:
  %kgid = alloca %struct.kgid_t, align 4
  %to.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0
  store i32 %kgid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !7125, metadata !DIExpression()), !dbg !7127
  call void @llvm.dbg.declare(metadata ptr %kgid, metadata !7126, metadata !DIExpression()), !dbg !7128
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0, !dbg !7129
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !7129
  %call = call i32 @__kgid_val(i32 %0) #14, !dbg !7129
  ret i32 %call, !dbg !7130
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kuid_val(i32 %uid.coerce) #3 align 16 !dbg !7131 {
entry:
  %uid = alloca %struct.kuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0
  store i32 %uid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !7135, metadata !DIExpression()), !dbg !7136
  %val = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !7137
  %0 = load i32, ptr %val, align 4, !dbg !7137
  ret i32 %0, !dbg !7138
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kgid_val(i32 %gid.coerce) #3 align 16 !dbg !7139 {
entry:
  %gid = alloca %struct.kgid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0
  store i32 %gid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !7143, metadata !DIExpression()), !dbg !7144
  %val = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !7145
  %0 = load i32, ptr %val, align 4, !dbg !7145
  ret i32 %0, !dbg !7146
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_dec_and_test(ptr noundef %r) #3 align 16 !dbg !7147 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !7152, metadata !DIExpression()), !dbg !7153
  %0 = load ptr, ptr %r.addr, align 8, !dbg !7154
  %call = call zeroext i1 @__refcount_dec_and_test(ptr noundef %0, ptr noundef null) #14, !dbg !7155
  ret i1 %call, !dbg !7156
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7157 dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_dec_and_test(ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !7161 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !7165, metadata !DIExpression()), !dbg !7167
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !7166, metadata !DIExpression()), !dbg !7168
  %0 = load ptr, ptr %r.addr, align 8, !dbg !7169
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !7170
  %call = call zeroext i1 @__refcount_sub_and_test(i32 noundef 1, ptr noundef %0, ptr noundef %1) #14, !dbg !7171
  ret i1 %call, !dbg !7172
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !7173 {
entry:
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7177, metadata !DIExpression()), !dbg !7181
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !7178, metadata !DIExpression()), !dbg !7182
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !7179, metadata !DIExpression()), !dbg !7183
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #13, !dbg !7184
  call void @llvm.dbg.declare(metadata ptr %old, metadata !7180, metadata !DIExpression()), !dbg !7185
  %0 = load i32, ptr %i.addr, align 4, !dbg !7186
  %1 = load ptr, ptr %r.addr, align 8, !dbg !7187
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !7188
  %call = call i32 @atomic_fetch_sub_release(i32 noundef %0, ptr noundef %refs) #14, !dbg !7189
  store i32 %call, ptr %old, align 4, !dbg !7185
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !7190
  %tobool = icmp ne ptr %2, null, !dbg !7190
  br i1 %tobool, label %if.then, label %if.end, !dbg !7192

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !7193
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !7194
  store i32 %3, ptr %4, align 4, !dbg !7195
  br label %if.end, !dbg !7196

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !7197
  %6 = load i32, ptr %i.addr, align 4, !dbg !7199
  %cmp = icmp eq i32 %5, %6, !dbg !7200
  br i1 %cmp, label %if.then1, label %if.end11, !dbg !7201

if.then1:                                         ; preds = %if.end
  br label %do.body, !dbg !7202

do.body:                                          ; preds = %if.then1
  br label %do.body2, !dbg !7204

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !7206

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !7206

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !7204

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !7208

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !7210

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !7210

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !7208, !srcloc !7212
  br label %do.cond7, !dbg !7208

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !7208

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !7204

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !7204

do.end10:                                         ; preds = %do.cond9
  store i1 true, ptr %retval, align 1, !dbg !7213
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7213

if.end11:                                         ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !7214
  %cmp12 = icmp slt i32 %7, 0, !dbg !7214
  br i1 %cmp12, label %lor.end, label %lor.rhs, !dbg !7214

lor.rhs:                                          ; preds = %if.end11
  %8 = load i32, ptr %old, align 4, !dbg !7214
  %9 = load i32, ptr %i.addr, align 4, !dbg !7214
  %sub = sub i32 %8, %9, !dbg !7214
  %cmp13 = icmp slt i32 %sub, 0, !dbg !7214
  br label %lor.end, !dbg !7214

lor.end:                                          ; preds = %lor.rhs, %if.end11
  %10 = phi i1 [ true, %if.end11 ], [ %cmp13, %lor.rhs ]
  %lnot = xor i1 %10, true, !dbg !7214
  %lnot14 = xor i1 %lnot, true, !dbg !7214
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !7214
  %conv = sext i32 %lnot.ext to i64, !dbg !7214
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7214
  %tobool15 = icmp ne i64 %expval, 0, !dbg !7214
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !7216

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !7217
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #14, !dbg !7218
  br label %if.end17, !dbg !7218

if.end17:                                         ; preds = %if.then16, %lor.end
  store i1 false, ptr %retval, align 1, !dbg !7219
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7219

cleanup:                                          ; preds = %if.end17, %do.end10
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #13, !dbg !7220
  %12 = load i1, ptr %retval, align 1, !dbg !7220
  ret i1 %12, !dbg !7220
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #8 align 16 !dbg !7221 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7227, metadata !DIExpression()), !dbg !7229
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7228, metadata !DIExpression()), !dbg !7230
  br label %do.body, !dbg !7231

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !7232

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7234
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #14, !dbg !7235
  %1 = load i32, ptr %i.addr, align 4, !dbg !7236
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7237
  %call = call i32 @raw_atomic_fetch_sub_release(i32 noundef %1, ptr noundef %2) #14, !dbg !7238
  ret i32 %call, !dbg !7239
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7240 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #8 align 16 !dbg !7243 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7251, metadata !DIExpression()), !dbg !7253
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7252, metadata !DIExpression()), !dbg !7254
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7255
  %1 = load i64, ptr %size.addr, align 8, !dbg !7256
  %conv = trunc i64 %1 to i32, !dbg !7256
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #14, !dbg !7257
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7258
  %3 = load i64, ptr %size.addr, align 8, !dbg !7258
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #14, !dbg !7258
  ret void, !dbg !7259
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #8 align 16 !dbg !7260 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7263, metadata !DIExpression()), !dbg !7265
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7264, metadata !DIExpression()), !dbg !7266
  %0 = load i32, ptr %i.addr, align 4, !dbg !7267
  %1 = load ptr, ptr %v.addr, align 8, !dbg !7268
  %call = call i32 @arch_atomic_fetch_sub(i32 noundef %0, ptr noundef %1) #14, !dbg !7269
  ret i32 %call, !dbg !7270
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !7271 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7276, metadata !DIExpression()), !dbg !7278
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7277, metadata !DIExpression()), !dbg !7279
  ret i1 true, !dbg !7280
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !7281 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !7286, metadata !DIExpression()), !dbg !7289
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7287, metadata !DIExpression()), !dbg !7290
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !7288, metadata !DIExpression()), !dbg !7291
  ret void, !dbg !7292
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_sub(i32 noundef %i, ptr noundef %v) #8 align 16 !dbg !7293 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7296, metadata !DIExpression()), !dbg !7300
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7297, metadata !DIExpression()), !dbg !7301
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #13, !dbg !7302
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !7298, metadata !DIExpression()), !dbg !7302
  %0 = load i32, ptr %i.addr, align 4, !dbg !7302
  %sub = sub i32 0, %0, !dbg !7302
  store i32 %sub, ptr %__ret, align 4, !dbg !7302
  %1 = load i32, ptr %__ret, align 4, !dbg !7302
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7302
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !7302
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #13, !dbg !7302, !srcloc !7303
  store i32 %3, ptr %__ret, align 4, !dbg !7302
  %4 = load i32, ptr %__ret, align 4, !dbg !7302
  store i32 %4, ptr %tmp, align 4, !dbg !7302
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #13, !dbg !7304
  %5 = load i32, ptr %tmp, align 4, !dbg !7302
  ret i32 %5, !dbg !7305
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nounwind }
attributes #14 = { noredzone }
attributes #15 = { noredzone allocsize(0) }
attributes #16 = { noredzone allocsize(2) }
attributes #17 = { noredzone noreturn }

!llvm.dbg.cu = !{!24}
!llvm.module.flags = !{!5579, !5580, !5581, !5582, !5583, !5584, !5585, !5586}
!llvm.ident = !{!5587}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 163, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "fs/ext4/acl.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b72fa08ac57b60b51262a64e25c8bb5")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 14)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 165, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 1)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 263, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 104, elements: !16)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!16 = !{!17}
!17 = !DISubrange(count: 13)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !20, line: 480, type: !21, isLocal: true, isDefinition: true)
!20 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 21)
!24 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/ext4/.acl.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/ext4/ext4\22 -D KBUILD_BASENAME=\22acl\22 -D KBUILD_MODNAME=\22ext4\22 -D __KBUILD_MODNAME=kmod_ext4 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/ext4/acl.ll fs/ext4/acl.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !25, retainedTypes: !5562, globals: !5578, splitDebugInlining: false, nameTableKind: None)
!25 = !{!26, !34, !42, !50, !144, !160, !167, !173, !178, !184, !190, !196, !203, !208, !216, !223, !232, !237, !242, !248, !252, !257, !263, !270, !276, !5536, !5541, !5550, !5555}
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !27, line: 312, baseType: !28, size: 32, elements: !29)
!27 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!28 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!29 = !{!30, !31, !32, !33}
!30 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!31 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!32 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!33 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !35, line: 68, baseType: !28, size: 32, elements: !36)
!35 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!36 = !{!37, !38, !39, !40, !41}
!37 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!38 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!39 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!40 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!41 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !43, line: 9, baseType: !28, size: 32, elements: !44)
!43 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!44 = !{!45, !46, !47, !48, !49}
!45 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!46 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!47 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!48 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!49 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !52, file: !51, line: 147, baseType: !28, size: 32, elements: !141)
!51 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !51, line: 135, size: 512, elements: !53)
!53 = !{!54, !56, !58, !60, !64, !65, !81, !139, !140}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !52, file: !51, line: 136, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !52, file: !51, line: 137, baseType: !57, size: 64, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !52, file: !51, line: 138, baseType: !59, size: 32, offset: 128)
!59 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !52, file: !51, line: 139, baseType: !61, size: 16, offset: 160)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !62, line: 24, baseType: !63)
!62 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!63 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !52, file: !51, line: 150, baseType: !50, size: 32, offset: 192)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !52, file: !51, line: 151, baseType: !66, size: 64, offset: 256)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !51, line: 64, baseType: !68)
!68 = !DISubroutineType(types: !69)
!69 = !{!59, !70, !59, !57, !71, !77}
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !62, line: 61, baseType: !73)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !74, line: 72, baseType: !75)
!74 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !74, line: 16, baseType: !76)
!76 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !62, line: 52, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !74, line: 88, baseType: !80)
!80 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !52, file: !51, line: 152, baseType: !82, size: 64, offset: 320)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !51, line: 117, size: 256, elements: !84)
!84 = !{!85, !90}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !83, file: !51, line: 118, baseType: !86, size: 32)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !62, line: 174, baseType: !87)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !62, line: 172, size: 32, elements: !88)
!88 = !{!89}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !87, file: !62, line: 173, baseType: !59, size: 32)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !83, file: !51, line: 119, baseType: !91, size: 192, offset: 64)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !92, line: 41, baseType: !93)
!92 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !92, line: 37, size: 192, elements: !94)
!94 = !{!95, !133}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !93, file: !92, line: 38, baseType: !96, size: 32)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !97, line: 29, baseType: !98)
!97 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !97, line: 17, size: 32, elements: !99)
!99 = !{!100}
!100 = !DIDerivedType(tag: DW_TAG_member, scope: !98, file: !97, line: 18, baseType: !101, size: 32)
!101 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !98, file: !97, line: 18, size: 32, elements: !102)
!102 = !{!103}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !101, file: !97, line: 19, baseType: !104, size: 32)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !105, line: 14, size: 32, elements: !106)
!105 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!106 = !{!107}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !104, file: !105, line: 15, baseType: !108, size: 32)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !109, line: 44, baseType: !110)
!109 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !109, line: 14, size: 32, elements: !111)
!111 = !{!112}
!112 = !DIDerivedType(tag: DW_TAG_member, scope: !110, file: !109, line: 15, baseType: !113, size: 32)
!113 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !110, file: !109, line: 15, size: 32, elements: !114)
!114 = !{!115, !116, !126}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !113, file: !109, line: 16, baseType: !86, size: 32)
!116 = !DIDerivedType(tag: DW_TAG_member, scope: !113, file: !109, line: 24, baseType: !117, size: 16)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !113, file: !109, line: 24, size: 16, elements: !118)
!118 = !{!119, !125}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !117, file: !109, line: 25, baseType: !120, size: 8)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !121, line: 17, baseType: !122)
!121 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !123, line: 21, baseType: !124)
!123 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!124 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !117, file: !109, line: 26, baseType: !120, size: 8, offset: 8)
!126 = !DIDerivedType(tag: DW_TAG_member, scope: !113, file: !109, line: 28, baseType: !127, size: 32)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !113, file: !109, line: 28, size: 32, elements: !128)
!128 = !{!129, !132}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !127, file: !109, line: 29, baseType: !130, size: 16)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !121, line: 19, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !123, line: 24, baseType: !63)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !127, file: !109, line: 30, baseType: !130, size: 16, offset: 16)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !93, file: !92, line: 39, baseType: !134, size: 128, offset: 64)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !62, line: 190, size: 128, elements: !135)
!135 = !{!136, !138}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !134, file: !62, line: 191, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !134, file: !62, line: 191, baseType: !137, size: 64, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !52, file: !51, line: 153, baseType: !57, size: 64, offset: 384)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !52, file: !51, line: 154, baseType: !57, size: 64, offset: 448)
!141 = !{!142, !143}
!142 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!143 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!144 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !145, line: 1325, baseType: !28, size: 32, elements: !146)
!145 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!146 = !{!147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159}
!147 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!148 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!149 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!150 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!151 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!152 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!153 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!154 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!155 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!156 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!157 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!158 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!159 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!160 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !161, line: 15, baseType: !28, size: 32, elements: !162)
!161 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!162 = !{!163, !164, !165, !166}
!163 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!164 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!165 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!166 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!167 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !168, line: 26, baseType: !28, size: 32, elements: !169)
!168 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!169 = !{!170, !171, !172}
!170 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!171 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!172 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!173 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !174, line: 2052, baseType: !28, size: 32, elements: !175)
!174 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!175 = !{!176, !177}
!176 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!177 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!178 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !179, line: 54, baseType: !28, size: 32, elements: !180)
!179 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!180 = !{!181, !182, !183}
!181 = !DIEnumerator(name: "USRQUOTA", value: 0)
!182 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!183 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!184 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_unique_id", file: !185, line: 1381, baseType: !28, size: 32, elements: !186)
!185 = !DIFile(filename: "./include/linux/blkdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "802ed60c7d9aff392515db0b7890881d")
!186 = !{!187, !188, !189}
!187 = !DIEnumerator(name: "BLK_UID_T10", value: 1)
!188 = !DIEnumerator(name: "BLK_UID_EUI64", value: 2)
!189 = !DIEnumerator(name: "BLK_UID_NAA", value: 3)
!190 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !191, line: 45, baseType: !28, size: 32, elements: !192)
!191 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!192 = !{!193, !194, !195}
!193 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!194 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!195 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!196 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !197, line: 487, baseType: !28, size: 32, elements: !198)
!197 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!198 = !{!199, !200, !201, !202}
!199 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!200 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!201 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!202 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!203 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !204, line: 65, baseType: !28, size: 32, elements: !205)
!204 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!205 = !{!206, !207}
!206 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!207 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!208 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !209, line: 620, baseType: !28, size: 32, elements: !210)
!209 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!210 = !{!211, !212, !213, !214, !215}
!211 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!212 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!213 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!214 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!215 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!216 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !209, line: 597, baseType: !59, size: 32, elements: !217)
!217 = !{!218, !219, !220, !221, !222}
!218 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!219 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!220 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!221 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!222 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!223 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !197, line: 547, baseType: !28, size: 32, elements: !224)
!224 = !{!225, !226, !227, !228, !229, !230, !231}
!225 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!226 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!227 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!228 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!229 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!230 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!231 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!232 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !197, line: 564, baseType: !28, size: 32, elements: !233)
!233 = !{!234, !235, !236}
!234 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!235 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!236 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!237 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !197, line: 577, baseType: !28, size: 32, elements: !238)
!238 = !{!239, !240, !241}
!239 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!240 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!241 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!242 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !197, line: 503, baseType: !28, size: 32, elements: !243)
!243 = !{!244, !245, !246, !247}
!244 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!245 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!246 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!247 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!248 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_bounce", file: !185, line: 295, baseType: !28, size: 32, elements: !249)
!249 = !{!250, !251}
!250 = !DIEnumerator(name: "BLK_BOUNCE_NONE", value: 0)
!251 = !DIEnumerator(name: "BLK_BOUNCE_HIGH", value: 1)
!252 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_zoned_model", file: !185, line: 285, baseType: !28, size: 32, elements: !253)
!253 = !{!254, !255, !256}
!254 = !DIEnumerator(name: "BLK_ZONED_NONE", value: 0)
!255 = !DIEnumerator(name: "BLK_ZONED_HA", value: 1)
!256 = !DIEnumerator(name: "BLK_ZONED_HM", value: 2)
!257 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !258, line: 16, baseType: !28, size: 32, elements: !259)
!258 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!259 = !{!260, !261, !262}
!260 = !DIEnumerator(name: "TT_NONE", value: 0)
!261 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!262 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!263 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !264, line: 51, baseType: !28, size: 32, elements: !265)
!264 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!265 = !{!266, !267, !268, !269}
!266 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!267 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!268 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!269 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!270 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "passtype", file: !271, line: 741, baseType: !28, size: 32, elements: !272)
!271 = !DIFile(filename: "./include/linux/jbd2.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "072378681f9a7c8bcf642036e73917c8")
!272 = !{!273, !274, !275}
!273 = !DIEnumerator(name: "PASS_SCAN", value: 0)
!274 = !DIEnumerator(name: "PASS_REVOKE", value: 1)
!275 = !DIEnumerator(name: "PASS_REPLAY", value: 2)
!276 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !277, file: !271, line: 567, baseType: !28, size: 32, elements: !5526)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "transaction_s", file: !271, line: 551, size: 1664, elements: !278)
!278 = !{!279, !5465, !5466, !5467, !5468, !5469, !5500, !5501, !5502, !5503, !5504, !5505, !5506, !5507, !5508, !5515, !5516, !5517, !5518, !5519, !5520, !5521, !5522, !5523, !5524, !5525}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "t_journal", scope: !277, file: !271, line: 554, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "journal_t", file: !271, line: 105, baseType: !282)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "journal_s", file: !271, line: 750, size: 11776, elements: !283)
!283 = !{!284, !285, !286, !287, !308, !5225, !5266, !5267, !5268, !5269, !5273, !5274, !5275, !5276, !5277, !5278, !5279, !5280, !5281, !5282, !5284, !5285, !5286, !5287, !5288, !5289, !5290, !5291, !5292, !5293, !5294, !5295, !5296, !5297, !5298, !5299, !5300, !5301, !5302, !5303, !5304, !5306, !5307, !5308, !5309, !5310, !5311, !5312, !5313, !5314, !5315, !5316, !5317, !5320, !5322, !5324, !5325, !5326, !5327, !5328, !5329, !5330, !5331, !5335, !5349, !5350, !5351, !5354, !5371, !5372, !5373, !5451, !5452, !5457, !5461}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "j_flags", scope: !282, file: !271, line: 756, baseType: !76, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "j_atomic_flags", scope: !282, file: !271, line: 761, baseType: !76, size: 64, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "j_errno", scope: !282, file: !271, line: 769, baseType: !59, size: 32, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "j_abort_mutex", scope: !282, file: !271, line: 774, baseType: !288, size: 256, offset: 192)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !289, line: 66, size: 256, elements: !290)
!289 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!290 = !{!291, !300, !302, !307}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !288, file: !289, line: 67, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !293, line: 13, baseType: !294)
!293 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !62, line: 181, baseType: !295)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !62, line: 179, size: 64, elements: !296)
!296 = !{!297}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !295, file: !62, line: 180, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !121, line: 22, baseType: !299)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !123, line: 30, baseType: !80)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !288, file: !289, line: 68, baseType: !301, size: 32, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !105, line: 23, baseType: !104)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !288, file: !289, line: 70, baseType: !303, size: 32, offset: 96)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !304, line: 15, size: 32, elements: !305)
!304 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!305 = !{!306}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !303, file: !304, line: 20, baseType: !86, size: 32)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !288, file: !289, line: 72, baseType: !134, size: 128, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "j_sb_buffer", scope: !282, file: !271, line: 779, baseType: !309, size: 64, offset: 448)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "buffer_head", file: !311, line: 59, size: 832, elements: !312)
!311 = !DIFile(filename: "./include/linux/buffer_head.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc335f14f0fab7e7c331101f97325549")
!312 = !{!313, !314, !315, !5211, !5212, !5213, !5214, !5215, !5220, !5221, !5222, !5223, !5224}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "b_state", scope: !310, file: !311, line: 60, baseType: !76, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "b_this_page", scope: !310, file: !311, line: 61, baseType: !309, size: 64, offset: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, scope: !310, file: !311, line: 62, baseType: !316, size: 64, offset: 128)
!316 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !310, file: !311, line: 62, size: 64, elements: !317)
!317 = !{!318, !5210}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "b_page", scope: !316, file: !311, line: 63, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !145, line: 74, size: 512, align: 128, elements: !321)
!321 = !{!322, !323, !5204, !5209}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !320, file: !145, line: 75, baseType: !76, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, scope: !320, file: !145, line: 83, baseType: !324, size: 320, offset: 64)
!324 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !320, file: !145, line: 83, size: 320, elements: !325)
!325 = !{!326, !5130, !5144, !5148, !5203}
!326 = !DIDerivedType(tag: DW_TAG_member, scope: !324, file: !145, line: 84, baseType: !327, size: 320)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !324, file: !145, line: 84, size: 320, elements: !328)
!328 = !{!329, !340, !5124, !5129}
!329 = !DIDerivedType(tag: DW_TAG_member, scope: !327, file: !145, line: 90, baseType: !330, size: 128)
!330 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !327, file: !145, line: 90, size: 128, elements: !331)
!331 = !{!332, !333, !338, !339}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !330, file: !145, line: 91, baseType: !134, size: 128)
!333 = !DIDerivedType(tag: DW_TAG_member, scope: !330, file: !145, line: 94, baseType: !334, size: 128)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !330, file: !145, line: 94, size: 128, elements: !335)
!335 = !{!336, !337}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !334, file: !145, line: 96, baseType: !57, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !334, file: !145, line: 98, baseType: !28, size: 32, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !330, file: !145, line: 102, baseType: !134, size: 128)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !330, file: !145, line: 103, baseType: !134, size: 128)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !327, file: !145, line: 106, baseType: !341, size: 64, offset: 128)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !174, line: 472, size: 1536, align: 64, elements: !343)
!343 = !{!344, !5016, !5017, !5018, !5019, !5020, !5021, !5022, !5023, !5118, !5119, !5120, !5121, !5122, !5123}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !342, file: !174, line: 473, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !174, line: 641, size: 4800, elements: !347)
!347 = !{!348, !349, !350, !358, !359, !366, !367, !402, !403, !4954, !4955, !4956, !4957, !4958, !4964, !4965, !4966, !4967, !4968, !4969, !4970, !4971, !4972, !4973, !4974, !4975, !4976, !4977, !4978, !4979, !4980, !4981, !4982, !4987, !4988, !4989, !4990, !4991, !4992, !4993, !4998, !5001, !5002, !5003, !5012, !5013, !5014, !5015}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !346, file: !174, line: 642, baseType: !61, size: 16)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !346, file: !174, line: 643, baseType: !63, size: 16, offset: 16)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !346, file: !174, line: 644, baseType: !351, size: 32, offset: 32)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !352, line: 23, baseType: !353)
!352 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !352, line: 21, size: 32, elements: !354)
!354 = !{!355}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !353, file: !352, line: 22, baseType: !356, size: 32)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !62, line: 37, baseType: !357)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !74, line: 49, baseType: !28)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !346, file: !174, line: 645, baseType: !134, size: 128, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !346, file: !174, line: 646, baseType: !360, size: 32, offset: 192)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !352, line: 28, baseType: !361)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !352, line: 26, size: 32, elements: !362)
!362 = !{!363}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !361, file: !352, line: 27, baseType: !364, size: 32)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !62, line: 38, baseType: !365)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !74, line: 50, baseType: !28)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !346, file: !174, line: 647, baseType: !28, size: 32, offset: 224)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !346, file: !174, line: 650, baseType: !368, size: 64, offset: 256)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !370, line: 29, size: 256, elements: !371)
!370 = !DIFile(filename: "./include/linux/posix_acl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c39037fcfa4b446249952b719291151f")
!371 = !{!372, !378, !387, !388}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "a_refcount", scope: !369, file: !370, line: 30, baseType: !373, size: 32)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !374, line: 113, baseType: !375)
!374 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !374, line: 111, size: 32, elements: !376)
!376 = !{!377}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !375, file: !374, line: 112, baseType: !86, size: 32)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "a_rcu", scope: !369, file: !370, line: 31, baseType: !379, size: 128, align: 64, offset: 64)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !62, line: 232, size: 128, align: 64, elements: !380)
!380 = !{!381, !383}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !379, file: !62, line: 233, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !379, file: !62, line: 234, baseType: !384, size: 64, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DISubroutineType(types: !386)
!386 = !{null, !382}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "a_count", scope: !369, file: !370, line: 32, baseType: !28, size: 32, offset: 192)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "a_entries", scope: !369, file: !370, line: 33, baseType: !389, offset: 224)
!389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, elements: !400)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl_entry", file: !370, line: 20, size: 64, elements: !391)
!391 = !{!392, !394, !395}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "e_tag", scope: !390, file: !370, line: 21, baseType: !393, size: 16)
!393 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "e_perm", scope: !390, file: !370, line: 22, baseType: !63, size: 16, offset: 16)
!395 = !DIDerivedType(tag: DW_TAG_member, scope: !390, file: !370, line: 23, baseType: !396, size: 32, offset: 32)
!396 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !390, file: !370, line: 23, size: 32, elements: !397)
!397 = !{!398, !399}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "e_uid", scope: !396, file: !370, line: 24, baseType: !351, size: 32)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "e_gid", scope: !396, file: !370, line: 25, baseType: !360, size: 32)
!400 = !{!401}
!401 = !DISubrange(count: -1)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !346, file: !174, line: 651, baseType: !368, size: 64, offset: 320)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !346, file: !174, line: 654, baseType: !404, size: 64, offset: 384)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !406)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !174, line: 1966, size: 2048, align: 512, elements: !407)
!407 = !{!408, !4770, !4780, !4784, !4788, !4792, !4796, !4800, !4804, !4808, !4812, !4813, !4817, !4821, !4858, !4887, !4891, !4915, !4919, !4923, !4927, !4931, !4935, !4941, !4945}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !406, file: !174, line: 1967, baseType: !409, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DISubroutineType(types: !411)
!411 = !{!412, !345, !412, !28}
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !414, line: 82, size: 1536, elements: !415)
!414 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!415 = !{!416, !417, !427, !435, !436, !456, !457, !461, !474, !4753, !4754, !4755, !4756, !4762, !4763, !4764}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !413, file: !414, line: 84, baseType: !28, size: 32)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !413, file: !414, line: 85, baseType: !418, size: 32, offset: 32)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !419, line: 275, baseType: !420)
!419 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !419, line: 275, size: 32, elements: !421)
!421 = !{!422}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !420, file: !419, line: 275, baseType: !423, size: 32)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !419, line: 69, baseType: !424)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !419, line: 64, size: 32, elements: !425)
!425 = !{!426}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !424, file: !419, line: 65, baseType: !28, size: 32)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !413, file: !414, line: 86, baseType: !428, size: 128, offset: 64)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !429, line: 38, size: 128, elements: !430)
!429 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!430 = !{!431, !433}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !428, file: !429, line: 39, baseType: !432, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !428, file: !429, line: 39, baseType: !434, size: 64, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !413, file: !414, line: 87, baseType: !412, size: 64, offset: 192)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !413, file: !414, line: 88, baseType: !437, size: 128, offset: 256)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !414, line: 49, size: 128, elements: !438)
!438 = !{!439, !453}
!439 = !DIDerivedType(tag: DW_TAG_member, scope: !437, file: !414, line: 50, baseType: !440, size: 64)
!440 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !437, file: !414, line: 50, size: 64, elements: !441)
!441 = !{!442, !449}
!442 = !DIDerivedType(tag: DW_TAG_member, scope: !440, file: !414, line: 51, baseType: !443, size: 64)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !440, file: !414, line: 51, size: 64, elements: !444)
!444 = !{!445, !448}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !443, file: !414, line: 52, baseType: !446, size: 32)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !121, line: 21, baseType: !447)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !123, line: 27, baseType: !28)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !443, file: !414, line: 52, baseType: !446, size: 32, offset: 32)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !440, file: !414, line: 54, baseType: !450, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !121, line: 23, baseType: !451)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !123, line: 31, baseType: !452)
!452 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !437, file: !414, line: 56, baseType: !454, size: 64, offset: 64)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !124)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !413, file: !414, line: 89, baseType: !345, size: 64, offset: 384)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !413, file: !414, line: 91, baseType: !458, size: 256, offset: 448)
!458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 256, elements: !459)
!459 = !{!460}
!460 = !DISubrange(count: 32)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !413, file: !414, line: 94, baseType: !462, size: 64, offset: 704)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !463, line: 25, size: 64, elements: !464)
!463 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!464 = !{!465}
!465 = !DIDerivedType(tag: DW_TAG_member, scope: !462, file: !463, line: 26, baseType: !466, size: 64)
!466 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !462, file: !463, line: 26, size: 64, elements: !467)
!467 = !{!468, !469}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !466, file: !463, line: 28, baseType: !451, size: 64, align: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, scope: !466, file: !463, line: 30, baseType: !470, size: 64)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !466, file: !463, line: 30, size: 64, elements: !471)
!471 = !{!472, !473}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !470, file: !463, line: 31, baseType: !96, size: 32)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !470, file: !463, line: 32, baseType: !59, size: 32, offset: 32)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !413, file: !414, line: 95, baseType: !475, size: 64, offset: 768)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !477)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !414, line: 128, size: 1024, align: 512, elements: !478)
!478 = !{!479, !483, !484, !491, !497, !501, !505, !509, !510, !514, !519, !4743, !4747}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !477, file: !414, line: 129, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{!59, !412, !28}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !477, file: !414, line: 130, baseType: !480, size: 64, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !477, file: !414, line: 131, baseType: !485, size: 64, offset: 128)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{!59, !488, !490}
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !413)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !477, file: !414, line: 132, baseType: !492, size: 64, offset: 192)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DISubroutineType(types: !494)
!494 = !{!59, !488, !28, !55, !495}
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !437)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !477, file: !414, line: 134, baseType: !498, size: 64, offset: 256)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{!59, !488}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !477, file: !414, line: 135, baseType: !502, size: 64, offset: 320)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DISubroutineType(types: !504)
!504 = !{!59, !412}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !477, file: !414, line: 136, baseType: !506, size: 64, offset: 384)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DISubroutineType(types: !508)
!508 = !{null, !412}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !477, file: !414, line: 137, baseType: !506, size: 64, offset: 448)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !477, file: !414, line: 138, baseType: !511, size: 64, offset: 512)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DISubroutineType(types: !513)
!513 = !{null, !412, !345}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !477, file: !414, line: 139, baseType: !515, size: 64, offset: 576)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DISubroutineType(types: !517)
!517 = !{!518, !412, !518, !59}
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !477, file: !414, line: 140, baseType: !520, size: 64, offset: 640)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{!523, !4742}
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !525, line: 70, size: 256, elements: !526)
!525 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!526 = !{!527, !528, !4740, !4741}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !524, file: !525, line: 71, baseType: !412, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !524, file: !525, line: 72, baseType: !529, size: 64, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !174, line: 1190, size: 10752, elements: !531)
!531 = !{!532, !533, !536, !537, !538, !539, !2310, !2444, !2484, !2569, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2605, !2609, !2610, !3454, !3460, !3461, !3464, !3465, !3466, !3507, !4674, !4675, !4676, !4677, !4678, !4679, !4682, !4683, !4690, !4691, !4692, !4693, !4694, !4709, !4710, !4711, !4712, !4713, !4714, !4715, !4716, !4731, !4732, !4733, !4734, !4735, !4736, !4737, !4738, !4739}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !530, file: !174, line: 1191, baseType: !134, size: 128)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !530, file: !174, line: 1192, baseType: !534, size: 32, offset: 128)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !62, line: 21, baseType: !535)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !62, line: 18, baseType: !446)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !530, file: !174, line: 1193, baseType: !124, size: 8, offset: 160)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !530, file: !174, line: 1194, baseType: !76, size: 64, offset: 192)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !530, file: !174, line: 1195, baseType: !78, size: 64, offset: 256)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !530, file: !174, line: 1196, baseType: !540, size: 64, offset: 320)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !174, line: 2366, size: 576, elements: !542)
!542 = !{!543, !544, !545, !551, !555, !559, !563, !2298, !2299, !2300, !2302, !2303, !2304, !2306, !2307, !2308, !2309}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !541, file: !174, line: 2367, baseType: !55, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !541, file: !174, line: 2368, baseType: !59, size: 32, offset: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !541, file: !174, line: 2376, baseType: !546, size: 64, offset: 128)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DISubroutineType(types: !548)
!548 = !{!59, !549}
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !525, line: 21, flags: DIFlagFwdDecl)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !541, file: !174, line: 2377, baseType: !552, size: 64, offset: 192)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !554)
!554 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !174, line: 75, flags: DIFlagFwdDecl)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !541, file: !174, line: 2378, baseType: !556, size: 64, offset: 256)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DISubroutineType(types: !558)
!558 = !{!412, !540, !59, !55, !57}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !541, file: !174, line: 2380, baseType: !560, size: 64, offset: 320)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DISubroutineType(types: !562)
!562 = !{null, !529}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !541, file: !174, line: 2381, baseType: !564, size: 64, offset: 384)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !27, line: 402, size: 9216, align: 512, elements: !566)
!566 = !{!567, !568, !569, !573, !1955, !1981, !1982, !1983, !1984, !1988, !1991, !1992, !1993, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2061, !2065, !2085, !2103, !2104, !2105, !2106, !2115, !2138, !2139, !2142, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2156, !2157, !2256, !2264, !2265, !2266, !2268, !2272, !2273, !2277, !2278, !2279, !2280, !2282, !2283, !2284, !2291, !2292, !2293, !2297}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !565, file: !27, line: 403, baseType: !26, size: 32)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !565, file: !27, line: 406, baseType: !134, size: 128, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !565, file: !27, line: 409, baseType: !570, size: 448, offset: 192)
!570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !571)
!571 = !{!572}
!572 = !DISubrange(count: 56)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !565, file: !27, line: 417, baseType: !574, size: 768, offset: 640)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !27, line: 45, size: 768, elements: !575)
!575 = !{!576, !1949, !1950, !1951, !1954}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !574, file: !27, line: 46, baseType: !577, size: 512)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !578, line: 64, size: 512, elements: !579)
!578 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!579 = !{!580, !581, !582, !584, !630, !1835, !1939, !1944, !1945, !1946, !1947, !1948}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !577, file: !578, line: 65, baseType: !55, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !577, file: !578, line: 66, baseType: !134, size: 128, offset: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !577, file: !578, line: 67, baseType: !583, size: 64, offset: 192)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !577, file: !578, line: 68, baseType: !585, size: 64, offset: 256)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !578, line: 168, size: 768, elements: !587)
!587 = !{!588, !589, !590, !591}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !586, file: !578, line: 169, baseType: !134, size: 128)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !586, file: !578, line: 170, baseType: !96, size: 32, offset: 128)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !586, file: !578, line: 171, baseType: !577, size: 512, offset: 192)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !586, file: !578, line: 172, baseType: !592, size: 64, offset: 704)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !594)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !578, line: 133, size: 192, elements: !595)
!595 = !{!596, !603, !608}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !594, file: !578, line: 134, baseType: !597, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !598)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DISubroutineType(types: !600)
!600 = !{!59, !601}
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !577)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !594, file: !578, line: 135, baseType: !604, size: 64, offset: 64)
!604 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !605)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{!55, !601}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !594, file: !578, line: 136, baseType: !609, size: 64, offset: 128)
!609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !610)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DISubroutineType(types: !612)
!612 = !{!59, !601, !613}
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !578, line: 125, size: 20736, elements: !615)
!615 = !{!616, !620, !624, !625, !629}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !614, file: !578, line: 126, baseType: !617, size: 192)
!617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !518, size: 192, elements: !618)
!618 = !{!619}
!619 = !DISubrange(count: 3)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !614, file: !578, line: 127, baseType: !621, size: 4096, offset: 192)
!621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !518, size: 4096, elements: !622)
!622 = !{!623}
!623 = !DISubrange(count: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !614, file: !578, line: 128, baseType: !59, size: 32, offset: 4288)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !614, file: !578, line: 129, baseType: !626, size: 16384, offset: 4320)
!626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !627)
!627 = !{!628}
!628 = !DISubrange(count: 2048)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !614, file: !578, line: 130, baseType: !59, size: 32, offset: 20704)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !577, file: !578, line: 69, baseType: !631, size: 64, offset: 320)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !633)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !578, line: 116, size: 384, elements: !634)
!634 = !{!635, !639, !662, !1796, !1827, !1831}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !633, file: !578, line: 117, baseType: !636, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DISubroutineType(types: !638)
!638 = !{null, !583}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !633, file: !578, line: 118, baseType: !640, size: 64, offset: 64)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !642)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !643, line: 254, size: 128, elements: !644)
!643 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!644 = !{!645, !658}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !642, file: !643, line: 255, baseType: !646, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DISubroutineType(types: !648)
!648 = !{!649, !583, !653, !518}
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !62, line: 66, baseType: !650)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !74, line: 73, baseType: !651)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !74, line: 15, baseType: !652)
!652 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !643, line: 30, size: 128, elements: !655)
!655 = !{!656, !657}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !654, file: !643, line: 31, baseType: !55, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !654, file: !643, line: 32, baseType: !61, size: 16, offset: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !642, file: !643, line: 256, baseType: !659, size: 64, offset: 64)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{!649, !583, !653, !55, !72}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !633, file: !578, line: 119, baseType: !663, size: 64, offset: 128)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !666)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !643, line: 84, size: 320, elements: !667)
!667 = !{!668, !669, !673, !1792, !1794}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !666, file: !643, line: 85, baseType: !55, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !666, file: !643, line: 86, baseType: !670, size: 64, offset: 64)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DISubroutineType(types: !672)
!672 = !{!61, !583, !653, !59}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !666, file: !643, line: 88, baseType: !674, size: 64, offset: 128)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DISubroutineType(types: !676)
!676 = !{!61, !583, !677, !59}
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !643, line: 175, size: 512, elements: !679)
!679 = !{!680, !681, !682, !683, !687, !1787, !1788}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !678, file: !643, line: 176, baseType: !654, size: 128)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !678, file: !643, line: 177, baseType: !72, size: 64, offset: 128)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !678, file: !643, line: 178, baseType: !57, size: 64, offset: 192)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !678, file: !643, line: 179, baseType: !684, size: 64, offset: 256)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DISubroutineType(types: !686)
!686 = !{!341}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !678, file: !643, line: 180, baseType: !688, size: 64, offset: 320)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DISubroutineType(types: !690)
!690 = !{!649, !691, !583, !677, !518, !78, !72}
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !174, line: 994, size: 1856, align: 64, elements: !693)
!693 = !{!694, !705, !706, !708, !709, !710, !711, !712, !771, !1129, !1138, !1144, !1145, !1777, !1778, !1779, !1780, !1782, !1783, !1786}
!694 = !DIDerivedType(tag: DW_TAG_member, scope: !692, file: !174, line: 995, baseType: !695, size: 128)
!695 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !692, file: !174, line: 995, size: 128, elements: !696)
!696 = !{!697, !703, !704}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !695, file: !174, line: 996, baseType: !698, size: 64)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !699, line: 60, size: 64, elements: !700)
!699 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!700 = !{!701}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !698, file: !699, line: 61, baseType: !702, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !695, file: !174, line: 997, baseType: !379, size: 128, align: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !695, file: !174, line: 998, baseType: !28, size: 32)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !692, file: !174, line: 1005, baseType: !96, size: 32, offset: 128)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !692, file: !174, line: 1006, baseType: !707, size: 32, offset: 160)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !62, line: 156, baseType: !28)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !692, file: !174, line: 1007, baseType: !292, size: 64, offset: 192)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !692, file: !174, line: 1008, baseType: !288, size: 256, offset: 256)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !692, file: !174, line: 1009, baseType: !78, size: 64, offset: 512)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !692, file: !174, line: 1010, baseType: !28, size: 32, offset: 576)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !692, file: !174, line: 1011, baseType: !713, size: 256, offset: 640)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !174, line: 948, size: 256, elements: !714)
!714 = !{!715, !736, !767, !768, !769, !770}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !713, file: !174, line: 949, baseType: !716, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !717, line: 34, baseType: !718)
!717 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !717, line: 25, size: 64, elements: !719)
!719 = !{!720}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !718, file: !717, line: 26, baseType: !721, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !722, line: 27, baseType: !723)
!722 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !722, line: 13, size: 64, elements: !724)
!724 = !{!725, !735}
!725 = !DIDerivedType(tag: DW_TAG_member, scope: !723, file: !722, line: 14, baseType: !726, size: 32)
!726 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !723, file: !722, line: 14, size: 32, elements: !727)
!727 = !{!728, !729}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !726, file: !722, line: 15, baseType: !86, size: 32)
!729 = !DIDerivedType(tag: DW_TAG_member, scope: !726, file: !722, line: 16, baseType: !730, size: 32)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !726, file: !722, line: 16, size: 32, elements: !731)
!731 = !{!732, !733}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !730, file: !722, line: 18, baseType: !120, size: 8)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !730, file: !722, line: 19, baseType: !734, size: 24, offset: 8)
!734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 24, elements: !618)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !723, file: !722, line: 26, baseType: !108, size: 32, offset: 32)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !713, file: !174, line: 950, baseType: !737, size: 64, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !43, line: 59, size: 768, elements: !739)
!739 = !{!740, !741, !742, !743, !756, !757, !758, !759}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !738, file: !43, line: 61, baseType: !373, size: 32)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !738, file: !43, line: 62, baseType: !28, size: 32, offset: 32)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !738, file: !43, line: 63, baseType: !96, size: 32, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !738, file: !43, line: 65, baseType: !744, size: 256, offset: 128)
!744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !745, size: 256, elements: !754)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !62, line: 194, size: 64, elements: !746)
!746 = !{!747}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !745, file: !62, line: 195, baseType: !748, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !62, line: 198, size: 128, elements: !750)
!750 = !{!751, !752}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !749, file: !62, line: 199, baseType: !748, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !749, file: !62, line: 199, baseType: !753, size: 64, offset: 64)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!754 = !{!755}
!755 = !DISubrange(count: 4)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !738, file: !43, line: 66, baseType: !745, size: 64, offset: 384)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !738, file: !43, line: 68, baseType: !91, size: 192, offset: 448)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !738, file: !43, line: 69, baseType: !379, size: 128, align: 64, offset: 640)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !738, file: !43, line: 70, baseType: !760, offset: 768)
!760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !761, elements: !400)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !43, line: 54, size: 128, elements: !762)
!762 = !{!763, !764}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !761, file: !43, line: 55, baseType: !59, size: 32)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !761, file: !43, line: 56, baseType: !765, size: 64, offset: 64)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !43, line: 56, flags: DIFlagFwdDecl)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !713, file: !174, line: 951, baseType: !42, size: 32, offset: 128)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !713, file: !174, line: 952, baseType: !351, size: 32, offset: 160)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !713, file: !174, line: 952, baseType: !351, size: 32, offset: 192)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !713, file: !174, line: 953, baseType: !59, size: 32, offset: 224)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !692, file: !174, line: 1012, baseType: !772, size: 64, offset: 896)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !774)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !775, line: 110, size: 1472, elements: !776)
!775 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!776 = !{!777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !793, !794, !795, !796, !797, !798, !927, !928, !929, !930, !931, !962, !1115, !1116, !1124}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !774, file: !775, line: 111, baseType: !292, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !774, file: !775, line: 112, baseType: !351, size: 32, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !774, file: !775, line: 113, baseType: !360, size: 32, offset: 96)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !774, file: !775, line: 114, baseType: !351, size: 32, offset: 128)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !774, file: !775, line: 115, baseType: !360, size: 32, offset: 160)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !774, file: !775, line: 116, baseType: !351, size: 32, offset: 192)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !774, file: !775, line: 117, baseType: !360, size: 32, offset: 224)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !774, file: !775, line: 118, baseType: !351, size: 32, offset: 256)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !774, file: !775, line: 119, baseType: !360, size: 32, offset: 288)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !774, file: !775, line: 120, baseType: !28, size: 32, offset: 320)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !774, file: !775, line: 121, baseType: !788, size: 64, offset: 384)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !789, line: 24, baseType: !790)
!789 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !789, line: 24, size: 64, elements: !791)
!791 = !{!792}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !790, file: !789, line: 24, baseType: !450, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !774, file: !775, line: 122, baseType: !788, size: 64, offset: 448)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !774, file: !775, line: 123, baseType: !788, size: 64, offset: 512)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !774, file: !775, line: 124, baseType: !788, size: 64, offset: 576)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !774, file: !775, line: 125, baseType: !788, size: 64, offset: 640)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !774, file: !775, line: 127, baseType: !124, size: 8, offset: 704)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !774, file: !775, line: 129, baseType: !799, size: 64, offset: 768)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !801, line: 195, size: 1728, elements: !802)
!801 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!802 = !{!803, !804, !809, !821, !830, !833, !834, !841, !842, !843, !844, !847, !848, !849, !850, !851, !891, !912}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !800, file: !801, line: 196, baseType: !373, size: 32)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !800, file: !801, line: 197, baseType: !805, size: 32, offset: 32)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !801, line: 28, baseType: !806)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !62, line: 104, baseType: !807)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !121, line: 20, baseType: !808)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !123, line: 26, baseType: !59)
!809 = !DIDerivedType(tag: DW_TAG_member, scope: !800, file: !801, line: 198, baseType: !810, size: 192, offset: 64)
!810 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !800, file: !801, line: 198, size: 192, elements: !811)
!811 = !{!812, !813}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !810, file: !801, line: 199, baseType: !134, size: 128)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !810, file: !801, line: 200, baseType: !814, size: 192, align: 64)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !815, line: 5, size: 192, align: 64, elements: !816)
!815 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!816 = !{!817, !818, !820}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !814, file: !815, line: 6, baseType: !76, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !814, file: !815, line: 7, baseType: !819, size: 64, offset: 64)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !814, file: !815, line: 8, baseType: !819, size: 64, offset: 128)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !800, file: !801, line: 205, baseType: !822, size: 320, offset: 256)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !823, line: 48, size: 320, elements: !824)
!823 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!824 = !{!825, !826, !827, !828, !829}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !822, file: !823, line: 49, baseType: !292, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !822, file: !823, line: 55, baseType: !292, size: 64, offset: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !822, file: !823, line: 57, baseType: !303, size: 32, offset: 128)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !822, file: !823, line: 59, baseType: !301, size: 32, offset: 160)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !822, file: !823, line: 60, baseType: !134, size: 128, offset: 192)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !800, file: !801, line: 206, baseType: !831, size: 64, offset: 576)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !801, line: 206, flags: DIFlagFwdDecl)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !800, file: !801, line: 207, baseType: !57, size: 64, offset: 640)
!834 = !DIDerivedType(tag: DW_TAG_member, scope: !800, file: !801, line: 208, baseType: !835, size: 64, offset: 704)
!835 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !800, file: !801, line: 208, size: 64, elements: !836)
!836 = !{!837, !840}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !835, file: !801, line: 209, baseType: !838, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !839, line: 8, baseType: !299)
!839 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!840 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !835, file: !801, line: 210, baseType: !838, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !800, file: !801, line: 212, baseType: !838, size: 64, offset: 768)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !800, file: !801, line: 213, baseType: !351, size: 32, offset: 832)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !800, file: !801, line: 214, baseType: !360, size: 32, offset: 864)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !800, file: !801, line: 215, baseType: !845, size: 32, offset: 896)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !801, line: 31, baseType: !846)
!846 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !62, line: 110, baseType: !446)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !800, file: !801, line: 216, baseType: !63, size: 16, offset: 928)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !800, file: !801, line: 217, baseType: !63, size: 16, offset: 944)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !800, file: !801, line: 221, baseType: !393, size: 16, offset: 960)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !800, file: !801, line: 228, baseType: !76, size: 64, offset: 1024)
!851 = !DIDerivedType(tag: DW_TAG_member, scope: !800, file: !801, line: 245, baseType: !852, size: 320, offset: 1088)
!852 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !800, file: !801, line: 245, size: 320, elements: !853)
!853 = !{!854, !883}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !852, file: !801, line: 246, baseType: !855, size: 320)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !801, line: 114, size: 320, elements: !856)
!856 = !{!857, !858, !870, !873, !882}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !855, file: !801, line: 116, baseType: !76, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, scope: !855, file: !801, line: 117, baseType: !859, size: 64, offset: 64)
!859 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !855, file: !801, line: 117, size: 64, elements: !860)
!860 = !{!861, !869}
!861 = !DIDerivedType(tag: DW_TAG_member, scope: !859, file: !801, line: 118, baseType: !862, size: 64)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !859, file: !801, line: 118, size: 64, elements: !863)
!863 = !{!864, !865}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !862, file: !801, line: 120, baseType: !130, size: 16)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !862, file: !801, line: 121, baseType: !866, size: 48, offset: 16)
!866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !867)
!867 = !{!868}
!868 = !DISubrange(count: 6)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !859, file: !801, line: 127, baseType: !76, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !855, file: !801, line: 129, baseType: !871, size: 64, offset: 128)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !801, line: 102, flags: DIFlagFwdDecl)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !855, file: !801, line: 130, baseType: !874, size: 64, offset: 192)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !801, line: 108, size: 192, elements: !876)
!876 = !{!877, !878, !879}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !875, file: !801, line: 109, baseType: !379, size: 128, align: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !875, file: !801, line: 110, baseType: !373, size: 32, offset: 128)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !875, file: !801, line: 111, baseType: !880, size: 8, offset: 160)
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !62, line: 35, baseType: !881)
!881 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !855, file: !801, line: 131, baseType: !55, size: 64, offset: 256)
!883 = !DIDerivedType(tag: DW_TAG_member, scope: !852, file: !801, line: 247, baseType: !884, size: 320)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !852, file: !801, line: 247, size: 320, elements: !885)
!885 = !{!886, !887, !888, !889, !890}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !884, file: !801, line: 248, baseType: !76, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !884, file: !801, line: 249, baseType: !76, size: 64, offset: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !884, file: !801, line: 250, baseType: !871, size: 64, offset: 128)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !884, file: !801, line: 251, baseType: !874, size: 64, offset: 192)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !884, file: !801, line: 252, baseType: !518, size: 64, offset: 256)
!891 = !DIDerivedType(tag: DW_TAG_member, scope: !800, file: !801, line: 260, baseType: !892, size: 256, offset: 1408)
!892 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !800, file: !801, line: 260, size: 256, elements: !893)
!893 = !{!894, !900}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !892, file: !801, line: 261, baseType: !895, size: 256)
!895 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !801, line: 134, size: 256, elements: !896)
!896 = !{!897, !898}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !895, file: !801, line: 135, baseType: !57, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !895, file: !801, line: 136, baseType: !899, size: 256)
!899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 256, elements: !754)
!900 = !DIDerivedType(tag: DW_TAG_member, scope: !892, file: !801, line: 262, baseType: !901, size: 256)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !892, file: !801, line: 262, size: 256, elements: !902)
!902 = !{!903, !904}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !901, file: !801, line: 264, baseType: !134, size: 128)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !901, file: !801, line: 265, baseType: !905, size: 128, offset: 128)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !906, line: 22, size: 128, elements: !907)
!906 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!907 = !{!908, !911}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !905, file: !906, line: 23, baseType: !909, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !906, line: 23, flags: DIFlagFwdDecl)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !905, file: !906, line: 24, baseType: !76, size: 64, offset: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !800, file: !801, line: 280, baseType: !913, size: 64, offset: 1664)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !801, line: 176, size: 192, elements: !915)
!915 = !{!916, !925, !926}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !914, file: !801, line: 177, baseType: !917, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !801, line: 171, baseType: !918)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DISubroutineType(types: !920)
!920 = !{!59, !799, !921, !923, !799}
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !872)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !895)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !914, file: !801, line: 178, baseType: !799, size: 64, offset: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !914, file: !801, line: 179, baseType: !871, size: 64, offset: 128)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !774, file: !775, line: 130, baseType: !799, size: 64, offset: 832)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !774, file: !775, line: 131, baseType: !799, size: 64, offset: 896)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !774, file: !775, line: 132, baseType: !799, size: 64, offset: 960)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !774, file: !775, line: 135, baseType: !57, size: 64, offset: 1024)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !774, file: !775, line: 137, baseType: !932, size: 64, offset: 1088)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !934, line: 14, size: 1088, elements: !935)
!934 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!935 = !{!936, !937, !946, !947, !948, !949, !950, !951}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !933, file: !934, line: 15, baseType: !373, size: 32)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !933, file: !934, line: 17, baseType: !938, size: 320, offset: 64)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !939, line: 22, size: 320, elements: !940)
!939 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!940 = !{!941, !942, !943, !944}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !938, file: !939, line: 23, baseType: !301, size: 32)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !938, file: !939, line: 24, baseType: !298, size: 64, offset: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !938, file: !939, line: 26, baseType: !134, size: 128, offset: 128)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !938, file: !939, line: 28, baseType: !945, size: 64, offset: 256)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !933, file: !934, line: 19, baseType: !76, size: 64, offset: 384)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !933, file: !934, line: 20, baseType: !292, size: 64, offset: 448)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !933, file: !934, line: 23, baseType: !749, size: 128, offset: 512)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !933, file: !934, line: 24, baseType: !351, size: 32, offset: 640)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !933, file: !934, line: 29, baseType: !292, size: 64, offset: 704)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !933, file: !934, line: 36, baseType: !952, size: 320, offset: 768)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !953, line: 15, size: 320, elements: !954)
!953 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!954 = !{!955, !956, !957, !958, !959, !960, !961}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !952, file: !953, line: 16, baseType: !301, size: 32)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !952, file: !953, line: 18, baseType: !59, size: 32, offset: 32)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !952, file: !953, line: 19, baseType: !59, size: 32, offset: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !952, file: !953, line: 20, baseType: !59, size: 32, offset: 96)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !952, file: !953, line: 21, baseType: !59, size: 32, offset: 128)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !952, file: !953, line: 22, baseType: !76, size: 64, offset: 192)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !952, file: !953, line: 23, baseType: !76, size: 64, offset: 256)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !774, file: !775, line: 138, baseType: !963, size: 64, offset: 1152)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !965, line: 68, size: 4800, elements: !966)
!965 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!966 = !{!967, !989, !990, !991, !992, !993, !994, !995, !1006, !1007, !1008, !1009, !1010, !1011, !1023, !1096, !1097, !1111, !1113}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !964, file: !965, line: 69, baseType: !968, size: 576)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !965, line: 23, size: 576, elements: !969)
!969 = !{!970, !971}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !968, file: !965, line: 24, baseType: !446, size: 32)
!971 = !DIDerivedType(tag: DW_TAG_member, scope: !968, file: !965, line: 25, baseType: !972, size: 512, offset: 64)
!972 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !968, file: !965, line: 25, size: 512, elements: !973)
!973 = !{!974, !983}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !972, file: !965, line: 26, baseType: !975, size: 480)
!975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !976, size: 480, elements: !981)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !965, line: 17, size: 96, elements: !977)
!977 = !{!978, !979, !980}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !976, file: !965, line: 18, baseType: !446, size: 32)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !976, file: !965, line: 19, baseType: !446, size: 32, offset: 32)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !976, file: !965, line: 20, baseType: !446, size: 32, offset: 64)
!981 = !{!982}
!982 = !DISubrange(count: 5)
!983 = !DIDerivedType(tag: DW_TAG_member, scope: !972, file: !965, line: 27, baseType: !984, size: 128)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !972, file: !965, line: 27, size: 128, elements: !985)
!985 = !{!986, !988}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !984, file: !965, line: 28, baseType: !987, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !984, file: !965, line: 29, baseType: !987, size: 64, offset: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !964, file: !965, line: 70, baseType: !968, size: 576, offset: 576)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !964, file: !965, line: 71, baseType: !968, size: 576, offset: 1152)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !964, file: !965, line: 72, baseType: !963, size: 64, offset: 1728)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !964, file: !965, line: 73, baseType: !59, size: 32, offset: 1792)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !964, file: !965, line: 74, baseType: !351, size: 32, offset: 1824)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !964, file: !965, line: 75, baseType: !360, size: 32, offset: 1856)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !964, file: !965, line: 76, baseType: !996, size: 192, offset: 1920)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !997, line: 9, size: 192, elements: !998)
!997 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!998 = !{!999, !1000, !1004, !1005}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !996, file: !997, line: 10, baseType: !292, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !996, file: !997, line: 11, baseType: !1001, size: 64, offset: 64)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1003)
!1003 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !997, line: 7, flags: DIFlagFwdDecl)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !996, file: !997, line: 12, baseType: !28, size: 32, offset: 128)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !996, file: !997, line: 13, baseType: !373, size: 32, offset: 160)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !964, file: !965, line: 77, baseType: !76, size: 64, offset: 2112)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !964, file: !965, line: 80, baseType: !880, size: 8, offset: 2176)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !964, file: !965, line: 88, baseType: !134, size: 128, offset: 2240)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !964, file: !965, line: 89, baseType: !799, size: 64, offset: 2368)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !964, file: !965, line: 90, baseType: !822, size: 320, offset: 2432)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !964, file: !965, line: 97, baseType: !1012, size: 256, offset: 2752)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1013, line: 98, size: 256, elements: !1014)
!1013 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1014 = !{!1015, !1016, !1017}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1012, file: !1013, line: 99, baseType: !292, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1012, file: !1013, line: 100, baseType: !134, size: 128, offset: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1012, file: !1013, line: 101, baseType: !1018, size: 64, offset: 192)
!1018 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1013, line: 21, baseType: !1019)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{null, !1022}
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !964, file: !965, line: 99, baseType: !1024, size: 768, offset: 3008)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !51, line: 199, size: 768, elements: !1025)
!1025 = !{!1026, !1031}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1024, file: !51, line: 200, baseType: !1027, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!59, !1030}
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1024, file: !51, line: 201, baseType: !1032, size: 704, offset: 64)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !51, line: 193, size: 704, elements: !1033)
!1033 = !{!1034, !1092}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1032, file: !51, line: 195, baseType: !1035, size: 640)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !51, line: 173, size: 640, elements: !1036)
!1036 = !{!1037, !1049, !1061, !1062, !1082, !1083, !1085, !1091}
!1037 = !DIDerivedType(tag: DW_TAG_member, scope: !1035, file: !51, line: 174, baseType: !1038, size: 192)
!1038 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1035, file: !51, line: 174, size: 192, elements: !1039)
!1039 = !{!1040, !1048}
!1040 = !DIDerivedType(tag: DW_TAG_member, scope: !1038, file: !51, line: 175, baseType: !1041, size: 192)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1038, file: !51, line: 175, size: 192, elements: !1042)
!1042 = !{!1043, !1044, !1045, !1046, !1047}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1041, file: !51, line: 176, baseType: !70, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1041, file: !51, line: 177, baseType: !59, size: 32, offset: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1041, file: !51, line: 178, baseType: !59, size: 32, offset: 96)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1041, file: !51, line: 179, baseType: !59, size: 32, offset: 128)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1041, file: !51, line: 180, baseType: !59, size: 32, offset: 160)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1038, file: !51, line: 182, baseType: !379, size: 128, align: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1035, file: !51, line: 184, baseType: !1050, size: 64, offset: 192)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1052, line: 26, size: 256, elements: !1053)
!1052 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1053 = !{!1054, !1055}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1051, file: !1052, line: 27, baseType: !28, size: 32)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1051, file: !1052, line: 28, baseType: !1056, size: 192, offset: 64)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1057, line: 43, size: 192, elements: !1058)
!1057 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1058 = !{!1059, !1060}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1056, file: !1057, line: 44, baseType: !301, size: 32)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1056, file: !1057, line: 45, baseType: !134, size: 128, offset: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1035, file: !51, line: 185, baseType: !70, size: 64, offset: 256)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1035, file: !51, line: 186, baseType: !1063, size: 64, offset: 320)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !51, line: 204, size: 960, elements: !1065)
!1065 = !{!1066, !1067, !1071, !1078}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1064, file: !51, line: 205, baseType: !1024, size: 768)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1064, file: !51, line: 206, baseType: !1068, size: 64, offset: 768)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!1030, !1063}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1064, file: !51, line: 207, baseType: !1072, size: 64, offset: 832)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{null, !1075, !1076, !1077}
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1064, file: !51, line: 209, baseType: !1079, size: 64, offset: 896)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{!59, !1075, !70}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1035, file: !51, line: 187, baseType: !1030, size: 64, offset: 384)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1035, file: !51, line: 188, baseType: !1084, size: 64, offset: 448)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1035, file: !51, line: 189, baseType: !1086, size: 64, offset: 512)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !51, line: 157, size: 256, elements: !1088)
!1088 = !{!1089, !1090}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1087, file: !51, line: 158, baseType: !814, size: 192, align: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1087, file: !51, line: 159, baseType: !1075, size: 64, offset: 192)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1035, file: !51, line: 190, baseType: !745, size: 64, offset: 576)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1032, file: !51, line: 196, baseType: !1093, size: 64, offset: 640)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !815, line: 12, size: 64, elements: !1094)
!1094 = !{!1095}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1093, file: !815, line: 13, baseType: !819, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !964, file: !965, line: 100, baseType: !1075, size: 64, offset: 3776)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !964, file: !965, line: 102, baseType: !1098, size: 64, offset: 3840)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !965, line: 107, size: 1152, elements: !1100)
!1100 = !{!1101, !1102, !1103, !1104, !1105, !1109}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1099, file: !965, line: 108, baseType: !749, size: 128)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1099, file: !965, line: 109, baseType: !963, size: 64, offset: 128)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1099, file: !965, line: 110, baseType: !351, size: 32, offset: 192)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1099, file: !965, line: 111, baseType: !86, size: 32, offset: 224)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1099, file: !965, line: 112, baseType: !1106, size: 640, offset: 256)
!1106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 640, elements: !1107)
!1107 = !{!1108}
!1108 = !DISubrange(count: 10)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1099, file: !965, line: 113, baseType: !1110, size: 256, offset: 896)
!1110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 256, elements: !754)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !964, file: !965, line: 103, baseType: !1112, size: 640, offset: 3904)
!1112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !652, size: 640, elements: !1107)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !964, file: !965, line: 104, baseType: !1114, size: 256, offset: 4544)
!1114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !652, size: 256, elements: !754)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !774, file: !775, line: 139, baseType: !1098, size: 64, offset: 1216)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !774, file: !775, line: 140, baseType: !1117, size: 64, offset: 1280)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !775, line: 25, size: 64, elements: !1119)
!1119 = !{!1120, !1121, !1122}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1118, file: !775, line: 26, baseType: !86, size: 32)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1118, file: !775, line: 27, baseType: !59, size: 32, offset: 32)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1118, file: !775, line: 28, baseType: !1123, offset: 64)
!1123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !360, elements: !400)
!1124 = !DIDerivedType(tag: DW_TAG_member, scope: !774, file: !775, line: 142, baseType: !1125, size: 128, offset: 1344)
!1125 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !774, file: !775, line: 142, size: 128, elements: !1126)
!1126 = !{!1127, !1128}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1125, file: !775, line: 143, baseType: !59, size: 32)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1125, file: !775, line: 144, baseType: !379, size: 128, align: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !692, file: !174, line: 1013, baseType: !1130, size: 256, offset: 960)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !174, line: 970, size: 256, elements: !1131)
!1131 = !{!1132, !1133, !1134, !1135, !1136, !1137}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1130, file: !174, line: 971, baseType: !76, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1130, file: !174, line: 972, baseType: !28, size: 32, offset: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1130, file: !174, line: 973, baseType: !28, size: 32, offset: 96)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1130, file: !174, line: 974, baseType: !28, size: 32, offset: 128)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1130, file: !174, line: 975, baseType: !28, size: 32, offset: 160)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1130, file: !174, line: 976, baseType: !78, size: 64, offset: 192)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !692, file: !174, line: 1014, baseType: !1139, size: 128, offset: 1216)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1140, line: 8, size: 128, elements: !1141)
!1140 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1141 = !{!1142, !1143}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1139, file: !1140, line: 9, baseType: !523, size: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1139, file: !1140, line: 10, baseType: !412, size: 64, offset: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !692, file: !174, line: 1015, baseType: !345, size: 64, offset: 1344)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !692, file: !174, line: 1016, baseType: !1146, size: 64, offset: 1408)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1148)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !174, line: 1914, size: 2112, elements: !1149)
!1149 = !{!1150, !1151, !1155, !1159, !1163, !1336, !1337, !1352, !1365, !1373, !1377, !1378, !1696, !1697, !1701, !1706, !1707, !1711, !1715, !1721, !1722, !1726, !1727, !1734, !1738, !1742, !1748, !1752, !1758, !1762, !1766, !1767, !1773}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1148, file: !174, line: 1915, baseType: !564, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1148, file: !174, line: 1916, baseType: !1152, size: 64, offset: 64)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!78, !691, !78, !59}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1148, file: !174, line: 1917, baseType: !1156, size: 64, offset: 128)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{!649, !691, !518, !72, !77}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1148, file: !174, line: 1918, baseType: !1160, size: 64, offset: 192)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{!649, !691, !55, !72, !77}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1148, file: !174, line: 1919, baseType: !1164, size: 64, offset: 256)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!649, !1167, !1272}
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !174, line: 373, size: 384, elements: !1169)
!1169 = !{!1170, !1171, !1172, !1176, !1177, !1178, !1179}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1168, file: !174, line: 374, baseType: !691, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1168, file: !174, line: 375, baseType: !78, size: 64, offset: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1168, file: !174, line: 376, baseType: !1173, size: 64, offset: 128)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{null, !1167, !652}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1168, file: !174, line: 377, baseType: !57, size: 64, offset: 192)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1168, file: !174, line: 378, baseType: !59, size: 32, offset: 256)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1168, file: !174, line: 379, baseType: !130, size: 16, offset: 288)
!1179 = !DIDerivedType(tag: DW_TAG_member, scope: !1168, file: !174, line: 380, baseType: !1180, size: 64, offset: 320)
!1180 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1168, file: !174, line: 380, size: 64, elements: !1181)
!1181 = !{!1182, !1268}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1180, file: !174, line: 386, baseType: !1183, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !1185, line: 998, size: 448, elements: !1186)
!1185 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!1186 = !{!1187, !1254, !1255}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !1184, file: !1185, line: 999, baseType: !1188, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !145, line: 293, size: 1536, elements: !1190)
!1190 = !{!1191, !1221, !1235}
!1191 = !DIDerivedType(tag: DW_TAG_member, scope: !1189, file: !145, line: 295, baseType: !1192, size: 512)
!1192 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1189, file: !145, line: 295, size: 512, elements: !1193)
!1193 = !{!1194, !1220}
!1194 = !DIDerivedType(tag: DW_TAG_member, scope: !1192, file: !145, line: 296, baseType: !1195, size: 448)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1192, file: !145, line: 296, size: 448, elements: !1196)
!1196 = !{!1197, !1198, !1207, !1208, !1209, !1218, !1219}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1195, file: !145, line: 298, baseType: !76, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, scope: !1195, file: !145, line: 299, baseType: !1199, size: 128, offset: 64)
!1199 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1195, file: !145, line: 299, size: 128, elements: !1200)
!1200 = !{!1201, !1202}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1199, file: !145, line: 300, baseType: !134, size: 128)
!1202 = !DIDerivedType(tag: DW_TAG_member, scope: !1199, file: !145, line: 302, baseType: !1203, size: 128)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1199, file: !145, line: 302, size: 128, elements: !1204)
!1204 = !{!1205, !1206}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1203, file: !145, line: 303, baseType: !57, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1203, file: !145, line: 305, baseType: !28, size: 32, offset: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1195, file: !145, line: 310, baseType: !341, size: 64, offset: 192)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1195, file: !145, line: 311, baseType: !76, size: 64, offset: 256)
!1209 = !DIDerivedType(tag: DW_TAG_member, scope: !1195, file: !145, line: 312, baseType: !1210, size: 64, offset: 320)
!1210 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1195, file: !145, line: 312, size: 64, elements: !1211)
!1211 = !{!1212, !1213}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1210, file: !145, line: 313, baseType: !57, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1210, file: !145, line: 314, baseType: !1214, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !145, line: 257, baseType: !1215)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !145, line: 255, size: 64, elements: !1216)
!1216 = !{!1217}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1215, file: !145, line: 256, baseType: !76, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1195, file: !145, line: 316, baseType: !86, size: 32, offset: 384)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1195, file: !145, line: 317, baseType: !86, size: 32, offset: 416)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1192, file: !145, line: 323, baseType: !320, size: 512, align: 128)
!1221 = !DIDerivedType(tag: DW_TAG_member, scope: !1189, file: !145, line: 325, baseType: !1222, size: 512, offset: 512)
!1222 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1189, file: !145, line: 325, size: 512, elements: !1223)
!1223 = !{!1224, !1234}
!1224 = !DIDerivedType(tag: DW_TAG_member, scope: !1222, file: !145, line: 326, baseType: !1225, size: 320)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1222, file: !145, line: 326, size: 320, elements: !1226)
!1226 = !{!1227, !1228, !1229, !1230, !1231, !1232, !1233}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1225, file: !145, line: 327, baseType: !76, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1225, file: !145, line: 328, baseType: !76, size: 64, offset: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1225, file: !145, line: 329, baseType: !76, size: 64, offset: 128)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1225, file: !145, line: 331, baseType: !86, size: 32, offset: 192)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1225, file: !145, line: 332, baseType: !86, size: 32, offset: 224)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1225, file: !145, line: 333, baseType: !86, size: 32, offset: 256)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1225, file: !145, line: 335, baseType: !28, size: 32, offset: 288)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1222, file: !145, line: 339, baseType: !320, size: 512, align: 128)
!1235 = !DIDerivedType(tag: DW_TAG_member, scope: !1189, file: !145, line: 341, baseType: !1236, size: 512, offset: 1024)
!1236 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1189, file: !145, line: 341, size: 512, elements: !1237)
!1237 = !{!1238, !1247, !1253}
!1238 = !DIDerivedType(tag: DW_TAG_member, scope: !1236, file: !145, line: 342, baseType: !1239, size: 384)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1236, file: !145, line: 342, size: 384, elements: !1240)
!1240 = !{!1241, !1242, !1243, !1244, !1245, !1246}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1239, file: !145, line: 343, baseType: !76, size: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1239, file: !145, line: 344, baseType: !76, size: 64, offset: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1239, file: !145, line: 346, baseType: !57, size: 64, offset: 128)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1239, file: !145, line: 347, baseType: !57, size: 64, offset: 192)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1239, file: !145, line: 348, baseType: !57, size: 64, offset: 256)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1239, file: !145, line: 349, baseType: !57, size: 64, offset: 320)
!1247 = !DIDerivedType(tag: DW_TAG_member, scope: !1236, file: !145, line: 352, baseType: !1248, size: 256)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1236, file: !145, line: 352, size: 256, elements: !1249)
!1249 = !{!1250, !1251, !1252}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1248, file: !145, line: 353, baseType: !76, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1248, file: !145, line: 354, baseType: !76, size: 64, offset: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1248, file: !145, line: 356, baseType: !134, size: 128, offset: 128)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1236, file: !145, line: 359, baseType: !320, size: 512, align: 128)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !1184, file: !1185, line: 1000, baseType: !59, size: 32, offset: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1184, file: !1185, line: 1001, baseType: !1256, size: 320, offset: 128)
!1256 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !92, line: 14, baseType: !1257)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !92, line: 30, size: 320, elements: !1258)
!1258 = !{!1259, !1260, !1261, !1267}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1257, file: !92, line: 31, baseType: !28, size: 32)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1257, file: !92, line: 32, baseType: !57, size: 64, offset: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1257, file: !92, line: 33, baseType: !1262, size: 64, offset: 128)
!1262 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !92, line: 16, baseType: !1263)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!59, !1266, !28, !59, !57}
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1257, file: !92, line: 34, baseType: !134, size: 128, offset: 192)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1180, file: !174, line: 395, baseType: !1269, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{!649, !57}
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1274, line: 41, size: 320, elements: !1275)
!1274 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!1275 = !{!1276, !1277, !1278, !1279, !1280, !1281, !1286, !1331}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !1273, file: !1274, line: 42, baseType: !120, size: 8)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !1273, file: !1274, line: 43, baseType: !880, size: 8, offset: 8)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !1273, file: !1274, line: 44, baseType: !880, size: 8, offset: 16)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !1273, file: !1274, line: 45, baseType: !880, size: 8, offset: 24)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !1273, file: !1274, line: 46, baseType: !880, size: 8, offset: 32)
!1281 = !DIDerivedType(tag: DW_TAG_member, scope: !1273, file: !1274, line: 47, baseType: !1282, size: 64, offset: 64)
!1282 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1273, file: !1274, line: 47, size: 64, elements: !1283)
!1283 = !{!1284, !1285}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !1282, file: !1274, line: 48, baseType: !72, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !1282, file: !1274, line: 49, baseType: !59, size: 32)
!1286 = !DIDerivedType(tag: DW_TAG_member, scope: !1273, file: !1274, line: 61, baseType: !1287, size: 128, offset: 128)
!1287 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1273, file: !1274, line: 61, size: 128, elements: !1288)
!1288 = !{!1289, !1295}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !1287, file: !1274, line: 67, baseType: !1290, size: 128)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1291, line: 17, size: 128, elements: !1292)
!1291 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!1292 = !{!1293, !1294}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1290, file: !1291, line: 19, baseType: !57, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1290, file: !1291, line: 20, baseType: !73, size: 64, offset: 64)
!1295 = !DIDerivedType(tag: DW_TAG_member, scope: !1287, file: !1274, line: 68, baseType: !1296, size: 128)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1287, file: !1274, line: 68, size: 128, elements: !1297)
!1297 = !{!1298, !1330}
!1298 = !DIDerivedType(tag: DW_TAG_member, scope: !1296, file: !1274, line: 69, baseType: !1299, size: 64)
!1299 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1296, file: !1274, line: 69, size: 64, elements: !1300)
!1300 = !{!1301, !1304, !1311, !1320, !1329}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !1299, file: !1274, line: 71, baseType: !1302, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1290)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !1299, file: !1274, line: 72, baseType: !1305, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1307)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !1274, line: 17, size: 128, elements: !1308)
!1308 = !{!1309, !1310}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1307, file: !1274, line: 18, baseType: !57, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1307, file: !1274, line: 19, baseType: !72, size: 64, offset: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !1299, file: !1274, line: 73, baseType: !1312, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1314)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1315, line: 31, size: 128, elements: !1316)
!1315 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b9bd326f7e1a9ed4bc3baca0011068cc")
!1316 = !{!1317, !1318, !1319}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !1314, file: !1315, line: 32, baseType: !319, size: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !1314, file: !1315, line: 33, baseType: !28, size: 32, offset: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !1314, file: !1315, line: 34, baseType: !28, size: 32, offset: 96)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !1299, file: !1274, line: 74, baseType: !1321, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1323, line: 296, size: 128, elements: !1324)
!1323 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1324 = !{!1325, !1326, !1328}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1322, file: !1323, line: 297, baseType: !96, size: 32)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1322, file: !1323, line: 299, baseType: !1327, size: 32, offset: 32)
!1327 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !62, line: 154, baseType: !28)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1322, file: !1323, line: 300, baseType: !57, size: 64, offset: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !1299, file: !1274, line: 75, baseType: !57, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1296, file: !1274, line: 77, baseType: !72, size: 64, offset: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, scope: !1273, file: !1274, line: 80, baseType: !1332, size: 64, offset: 256)
!1332 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1273, file: !1274, line: 80, size: 64, elements: !1333)
!1333 = !{!1334, !1335}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !1332, file: !1274, line: 81, baseType: !76, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !1332, file: !1274, line: 82, baseType: !78, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1148, file: !174, line: 1920, baseType: !1164, size: 64, offset: 320)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1148, file: !174, line: 1921, baseType: !1338, size: 64, offset: 384)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{!59, !1167, !1341, !28}
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !185, line: 1559, size: 192, elements: !1343)
!1343 = !{!1344, !1347, !1348}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "req_list", scope: !1342, file: !185, line: 1560, baseType: !1345, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = !DICompositeType(tag: DW_TAG_structure_type, name: "request", file: !185, line: 32, flags: DIFlagFwdDecl)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "need_ts", scope: !1342, file: !185, line: 1561, baseType: !880, size: 8, offset: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1342, file: !185, line: 1562, baseType: !1349, size: 64, offset: 128)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{null, !1341}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1148, file: !174, line: 1923, baseType: !1353, size: 64, offset: 448)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{!59, !691, !1356}
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !174, line: 1858, size: 128, elements: !1358)
!1358 = !{!1359, !1364}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1357, file: !174, line: 1859, baseType: !1360, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !174, line: 1855, baseType: !1361)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DISubroutineType(types: !1363)
!1363 = !{!880, !1356, !55, !59, !78, !450, !28}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1357, file: !174, line: 1860, baseType: !78, size: 64, offset: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1148, file: !174, line: 1924, baseType: !1366, size: 64, offset: 512)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DISubroutineType(types: !1368)
!1368 = !{!1369, !691, !1371}
!1369 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1370, line: 59, baseType: !28)
!1370 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !174, line: 61, flags: DIFlagFwdDecl)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1148, file: !174, line: 1925, baseType: !1374, size: 64, offset: 576)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{!652, !691, !28, !76}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1148, file: !174, line: 1926, baseType: !1374, size: 64, offset: 640)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1148, file: !174, line: 1927, baseType: !1379, size: 64, offset: 704)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{!59, !691, !1382}
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !145, line: 625, size: 1344, elements: !1384)
!1384 = !{!1385, !1394, !1552, !1558, !1565, !1566, !1571, !1572, !1577, !1578, !1581, !1689, !1690, !1691, !1692, !1693, !1694}
!1385 = !DIDerivedType(tag: DW_TAG_member, scope: !1383, file: !145, line: 628, baseType: !1386, size: 128)
!1386 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1383, file: !145, line: 628, size: 128, elements: !1387)
!1387 = !{!1388, !1393}
!1388 = !DIDerivedType(tag: DW_TAG_member, scope: !1386, file: !145, line: 629, baseType: !1389, size: 128)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1386, file: !145, line: 629, size: 128, elements: !1390)
!1390 = !{!1391, !1392}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1389, file: !145, line: 631, baseType: !76, size: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1389, file: !145, line: 632, baseType: !76, size: 64, offset: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1386, file: !145, line: 635, baseType: !379, size: 128, align: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1383, file: !145, line: 639, baseType: !1395, size: 64, offset: 128)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !145, line: 733, size: 10240, elements: !1397)
!1397 = !{!1398, !1550}
!1398 = !DIDerivedType(tag: DW_TAG_member, scope: !1396, file: !145, line: 734, baseType: !1399, size: 10240)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1396, file: !145, line: 734, size: 10240, elements: !1400)
!1400 = !{!1401, !1405, !1419, !1423, !1424, !1425, !1426, !1427, !1428, !1437, !1438, !1439, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1478, !1480, !1483, !1530, !1531, !1532, !1535, !1536, !1537, !1540, !1541, !1542, !1548, !1549}
!1401 = !DIDerivedType(tag: DW_TAG_member, scope: !1399, file: !145, line: 739, baseType: !1402, size: 512, align: 512)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1399, file: !145, line: 739, size: 512, align: 512, elements: !1403)
!1403 = !{!1404}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1402, file: !145, line: 747, baseType: !86, size: 32)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1399, file: !145, line: 750, baseType: !1406, size: 128, offset: 512)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1407, line: 218, size: 128, elements: !1408)
!1407 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1408 = !{!1409, !1417, !1418}
!1409 = !DIDerivedType(tag: DW_TAG_member, scope: !1406, file: !1407, line: 219, baseType: !1410, size: 32)
!1410 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1406, file: !1407, line: 219, size: 32, elements: !1411)
!1411 = !{!1412, !1413}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1410, file: !1407, line: 220, baseType: !96, size: 32)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1410, file: !1407, line: 221, baseType: !1414)
!1414 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1407, line: 197, baseType: !1415)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1407, line: 197, elements: !1416)
!1416 = !{}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1406, file: !1407, line: 223, baseType: !28, size: 32, offset: 32)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1406, file: !1407, line: 224, baseType: !57, size: 64, offset: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1399, file: !145, line: 752, baseType: !1420, size: 64, offset: 640)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = !DISubroutineType(types: !1422)
!1422 = !{!76, !691, !76, !76, !76, !76}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1399, file: !145, line: 756, baseType: !76, size: 64, offset: 704)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1399, file: !145, line: 757, baseType: !76, size: 64, offset: 768)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1399, file: !145, line: 760, baseType: !76, size: 64, offset: 832)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1399, file: !145, line: 761, baseType: !76, size: 64, offset: 896)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1399, file: !145, line: 763, baseType: !76, size: 64, offset: 960)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1399, file: !145, line: 764, baseType: !1429, size: 64, offset: 1024)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1431, line: 299, baseType: !1432)
!1431 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1431, line: 299, size: 64, elements: !1433)
!1433 = !{!1434}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1432, file: !1431, line: 299, baseType: !1435, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1436, line: 18, baseType: !76)
!1436 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1399, file: !145, line: 773, baseType: !86, size: 32, offset: 1088)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1399, file: !145, line: 785, baseType: !86, size: 32, offset: 1120)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1399, file: !145, line: 795, baseType: !1440, size: 64, offset: 1152)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !145, line: 726, size: 128, elements: !1442)
!1442 = !{!1443, !1444}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1441, file: !145, line: 727, baseType: !450, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1441, file: !145, line: 728, baseType: !59, size: 32, offset: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1399, file: !145, line: 801, baseType: !76, size: 64, offset: 1216)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1399, file: !145, line: 804, baseType: !292, size: 64, offset: 1280)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1399, file: !145, line: 806, baseType: !59, size: 32, offset: 1344)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1399, file: !145, line: 808, baseType: !96, size: 32, offset: 1376)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1399, file: !145, line: 823, baseType: !822, size: 320, offset: 1408)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1399, file: !145, line: 825, baseType: !134, size: 128, offset: 1728)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1399, file: !145, line: 845, baseType: !59, size: 32, offset: 1856)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1399, file: !145, line: 849, baseType: !76, size: 64, offset: 1920)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1399, file: !145, line: 850, baseType: !76, size: 64, offset: 1984)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1399, file: !145, line: 852, baseType: !76, size: 64, offset: 2048)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1399, file: !145, line: 853, baseType: !76, size: 64, offset: 2112)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1399, file: !145, line: 854, baseType: !294, size: 64, offset: 2176)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1399, file: !145, line: 855, baseType: !76, size: 64, offset: 2240)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1399, file: !145, line: 856, baseType: !76, size: 64, offset: 2304)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1399, file: !145, line: 857, baseType: !76, size: 64, offset: 2368)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1399, file: !145, line: 858, baseType: !76, size: 64, offset: 2432)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1399, file: !145, line: 865, baseType: !423, size: 32, offset: 2496)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1399, file: !145, line: 867, baseType: !96, size: 32, offset: 2528)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1399, file: !145, line: 869, baseType: !76, size: 64, offset: 2560)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1399, file: !145, line: 869, baseType: !76, size: 64, offset: 2624)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1399, file: !145, line: 869, baseType: !76, size: 64, offset: 2688)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1399, file: !145, line: 869, baseType: !76, size: 64, offset: 2752)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1399, file: !145, line: 870, baseType: !76, size: 64, offset: 2816)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1399, file: !145, line: 870, baseType: !76, size: 64, offset: 2880)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1399, file: !145, line: 870, baseType: !76, size: 64, offset: 2944)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1399, file: !145, line: 871, baseType: !76, size: 64, offset: 3008)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1399, file: !145, line: 871, baseType: !76, size: 64, offset: 3072)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1399, file: !145, line: 871, baseType: !76, size: 64, offset: 3136)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1399, file: !145, line: 871, baseType: !76, size: 64, offset: 3200)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1399, file: !145, line: 873, baseType: !1475, size: 3328, offset: 3264)
!1475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 3328, elements: !1476)
!1476 = !{!1477}
!1477 = !DISubrange(count: 52)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1399, file: !145, line: 875, baseType: !1479, size: 1280, offset: 6592)
!1479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !938, size: 1280, elements: !754)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1399, file: !145, line: 877, baseType: !1481, size: 64, offset: 7872)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !145, line: 877, flags: DIFlagFwdDecl)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1399, file: !145, line: 880, baseType: !1484, size: 1088, offset: 7936)
!1484 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1485, line: 72, baseType: !1486)
!1485 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1485, line: 23, size: 1088, elements: !1487)
!1487 = !{!1488, !1489, !1490, !1491, !1492, !1495, !1496, !1497, !1498, !1525, !1526, !1527}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1486, file: !1485, line: 28, baseType: !450, size: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1486, file: !1485, line: 38, baseType: !294, size: 64, offset: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1486, file: !1485, line: 40, baseType: !76, size: 64, offset: 128)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1486, file: !1485, line: 43, baseType: !822, size: 320, offset: 192)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1486, file: !1485, line: 44, baseType: !1493, size: 64, offset: 512)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1485, line: 44, flags: DIFlagFwdDecl)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1486, file: !1485, line: 48, baseType: !76, size: 64, offset: 576)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1486, file: !1485, line: 59, baseType: !288, size: 256, offset: 640)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1486, file: !1485, line: 60, baseType: !57, size: 64, offset: 896)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1486, file: !1485, line: 61, baseType: !1499, size: 64, offset: 960)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1501)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1502, line: 13, size: 1216, elements: !1503)
!1502 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1503 = !{!1504, !1505, !1506, !1507, !1508, !1509, !1510, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1501, file: !1502, line: 14, baseType: !57, size: 64)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1501, file: !1502, line: 15, baseType: !76, size: 64, offset: 64)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1501, file: !1502, line: 17, baseType: !76, size: 64, offset: 128)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1501, file: !1502, line: 17, baseType: !76, size: 64, offset: 192)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1501, file: !1502, line: 18, baseType: !76, size: 64, offset: 256)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1501, file: !1502, line: 18, baseType: !76, size: 64, offset: 320)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1501, file: !1502, line: 19, baseType: !1511, size: 64, offset: 384)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1501, file: !1502, line: 21, baseType: !652, size: 64, offset: 448)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1501, file: !1502, line: 23, baseType: !652, size: 64, offset: 512)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1501, file: !1502, line: 24, baseType: !652, size: 64, offset: 576)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1501, file: !1502, line: 25, baseType: !652, size: 64, offset: 640)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1501, file: !1502, line: 26, baseType: !652, size: 64, offset: 704)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1501, file: !1502, line: 27, baseType: !652, size: 64, offset: 768)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1501, file: !1502, line: 28, baseType: !652, size: 64, offset: 832)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1501, file: !1502, line: 29, baseType: !652, size: 64, offset: 896)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1501, file: !1502, line: 30, baseType: !652, size: 64, offset: 960)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1501, file: !1502, line: 31, baseType: !652, size: 64, offset: 1024)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1501, file: !1502, line: 32, baseType: !652, size: 64, offset: 1088)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1501, file: !1502, line: 33, baseType: !652, size: 64, offset: 1152)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1486, file: !1485, line: 63, baseType: !86, size: 32, offset: 1024)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1486, file: !1485, line: 69, baseType: !130, size: 16, offset: 1056)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1486, file: !1485, line: 70, baseType: !1528, size: 16, offset: 1072)
!1528 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !121, line: 18, baseType: !1529)
!1529 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !123, line: 23, baseType: !393)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1399, file: !145, line: 882, baseType: !76, size: 64, offset: 9024)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1399, file: !145, line: 885, baseType: !96, size: 32, offset: 9088)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1399, file: !145, line: 886, baseType: !1533, size: 64, offset: 9152)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !145, line: 732, flags: DIFlagFwdDecl)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1399, file: !145, line: 901, baseType: !963, size: 64, offset: 9216)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1399, file: !145, line: 904, baseType: !691, size: 64, offset: 9280)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1399, file: !145, line: 906, baseType: !1538, size: 64, offset: 9344)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !145, line: 906, flags: DIFlagFwdDecl)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1399, file: !145, line: 930, baseType: !86, size: 32, offset: 9408)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1399, file: !145, line: 933, baseType: !86, size: 32, offset: 9440)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1399, file: !145, line: 935, baseType: !1543, size: 64, offset: 9472)
!1543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !264, line: 103, size: 64, elements: !1544)
!1544 = !{!1545}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1543, file: !264, line: 104, baseType: !1546, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !264, line: 101, flags: DIFlagFwdDecl)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1399, file: !145, line: 940, baseType: !292, size: 64, offset: 9536)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1399, file: !145, line: 942, baseType: !1012, size: 256, offset: 9600)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1396, file: !145, line: 986, baseType: !1551, offset: 10240)
!1551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, elements: !400)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1383, file: !145, line: 640, baseType: !1553, size: 64, offset: 192)
!1553 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1431, line: 297, baseType: !1554)
!1554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1431, line: 297, size: 64, elements: !1555)
!1555 = !{!1556}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1554, file: !1431, line: 297, baseType: !1557, size: 64)
!1557 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1436, line: 19, baseType: !76)
!1558 = !DIDerivedType(tag: DW_TAG_member, scope: !1383, file: !145, line: 646, baseType: !1559, size: 64, offset: 256)
!1559 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1383, file: !145, line: 646, size: 64, elements: !1560)
!1560 = !{!1561, !1564}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1559, file: !145, line: 647, baseType: !1562, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1563)
!1563 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !145, line: 542, baseType: !76)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1559, file: !145, line: 648, baseType: !1563, size: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1383, file: !145, line: 666, baseType: !59, size: 32, offset: 320)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1383, file: !145, line: 667, baseType: !1567, size: 64, offset: 384)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !145, line: 579, size: 320, elements: !1569)
!1569 = !{!1570}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1568, file: !145, line: 580, baseType: !822, size: 320)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1383, file: !145, line: 670, baseType: !880, size: 8, offset: 448)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1383, file: !145, line: 681, baseType: !1573, size: 256, offset: 512)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1383, file: !145, line: 678, size: 256, elements: !1574)
!1574 = !{!1575, !1576}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1573, file: !145, line: 679, baseType: !814, size: 192, align: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1573, file: !145, line: 680, baseType: !76, size: 64, offset: 192)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1383, file: !145, line: 689, baseType: !134, size: 128, offset: 768)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1383, file: !145, line: 691, baseType: !1579, size: 64, offset: 896)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !145, line: 691, flags: DIFlagFwdDecl)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1383, file: !145, line: 694, baseType: !1582, size: 64, offset: 960)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1584)
!1584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1585, line: 563, size: 1024, elements: !1586)
!1585 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1586 = !{!1587, !1591, !1592, !1596, !1600, !1604, !1653, !1657, !1661, !1665, !1666, !1667, !1671, !1675, !1681, !1685}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1584, file: !1585, line: 564, baseType: !1588, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DISubroutineType(types: !1590)
!1590 = !{null, !1382}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1584, file: !1585, line: 569, baseType: !1588, size: 64, offset: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1584, file: !1585, line: 571, baseType: !1593, size: 64, offset: 128)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{!59, !1382, !76}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1584, file: !1585, line: 572, baseType: !1597, size: 64, offset: 192)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DISubroutineType(types: !1599)
!1599 = !{!59, !1382}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1584, file: !1585, line: 578, baseType: !1601, size: 64, offset: 256)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!59, !1382, !76, !76, !76}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1584, file: !1585, line: 580, baseType: !1605, size: 64, offset: 320)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DISubroutineType(types: !1607)
!1607 = !{!1608, !1609}
!1608 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !145, line: 1184, baseType: !28)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1585, line: 512, size: 896, elements: !1611)
!1611 = !{!1612, !1620, !1621, !1628, !1635, !1645, !1646, !1647, !1649, !1651}
!1612 = !DIDerivedType(tag: DW_TAG_member, scope: !1610, file: !1585, line: 513, baseType: !1613, size: 320)
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1610, file: !1585, line: 513, size: 320, elements: !1614)
!1614 = !{!1615, !1616, !1617, !1618, !1619}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1613, file: !1585, line: 514, baseType: !1382, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1613, file: !1585, line: 515, baseType: !1327, size: 32, offset: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1613, file: !1585, line: 516, baseType: !76, size: 64, offset: 128)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1613, file: !1585, line: 517, baseType: !76, size: 64, offset: 192)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1613, file: !1585, line: 518, baseType: !76, size: 64, offset: 256)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1610, file: !1585, line: 520, baseType: !144, size: 32, offset: 320)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1610, file: !1585, line: 522, baseType: !1622, size: 64, offset: 384)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1436, line: 22, baseType: !1624)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1436, line: 22, size: 64, elements: !1625)
!1625 = !{!1626}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1624, file: !1436, line: 22, baseType: !1627, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1436, line: 15, baseType: !76)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1610, file: !1585, line: 524, baseType: !1629, size: 64, offset: 448)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1431, line: 372, baseType: !1631)
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1431, line: 372, size: 64, elements: !1632)
!1632 = !{!1633}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1631, file: !1431, line: 372, baseType: !1634, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1436, line: 16, baseType: !76)
!1635 = !DIDerivedType(tag: DW_TAG_member, scope: !1610, file: !1585, line: 527, baseType: !1636, size: 64, offset: 512)
!1636 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1610, file: !1585, line: 527, size: 64, elements: !1637)
!1637 = !{!1638, !1644}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1636, file: !1585, line: 528, baseType: !1639, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1436, line: 21, baseType: !1640)
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1436, line: 21, size: 64, elements: !1641)
!1641 = !{!1642}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1640, file: !1436, line: 21, baseType: !1643, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1436, line: 14, baseType: !76)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1636, file: !1585, line: 529, baseType: !1623, size: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1610, file: !1585, line: 534, baseType: !319, size: 64, offset: 576)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1610, file: !1585, line: 535, baseType: !319, size: 64, offset: 640)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1610, file: !1585, line: 541, baseType: !1648, size: 64, offset: 704)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1610, file: !1585, line: 545, baseType: !1650, size: 64, offset: 768)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1610, file: !1585, line: 549, baseType: !1652, size: 64, offset: 832)
!1652 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1431, line: 520, baseType: !319)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1584, file: !1585, line: 581, baseType: !1654, size: 64, offset: 384)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{!1608, !1609, !28}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1584, file: !1585, line: 582, baseType: !1658, size: 64, offset: 448)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{!1608, !1609, !76, !76}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1584, file: !1585, line: 584, baseType: !1662, size: 64, offset: 512)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DISubroutineType(types: !1664)
!1664 = !{!76, !1382}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1584, file: !1585, line: 588, baseType: !1605, size: 64, offset: 576)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1584, file: !1585, line: 591, baseType: !1605, size: 64, offset: 640)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1584, file: !1585, line: 597, baseType: !1668, size: 64, offset: 704)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DISubroutineType(types: !1670)
!1670 = !{!59, !1382, !76, !57, !59, !59}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1584, file: !1585, line: 603, baseType: !1672, size: 64, offset: 768)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DISubroutineType(types: !1674)
!1674 = !{!55, !1382}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1584, file: !1585, line: 613, baseType: !1676, size: 64, offset: 832)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{!59, !1382, !1679}
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !145, line: 717, flags: DIFlagFwdDecl)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1584, file: !1585, line: 625, baseType: !1682, size: 64, offset: 896)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!1679, !1382, !76}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1584, file: !1585, line: 633, baseType: !1686, size: 64, offset: 960)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{!319, !1382, !76}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1383, file: !145, line: 697, baseType: !76, size: 64, offset: 1024)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1383, file: !145, line: 699, baseType: !691, size: 64, offset: 1088)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1383, file: !145, line: 700, baseType: !57, size: 64, offset: 1152)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1383, file: !145, line: 711, baseType: !292, size: 64, offset: 1216)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1383, file: !145, line: 717, baseType: !1679, size: 64, offset: 1280)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1383, file: !145, line: 722, baseType: !1695, offset: 1344)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !145, line: 570, elements: !1416)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1148, file: !174, line: 1928, baseType: !76, size: 64, offset: 768)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1148, file: !174, line: 1929, baseType: !1698, size: 64, offset: 832)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!59, !345, !691}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1148, file: !174, line: 1930, baseType: !1702, size: 64, offset: 896)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{!59, !691, !1705}
!1705 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !174, line: 1061, baseType: !57)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1148, file: !174, line: 1931, baseType: !1698, size: 64, offset: 960)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1148, file: !174, line: 1932, baseType: !1708, size: 64, offset: 1024)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{!59, !691, !78, !78, !59}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1148, file: !174, line: 1933, baseType: !1712, size: 64, offset: 1088)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{!59, !59, !691, !59}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1148, file: !174, line: 1934, baseType: !1716, size: 64, offset: 1152)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{!59, !691, !59, !1719}
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !174, line: 1063, flags: DIFlagFwdDecl)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1148, file: !174, line: 1935, baseType: !1420, size: 64, offset: 1216)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1148, file: !174, line: 1936, baseType: !1723, size: 64, offset: 1280)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{!59, !59}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1148, file: !174, line: 1937, baseType: !1716, size: 64, offset: 1344)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1148, file: !174, line: 1938, baseType: !1728, size: 64, offset: 1408)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{!649, !1731, !691, !77, !72, !28}
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1733, line: 59, flags: DIFlagFwdDecl)
!1733 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1148, file: !174, line: 1939, baseType: !1735, size: 64, offset: 1472)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{!649, !691, !77, !1731, !72, !28}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1148, file: !174, line: 1940, baseType: !1739, size: 64, offset: 1536)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{null, !691}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1148, file: !174, line: 1941, baseType: !1743, size: 64, offset: 1600)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DISubroutineType(types: !1745)
!1745 = !{!59, !691, !59, !1746, !1747}
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1148, file: !174, line: 1942, baseType: !1749, size: 64, offset: 1664)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DISubroutineType(types: !1751)
!1751 = !{!652, !691, !59, !78, !78}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1148, file: !174, line: 1944, baseType: !1753, size: 64, offset: 1728)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{null, !1756, !691}
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1733, line: 66, flags: DIFlagFwdDecl)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1148, file: !174, line: 1948, baseType: !1759, size: 64, offset: 1792)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = !DISubroutineType(types: !1761)
!1761 = !{!649, !691, !78, !691, !78, !72, !28}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1148, file: !174, line: 1950, baseType: !1763, size: 64, offset: 1856)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{!78, !691, !78, !691, !78, !78, !28}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1148, file: !174, line: 1953, baseType: !1708, size: 64, offset: 1920)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1148, file: !174, line: 1954, baseType: !1768, size: 64, offset: 1984)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DISubroutineType(types: !1770)
!1770 = !{!59, !1771, !28}
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !174, line: 1911, flags: DIFlagFwdDecl)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1148, file: !174, line: 1955, baseType: !1774, size: 64, offset: 2048)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{!59, !1771, !1341, !28}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !692, file: !174, line: 1018, baseType: !450, size: 64, offset: 1472)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !692, file: !174, line: 1020, baseType: !57, size: 64, offset: 1536)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !692, file: !174, line: 1023, baseType: !57, size: 64, offset: 1600)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !692, file: !174, line: 1027, baseType: !1781, size: 64, offset: 1664)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !692, file: !174, line: 1029, baseType: !341, size: 64, offset: 1728)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !692, file: !174, line: 1030, baseType: !1784, size: 32, offset: 1792)
!1784 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1785, line: 8, baseType: !446)
!1785 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !692, file: !174, line: 1031, baseType: !1784, size: 32, offset: 1824)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !678, file: !643, line: 182, baseType: !688, size: 64, offset: 384)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !678, file: !643, line: 184, baseType: !1789, size: 64, offset: 448)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DISubroutineType(types: !1791)
!1791 = !{!59, !691, !583, !677, !1382}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !666, file: !643, line: 90, baseType: !1793, size: 64, offset: 192)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !666, file: !643, line: 91, baseType: !1795, size: 64, offset: 256)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !633, file: !578, line: 120, baseType: !1797, size: 64, offset: 192)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{!1800, !601}
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1802)
!1802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !168, line: 39, size: 384, elements: !1803)
!1803 = !{!1804, !1805, !1809, !1813, !1819, !1823}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1802, file: !168, line: 40, baseType: !167, size: 32)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1802, file: !168, line: 41, baseType: !1806, size: 64, offset: 64)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DISubroutineType(types: !1808)
!1808 = !{!880}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1802, file: !168, line: 42, baseType: !1810, size: 64, offset: 128)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DISubroutineType(types: !1812)
!1812 = !{!57}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1802, file: !168, line: 43, baseType: !1814, size: 64, offset: 192)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{!1511, !1817}
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !168, line: 19, flags: DIFlagFwdDecl)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1802, file: !168, line: 44, baseType: !1820, size: 64, offset: 256)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{!1511}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1802, file: !168, line: 45, baseType: !1824, size: 64, offset: 320)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DISubroutineType(types: !1826)
!1826 = !{null, !57}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !633, file: !578, line: 121, baseType: !1828, size: 64, offset: 256)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{!1511, !601}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !633, file: !578, line: 122, baseType: !1832, size: 64, offset: 320)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{null, !601, !1076, !1077}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !577, file: !578, line: 70, baseType: !1836, size: 64, offset: 384)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1838, line: 190, size: 1152, elements: !1839)
!1838 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1839 = !{!1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1931, !1932, !1933, !1934, !1935, !1938}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1837, file: !1838, line: 191, baseType: !86, size: 32)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1837, file: !1838, line: 192, baseType: !86, size: 32, offset: 32)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1837, file: !1838, line: 202, baseType: !1836, size: 64, offset: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1837, file: !1838, line: 203, baseType: !55, size: 64, offset: 128)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1837, file: !1838, line: 205, baseType: !814, size: 192, align: 64, offset: 192)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1837, file: !1838, line: 207, baseType: !1511, size: 64, offset: 384)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1837, file: !1838, line: 208, baseType: !28, size: 32, offset: 448)
!1847 = !DIDerivedType(tag: DW_TAG_member, scope: !1837, file: !1838, line: 209, baseType: !1848, size: 256, offset: 512)
!1848 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1837, file: !1838, line: 209, size: 256, elements: !1849)
!1849 = !{!1850, !1859, !1863}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1848, file: !1838, line: 210, baseType: !1851, size: 256)
!1851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1838, line: 153, size: 256, elements: !1852)
!1852 = !{!1853, !1854, !1855, !1858}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1851, file: !1838, line: 154, baseType: !76, size: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1851, file: !1838, line: 156, baseType: !1093, size: 64, offset: 64)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1851, file: !1838, line: 162, baseType: !1856, size: 64, offset: 128)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1838, line: 162, flags: DIFlagFwdDecl)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1851, file: !1838, line: 167, baseType: !76, size: 64, offset: 192)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1848, file: !1838, line: 211, baseType: !1860, size: 64)
!1860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1838, line: 170, size: 64, elements: !1861)
!1861 = !{!1862}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1860, file: !1838, line: 171, baseType: !1836, size: 64)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1848, file: !1838, line: 212, baseType: !1864, size: 256)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1838, line: 174, size: 256, elements: !1865)
!1865 = !{!1866, !1926, !1929, !1930}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1864, file: !1838, line: 175, baseType: !1867, size: 64)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1869)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1838, line: 271, size: 768, elements: !1870)
!1870 = !{!1871, !1891, !1895, !1899, !1903, !1907, !1911, !1915, !1916, !1917, !1918, !1922}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1869, file: !1838, line: 276, baseType: !1872, size: 64)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{!59, !1875}
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1838, line: 251, size: 1216, elements: !1877)
!1877 = !{!1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1876, file: !1838, line: 253, baseType: !1836, size: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1876, file: !1838, line: 254, baseType: !691, size: 64, offset: 64)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1876, file: !1838, line: 255, baseType: !1756, size: 64, offset: 128)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1876, file: !1838, line: 256, baseType: !57, size: 64, offset: 192)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1876, file: !1838, line: 259, baseType: !288, size: 256, offset: 256)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1876, file: !1838, line: 260, baseType: !288, size: 256, offset: 512)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1876, file: !1838, line: 261, baseType: !59, size: 32, offset: 768)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1876, file: !1838, line: 262, baseType: !134, size: 128, offset: 832)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1876, file: !1838, line: 263, baseType: !518, size: 64, offset: 960)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1876, file: !1838, line: 265, baseType: !72, size: 64, offset: 1024)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1876, file: !1838, line: 266, baseType: !880, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1876, file: !1838, line: 267, baseType: !880, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1876, file: !1838, line: 268, baseType: !1582, size: 64, offset: 1152)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1869, file: !1838, line: 277, baseType: !1892, size: 64, offset: 64)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = !DISubroutineType(types: !1894)
!1894 = !{null, !1875}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1869, file: !1838, line: 290, baseType: !1896, size: 64, offset: 128)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DISubroutineType(types: !1898)
!1898 = !{!59, !1756, !57}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1869, file: !1838, line: 292, baseType: !1900, size: 64, offset: 192)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = !DISubroutineType(types: !1902)
!1902 = !{!57, !1756, !77}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1869, file: !1838, line: 293, baseType: !1904, size: 64, offset: 256)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!57, !1756, !57, !77}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1869, file: !1838, line: 294, baseType: !1908, size: 64, offset: 320)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{null, !1756, !57}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1869, file: !1838, line: 296, baseType: !1912, size: 64, offset: 384)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DISubroutineType(types: !1914)
!1914 = !{!649, !1875, !518, !72, !78}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1869, file: !1838, line: 306, baseType: !72, size: 64, offset: 448)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1869, file: !1838, line: 313, baseType: !880, size: 8, offset: 512)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1869, file: !1838, line: 314, baseType: !1912, size: 64, offset: 576)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1869, file: !1838, line: 317, baseType: !1919, size: 64, offset: 640)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{!1369, !1875, !1371}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1869, file: !1838, line: 320, baseType: !1923, size: 64, offset: 704)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{!59, !1875, !1382}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1864, file: !1838, line: 176, baseType: !1927, size: 64, offset: 64)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1838, line: 35, flags: DIFlagFwdDecl)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1864, file: !1838, line: 177, baseType: !78, size: 64, offset: 128)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1864, file: !1838, line: 178, baseType: !1836, size: 64, offset: 192)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1837, file: !1838, line: 215, baseType: !57, size: 64, offset: 768)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1837, file: !1838, line: 221, baseType: !450, size: 64, offset: 832)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1837, file: !1838, line: 223, baseType: !63, size: 16, offset: 896)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1837, file: !1838, line: 224, baseType: !61, size: 16, offset: 912)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1837, file: !1838, line: 225, baseType: !1936, size: 64, offset: 960)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1838, line: 36, flags: DIFlagFwdDecl)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1837, file: !1838, line: 227, baseType: !379, size: 128, align: 64, offset: 1024)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !577, file: !578, line: 71, baseType: !1940, size: 32, offset: 448)
!1940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1941, line: 19, size: 32, elements: !1942)
!1941 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1942 = !{!1943}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1940, file: !1941, line: 20, baseType: !373, size: 32)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !577, file: !578, line: 73, baseType: !28, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !577, file: !578, line: 74, baseType: !28, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !577, file: !578, line: 75, baseType: !28, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !577, file: !578, line: 76, baseType: !28, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !577, file: !578, line: 77, baseType: !28, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !574, file: !27, line: 47, baseType: !564, size: 64, offset: 512)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !574, file: !27, line: 48, baseType: !583, size: 64, offset: 576)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !574, file: !27, line: 49, baseType: !1952, size: 64, offset: 640)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !27, line: 49, flags: DIFlagFwdDecl)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !574, file: !27, line: 50, baseType: !1050, size: 64, offset: 704)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !565, file: !27, line: 418, baseType: !1956, size: 64, offset: 1408)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !27, line: 53, size: 448, elements: !1958)
!1958 = !{!1959, !1960, !1965, !1969, !1973, !1977}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1957, file: !27, line: 54, baseType: !654, size: 128)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1957, file: !27, line: 55, baseType: !1961, size: 64, offset: 128)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{!649, !1956, !1964, !518}
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1957, file: !27, line: 57, baseType: !1966, size: 64, offset: 192)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{!649, !1956, !1964, !55, !72}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1957, file: !27, line: 59, baseType: !1970, size: 64, offset: 256)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DISubroutineType(types: !1972)
!1972 = !{null, !564, !55}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1957, file: !27, line: 60, baseType: !1974, size: 64, offset: 320)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{!59, !564}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1957, file: !27, line: 61, baseType: !1978, size: 64, offset: 384)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{null, !564}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !565, file: !27, line: 419, baseType: !55, size: 64, offset: 1472)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !565, file: !27, line: 420, baseType: !55, size: 64, offset: 1536)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !565, file: !27, line: 421, baseType: !583, size: 64, offset: 1600)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !565, file: !27, line: 424, baseType: !1985, size: 64, offset: 1664)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1987)
!1987 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !27, line: 424, flags: DIFlagFwdDecl)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !565, file: !27, line: 425, baseType: !1989, size: 64, offset: 1728)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !807)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !565, file: !27, line: 426, baseType: !28, size: 32, offset: 1792)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !565, file: !27, line: 435, baseType: !288, size: 256, offset: 1856)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !565, file: !27, line: 437, baseType: !1994, size: 64, offset: 2112)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1996, line: 69, size: 320, elements: !1997)
!1996 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1997 = !{!1998, !1999, !2000, !2017, !2019, !2023, !2024}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1995, file: !1996, line: 70, baseType: !55, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1995, file: !1996, line: 71, baseType: !564, size: 64, offset: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1995, file: !1996, line: 72, baseType: !2001, size: 64, offset: 128)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2003)
!2003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1996, line: 47, size: 256, elements: !2004)
!2004 = !{!2005, !2006, !2012, !2016}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2003, file: !1996, line: 49, baseType: !28, size: 32)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2003, file: !1996, line: 51, baseType: !2007, size: 64, offset: 64)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!59, !55, !2010}
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1995)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2003, file: !1996, line: 53, baseType: !2013, size: 64, offset: 128)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{!59, !518, !2010}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2003, file: !1996, line: 55, baseType: !1824, size: 64, offset: 192)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1995, file: !1996, line: 73, baseType: !2018, size: 16, offset: 192)
!2018 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1995, file: !1996, line: 74, baseType: !2020, size: 8, offset: 208)
!2020 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !121, line: 16, baseType: !2021)
!2021 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !123, line: 20, baseType: !2022)
!2022 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1995, file: !1996, line: 75, baseType: !120, size: 8, offset: 216)
!2024 = !DIDerivedType(tag: DW_TAG_member, scope: !1995, file: !1996, line: 76, baseType: !2025, size: 64, offset: 256)
!2025 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1995, file: !1996, line: 76, size: 64, elements: !2026)
!2026 = !{!2027, !2028, !2035}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2025, file: !1996, line: 77, baseType: !57, size: 64)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2025, file: !1996, line: 78, baseType: !2029, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2031)
!2031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1996, line: 86, size: 128, elements: !2032)
!2032 = !{!2033, !2034}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2031, file: !1996, line: 87, baseType: !28, size: 32)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2031, file: !1996, line: 88, baseType: !518, size: 64, offset: 64)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2025, file: !1996, line: 79, baseType: !2036, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2038)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1996, line: 92, size: 256, elements: !2039)
!2039 = !{!2040, !2041, !2042, !2044, !2045}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2038, file: !1996, line: 94, baseType: !28, size: 32)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2038, file: !1996, line: 95, baseType: !28, size: 32, offset: 32)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2038, file: !1996, line: 96, baseType: !2043, size: 64, offset: 64)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2038, file: !1996, line: 97, baseType: !2001, size: 64, offset: 128)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2038, file: !1996, line: 98, baseType: !57, size: 64, offset: 192)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !565, file: !27, line: 438, baseType: !28, size: 32, offset: 2176)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !565, file: !27, line: 441, baseType: !28, size: 32, offset: 2208)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !565, file: !27, line: 442, baseType: !1985, size: 64, offset: 2240)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !565, file: !27, line: 443, baseType: !1989, size: 64, offset: 2304)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !565, file: !27, line: 444, baseType: !880, size: 8, offset: 2368)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !565, file: !27, line: 451, baseType: !880, size: 8, offset: 2376)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !565, file: !27, line: 454, baseType: !28, size: 32, offset: 2400)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !565, file: !27, line: 455, baseType: !2054, size: 64, offset: 2432)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2056, line: 23, size: 96, elements: !2057)
!2056 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2057 = !{!2058, !2059, !2060}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2055, file: !2056, line: 24, baseType: !59, size: 32)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2055, file: !2056, line: 24, baseType: !59, size: 32, offset: 32)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2055, file: !2056, line: 24, baseType: !59, size: 32, offset: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !565, file: !27, line: 458, baseType: !2062, size: 64, offset: 2496)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{!59}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !565, file: !27, line: 460, baseType: !2066, size: 4032, align: 512, offset: 2560)
!2066 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2067, size: 4032, elements: !2083)
!2067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !27, line: 362, size: 576, elements: !2068)
!2068 = !{!2069, !2070, !2071}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2067, file: !27, line: 363, baseType: !57, size: 64)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2067, file: !27, line: 364, baseType: !28, size: 32, offset: 64)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2067, file: !27, line: 367, baseType: !2072, size: 448, offset: 128)
!2072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !27, line: 319, size: 448, elements: !2073)
!2073 = !{!2074, !2075}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2072, file: !27, line: 320, baseType: !564, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2072, file: !27, line: 321, baseType: !2076, size: 384, offset: 64)
!2076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2077, line: 40, size: 384, elements: !2078)
!2077 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2078 = !{!2079}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2076, file: !2077, line: 41, baseType: !2080, size: 384, align: 64)
!2080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !814, size: 384, align: 64, elements: !2081)
!2081 = !{!2082}
!2082 = !DISubrange(count: 2)
!2083 = !{!2084}
!2084 = !DISubrange(count: 7)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !565, file: !27, line: 463, baseType: !2086, size: 192, offset: 6592)
!2086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2087, line: 8, size: 192, elements: !2088)
!2087 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2088 = !{!2089, !2090, !2092}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2086, file: !2087, line: 10, baseType: !28, size: 32)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2086, file: !2087, line: 11, baseType: !2091, size: 64, offset: 64)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2086, file: !2087, line: 12, baseType: !2093, size: 64, offset: 128)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2095, line: 59, size: 48, elements: !2096)
!2095 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2096 = !{!2097, !2098, !2099, !2100, !2101, !2102}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2094, file: !2095, line: 60, baseType: !1528, size: 16)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2094, file: !2095, line: 61, baseType: !1528, size: 16, offset: 16)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2094, file: !2095, line: 63, baseType: !28, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2094, file: !2095, line: 64, baseType: !28, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2094, file: !2095, line: 65, baseType: !28, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2094, file: !2095, line: 66, baseType: !28, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !565, file: !27, line: 465, baseType: !76, size: 64, offset: 6784)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !565, file: !27, line: 469, baseType: !28, size: 32, offset: 6848)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !565, file: !27, line: 470, baseType: !134, size: 128, offset: 6912)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !565, file: !27, line: 471, baseType: !2107, size: 64, offset: 7040)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2109, line: 33, size: 96, elements: !2110)
!2109 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2110 = !{!2111, !2112, !2113, !2114}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2108, file: !2109, line: 37, baseType: !59, size: 32)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2108, file: !2109, line: 43, baseType: !59, size: 32, offset: 32)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2108, file: !2109, line: 45, baseType: !63, size: 16, offset: 64)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2108, file: !2109, line: 47, baseType: !63, size: 16, offset: 80)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !565, file: !27, line: 476, baseType: !2116, size: 64, offset: 7104)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !27, line: 378, size: 256, elements: !2118)
!2118 = !{!2119, !2135, !2136, !2137}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2117, file: !27, line: 379, baseType: !2120, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2122, line: 204, baseType: !2123)
!2122 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2122, line: 197, size: 192, elements: !2124)
!2124 = !{!2125, !2127, !2128, !2129, !2131, !2133}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2123, file: !2122, line: 198, baseType: !2126, size: 32)
!2126 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2122, line: 21, baseType: !447)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2123, file: !2122, line: 199, baseType: !124, size: 8, offset: 32)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2123, file: !2122, line: 200, baseType: !124, size: 8, offset: 40)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2123, file: !2122, line: 201, baseType: !2130, size: 16, offset: 48)
!2130 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2122, line: 17, baseType: !131)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2123, file: !2122, line: 202, baseType: !2132, size: 64, offset: 64)
!2132 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2122, line: 16, baseType: !451)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2123, file: !2122, line: 203, baseType: !2134, size: 64, offset: 128)
!2134 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2122, line: 22, baseType: !451)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2117, file: !27, line: 380, baseType: !28, size: 32, offset: 64)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2117, file: !27, line: 381, baseType: !518, size: 64, offset: 128)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2117, file: !27, line: 382, baseType: !518, size: 64, offset: 192)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !565, file: !27, line: 477, baseType: !2117, size: 256, offset: 7168)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !565, file: !27, line: 480, baseType: !2140, size: 64, offset: 7424)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !27, line: 480, flags: DIFlagFwdDecl)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !565, file: !27, line: 483, baseType: !2143, size: 64, offset: 7488)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !27, line: 483, flags: DIFlagFwdDecl)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !565, file: !27, line: 488, baseType: !518, size: 64, offset: 7552)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !565, file: !27, line: 492, baseType: !57, size: 64, offset: 7616)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !565, file: !27, line: 493, baseType: !28, size: 32, offset: 7680)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !565, file: !27, line: 495, baseType: !57, size: 64, offset: 7744)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !565, file: !27, line: 496, baseType: !28, size: 32, offset: 7808)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !565, file: !27, line: 499, baseType: !28, size: 32, offset: 7840)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !565, file: !27, line: 500, baseType: !2152, size: 64, offset: 7872)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2154, line: 45, baseType: !2155)
!2154 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !565, file: !27, line: 503, baseType: !28, size: 32, offset: 7936)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !565, file: !27, line: 504, baseType: !2158, size: 64, offset: 8000)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2161, line: 96, size: 192, elements: !2162)
!2161 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2162 = !{!2163, !2164, !2217, !2220}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2160, file: !2161, line: 97, baseType: !28, size: 32)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2160, file: !2161, line: 98, baseType: !2165, size: 64, offset: 64)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2161, line: 24, size: 3072, elements: !2167)
!2167 = !{!2168, !2170, !2171, !2172, !2173, !2186, !2187, !2188, !2189, !2201, !2202, !2203, !2214, !2215, !2216}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2166, file: !2161, line: 26, baseType: !2169, size: 128)
!2169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 128, elements: !2081)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2166, file: !2161, line: 27, baseType: !2169, size: 128, offset: 128)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2166, file: !2161, line: 28, baseType: !59, size: 32, offset: 256)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2166, file: !2161, line: 31, baseType: !96, size: 32, align: 512, offset: 512)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2166, file: !2161, line: 32, baseType: !2174, size: 960, offset: 576)
!2174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2175, line: 206, size: 960, elements: !2176)
!2175 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2176 = !{!2177, !2178, !2181, !2183, !2184, !2185}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2174, file: !2175, line: 207, baseType: !382, size: 64)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2174, file: !2175, line: 208, baseType: !2179, size: 256, offset: 64)
!2179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2180, size: 256, elements: !754)
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2174, file: !2175, line: 209, baseType: !2182, size: 256, offset: 320)
!2182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 256, elements: !754)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2174, file: !2175, line: 213, baseType: !652, size: 64, offset: 576)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2174, file: !2175, line: 215, baseType: !1114, size: 256, offset: 640)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2174, file: !2175, line: 216, baseType: !120, size: 8, offset: 896)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2166, file: !2161, line: 33, baseType: !76, size: 64, offset: 1536)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2166, file: !2161, line: 34, baseType: !76, size: 64, offset: 1600)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2166, file: !2161, line: 35, baseType: !880, size: 8, offset: 1664)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2166, file: !2161, line: 36, baseType: !2190, size: 320, offset: 1728)
!2190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2191, line: 11, size: 320, elements: !2192)
!2191 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2192 = !{!2193, !2194, !2195, !2200}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2190, file: !2191, line: 16, baseType: !749, size: 128)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2190, file: !2191, line: 17, baseType: !76, size: 64, offset: 128)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2190, file: !2191, line: 18, baseType: !2196, size: 64, offset: 192)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{null, !2199}
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2190, file: !2191, line: 19, baseType: !446, size: 32, offset: 256)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2166, file: !2161, line: 37, baseType: !1012, size: 256, offset: 2048)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2166, file: !2161, line: 38, baseType: !379, size: 128, align: 64, offset: 2304)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2166, file: !2161, line: 39, baseType: !2204, size: 64, offset: 2432)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2161, line: 49, size: 768, elements: !2206)
!2206 = !{!2207, !2208, !2209, !2210, !2211, !2212, !2213}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2205, file: !2161, line: 50, baseType: !96, size: 32)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2205, file: !2161, line: 51, baseType: !2182, size: 256, offset: 64)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2205, file: !2161, line: 53, baseType: !2182, size: 256, offset: 320)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2205, file: !2161, line: 54, baseType: !76, size: 64, offset: 576)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2205, file: !2161, line: 55, baseType: !2204, size: 64, offset: 640)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2205, file: !2161, line: 56, baseType: !59, size: 32, offset: 704)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2205, file: !2161, line: 57, baseType: !59, size: 32, offset: 736)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2166, file: !2161, line: 40, baseType: !76, size: 64, offset: 2496)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2166, file: !2161, line: 42, baseType: !59, size: 32, offset: 2560)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2166, file: !2161, line: 43, baseType: !2159, size: 64, offset: 2624)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2160, file: !2161, line: 99, baseType: !2218, offset: 128)
!2218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2219, line: 211, elements: !1416)
!2219 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2160, file: !2161, line: 100, baseType: !2221, size: 64, offset: 128)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2161, line: 63, size: 3008, elements: !2223)
!2223 = !{!2224, !2225, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2255}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2222, file: !2161, line: 64, baseType: !2204, size: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2222, file: !2161, line: 65, baseType: !2226, size: 192, offset: 64)
!2226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2204, size: 192, elements: !618)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2222, file: !2161, line: 67, baseType: !59, size: 32, offset: 256)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2222, file: !2161, line: 68, baseType: !288, size: 256, offset: 320)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2222, file: !2161, line: 69, baseType: !96, size: 32, offset: 576)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2222, file: !2161, line: 70, baseType: !288, size: 256, offset: 640)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2222, file: !2161, line: 71, baseType: !76, size: 64, offset: 896)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2222, file: !2161, line: 72, baseType: !76, size: 64, offset: 960)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2222, file: !2161, line: 73, baseType: !76, size: 64, offset: 1024)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2222, file: !2161, line: 74, baseType: !76, size: 64, offset: 1088)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2222, file: !2161, line: 75, baseType: !76, size: 64, offset: 1152)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2222, file: !2161, line: 76, baseType: !76, size: 64, offset: 1216)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2222, file: !2161, line: 77, baseType: !76, size: 64, offset: 1280)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2222, file: !2161, line: 78, baseType: !76, size: 64, offset: 1344)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2222, file: !2161, line: 79, baseType: !880, size: 8, offset: 1408)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2222, file: !2161, line: 80, baseType: !76, size: 64, offset: 1472)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2222, file: !2161, line: 81, baseType: !288, size: 256, offset: 1536)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2222, file: !2161, line: 82, baseType: !1051, size: 256, offset: 1792)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2222, file: !2161, line: 84, baseType: !86, size: 32, offset: 2048)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2222, file: !2161, line: 87, baseType: !76, size: 64, offset: 2112)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2222, file: !2161, line: 88, baseType: !76, size: 64, offset: 2176)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2222, file: !2161, line: 89, baseType: !2247, size: 704, offset: 2240)
!2247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1013, line: 111, size: 704, elements: !2248)
!2248 = !{!2249, !2250, !2251, !2254}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2247, file: !1013, line: 112, baseType: !1012, size: 256)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2247, file: !1013, line: 113, baseType: !2190, size: 320, offset: 256)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2247, file: !1013, line: 116, baseType: !2252, size: 64, offset: 576)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1013, line: 18, flags: DIFlagFwdDecl)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2247, file: !1013, line: 117, baseType: !59, size: 32, offset: 640)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2222, file: !2161, line: 90, baseType: !2159, size: 64, offset: 2944)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !565, file: !27, line: 515, baseType: !2257, size: 64, offset: 8064)
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2259, line: 117, size: 128, elements: !2260)
!2259 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2260 = !{!2261, !2262, !2263}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2258, file: !2259, line: 118, baseType: !807, size: 32)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2258, file: !2259, line: 119, baseType: !807, size: 32, offset: 32)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2258, file: !2259, line: 120, baseType: !652, size: 64, offset: 64)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !565, file: !27, line: 516, baseType: !28, size: 32, offset: 8128)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !565, file: !27, line: 519, baseType: !28, size: 32, offset: 8160)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !565, file: !27, line: 520, baseType: !2267, size: 64, offset: 8192)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !565, file: !27, line: 523, baseType: !2269, size: 64, offset: 8256)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2271 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !27, line: 523, flags: DIFlagFwdDecl)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !565, file: !27, line: 524, baseType: !28, size: 32, offset: 8320)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !565, file: !27, line: 525, baseType: !2274, size: 64, offset: 8384)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !27, line: 525, flags: DIFlagFwdDecl)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !565, file: !27, line: 526, baseType: !28, size: 32, offset: 8448)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !565, file: !27, line: 533, baseType: !57, size: 64, offset: 8512)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !565, file: !27, line: 534, baseType: !28, size: 32, offset: 8576)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !565, file: !27, line: 535, baseType: !2281, size: 64, offset: 8640)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !565, file: !27, line: 536, baseType: !28, size: 32, offset: 8704)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !565, file: !27, line: 539, baseType: !59, size: 32, offset: 8736)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !565, file: !27, line: 540, baseType: !2285, size: 64, offset: 8768)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2287, line: 32, size: 64, elements: !2288)
!2287 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2288 = !{!2289, !2290}
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2286, file: !2287, line: 33, baseType: !807, size: 32)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2286, file: !2287, line: 34, baseType: !807, size: 32, offset: 32)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !565, file: !27, line: 563, baseType: !134, size: 128, offset: 8832)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !565, file: !27, line: 565, baseType: !134, size: 128, offset: 8960)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !565, file: !27, line: 568, baseType: !2294, size: 64, offset: 9088)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = !DISubroutineType(types: !2296)
!2296 = !{null}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !565, file: !27, line: 570, baseType: !86, size: 32, offset: 9152)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !541, file: !174, line: 2382, baseType: !540, size: 64, offset: 448)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !541, file: !174, line: 2383, baseType: !745, size: 64, offset: 512)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !541, file: !174, line: 2385, baseType: !2301, offset: 576)
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2219, line: 206, elements: !1416)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !541, file: !174, line: 2386, baseType: !2301, offset: 576)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !541, file: !174, line: 2387, baseType: !2301, offset: 576)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !541, file: !174, line: 2388, baseType: !2305, offset: 576)
!2305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2301, elements: !618)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !541, file: !174, line: 2390, baseType: !2301, offset: 576)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !541, file: !174, line: 2391, baseType: !2301, offset: 576)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !541, file: !174, line: 2392, baseType: !2301, offset: 576)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !541, file: !174, line: 2393, baseType: !2301, offset: 576)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !530, file: !174, line: 1197, baseType: !2311, size: 64, offset: 384)
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2313)
!2313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !174, line: 2057, size: 1664, elements: !2314)
!2314 = !{!2315, !2319, !2323, !2324, !2328, !2334, !2338, !2339, !2340, !2344, !2348, !2352, !2353, !2354, !2360, !2364, !2365, !2369, !2370, !2371, !2372, !2376, !2380, !2427, !2442, !2443}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2313, file: !174, line: 2058, baseType: !2316, size: 64)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DISubroutineType(types: !2318)
!2318 = !{!345, !529}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2313, file: !174, line: 2059, baseType: !2320, size: 64, offset: 64)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = !DISubroutineType(types: !2322)
!2322 = !{null, !345}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2313, file: !174, line: 2060, baseType: !2320, size: 64, offset: 128)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2313, file: !174, line: 2062, baseType: !2325, size: 64, offset: 192)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DISubroutineType(types: !2327)
!2327 = !{null, !345, !59}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2313, file: !174, line: 2063, baseType: !2329, size: 64, offset: 256)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{!59, !345, !2332}
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !174, line: 309, flags: DIFlagFwdDecl)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2313, file: !174, line: 2064, baseType: !2335, size: 64, offset: 320)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{!59, !345}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2313, file: !174, line: 2065, baseType: !2320, size: 64, offset: 384)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2313, file: !174, line: 2066, baseType: !560, size: 64, offset: 448)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2313, file: !174, line: 2067, baseType: !2341, size: 64, offset: 512)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{!59, !529, !59}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2313, file: !174, line: 2068, baseType: !2345, size: 64, offset: 576)
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = !DISubroutineType(types: !2347)
!2347 = !{!59, !529, !173}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2313, file: !174, line: 2069, baseType: !2349, size: 64, offset: 640)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = !DISubroutineType(types: !2351)
!2351 = !{!59, !529}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2313, file: !174, line: 2070, baseType: !2345, size: 64, offset: 704)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2313, file: !174, line: 2071, baseType: !2349, size: 64, offset: 768)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2313, file: !174, line: 2072, baseType: !2355, size: 64, offset: 832)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DISubroutineType(types: !2357)
!2357 = !{!59, !412, !2358}
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !174, line: 62, flags: DIFlagFwdDecl)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2313, file: !174, line: 2073, baseType: !2361, size: 64, offset: 896)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{!59, !529, !2091, !518}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2313, file: !174, line: 2074, baseType: !560, size: 64, offset: 960)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2313, file: !174, line: 2076, baseType: !2366, size: 64, offset: 1024)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = !DISubroutineType(types: !2368)
!2368 = !{!59, !1756, !412}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2313, file: !174, line: 2077, baseType: !2366, size: 64, offset: 1088)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2313, file: !174, line: 2078, baseType: !2366, size: 64, offset: 1152)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2313, file: !174, line: 2079, baseType: !2366, size: 64, offset: 1216)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2313, file: !174, line: 2081, baseType: !2373, size: 64, offset: 1280)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{!649, !529, !59, !518, !72, !78}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2313, file: !174, line: 2082, baseType: !2377, size: 64, offset: 1344)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{!649, !529, !59, !55, !72, !78}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2313, file: !174, line: 2083, baseType: !2381, size: 64, offset: 1408)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!2384, !345}
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !179, line: 296, size: 1664, elements: !2387)
!2387 = !{!2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2412, !2413, !2414}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2386, file: !179, line: 297, baseType: !749, size: 128)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2386, file: !179, line: 298, baseType: !134, size: 128, offset: 128)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2386, file: !179, line: 299, baseType: !134, size: 128, offset: 256)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2386, file: !179, line: 300, baseType: !134, size: 128, offset: 384)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2386, file: !179, line: 301, baseType: !288, size: 256, offset: 512)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2386, file: !179, line: 302, baseType: !96, size: 32, offset: 768)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2386, file: !179, line: 303, baseType: !86, size: 32, offset: 800)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2386, file: !179, line: 304, baseType: !529, size: 64, offset: 832)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2386, file: !179, line: 305, baseType: !2397, size: 64, offset: 896)
!2397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !179, line: 68, size: 64, elements: !2398)
!2398 = !{!2399, !2411}
!2399 = !DIDerivedType(tag: DW_TAG_member, scope: !2397, file: !179, line: 69, baseType: !2400, size: 32)
!2400 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2397, file: !179, line: 69, size: 32, elements: !2401)
!2401 = !{!2402, !2403, !2404}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2400, file: !179, line: 70, baseType: !351, size: 32)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2400, file: !179, line: 71, baseType: !360, size: 32)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2400, file: !179, line: 72, baseType: !2405, size: 32)
!2405 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2406, line: 24, baseType: !2407)
!2406 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2407 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2406, line: 22, size: 32, elements: !2408)
!2408 = !{!2409}
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2407, file: !2406, line: 23, baseType: !2410, size: 32)
!2410 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2406, line: 20, baseType: !357)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2397, file: !179, line: 74, baseType: !178, size: 32, offset: 32)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2386, file: !179, line: 306, baseType: !78, size: 64, offset: 960)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2386, file: !179, line: 307, baseType: !76, size: 64, offset: 1024)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2386, file: !179, line: 308, baseType: !2415, size: 576, offset: 1088)
!2415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !179, line: 205, size: 576, elements: !2416)
!2416 = !{!2417, !2419, !2420, !2421, !2422, !2423, !2424, !2425, !2426}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2415, file: !179, line: 206, baseType: !2418, size: 64)
!2418 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !179, line: 66, baseType: !80)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2415, file: !179, line: 207, baseType: !2418, size: 64, offset: 64)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2415, file: !179, line: 208, baseType: !2418, size: 64, offset: 128)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2415, file: !179, line: 209, baseType: !2418, size: 64, offset: 192)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2415, file: !179, line: 210, baseType: !2418, size: 64, offset: 256)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2415, file: !179, line: 211, baseType: !2418, size: 64, offset: 320)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2415, file: !179, line: 212, baseType: !2418, size: 64, offset: 384)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2415, file: !179, line: 213, baseType: !838, size: 64, offset: 448)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2415, file: !179, line: 214, baseType: !838, size: 64, offset: 512)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2313, file: !174, line: 2085, baseType: !2428, size: 64, offset: 1472)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{!652, !529, !2431}
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2433, line: 15, size: 256, elements: !2434)
!2433 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2434 = !{!2435, !2436, !2437, !2438, !2439}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2432, file: !2433, line: 16, baseType: !1327, size: 32)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2432, file: !2433, line: 19, baseType: !59, size: 32, offset: 32)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2432, file: !2433, line: 26, baseType: !76, size: 64, offset: 64)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2432, file: !2433, line: 33, baseType: !76, size: 64, offset: 128)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2432, file: !2433, line: 36, baseType: !2440, size: 64, offset: 192)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !2433, line: 36, flags: DIFlagFwdDecl)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2313, file: !174, line: 2087, baseType: !2428, size: 64, offset: 1536)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2313, file: !174, line: 2089, baseType: !560, size: 64, offset: 1600)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !530, file: !174, line: 1198, baseType: !2445, size: 64, offset: 448)
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2447)
!2447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !179, line: 324, size: 704, elements: !2448)
!2448 = !{!2449, !2453, !2457, !2461, !2462, !2463, !2464, !2465, !2470, !2475, !2479}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2447, file: !179, line: 325, baseType: !2450, size: 64)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{!59, !2385}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2447, file: !179, line: 326, baseType: !2454, size: 64, offset: 64)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{!2385, !529, !59}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2447, file: !179, line: 327, baseType: !2458, size: 64, offset: 128)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = !DISubroutineType(types: !2460)
!2460 = !{null, !2385}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2447, file: !179, line: 328, baseType: !2450, size: 64, offset: 192)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2447, file: !179, line: 329, baseType: !2450, size: 64, offset: 256)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2447, file: !179, line: 330, baseType: !2450, size: 64, offset: 320)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2447, file: !179, line: 331, baseType: !2341, size: 64, offset: 384)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2447, file: !179, line: 334, baseType: !2466, size: 64, offset: 448)
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = !DISubroutineType(types: !2468)
!2468 = !{!2469, !345}
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2447, file: !179, line: 335, baseType: !2471, size: 64, offset: 512)
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2472 = !DISubroutineType(types: !2473)
!2473 = !{!59, !345, !2474}
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2447, file: !179, line: 337, baseType: !2476, size: 64, offset: 576)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!59, !345, !2469}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2447, file: !179, line: 339, baseType: !2480, size: 64, offset: 640)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{!59, !529, !2483}
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !530, file: !174, line: 1199, baseType: !2485, size: 64, offset: 512)
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2487)
!2487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !179, line: 430, size: 704, elements: !2488)
!2488 = !{!2489, !2495, !2496, !2500, !2501, !2502, !2517, !2540, !2544, !2545, !2568}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2487, file: !179, line: 431, baseType: !2490, size: 64)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = !DISubroutineType(types: !2492)
!2492 = !{!59, !529, !59, !59, !2493}
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1139)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2487, file: !179, line: 432, baseType: !2341, size: 64, offset: 64)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2487, file: !179, line: 433, baseType: !2497, size: 64, offset: 128)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = !DISubroutineType(types: !2499)
!2499 = !{!59, !529, !28}
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2487, file: !179, line: 434, baseType: !2497, size: 64, offset: 192)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2487, file: !179, line: 435, baseType: !2341, size: 64, offset: 256)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2487, file: !179, line: 436, baseType: !2503, size: 64, offset: 320)
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = !DISubroutineType(types: !2505)
!2505 = !{!59, !529, !59, !2506}
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !179, line: 417, size: 256, elements: !2508)
!2508 = !{!2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2507, file: !179, line: 418, baseType: !59, size: 32)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2507, file: !179, line: 419, baseType: !28, size: 32, offset: 32)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2507, file: !179, line: 420, baseType: !28, size: 32, offset: 64)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2507, file: !179, line: 422, baseType: !28, size: 32, offset: 96)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2507, file: !179, line: 423, baseType: !28, size: 32, offset: 128)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2507, file: !179, line: 424, baseType: !28, size: 32, offset: 160)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2507, file: !179, line: 425, baseType: !28, size: 32, offset: 192)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2507, file: !179, line: 426, baseType: !28, size: 32, offset: 224)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2487, file: !179, line: 437, baseType: !2518, size: 64, offset: 384)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = !DISubroutineType(types: !2520)
!2520 = !{!59, !529, !2397, !2521}
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !179, line: 345, size: 960, elements: !2523)
!2523 = !{!2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539}
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2522, file: !179, line: 346, baseType: !59, size: 32)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2522, file: !179, line: 347, baseType: !450, size: 64, offset: 64)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2522, file: !179, line: 348, baseType: !450, size: 64, offset: 128)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2522, file: !179, line: 349, baseType: !450, size: 64, offset: 192)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2522, file: !179, line: 350, baseType: !450, size: 64, offset: 256)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2522, file: !179, line: 351, baseType: !450, size: 64, offset: 320)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2522, file: !179, line: 352, baseType: !450, size: 64, offset: 384)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2522, file: !179, line: 353, baseType: !298, size: 64, offset: 448)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2522, file: !179, line: 355, baseType: !298, size: 64, offset: 512)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2522, file: !179, line: 356, baseType: !59, size: 32, offset: 576)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2522, file: !179, line: 357, baseType: !59, size: 32, offset: 608)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2522, file: !179, line: 358, baseType: !450, size: 64, offset: 640)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2522, file: !179, line: 359, baseType: !450, size: 64, offset: 704)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2522, file: !179, line: 360, baseType: !450, size: 64, offset: 768)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2522, file: !179, line: 361, baseType: !298, size: 64, offset: 832)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2522, file: !179, line: 362, baseType: !59, size: 32, offset: 896)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2487, file: !179, line: 438, baseType: !2541, size: 64, offset: 448)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{!59, !529, !2483, !2521}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2487, file: !179, line: 440, baseType: !2518, size: 64, offset: 512)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2487, file: !179, line: 441, baseType: !2546, size: 64, offset: 576)
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2547 = !DISubroutineType(types: !2548)
!2548 = !{!59, !529, !2549}
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !179, line: 411, size: 1408, elements: !2551)
!2551 = !{!2552, !2553}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2550, file: !179, line: 412, baseType: !28, size: 32)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2550, file: !179, line: 413, baseType: !2554, size: 1344, offset: 64)
!2554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2555, size: 1344, elements: !618)
!2555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !179, line: 397, size: 448, elements: !2556)
!2556 = !{!2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2567}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2555, file: !179, line: 398, baseType: !28, size: 32)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2555, file: !179, line: 399, baseType: !28, size: 32, offset: 32)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2555, file: !179, line: 401, baseType: !28, size: 32, offset: 64)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2555, file: !179, line: 402, baseType: !28, size: 32, offset: 96)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2555, file: !179, line: 403, baseType: !28, size: 32, offset: 128)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2555, file: !179, line: 404, baseType: !28, size: 32, offset: 160)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2555, file: !179, line: 405, baseType: !28, size: 32, offset: 192)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2555, file: !179, line: 406, baseType: !452, size: 64, offset: 256)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2555, file: !179, line: 407, baseType: !2566, size: 64, offset: 320)
!2566 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !62, line: 132, baseType: !450)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2555, file: !179, line: 408, baseType: !2566, size: 64, offset: 384)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2487, file: !179, line: 442, baseType: !2497, size: 64, offset: 640)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !530, file: !174, line: 1200, baseType: !2570, size: 64, offset: 576)
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2572)
!2572 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !174, line: 54, flags: DIFlagFwdDecl)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !530, file: !174, line: 1201, baseType: !76, size: 64, offset: 640)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !530, file: !174, line: 1202, baseType: !76, size: 64, offset: 704)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !530, file: !174, line: 1203, baseType: !76, size: 64, offset: 768)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !530, file: !174, line: 1204, baseType: !412, size: 64, offset: 832)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !530, file: !174, line: 1205, baseType: !822, size: 320, offset: 896)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !530, file: !174, line: 1206, baseType: !59, size: 32, offset: 1216)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !530, file: !174, line: 1207, baseType: !86, size: 32, offset: 1248)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !530, file: !174, line: 1209, baseType: !57, size: 64, offset: 1280)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !530, file: !174, line: 1211, baseType: !2582, size: 64, offset: 1344)
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2585)
!2585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !2586, line: 36, size: 384, elements: !2587)
!2586 = !DIFile(filename: "./include/linux/xattr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b18c2f606ad05d87dee3d79567b8d0c")
!2587 = !{!2588, !2589, !2590, !2591, !2595, !2599}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2585, file: !2586, line: 37, baseType: !55, size: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !2585, file: !2586, line: 38, baseType: !55, size: 64, offset: 64)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2585, file: !2586, line: 39, baseType: !59, size: 32, offset: 128)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2585, file: !2586, line: 40, baseType: !2592, size: 64, offset: 192)
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2593, size: 64)
!2593 = !DISubroutineType(types: !2594)
!2594 = !{!880, !412}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2585, file: !2586, line: 41, baseType: !2596, size: 64, offset: 256)
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!2597 = !DISubroutineType(types: !2598)
!2598 = !{!59, !2583, !412, !345, !55, !57, !72}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2585, file: !2586, line: 44, baseType: !2600, size: 64, offset: 320)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = !DISubroutineType(types: !2602)
!2602 = !{!59, !2583, !2603, !412, !345, !55, !1511, !72, !59}
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !789, line: 42, flags: DIFlagFwdDecl)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !530, file: !174, line: 1223, baseType: !2606, size: 64, offset: 1408)
!2606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !429, line: 34, size: 64, elements: !2607)
!2607 = !{!2608}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2606, file: !429, line: 35, baseType: !432, size: 64)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !530, file: !174, line: 1224, baseType: !134, size: 128, offset: 1472)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !530, file: !174, line: 1225, baseType: !2611, size: 64, offset: 1600)
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !2613, line: 40, size: 7424, elements: !2614)
!2613 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!2614 = !{!2615, !2617, !2618, !3408, !3409, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3452, !3453}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !2612, file: !2613, line: 41, baseType: !2616, size: 64)
!2616 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !62, line: 131, baseType: !450)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !2612, file: !2613, line: 42, baseType: !2616, size: 64, offset: 64)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !2612, file: !2613, line: 43, baseType: !2619, size: 64, offset: 128)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !185, line: 128, size: 4544, elements: !2621)
!2621 = !{!2622, !2623, !2624, !2625, !2627, !2628, !2629, !2630, !2631, !2811, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3374, !3375, !3376, !3377, !3380, !3381, !3384, !3387, !3388, !3391, !3392, !3393, !3394}
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !2620, file: !185, line: 133, baseType: !59, size: 32)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "first_minor", scope: !2620, file: !185, line: 134, baseType: !59, size: 32, offset: 32)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "minors", scope: !2620, file: !185, line: 135, baseType: !59, size: 32, offset: 64)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "disk_name", scope: !2620, file: !185, line: 137, baseType: !2626, size: 256, offset: 96)
!2626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !459)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2620, file: !185, line: 139, baseType: !63, size: 16, offset: 352)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "event_flags", scope: !2620, file: !185, line: 140, baseType: !63, size: 16, offset: 368)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "part_tbl", scope: !2620, file: !185, line: 142, baseType: !1322, size: 128, offset: 384)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "part0", scope: !2620, file: !185, line: 143, baseType: !2611, size: 64, offset: 512)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !2620, file: !185, line: 145, baseType: !2632, size: 64, offset: 576)
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2633, size: 64)
!2633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2634)
!2634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device_operations", file: !185, line: 1388, size: 1152, elements: !2635)
!2635 = !{!2636, !2727, !2731, !2736, !2740, !2744, !2745, !2749, !2750, !2756, !2760, !2761, !2765, !2791, !2796, !2801, !2802, !2806}
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "submit_bio", scope: !2634, file: !185, line: 1389, baseType: !2637, size: 64)
!2637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2638, size: 64)
!2638 = !DISubroutineType(types: !2639)
!2639 = !{null, !2640}
!2640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2641, size: 64)
!2641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio", file: !2613, line: 265, size: 960, elements: !2642)
!2642 = !{!2643, !2644, !2645, !2647, !2648, !2649, !2651, !2652, !2659, !2661, !2664, !2665, !2668, !2672, !2673, !2675, !2676, !2677, !2678, !2680, !2725}
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "bi_next", scope: !2641, file: !2613, line: 266, baseType: !2640, size: 64)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bdev", scope: !2641, file: !2613, line: 267, baseType: !2611, size: 64, offset: 64)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "bi_opf", scope: !2641, file: !2613, line: 268, baseType: !2646, size: 32, offset: 128)
!2646 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_opf_t", file: !2613, line: 256, baseType: !447)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "bi_flags", scope: !2641, file: !2613, line: 271, baseType: !63, size: 16, offset: 160)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "bi_ioprio", scope: !2641, file: !2613, line: 272, baseType: !63, size: 16, offset: 176)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "bi_status", scope: !2641, file: !2613, line: 273, baseType: !2650, size: 8, offset: 192)
!2650 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_status_t", file: !2613, line: 97, baseType: !120)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_remaining", scope: !2641, file: !2613, line: 274, baseType: !86, size: 32, offset: 224)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iter", scope: !2641, file: !2613, line: 276, baseType: !2653, size: 160, align: 32, offset: 256)
!2653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bvec_iter", file: !1315, line: 77, size: 160, align: 32, elements: !2654)
!2654 = !{!2655, !2656, !2657, !2658}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "bi_sector", scope: !2653, file: !1315, line: 78, baseType: !2616, size: 64)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "bi_size", scope: !2653, file: !1315, line: 80, baseType: !28, size: 32, offset: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "bi_idx", scope: !2653, file: !1315, line: 82, baseType: !28, size: 32, offset: 96)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bvec_done", scope: !2653, file: !1315, line: 84, baseType: !28, size: 32, offset: 128)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "bi_cookie", scope: !2641, file: !2613, line: 278, baseType: !2660, size: 32, offset: 416)
!2660 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_qc_t", file: !2613, line: 258, baseType: !28)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "bi_end_io", scope: !2641, file: !2613, line: 279, baseType: !2662, size: 64, offset: 448)
!2662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2663, size: 64)
!2663 = !DIDerivedType(tag: DW_TAG_typedef, name: "bio_end_io_t", file: !2613, line: 20, baseType: !2638)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "bi_private", scope: !2641, file: !2613, line: 280, baseType: !57, size: 64, offset: 512)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "bi_blkg", scope: !2641, file: !2613, line: 288, baseType: !2666, size: 64, offset: 576)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = !DICompositeType(tag: DW_TAG_structure_type, name: "blkcg_gq", file: !2613, line: 288, flags: DIFlagFwdDecl)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "bi_issue", scope: !2641, file: !2613, line: 289, baseType: !2669, size: 64, offset: 640)
!2669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_issue", file: !2613, line: 228, size: 64, elements: !2670)
!2670 = !{!2671}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2669, file: !2613, line: 229, baseType: !450, size: 64)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iocost_cost", scope: !2641, file: !2613, line: 291, baseType: !450, size: 64, offset: 704)
!2673 = !DIDerivedType(tag: DW_TAG_member, scope: !2641, file: !2613, line: 299, baseType: !2674, offset: 768)
!2674 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2641, file: !2613, line: 299, elements: !1416)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "bi_vcnt", scope: !2641, file: !2613, line: 305, baseType: !63, size: 16, offset: 768)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "bi_max_vecs", scope: !2641, file: !2613, line: 311, baseType: !63, size: 16, offset: 784)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_cnt", scope: !2641, file: !2613, line: 313, baseType: !86, size: 32, offset: 800)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "bi_io_vec", scope: !2641, file: !2613, line: 315, baseType: !2679, size: 64, offset: 832)
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "bi_pool", scope: !2641, file: !2613, line: 317, baseType: !2681, size: 64, offset: 896)
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_set", file: !2683, line: 678, size: 1984, elements: !2684)
!2683 = !DIFile(filename: "./include/linux/bio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48d164cf34dda85459af1fe5d2b8d08f")
!2684 = !{!2685, !2689, !2690, !2693, !2714, !2715, !2716, !2717, !2722, !2723, !2724}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "bio_slab", scope: !2682, file: !2683, line: 679, baseType: !2686, size: 64)
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2688, line: 325, flags: DIFlagFwdDecl)
!2688 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "front_pad", scope: !2682, file: !2683, line: 680, baseType: !28, size: 32, offset: 64)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !2682, file: !2683, line: 685, baseType: !2691, size: 64, offset: 128)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_alloc_cache", file: !2683, line: 685, flags: DIFlagFwdDecl)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "bio_pool", scope: !2682, file: !2683, line: 687, baseType: !2694, size: 576, offset: 192)
!2694 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_t", file: !2695, line: 26, baseType: !2696)
!2695 = !DIFile(filename: "./include/linux/mempool.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1ef8a210e9c9e696cc7d6e9be9316611")
!2696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mempool_s", file: !2695, line: 16, size: 576, elements: !2697)
!2697 = !{!2698, !2699, !2700, !2701, !2702, !2703, !2708, !2713}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2696, file: !2695, line: 17, baseType: !96, size: 32)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "min_nr", scope: !2696, file: !2695, line: 18, baseType: !59, size: 32, offset: 32)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "curr_nr", scope: !2696, file: !2695, line: 19, baseType: !59, size: 32, offset: 64)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !2696, file: !2695, line: 20, baseType: !1747, size: 64, offset: 128)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "pool_data", scope: !2696, file: !2695, line: 22, baseType: !57, size: 64, offset: 192)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2696, file: !2695, line: 23, baseType: !2704, size: 64, offset: 256)
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_alloc_t", file: !2695, line: 13, baseType: !2706)
!2706 = !DISubroutineType(types: !2707)
!2707 = !{!57, !1327, !57}
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2696, file: !2695, line: 24, baseType: !2709, size: 64, offset: 320)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_free_t", file: !2695, line: 14, baseType: !2711)
!2711 = !DISubroutineType(types: !2712)
!2712 = !{null, !57, !57}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2696, file: !2695, line: 25, baseType: !91, size: 192, offset: 384)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "bvec_pool", scope: !2682, file: !2683, line: 688, baseType: !2694, size: 576, offset: 768)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "back_pad", scope: !2682, file: !2683, line: 694, baseType: !28, size: 32, offset: 1344)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_lock", scope: !2682, file: !2683, line: 699, baseType: !96, size: 32, offset: 1376)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_list", scope: !2682, file: !2683, line: 700, baseType: !2718, size: 128, offset: 1408)
!2718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !2683, line: 550, size: 128, elements: !2719)
!2719 = !{!2720, !2721}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2718, file: !2683, line: 551, baseType: !2640, size: 64)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2718, file: !2683, line: 552, baseType: !2640, size: 64, offset: 64)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_work", scope: !2682, file: !2683, line: 701, baseType: !1012, size: 256, offset: 1536)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_workqueue", scope: !2682, file: !2683, line: 702, baseType: !2252, size: 64, offset: 1792)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_dead", scope: !2682, file: !2683, line: 707, baseType: !749, size: 128, offset: 1856)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "bi_inline_vecs", scope: !2641, file: !2613, line: 324, baseType: !2726, offset: 960)
!2726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1314, elements: !400)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "poll_bio", scope: !2634, file: !185, line: 1390, baseType: !2728, size: 64, offset: 64)
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = !DISubroutineType(types: !2730)
!2730 = !{!59, !2640, !1341, !28}
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2634, file: !185, line: 1392, baseType: !2732, size: 64, offset: 128)
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2733 = !DISubroutineType(types: !2734)
!2734 = !{!59, !2619, !2735}
!2735 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_mode_t", file: !185, line: 115, baseType: !28)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2634, file: !185, line: 1393, baseType: !2737, size: 64, offset: 192)
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = !DISubroutineType(types: !2739)
!2739 = !{null, !2619}
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !2634, file: !185, line: 1394, baseType: !2741, size: 64, offset: 256)
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2742 = !DISubroutineType(types: !2743)
!2743 = !{!59, !2611, !2735, !28, !76}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2634, file: !185, line: 1396, baseType: !2741, size: 64, offset: 320)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "check_events", scope: !2634, file: !185, line: 1398, baseType: !2746, size: 64, offset: 384)
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64)
!2747 = !DISubroutineType(types: !2748)
!2748 = !{!28, !2619, !28}
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_native_capacity", scope: !2634, file: !185, line: 1400, baseType: !2737, size: 64, offset: 448)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "getgeo", scope: !2634, file: !185, line: 1401, baseType: !2751, size: 64, offset: 512)
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2752, size: 64)
!2752 = !DISubroutineType(types: !2753)
!2753 = !{!59, !2611, !2754}
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2755, size: 64)
!2755 = !DICompositeType(tag: DW_TAG_structure_type, name: "hd_geometry", file: !174, line: 56, flags: DIFlagFwdDecl)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "set_read_only", scope: !2634, file: !185, line: 1402, baseType: !2757, size: 64, offset: 576)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{!59, !2611, !880}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "free_disk", scope: !2634, file: !185, line: 1403, baseType: !2737, size: 64, offset: 640)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "swap_slot_free_notify", scope: !2634, file: !185, line: 1405, baseType: !2762, size: 64, offset: 704)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = !DISubroutineType(types: !2764)
!2764 = !{null, !2611, !76}
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "report_zones", scope: !2634, file: !185, line: 1406, baseType: !2766, size: 64, offset: 768)
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2767 = !DISubroutineType(types: !2768)
!2768 = !{!59, !2619, !2616, !28, !2769, !57}
!2769 = !DIDerivedType(tag: DW_TAG_typedef, name: "report_zones_cb", file: !185, line: 342, baseType: !2770)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DISubroutineType(types: !2772)
!2772 = !{!59, !2773, !28, !57}
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_zone", file: !2775, line: 106, size: 512, elements: !2776)
!2775 = !DIFile(filename: "./include/uapi/linux/blkzoned.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3d5e7016ed7b437a9c2a308f55db1257")
!2776 = !{!2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2786, !2787}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2774, file: !2775, line: 107, baseType: !451, size: 64)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2774, file: !2775, line: 108, baseType: !451, size: 64, offset: 64)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "wp", scope: !2774, file: !2775, line: 109, baseType: !451, size: 64, offset: 128)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2774, file: !2775, line: 110, baseType: !122, size: 8, offset: 192)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !2774, file: !2775, line: 111, baseType: !122, size: 8, offset: 200)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "non_seq", scope: !2774, file: !2775, line: 112, baseType: !122, size: 8, offset: 208)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !2774, file: !2775, line: 113, baseType: !122, size: 8, offset: 216)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !2774, file: !2775, line: 114, baseType: !2785, size: 32, offset: 224)
!2785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 32, elements: !754)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !2774, file: !2775, line: 115, baseType: !451, size: 64, offset: 256)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2774, file: !2775, line: 116, baseType: !2788, size: 192, offset: 320)
!2788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 192, elements: !2789)
!2789 = !{!2790}
!2790 = !DISubrange(count: 24)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2634, file: !185, line: 1408, baseType: !2792, size: 64, offset: 832)
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2793, size: 64)
!2793 = !DISubroutineType(types: !2794)
!2794 = !{!518, !2619, !2795}
!2795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "get_unique_id", scope: !2634, file: !185, line: 1410, baseType: !2797, size: 64, offset: 896)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = !DISubroutineType(types: !2799)
!2799 = !{!59, !2619, !2800, !184}
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2634, file: !185, line: 1412, baseType: !564, size: 64, offset: 960)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "pr_ops", scope: !2634, file: !185, line: 1413, baseType: !2803, size: 64, offset: 1024)
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2805)
!2805 = !DICompositeType(tag: DW_TAG_structure_type, name: "pr_ops", file: !185, line: 37, flags: DIFlagFwdDecl)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "alternative_gpt_sector", scope: !2634, file: !185, line: 1420, baseType: !2807, size: 64, offset: 1088)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2808 = !DISubroutineType(types: !2809)
!2809 = !{!59, !2619, !2810}
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !2620, file: !185, line: 146, baseType: !2812, size: 64, offset: 640)
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !185, line: 391, size: 7296, elements: !2814)
!2814 = !{!2815, !2816, !2819, !2840, !2843, !2846, !2847, !2851, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3296, !3297, !3299, !3300, !3301, !3302, !3335, !3336, !3337, !3340, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3359, !3360, !3361, !3362, !3363, !3364}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "last_merge", scope: !2813, file: !185, line: 392, baseType: !1345, size: 64)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "elevator", scope: !2813, file: !185, line: 393, baseType: !2817, size: 64, offset: 64)
!2817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2818, size: 64)
!2818 = !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_queue", file: !185, line: 30, flags: DIFlagFwdDecl)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "q_usage_counter", scope: !2813, file: !185, line: 395, baseType: !2820, size: 128, offset: 128)
!2820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2821, line: 105, size: 128, elements: !2822)
!2821 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2822 = !{!2823, !2824}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2820, file: !2821, line: 110, baseType: !76, size: 64)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2820, file: !2821, line: 118, baseType: !2825, size: 64, offset: 64)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2821, line: 95, size: 448, elements: !2827)
!2827 = !{!2828, !2829, !2835, !2836, !2837, !2838, !2839}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2826, file: !2821, line: 96, baseType: !292, size: 64)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2826, file: !2821, line: 97, baseType: !2830, size: 64, offset: 64)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2831, size: 64)
!2831 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2821, line: 60, baseType: !2832)
!2832 = !DISubroutineType(types: !2833)
!2833 = !{null, !2834}
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2820, size: 64)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2826, file: !2821, line: 98, baseType: !2830, size: 64, offset: 128)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2826, file: !2821, line: 99, baseType: !880, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2826, file: !2821, line: 100, baseType: !880, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2826, file: !2821, line: 101, baseType: !379, size: 128, align: 64, offset: 256)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2826, file: !2821, line: 102, baseType: !2834, size: 64, offset: 384)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2813, file: !185, line: 397, baseType: !2841, size: 64, offset: 256)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_queue_stats", file: !185, line: 39, flags: DIFlagFwdDecl)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos", scope: !2813, file: !185, line: 398, baseType: !2844, size: 64, offset: 320)
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2845, size: 64)
!2845 = !DICompositeType(tag: DW_TAG_structure_type, name: "rq_qos", file: !185, line: 38, flags: DIFlagFwdDecl)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos_mutex", scope: !2813, file: !185, line: 399, baseType: !288, size: 256, offset: 384)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ops", scope: !2813, file: !185, line: 401, baseType: !2848, size: 64, offset: 640)
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64)
!2849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2850)
!2850 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ops", file: !185, line: 401, flags: DIFlagFwdDecl)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "queue_ctx", scope: !2813, file: !185, line: 404, baseType: !2852, size: 64, offset: 704)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ctx", file: !185, line: 404, flags: DIFlagFwdDecl)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !2813, file: !185, line: 406, baseType: !28, size: 32, offset: 768)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "hctx_table", scope: !2813, file: !185, line: 409, baseType: !1322, size: 128, offset: 832)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hw_queues", scope: !2813, file: !185, line: 410, baseType: !28, size: 32, offset: 960)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "queuedata", scope: !2813, file: !185, line: 416, baseType: !57, size: 64, offset: 1024)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "queue_flags", scope: !2813, file: !185, line: 421, baseType: !76, size: 64, offset: 1088)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "pm_only", scope: !2813, file: !185, line: 426, baseType: !86, size: 32, offset: 1152)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2813, file: !185, line: 432, baseType: !59, size: 32, offset: 1184)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "queue_lock", scope: !2813, file: !185, line: 434, baseType: !96, size: 32, offset: 1216)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "disk", scope: !2813, file: !185, line: 436, baseType: !2619, size: 64, offset: 1280)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !2813, file: !185, line: 438, baseType: !373, size: 32, offset: 1344)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "mq_kobj", scope: !2813, file: !185, line: 443, baseType: !583, size: 64, offset: 1408)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2813, file: !185, line: 450, baseType: !2866, size: 64, offset: 1472)
!2866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2867, size: 64)
!2867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !197, line: 705, size: 5824, elements: !2868)
!2868 = !{!2869, !2870, !2871, !2874, !2875, !2927, !2997, !2998, !2999, !3000, !3001, !3008, !3172, !3185, !3195, !3199, !3201, !3202, !3203, !3207, !3214, !3215, !3218, !3221, !3225, !3228, !3229, !3230, !3231, !3232, !3233, !3263, !3264, !3265, !3268, !3271, !3280, !3281, !3282, !3283, !3284, !3285}
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2867, file: !197, line: 706, baseType: !577, size: 512)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2867, file: !197, line: 707, baseType: !2866, size: 64, offset: 512)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2867, file: !197, line: 709, baseType: !2872, size: 64, offset: 576)
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2873, size: 64)
!2873 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !197, line: 37, flags: DIFlagFwdDecl)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2867, file: !197, line: 711, baseType: !55, size: 64, offset: 640)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2867, file: !197, line: 712, baseType: !2876, size: 64, offset: 704)
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2877, size: 64)
!2877 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2878)
!2878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !197, line: 89, size: 384, elements: !2879)
!2879 = !{!2880, !2881, !2882, !2888, !2892, !2896}
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2878, file: !197, line: 90, baseType: !55, size: 64)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2878, file: !197, line: 91, baseType: !663, size: 64, offset: 64)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2878, file: !197, line: 92, baseType: !2883, size: 64, offset: 128)
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2884 = !DISubroutineType(types: !2885)
!2885 = !{!59, !2886, !613}
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2887, size: 64)
!2887 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2867)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2878, file: !197, line: 93, baseType: !2889, size: 64, offset: 192)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{!518, !2886, !2795, !1076, !1077}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2878, file: !197, line: 95, baseType: !2893, size: 64, offset: 256)
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2894 = !DISubroutineType(types: !2895)
!2895 = !{null, !2866}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2878, file: !197, line: 97, baseType: !2897, size: 64, offset: 320)
!2897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2898, size: 64)
!2898 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2899)
!2899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !209, line: 286, size: 1472, elements: !2900)
!2900 = !{!2901, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2899, file: !209, line: 287, baseType: !2902, size: 64)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = !DISubroutineType(types: !2904)
!2904 = !{!59, !2866}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2899, file: !209, line: 288, baseType: !2893, size: 64, offset: 64)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2899, file: !209, line: 289, baseType: !2902, size: 64, offset: 128)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2899, file: !209, line: 290, baseType: !2902, size: 64, offset: 192)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2899, file: !209, line: 291, baseType: !2902, size: 64, offset: 256)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2899, file: !209, line: 292, baseType: !2902, size: 64, offset: 320)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2899, file: !209, line: 293, baseType: !2902, size: 64, offset: 384)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2899, file: !209, line: 294, baseType: !2902, size: 64, offset: 448)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2899, file: !209, line: 295, baseType: !2902, size: 64, offset: 512)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2899, file: !209, line: 296, baseType: !2902, size: 64, offset: 576)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2899, file: !209, line: 297, baseType: !2902, size: 64, offset: 640)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2899, file: !209, line: 298, baseType: !2902, size: 64, offset: 704)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2899, file: !209, line: 299, baseType: !2902, size: 64, offset: 768)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2899, file: !209, line: 300, baseType: !2902, size: 64, offset: 832)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2899, file: !209, line: 301, baseType: !2902, size: 64, offset: 896)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2899, file: !209, line: 302, baseType: !2902, size: 64, offset: 960)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2899, file: !209, line: 303, baseType: !2902, size: 64, offset: 1024)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2899, file: !209, line: 304, baseType: !2902, size: 64, offset: 1088)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2899, file: !209, line: 305, baseType: !2902, size: 64, offset: 1152)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2899, file: !209, line: 306, baseType: !2902, size: 64, offset: 1216)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2899, file: !209, line: 307, baseType: !2902, size: 64, offset: 1280)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2899, file: !209, line: 308, baseType: !2902, size: 64, offset: 1344)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2899, file: !209, line: 309, baseType: !2902, size: 64, offset: 1408)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2867, file: !197, line: 714, baseType: !2928, size: 64, offset: 768)
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2929, size: 64)
!2929 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2930)
!2930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2931, line: 80, size: 1344, elements: !2932)
!2931 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2932 = !{!2933, !2934, !2935, !2936, !2937, !2938, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2996}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2930, file: !2931, line: 81, baseType: !55, size: 64)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2930, file: !2931, line: 82, baseType: !55, size: 64, offset: 64)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2930, file: !2931, line: 83, baseType: !663, size: 64, offset: 128)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2930, file: !2931, line: 84, baseType: !663, size: 64, offset: 192)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2930, file: !2931, line: 85, baseType: !663, size: 64, offset: 256)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2930, file: !2931, line: 87, baseType: !2939, size: 64, offset: 320)
!2939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2940, size: 64)
!2940 = !DISubroutineType(types: !2941)
!2941 = !{!59, !2866, !2942}
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !191, line: 96, size: 1152, elements: !2944)
!2944 = !{!2945, !2946, !2947, !2948, !2949, !2950, !2951, !2955, !2959, !2960, !2961, !2962, !2963, !2971, !2972, !2973, !2974, !2975, !2976}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2943, file: !191, line: 97, baseType: !55, size: 64)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2943, file: !191, line: 98, baseType: !2928, size: 64, offset: 64)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2943, file: !191, line: 100, baseType: !564, size: 64, offset: 128)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2943, file: !191, line: 101, baseType: !55, size: 64, offset: 192)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2943, file: !191, line: 103, baseType: !880, size: 8, offset: 256)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2943, file: !191, line: 104, baseType: !190, size: 32, offset: 288)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2943, file: !191, line: 106, baseType: !2952, size: 64, offset: 320)
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2953, size: 64)
!2953 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2954)
!2954 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !191, line: 106, flags: DIFlagFwdDecl)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2943, file: !191, line: 107, baseType: !2956, size: 64, offset: 384)
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!2957 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2958)
!2958 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !191, line: 107, flags: DIFlagFwdDecl)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2943, file: !191, line: 109, baseType: !2902, size: 64, offset: 448)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2943, file: !191, line: 110, baseType: !2893, size: 64, offset: 512)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2943, file: !191, line: 111, baseType: !2902, size: 64, offset: 576)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2943, file: !191, line: 112, baseType: !2893, size: 64, offset: 640)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2943, file: !191, line: 113, baseType: !2964, size: 64, offset: 704)
!2964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2965, size: 64)
!2965 = !DISubroutineType(types: !2966)
!2966 = !{!59, !2866, !2967}
!2967 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !209, line: 60, baseType: !2968)
!2968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !209, line: 58, size: 32, elements: !2969)
!2969 = !{!2970}
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2968, file: !209, line: 59, baseType: !59, size: 32)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2943, file: !191, line: 114, baseType: !2902, size: 64, offset: 768)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2943, file: !191, line: 115, baseType: !663, size: 64, offset: 832)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2943, file: !191, line: 116, baseType: !663, size: 64, offset: 896)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2943, file: !191, line: 118, baseType: !2897, size: 64, offset: 960)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2943, file: !191, line: 119, baseType: !2893, size: 64, offset: 1024)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2943, file: !191, line: 121, baseType: !2977, size: 64, offset: 1088)
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !191, line: 121, flags: DIFlagFwdDecl)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2930, file: !2931, line: 88, baseType: !2883, size: 64, offset: 384)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2930, file: !2931, line: 89, baseType: !2902, size: 64, offset: 448)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2930, file: !2931, line: 90, baseType: !2893, size: 64, offset: 512)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2930, file: !2931, line: 91, baseType: !2893, size: 64, offset: 576)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2930, file: !2931, line: 92, baseType: !2893, size: 64, offset: 640)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2930, file: !2931, line: 94, baseType: !2902, size: 64, offset: 704)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2930, file: !2931, line: 95, baseType: !2902, size: 64, offset: 768)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2930, file: !2931, line: 97, baseType: !2964, size: 64, offset: 832)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2930, file: !2931, line: 98, baseType: !2902, size: 64, offset: 896)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2930, file: !2931, line: 100, baseType: !2902, size: 64, offset: 960)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2930, file: !2931, line: 102, baseType: !2902, size: 64, offset: 1024)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2930, file: !2931, line: 103, baseType: !2893, size: 64, offset: 1088)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2930, file: !2931, line: 105, baseType: !2897, size: 64, offset: 1152)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2930, file: !2931, line: 107, baseType: !2993, size: 64, offset: 1216)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2995)
!2995 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2931, line: 107, flags: DIFlagFwdDecl)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2930, file: !2931, line: 109, baseType: !880, size: 8, offset: 1280)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2867, file: !197, line: 715, baseType: !2942, size: 64, offset: 832)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2867, file: !197, line: 717, baseType: !57, size: 64, offset: 896)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2867, file: !197, line: 719, baseType: !57, size: 64, offset: 960)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2867, file: !197, line: 721, baseType: !288, size: 256, offset: 1024)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2867, file: !197, line: 725, baseType: !3002, size: 448, offset: 1280)
!3002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !197, line: 517, size: 448, elements: !3003)
!3003 = !{!3004, !3005, !3006, !3007}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3002, file: !197, line: 518, baseType: !134, size: 128)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3002, file: !197, line: 519, baseType: !134, size: 128, offset: 128)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !3002, file: !197, line: 520, baseType: !134, size: 128, offset: 256)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3002, file: !197, line: 521, baseType: !196, size: 32, offset: 384)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2867, file: !197, line: 726, baseType: !3009, size: 2496, offset: 1728)
!3009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !209, line: 663, size: 2496, elements: !3010)
!3010 = !{!3011, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3026, !3055, !3056, !3057, !3058, !3059, !3060, !3131, !3132, !3133, !3134, !3135, !3136, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3165, !3169}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3009, file: !209, line: 664, baseType: !2967, size: 32)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3009, file: !209, line: 665, baseType: !28, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3009, file: !209, line: 666, baseType: !28, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3009, file: !209, line: 667, baseType: !880, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3009, file: !209, line: 668, baseType: !880, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3009, file: !209, line: 669, baseType: !880, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3009, file: !209, line: 670, baseType: !880, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3009, file: !209, line: 671, baseType: !880, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3009, file: !209, line: 672, baseType: !880, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3009, file: !209, line: 673, baseType: !880, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3009, file: !209, line: 674, baseType: !880, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3009, file: !209, line: 675, baseType: !446, size: 32, offset: 64)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3009, file: !209, line: 676, baseType: !96, size: 32, offset: 96)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3009, file: !209, line: 678, baseType: !134, size: 128, offset: 128)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3009, file: !209, line: 679, baseType: !1051, size: 256, offset: 256)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3009, file: !209, line: 680, baseType: !3027, size: 64, offset: 512)
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3029, line: 43, size: 1536, elements: !3030)
!3029 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!3030 = !{!3031, !3032, !3033, !3034, !3035, !3038, !3039, !3040, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3052, !3053, !3054}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3028, file: !3029, line: 44, baseType: !55, size: 64)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3028, file: !3029, line: 45, baseType: !59, size: 32, offset: 64)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3028, file: !3029, line: 46, baseType: !134, size: 128, offset: 128)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3028, file: !3029, line: 47, baseType: !96, size: 32, offset: 256)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3028, file: !3029, line: 48, baseType: !3036, size: 64, offset: 320)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !209, line: 629, flags: DIFlagFwdDecl)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3028, file: !3029, line: 49, baseType: !2190, size: 320, offset: 384)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3028, file: !3029, line: 50, baseType: !76, size: 64, offset: 704)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3028, file: !3029, line: 51, baseType: !3041, size: 64, offset: 768)
!3041 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !3042, line: 29, baseType: !298)
!3042 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3028, file: !3029, line: 52, baseType: !3041, size: 64, offset: 832)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3028, file: !3029, line: 53, baseType: !3041, size: 64, offset: 896)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3028, file: !3029, line: 54, baseType: !3041, size: 64, offset: 960)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3028, file: !3029, line: 55, baseType: !3041, size: 64, offset: 1024)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3028, file: !3029, line: 56, baseType: !76, size: 64, offset: 1088)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3028, file: !3029, line: 57, baseType: !76, size: 64, offset: 1152)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3028, file: !3029, line: 58, baseType: !76, size: 64, offset: 1216)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3028, file: !3029, line: 59, baseType: !76, size: 64, offset: 1280)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3028, file: !3029, line: 60, baseType: !76, size: 64, offset: 1344)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3028, file: !3029, line: 61, baseType: !2866, size: 64, offset: 1408)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3028, file: !3029, line: 62, baseType: !880, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3028, file: !3029, line: 63, baseType: !880, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3009, file: !209, line: 681, baseType: !880, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3009, file: !209, line: 682, baseType: !880, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3009, file: !209, line: 683, baseType: !880, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3009, file: !209, line: 684, baseType: !28, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3009, file: !209, line: 685, baseType: !28, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3009, file: !209, line: 690, baseType: !3061, size: 512, offset: 640)
!3061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !204, line: 118, size: 512, elements: !3062)
!3062 = !{!3063, !3069, !3070, !3075, !3127, !3128, !3129, !3130}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3061, file: !204, line: 119, baseType: !3064, size: 256)
!3064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !3065, line: 9, size: 256, elements: !3066)
!3065 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!3066 = !{!3067, !3068}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3064, file: !3065, line: 10, baseType: !814, size: 192, align: 64)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3064, file: !3065, line: 11, baseType: !3041, size: 64, offset: 192)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !3061, file: !204, line: 120, baseType: !3041, size: 64, offset: 256)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3061, file: !204, line: 121, baseType: !3071, size: 64, offset: 320)
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{!203, !3074}
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3061, file: !204, line: 122, baseType: !3076, size: 64, offset: 384)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !204, line: 159, size: 512, align: 512, elements: !3078)
!3078 = !{!3079, !3104, !3105, !3108, !3113, !3114, !3122, !3126}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !3077, file: !204, line: 160, baseType: !3080, size: 64)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !204, line: 215, size: 4608, align: 512, elements: !3082)
!3082 = !{!3083, !3084, !3085, !3086, !3087, !3088, !3089, !3090, !3091, !3092, !3093, !3094, !3095, !3096, !3097, !3098, !3099, !3100}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3081, file: !204, line: 216, baseType: !301, size: 32)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3081, file: !204, line: 217, baseType: !28, size: 32, offset: 32)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !3081, file: !204, line: 218, baseType: !28, size: 32, offset: 64)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !3081, file: !204, line: 219, baseType: !28, size: 32, offset: 96)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !3081, file: !204, line: 220, baseType: !28, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !3081, file: !204, line: 221, baseType: !28, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !3081, file: !204, line: 222, baseType: !28, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !3081, file: !204, line: 223, baseType: !28, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3081, file: !204, line: 224, baseType: !28, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3081, file: !204, line: 226, baseType: !28, size: 32, offset: 160)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !3081, file: !204, line: 227, baseType: !63, size: 16, offset: 192)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !3081, file: !204, line: 228, baseType: !63, size: 16, offset: 208)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !3081, file: !204, line: 229, baseType: !28, size: 32, offset: 224)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !3081, file: !204, line: 235, baseType: !3041, size: 64, offset: 256)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !3081, file: !204, line: 236, baseType: !3074, size: 64, offset: 320)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !3081, file: !204, line: 237, baseType: !3041, size: 64, offset: 384)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !3081, file: !204, line: 238, baseType: !3074, size: 64, offset: 448)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !3081, file: !204, line: 239, baseType: !3101, size: 4096, align: 512, offset: 512)
!3101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3077, size: 4096, align: 512, elements: !3102)
!3102 = !{!3103}
!3103 = !DISubrange(count: 8)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3077, file: !204, line: 161, baseType: !28, size: 32, offset: 64)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3077, file: !204, line: 162, baseType: !3106, size: 32, offset: 96)
!3106 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !62, line: 32, baseType: !3107)
!3107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !74, line: 96, baseType: !59)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !3077, file: !204, line: 163, baseType: !3109, size: 32, offset: 128)
!3109 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !419, line: 274, baseType: !3110)
!3110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !419, line: 274, size: 32, elements: !3111)
!3111 = !{!3112}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3110, file: !419, line: 274, baseType: !423, size: 32)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !3077, file: !204, line: 164, baseType: !3074, size: 64, offset: 192)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3077, file: !204, line: 165, baseType: !3115, size: 128, offset: 256)
!3115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !3065, line: 14, size: 128, elements: !3116)
!3116 = !{!3117}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !3115, file: !3065, line: 15, baseType: !3118, size: 128)
!3118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !815, line: 26, size: 128, elements: !3119)
!3119 = !{!3120, !3121}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !3118, file: !815, line: 27, baseType: !1093, size: 64)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !3118, file: !815, line: 28, baseType: !819, size: 64, offset: 64)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !3077, file: !204, line: 166, baseType: !3123, size: 64, offset: 384)
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3124, size: 64)
!3124 = !DISubroutineType(types: !3125)
!3125 = !{!3041}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3077, file: !204, line: 167, baseType: !3041, size: 64, offset: 448)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3061, file: !204, line: 123, baseType: !120, size: 8, offset: 448)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !3061, file: !204, line: 124, baseType: !120, size: 8, offset: 456)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !3061, file: !204, line: 125, baseType: !120, size: 8, offset: 464)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !3061, file: !204, line: 126, baseType: !120, size: 8, offset: 472)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3009, file: !209, line: 691, baseType: !450, size: 64, offset: 1152)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3009, file: !209, line: 692, baseType: !1012, size: 256, offset: 1216)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3009, file: !209, line: 693, baseType: !91, size: 192, offset: 1472)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3009, file: !209, line: 694, baseType: !3036, size: 64, offset: 1664)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3009, file: !209, line: 695, baseType: !86, size: 32, offset: 1728)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3009, file: !209, line: 696, baseType: !86, size: 32, offset: 1760)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3009, file: !209, line: 697, baseType: !28, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3009, file: !209, line: 698, baseType: !28, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3009, file: !209, line: 699, baseType: !28, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3009, file: !209, line: 700, baseType: !28, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !3009, file: !209, line: 701, baseType: !28, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3009, file: !209, line: 702, baseType: !28, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3009, file: !209, line: 703, baseType: !880, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3009, file: !209, line: 704, baseType: !28, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3009, file: !209, line: 705, baseType: !28, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3009, file: !209, line: 706, baseType: !28, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3009, file: !209, line: 707, baseType: !28, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3009, file: !209, line: 708, baseType: !28, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3009, file: !209, line: 709, baseType: !28, size: 32, offset: 1824)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3009, file: !209, line: 710, baseType: !208, size: 32, offset: 1856)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3009, file: !209, line: 711, baseType: !216, size: 32, offset: 1888)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !3009, file: !209, line: 712, baseType: !216, size: 32, offset: 1920)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3009, file: !209, line: 713, baseType: !59, size: 32, offset: 1952)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3009, file: !209, line: 714, baseType: !59, size: 32, offset: 1984)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3009, file: !209, line: 715, baseType: !450, size: 64, offset: 2048)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3009, file: !209, line: 716, baseType: !450, size: 64, offset: 2112)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3009, file: !209, line: 717, baseType: !450, size: 64, offset: 2176)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3009, file: !209, line: 718, baseType: !450, size: 64, offset: 2240)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3009, file: !209, line: 720, baseType: !3160, size: 64, offset: 2304)
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !209, line: 632, size: 64, elements: !3162)
!3162 = !{!3163, !3164}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3161, file: !209, line: 633, baseType: !96, size: 32)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3161, file: !209, line: 634, baseType: !28, size: 32, offset: 32)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3009, file: !209, line: 721, baseType: !3166, size: 64, offset: 2368)
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64)
!3167 = !DISubroutineType(types: !3168)
!3168 = !{null, !2866, !807}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3009, file: !209, line: 722, baseType: !3170, size: 64, offset: 2432)
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3171 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !209, line: 722, flags: DIFlagFwdDecl)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2867, file: !197, line: 727, baseType: !3173, size: 64, offset: 4224)
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3174, size: 64)
!3174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !209, line: 742, size: 1792, elements: !3175)
!3175 = !{!3176, !3177, !3178, !3182, !3183, !3184}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3174, file: !209, line: 743, baseType: !2899, size: 1472)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3174, file: !209, line: 744, baseType: !2902, size: 64, offset: 1472)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3174, file: !209, line: 745, baseType: !3179, size: 64, offset: 1536)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = !DISubroutineType(types: !3181)
!3181 = !{null, !2866, !880}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3174, file: !209, line: 746, baseType: !2902, size: 64, offset: 1600)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3174, file: !209, line: 747, baseType: !2893, size: 64, offset: 1664)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3174, file: !209, line: 748, baseType: !2893, size: 64, offset: 1728)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2867, file: !197, line: 736, baseType: !3186, size: 128, offset: 4288)
!3186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !197, line: 529, size: 128, elements: !3187)
!3187 = !{!3188, !3192}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3186, file: !197, line: 531, baseType: !3189, size: 64)
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3190 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3191, line: 13, flags: DIFlagFwdDecl)
!3191 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3186, file: !197, line: 532, baseType: !3193, size: 64, offset: 64)
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3194, size: 64)
!3194 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !197, line: 49, flags: DIFlagFwdDecl)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2867, file: !197, line: 738, baseType: !3196, size: 64, offset: 4416)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3198)
!3198 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !197, line: 738, flags: DIFlagFwdDecl)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2867, file: !197, line: 740, baseType: !3200, size: 64, offset: 4480)
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2867, file: !197, line: 741, baseType: !450, size: 64, offset: 4544)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2867, file: !197, line: 746, baseType: !450, size: 64, offset: 4608)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2867, file: !197, line: 747, baseType: !3204, size: 64, offset: 4672)
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3206)
!3206 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !197, line: 747, flags: DIFlagFwdDecl)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2867, file: !197, line: 749, baseType: !3208, size: 64, offset: 4736)
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !197, line: 428, size: 128, elements: !3210)
!3210 = !{!3211, !3212, !3213}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3209, file: !197, line: 433, baseType: !28, size: 32)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3209, file: !197, line: 434, baseType: !28, size: 32, offset: 32)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3209, file: !197, line: 435, baseType: !76, size: 64, offset: 64)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2867, file: !197, line: 751, baseType: !134, size: 128, offset: 4800)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2867, file: !197, line: 762, baseType: !3216, size: 64, offset: 4928)
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !197, line: 762, flags: DIFlagFwdDecl)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2867, file: !197, line: 770, baseType: !3219, offset: 4992)
!3219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3220, line: 5, elements: !1416)
!3220 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2867, file: !197, line: 772, baseType: !3222, size: 64, offset: 4992)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3223 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3224, line: 18, flags: DIFlagFwdDecl)
!3224 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2867, file: !197, line: 773, baseType: !3226, size: 64, offset: 5056)
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2931, line: 22, flags: DIFlagFwdDecl)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2867, file: !197, line: 776, baseType: !59, size: 32, offset: 5120)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2867, file: !197, line: 778, baseType: !534, size: 32, offset: 5152)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2867, file: !197, line: 779, baseType: !446, size: 32, offset: 5184)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2867, file: !197, line: 781, baseType: !96, size: 32, offset: 5216)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2867, file: !197, line: 782, baseType: !134, size: 128, offset: 5248)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2867, file: !197, line: 784, baseType: !3234, size: 64, offset: 5376)
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3236)
!3236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3237, line: 52, size: 768, elements: !3238)
!3237 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3238 = !{!3239, !3240, !3241, !3242, !3243, !3247, !3251, !3252, !3253, !3254, !3258, !3262}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3236, file: !3237, line: 53, baseType: !55, size: 64)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3236, file: !3237, line: 55, baseType: !663, size: 64, offset: 64)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3236, file: !3237, line: 56, baseType: !663, size: 64, offset: 128)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3236, file: !3237, line: 58, baseType: !2883, size: 64, offset: 192)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3236, file: !3237, line: 59, baseType: !3244, size: 64, offset: 256)
!3244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3245, size: 64)
!3245 = !DISubroutineType(types: !3246)
!3246 = !{!518, !2886, !2795}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3236, file: !3237, line: 61, baseType: !3248, size: 64, offset: 320)
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3249, size: 64)
!3249 = !DISubroutineType(types: !3250)
!3250 = !{null, !3234}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3236, file: !3237, line: 62, baseType: !2893, size: 64, offset: 384)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3236, file: !3237, line: 64, baseType: !2902, size: 64, offset: 448)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3236, file: !3237, line: 66, baseType: !1800, size: 64, offset: 512)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3236, file: !3237, line: 67, baseType: !3255, size: 64, offset: 576)
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3256, size: 64)
!3256 = !DISubroutineType(types: !3257)
!3257 = !{!1511, !2886}
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3236, file: !3237, line: 69, baseType: !3259, size: 64, offset: 640)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DISubroutineType(types: !3261)
!3261 = !{null, !2886, !1076, !1077}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3236, file: !3237, line: 71, baseType: !2897, size: 64, offset: 704)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2867, file: !197, line: 785, baseType: !663, size: 64, offset: 5440)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2867, file: !197, line: 787, baseType: !2893, size: 64, offset: 5504)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2867, file: !197, line: 788, baseType: !3266, size: 64, offset: 5568)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3267 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !197, line: 46, flags: DIFlagFwdDecl)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2867, file: !197, line: 789, baseType: !3269, size: 64, offset: 5632)
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3270, size: 64)
!3270 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !197, line: 48, flags: DIFlagFwdDecl)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2867, file: !197, line: 791, baseType: !3272, size: 64, offset: 5696)
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !197, line: 597, size: 128, elements: !3274)
!3274 = !{!3275, !3276, !3277, !3278, !3279}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3273, file: !197, line: 598, baseType: !223, size: 32)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3273, file: !197, line: 599, baseType: !232, size: 32, offset: 32)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3273, file: !197, line: 600, baseType: !237, size: 32, offset: 64)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3273, file: !197, line: 601, baseType: !880, size: 8, offset: 96)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3273, file: !197, line: 602, baseType: !880, size: 8, offset: 104)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2867, file: !197, line: 793, baseType: !242, size: 32, offset: 5760)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2867, file: !197, line: 795, baseType: !880, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2867, file: !197, line: 796, baseType: !880, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2867, file: !197, line: 797, baseType: !880, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2867, file: !197, line: 798, baseType: !880, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2867, file: !197, line: 799, baseType: !880, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "rpm_status", scope: !2813, file: !185, line: 451, baseType: !216, size: 32, offset: 1536)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "nr_requests", scope: !2813, file: !185, line: 457, baseType: !76, size: 64, offset: 1600)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pad_mask", scope: !2813, file: !185, line: 459, baseType: !28, size: 32, offset: 1664)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "rq_timeout", scope: !2813, file: !185, line: 466, baseType: !28, size: 32, offset: 1696)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2813, file: !185, line: 468, baseType: !2190, size: 320, offset: 1728)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_work", scope: !2813, file: !185, line: 469, baseType: !1012, size: 256, offset: 2048)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "nr_active_requests_shared_tags", scope: !2813, file: !185, line: 471, baseType: !86, size: 32, offset: 2304)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "sched_shared_tags", scope: !2813, file: !185, line: 473, baseType: !3294, size: 64, offset: 2368)
!3294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3295, size: 64)
!3295 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tags", file: !185, line: 473, flags: DIFlagFwdDecl)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2813, file: !185, line: 475, baseType: !134, size: 128, offset: 2432)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "blkcg_pols", scope: !2813, file: !185, line: 477, baseType: !3298, size: 64, offset: 2560)
!3298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 64, elements: !10)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "root_blkg", scope: !2813, file: !185, line: 478, baseType: !2666, size: 64, offset: 2624)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "blkg_list", scope: !2813, file: !185, line: 479, baseType: !134, size: 128, offset: 2688)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "blkcg_mutex", scope: !2813, file: !185, line: 480, baseType: !288, size: 256, offset: 2816)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "limits", scope: !2813, file: !185, line: 483, baseType: !3303, size: 960, offset: 3072)
!3303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "queue_limits", file: !185, line: 300, size: 960, elements: !3304)
!3304 = !{!3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "bounce", scope: !3303, file: !185, line: 301, baseType: !248, size: 32)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "seg_boundary_mask", scope: !3303, file: !185, line: 302, baseType: !76, size: 64, offset: 64)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "virt_boundary_mask", scope: !3303, file: !185, line: 303, baseType: !76, size: 64, offset: 128)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_sectors", scope: !3303, file: !185, line: 305, baseType: !28, size: 32, offset: 192)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "max_dev_sectors", scope: !3303, file: !185, line: 306, baseType: !28, size: 32, offset: 224)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_sectors", scope: !3303, file: !185, line: 307, baseType: !28, size: 32, offset: 256)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "max_sectors", scope: !3303, file: !185, line: 308, baseType: !28, size: 32, offset: 288)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "max_user_sectors", scope: !3303, file: !185, line: 309, baseType: !28, size: 32, offset: 320)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3303, file: !185, line: 310, baseType: !28, size: 32, offset: 352)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "physical_block_size", scope: !3303, file: !185, line: 311, baseType: !28, size: 32, offset: 384)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "logical_block_size", scope: !3303, file: !185, line: 312, baseType: !28, size: 32, offset: 416)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_offset", scope: !3303, file: !185, line: 313, baseType: !28, size: 32, offset: 448)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "io_min", scope: !3303, file: !185, line: 314, baseType: !28, size: 32, offset: 480)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "io_opt", scope: !3303, file: !185, line: 315, baseType: !28, size: 32, offset: 512)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_sectors", scope: !3303, file: !185, line: 316, baseType: !28, size: 32, offset: 544)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_discard_sectors", scope: !3303, file: !185, line: 317, baseType: !28, size: 32, offset: 576)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "max_secure_erase_sectors", scope: !3303, file: !185, line: 318, baseType: !28, size: 32, offset: 608)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_zeroes_sectors", scope: !3303, file: !185, line: 319, baseType: !28, size: 32, offset: 640)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "max_zone_append_sectors", scope: !3303, file: !185, line: 320, baseType: !28, size: 32, offset: 672)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "discard_granularity", scope: !3303, file: !185, line: 321, baseType: !28, size: 32, offset: 704)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "discard_alignment", scope: !3303, file: !185, line: 322, baseType: !28, size: 32, offset: 736)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "zone_write_granularity", scope: !3303, file: !185, line: 323, baseType: !28, size: 32, offset: 768)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "max_segments", scope: !3303, file: !185, line: 325, baseType: !63, size: 16, offset: 800)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "max_integrity_segments", scope: !3303, file: !185, line: 326, baseType: !63, size: 16, offset: 816)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_segments", scope: !3303, file: !185, line: 327, baseType: !63, size: 16, offset: 832)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "misaligned", scope: !3303, file: !185, line: 329, baseType: !124, size: 8, offset: 848)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "discard_misaligned", scope: !3303, file: !185, line: 330, baseType: !124, size: 8, offset: 856)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "raid_partial_stripes_expensive", scope: !3303, file: !185, line: 331, baseType: !124, size: 8, offset: 864)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "zoned", scope: !3303, file: !185, line: 332, baseType: !252, size: 32, offset: 896)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alignment", scope: !3303, file: !185, line: 339, baseType: !28, size: 32, offset: 928)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "required_elevator_features", scope: !2813, file: !185, line: 485, baseType: !28, size: 32, offset: 4032)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2813, file: !185, line: 487, baseType: !59, size: 32, offset: 4064)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "blk_trace", scope: !2813, file: !185, line: 489, baseType: !3338, size: 64, offset: 4096)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_trace", file: !185, line: 31, flags: DIFlagFwdDecl)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "fq", scope: !2813, file: !185, line: 494, baseType: !3341, size: 64, offset: 4160)
!3341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3342, size: 64)
!3342 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_flush_queue", file: !185, line: 35, flags: DIFlagFwdDecl)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "flush_list", scope: !2813, file: !185, line: 495, baseType: !134, size: 128, offset: 4224)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_list", scope: !2813, file: !185, line: 497, baseType: !134, size: 128, offset: 4352)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_lock", scope: !2813, file: !185, line: 498, baseType: !96, size: 32, offset: 4480)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_work", scope: !2813, file: !185, line: 499, baseType: !2247, size: 704, offset: 4544)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_lock", scope: !2813, file: !185, line: 501, baseType: !288, size: 256, offset: 5248)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_dir_lock", scope: !2813, file: !185, line: 502, baseType: !288, size: 256, offset: 5504)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_list", scope: !2813, file: !185, line: 508, baseType: !134, size: 128, offset: 5760)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_lock", scope: !2813, file: !185, line: 509, baseType: !96, size: 32, offset: 5888)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_depth", scope: !2813, file: !185, line: 511, baseType: !59, size: 32, offset: 5920)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2813, file: !185, line: 517, baseType: !379, size: 128, align: 64, offset: 5952)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_wq", scope: !2813, file: !185, line: 518, baseType: !91, size: 192, offset: 6080)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_lock", scope: !2813, file: !185, line: 523, baseType: !288, size: 256, offset: 6272)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "quiesce_depth", scope: !2813, file: !185, line: 525, baseType: !59, size: 32, offset: 6528)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set", scope: !2813, file: !185, line: 527, baseType: !3357, size: 64, offset: 6592)
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3358 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tag_set", file: !185, line: 527, flags: DIFlagFwdDecl)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set_list", scope: !2813, file: !185, line: 528, baseType: !134, size: 128, offset: 6656)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_dir", scope: !2813, file: !185, line: 530, baseType: !412, size: 64, offset: 6784)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "sched_debugfs_dir", scope: !2813, file: !185, line: 531, baseType: !412, size: 64, offset: 6848)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "rqos_debugfs_dir", scope: !2813, file: !185, line: 532, baseType: !412, size: 64, offset: 6912)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_mutex", scope: !2813, file: !185, line: 536, baseType: !288, size: 256, offset: 6976)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "mq_sysfs_init_done", scope: !2813, file: !185, line: 538, baseType: !880, size: 8, offset: 7232)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !2620, file: !185, line: 147, baseType: !57, size: 64, offset: 704)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "bio_split", scope: !2620, file: !185, line: 149, baseType: !2682, size: 1984, offset: 768)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2620, file: !185, line: 151, baseType: !59, size: 32, offset: 2752)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2620, file: !185, line: 152, baseType: !76, size: 64, offset: 2816)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "open_mutex", scope: !2620, file: !185, line: 161, baseType: !288, size: 256, offset: 2880)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "open_partitions", scope: !2620, file: !185, line: 162, baseType: !28, size: 32, offset: 3136)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !2620, file: !185, line: 164, baseType: !3372, size: 64, offset: 3200)
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3373, size: 64)
!3373 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !174, line: 50, flags: DIFlagFwdDecl)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "queue_kobj", scope: !2620, file: !185, line: 165, baseType: !577, size: 512, offset: 3264)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "slave_dir", scope: !2620, file: !185, line: 166, baseType: !583, size: 64, offset: 3776)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "slave_bdevs", scope: !2620, file: !185, line: 168, baseType: !134, size: 128, offset: 3840)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "random", scope: !2620, file: !185, line: 170, baseType: !3378, size: 64, offset: 3968)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = !DICompositeType(tag: DW_TAG_structure_type, name: "timer_rand_state", file: !185, line: 170, flags: DIFlagFwdDecl)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "sync_io", scope: !2620, file: !185, line: 171, baseType: !86, size: 32, offset: 4032)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "ev", scope: !2620, file: !185, line: 172, baseType: !3382, size: 64, offset: 4096)
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3383 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_events", file: !185, line: 104, flags: DIFlagFwdDecl)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "cdi", scope: !2620, file: !185, line: 197, baseType: !3385, size: 64, offset: 4160)
!3385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3386, size: 64)
!3386 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdrom_device_info", file: !185, line: 197, flags: DIFlagFwdDecl)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2620, file: !185, line: 199, baseType: !59, size: 32, offset: 4224)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !2620, file: !185, line: 200, baseType: !3389, size: 64, offset: 4288)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = !DICompositeType(tag: DW_TAG_structure_type, name: "badblocks", file: !185, line: 105, flags: DIFlagFwdDecl)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "lockdep_map", scope: !2620, file: !185, line: 201, baseType: !2218, offset: 4352)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "diskseq", scope: !2620, file: !185, line: 202, baseType: !450, size: 64, offset: 4352)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "open_mode", scope: !2620, file: !185, line: 203, baseType: !2735, size: 32, offset: 4416)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ranges", scope: !2620, file: !185, line: 209, baseType: !3395, size: 64, offset: 4480)
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_independent_access_ranges", file: !185, line: 384, size: 576, elements: !3397)
!3397 = !{!3398, !3399, !3400, !3401}
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3396, file: !185, line: 385, baseType: !577, size: 512)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_registered", scope: !3396, file: !185, line: 386, baseType: !880, size: 8, offset: 512)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ia_ranges", scope: !3396, file: !185, line: 387, baseType: !28, size: 32, offset: 544)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "ia_range", scope: !3396, file: !185, line: 388, baseType: !3402, offset: 576)
!3402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3403, elements: !400)
!3403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_independent_access_range", file: !185, line: 378, size: 640, elements: !3404)
!3404 = !{!3405, !3406, !3407}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3403, file: !185, line: 379, baseType: !577, size: 512)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "sector", scope: !3403, file: !185, line: 380, baseType: !2616, size: 64, offset: 512)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "nr_sectors", scope: !3403, file: !185, line: 381, baseType: !2616, size: 64, offset: 576)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !2612, file: !2613, line: 44, baseType: !2812, size: 64, offset: 192)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !2612, file: !2613, line: 45, baseType: !3410, size: 64, offset: 256)
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3411 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !2613, line: 45, flags: DIFlagFwdDecl)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !2612, file: !2613, line: 46, baseType: !76, size: 64, offset: 320)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !2612, file: !2613, line: 47, baseType: !880, size: 8, offset: 384)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !2612, file: !2613, line: 48, baseType: !120, size: 8, offset: 392)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !2612, file: !2613, line: 49, baseType: !880, size: 8, offset: 400)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !2612, file: !2613, line: 50, baseType: !880, size: 8, offset: 408)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !2612, file: !2613, line: 51, baseType: !534, size: 32, offset: 416)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !2612, file: !2613, line: 52, baseType: !86, size: 32, offset: 448)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !2612, file: !2613, line: 53, baseType: !96, size: 32, offset: 480)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !2612, file: !2613, line: 54, baseType: !345, size: 64, offset: 512)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !2612, file: !2613, line: 55, baseType: !57, size: 64, offset: 576)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !2612, file: !2613, line: 56, baseType: !57, size: 64, offset: 640)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !2612, file: !2613, line: 57, baseType: !3424, size: 64, offset: 704)
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3426)
!3426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !185, line: 1477, size: 128, elements: !3427)
!3427 = !{!3428, !3432}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dead", scope: !3426, file: !185, line: 1478, baseType: !3429, size: 64)
!3429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3430, size: 64)
!3430 = !DISubroutineType(types: !3431)
!3431 = !{null, !2611, !880}
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3426, file: !185, line: 1483, baseType: !3433, size: 64, offset: 64)
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3434 = !DISubroutineType(types: !3435)
!3435 = !{null, !2611}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !2612, file: !2613, line: 58, baseType: !288, size: 256, offset: 768)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !2612, file: !2613, line: 60, baseType: !59, size: 32, offset: 1024)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !2612, file: !2613, line: 61, baseType: !59, size: 32, offset: 1056)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !2612, file: !2613, line: 62, baseType: !583, size: 64, offset: 1088)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !2612, file: !2613, line: 65, baseType: !288, size: 256, offset: 1152)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !2612, file: !2613, line: 66, baseType: !529, size: 64, offset: 1408)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !2612, file: !2613, line: 68, baseType: !3443, size: 64, offset: 1472)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !185, line: 63, size: 808, elements: !3445)
!3445 = !{!3446, !3450}
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !3444, file: !185, line: 64, baseType: !3447, size: 296)
!3447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !3448)
!3448 = !{!3449}
!3449 = !DISubrange(count: 37)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "volname", scope: !3444, file: !185, line: 65, baseType: !3451, size: 512, offset: 296)
!3451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 512, elements: !622)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !2612, file: !2613, line: 72, baseType: !880, size: 8, offset: 1536)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !2612, file: !2613, line: 77, baseType: !2867, size: 5824, offset: 1600)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !530, file: !174, line: 1226, baseType: !3455, size: 64, offset: 1664)
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !185, line: 1495, size: 128, elements: !3457)
!3457 = !{!3458, !3459}
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !3456, file: !185, line: 1496, baseType: !2611, size: 64)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "holder", scope: !3456, file: !185, line: 1497, baseType: !57, size: 64, offset: 64)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !530, file: !174, line: 1227, baseType: !3372, size: 64, offset: 1728)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !530, file: !174, line: 1228, baseType: !3462, size: 64, offset: 1792)
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3463, size: 64)
!3463 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !174, line: 1228, flags: DIFlagFwdDecl)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !530, file: !174, line: 1229, baseType: !749, size: 128, offset: 1856)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !530, file: !174, line: 1230, baseType: !28, size: 32, offset: 1984)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !530, file: !174, line: 1231, baseType: !3467, size: 2496, offset: 2048)
!3467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !179, line: 521, size: 2496, elements: !3468)
!3468 = !{!3469, !3470, !3471, !3473, !3505}
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3467, file: !179, line: 522, baseType: !28, size: 32)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3467, file: !179, line: 523, baseType: !822, size: 320, offset: 64)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3467, file: !179, line: 524, baseType: !3472, size: 192, offset: 384)
!3472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !345, size: 192, elements: !618)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3467, file: !179, line: 525, baseType: !3474, size: 1728, offset: 576)
!3474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3475, size: 1728, elements: !618)
!3475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !179, line: 222, size: 576, elements: !3476)
!3476 = !{!3477, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3475, file: !179, line: 223, baseType: !3478, size: 64)
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3479, size: 64)
!3479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !179, line: 445, size: 256, elements: !3480)
!3480 = !{!3481, !3482, !3495, !3496}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3479, file: !179, line: 446, baseType: !59, size: 32)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3479, file: !179, line: 447, baseType: !3483, size: 64, offset: 64)
!3483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3484, size: 64)
!3484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3485)
!3485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !179, line: 312, size: 512, elements: !3486)
!3486 = !{!3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494}
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3485, file: !179, line: 313, baseType: !2341, size: 64)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3485, file: !179, line: 314, baseType: !2341, size: 64, offset: 64)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3485, file: !179, line: 315, baseType: !2341, size: 64, offset: 128)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3485, file: !179, line: 316, baseType: !2341, size: 64, offset: 192)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3485, file: !179, line: 317, baseType: !2450, size: 64, offset: 256)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3485, file: !179, line: 318, baseType: !2450, size: 64, offset: 320)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3485, file: !179, line: 319, baseType: !2450, size: 64, offset: 384)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3485, file: !179, line: 320, baseType: !2480, size: 64, offset: 448)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3479, file: !179, line: 448, baseType: !564, size: 64, offset: 128)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3479, file: !179, line: 449, baseType: !3478, size: 64, offset: 192)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3475, file: !179, line: 224, baseType: !59, size: 32, offset: 64)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3475, file: !179, line: 226, baseType: !134, size: 128, offset: 128)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3475, file: !179, line: 227, baseType: !76, size: 64, offset: 256)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3475, file: !179, line: 228, baseType: !28, size: 32, offset: 320)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3475, file: !179, line: 229, baseType: !28, size: 32, offset: 352)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3475, file: !179, line: 230, baseType: !2418, size: 64, offset: 384)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3475, file: !179, line: 231, baseType: !2418, size: 64, offset: 448)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3475, file: !179, line: 232, baseType: !57, size: 64, offset: 512)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3467, file: !179, line: 526, baseType: !3506, size: 192, offset: 2304)
!3506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3483, size: 192, elements: !618)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !530, file: !174, line: 1233, baseType: !3508, size: 2368, offset: 4544)
!3508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !174, line: 1184, size: 2368, elements: !3509)
!3509 = !{!3510, !3511, !3512}
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3508, file: !174, line: 1185, baseType: !63, size: 16)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3508, file: !174, line: 1186, baseType: !63, size: 16, offset: 16)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3508, file: !174, line: 1187, baseType: !3513, size: 2304, offset: 64)
!3513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3514, size: 2304, elements: !618)
!3514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3515, line: 12, size: 768, elements: !3516)
!3515 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3516 = !{!3517, !3525, !3526, !4672, !4673}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3514, file: !3515, line: 13, baseType: !3518, size: 384)
!3518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3519, line: 17, size: 384, elements: !3520)
!3519 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3520 = !{!3521, !3522, !3523, !3524}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3518, file: !3519, line: 18, baseType: !59, size: 32)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3518, file: !3519, line: 19, baseType: !59, size: 32, offset: 32)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3518, file: !3519, line: 20, baseType: !91, size: 192, offset: 64)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3518, file: !3519, line: 22, baseType: !379, size: 128, align: 64, offset: 256)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3514, file: !3515, line: 14, baseType: !2043, size: 64, offset: 384)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3514, file: !3515, line: 15, baseType: !3527, size: 64, offset: 448)
!3527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3528, line: 16, size: 64, elements: !3529)
!3528 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3529 = !{!3530}
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3527, file: !3528, line: 17, baseType: !3531, size: 64)
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3532, size: 64)
!3532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1733, line: 746, size: 58368, elements: !3533)
!3533 = !{!3534, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3614, !3625, !3645, !3649, !3652, !3683, !3684, !3685, !3686, !3694, !3696, !3697, !3698, !3699, !3700, !3701, !3712, !3713, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3730, !3731, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3819, !3822, !3823, !3824, !3825, !3826, !3827, !3828, !3829, !3830, !3831, !3832, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3843, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3867, !3873, !3874, !3875, !3876, !3877, !3881, !3884, !3891, !3896, !3899, !3902, !3905, !3931, !4070, !4097, !4098, !4099, !4100, !4101, !4102, !4103, !4104, !4105, !4108, !4109, !4110, !4119, !4127, !4128, !4129, !4130, !4131, !4136, !4137, !4138, !4141, !4142, !4144, !4155, !4158, !4166, !4169, !4170, !4256, !4257, !4258, !4259, !4260, !4266, !4267, !4268, !4269, !4272, !4273, !4276, !4290, !4291, !4294, !4295, !4296, !4299, !4300, !4301, !4302, !4303, !4304, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324, !4325, !4336, !4337, !4343, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4425, !4427, !4428, !4429, !4430, !4431, !4432, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4449, !4450, !4451}
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !3532, file: !1733, line: 752, baseType: !3535, size: 192)
!3535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !3536, line: 56, size: 192, elements: !3537)
!3536 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!3537 = !{!3538, !3539, !3540, !3541}
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3535, file: !3536, line: 57, baseType: !76, size: 64)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !3535, file: !3536, line: 58, baseType: !76, size: 64, offset: 64)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3535, file: !3536, line: 59, baseType: !446, size: 32, offset: 128)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3535, file: !3536, line: 61, baseType: !446, size: 32, offset: 160)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !3532, file: !1733, line: 754, baseType: !28, size: 32, offset: 192)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3532, file: !1733, line: 767, baseType: !57, size: 64, offset: 256)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3532, file: !1733, line: 768, baseType: !373, size: 32, offset: 320)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3532, file: !1733, line: 770, baseType: !28, size: 32, offset: 352)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !3532, file: !1733, line: 771, baseType: !28, size: 32, offset: 384)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !3532, file: !1733, line: 774, baseType: !59, size: 32, offset: 416)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !3532, file: !1733, line: 775, baseType: !3549, size: 128, offset: 448)
!3549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !3550, line: 58, size: 128, elements: !3551)
!3550 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!3551 = !{!3552, !3553, !3558, !3559}
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !3549, file: !3550, line: 59, baseType: !698, size: 64)
!3553 = !DIDerivedType(tag: DW_TAG_member, scope: !3549, file: !3550, line: 60, baseType: !3554, size: 32, offset: 64)
!3554 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3549, file: !3550, line: 60, size: 32, elements: !3555)
!3555 = !{!3556, !3557}
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !3554, file: !3550, line: 61, baseType: !28, size: 32)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !3554, file: !3550, line: 62, baseType: !86, size: 32)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !3549, file: !3550, line: 65, baseType: !130, size: 16, offset: 96)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !3549, file: !3550, line: 65, baseType: !130, size: 16, offset: 112)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !3532, file: !1733, line: 776, baseType: !28, size: 32, offset: 576)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !3532, file: !1733, line: 777, baseType: !76, size: 64, offset: 640)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !3532, file: !1733, line: 778, baseType: !3531, size: 64, offset: 704)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !3532, file: !1733, line: 787, baseType: !59, size: 32, offset: 768)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !3532, file: !1733, line: 788, baseType: !59, size: 32, offset: 800)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3532, file: !1733, line: 790, baseType: !59, size: 32, offset: 832)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3532, file: !1733, line: 792, baseType: !59, size: 32, offset: 864)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !3532, file: !1733, line: 793, baseType: !59, size: 32, offset: 896)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !3532, file: !1733, line: 794, baseType: !59, size: 32, offset: 928)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !3532, file: !1733, line: 795, baseType: !28, size: 32, offset: 960)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !3532, file: !1733, line: 797, baseType: !3571, size: 2048, offset: 1024)
!3571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1733, line: 551, size: 2048, elements: !3572)
!3572 = !{!3573, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3593, !3596, !3597, !3598}
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !3571, file: !1733, line: 553, baseType: !3574, size: 128)
!3574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1733, line: 411, size: 128, elements: !3575)
!3575 = !{!3576, !3577}
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3574, file: !1733, line: 412, baseType: !76, size: 64)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !3574, file: !1733, line: 413, baseType: !446, size: 32, offset: 64)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !3571, file: !1733, line: 554, baseType: !814, size: 192, align: 64, offset: 128)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3571, file: !1733, line: 555, baseType: !450, size: 64, offset: 320)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !3571, file: !1733, line: 556, baseType: !450, size: 64, offset: 384)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !3571, file: !1733, line: 558, baseType: !134, size: 128, offset: 448)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3571, file: !1733, line: 559, baseType: !28, size: 32, offset: 576)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !3571, file: !1733, line: 561, baseType: !450, size: 64, offset: 640)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3571, file: !1733, line: 562, baseType: !450, size: 64, offset: 704)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !3571, file: !1733, line: 563, baseType: !450, size: 64, offset: 768)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !3571, file: !1733, line: 564, baseType: !450, size: 64, offset: 832)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !3571, file: !1733, line: 565, baseType: !298, size: 64, offset: 896)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !3571, file: !1733, line: 566, baseType: !450, size: 64, offset: 960)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !3571, file: !1733, line: 568, baseType: !450, size: 64, offset: 1024)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3571, file: !1733, line: 571, baseType: !59, size: 32, offset: 1088)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3571, file: !1733, line: 572, baseType: !3592, size: 64, offset: 1152)
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3571, size: 64)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !3571, file: !1733, line: 574, baseType: !3594, size: 64, offset: 1216)
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3595, size: 64)
!3595 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1733, line: 49, flags: DIFlagFwdDecl)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !3571, file: !1733, line: 576, baseType: !3594, size: 64, offset: 1280)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !3571, file: !1733, line: 578, baseType: !76, size: 64, offset: 1344)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !3571, file: !1733, line: 588, baseType: !3599, size: 512, align: 512, offset: 1536)
!3599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1733, line: 497, size: 512, align: 512, elements: !3600)
!3600 = !{!3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609}
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !3599, file: !1733, line: 498, baseType: !450, size: 64)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !3599, file: !1733, line: 499, baseType: !450, size: 64, offset: 64)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !3599, file: !1733, line: 500, baseType: !450, size: 64, offset: 128)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !3599, file: !1733, line: 501, baseType: !446, size: 32, offset: 192)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !3599, file: !1733, line: 502, baseType: !446, size: 32, offset: 224)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !3599, file: !1733, line: 503, baseType: !76, size: 64, offset: 256)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !3599, file: !1733, line: 504, baseType: !76, size: 64, offset: 320)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !3599, file: !1733, line: 505, baseType: !76, size: 64, offset: 384)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !3599, file: !1733, line: 506, baseType: !3610, size: 64, align: 64, offset: 448)
!3610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1733, line: 445, size: 64, align: 64, elements: !3611)
!3611 = !{!3612, !3613}
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !3610, file: !1733, line: 446, baseType: !28, size: 32)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !3610, file: !1733, line: 447, baseType: !28, size: 32, offset: 32)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !3532, file: !1733, line: 798, baseType: !3615, size: 384, offset: 3072)
!3615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1733, line: 592, size: 384, elements: !3616)
!3616 = !{!3617, !3618, !3619, !3620, !3621, !3622, !3623}
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !3615, file: !1733, line: 593, baseType: !134, size: 128)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3615, file: !1733, line: 594, baseType: !76, size: 64, offset: 128)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !3615, file: !1733, line: 595, baseType: !76, size: 64, offset: 192)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !3615, file: !1733, line: 596, baseType: !28, size: 32, offset: 256)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3615, file: !1733, line: 597, baseType: !63, size: 16, offset: 288)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !3615, file: !1733, line: 598, baseType: !63, size: 16, offset: 304)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !3615, file: !1733, line: 600, baseType: !3624, size: 64, offset: 320)
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !3532, file: !1733, line: 799, baseType: !3626, size: 1792, offset: 3456)
!3626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1733, line: 610, size: 1792, elements: !3627)
!3627 = !{!3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643}
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3626, file: !1733, line: 611, baseType: !814, size: 192, align: 64)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !3626, file: !1733, line: 618, baseType: !450, size: 64, offset: 192)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !3626, file: !1733, line: 619, baseType: !450, size: 64, offset: 256)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !3626, file: !1733, line: 620, baseType: !450, size: 64, offset: 320)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !3626, file: !1733, line: 621, baseType: !450, size: 64, offset: 384)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !3626, file: !1733, line: 622, baseType: !450, size: 64, offset: 448)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !3626, file: !1733, line: 629, baseType: !298, size: 64, offset: 512)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3626, file: !1733, line: 630, baseType: !450, size: 64, offset: 576)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3626, file: !1733, line: 631, baseType: !28, size: 32, offset: 640)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !3626, file: !1733, line: 653, baseType: !28, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !3626, file: !1733, line: 654, baseType: !28, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !3626, file: !1733, line: 655, baseType: !28, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !3626, file: !1733, line: 656, baseType: !28, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !3626, file: !1733, line: 662, baseType: !3061, size: 512, offset: 704)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !3626, file: !1733, line: 671, baseType: !3061, size: 512, offset: 1216)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !3626, file: !1733, line: 679, baseType: !3644, size: 64, offset: 1728)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3626, size: 64)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !3532, file: !1733, line: 800, baseType: !3646, size: 64, offset: 5248)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3647 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3648)
!3648 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1733, line: 800, flags: DIFlagFwdDecl)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !3532, file: !1733, line: 809, baseType: !3650, size: 64, offset: 5312)
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3651, size: 64)
!3651 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1733, line: 70, flags: DIFlagFwdDecl)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3532, file: !1733, line: 825, baseType: !3653, size: 2048, align: 512, offset: 5632)
!3653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1733, line: 509, size: 2048, align: 512, elements: !3654)
!3654 = !{!3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682}
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !3653, file: !1733, line: 511, baseType: !450, size: 64)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !3653, file: !1733, line: 512, baseType: !450, size: 64, offset: 64)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !3653, file: !1733, line: 513, baseType: !450, size: 64, offset: 128)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !3653, file: !1733, line: 514, baseType: !450, size: 64, offset: 192)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !3653, file: !1733, line: 515, baseType: !450, size: 64, offset: 256)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !3653, file: !1733, line: 516, baseType: !450, size: 64, offset: 320)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !3653, file: !1733, line: 518, baseType: !450, size: 64, offset: 384)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !3653, file: !1733, line: 519, baseType: !450, size: 64, offset: 448)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !3653, file: !1733, line: 520, baseType: !298, size: 64, offset: 512)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !3653, file: !1733, line: 522, baseType: !450, size: 64, offset: 576)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !3653, file: !1733, line: 523, baseType: !450, size: 64, offset: 640)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !3653, file: !1733, line: 524, baseType: !298, size: 64, offset: 704)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !3653, file: !1733, line: 526, baseType: !298, size: 64, offset: 768)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !3653, file: !1733, line: 527, baseType: !450, size: 64, offset: 832)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !3653, file: !1733, line: 529, baseType: !450, size: 64, offset: 896)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !3653, file: !1733, line: 530, baseType: !450, size: 64, offset: 960)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !3653, file: !1733, line: 531, baseType: !450, size: 64, offset: 1024)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !3653, file: !1733, line: 532, baseType: !450, size: 64, offset: 1088)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !3653, file: !1733, line: 533, baseType: !450, size: 64, offset: 1152)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !3653, file: !1733, line: 535, baseType: !450, size: 64, offset: 1216)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !3653, file: !1733, line: 536, baseType: !450, size: 64, offset: 1280)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !3653, file: !1733, line: 537, baseType: !450, size: 64, offset: 1344)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !3653, file: !1733, line: 538, baseType: !450, size: 64, offset: 1408)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !3653, file: !1733, line: 539, baseType: !450, size: 64, offset: 1472)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !3653, file: !1733, line: 540, baseType: !450, size: 64, offset: 1536)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !3653, file: !1733, line: 541, baseType: !450, size: 64, offset: 1600)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !3653, file: !1733, line: 542, baseType: !450, size: 64, offset: 1664)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !3653, file: !1733, line: 543, baseType: !450, size: 64, offset: 1728)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !3532, file: !1733, line: 833, baseType: !28, size: 32, offset: 7680)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !3532, file: !1733, line: 836, baseType: !28, size: 32, offset: 7712)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !3532, file: !1733, line: 837, baseType: !59, size: 32, offset: 7744)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !3532, file: !1733, line: 838, baseType: !3687, size: 64, offset: 7808)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3689)
!3689 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !3690, line: 19, baseType: !3691)
!3690 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!3691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !3690, line: 19, size: 64, elements: !3692)
!3692 = !{!3693}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3691, file: !3690, line: 19, baseType: !3298, size: 64)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !3532, file: !1733, line: 839, baseType: !3695, size: 64, offset: 7872)
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !3532, file: !1733, line: 840, baseType: !3689, size: 64, offset: 7936)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !3532, file: !1733, line: 841, baseType: !57, size: 64, offset: 8000)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !3532, file: !1733, line: 843, baseType: !63, size: 16, offset: 8064)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !3532, file: !1733, line: 845, baseType: !63, size: 16, offset: 8080)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !3532, file: !1733, line: 848, baseType: !59, size: 32, offset: 8096)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !3532, file: !1733, line: 849, baseType: !3702, size: 32, offset: 8128)
!3702 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1733, line: 718, size: 32, elements: !3703)
!3703 = !{!3704, !3711}
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3702, file: !1733, line: 724, baseType: !3705, size: 32)
!3705 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3702, file: !1733, line: 719, size: 32, elements: !3706)
!3706 = !{!3707, !3708, !3709, !3710}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3705, file: !1733, line: 720, baseType: !120, size: 8)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !3705, file: !1733, line: 721, baseType: !120, size: 8, offset: 8)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !3705, file: !1733, line: 722, baseType: !120, size: 8, offset: 16)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !3705, file: !1733, line: 723, baseType: !120, size: 8, offset: 24)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3702, file: !1733, line: 725, baseType: !446, size: 32)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !3532, file: !1733, line: 850, baseType: !134, size: 128, offset: 8192)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !3532, file: !1733, line: 851, baseType: !3714, size: 64, offset: 8320)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1733, line: 60, flags: DIFlagFwdDecl)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !3532, file: !1733, line: 855, baseType: !76, size: 64, offset: 8384)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !3532, file: !1733, line: 856, baseType: !120, size: 8, offset: 8448)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !3532, file: !1733, line: 857, baseType: !120, size: 8, offset: 8456)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !3532, file: !1733, line: 858, baseType: !59, size: 32, offset: 8480)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !3532, file: !1733, line: 859, baseType: !134, size: 128, offset: 8512)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !3532, file: !1733, line: 860, baseType: !59, size: 32, offset: 8640)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !3532, file: !1733, line: 861, baseType: !134, size: 128, offset: 8704)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !3532, file: !1733, line: 873, baseType: !3724, size: 256, offset: 8832)
!3724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1733, line: 376, size: 256, elements: !3725)
!3725 = !{!3726, !3727, !3728, !3729}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !3724, file: !1733, line: 381, baseType: !76, size: 64)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !3724, file: !1733, line: 384, baseType: !452, size: 64, offset: 64)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !3724, file: !1733, line: 389, baseType: !452, size: 64, offset: 128)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !3724, file: !1733, line: 392, baseType: !452, size: 64, offset: 192)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3532, file: !1733, line: 875, baseType: !134, size: 128, offset: 9088)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !3532, file: !1733, line: 877, baseType: !3732, size: 320, offset: 9216)
!3732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !3733, line: 86, size: 320, elements: !3734)
!3733 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!3734 = !{!3735, !3736, !3737}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3732, file: !3733, line: 87, baseType: !59, size: 32)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !3732, file: !3733, line: 88, baseType: !134, size: 128, offset: 64)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !3732, file: !3733, line: 89, baseType: !134, size: 128, offset: 192)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !3532, file: !1733, line: 878, baseType: !814, size: 192, align: 64, offset: 9536)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !3532, file: !1733, line: 881, baseType: !1395, size: 64, offset: 9728)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !3532, file: !1733, line: 882, baseType: !1395, size: 64, offset: 9792)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !3532, file: !1733, line: 884, baseType: !59, size: 32, offset: 9856)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !3532, file: !1733, line: 885, baseType: !59, size: 32, offset: 9888)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !3532, file: !1733, line: 886, baseType: !59, size: 32, offset: 9920)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !3532, file: !1733, line: 888, baseType: !59, size: 32, offset: 9952)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !3532, file: !1733, line: 890, baseType: !76, size: 64, offset: 9984)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !3532, file: !1733, line: 893, baseType: !28, size: 32, offset: 10048)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !3532, file: !1733, line: 896, baseType: !28, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !3532, file: !1733, line: 897, baseType: !28, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !3532, file: !1733, line: 898, baseType: !28, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !3532, file: !1733, line: 899, baseType: !28, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !3532, file: !1733, line: 919, baseType: !28, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !3532, file: !1733, line: 922, baseType: !28, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !3532, file: !1733, line: 923, baseType: !28, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !3532, file: !1733, line: 925, baseType: !28, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !3532, file: !1733, line: 939, baseType: !28, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3532, file: !1733, line: 941, baseType: !28, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !3532, file: !1733, line: 944, baseType: !28, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !3532, file: !1733, line: 956, baseType: !28, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !3532, file: !1733, line: 962, baseType: !28, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !3532, file: !1733, line: 966, baseType: !28, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !3532, file: !1733, line: 969, baseType: !76, size: 64, offset: 10176)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !3532, file: !1733, line: 971, baseType: !3763, size: 448, offset: 10240)
!3763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !258, line: 25, size: 448, elements: !3764)
!3764 = !{!3765, !3766, !3771}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3763, file: !258, line: 26, baseType: !76, size: 64)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3763, file: !258, line: 27, baseType: !3767, size: 64, offset: 64)
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3768, size: 64)
!3768 = !DISubroutineType(types: !3769)
!3769 = !{!652, !3770}
!3770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3771 = !DIDerivedType(tag: DW_TAG_member, scope: !3763, file: !258, line: 28, baseType: !3772, size: 320, offset: 128)
!3772 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3763, file: !258, line: 28, size: 320, elements: !3773)
!3773 = !{!3774, !3784, !3809}
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3772, file: !258, line: 37, baseType: !3775, size: 320)
!3775 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3772, file: !258, line: 30, size: 320, elements: !3776)
!3776 = !{!3777, !3779, !3780, !3781, !3782, !3783}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3775, file: !258, line: 31, baseType: !3778, size: 64)
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3775, file: !258, line: 32, baseType: !446, size: 32, offset: 64)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3775, file: !258, line: 33, baseType: !446, size: 32, offset: 96)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3775, file: !258, line: 34, baseType: !446, size: 32, offset: 128)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3775, file: !258, line: 35, baseType: !450, size: 64, offset: 192)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3775, file: !258, line: 36, baseType: !3778, size: 64, offset: 256)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3772, file: !258, line: 47, baseType: !3785, size: 192)
!3785 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3772, file: !258, line: 39, size: 192, elements: !3786)
!3786 = !{!3787, !3788, !3789, !3808}
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3785, file: !258, line: 40, baseType: !3106, size: 32)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3785, file: !258, line: 41, baseType: !257, size: 32, offset: 32)
!3789 = !DIDerivedType(tag: DW_TAG_member, scope: !3785, file: !258, line: 42, baseType: !3790, size: 64, offset: 64)
!3790 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3785, file: !258, line: 42, size: 64, elements: !3791)
!3791 = !{!3792, !3800}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3790, file: !258, line: 43, baseType: !3793, size: 64)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3795, line: 7, size: 128, elements: !3796)
!3795 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3796 = !{!3797, !3799}
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3794, file: !3795, line: 8, baseType: !3798, size: 64)
!3798 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !74, line: 93, baseType: !80)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3794, file: !3795, line: 9, baseType: !80, size: 64, offset: 64)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3790, file: !258, line: 44, baseType: !3801, size: 64)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3803, line: 7, size: 64, elements: !3804)
!3803 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3804 = !{!3805, !3807}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3802, file: !3803, line: 8, baseType: !3806, size: 32)
!3806 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3803, line: 5, baseType: !807)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3802, file: !3803, line: 9, baseType: !807, size: 32, offset: 32)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3785, file: !258, line: 46, baseType: !450, size: 64, offset: 128)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3772, file: !258, line: 55, baseType: !3810, size: 256)
!3810 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3772, file: !258, line: 49, size: 256, elements: !3811)
!3811 = !{!3812, !3815, !3816, !3817, !3818}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3810, file: !258, line: 50, baseType: !3813, size: 64)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!3814 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !258, line: 14, flags: DIFlagFwdDecl)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3810, file: !258, line: 51, baseType: !59, size: 32, offset: 64)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3810, file: !258, line: 52, baseType: !59, size: 32, offset: 96)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3810, file: !258, line: 53, baseType: !76, size: 64, offset: 128)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3810, file: !258, line: 54, baseType: !76, size: 64, offset: 192)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3532, file: !1733, line: 973, baseType: !3820, size: 32, offset: 10688)
!3820 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !62, line: 27, baseType: !3821)
!3821 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !74, line: 28, baseType: !59)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !3532, file: !1733, line: 974, baseType: !3820, size: 32, offset: 10720)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !3532, file: !1733, line: 978, baseType: !76, size: 64, offset: 10752)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !3532, file: !1733, line: 987, baseType: !3531, size: 64, offset: 10816)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3532, file: !1733, line: 990, baseType: !3531, size: 64, offset: 10880)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3532, file: !1733, line: 995, baseType: !134, size: 128, offset: 10944)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3532, file: !1733, line: 996, baseType: !134, size: 128, offset: 11072)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !3532, file: !1733, line: 997, baseType: !3531, size: 64, offset: 11200)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !3532, file: !1733, line: 1005, baseType: !134, size: 128, offset: 11264)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !3532, file: !1733, line: 1006, baseType: !134, size: 128, offset: 11392)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !3532, file: !1733, line: 1009, baseType: !737, size: 64, offset: 11520)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !3532, file: !1733, line: 1010, baseType: !3833, size: 512, offset: 11584)
!3833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !749, size: 512, elements: !754)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !3532, file: !1733, line: 1011, baseType: !134, size: 128, offset: 12096)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !3532, file: !1733, line: 1012, baseType: !134, size: 128, offset: 12224)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !3532, file: !1733, line: 1014, baseType: !1050, size: 64, offset: 12352)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !3532, file: !1733, line: 1017, baseType: !2091, size: 64, offset: 12416)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !3532, file: !1733, line: 1020, baseType: !2091, size: 64, offset: 12480)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !3532, file: !1733, line: 1023, baseType: !57, size: 64, offset: 12544)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3532, file: !1733, line: 1025, baseType: !450, size: 64, offset: 12608)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3532, file: !1733, line: 1026, baseType: !450, size: 64, offset: 12672)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3532, file: !1733, line: 1031, baseType: !450, size: 64, offset: 12736)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3532, file: !1733, line: 1032, baseType: !3844, size: 192, offset: 12800)
!3844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1733, line: 324, size: 192, elements: !3845)
!3845 = !{!3846, !3847, !3848}
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3844, file: !1733, line: 326, baseType: !450, size: 64)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3844, file: !1733, line: 327, baseType: !450, size: 64, offset: 64)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3844, file: !1733, line: 328, baseType: !301, size: 32, offset: 128)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3532, file: !1733, line: 1041, baseType: !76, size: 64, offset: 12992)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3532, file: !1733, line: 1042, baseType: !76, size: 64, offset: 13056)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !3532, file: !1733, line: 1045, baseType: !450, size: 64, offset: 13120)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !3532, file: !1733, line: 1048, baseType: !450, size: 64, offset: 13184)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3532, file: !1733, line: 1051, baseType: !76, size: 64, offset: 13248)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3532, file: !1733, line: 1052, baseType: !76, size: 64, offset: 13312)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3532, file: !1733, line: 1055, baseType: !3856, size: 640, offset: 13376)
!3856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3857, line: 132, size: 640, elements: !3858)
!3857 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3858 = !{!3859, !3865, !3866}
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3856, file: !3857, line: 133, baseType: !3860, size: 576)
!3860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3861, size: 576, elements: !618)
!3861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3857, line: 117, size: 192, elements: !3862)
!3862 = !{!3863, !3864}
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3861, file: !3857, line: 118, baseType: !450, size: 64)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3861, file: !3857, line: 119, baseType: !3115, size: 128, offset: 64)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3856, file: !3857, line: 134, baseType: !28, size: 32, offset: 576)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3856, file: !3857, line: 135, baseType: !28, size: 32, offset: 608)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !3532, file: !1733, line: 1058, baseType: !3868, size: 448, offset: 14016)
!3868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3857, line: 144, size: 448, elements: !3869)
!3869 = !{!3870, !3871, !3872}
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3868, file: !3857, line: 145, baseType: !379, size: 128, align: 64)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3868, file: !3857, line: 146, baseType: !288, size: 256, offset: 128)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3868, file: !3857, line: 147, baseType: !28, size: 32, offset: 384)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !3532, file: !1733, line: 1064, baseType: !772, size: 64, offset: 14464)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !3532, file: !1733, line: 1067, baseType: !772, size: 64, offset: 14528)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !3532, file: !1733, line: 1070, baseType: !772, size: 64, offset: 14592)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !3532, file: !1733, line: 1074, baseType: !799, size: 64, offset: 14656)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3532, file: !1733, line: 1084, baseType: !3878, size: 128, offset: 14720)
!3878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !3879)
!3879 = !{!3880}
!3880 = !DISubrange(count: 16)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !3532, file: !1733, line: 1086, baseType: !3882, size: 64, offset: 14848)
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1733, line: 55, flags: DIFlagFwdDecl)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !3532, file: !1733, line: 1089, baseType: !3885, size: 64, offset: 14912)
!3885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3886, line: 12, size: 64, elements: !3887)
!3886 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3887 = !{!3888}
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3885, file: !3886, line: 13, baseType: !3889, size: 64)
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3890, size: 64)
!3890 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3886, line: 8, flags: DIFlagFwdDecl)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !3532, file: !1733, line: 1090, baseType: !3892, size: 128, offset: 14976)
!3892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3893, line: 13, size: 128, elements: !3894)
!3893 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3894 = !{!3895}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3892, file: !3893, line: 14, baseType: !134, size: 128)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !3532, file: !1733, line: 1097, baseType: !3897, size: 64, offset: 15104)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1733, line: 50, flags: DIFlagFwdDecl)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3532, file: !1733, line: 1100, baseType: !3900, size: 64, offset: 15168)
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3901, size: 64)
!3901 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1733, line: 1100, flags: DIFlagFwdDecl)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !3532, file: !1733, line: 1103, baseType: !3903, size: 64, offset: 15232)
!3903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3904, size: 64)
!3904 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1733, line: 53, flags: DIFlagFwdDecl)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !3532, file: !1733, line: 1107, baseType: !3906, size: 64, offset: 15296)
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3907, size: 64)
!3907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !3908, line: 31, size: 576, elements: !3909)
!3908 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!3909 = !{!3910, !3911, !3914, !3917, !3920, !3921, !3924, !3927, !3928}
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3907, file: !3908, line: 32, baseType: !373, size: 32)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !3907, file: !3908, line: 33, baseType: !3912, size: 64, offset: 64)
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3913 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !3908, line: 9, flags: DIFlagFwdDecl)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !3907, file: !3908, line: 34, baseType: !3915, size: 64, offset: 128)
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3916, size: 64)
!3916 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !3908, line: 10, flags: DIFlagFwdDecl)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !3907, file: !3908, line: 35, baseType: !3918, size: 64, offset: 192)
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3919 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !3908, line: 8, flags: DIFlagFwdDecl)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !3907, file: !3908, line: 36, baseType: !765, size: 64, offset: 256)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !3907, file: !3908, line: 37, baseType: !3922, size: 64, offset: 320)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !801, line: 34, flags: DIFlagFwdDecl)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !3907, file: !3908, line: 38, baseType: !3925, size: 64, offset: 384)
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3926 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !3908, line: 38, flags: DIFlagFwdDecl)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !3907, file: !3908, line: 39, baseType: !3925, size: 64, offset: 448)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !3907, file: !3908, line: 40, baseType: !3929, size: 64, offset: 512)
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3930, size: 64)
!3930 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !3908, line: 12, flags: DIFlagFwdDecl)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3532, file: !1733, line: 1110, baseType: !3932, size: 64, offset: 15360)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3934, line: 93, size: 8768, elements: !3935)
!3934 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3935 = !{!3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3984, !3993, !3994, !3996, !3997, !3998, !4001, !4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017, !4018, !4019, !4020, !4021, !4022, !4023, !4024, !4025, !4026, !4027, !4028, !4039, !4040, !4047, !4057, !4060, !4061, !4064, !4065, !4066, !4067, !4068, !4069}
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3933, file: !3934, line: 94, baseType: !373, size: 32)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3933, file: !3934, line: 95, baseType: !86, size: 32, offset: 32)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3933, file: !3934, line: 96, baseType: !59, size: 32, offset: 64)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3933, file: !3934, line: 97, baseType: !59, size: 32, offset: 96)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3933, file: !3934, line: 98, baseType: !134, size: 128, offset: 128)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3933, file: !3934, line: 100, baseType: !91, size: 192, offset: 256)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3933, file: !3934, line: 103, baseType: !3531, size: 64, offset: 448)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3933, file: !3934, line: 106, baseType: !3944, size: 192, offset: 512)
!3944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !3945, line: 32, size: 192, elements: !3946)
!3945 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!3946 = !{!3947, !3948}
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3944, file: !3945, line: 33, baseType: !134, size: 128)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3944, file: !3945, line: 34, baseType: !3949, size: 64, offset: 128)
!3949 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3950, line: 25, baseType: !3951)
!3950 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3951 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3950, line: 23, size: 64, elements: !3952)
!3952 = !{!3953}
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3951, file: !3950, line: 24, baseType: !3298, size: 64)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3933, file: !3934, line: 109, baseType: !745, size: 64, offset: 704)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3933, file: !3934, line: 112, baseType: !59, size: 32, offset: 768)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3933, file: !3934, line: 114, baseType: !59, size: 32, offset: 800)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3933, file: !3934, line: 115, baseType: !3531, size: 64, offset: 832)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3933, file: !3934, line: 118, baseType: !59, size: 32, offset: 896)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3933, file: !3934, line: 119, baseType: !28, size: 32, offset: 928)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3933, file: !3934, line: 121, baseType: !3961, size: 64, offset: 960)
!3961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3962, size: 64)
!3962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3934, line: 80, size: 448, elements: !3963)
!3963 = !{!3964, !3965, !3971}
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3962, file: !3934, line: 81, baseType: !86, size: 32)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3962, file: !3934, line: 82, baseType: !3966, size: 128, offset: 64)
!3966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3934, line: 75, size: 128, elements: !3967)
!3967 = !{!3968, !3969}
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3966, file: !3934, line: 76, baseType: !3531, size: 64)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3966, file: !3934, line: 77, baseType: !3970, size: 64, offset: 64)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3966, size: 64)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3962, file: !3934, line: 83, baseType: !1051, size: 256, offset: 192)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3933, file: !3934, line: 132, baseType: !28, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3933, file: !3934, line: 133, baseType: !28, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3933, file: !3934, line: 138, baseType: !28, size: 32, offset: 1056)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3933, file: !3934, line: 139, baseType: !134, size: 128, offset: 1088)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3933, file: !3934, line: 142, baseType: !3061, size: 512, offset: 1216)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3933, file: !3934, line: 143, baseType: !3041, size: 64, offset: 1728)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3933, file: !3934, line: 150, baseType: !3979, size: 256, offset: 1792)
!3979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3980, size: 256, elements: !2081)
!3980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3934, line: 38, size: 128, elements: !3981)
!3981 = !{!3982, !3983}
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3980, file: !3934, line: 39, baseType: !450, size: 64)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3980, file: !3934, line: 40, baseType: !450, size: 64, offset: 64)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3933, file: !3934, line: 156, baseType: !3985, size: 192, offset: 2048)
!3985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3934, line: 66, size: 192, elements: !3986)
!3986 = !{!3987}
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3985, file: !3934, line: 67, baseType: !3988, size: 192)
!3988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3934, line: 47, size: 192, elements: !3989)
!3989 = !{!3990, !3991, !3992}
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3988, file: !3934, line: 48, baseType: !294, size: 64)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3988, file: !3934, line: 49, baseType: !294, size: 64, offset: 64)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3988, file: !3934, line: 50, baseType: !294, size: 64, offset: 128)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3933, file: !3934, line: 160, baseType: !3856, size: 640, offset: 2240)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3933, file: !3934, line: 163, baseType: !3995, size: 256, offset: 2880)
!3995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !737, size: 256, elements: !754)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3933, file: !3934, line: 169, baseType: !737, size: 64, offset: 3136)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3933, file: !3934, line: 172, baseType: !59, size: 32, offset: 3200)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3933, file: !3934, line: 174, baseType: !3999, size: 64, offset: 3264)
!3999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4000, size: 64)
!4000 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3934, line: 174, flags: DIFlagFwdDecl)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3933, file: !3934, line: 185, baseType: !4002, size: 64, offset: 3328)
!4002 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !419, line: 860, baseType: !4003)
!4003 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !419, line: 853, size: 64, elements: !4004)
!4004 = !{!4005, !4006}
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !4003, file: !419, line: 858, baseType: !418, size: 32)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4003, file: !419, line: 859, baseType: !96, size: 32, offset: 32)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3933, file: !3934, line: 186, baseType: !450, size: 64, offset: 3392)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3933, file: !3934, line: 186, baseType: !450, size: 64, offset: 3456)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3933, file: !3934, line: 186, baseType: !450, size: 64, offset: 3520)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3933, file: !3934, line: 186, baseType: !450, size: 64, offset: 3584)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3933, file: !3934, line: 187, baseType: !450, size: 64, offset: 3648)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3933, file: !3934, line: 188, baseType: !450, size: 64, offset: 3712)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3933, file: !3934, line: 189, baseType: !3844, size: 192, offset: 3776)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3933, file: !3934, line: 190, baseType: !76, size: 64, offset: 3968)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3933, file: !3934, line: 190, baseType: !76, size: 64, offset: 4032)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3933, file: !3934, line: 190, baseType: !76, size: 64, offset: 4096)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3933, file: !3934, line: 190, baseType: !76, size: 64, offset: 4160)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3933, file: !3934, line: 191, baseType: !76, size: 64, offset: 4224)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3933, file: !3934, line: 191, baseType: !76, size: 64, offset: 4288)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3933, file: !3934, line: 191, baseType: !76, size: 64, offset: 4352)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3933, file: !3934, line: 191, baseType: !76, size: 64, offset: 4416)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3933, file: !3934, line: 192, baseType: !76, size: 64, offset: 4480)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3933, file: !3934, line: 192, baseType: !76, size: 64, offset: 4544)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3933, file: !3934, line: 192, baseType: !76, size: 64, offset: 4608)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3933, file: !3934, line: 192, baseType: !76, size: 64, offset: 4672)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3933, file: !3934, line: 193, baseType: !76, size: 64, offset: 4736)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3933, file: !3934, line: 193, baseType: !76, size: 64, offset: 4800)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3933, file: !3934, line: 194, baseType: !4029, size: 448, offset: 4864)
!4029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !4030, line: 12, size: 448, elements: !4031)
!4030 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!4031 = !{!4032, !4033, !4034, !4035, !4036, !4037, !4038}
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !4029, file: !4030, line: 15, baseType: !450, size: 64)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !4029, file: !4030, line: 17, baseType: !450, size: 64, offset: 64)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !4029, file: !4030, line: 19, baseType: !450, size: 64, offset: 128)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !4029, file: !4030, line: 21, baseType: !450, size: 64, offset: 192)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !4029, file: !4030, line: 29, baseType: !450, size: 64, offset: 256)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !4029, file: !4030, line: 35, baseType: !450, size: 64, offset: 320)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !4029, file: !4030, line: 44, baseType: !450, size: 64, offset: 384)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3933, file: !3934, line: 202, baseType: !452, size: 64, offset: 5312)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3933, file: !3934, line: 213, baseType: !4041, size: 2048, offset: 5376)
!4041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4042, size: 2048, elements: !3879)
!4042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !4043, line: 43, size: 128, elements: !4044)
!4043 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!4044 = !{!4045, !4046}
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !4042, file: !4043, line: 44, baseType: !75, size: 64)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !4042, file: !4043, line: 45, baseType: !75, size: 64, offset: 64)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3933, file: !3934, line: 216, baseType: !4048, size: 448, offset: 7424)
!4048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3934, line: 30, size: 448, elements: !4049)
!4049 = !{!4050, !4051, !4052, !4053, !4054, !4055, !4056}
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !4048, file: !3934, line: 31, baseType: !59, size: 32)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !4048, file: !3934, line: 32, baseType: !652, size: 64, offset: 64)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !4048, file: !3934, line: 33, baseType: !76, size: 64, offset: 128)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !4048, file: !3934, line: 34, baseType: !450, size: 64, offset: 192)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !4048, file: !3934, line: 34, baseType: !450, size: 64, offset: 256)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !4048, file: !3934, line: 35, baseType: !76, size: 64, offset: 320)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !4048, file: !3934, line: 35, baseType: !76, size: 64, offset: 384)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3933, file: !3934, line: 219, baseType: !4058, size: 64, offset: 7872)
!4058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4059, size: 64)
!4059 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3934, line: 219, flags: DIFlagFwdDecl)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3933, file: !3934, line: 222, baseType: !28, size: 32, offset: 7936)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3933, file: !3934, line: 223, baseType: !4062, size: 64, offset: 8000)
!4062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4063, size: 64)
!4063 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3934, line: 223, flags: DIFlagFwdDecl)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3933, file: !3934, line: 230, baseType: !880, size: 8, offset: 8064)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3933, file: !3934, line: 231, baseType: !393, size: 16, offset: 8080)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3933, file: !3934, line: 232, baseType: !393, size: 16, offset: 8096)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3933, file: !3934, line: 234, baseType: !1395, size: 64, offset: 8128)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3933, file: !3934, line: 237, baseType: !288, size: 256, offset: 8192)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3933, file: !3934, line: 243, baseType: !822, size: 320, offset: 8448)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !3532, file: !1733, line: 1111, baseType: !4071, size: 64, offset: 15424)
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4072, size: 64)
!4072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3934, line: 20, size: 16640, elements: !4073)
!4073 = !{!4074, !4075, !4076, !4077}
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !4072, file: !3934, line: 21, baseType: !96, size: 32)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4072, file: !3934, line: 22, baseType: !373, size: 32, offset: 32)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !4072, file: !3934, line: 23, baseType: !91, size: 192, offset: 64)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !4072, file: !3934, line: 24, baseType: !4078, size: 16384, offset: 256)
!4078 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4079, size: 16384, elements: !622)
!4079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !3945, line: 51, size: 256, elements: !4080)
!4080 = !{!4081}
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !4079, file: !3945, line: 52, baseType: !4082, size: 256)
!4082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !3945, line: 37, size: 256, elements: !4083)
!4083 = !{!4084, !4091, !4092, !4096}
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !4082, file: !3945, line: 39, baseType: !4085, size: 64)
!4085 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !4086, line: 83, baseType: !4087)
!4086 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!4087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4088, size: 64)
!4088 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !4086, line: 82, baseType: !4089)
!4089 = !DISubroutineType(types: !4090)
!4090 = !{null, !59}
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !4082, file: !3945, line: 40, baseType: !76, size: 64, offset: 64)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !4082, file: !3945, line: 46, baseType: !4093, size: 64, offset: 128)
!4093 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !4086, line: 86, baseType: !4094)
!4094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4095, size: 64)
!4095 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !4086, line: 85, baseType: !2295)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !4082, file: !3945, line: 48, baseType: !3949, size: 64, offset: 192)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3532, file: !1733, line: 1112, baseType: !3949, size: 64, offset: 15488)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !3532, file: !1733, line: 1113, baseType: !3949, size: 64, offset: 15552)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !3532, file: !1733, line: 1115, baseType: !3949, size: 64, offset: 15616)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !3532, file: !1733, line: 1116, baseType: !3944, size: 192, offset: 15680)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !3532, file: !1733, line: 1117, baseType: !76, size: 64, offset: 15872)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !3532, file: !1733, line: 1118, baseType: !72, size: 64, offset: 15936)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !3532, file: !1733, line: 1119, baseType: !28, size: 32, offset: 16000)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !3532, file: !1733, line: 1121, baseType: !382, size: 64, offset: 16064)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !3532, file: !1733, line: 1125, baseType: !4106, size: 64, offset: 16128)
!4106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4107, size: 64)
!4107 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1733, line: 43, flags: DIFlagFwdDecl)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !3532, file: !1733, line: 1127, baseType: !351, size: 32, offset: 16192)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !3532, file: !1733, line: 1128, baseType: !28, size: 32, offset: 16224)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !3532, file: !1733, line: 1130, baseType: !4111, size: 128, offset: 16256)
!4111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !4112, line: 37, size: 128, elements: !4113)
!4112 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!4113 = !{!4114, !4115, !4116}
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4111, file: !4112, line: 38, baseType: !59, size: 32)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !4111, file: !4112, line: 39, baseType: !86, size: 32, offset: 32)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4111, file: !4112, line: 40, baseType: !4117, size: 64, offset: 64)
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4118, size: 64)
!4118 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !4112, line: 24, flags: DIFlagFwdDecl)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !3532, file: !1733, line: 1131, baseType: !4120, size: 256, offset: 16384)
!4120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !4121, line: 12, size: 256, elements: !4122)
!4121 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!4122 = !{!4123, !4124, !4125, !4126}
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !4120, file: !4121, line: 13, baseType: !518, size: 64)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4120, file: !4121, line: 14, baseType: !76, size: 64, offset: 64)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4120, file: !4121, line: 15, baseType: !76, size: 64, offset: 128)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !4120, file: !4121, line: 16, baseType: !880, size: 8, offset: 192)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !3532, file: !1733, line: 1134, baseType: !450, size: 64, offset: 16640)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !3532, file: !1733, line: 1135, baseType: !450, size: 64, offset: 16704)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !3532, file: !1733, line: 1138, baseType: !96, size: 32, offset: 16768)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !3532, file: !1733, line: 1141, baseType: !301, size: 32, offset: 16800)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !3532, file: !1733, line: 1143, baseType: !4132, size: 64, offset: 16832)
!4132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1733, line: 735, size: 64, elements: !4133)
!4133 = !{!4134}
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4132, file: !1733, line: 736, baseType: !4135, size: 64)
!4135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4132, size: 64)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !3532, file: !1733, line: 1147, baseType: !3118, size: 128, offset: 16896)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !3532, file: !1733, line: 1149, baseType: !3531, size: 64, offset: 17024)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !3532, file: !1733, line: 1151, baseType: !4139, size: 64, offset: 17088)
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4140, size: 64)
!4140 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1733, line: 1151, flags: DIFlagFwdDecl)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !3532, file: !1733, line: 1188, baseType: !57, size: 64, offset: 17152)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !3532, file: !1733, line: 1191, baseType: !4143, size: 64, offset: 17216)
!4143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !3532, file: !1733, line: 1194, baseType: !4145, size: 64, offset: 17280)
!4145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4146, size: 64)
!4146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !185, line: 976, size: 320, elements: !4147)
!4147 = !{!4148, !4149, !4150, !4151, !4152, !4153, !4154}
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "mq_list", scope: !4146, file: !185, line: 977, baseType: !1345, size: 64)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "cached_rq", scope: !4146, file: !185, line: 980, baseType: !1345, size: 64, offset: 64)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ios", scope: !4146, file: !185, line: 981, baseType: !63, size: 16, offset: 128)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "rq_count", scope: !4146, file: !185, line: 983, baseType: !63, size: 16, offset: 144)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "multiple_queues", scope: !4146, file: !185, line: 985, baseType: !880, size: 8, offset: 160)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "has_elevator", scope: !4146, file: !185, line: 986, baseType: !880, size: 8, offset: 168)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !4146, file: !185, line: 988, baseType: !134, size: 128, offset: 192)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !3532, file: !1733, line: 1197, baseType: !4156, size: 64, offset: 17344)
!4156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4157, size: 64)
!4157 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1733, line: 61, flags: DIFlagFwdDecl)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !3532, file: !1733, line: 1199, baseType: !4159, size: 64, offset: 17408)
!4159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4160, size: 64)
!4160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !4161, line: 99, size: 128, elements: !4162)
!4161 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!4162 = !{!4163, !4164, !4165}
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4160, file: !4161, line: 100, baseType: !292, size: 64)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !4160, file: !4161, line: 101, baseType: !86, size: 32, offset: 64)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !4160, file: !4161, line: 103, baseType: !63, size: 16, offset: 96)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !3532, file: !1733, line: 1202, baseType: !4167, size: 64, offset: 17472)
!4167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4168, size: 64)
!4168 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1733, line: 48, flags: DIFlagFwdDecl)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !3532, file: !1733, line: 1205, baseType: !76, size: 64, offset: 17536)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !3532, file: !1733, line: 1206, baseType: !4171, size: 64, offset: 17600)
!4171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4172, size: 64)
!4172 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !3945, line: 14, baseType: !4173)
!4173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !3945, line: 12, size: 384, elements: !4174)
!4174 = !{!4175}
!4175 = !DIDerivedType(tag: DW_TAG_member, scope: !4173, file: !3945, line: 13, baseType: !4176, size: 384)
!4176 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4173, file: !3945, line: 13, size: 384, elements: !4177)
!4177 = !{!4178, !4179, !4180, !4181}
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !4176, file: !3945, line: 13, baseType: !59, size: 32)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !4176, file: !3945, line: 13, baseType: !59, size: 32, offset: 32)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !4176, file: !3945, line: 13, baseType: !59, size: 32, offset: 64)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !4176, file: !3945, line: 13, baseType: !4182, size: 256, offset: 128)
!4182 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !4183, line: 37, size: 256, elements: !4184)
!4183 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!4184 = !{!4185, !4190, !4203, !4209, !4218, !4245, !4250}
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !4182, file: !4183, line: 42, baseType: !4186, size: 64)
!4186 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4182, file: !4183, line: 39, size: 64, elements: !4187)
!4187 = !{!4188, !4189}
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4186, file: !4183, line: 40, baseType: !3821, size: 32)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4186, file: !4183, line: 41, baseType: !357, size: 32, offset: 32)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !4182, file: !4183, line: 50, baseType: !4191, size: 192)
!4191 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4182, file: !4183, line: 45, size: 192, elements: !4192)
!4192 = !{!4193, !4195, !4196, !4202}
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !4191, file: !4183, line: 46, baseType: !4194, size: 32)
!4194 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !74, line: 95, baseType: !59)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !4191, file: !4183, line: 47, baseType: !59, size: 32, offset: 32)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4191, file: !4183, line: 48, baseType: !4197, size: 64, offset: 64)
!4197 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !4183, line: 11, baseType: !4198)
!4198 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !4183, line: 8, size: 64, elements: !4199)
!4199 = !{!4200, !4201}
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !4198, file: !4183, line: 9, baseType: !59, size: 32)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !4198, file: !4183, line: 10, baseType: !57, size: 64)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !4191, file: !4183, line: 49, baseType: !59, size: 32, offset: 128)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !4182, file: !4183, line: 57, baseType: !4204, size: 128)
!4204 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4182, file: !4183, line: 53, size: 128, elements: !4205)
!4205 = !{!4206, !4207, !4208}
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4204, file: !4183, line: 54, baseType: !3821, size: 32)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4204, file: !4183, line: 55, baseType: !357, size: 32, offset: 32)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4204, file: !4183, line: 56, baseType: !4197, size: 64, offset: 64)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !4182, file: !4183, line: 66, baseType: !4210, size: 256)
!4210 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4182, file: !4183, line: 60, size: 256, elements: !4211)
!4211 = !{!4212, !4213, !4214, !4215, !4217}
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4210, file: !4183, line: 61, baseType: !3821, size: 32)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4210, file: !4183, line: 62, baseType: !357, size: 32, offset: 32)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !4210, file: !4183, line: 63, baseType: !59, size: 32, offset: 64)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !4210, file: !4183, line: 64, baseType: !4216, size: 64, offset: 128)
!4216 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !74, line: 94, baseType: !651)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !4210, file: !4183, line: 65, baseType: !4216, size: 64, offset: 192)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !4182, file: !4183, line: 105, baseType: !4219, size: 256)
!4219 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4182, file: !4183, line: 69, size: 256, elements: !4220)
!4220 = !{!4221, !4222}
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !4219, file: !4183, line: 70, baseType: !57, size: 64)
!4222 = !DIDerivedType(tag: DW_TAG_member, scope: !4219, file: !4183, line: 79, baseType: !4223, size: 192, offset: 64)
!4223 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4219, file: !4183, line: 79, size: 192, elements: !4224)
!4224 = !{!4225, !4226, !4227, !4234, !4239}
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !4223, file: !4183, line: 81, baseType: !59, size: 32)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !4223, file: !4183, line: 86, baseType: !393, size: 16)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !4223, file: !4183, line: 92, baseType: !4228, size: 192)
!4228 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4223, file: !4183, line: 88, size: 192, elements: !4229)
!4229 = !{!4230, !4232, !4233}
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !4228, file: !4183, line: 89, baseType: !4231, size: 64)
!4231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !3102)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !4228, file: !4183, line: 90, baseType: !57, size: 64, offset: 64)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !4228, file: !4183, line: 91, baseType: !57, size: 64, offset: 128)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !4223, file: !4183, line: 97, baseType: !4235, size: 96)
!4235 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4223, file: !4183, line: 94, size: 96, elements: !4236)
!4236 = !{!4237, !4238}
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !4235, file: !4183, line: 95, baseType: !4231, size: 64)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !4235, file: !4183, line: 96, baseType: !447, size: 32, offset: 64)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !4223, file: !4183, line: 103, baseType: !4240, size: 128)
!4240 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4223, file: !4183, line: 99, size: 128, elements: !4241)
!4241 = !{!4242, !4243, !4244}
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !4240, file: !4183, line: 100, baseType: !76, size: 64)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !4240, file: !4183, line: 101, baseType: !447, size: 32, offset: 64)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4240, file: !4183, line: 102, baseType: !447, size: 32, offset: 96)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !4182, file: !4183, line: 111, baseType: !4246, size: 128)
!4246 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4182, file: !4183, line: 108, size: 128, elements: !4247)
!4247 = !{!4248, !4249}
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !4246, file: !4183, line: 109, baseType: !652, size: 64)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !4246, file: !4183, line: 110, baseType: !59, size: 32, offset: 64)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !4182, file: !4183, line: 118, baseType: !4251, size: 128)
!4251 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4182, file: !4183, line: 114, size: 128, elements: !4252)
!4252 = !{!4253, !4254, !4255}
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !4251, file: !4183, line: 115, baseType: !57, size: 64)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !4251, file: !4183, line: 116, baseType: !59, size: 32, offset: 64)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !4251, file: !4183, line: 117, baseType: !28, size: 32, offset: 96)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3532, file: !1733, line: 1208, baseType: !4029, size: 448, offset: 17664)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !3532, file: !1733, line: 1215, baseType: !450, size: 64, offset: 18112)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !3532, file: !1733, line: 1217, baseType: !450, size: 64, offset: 18176)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !3532, file: !1733, line: 1219, baseType: !450, size: 64, offset: 18240)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !3532, file: !1733, line: 1223, baseType: !4261, size: 64, offset: 18304)
!4261 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !4262, line: 99, baseType: !4263)
!4262 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!4263 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4262, line: 99, size: 64, elements: !4264)
!4264 = !{!4265}
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !4263, file: !4262, line: 99, baseType: !3298, size: 64)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !3532, file: !1733, line: 1225, baseType: !418, size: 32, offset: 18368)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !3532, file: !1733, line: 1226, baseType: !59, size: 32, offset: 18400)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !3532, file: !1733, line: 1227, baseType: !59, size: 32, offset: 18432)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !3532, file: !1733, line: 1231, baseType: !4270, size: 64, offset: 18496)
!4270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4271, size: 64)
!4271 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1733, line: 1231, flags: DIFlagFwdDecl)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !3532, file: !1733, line: 1233, baseType: !134, size: 128, offset: 18560)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !3532, file: !1733, line: 1240, baseType: !4274, size: 64, offset: 18688)
!4274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4275, size: 64)
!4275 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1733, line: 62, flags: DIFlagFwdDecl)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !3532, file: !1733, line: 1242, baseType: !4277, size: 64, offset: 18752)
!4277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4278, size: 64)
!4278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !4279, line: 392, size: 96, elements: !4280)
!4279 = !DIFile(filename: "./include/linux/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb3431a0ca9e11a8015b961c002b640")
!4280 = !{!4281, !4287, !4289}
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4278, file: !4279, line: 393, baseType: !4282, size: 32)
!4282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list", file: !4279, line: 388, size: 32, elements: !4283)
!4283 = !{!4284}
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4282, file: !4279, line: 389, baseType: !4285, size: 32)
!4285 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_uptr_t", file: !4286, line: 46, baseType: !446)
!4286 = !DIFile(filename: "./include/asm-generic/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "789dd20e6944b4211a8be38fb9d0b245")
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "futex_offset", scope: !4278, file: !4279, line: 394, baseType: !4288, size: 32, offset: 32)
!4288 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_long_t", file: !4286, line: 42, baseType: !807)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "list_op_pending", scope: !4278, file: !4279, line: 395, baseType: !4285, size: 32, offset: 64)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !3532, file: !1733, line: 1244, baseType: !134, size: 128, offset: 18816)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !3532, file: !1733, line: 1245, baseType: !4292, size: 64, offset: 18944)
!4292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4293, size: 64)
!4293 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1733, line: 51, flags: DIFlagFwdDecl)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !3532, file: !1733, line: 1246, baseType: !288, size: 256, offset: 19008)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !3532, file: !1733, line: 1247, baseType: !28, size: 32, offset: 19264)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !3532, file: !1733, line: 1250, baseType: !4297, size: 64, offset: 19328)
!4297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4298, size: 64)
!4298 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1733, line: 57, flags: DIFlagFwdDecl)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !3532, file: !1733, line: 1251, baseType: !288, size: 256, offset: 19392)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !3532, file: !1733, line: 1252, baseType: !134, size: 128, offset: 19648)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !3532, file: !1733, line: 1259, baseType: !1679, size: 64, offset: 19776)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !3532, file: !1733, line: 1260, baseType: !393, size: 16, offset: 19840)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !3532, file: !1733, line: 1261, baseType: !393, size: 16, offset: 19856)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !3532, file: !1733, line: 1314, baseType: !4305, size: 64, offset: 19904)
!4305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4306, size: 64)
!4306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !4307, line: 62, size: 256, align: 256, elements: !4308)
!4307 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!4308 = !{!4309, !4310, !4311, !4312, !4313, !4314, !4315}
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !4306, file: !4307, line: 75, baseType: !447, size: 32)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !4306, file: !4307, line: 90, baseType: !447, size: 32, offset: 32)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !4306, file: !4307, line: 112, baseType: !451, size: 64, offset: 64)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4306, file: !4307, line: 132, baseType: !447, size: 32, offset: 128)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4306, file: !4307, line: 140, baseType: !447, size: 32, offset: 160)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !4306, file: !4307, line: 149, baseType: !447, size: 32, offset: 192)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4306, file: !4307, line: 154, baseType: !4316, offset: 224)
!4316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !400)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !3532, file: !1733, line: 1315, baseType: !446, size: 32, offset: 19968)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !3532, file: !1733, line: 1316, baseType: !446, size: 32, offset: 20000)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !3532, file: !1733, line: 1321, baseType: !76, size: 64, offset: 20032)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3532, file: !1733, line: 1325, baseType: !59, size: 32, offset: 20096)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !3532, file: !1733, line: 1326, baseType: !59, size: 32, offset: 20128)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !3532, file: !1733, line: 1327, baseType: !59, size: 32, offset: 20160)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !3532, file: !1733, line: 1328, baseType: !59, size: 32, offset: 20192)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !3532, file: !1733, line: 1329, baseType: !379, size: 128, align: 64, offset: 20224)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !3532, file: !1733, line: 1332, baseType: !4326, size: 128, offset: 20352)
!4326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4327, line: 51, size: 128, elements: !4328)
!4327 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!4328 = !{!4329, !4334, !4335}
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4326, file: !4327, line: 60, baseType: !4330, size: 64)
!4330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4331, line: 7, size: 64, elements: !4332)
!4331 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!4332 = !{!4333}
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4330, file: !4331, line: 12, baseType: !3691, size: 64)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4326, file: !4327, line: 63, baseType: !880, size: 8, offset: 64)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4326, file: !4327, line: 70, baseType: !880, size: 8, offset: 72)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !3532, file: !1733, line: 1335, baseType: !1731, size: 64, offset: 20480)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !3532, file: !1733, line: 1337, baseType: !4338, size: 128, offset: 20544)
!4338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4327, line: 39, size: 128, elements: !4339)
!4339 = !{!4340, !4341, !4342}
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4338, file: !4327, line: 40, baseType: !319, size: 64)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4338, file: !4327, line: 42, baseType: !447, size: 32, offset: 64)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4338, file: !4327, line: 43, baseType: !447, size: 32, offset: 96)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !3532, file: !1733, line: 1340, baseType: !4344, size: 64, offset: 20672)
!4344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4345, size: 64)
!4345 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1733, line: 69, flags: DIFlagFwdDecl)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !3532, file: !1733, line: 1351, baseType: !59, size: 32, offset: 20736)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !3532, file: !1733, line: 1352, baseType: !59, size: 32, offset: 20768)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !3532, file: !1733, line: 1354, baseType: !76, size: 64, offset: 20800)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !3532, file: !1733, line: 1364, baseType: !450, size: 64, offset: 20864)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !3532, file: !1733, line: 1365, baseType: !450, size: 64, offset: 20928)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !3532, file: !1733, line: 1412, baseType: !76, size: 64, offset: 20992)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !3532, file: !1733, line: 1453, baseType: !2619, size: 64, offset: 21056)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !3532, file: !1733, line: 1457, baseType: !4354, size: 64, offset: 21120)
!4354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4355, size: 64)
!4355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !264, line: 61, size: 576, elements: !4356)
!4356 = !{!4357, !4358, !4377, !4380, !4381, !4414, !4424}
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4355, file: !264, line: 62, baseType: !263, size: 32)
!4358 = !DIDerivedType(tag: DW_TAG_member, scope: !4355, file: !264, line: 64, baseType: !4359, size: 192, offset: 64)
!4359 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4355, file: !264, line: 64, size: 192, elements: !4360)
!4360 = !{!4361, !4372}
!4361 = !DIDerivedType(tag: DW_TAG_member, scope: !4359, file: !264, line: 65, baseType: !4362, size: 192)
!4362 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4359, file: !264, line: 65, size: 192, elements: !4363)
!4363 = !{!4364, !4371}
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4362, file: !264, line: 66, baseType: !4365, size: 128)
!4365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4366, line: 50, size: 128, elements: !4367)
!4366 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4367 = !{!4368, !4369, !4370}
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4365, file: !4366, line: 52, baseType: !76, size: 64)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4365, file: !4366, line: 54, baseType: !28, size: 32, offset: 64)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4365, file: !4366, line: 55, baseType: !28, size: 32, offset: 96)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4362, file: !264, line: 67, baseType: !76, size: 64, offset: 128)
!4372 = !DIDerivedType(tag: DW_TAG_member, scope: !4359, file: !264, line: 70, baseType: !4373, size: 192)
!4373 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4359, file: !264, line: 70, size: 192, elements: !4374)
!4374 = !{!4375, !4376}
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4373, file: !264, line: 71, baseType: !379, size: 128, align: 64)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4373, file: !264, line: 72, baseType: !76, size: 64, offset: 128)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4355, file: !264, line: 76, baseType: !4378, size: 64, offset: 256)
!4378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4379, size: 64)
!4379 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !264, line: 76, flags: DIFlagFwdDecl)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4355, file: !264, line: 77, baseType: !76, size: 64, offset: 320)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4355, file: !264, line: 79, baseType: !4382, size: 64, offset: 384)
!4382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4383, size: 64)
!4383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4366, line: 25, size: 256, elements: !4384)
!4384 = !{!4385, !4391, !4395}
!4385 = !DIDerivedType(tag: DW_TAG_member, scope: !4383, file: !4366, line: 26, baseType: !4386, size: 128)
!4386 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4383, file: !4366, line: 26, size: 128, elements: !4387)
!4387 = !{!4388, !4390}
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4386, file: !4366, line: 27, baseType: !4389, size: 128)
!4389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 128, elements: !3879)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4386, file: !4366, line: 28, baseType: !4389, size: 128)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4383, file: !4366, line: 31, baseType: !4392, size: 64, offset: 128)
!4392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4393, size: 64)
!4393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4394)
!4394 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4366, line: 23, flags: DIFlagFwdDecl)
!4395 = !DIDerivedType(tag: DW_TAG_member, scope: !4383, file: !4366, line: 33, baseType: !4396, size: 64, offset: 192)
!4396 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4383, file: !4366, line: 33, size: 64, elements: !4397)
!4397 = !{!4398, !4404, !4409}
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4396, file: !4366, line: 38, baseType: !4399, size: 64)
!4399 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4396, file: !4366, line: 34, size: 64, elements: !4400)
!4400 = !{!4401, !4402, !4403}
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4399, file: !4366, line: 35, baseType: !807, size: 32)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4399, file: !4366, line: 36, baseType: !120, size: 8, offset: 32)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4399, file: !4366, line: 37, baseType: !120, size: 8, offset: 40)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4396, file: !4366, line: 42, baseType: !4405, size: 16)
!4405 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4396, file: !4366, line: 39, size: 16, elements: !4406)
!4406 = !{!4407, !4408}
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4405, file: !4366, line: 40, baseType: !120, size: 8)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4405, file: !4366, line: 41, baseType: !120, size: 8, offset: 8)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4396, file: !4366, line: 46, baseType: !4410, size: 16)
!4410 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4396, file: !4366, line: 43, size: 16, elements: !4411)
!4411 = !{!4412, !4413}
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4410, file: !4366, line: 44, baseType: !120, size: 8)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4410, file: !4366, line: 45, baseType: !120, size: 8, offset: 8)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4355, file: !264, line: 81, baseType: !4415, size: 64, offset: 448)
!4415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4416, size: 64)
!4416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !264, line: 85, size: 384, elements: !4417)
!4417 = !{!4418, !4419, !4420, !4421, !4422, !4423}
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4416, file: !264, line: 86, baseType: !4378, size: 64)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4416, file: !264, line: 87, baseType: !76, size: 64, offset: 64)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4416, file: !264, line: 88, baseType: !76, size: 64, offset: 128)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4416, file: !264, line: 89, baseType: !76, size: 64, offset: 192)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4416, file: !264, line: 90, baseType: !880, size: 8, offset: 256)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4416, file: !264, line: 92, baseType: !4415, size: 64, offset: 320)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4355, file: !264, line: 82, baseType: !28, size: 32, offset: 512)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !3532, file: !1733, line: 1463, baseType: !4426, offset: 21184)
!4426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1733, line: 739, elements: !1416)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3532, file: !1733, line: 1470, baseType: !379, size: 128, align: 64, offset: 21184)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3532, file: !1733, line: 1471, baseType: !373, size: 32, offset: 21312)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !3532, file: !1733, line: 1472, baseType: !59, size: 32, offset: 21344)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !3532, file: !1733, line: 1474, baseType: !3531, size: 64, offset: 21376)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !3532, file: !1733, line: 1475, baseType: !2190, size: 320, offset: 21440)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !3532, file: !1733, line: 1478, baseType: !4433, size: 64, offset: 21760)
!4433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4434, size: 64)
!4434 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1733, line: 1478, flags: DIFlagFwdDecl)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !3532, file: !1733, line: 1482, baseType: !373, size: 32, offset: 21824)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3532, file: !1733, line: 1489, baseType: !57, size: 64, offset: 21888)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !3532, file: !1733, line: 1504, baseType: !57, size: 64, offset: 21952)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !3532, file: !1733, line: 1505, baseType: !451, size: 64, offset: 22016)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !3532, file: !1733, line: 1506, baseType: !450, size: 64, offset: 22080)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !3532, file: !1733, line: 1507, baseType: !451, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !3532, file: !1733, line: 1508, baseType: !451, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !3532, file: !1733, line: 1509, baseType: !451, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !3532, file: !1733, line: 1510, baseType: !379, size: 128, align: 64, offset: 22208)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !3532, file: !1733, line: 1511, baseType: !59, size: 32, offset: 22336)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !3532, file: !1733, line: 1515, baseType: !4446, size: 64, offset: 22400)
!4446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !699, line: 56, size: 64, elements: !4447)
!4447 = !{!4448}
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4446, file: !699, line: 57, baseType: !702, size: 64)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !3532, file: !1733, line: 1518, baseType: !4446, size: 64, offset: 22464)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !3532, file: !1733, line: 1528, baseType: !379, size: 128, align: 64, offset: 22528)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !3532, file: !1733, line: 1552, baseType: !4452, size: 35328, offset: 23040)
!4452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4453, line: 430, size: 35328, elements: !4454)
!4453 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4454 = !{!4455, !4473, !4474, !4475, !4476, !4477, !4478, !4479, !4480, !4484, !4485, !4486, !4487, !4488, !4489, !4492, !4493, !4494, !4495}
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4452, file: !4453, line: 432, baseType: !4456, size: 192)
!4456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4457, size: 192, elements: !618)
!4457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4458, line: 16, size: 64, elements: !4459)
!4458 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4459 = !{!4460, !4461, !4462, !4463, !4464, !4465, !4466, !4467, !4468, !4469, !4470, !4471, !4472}
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4457, file: !4458, line: 17, baseType: !130, size: 16)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4457, file: !4458, line: 18, baseType: !130, size: 16, offset: 16)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4457, file: !4458, line: 19, baseType: !130, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4457, file: !4458, line: 19, baseType: !130, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4457, file: !4458, line: 19, baseType: !130, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4457, file: !4458, line: 19, baseType: !130, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4457, file: !4458, line: 19, baseType: !130, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4457, file: !4458, line: 20, baseType: !130, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4457, file: !4458, line: 20, baseType: !130, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4457, file: !4458, line: 20, baseType: !130, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4457, file: !4458, line: 20, baseType: !130, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4457, file: !4458, line: 20, baseType: !130, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4457, file: !4458, line: 20, baseType: !130, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4452, file: !4453, line: 436, baseType: !76, size: 64, offset: 192)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4452, file: !4453, line: 440, baseType: !63, size: 16, offset: 256)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4452, file: !4453, line: 441, baseType: !63, size: 16, offset: 272)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4452, file: !4453, line: 442, baseType: !63, size: 16, offset: 288)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4452, file: !4453, line: 443, baseType: !63, size: 16, offset: 304)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4452, file: !4453, line: 447, baseType: !76, size: 64, offset: 320)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4452, file: !4453, line: 448, baseType: !76, size: 64, offset: 384)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4452, file: !4453, line: 459, baseType: !4481, size: 256, offset: 448)
!4481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4482, size: 256, elements: !754)
!4482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4483, size: 64)
!4483 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4453, line: 428, flags: DIFlagFwdDecl)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4452, file: !4453, line: 461, baseType: !76, size: 64, offset: 704)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4452, file: !4453, line: 463, baseType: !76, size: 64, offset: 768)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4452, file: !4453, line: 465, baseType: !76, size: 64, offset: 832)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4452, file: !4453, line: 466, baseType: !76, size: 64, offset: 896)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4452, file: !4453, line: 467, baseType: !76, size: 64, offset: 960)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4452, file: !4453, line: 473, baseType: !4490, size: 64, offset: 1024)
!4490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4491, size: 64)
!4491 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4453, line: 10, flags: DIFlagFwdDecl)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4452, file: !4453, line: 480, baseType: !76, size: 64, offset: 1088)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4452, file: !4453, line: 482, baseType: !28, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4452, file: !4453, line: 491, baseType: !446, size: 32, offset: 1184)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4452, file: !4453, line: 501, baseType: !4496, size: 33792, offset: 1536)
!4496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4497, line: 448, size: 33792, elements: !4498)
!4497 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4498 = !{!4499, !4500, !4501, !4663, !4664, !4670, !4671}
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4496, file: !4497, line: 461, baseType: !28, size: 32)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4496, file: !4497, line: 468, baseType: !76, size: 64, offset: 64)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4496, file: !4497, line: 476, baseType: !4502, size: 64, offset: 128)
!4502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4503, size: 64)
!4503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4497, line: 356, size: 33280, align: 512, elements: !4504)
!4504 = !{!4505, !4506, !4507, !4508, !4509, !4510, !4511, !4512, !4513, !4514}
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4503, file: !4497, line: 358, baseType: !28, size: 32)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4503, file: !4497, line: 361, baseType: !28, size: 32, offset: 32)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4503, file: !4497, line: 364, baseType: !450, size: 64, offset: 64)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4503, file: !4497, line: 367, baseType: !450, size: 64, offset: 128)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4503, file: !4497, line: 370, baseType: !450, size: 64, offset: 192)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4503, file: !4497, line: 373, baseType: !28, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4503, file: !4497, line: 376, baseType: !28, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4503, file: !4497, line: 391, baseType: !28, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4503, file: !4497, line: 394, baseType: !28, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4503, file: !4497, line: 397, baseType: !4515, size: 32768, offset: 512)
!4515 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4497, line: 348, size: 32768, elements: !4516)
!4516 = !{!4517, !4532, !4569, !4646, !4659}
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4515, file: !4497, line: 349, baseType: !4518, size: 896)
!4518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4497, line: 12, size: 896, elements: !4519)
!4519 = !{!4520, !4521, !4522, !4523, !4524, !4525, !4526, !4527, !4531}
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4518, file: !4497, line: 13, baseType: !446, size: 32)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4518, file: !4497, line: 14, baseType: !446, size: 32, offset: 32)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4518, file: !4497, line: 15, baseType: !446, size: 32, offset: 64)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4518, file: !4497, line: 16, baseType: !446, size: 32, offset: 96)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4518, file: !4497, line: 17, baseType: !446, size: 32, offset: 128)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4518, file: !4497, line: 18, baseType: !446, size: 32, offset: 160)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4518, file: !4497, line: 19, baseType: !446, size: 32, offset: 192)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4518, file: !4497, line: 22, baseType: !4528, size: 640, offset: 224)
!4528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !446, size: 640, elements: !4529)
!4529 = !{!4530}
!4530 = !DISubrange(count: 20)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4518, file: !4497, line: 25, baseType: !446, size: 32, offset: 864)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4515, file: !4497, line: 350, baseType: !4533, size: 4096, align: 128)
!4533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4497, line: 34, size: 4096, align: 128, elements: !4534)
!4534 = !{!4535, !4536, !4537, !4538, !4539, !4554, !4555, !4556, !4558, !4560, !4564}
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4533, file: !4497, line: 35, baseType: !130, size: 16)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4533, file: !4497, line: 36, baseType: !130, size: 16, offset: 16)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4533, file: !4497, line: 37, baseType: !130, size: 16, offset: 32)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4533, file: !4497, line: 38, baseType: !130, size: 16, offset: 48)
!4539 = !DIDerivedType(tag: DW_TAG_member, scope: !4533, file: !4497, line: 39, baseType: !4540, size: 128, offset: 64)
!4540 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4533, file: !4497, line: 39, size: 128, elements: !4541)
!4541 = !{!4542, !4547}
!4542 = !DIDerivedType(tag: DW_TAG_member, scope: !4540, file: !4497, line: 40, baseType: !4543, size: 128)
!4543 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4540, file: !4497, line: 40, size: 128, elements: !4544)
!4544 = !{!4545, !4546}
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4543, file: !4497, line: 41, baseType: !450, size: 64)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4543, file: !4497, line: 42, baseType: !450, size: 64, offset: 64)
!4547 = !DIDerivedType(tag: DW_TAG_member, scope: !4540, file: !4497, line: 44, baseType: !4548, size: 128)
!4548 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4540, file: !4497, line: 44, size: 128, elements: !4549)
!4549 = !{!4550, !4551, !4552, !4553}
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4548, file: !4497, line: 45, baseType: !446, size: 32)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4548, file: !4497, line: 46, baseType: !446, size: 32, offset: 32)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4548, file: !4497, line: 47, baseType: !446, size: 32, offset: 64)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4548, file: !4497, line: 48, baseType: !446, size: 32, offset: 96)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4533, file: !4497, line: 51, baseType: !446, size: 32, offset: 192)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4533, file: !4497, line: 52, baseType: !446, size: 32, offset: 224)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4533, file: !4497, line: 55, baseType: !4557, size: 1024, offset: 256)
!4557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !446, size: 1024, elements: !459)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4533, file: !4497, line: 58, baseType: !4559, size: 2048, offset: 1280)
!4559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !446, size: 2048, elements: !622)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4533, file: !4497, line: 60, baseType: !4561, size: 384, offset: 3328)
!4561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !446, size: 384, elements: !4562)
!4562 = !{!4563}
!4563 = !DISubrange(count: 12)
!4564 = !DIDerivedType(tag: DW_TAG_member, scope: !4533, file: !4497, line: 62, baseType: !4565, size: 384, offset: 3712)
!4565 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4533, file: !4497, line: 62, size: 384, elements: !4566)
!4566 = !{!4567, !4568}
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4565, file: !4497, line: 63, baseType: !4561, size: 384)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4565, file: !4497, line: 64, baseType: !4561, size: 384)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4515, file: !4497, line: 351, baseType: !4570, size: 1088)
!4570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4497, line: 79, size: 1088, elements: !4571)
!4571 = !{!4572, !4573, !4574, !4575, !4576, !4577, !4578, !4579, !4580, !4581, !4582, !4583, !4584, !4585, !4586, !4645}
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4570, file: !4497, line: 80, baseType: !446, size: 32)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4570, file: !4497, line: 81, baseType: !446, size: 32, offset: 32)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4570, file: !4497, line: 82, baseType: !446, size: 32, offset: 64)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4570, file: !4497, line: 83, baseType: !446, size: 32, offset: 96)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4570, file: !4497, line: 84, baseType: !446, size: 32, offset: 128)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4570, file: !4497, line: 85, baseType: !446, size: 32, offset: 160)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4570, file: !4497, line: 86, baseType: !446, size: 32, offset: 192)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4570, file: !4497, line: 88, baseType: !4528, size: 640, offset: 224)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4570, file: !4497, line: 89, baseType: !120, size: 8, offset: 864)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4570, file: !4497, line: 90, baseType: !120, size: 8, offset: 872)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4570, file: !4497, line: 91, baseType: !120, size: 8, offset: 880)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4570, file: !4497, line: 92, baseType: !120, size: 8, offset: 888)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4570, file: !4497, line: 93, baseType: !120, size: 8, offset: 896)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4570, file: !4497, line: 94, baseType: !120, size: 8, offset: 904)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4570, file: !4497, line: 95, baseType: !4587, size: 64, offset: 960)
!4587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4588, size: 64)
!4588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4589, line: 11, size: 128, elements: !4590)
!4589 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4590 = !{!4591, !4592}
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4588, file: !4589, line: 12, baseType: !652, size: 64)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4588, file: !4589, line: 13, baseType: !4593, size: 64, offset: 64)
!4593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4594, size: 64)
!4594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4595, line: 103, size: 1344, elements: !4596)
!4595 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4596 = !{!4597, !4598, !4599, !4600, !4601, !4602, !4603, !4604, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4612, !4613, !4614, !4625, !4626, !4627}
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4594, file: !4595, line: 109, baseType: !76, size: 64)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4594, file: !4595, line: 110, baseType: !76, size: 64, offset: 64)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4594, file: !4595, line: 111, baseType: !76, size: 64, offset: 128)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4594, file: !4595, line: 112, baseType: !76, size: 64, offset: 192)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4594, file: !4595, line: 113, baseType: !76, size: 64, offset: 256)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4594, file: !4595, line: 114, baseType: !76, size: 64, offset: 320)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4594, file: !4595, line: 117, baseType: !76, size: 64, offset: 384)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4594, file: !4595, line: 118, baseType: !76, size: 64, offset: 448)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4594, file: !4595, line: 119, baseType: !76, size: 64, offset: 512)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4594, file: !4595, line: 120, baseType: !76, size: 64, offset: 576)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4594, file: !4595, line: 121, baseType: !76, size: 64, offset: 640)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4594, file: !4595, line: 122, baseType: !76, size: 64, offset: 704)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4594, file: !4595, line: 123, baseType: !76, size: 64, offset: 768)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4594, file: !4595, line: 124, baseType: !76, size: 64, offset: 832)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4594, file: !4595, line: 125, baseType: !76, size: 64, offset: 896)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4594, file: !4595, line: 139, baseType: !76, size: 64, offset: 960)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4594, file: !4595, line: 142, baseType: !76, size: 64, offset: 1024)
!4614 = !DIDerivedType(tag: DW_TAG_member, scope: !4594, file: !4595, line: 144, baseType: !4615, size: 64, offset: 1088)
!4615 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4594, file: !4595, line: 144, size: 64, elements: !4616)
!4616 = !{!4617, !4618, !4619}
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4615, file: !4595, line: 146, baseType: !130, size: 16)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4615, file: !4595, line: 148, baseType: !450, size: 64)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4615, file: !4595, line: 150, baseType: !4620, size: 64)
!4620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4595, line: 59, size: 64, elements: !4621)
!4621 = !{!4622, !4623, !4624}
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4620, file: !4595, line: 61, baseType: !450, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4620, file: !4595, line: 63, baseType: !450, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4620, file: !4595, line: 65, baseType: !450, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4594, file: !4595, line: 153, baseType: !76, size: 64, offset: 1152)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4594, file: !4595, line: 154, baseType: !76, size: 64, offset: 1216)
!4627 = !DIDerivedType(tag: DW_TAG_member, scope: !4594, file: !4595, line: 156, baseType: !4628, size: 64, offset: 1280)
!4628 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4594, file: !4595, line: 156, size: 64, elements: !4629)
!4629 = !{!4630, !4631, !4632}
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4628, file: !4595, line: 158, baseType: !130, size: 16)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4628, file: !4595, line: 160, baseType: !450, size: 64)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4628, file: !4595, line: 162, baseType: !4633, size: 64)
!4633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4595, line: 69, size: 64, elements: !4634)
!4634 = !{!4635, !4636, !4637, !4638, !4639, !4640, !4641, !4642, !4643, !4644}
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4633, file: !4595, line: 71, baseType: !450, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4633, file: !4595, line: 73, baseType: !450, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4633, file: !4595, line: 75, baseType: !450, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4633, file: !4595, line: 77, baseType: !450, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4633, file: !4595, line: 80, baseType: !450, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4633, file: !4595, line: 83, baseType: !450, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4633, file: !4595, line: 86, baseType: !450, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4633, file: !4595, line: 88, baseType: !450, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4633, file: !4595, line: 93, baseType: !450, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4633, file: !4595, line: 100, baseType: !450, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4570, file: !4497, line: 96, baseType: !446, size: 32, offset: 1024)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4515, file: !4497, line: 352, baseType: !4647, size: 4608, align: 512)
!4647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4497, line: 333, size: 4608, align: 512, elements: !4648)
!4648 = !{!4649, !4650, !4657}
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4647, file: !4497, line: 334, baseType: !4533, size: 4096, align: 128)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4647, file: !4497, line: 335, baseType: !4651, size: 512, offset: 4096)
!4651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4497, line: 312, size: 512, elements: !4652)
!4652 = !{!4653, !4654, !4655}
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4651, file: !4497, line: 313, baseType: !450, size: 64)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4651, file: !4497, line: 314, baseType: !450, size: 64, offset: 64)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4651, file: !4497, line: 315, baseType: !4656, size: 384, offset: 128)
!4656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !450, size: 384, elements: !867)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4647, file: !4497, line: 336, baseType: !4658, offset: 4608)
!4658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, elements: !400)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4515, file: !4497, line: 353, baseType: !4660, size: 32768)
!4660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 32768, elements: !4661)
!4661 = !{!4662}
!4662 = !DISubrange(count: 4096)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4496, file: !4497, line: 484, baseType: !4502, size: 64, offset: 192)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4496, file: !4497, line: 491, baseType: !4665, size: 128, offset: 256)
!4665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4497, line: 404, size: 128, elements: !4666)
!4666 = !{!4667, !4668, !4669}
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4665, file: !4497, line: 424, baseType: !450, size: 64)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4665, file: !4497, line: 432, baseType: !28, size: 32, offset: 64)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4665, file: !4497, line: 440, baseType: !28, size: 32, offset: 96)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4496, file: !4497, line: 498, baseType: !4665, size: 128, offset: 384)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4496, file: !4497, line: 508, baseType: !4503, size: 33280, align: 512, offset: 512)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3514, file: !3515, line: 16, baseType: !91, size: 192, offset: 512)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3514, file: !3515, line: 17, baseType: !86, size: 32, offset: 704)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !530, file: !174, line: 1240, baseType: !57, size: 64, offset: 6912)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !530, file: !174, line: 1243, baseType: !446, size: 32, offset: 6976)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !530, file: !174, line: 1245, baseType: !838, size: 64, offset: 7040)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !530, file: !174, line: 1246, baseType: !838, size: 64, offset: 7104)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !530, file: !174, line: 1248, baseType: !447, size: 32, offset: 7168)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !530, file: !174, line: 1249, baseType: !4680, size: 64, offset: 7232)
!4680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4681, size: 64)
!4681 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !174, line: 634, flags: DIFlagFwdDecl)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !530, file: !174, line: 1252, baseType: !2626, size: 256, offset: 7296)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !530, file: !174, line: 1253, baseType: !4684, size: 128, offset: 7552)
!4684 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4685, line: 21, baseType: !4686)
!4685 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4686 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4685, line: 19, size: 128, elements: !4687)
!4687 = !{!4688}
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4686, file: !4685, line: 20, baseType: !4689, size: 128)
!4689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 128, elements: !3879)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !530, file: !174, line: 1255, baseType: !28, size: 32, offset: 7680)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !530, file: !174, line: 1261, baseType: !288, size: 256, offset: 7744)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !530, file: !174, line: 1267, baseType: !55, size: 64, offset: 8000)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !530, file: !174, line: 1269, baseType: !475, size: 64, offset: 8064)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !530, file: !174, line: 1271, baseType: !4695, size: 448, offset: 8128)
!4695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2433, line: 63, size: 448, elements: !4696)
!4696 = !{!4697, !4702, !4703, !4704, !4705, !4706, !4707}
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4695, file: !2433, line: 64, baseType: !4698, size: 64)
!4698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4699, size: 64)
!4699 = !DISubroutineType(types: !4700)
!4700 = !{!76, !4701, !2431}
!4701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4695, size: 64)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4695, file: !2433, line: 66, baseType: !4698, size: 64, offset: 64)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4695, file: !2433, line: 69, baseType: !652, size: 64, offset: 128)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4695, file: !2433, line: 70, baseType: !59, size: 32, offset: 192)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4695, file: !2433, line: 71, baseType: !28, size: 32, offset: 224)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4695, file: !2433, line: 74, baseType: !134, size: 128, offset: 256)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4695, file: !2433, line: 85, baseType: !4708, size: 64, offset: 384)
!4708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !530, file: !174, line: 1274, baseType: !292, size: 64, offset: 8576)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !530, file: !174, line: 1280, baseType: !292, size: 64, offset: 8640)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !530, file: !174, line: 1283, baseType: !59, size: 32, offset: 8704)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !530, file: !174, line: 1286, baseType: !1784, size: 32, offset: 8736)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !530, file: !174, line: 1289, baseType: !2252, size: 64, offset: 8768)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !530, file: !174, line: 1290, baseType: !745, size: 64, offset: 8832)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !530, file: !174, line: 1297, baseType: !963, size: 64, offset: 8896)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !530, file: !174, line: 1304, baseType: !4717, size: 64, offset: 8960)
!4717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4718, line: 49, size: 64, elements: !4719)
!4718 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4719 = !{!4720}
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4717, file: !4718, line: 50, baseType: !4721, size: 64)
!4721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4722, size: 64)
!4722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4718, line: 41, size: 512, align: 512, elements: !4723)
!4723 = !{!4724, !4725, !4730}
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4722, file: !4718, line: 43, baseType: !96, size: 32)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4722, file: !4718, line: 45, baseType: !4726, size: 192, offset: 64)
!4726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4718, line: 29, size: 192, elements: !4727)
!4727 = !{!4728, !4729}
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4726, file: !4718, line: 30, baseType: !134, size: 128)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4726, file: !4718, line: 32, baseType: !652, size: 64, offset: 128)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4722, file: !4718, line: 46, baseType: !652, size: 64, offset: 256)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !530, file: !174, line: 1305, baseType: !4717, size: 64, offset: 9024)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !530, file: !174, line: 1306, baseType: !379, size: 128, align: 64, offset: 9088)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !530, file: !174, line: 1307, baseType: !1012, size: 256, offset: 9216)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !530, file: !174, line: 1309, baseType: !288, size: 256, offset: 9472)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !530, file: !174, line: 1314, baseType: !59, size: 32, offset: 9728)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !530, file: !174, line: 1317, baseType: !96, size: 32, align: 512, offset: 10240)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !530, file: !174, line: 1318, baseType: !134, size: 128, offset: 10304)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !530, file: !174, line: 1320, baseType: !96, size: 32, offset: 10432)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !530, file: !174, line: 1321, baseType: !134, size: 128, offset: 10496)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !524, file: !525, line: 73, baseType: !59, size: 32, offset: 128)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !524, file: !525, line: 74, baseType: !2603, size: 64, offset: 192)
!4742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !477, file: !414, line: 141, baseType: !4744, size: 64, offset: 704)
!4744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4745, size: 64)
!4745 = !DISubroutineType(types: !4746)
!4746 = !{!59, !2493, !880}
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !477, file: !414, line: 142, baseType: !4748, size: 64, offset: 768)
!4748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4749, size: 64)
!4749 = !DISubroutineType(types: !4750)
!4750 = !{!412, !412, !4751}
!4751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4752, size: 64)
!4752 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !346)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !413, file: !414, line: 96, baseType: !529, size: 64, offset: 832)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !413, file: !414, line: 97, baseType: !76, size: 64, offset: 896)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !413, file: !414, line: 98, baseType: !57, size: 64, offset: 960)
!4756 = !DIDerivedType(tag: DW_TAG_member, scope: !413, file: !414, line: 100, baseType: !4757, size: 128, offset: 1024)
!4757 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !413, file: !414, line: 100, size: 128, elements: !4758)
!4758 = !{!4759, !4760}
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4757, file: !414, line: 101, baseType: !134, size: 128)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4757, file: !414, line: 102, baseType: !4761, size: 64)
!4761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !413, file: !414, line: 104, baseType: !134, size: 128, offset: 1152)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !413, file: !414, line: 105, baseType: !134, size: 128, offset: 1280)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !413, file: !414, line: 113, baseType: !4765, size: 128, offset: 1408)
!4765 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !413, file: !414, line: 109, size: 128, elements: !4766)
!4766 = !{!4767, !4768, !4769}
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4765, file: !414, line: 110, baseType: !749, size: 128)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4765, file: !414, line: 111, baseType: !428, size: 128)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4765, file: !414, line: 112, baseType: !379, size: 128, align: 64)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !406, file: !174, line: 1968, baseType: !4771, size: 64, offset: 64)
!4771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4772, size: 64)
!4772 = !DISubroutineType(types: !4773)
!4773 = !{!55, !412, !345, !4774}
!4774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4775, size: 64)
!4775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4776, line: 10, size: 128, elements: !4777)
!4776 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4777 = !{!4778, !4779}
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4775, file: !4776, line: 11, baseType: !1824, size: 64)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4775, file: !4776, line: 12, baseType: !57, size: 64, offset: 64)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !406, file: !174, line: 1969, baseType: !4781, size: 64, offset: 128)
!4781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4782, size: 64)
!4782 = !DISubroutineType(types: !4783)
!4783 = !{!59, !2603, !345, !59}
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !406, file: !174, line: 1970, baseType: !4785, size: 64, offset: 192)
!4785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4786, size: 64)
!4786 = !DISubroutineType(types: !4787)
!4787 = !{!368, !345, !59, !880}
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !406, file: !174, line: 1972, baseType: !4789, size: 64, offset: 256)
!4789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4790, size: 64)
!4790 = !DISubroutineType(types: !4791)
!4791 = !{!59, !412, !518, !59}
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !406, file: !174, line: 1974, baseType: !4793, size: 64, offset: 320)
!4793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4794, size: 64)
!4794 = !DISubroutineType(types: !4795)
!4795 = !{!59, !2603, !345, !412, !61, !880}
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !406, file: !174, line: 1976, baseType: !4797, size: 64, offset: 384)
!4797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4798, size: 64)
!4798 = !DISubroutineType(types: !4799)
!4799 = !{!59, !412, !345, !412}
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !406, file: !174, line: 1977, baseType: !4801, size: 64, offset: 448)
!4801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4802, size: 64)
!4802 = !DISubroutineType(types: !4803)
!4803 = !{!59, !345, !412}
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !406, file: !174, line: 1978, baseType: !4805, size: 64, offset: 512)
!4805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4806, size: 64)
!4806 = !DISubroutineType(types: !4807)
!4807 = !{!59, !2603, !345, !412, !55}
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !406, file: !174, line: 1980, baseType: !4809, size: 64, offset: 576)
!4809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4810, size: 64)
!4810 = !DISubroutineType(types: !4811)
!4811 = !{!59, !2603, !345, !412, !61}
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !406, file: !174, line: 1982, baseType: !4801, size: 64, offset: 640)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !406, file: !174, line: 1983, baseType: !4814, size: 64, offset: 704)
!4814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4815, size: 64)
!4815 = !DISubroutineType(types: !4816)
!4816 = !{!59, !2603, !345, !412, !61, !534}
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !406, file: !174, line: 1985, baseType: !4818, size: 64, offset: 768)
!4818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4819, size: 64)
!4819 = !DISubroutineType(types: !4820)
!4820 = !{!59, !2603, !345, !412, !345, !412, !28}
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !406, file: !174, line: 1987, baseType: !4822, size: 64, offset: 832)
!4822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4823, size: 64)
!4823 = !DISubroutineType(types: !4824)
!4824 = !{!59, !2603, !412, !4825}
!4825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4826, size: 64)
!4826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !174, line: 226, size: 640, elements: !4827)
!4827 = !{!4828, !4829, !4830, !4840, !4849, !4850, !4855, !4856, !4857}
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4826, file: !174, line: 227, baseType: !28, size: 32)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4826, file: !174, line: 228, baseType: !61, size: 16, offset: 32)
!4830 = !DIDerivedType(tag: DW_TAG_member, scope: !4826, file: !174, line: 241, baseType: !4831, size: 32, offset: 64)
!4831 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4826, file: !174, line: 241, size: 32, elements: !4832)
!4832 = !{!4833, !4834}
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !4831, file: !174, line: 242, baseType: !351, size: 32)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !4831, file: !174, line: 243, baseType: !4835, size: 32)
!4835 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !4836, line: 16, baseType: !4837)
!4836 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!4837 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4836, line: 14, size: 32, elements: !4838)
!4838 = !{!4839}
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4837, file: !4836, line: 15, baseType: !356, size: 32)
!4840 = !DIDerivedType(tag: DW_TAG_member, scope: !4826, file: !174, line: 245, baseType: !4841, size: 32, offset: 96)
!4841 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4826, file: !174, line: 245, size: 32, elements: !4842)
!4842 = !{!4843, !4844}
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4841, file: !174, line: 246, baseType: !360, size: 32)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !4841, file: !174, line: 247, baseType: !4845, size: 32)
!4845 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !4836, line: 20, baseType: !4846)
!4846 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4836, line: 18, size: 32, elements: !4847)
!4847 = !{!4848}
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4846, file: !4836, line: 19, baseType: !364, size: 32)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4826, file: !174, line: 249, baseType: !78, size: 64, offset: 128)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4826, file: !174, line: 250, baseType: !4851, size: 128, offset: 192)
!4851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !839, line: 13, size: 128, elements: !4852)
!4852 = !{!4853, !4854}
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4851, file: !839, line: 14, baseType: !838, size: 64)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4851, file: !839, line: 15, baseType: !652, size: 64, offset: 64)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4826, file: !174, line: 251, baseType: !4851, size: 128, offset: 320)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4826, file: !174, line: 252, baseType: !4851, size: 128, offset: 448)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4826, file: !174, line: 259, baseType: !691, size: 64, offset: 576)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !406, file: !174, line: 1988, baseType: !4859, size: 64, offset: 896)
!4859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4860, size: 64)
!4860 = !DISubroutineType(types: !4861)
!4861 = !{!59, !2603, !2493, !4862, !446, !28}
!4862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4863, size: 64)
!4863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4864, line: 22, size: 1280, elements: !4865)
!4864 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4865 = !{!4866, !4867, !4868, !4869, !4870, !4871, !4872, !4873, !4874, !4875, !4876, !4877, !4878, !4879, !4880, !4881, !4882, !4883, !4884, !4885, !4886}
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4863, file: !4864, line: 23, baseType: !446, size: 32)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4863, file: !4864, line: 24, baseType: !61, size: 16, offset: 32)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4863, file: !4864, line: 25, baseType: !28, size: 32, offset: 64)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4863, file: !4864, line: 26, baseType: !846, size: 32, offset: 96)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4863, file: !4864, line: 27, baseType: !450, size: 64, offset: 128)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4863, file: !4864, line: 28, baseType: !450, size: 64, offset: 192)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4863, file: !4864, line: 41, baseType: !450, size: 64, offset: 256)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4863, file: !4864, line: 42, baseType: !534, size: 32, offset: 320)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4863, file: !4864, line: 43, baseType: !534, size: 32, offset: 352)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4863, file: !4864, line: 44, baseType: !351, size: 32, offset: 384)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4863, file: !4864, line: 45, baseType: !360, size: 32, offset: 416)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4863, file: !4864, line: 46, baseType: !78, size: 64, offset: 448)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4863, file: !4864, line: 47, baseType: !4851, size: 128, offset: 512)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4863, file: !4864, line: 48, baseType: !4851, size: 128, offset: 640)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4863, file: !4864, line: 49, baseType: !4851, size: 128, offset: 768)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4863, file: !4864, line: 50, baseType: !4851, size: 128, offset: 896)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4863, file: !4864, line: 51, baseType: !450, size: 64, offset: 1024)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4863, file: !4864, line: 52, baseType: !450, size: 64, offset: 1088)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4863, file: !4864, line: 53, baseType: !446, size: 32, offset: 1152)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4863, file: !4864, line: 54, baseType: !446, size: 32, offset: 1184)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4863, file: !4864, line: 55, baseType: !450, size: 64, offset: 1216)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !406, file: !174, line: 1990, baseType: !4888, size: 64, offset: 960)
!4888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4889, size: 64)
!4889 = !DISubroutineType(types: !4890)
!4890 = !{!649, !412, !518, !72}
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !406, file: !174, line: 1991, baseType: !4892, size: 64, offset: 1024)
!4892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4893, size: 64)
!4893 = !DISubroutineType(types: !4894)
!4894 = !{!59, !345, !4895, !450, !450}
!4895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4896, size: 64)
!4896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !4897, line: 8, size: 192, elements: !4898)
!4897 = !DIFile(filename: "./include/linux/fiemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3549901db5ed482defb65607c38335f0")
!4898 = !{!4899, !4900, !4901, !4902}
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "fi_flags", scope: !4896, file: !4897, line: 9, baseType: !28, size: 32)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "fi_extents_mapped", scope: !4896, file: !4897, line: 10, baseType: !28, size: 32, offset: 32)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "fi_extents_max", scope: !4896, file: !4897, line: 11, baseType: !28, size: 32, offset: 64)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "fi_extents_start", scope: !4896, file: !4897, line: 12, baseType: !4903, size: 64, offset: 128)
!4903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4904, size: 64)
!4904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent", file: !4905, line: 17, size: 448, elements: !4906)
!4905 = !DIFile(filename: "./include/uapi/linux/fiemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f949abda36490fd9e5a2006af40ce33c")
!4906 = !{!4907, !4908, !4909, !4910, !4912, !4913}
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "fe_logical", scope: !4904, file: !4905, line: 18, baseType: !451, size: 64)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "fe_physical", scope: !4904, file: !4905, line: 20, baseType: !451, size: 64, offset: 64)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "fe_length", scope: !4904, file: !4905, line: 22, baseType: !451, size: 64, offset: 128)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "fe_reserved64", scope: !4904, file: !4905, line: 23, baseType: !4911, size: 128, offset: 192)
!4911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !451, size: 128, elements: !2081)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "fe_flags", scope: !4904, file: !4905, line: 24, baseType: !447, size: 32, offset: 320)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "fe_reserved", scope: !4904, file: !4905, line: 25, baseType: !4914, size: 96, offset: 352)
!4914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !447, size: 96, elements: !618)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !406, file: !174, line: 1993, baseType: !4916, size: 64, offset: 1088)
!4916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4917, size: 64)
!4917 = !DISubroutineType(types: !4918)
!4918 = !{!59, !345, !59}
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !406, file: !174, line: 1994, baseType: !4920, size: 64, offset: 1152)
!4920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4921, size: 64)
!4921 = !DISubroutineType(types: !4922)
!4922 = !{!59, !345, !412, !691, !28, !61}
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !406, file: !174, line: 1997, baseType: !4924, size: 64, offset: 1216)
!4924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4925, size: 64)
!4925 = !DISubroutineType(types: !4926)
!4926 = !{!59, !2603, !345, !691, !61}
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !406, file: !174, line: 1999, baseType: !4928, size: 64, offset: 1280)
!4928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4929, size: 64)
!4929 = !DISubroutineType(types: !4930)
!4930 = !{!368, !2603, !412, !59}
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !406, file: !174, line: 2001, baseType: !4932, size: 64, offset: 1344)
!4932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4933, size: 64)
!4933 = !DISubroutineType(types: !4934)
!4934 = !{!59, !2603, !412, !368, !59}
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !406, file: !174, line: 2003, baseType: !4936, size: 64, offset: 1408)
!4936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4937, size: 64)
!4937 = !DISubroutineType(types: !4938)
!4938 = !{!59, !2603, !412, !4939}
!4939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4940, size: 64)
!4940 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !174, line: 76, flags: DIFlagFwdDecl)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !406, file: !174, line: 2005, baseType: !4942, size: 64, offset: 1472)
!4942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4943, size: 64)
!4943 = !DISubroutineType(types: !4944)
!4944 = !{!59, !412, !4939}
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !406, file: !174, line: 2006, baseType: !4946, size: 64, offset: 1536)
!4946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4947, size: 64)
!4947 = !DISubroutineType(types: !4948)
!4948 = !{!4949, !345}
!4949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4950, size: 64)
!4950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !174, line: 3192, size: 192, elements: !4951)
!4951 = !{!4952, !4953}
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4950, file: !174, line: 3193, baseType: !1322, size: 128)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4950, file: !174, line: 3194, baseType: !446, size: 32, offset: 128)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !346, file: !174, line: 655, baseType: !529, size: 64, offset: 448)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !346, file: !174, line: 656, baseType: !341, size: 64, offset: 512)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !346, file: !174, line: 659, baseType: !57, size: 64, offset: 576)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !346, file: !174, line: 663, baseType: !76, size: 64, offset: 640)
!4958 = !DIDerivedType(tag: DW_TAG_member, scope: !346, file: !174, line: 671, baseType: !4959, size: 32, offset: 704)
!4959 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !346, file: !174, line: 671, size: 32, elements: !4960)
!4960 = !{!4961, !4963}
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4959, file: !174, line: 672, baseType: !4962, size: 32)
!4962 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4959, file: !174, line: 673, baseType: !28, size: 32)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !346, file: !174, line: 675, baseType: !534, size: 32, offset: 736)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !346, file: !174, line: 676, baseType: !78, size: 64, offset: 768)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !346, file: !174, line: 677, baseType: !4851, size: 128, offset: 832)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !346, file: !174, line: 678, baseType: !4851, size: 128, offset: 960)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !346, file: !174, line: 679, baseType: !4851, size: 128, offset: 1088)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !346, file: !174, line: 680, baseType: !96, size: 32, offset: 1216)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !346, file: !174, line: 681, baseType: !63, size: 16, offset: 1248)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !346, file: !174, line: 682, baseType: !120, size: 8, offset: 1264)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !346, file: !174, line: 683, baseType: !120, size: 8, offset: 1272)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !346, file: !174, line: 684, baseType: !2566, size: 64, offset: 1280)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !346, file: !174, line: 691, baseType: !76, size: 64, offset: 1344)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !346, file: !174, line: 692, baseType: !822, size: 320, offset: 1408)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !346, file: !174, line: 694, baseType: !76, size: 64, offset: 1728)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !346, file: !174, line: 695, baseType: !76, size: 64, offset: 1792)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !346, file: !174, line: 697, baseType: !749, size: 128, offset: 1856)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !346, file: !174, line: 698, baseType: !134, size: 128, offset: 1984)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !346, file: !174, line: 707, baseType: !134, size: 128, offset: 2112)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !346, file: !174, line: 708, baseType: !134, size: 128, offset: 2240)
!4982 = !DIDerivedType(tag: DW_TAG_member, scope: !346, file: !174, line: 709, baseType: !4983, size: 128, offset: 2368)
!4983 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !346, file: !174, line: 709, size: 128, elements: !4984)
!4984 = !{!4985, !4986}
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4983, file: !174, line: 710, baseType: !745, size: 64)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4983, file: !174, line: 711, baseType: !379, size: 128, align: 64)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !346, file: !174, line: 713, baseType: !294, size: 64, offset: 2496)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !346, file: !174, line: 714, baseType: !294, size: 64, offset: 2560)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !346, file: !174, line: 715, baseType: !86, size: 32, offset: 2624)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !346, file: !174, line: 716, baseType: !86, size: 32, offset: 2656)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !346, file: !174, line: 717, baseType: !86, size: 32, offset: 2688)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !346, file: !174, line: 719, baseType: !86, size: 32, offset: 2720)
!4993 = !DIDerivedType(tag: DW_TAG_member, scope: !346, file: !174, line: 721, baseType: !4994, size: 64, offset: 2752)
!4994 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !346, file: !174, line: 721, size: 64, elements: !4995)
!4995 = !{!4996, !4997}
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4994, file: !174, line: 722, baseType: !1146, size: 64)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4994, file: !174, line: 723, baseType: !2320, size: 64)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !346, file: !174, line: 725, baseType: !4999, size: 64, offset: 2816)
!4999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5000, size: 64)
!5000 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !174, line: 725, flags: DIFlagFwdDecl)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !346, file: !174, line: 726, baseType: !342, size: 1536, align: 64, offset: 2880)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !346, file: !174, line: 727, baseType: !134, size: 128, offset: 4416)
!5003 = !DIDerivedType(tag: DW_TAG_member, scope: !346, file: !174, line: 728, baseType: !5004, size: 64, offset: 4544)
!5004 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !346, file: !174, line: 728, size: 64, elements: !5005)
!5005 = !{!5006, !5007, !5010, !5011}
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !5004, file: !174, line: 729, baseType: !1731, size: 64)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !5004, file: !174, line: 730, baseType: !5008, size: 64)
!5008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5009, size: 64)
!5009 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !174, line: 730, flags: DIFlagFwdDecl)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !5004, file: !174, line: 731, baseType: !518, size: 64)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !5004, file: !174, line: 732, baseType: !28, size: 32)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !346, file: !174, line: 735, baseType: !447, size: 32, offset: 4608)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !346, file: !174, line: 738, baseType: !447, size: 32, offset: 4640)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !346, file: !174, line: 739, baseType: !4680, size: 64, offset: 4672)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !346, file: !174, line: 750, baseType: !57, size: 64, offset: 4736)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !342, file: !174, line: 474, baseType: !1322, size: 128, offset: 64)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !342, file: !174, line: 475, baseType: !822, size: 320, offset: 192)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !342, file: !174, line: 476, baseType: !1327, size: 32, offset: 512)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !342, file: !174, line: 477, baseType: !86, size: 32, offset: 544)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !342, file: !174, line: 482, baseType: !3118, size: 128, offset: 576)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !342, file: !174, line: 483, baseType: !76, size: 64, offset: 704)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !342, file: !174, line: 484, baseType: !76, size: 64, offset: 768)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !342, file: !174, line: 485, baseType: !5024, size: 64, offset: 832)
!5024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5025, size: 64)
!5025 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5026)
!5026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !174, line: 404, size: 1280, elements: !5027)
!5027 = !{!5028, !5032, !5036, !5040, !5044, !5060, !5065, !5069, !5073, !5077, !5081, !5085, !5086, !5090, !5094, !5098, !5103, !5107, !5113, !5114}
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !5026, file: !174, line: 405, baseType: !5029, size: 64)
!5029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5030, size: 64)
!5030 = !DISubroutineType(types: !5031)
!5031 = !{!59, !319, !2332}
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !5026, file: !174, line: 406, baseType: !5033, size: 64, offset: 64)
!5033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5034, size: 64)
!5034 = !DISubroutineType(types: !5035)
!5035 = !{!59, !691, !1188}
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !5026, file: !174, line: 409, baseType: !5037, size: 64, offset: 128)
!5037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5038, size: 64)
!5038 = !DISubroutineType(types: !5039)
!5039 = !{!59, !341, !2332}
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !5026, file: !174, line: 412, baseType: !5041, size: 64, offset: 192)
!5041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5042, size: 64)
!5042 = !DISubroutineType(types: !5043)
!5043 = !{!880, !341, !1188}
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !5026, file: !174, line: 414, baseType: !5045, size: 64, offset: 256)
!5045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5046, size: 64)
!5046 = !DISubroutineType(types: !5047)
!5047 = !{null, !5048}
!5048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5049, size: 64)
!5049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !1185, line: 1276, size: 448, elements: !5050)
!5050 = !{!5051, !5052, !5053, !5055, !5056, !5057, !5058, !5059}
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !5049, file: !1185, line: 1277, baseType: !691, size: 64)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !5049, file: !1185, line: 1278, baseType: !341, size: 64, offset: 64)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !5049, file: !1185, line: 1279, baseType: !5054, size: 64, offset: 128)
!5054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !5049, file: !1185, line: 1281, baseType: !76, size: 64, offset: 192)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !5049, file: !1185, line: 1282, baseType: !28, size: 32, offset: 256)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !5049, file: !1185, line: 1283, baseType: !28, size: 32, offset: 288)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !5049, file: !1185, line: 1284, baseType: !880, size: 8, offset: 320)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !5049, file: !1185, line: 1285, baseType: !76, size: 64, offset: 384)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !5026, file: !174, line: 416, baseType: !5061, size: 64, offset: 320)
!5061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5062, size: 64)
!5062 = !DISubroutineType(types: !5063)
!5063 = !{!59, !691, !341, !78, !28, !5064, !1747}
!5064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !5026, file: !174, line: 419, baseType: !5066, size: 64, offset: 384)
!5066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5067, size: 64)
!5067 = !DISubroutineType(types: !5068)
!5068 = !{!59, !691, !341, !78, !28, !28, !319, !57}
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !5026, file: !174, line: 424, baseType: !5070, size: 64, offset: 448)
!5070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5071, size: 64)
!5071 = !DISubroutineType(types: !5072)
!5072 = !{!2616, !341, !2616}
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !5026, file: !174, line: 425, baseType: !5074, size: 64, offset: 512)
!5074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5075, size: 64)
!5075 = !DISubroutineType(types: !5076)
!5076 = !{null, !1188, !72, !72}
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !5026, file: !174, line: 426, baseType: !5078, size: 64, offset: 576)
!5078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5079, size: 64)
!5079 = !DISubroutineType(types: !5080)
!5080 = !{!880, !1188, !1327}
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !5026, file: !174, line: 427, baseType: !5082, size: 64, offset: 640)
!5082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5083, size: 64)
!5083 = !DISubroutineType(types: !5084)
!5084 = !{null, !1188}
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !5026, file: !174, line: 428, baseType: !1164, size: 64, offset: 704)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !5026, file: !174, line: 433, baseType: !5087, size: 64, offset: 768)
!5087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5088, size: 64)
!5088 = !DISubroutineType(types: !5089)
!5089 = !{!59, !341, !1188, !1188, !160}
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !5026, file: !174, line: 435, baseType: !5091, size: 64, offset: 832)
!5091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5092, size: 64)
!5092 = !DISubroutineType(types: !5093)
!5093 = !{!59, !1188}
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !5026, file: !174, line: 436, baseType: !5095, size: 64, offset: 896)
!5095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5096, size: 64)
!5096 = !DISubroutineType(types: !5097)
!5097 = !{!880, !1188, !72, !72}
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !5026, file: !174, line: 438, baseType: !5099, size: 64, offset: 960)
!5099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5100, size: 64)
!5100 = !DISubroutineType(types: !5101)
!5101 = !{null, !1188, !5102, !5102}
!5102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !5026, file: !174, line: 439, baseType: !5104, size: 64, offset: 1024)
!5104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5105, size: 64)
!5105 = !DISubroutineType(types: !5106)
!5106 = !{!59, !341, !319}
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !5026, file: !174, line: 442, baseType: !5108, size: 64, offset: 1088)
!5108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5109, size: 64)
!5109 = !DISubroutineType(types: !5110)
!5110 = !{!59, !5111, !691, !2810}
!5111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5112, size: 64)
!5112 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !174, line: 66, flags: DIFlagFwdDecl)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !5026, file: !174, line: 444, baseType: !1739, size: 64, offset: 1152)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !5026, file: !174, line: 445, baseType: !5115, size: 64, offset: 1216)
!5115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5116, size: 64)
!5116 = !DISubroutineType(types: !5117)
!5117 = !{!59, !1167, !1272}
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !342, file: !174, line: 486, baseType: !76, size: 64, offset: 896)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !342, file: !174, line: 487, baseType: !822, size: 320, offset: 960)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !342, file: !174, line: 488, baseType: !1784, size: 32, offset: 1280)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !342, file: !174, line: 489, baseType: !96, size: 32, offset: 1312)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !342, file: !174, line: 490, baseType: !134, size: 128, offset: 1344)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !342, file: !174, line: 491, baseType: !57, size: 64, offset: 1472)
!5124 = !DIDerivedType(tag: DW_TAG_member, scope: !327, file: !145, line: 107, baseType: !5125, size: 64, offset: 192)
!5125 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !327, file: !145, line: 107, size: 64, elements: !5126)
!5126 = !{!5127, !5128}
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5125, file: !145, line: 108, baseType: !76, size: 64)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !5125, file: !145, line: 109, baseType: !76, size: 64)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !327, file: !145, line: 117, baseType: !76, size: 64, offset: 256)
!5130 = !DIDerivedType(tag: DW_TAG_member, scope: !324, file: !145, line: 119, baseType: !5131, size: 320)
!5131 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !324, file: !145, line: 119, size: 320, elements: !5132)
!5132 = !{!5133, !5134, !5137, !5138, !5139}
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !5131, file: !145, line: 124, baseType: !76, size: 64)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !5131, file: !145, line: 125, baseType: !5135, size: 64, offset: 64)
!5135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5136, size: 64)
!5136 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !145, line: 125, flags: DIFlagFwdDecl)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !5131, file: !145, line: 126, baseType: !76, size: 64, offset: 128)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !5131, file: !145, line: 127, baseType: !76, size: 64, offset: 192)
!5139 = !DIDerivedType(tag: DW_TAG_member, scope: !5131, file: !145, line: 128, baseType: !5140, size: 64, offset: 256)
!5140 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5131, file: !145, line: 128, size: 64, elements: !5141)
!5141 = !{!5142, !5143}
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !5140, file: !145, line: 133, baseType: !76, size: 64)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !5140, file: !145, line: 138, baseType: !292, size: 64)
!5144 = !DIDerivedType(tag: DW_TAG_member, scope: !324, file: !145, line: 141, baseType: !5145, size: 64)
!5145 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !324, file: !145, line: 141, size: 64, elements: !5146)
!5146 = !{!5147}
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !5145, file: !145, line: 142, baseType: !76, size: 64)
!5148 = !DIDerivedType(tag: DW_TAG_member, scope: !324, file: !145, line: 144, baseType: !5149, size: 128)
!5149 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !324, file: !145, line: 144, size: 128, elements: !5150)
!5150 = !{!5151, !5202}
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !5149, file: !145, line: 146, baseType: !5152, size: 64)
!5152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5153, size: 64)
!5153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !35, line: 126, size: 1216, elements: !5154)
!5154 = !{!5155, !5165, !5166, !5167, !5168, !5169, !5170, !5184, !5185, !5186}
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !5153, file: !35, line: 127, baseType: !5156, size: 384)
!5156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !35, line: 21, size: 384, elements: !5157)
!5157 = !{!5158, !5159, !5161, !5162, !5163, !5164}
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !5156, file: !35, line: 22, baseType: !76, size: 64)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !5156, file: !35, line: 23, baseType: !5160, size: 64, offset: 64)
!5160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !5156, file: !35, line: 24, baseType: !5160, size: 64, offset: 128)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !5156, file: !35, line: 25, baseType: !76, size: 64, offset: 192)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !5156, file: !35, line: 26, baseType: !76, size: 64, offset: 256)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !5156, file: !35, line: 27, baseType: !76, size: 64, offset: 320)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !5153, file: !35, line: 128, baseType: !2820, size: 128, offset: 384)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !5153, file: !35, line: 129, baseType: !1051, size: 256, offset: 512)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5153, file: !35, line: 130, baseType: !34, size: 32, offset: 768)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5153, file: !35, line: 131, baseType: !28, size: 32, offset: 800)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !5153, file: !35, line: 132, baseType: !76, size: 64, offset: 832)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5153, file: !35, line: 133, baseType: !5171, size: 64, offset: 896)
!5171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5172, size: 64)
!5172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5173)
!5173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !35, line: 77, size: 192, elements: !5174)
!5174 = !{!5175, !5179, !5180}
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !5173, file: !35, line: 83, baseType: !5176, size: 64)
!5176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5177, size: 64)
!5177 = !DISubroutineType(types: !5178)
!5178 = !{null, !319}
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !5173, file: !35, line: 89, baseType: !1605, size: 64, offset: 64)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !5173, file: !35, line: 100, baseType: !5181, size: 64, offset: 128)
!5181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5182, size: 64)
!5182 = !DISubroutineType(types: !5183)
!5183 = !{!59, !5152, !76, !76, !59}
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5153, file: !35, line: 134, baseType: !57, size: 64, offset: 960)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !5153, file: !35, line: 135, baseType: !59, size: 32, offset: 1024)
!5186 = !DIDerivedType(tag: DW_TAG_member, scope: !5153, file: !35, line: 136, baseType: !5187, size: 128, offset: 1088)
!5187 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5153, file: !35, line: 136, size: 128, elements: !5188)
!5188 = !{!5189, !5195}
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !5187, file: !35, line: 137, baseType: !5190, size: 128)
!5190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !5191, line: 6, size: 128, elements: !5192)
!5191 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!5192 = !{!5193, !5194}
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5190, file: !5191, line: 7, baseType: !450, size: 64)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5190, file: !5191, line: 8, baseType: !450, size: 64, offset: 64)
!5195 = !DIDerivedType(tag: DW_TAG_member, scope: !5187, file: !35, line: 138, baseType: !5196)
!5196 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5187, file: !35, line: 138, elements: !5197)
!5197 = !{!5198, !5200}
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !5196, file: !35, line: 138, baseType: !5199)
!5199 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5196, file: !35, line: 138, elements: !1416)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !5196, file: !35, line: 138, baseType: !5201)
!5201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5190, elements: !400)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !5149, file: !145, line: 147, baseType: !57, size: 64, offset: 64)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !324, file: !145, line: 161, baseType: !379, size: 128, align: 64)
!5204 = !DIDerivedType(tag: DW_TAG_member, scope: !320, file: !145, line: 164, baseType: !5205, size: 32, offset: 384)
!5205 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !320, file: !145, line: 164, size: 32, elements: !5206)
!5206 = !{!5207, !5208}
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !5205, file: !145, line: 169, baseType: !86, size: 32)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !5205, file: !145, line: 177, baseType: !28, size: 32)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !320, file: !145, line: 181, baseType: !86, size: 32, offset: 416)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "b_folio", scope: !316, file: !311, line: 64, baseType: !1188, size: 64)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "b_blocknr", scope: !310, file: !311, line: 67, baseType: !2616, size: 64, offset: 192)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "b_size", scope: !310, file: !311, line: 68, baseType: !72, size: 64, offset: 256)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "b_data", scope: !310, file: !311, line: 69, baseType: !518, size: 64, offset: 320)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "b_bdev", scope: !310, file: !311, line: 71, baseType: !2611, size: 64, offset: 384)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "b_end_io", scope: !310, file: !311, line: 72, baseType: !5216, size: 64, offset: 448)
!5216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5217, size: 64)
!5217 = !DIDerivedType(tag: DW_TAG_typedef, name: "bh_end_io_t", file: !311, line: 48, baseType: !5218)
!5218 = !DISubroutineType(types: !5219)
!5219 = !{null, !309, !59}
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "b_private", scope: !310, file: !311, line: 73, baseType: !57, size: 64, offset: 512)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "b_assoc_buffers", scope: !310, file: !311, line: 74, baseType: !134, size: 128, offset: 576)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "b_assoc_map", scope: !310, file: !311, line: 75, baseType: !341, size: 64, offset: 704)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "b_count", scope: !310, file: !311, line: 77, baseType: !86, size: 32, offset: 768)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "b_uptodate_lock", scope: !310, file: !311, line: 78, baseType: !96, size: 32, offset: 800)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "j_superblock", scope: !282, file: !271, line: 784, baseType: !5226, size: 64, offset: 512)
!5226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5227, size: 64)
!5227 = !DIDerivedType(tag: DW_TAG_typedef, name: "journal_superblock_t", file: !271, line: 277, baseType: !5228)
!5228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "journal_superblock_s", file: !271, line: 226, size: 8192, elements: !5229)
!5229 = !{!5230, !5238, !5239, !5240, !5241, !5242, !5243, !5244, !5245, !5246, !5247, !5248, !5249, !5250, !5251, !5252, !5253, !5255, !5256, !5257, !5261, !5262}
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "s_header", scope: !5228, file: !271, line: 229, baseType: !5231, size: 96)
!5231 = !DIDerivedType(tag: DW_TAG_typedef, name: "journal_header_t", file: !271, line: 136, baseType: !5232)
!5232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "journal_header_s", file: !271, line: 131, size: 96, elements: !5233)
!5233 = !{!5234, !5236, !5237}
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "h_magic", scope: !5232, file: !271, line: 133, baseType: !5235, size: 32)
!5235 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !1370, line: 39, baseType: !447)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "h_blocktype", scope: !5232, file: !271, line: 134, baseType: !5235, size: 32, offset: 32)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "h_sequence", scope: !5232, file: !271, line: 135, baseType: !5235, size: 32, offset: 64)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !5228, file: !271, line: 233, baseType: !5235, size: 32, offset: 96)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxlen", scope: !5228, file: !271, line: 234, baseType: !5235, size: 32, offset: 128)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "s_first", scope: !5228, file: !271, line: 235, baseType: !5235, size: 32, offset: 160)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "s_sequence", scope: !5228, file: !271, line: 239, baseType: !5235, size: 32, offset: 192)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "s_start", scope: !5228, file: !271, line: 240, baseType: !5235, size: 32, offset: 224)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "s_errno", scope: !5228, file: !271, line: 244, baseType: !5235, size: 32, offset: 256)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "s_feature_compat", scope: !5228, file: !271, line: 248, baseType: !5235, size: 32, offset: 288)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "s_feature_incompat", scope: !5228, file: !271, line: 249, baseType: !5235, size: 32, offset: 320)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "s_feature_ro_compat", scope: !5228, file: !271, line: 250, baseType: !5235, size: 32, offset: 352)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !5228, file: !271, line: 252, baseType: !4689, size: 128, offset: 384)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "s_nr_users", scope: !5228, file: !271, line: 255, baseType: !5235, size: 32, offset: 512)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "s_dynsuper", scope: !5228, file: !271, line: 257, baseType: !5235, size: 32, offset: 544)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_transaction", scope: !5228, file: !271, line: 260, baseType: !5235, size: 32, offset: 576)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_trans_data", scope: !5228, file: !271, line: 261, baseType: !5235, size: 32, offset: 608)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "s_checksum_type", scope: !5228, file: !271, line: 264, baseType: !122, size: 8, offset: 640)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "s_padding2", scope: !5228, file: !271, line: 265, baseType: !5254, size: 24, offset: 648)
!5254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 24, elements: !618)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "s_num_fc_blks", scope: !5228, file: !271, line: 267, baseType: !5235, size: 32, offset: 672)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "s_head", scope: !5228, file: !271, line: 268, baseType: !5235, size: 32, offset: 704)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "s_padding", scope: !5228, file: !271, line: 271, baseType: !5258, size: 1280, offset: 736)
!5258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !447, size: 1280, elements: !5259)
!5259 = !{!5260}
!5260 = !DISubrange(count: 40)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "s_checksum", scope: !5228, file: !271, line: 272, baseType: !5235, size: 32, offset: 2016)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "s_users", scope: !5228, file: !271, line: 275, baseType: !5263, size: 6144, offset: 2048)
!5263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 6144, elements: !5264)
!5264 = !{!5265}
!5265 = !DISubrange(count: 768)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "j_state_lock", scope: !282, file: !271, line: 789, baseType: !716, size: 64, offset: 576)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "j_barrier_count", scope: !282, file: !271, line: 797, baseType: !59, size: 32, offset: 640)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "j_barrier", scope: !282, file: !271, line: 802, baseType: !288, size: 256, offset: 704)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "j_running_transaction", scope: !282, file: !271, line: 811, baseType: !5270, size: 64, offset: 960)
!5270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5271, size: 64)
!5271 = !DIDerivedType(tag: DW_TAG_typedef, name: "transaction_t", file: !5272, line: 17, baseType: !277)
!5272 = !DIFile(filename: "./include/linux/journal-head.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0a64d63ceb0222c76d889f081fb8fa94")
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "j_committing_transaction", scope: !282, file: !271, line: 819, baseType: !5270, size: 64, offset: 1024)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "j_checkpoint_transactions", scope: !282, file: !271, line: 827, baseType: !5270, size: 64, offset: 1088)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "j_wait_transaction_locked", scope: !282, file: !271, line: 835, baseType: !91, size: 192, offset: 1152)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "j_wait_done_commit", scope: !282, file: !271, line: 840, baseType: !91, size: 192, offset: 1344)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "j_wait_commit", scope: !282, file: !271, line: 845, baseType: !91, size: 192, offset: 1536)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "j_wait_updates", scope: !282, file: !271, line: 850, baseType: !91, size: 192, offset: 1728)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "j_wait_reserved", scope: !282, file: !271, line: 857, baseType: !91, size: 192, offset: 1920)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "j_fc_wait", scope: !282, file: !271, line: 864, baseType: !91, size: 192, offset: 2112)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "j_checkpoint_mutex", scope: !282, file: !271, line: 871, baseType: !288, size: 256, offset: 2304)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "j_chkpt_bhs", scope: !282, file: !271, line: 881, baseType: !5283, size: 4096, offset: 2560)
!5283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 4096, elements: !622)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "j_shrinker", scope: !282, file: !271, line: 889, baseType: !4695, size: 448, offset: 6656)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "j_checkpoint_jh_count", scope: !282, file: !271, line: 896, baseType: !938, size: 320, offset: 7104)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "j_shrink_transaction", scope: !282, file: !271, line: 904, baseType: !5270, size: 64, offset: 7424)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "j_head", scope: !282, file: !271, line: 912, baseType: !76, size: 64, offset: 7488)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "j_tail", scope: !282, file: !271, line: 920, baseType: !76, size: 64, offset: 7552)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "j_free", scope: !282, file: !271, line: 928, baseType: !76, size: 64, offset: 7616)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "j_first", scope: !282, file: !271, line: 936, baseType: !76, size: 64, offset: 7680)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "j_last", scope: !282, file: !271, line: 944, baseType: !76, size: 64, offset: 7744)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "j_fc_first", scope: !282, file: !271, line: 952, baseType: !76, size: 64, offset: 7808)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "j_fc_off", scope: !282, file: !271, line: 961, baseType: !76, size: 64, offset: 7872)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "j_fc_last", scope: !282, file: !271, line: 969, baseType: !76, size: 64, offset: 7936)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "j_dev", scope: !282, file: !271, line: 974, baseType: !2611, size: 64, offset: 8000)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "j_blocksize", scope: !282, file: !271, line: 979, baseType: !59, size: 32, offset: 8064)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "j_blk_offset", scope: !282, file: !271, line: 986, baseType: !452, size: 64, offset: 8128)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "j_devname", scope: !282, file: !271, line: 991, baseType: !570, size: 448, offset: 8192)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "j_fs_dev", scope: !282, file: !271, line: 999, baseType: !2611, size: 64, offset: 8640)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "j_total_len", scope: !282, file: !271, line: 1004, baseType: !28, size: 32, offset: 8704)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "j_reserved_credits", scope: !282, file: !271, line: 1011, baseType: !86, size: 32, offset: 8736)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "j_list_lock", scope: !282, file: !271, line: 1016, baseType: !96, size: 32, offset: 8768)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "j_inode", scope: !282, file: !271, line: 1024, baseType: !345, size: 64, offset: 8832)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "j_tail_sequence", scope: !282, file: !271, line: 1031, baseType: !5305, size: 32, offset: 8896)
!5305 = !DIDerivedType(tag: DW_TAG_typedef, name: "tid_t", file: !5272, line: 16, baseType: !28)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "j_transaction_sequence", scope: !282, file: !271, line: 1038, baseType: !5305, size: 32, offset: 8928)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "j_commit_sequence", scope: !282, file: !271, line: 1046, baseType: !5305, size: 32, offset: 8960)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "j_commit_request", scope: !282, file: !271, line: 1054, baseType: !5305, size: 32, offset: 8992)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "j_uuid", scope: !282, file: !271, line: 1064, baseType: !4689, size: 128, offset: 9024)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "j_task", scope: !282, file: !271, line: 1069, baseType: !3531, size: 64, offset: 9152)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "j_max_transaction_buffers", scope: !282, file: !271, line: 1077, baseType: !59, size: 32, offset: 9216)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "j_revoke_records_per_block", scope: !282, file: !271, line: 1084, baseType: !59, size: 32, offset: 9248)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "j_transaction_overhead_buffers", scope: !282, file: !271, line: 1091, baseType: !59, size: 32, offset: 9280)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "j_commit_interval", scope: !282, file: !271, line: 1098, baseType: !76, size: 64, offset: 9344)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "j_commit_timer", scope: !282, file: !271, line: 1103, baseType: !2190, size: 320, offset: 9408)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "j_revoke_lock", scope: !282, file: !271, line: 1108, baseType: !96, size: 32, offset: 9728)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "j_revoke", scope: !282, file: !271, line: 1116, baseType: !5318, size: 64, offset: 9792)
!5318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5319, size: 64)
!5319 = !DICompositeType(tag: DW_TAG_structure_type, name: "jbd2_revoke_table_s", file: !271, line: 448, flags: DIFlagFwdDecl)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "j_revoke_table", scope: !282, file: !271, line: 1121, baseType: !5321, size: 128, offset: 9856)
!5321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5318, size: 128, elements: !2081)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "j_wbuf", scope: !282, file: !271, line: 1126, baseType: !5323, size: 64, offset: 9984)
!5323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "j_fc_wbuf", scope: !282, file: !271, line: 1133, baseType: !5323, size: 64, offset: 10048)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "j_wbufsize", scope: !282, file: !271, line: 1140, baseType: !59, size: 32, offset: 10112)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "j_fc_wbufsize", scope: !282, file: !271, line: 1147, baseType: !59, size: 32, offset: 10144)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "j_last_sync_writer", scope: !282, file: !271, line: 1155, baseType: !3820, size: 32, offset: 10176)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "j_average_commit_time", scope: !282, file: !271, line: 1163, baseType: !450, size: 64, offset: 10240)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "j_min_batch_time", scope: !282, file: !271, line: 1171, baseType: !446, size: 32, offset: 10304)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "j_max_batch_time", scope: !282, file: !271, line: 1179, baseType: !446, size: 32, offset: 10336)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "j_commit_callback", scope: !282, file: !271, line: 1186, baseType: !5332, size: 64, offset: 10368)
!5332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5333, size: 64)
!5333 = !DISubroutineType(types: !5334)
!5334 = !{null, !280, !5270}
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "j_submit_inode_data_buffers", scope: !282, file: !271, line: 1196, baseType: !5336, size: 64, offset: 10432)
!5336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5337, size: 64)
!5337 = !DISubroutineType(types: !5338)
!5338 = !{!59, !5339}
!5339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5340, size: 64)
!5340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jbd2_inode", file: !271, line: 397, size: 512, elements: !5341)
!5341 = !{!5342, !5343, !5344, !5345, !5346, !5347, !5348}
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "i_transaction", scope: !5340, file: !271, line: 404, baseType: !5270, size: 64)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "i_next_transaction", scope: !5340, file: !271, line: 412, baseType: !5270, size: 64, offset: 64)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "i_list", scope: !5340, file: !271, line: 417, baseType: !134, size: 128, offset: 128)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "i_vfs_inode", scope: !5340, file: !271, line: 424, baseType: !345, size: 64, offset: 256)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !5340, file: !271, line: 429, baseType: !76, size: 64, offset: 320)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "i_dirty_start", scope: !5340, file: !271, line: 437, baseType: !78, size: 64, offset: 384)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "i_dirty_end", scope: !5340, file: !271, line: 445, baseType: !78, size: 64, offset: 448)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "j_finish_inode_data_buffers", scope: !282, file: !271, line: 1207, baseType: !5336, size: 64, offset: 10496)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "j_history_lock", scope: !282, file: !271, line: 1217, baseType: !96, size: 32, offset: 10560)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "j_proc_entry", scope: !282, file: !271, line: 1222, baseType: !5352, size: 64, offset: 10624)
!5352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5353, size: 64)
!5353 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !271, line: 1222, flags: DIFlagFwdDecl)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "j_stats", scope: !282, file: !271, line: 1227, baseType: !5355, size: 640, offset: 10688)
!5355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "transaction_stats_s", file: !271, line: 724, size: 640, elements: !5356)
!5356 = !{!5357, !5358, !5359}
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "ts_tid", scope: !5355, file: !271, line: 725, baseType: !76, size: 64)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "ts_requested", scope: !5355, file: !271, line: 726, baseType: !76, size: 64, offset: 64)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !5355, file: !271, line: 727, baseType: !5360, size: 512, offset: 128)
!5360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "transaction_run_stats_s", file: !271, line: 711, size: 512, elements: !5361)
!5361 = !{!5362, !5363, !5364, !5365, !5366, !5367, !5368, !5369, !5370}
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "rs_wait", scope: !5360, file: !271, line: 712, baseType: !76, size: 64)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "rs_request_delay", scope: !5360, file: !271, line: 713, baseType: !76, size: 64, offset: 64)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "rs_running", scope: !5360, file: !271, line: 714, baseType: !76, size: 64, offset: 128)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "rs_locked", scope: !5360, file: !271, line: 715, baseType: !76, size: 64, offset: 192)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "rs_flushing", scope: !5360, file: !271, line: 716, baseType: !76, size: 64, offset: 256)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "rs_logging", scope: !5360, file: !271, line: 717, baseType: !76, size: 64, offset: 320)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "rs_handle_count", scope: !5360, file: !271, line: 719, baseType: !447, size: 32, offset: 384)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "rs_blocks", scope: !5360, file: !271, line: 720, baseType: !447, size: 32, offset: 416)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "rs_blocks_logged", scope: !5360, file: !271, line: 721, baseType: !447, size: 32, offset: 448)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "j_failed_commit", scope: !282, file: !271, line: 1232, baseType: !28, size: 32, offset: 11328)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "j_private", scope: !282, file: !271, line: 1240, baseType: !57, size: 64, offset: 11392)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "j_chksum_driver", scope: !282, file: !271, line: 1247, baseType: !5374, size: 64, offset: 11456)
!5374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5375, size: 64)
!5375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_shash", file: !5376, line: 268, size: 320, elements: !5377)
!5376 = !DIFile(filename: "./include/crypto/hash.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "898bc22f4cdebdebab6f93eb5fefb325")
!5377 = !{!5378, !5379}
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "descsize", scope: !5375, file: !5376, line: 269, baseType: !28, size: 32)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5375, file: !5376, line: 270, baseType: !5380, size: 256, offset: 64)
!5380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_tfm", file: !5381, line: 422, size: 256, elements: !5382)
!5381 = !DIFile(filename: "./include/linux/crypto.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cbfd5dd8032a2dca49778e0abbbe9ad8")
!5382 = !{!5383, !5384, !5385, !5386, !5391, !5449}
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !5380, file: !5381, line: 423, baseType: !373, size: 32)
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "crt_flags", scope: !5380, file: !5381, line: 425, baseType: !446, size: 32, offset: 32)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5380, file: !5381, line: 427, baseType: !59, size: 32, offset: 64)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !5380, file: !5381, line: 429, baseType: !5387, size: 64, offset: 128)
!5387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5388, size: 64)
!5388 = !DISubroutineType(types: !5389)
!5389 = !{null, !5390}
!5390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5380, size: 64)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "__crt_alg", scope: !5380, file: !5381, line: 431, baseType: !5392, size: 64, offset: 192)
!5392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5393, size: 64)
!5393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_alg", file: !5381, line: 343, size: 3072, align: 64, elements: !5394)
!5394 = !{!5395, !5396, !5397, !5398, !5399, !5400, !5401, !5402, !5403, !5407, !5408, !5412, !5439, !5443, !5444, !5448}
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "cra_list", scope: !5393, file: !5381, line: 344, baseType: !134, size: 128)
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "cra_users", scope: !5393, file: !5381, line: 345, baseType: !134, size: 128, offset: 128)
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "cra_flags", scope: !5393, file: !5381, line: 347, baseType: !446, size: 32, offset: 256)
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "cra_blocksize", scope: !5393, file: !5381, line: 348, baseType: !28, size: 32, offset: 288)
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "cra_ctxsize", scope: !5393, file: !5381, line: 349, baseType: !28, size: 32, offset: 320)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "cra_alignmask", scope: !5393, file: !5381, line: 350, baseType: !28, size: 32, offset: 352)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "cra_priority", scope: !5393, file: !5381, line: 352, baseType: !59, size: 32, offset: 384)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "cra_refcnt", scope: !5393, file: !5381, line: 353, baseType: !373, size: 32, offset: 416)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "cra_name", scope: !5393, file: !5381, line: 355, baseType: !5404, size: 1024, offset: 448)
!5404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1024, elements: !5405)
!5405 = !{!5406}
!5406 = !DISubrange(count: 128)
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "cra_driver_name", scope: !5393, file: !5381, line: 356, baseType: !5404, size: 1024, offset: 1472)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "cra_type", scope: !5393, file: !5381, line: 358, baseType: !5409, size: 64, offset: 2496)
!5409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5410, size: 64)
!5410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5411)
!5411 = !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_type", file: !5381, line: 160, flags: DIFlagFwdDecl)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "cra_u", scope: !5393, file: !5381, line: 363, baseType: !5413, size: 256, offset: 2560)
!5413 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5393, file: !5381, line: 360, size: 256, elements: !5414)
!5414 = !{!5415, !5431}
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "cipher", scope: !5413, file: !5381, line: 361, baseType: !5416, size: 256)
!5416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cipher_alg", file: !5381, line: 235, size: 256, elements: !5417)
!5417 = !{!5418, !5419, !5420, !5426, !5430}
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "cia_min_keysize", scope: !5416, file: !5381, line: 236, baseType: !28, size: 32)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "cia_max_keysize", scope: !5416, file: !5381, line: 237, baseType: !28, size: 32, offset: 32)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "cia_setkey", scope: !5416, file: !5381, line: 238, baseType: !5421, size: 64, offset: 64)
!5421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5422, size: 64)
!5422 = !DISubroutineType(types: !5423)
!5423 = !{!59, !5390, !5424, !28}
!5424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5425, size: 64)
!5425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !120)
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "cia_encrypt", scope: !5416, file: !5381, line: 240, baseType: !5427, size: 64, offset: 128)
!5427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5428, size: 64)
!5428 = !DISubroutineType(types: !5429)
!5429 = !{null, !5390, !2800, !5424}
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "cia_decrypt", scope: !5416, file: !5381, line: 241, baseType: !5427, size: 64, offset: 192)
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !5413, file: !5381, line: 362, baseType: !5432, size: 128)
!5432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compress_alg", file: !5381, line: 255, size: 128, elements: !5433)
!5433 = !{!5434, !5438}
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "coa_compress", scope: !5432, file: !5381, line: 256, baseType: !5435, size: 64)
!5435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5436, size: 64)
!5436 = !DISubroutineType(types: !5437)
!5437 = !{!59, !5390, !5424, !28, !2800, !2043}
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "coa_decompress", scope: !5432, file: !5381, line: 258, baseType: !5435, size: 64, offset: 64)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "cra_init", scope: !5393, file: !5381, line: 365, baseType: !5440, size: 64, offset: 2816)
!5440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5441, size: 64)
!5441 = !DISubroutineType(types: !5442)
!5442 = !{!59, !5390}
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "cra_exit", scope: !5393, file: !5381, line: 366, baseType: !5387, size: 64, offset: 2880)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "cra_destroy", scope: !5393, file: !5381, line: 367, baseType: !5445, size: 64, offset: 2944)
!5445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5446, size: 64)
!5446 = !DISubroutineType(types: !5447)
!5447 = !{null, !5392}
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "cra_module", scope: !5393, file: !5381, line: 369, baseType: !564, size: 64, offset: 3008)
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "__crt_ctx", scope: !5380, file: !5381, line: 433, baseType: !5450, align: 64, offset: 256)
!5450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, elements: !400)
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "j_csum_seed", scope: !282, file: !271, line: 1254, baseType: !447, size: 32, offset: 11520)
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "j_fc_cleanup_callback", scope: !282, file: !271, line: 1276, baseType: !5453, size: 64, offset: 11584)
!5453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5454, size: 64)
!5454 = !DISubroutineType(types: !5455)
!5455 = !{null, !5456, !59, !5305}
!5456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "j_fc_replay_callback", scope: !282, file: !271, line: 1289, baseType: !5458, size: 64, offset: 11648)
!5458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5459, size: 64)
!5459 = !DISubroutineType(types: !5460)
!5460 = !{!59, !5456, !309, !270, !59, !5305}
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "j_bmap", scope: !282, file: !271, line: 1300, baseType: !5462, size: 64, offset: 11712)
!5462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5463, size: 64)
!5463 = !DISubroutineType(types: !5464)
!5464 = !{!59, !5456, !2810}
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "t_tid", scope: !277, file: !271, line: 557, baseType: !5305, size: 32, offset: 64)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "t_state", scope: !277, file: !271, line: 577, baseType: !276, size: 32, offset: 96)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "t_log_start", scope: !277, file: !271, line: 582, baseType: !76, size: 64, offset: 128)
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "t_nr_buffers", scope: !277, file: !271, line: 588, baseType: !59, size: 32, offset: 192)
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "t_reserved_list", scope: !277, file: !271, line: 595, baseType: !5470, size: 64, offset: 256)
!5470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5471, size: 64)
!5471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "journal_head", file: !5272, line: 22, size: 896, elements: !5472)
!5472 = !{!5473, !5474, !5475, !5476, !5477, !5478, !5479, !5480, !5481, !5482, !5483, !5484, !5485, !5486, !5487, !5499}
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "b_bh", scope: !5471, file: !5272, line: 26, baseType: !309, size: 64)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "b_state_lock", scope: !5471, file: !5272, line: 31, baseType: !96, size: 32, offset: 64)
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "b_jcount", scope: !5471, file: !5272, line: 37, baseType: !59, size: 32, offset: 96)
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "b_jlist", scope: !5471, file: !5272, line: 46, baseType: !28, size: 32, offset: 128)
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "b_modified", scope: !5471, file: !5272, line: 53, baseType: !28, size: 32, offset: 160)
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "b_frozen_data", scope: !5471, file: !5272, line: 59, baseType: !518, size: 64, offset: 192)
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "b_committed_data", scope: !5471, file: !5272, line: 66, baseType: !518, size: 64, offset: 256)
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "b_transaction", scope: !5471, file: !5272, line: 77, baseType: !5270, size: 64, offset: 320)
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "b_next_transaction", scope: !5471, file: !5272, line: 85, baseType: !5270, size: 64, offset: 384)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "b_tnext", scope: !5471, file: !5272, line: 91, baseType: !5470, size: 64, offset: 448)
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "b_tprev", scope: !5471, file: !5272, line: 91, baseType: !5470, size: 64, offset: 512)
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "b_cp_transaction", scope: !5471, file: !5272, line: 98, baseType: !5270, size: 64, offset: 576)
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "b_cpnext", scope: !5471, file: !5272, line: 105, baseType: !5470, size: 64, offset: 640)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "b_cpprev", scope: !5471, file: !5272, line: 105, baseType: !5470, size: 64, offset: 704)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "b_triggers", scope: !5471, file: !5272, line: 108, baseType: !5488, size: 64, offset: 768)
!5488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5489, size: 64)
!5489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jbd2_buffer_trigger_type", file: !271, line: 1460, size: 128, elements: !5490)
!5490 = !{!5491, !5495}
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "t_frozen", scope: !5489, file: !271, line: 1467, baseType: !5492, size: 64)
!5492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5493, size: 64)
!5493 = !DISubroutineType(types: !5494)
!5494 = !{null, !5488, !309, !57, !72}
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "t_abort", scope: !5489, file: !271, line: 1475, baseType: !5496, size: 64, offset: 64)
!5496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5497, size: 64)
!5497 = !DISubroutineType(types: !5498)
!5498 = !{null, !5488, !309}
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "b_frozen_triggers", scope: !5471, file: !5272, line: 111, baseType: !5488, size: 64, offset: 832)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "t_buffers", scope: !277, file: !271, line: 601, baseType: !5470, size: 64, offset: 320)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "t_forget", scope: !277, file: !271, line: 608, baseType: !5470, size: 64, offset: 384)
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "t_checkpoint_list", scope: !277, file: !271, line: 614, baseType: !5470, size: 64, offset: 448)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "t_shadow_list", scope: !277, file: !271, line: 623, baseType: !5470, size: 64, offset: 512)
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "t_inode_list", scope: !277, file: !271, line: 631, baseType: !134, size: 128, offset: 576)
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "t_max_wait", scope: !277, file: !271, line: 636, baseType: !76, size: 64, offset: 704)
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "t_start", scope: !277, file: !271, line: 641, baseType: !76, size: 64, offset: 768)
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "t_requested", scope: !277, file: !271, line: 646, baseType: !76, size: 64, offset: 832)
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "t_chp_stats", scope: !277, file: !271, line: 651, baseType: !5509, size: 192, offset: 896)
!5509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "transaction_chp_stats_s", file: !271, line: 510, size: 192, elements: !5510)
!5510 = !{!5511, !5512, !5513, !5514}
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "cs_chp_time", scope: !5509, file: !271, line: 511, baseType: !76, size: 64)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "cs_forced_to_close", scope: !5509, file: !271, line: 512, baseType: !447, size: 32, offset: 64)
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "cs_written", scope: !5509, file: !271, line: 513, baseType: !447, size: 32, offset: 96)
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "cs_dropped", scope: !5509, file: !271, line: 514, baseType: !447, size: 32, offset: 128)
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "t_updates", scope: !277, file: !271, line: 657, baseType: !86, size: 32, offset: 1088)
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "t_outstanding_credits", scope: !277, file: !271, line: 665, baseType: !86, size: 32, offset: 1120)
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "t_outstanding_revokes", scope: !277, file: !271, line: 671, baseType: !86, size: 32, offset: 1152)
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "t_handle_count", scope: !277, file: !271, line: 676, baseType: !86, size: 32, offset: 1184)
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "t_cpnext", scope: !277, file: !271, line: 682, baseType: !5270, size: 64, offset: 1216)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "t_cpprev", scope: !277, file: !271, line: 682, baseType: !5270, size: 64, offset: 1280)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "t_expires", scope: !277, file: !271, line: 688, baseType: !76, size: 64, offset: 1344)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "t_start_time", scope: !277, file: !271, line: 693, baseType: !3041, size: 64, offset: 1408)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "t_synchronous_commit", scope: !277, file: !271, line: 699, baseType: !28, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "t_need_data_flush", scope: !277, file: !271, line: 702, baseType: !59, size: 32, offset: 1504)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "t_private_list", scope: !277, file: !271, line: 708, baseType: !134, size: 128, offset: 1536)
!5526 = !{!5527, !5528, !5529, !5530, !5531, !5532, !5533, !5534, !5535}
!5527 = !DIEnumerator(name: "T_RUNNING", value: 0)
!5528 = !DIEnumerator(name: "T_LOCKED", value: 1)
!5529 = !DIEnumerator(name: "T_SWITCH", value: 2)
!5530 = !DIEnumerator(name: "T_FLUSH", value: 3)
!5531 = !DIEnumerator(name: "T_COMMIT", value: 4)
!5532 = !DIEnumerator(name: "T_COMMIT_DFLUSH", value: 5)
!5533 = !DIEnumerator(name: "T_COMMIT_JFLUSH", value: 6)
!5534 = !DIEnumerator(name: "T_COMMIT_CALLBACK", value: 7)
!5535 = !DIEnumerator(name: "T_FINISHED", value: 8)
!5536 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !5537, line: 10, baseType: !28, size: 32, elements: !5538)
!5537 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!5538 = !{!5539, !5540}
!5539 = !DIEnumerator(name: "false", value: 0)
!5540 = !DIEnumerator(name: "true", value: 1)
!5541 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !20, line: 364, baseType: !28, size: 32, elements: !5542)
!5542 = !{!5543, !5544, !5545, !5546, !5547, !5548, !5549}
!5543 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!5544 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!5545 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!5546 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!5547 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!5548 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!5549 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!5550 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ext4_li_mode", file: !5551, line: 2584, baseType: !28, size: 32, elements: !5552)
!5551 = !DIFile(filename: "fs/ext4/ext4.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e5787aa1e5cfdc086e99d72d01ea51d")
!5552 = !{!5553, !5554}
!5553 = !DIEnumerator(name: "EXT4_LI_MODE_PREFETCH_BBITMAP", value: 0)
!5554 = !DIEnumerator(name: "EXT4_LI_MODE_ITABLE", value: 1)
!5555 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !374, line: 119, baseType: !28, size: 32, elements: !5556)
!5556 = !{!5557, !5558, !5559, !5560, !5561}
!5557 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!5558 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!5559 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!5560 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!5561 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!5562 = !{!57, !1327, !76, !518, !5563, !5569, !447, !5570, !131, !5575, !652, !59}
!5563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5564, size: 64)
!5564 = !DIDerivedType(tag: DW_TAG_typedef, name: "ext4_acl_header", file: !5565, line: 25, baseType: !5566)
!5565 = !DIFile(filename: "fs/ext4/acl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b7f86ec4ba748044b11770a84ebe726")
!5566 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5565, line: 23, size: 32, elements: !5567)
!5567 = !{!5568}
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "a_version", scope: !5566, file: !5565, line: 24, baseType: !5569, size: 32)
!5569 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !1370, line: 38, baseType: !447)
!5570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5571, size: 64)
!5571 = !DIDerivedType(tag: DW_TAG_typedef, name: "ext4_acl_entry", file: !5565, line: 16, baseType: !5572)
!5572 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5565, line: 12, size: 64, elements: !5573)
!5573 = !{!5574, !5576, !5577}
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "e_tag", scope: !5572, file: !5565, line: 13, baseType: !5575, size: 16)
!5575 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !1370, line: 36, baseType: !131)
!5576 = !DIDerivedType(tag: DW_TAG_member, name: "e_perm", scope: !5572, file: !5565, line: 14, baseType: !5575, size: 16, offset: 16)
!5577 = !DIDerivedType(tag: DW_TAG_member, name: "e_id", scope: !5572, file: !5565, line: 15, baseType: !5569, size: 32, offset: 32)
!5578 = !{!0, !7, !12, !18}
!5579 = !{i32 7, !"Dwarf Version", i32 5}
!5580 = !{i32 2, !"Debug Info Version", i32 3}
!5581 = !{i32 1, !"wchar_size", i32 2}
!5582 = !{i32 8, !"cf-protection-branch", i32 1}
!5583 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5584 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5585 = !{i32 1, !"Code Model", i32 2}
!5586 = !{i32 1, !"override-stack-alignment", i32 8}
!5587 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5588 = distinct !DISubprogram(name: "ext4_get_acl", scope: !2, file: !2, line: 145, type: !4786, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5589)
!5589 = !{!5590, !5591, !5592, !5593, !5594, !5595, !5596}
!5590 = !DILocalVariable(name: "inode", arg: 1, scope: !5588, file: !2, line: 145, type: !345)
!5591 = !DILocalVariable(name: "type", arg: 2, scope: !5588, file: !2, line: 145, type: !59)
!5592 = !DILocalVariable(name: "rcu", arg: 3, scope: !5588, file: !2, line: 145, type: !880)
!5593 = !DILocalVariable(name: "name_index", scope: !5588, file: !2, line: 147, type: !59)
!5594 = !DILocalVariable(name: "value", scope: !5588, file: !2, line: 148, type: !518)
!5595 = !DILocalVariable(name: "acl", scope: !5588, file: !2, line: 149, type: !368)
!5596 = !DILocalVariable(name: "retval", scope: !5588, file: !2, line: 150, type: !59)
!5597 = !DILocation(line: 145, column: 28, scope: !5588)
!5598 = !DILocation(line: 145, column: 39, scope: !5588)
!5599 = !DILocation(line: 145, column: 50, scope: !5588)
!5600 = !DILocation(line: 147, column: 2, scope: !5588)
!5601 = !DILocation(line: 147, column: 6, scope: !5588)
!5602 = !DILocation(line: 148, column: 2, scope: !5588)
!5603 = !DILocation(line: 148, column: 8, scope: !5588)
!5604 = !DILocation(line: 149, column: 2, scope: !5588)
!5605 = !DILocation(line: 149, column: 20, scope: !5588)
!5606 = !DILocation(line: 150, column: 2, scope: !5588)
!5607 = !DILocation(line: 150, column: 6, scope: !5588)
!5608 = !DILocation(line: 152, column: 6, scope: !5609)
!5609 = distinct !DILexicalBlock(scope: !5588, file: !2, line: 152, column: 6)
!5610 = !{i8 0, i8 2}
!5611 = !DILocation(line: 152, column: 6, scope: !5588)
!5612 = !DILocation(line: 153, column: 10, scope: !5609)
!5613 = !DILocation(line: 153, column: 3, scope: !5609)
!5614 = !DILocation(line: 155, column: 10, scope: !5588)
!5615 = !DILocation(line: 155, column: 2, scope: !5588)
!5616 = !DILocation(line: 157, column: 14, scope: !5617)
!5617 = distinct !DILexicalBlock(scope: !5588, file: !2, line: 155, column: 16)
!5618 = !DILocation(line: 158, column: 3, scope: !5617)
!5619 = !DILocation(line: 160, column: 14, scope: !5617)
!5620 = !DILocation(line: 161, column: 3, scope: !5617)
!5621 = !DILocation(line: 163, column: 3, scope: !5617)
!5622 = !DILocation(line: 163, column: 3, scope: !5623)
!5623 = distinct !DILexicalBlock(scope: !5617, file: !2, line: 163, column: 3)
!5624 = !DILocation(line: 163, column: 3, scope: !5625)
!5625 = distinct !DILexicalBlock(scope: !5623, file: !2, line: 163, column: 3)
!5626 = !DILocation(line: 163, column: 3, scope: !5627)
!5627 = distinct !DILexicalBlock(scope: !5623, file: !2, line: 163, column: 3)
!5628 = !{i64 2156168974, i64 2156169003, i64 2156169049, i64 2156169107, i64 2156169161, i64 2156169215, i64 2156169270, i64 2156169301}
!5629 = !DILocation(line: 164, column: 2, scope: !5617)
!5630 = !DILocation(line: 165, column: 26, scope: !5588)
!5631 = !DILocation(line: 165, column: 33, scope: !5588)
!5632 = !DILocation(line: 165, column: 11, scope: !5588)
!5633 = !DILocation(line: 165, column: 9, scope: !5588)
!5634 = !DILocation(line: 166, column: 6, scope: !5635)
!5635 = distinct !DILexicalBlock(scope: !5588, file: !2, line: 166, column: 6)
!5636 = !DILocation(line: 166, column: 13, scope: !5635)
!5637 = !DILocation(line: 166, column: 6, scope: !5588)
!5638 = !DILocation(line: 167, column: 19, scope: !5639)
!5639 = distinct !DILexicalBlock(scope: !5635, file: !2, line: 166, column: 18)
!5640 = !DILocation(line: 167, column: 11, scope: !5639)
!5641 = !DILocation(line: 167, column: 9, scope: !5639)
!5642 = !DILocation(line: 168, column: 8, scope: !5643)
!5643 = distinct !DILexicalBlock(scope: !5639, file: !2, line: 168, column: 7)
!5644 = !DILocation(line: 168, column: 7, scope: !5639)
!5645 = !DILocation(line: 169, column: 11, scope: !5643)
!5646 = !DILocation(line: 169, column: 4, scope: !5643)
!5647 = !DILocation(line: 170, column: 27, scope: !5639)
!5648 = !DILocation(line: 170, column: 34, scope: !5639)
!5649 = !DILocation(line: 170, column: 50, scope: !5639)
!5650 = !DILocation(line: 170, column: 57, scope: !5639)
!5651 = !DILocation(line: 170, column: 12, scope: !5639)
!5652 = !DILocation(line: 170, column: 10, scope: !5639)
!5653 = !DILocation(line: 171, column: 2, scope: !5639)
!5654 = !DILocation(line: 172, column: 6, scope: !5655)
!5655 = distinct !DILexicalBlock(scope: !5588, file: !2, line: 172, column: 6)
!5656 = !DILocation(line: 172, column: 13, scope: !5655)
!5657 = !DILocation(line: 172, column: 6, scope: !5588)
!5658 = !DILocation(line: 173, column: 28, scope: !5655)
!5659 = !DILocation(line: 173, column: 35, scope: !5655)
!5660 = !DILocation(line: 173, column: 9, scope: !5655)
!5661 = !DILocation(line: 173, column: 7, scope: !5655)
!5662 = !DILocation(line: 173, column: 3, scope: !5655)
!5663 = !DILocation(line: 174, column: 11, scope: !5664)
!5664 = distinct !DILexicalBlock(scope: !5655, file: !2, line: 174, column: 11)
!5665 = !DILocation(line: 174, column: 18, scope: !5664)
!5666 = !DILocation(line: 174, column: 30, scope: !5664)
!5667 = !DILocation(line: 174, column: 33, scope: !5664)
!5668 = !DILocation(line: 174, column: 40, scope: !5664)
!5669 = !DILocation(line: 174, column: 11, scope: !5655)
!5670 = !DILocation(line: 175, column: 7, scope: !5664)
!5671 = !DILocation(line: 175, column: 3, scope: !5664)
!5672 = !DILocation(line: 177, column: 17, scope: !5664)
!5673 = !DILocation(line: 177, column: 9, scope: !5664)
!5674 = !DILocation(line: 177, column: 7, scope: !5664)
!5675 = !DILocation(line: 178, column: 8, scope: !5588)
!5676 = !DILocation(line: 178, column: 2, scope: !5588)
!5677 = !DILocation(line: 180, column: 9, scope: !5588)
!5678 = !DILocation(line: 180, column: 2, scope: !5588)
!5679 = !DILocation(line: 181, column: 1, scope: !5588)
!5680 = distinct !DISubprogram(name: "ERR_PTR", scope: !5681, file: !5681, line: 39, type: !5682, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5684)
!5681 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!5682 = !DISubroutineType(types: !5683)
!5683 = !{!57, !652}
!5684 = !{!5685}
!5685 = !DILocalVariable(name: "error", arg: 1, scope: !5680, file: !5681, line: 39, type: !652)
!5686 = !DILocation(line: 39, column: 48, scope: !5680)
!5687 = !DILocation(line: 41, column: 18, scope: !5680)
!5688 = !DILocation(line: 41, column: 9, scope: !5680)
!5689 = !DILocation(line: 41, column: 2, scope: !5680)
!5690 = !DISubprogram(name: "ext4_xattr_get", scope: !5691, file: !5691, line: 178, type: !5692, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5691 = !DIFile(filename: "fs/ext4/xattr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c1efa48296e5da0997ed36f9a75d2886")
!5692 = !DISubroutineType(types: !5693)
!5693 = !{!59, !345, !59, !55, !57, !72}
!5694 = distinct !DISubprogram(name: "kmalloc", scope: !20, file: !20, line: 591, type: !5695, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5697)
!5695 = !DISubroutineType(types: !5696)
!5696 = !{!57, !72, !1327}
!5697 = !{!5698, !5699, !5700}
!5698 = !DILocalVariable(name: "size", arg: 1, scope: !5694, file: !20, line: 591, type: !72)
!5699 = !DILocalVariable(name: "flags", arg: 2, scope: !5694, file: !20, line: 591, type: !1327)
!5700 = !DILocalVariable(name: "index", scope: !5701, file: !20, line: 594, type: !28)
!5701 = distinct !DILexicalBlock(scope: !5702, file: !20, line: 593, column: 42)
!5702 = distinct !DILexicalBlock(scope: !5694, file: !20, line: 593, column: 6)
!5703 = !DILocation(line: 591, column: 61, scope: !5694)
!5704 = !DILocation(line: 591, column: 73, scope: !5694)
!5705 = !DILocation(line: 593, column: 27, scope: !5702)
!5706 = !DILocation(line: 593, column: 6, scope: !5702)
!5707 = !DILocation(line: 593, column: 33, scope: !5702)
!5708 = !DILocation(line: 593, column: 36, scope: !5702)
!5709 = !DILocation(line: 593, column: 6, scope: !5694)
!5710 = !DILocation(line: 594, column: 3, scope: !5701)
!5711 = !DILocation(line: 594, column: 16, scope: !5701)
!5712 = !DILocation(line: 596, column: 7, scope: !5713)
!5713 = distinct !DILexicalBlock(scope: !5701, file: !20, line: 596, column: 7)
!5714 = !DILocation(line: 596, column: 12, scope: !5713)
!5715 = !DILocation(line: 596, column: 7, scope: !5701)
!5716 = !DILocation(line: 597, column: 25, scope: !5713)
!5717 = !DILocation(line: 597, column: 31, scope: !5713)
!5718 = !DILocation(line: 597, column: 11, scope: !5713)
!5719 = !DILocation(line: 597, column: 4, scope: !5713)
!5720 = !DILocation(line: 599, column: 11, scope: !5701)
!5721 = !DILocation(line: 599, column: 9, scope: !5701)
!5722 = !DILocation(line: 601, column: 33, scope: !5701)
!5723 = !DILocation(line: 601, column: 40, scope: !5701)
!5724 = !DILocation(line: 601, column: 20, scope: !5701)
!5725 = !DILocation(line: 601, column: 5, scope: !5701)
!5726 = !DILocation(line: 601, column: 51, scope: !5701)
!5727 = !DILocation(line: 602, column: 5, scope: !5701)
!5728 = !DILocation(line: 602, column: 12, scope: !5701)
!5729 = !DILocation(line: 600, column: 10, scope: !5701)
!5730 = !DILocation(line: 600, column: 3, scope: !5701)
!5731 = !DILocation(line: 603, column: 2, scope: !5702)
!5732 = !DILocation(line: 604, column: 19, scope: !5694)
!5733 = !DILocation(line: 604, column: 25, scope: !5694)
!5734 = !DILocation(line: 604, column: 9, scope: !5694)
!5735 = !DILocation(line: 604, column: 2, scope: !5694)
!5736 = !DILocation(line: 605, column: 1, scope: !5694)
!5737 = distinct !DISubprogram(name: "ext4_acl_from_disk", scope: !2, file: !2, line: 18, type: !5738, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5740)
!5738 = !DISubroutineType(types: !5739)
!5739 = !{!368, !1511, !72}
!5740 = !{!5741, !5742, !5743, !5744, !5745, !5746, !5747, !5751}
!5741 = !DILocalVariable(name: "value", arg: 1, scope: !5737, file: !2, line: 18, type: !1511)
!5742 = !DILocalVariable(name: "size", arg: 2, scope: !5737, file: !2, line: 18, type: !72)
!5743 = !DILocalVariable(name: "end", scope: !5737, file: !2, line: 20, type: !55)
!5744 = !DILocalVariable(name: "n", scope: !5737, file: !2, line: 21, type: !59)
!5745 = !DILocalVariable(name: "count", scope: !5737, file: !2, line: 21, type: !59)
!5746 = !DILocalVariable(name: "acl", scope: !5737, file: !2, line: 22, type: !368)
!5747 = !DILocalVariable(name: "entry", scope: !5748, file: !2, line: 41, type: !5570)
!5748 = distinct !DILexicalBlock(scope: !5749, file: !2, line: 40, column: 30)
!5749 = distinct !DILexicalBlock(scope: !5750, file: !2, line: 40, column: 2)
!5750 = distinct !DILexicalBlock(scope: !5737, file: !2, line: 40, column: 2)
!5751 = !DILabel(scope: !5737, name: "fail", file: !2, line: 82)
!5752 = !DILocation(line: 18, column: 32, scope: !5737)
!5753 = !DILocation(line: 18, column: 46, scope: !5737)
!5754 = !DILocation(line: 20, column: 2, scope: !5737)
!5755 = !DILocation(line: 20, column: 14, scope: !5737)
!5756 = !DILocation(line: 20, column: 28, scope: !5737)
!5757 = !DILocation(line: 20, column: 36, scope: !5737)
!5758 = !DILocation(line: 20, column: 34, scope: !5737)
!5759 = !DILocation(line: 21, column: 2, scope: !5737)
!5760 = !DILocation(line: 21, column: 6, scope: !5737)
!5761 = !DILocation(line: 21, column: 9, scope: !5737)
!5762 = !DILocation(line: 22, column: 2, scope: !5737)
!5763 = !DILocation(line: 22, column: 20, scope: !5737)
!5764 = !DILocation(line: 24, column: 7, scope: !5765)
!5765 = distinct !DILexicalBlock(scope: !5737, file: !2, line: 24, column: 6)
!5766 = !DILocation(line: 24, column: 6, scope: !5737)
!5767 = !DILocation(line: 25, column: 3, scope: !5765)
!5768 = !DILocation(line: 26, column: 6, scope: !5769)
!5769 = distinct !DILexicalBlock(scope: !5737, file: !2, line: 26, column: 6)
!5770 = !DILocation(line: 26, column: 11, scope: !5769)
!5771 = !DILocation(line: 26, column: 6, scope: !5737)
!5772 = !DILocation(line: 27, column: 11, scope: !5769)
!5773 = !DILocation(line: 27, column: 4, scope: !5769)
!5774 = !DILocation(line: 28, column: 26, scope: !5775)
!5775 = distinct !DILexicalBlock(scope: !5737, file: !2, line: 28, column: 6)
!5776 = !DILocation(line: 28, column: 34, scope: !5775)
!5777 = !DILocation(line: 28, column: 44, scope: !5775)
!5778 = !DILocation(line: 28, column: 6, scope: !5737)
!5779 = !DILocation(line: 30, column: 10, scope: !5775)
!5780 = !DILocation(line: 30, column: 3, scope: !5775)
!5781 = !DILocation(line: 31, column: 18, scope: !5737)
!5782 = !DILocation(line: 31, column: 24, scope: !5737)
!5783 = !DILocation(line: 31, column: 8, scope: !5737)
!5784 = !DILocation(line: 32, column: 25, scope: !5737)
!5785 = !DILocation(line: 32, column: 10, scope: !5737)
!5786 = !DILocation(line: 32, column: 8, scope: !5737)
!5787 = !DILocation(line: 33, column: 6, scope: !5788)
!5788 = distinct !DILexicalBlock(scope: !5737, file: !2, line: 33, column: 6)
!5789 = !DILocation(line: 33, column: 12, scope: !5788)
!5790 = !DILocation(line: 33, column: 6, scope: !5737)
!5791 = !DILocation(line: 34, column: 10, scope: !5788)
!5792 = !DILocation(line: 34, column: 3, scope: !5788)
!5793 = !DILocation(line: 35, column: 6, scope: !5794)
!5794 = distinct !DILexicalBlock(scope: !5737, file: !2, line: 35, column: 6)
!5795 = !DILocation(line: 35, column: 12, scope: !5794)
!5796 = !DILocation(line: 35, column: 6, scope: !5737)
!5797 = !DILocation(line: 36, column: 3, scope: !5794)
!5798 = !DILocation(line: 37, column: 24, scope: !5737)
!5799 = !DILocation(line: 37, column: 8, scope: !5737)
!5800 = !DILocation(line: 37, column: 6, scope: !5737)
!5801 = !DILocation(line: 38, column: 7, scope: !5802)
!5802 = distinct !DILexicalBlock(scope: !5737, file: !2, line: 38, column: 6)
!5803 = !DILocation(line: 38, column: 6, scope: !5737)
!5804 = !DILocation(line: 39, column: 10, scope: !5802)
!5805 = !DILocation(line: 39, column: 3, scope: !5802)
!5806 = !DILocation(line: 40, column: 9, scope: !5750)
!5807 = !DILocation(line: 40, column: 7, scope: !5750)
!5808 = !DILocation(line: 40, column: 14, scope: !5749)
!5809 = !DILocation(line: 40, column: 18, scope: !5749)
!5810 = !DILocation(line: 40, column: 16, scope: !5749)
!5811 = !DILocation(line: 40, column: 2, scope: !5750)
!5812 = !DILocation(line: 41, column: 3, scope: !5748)
!5813 = !DILocation(line: 41, column: 19, scope: !5748)
!5814 = !DILocation(line: 42, column: 22, scope: !5748)
!5815 = !DILocation(line: 43, column: 15, scope: !5816)
!5816 = distinct !DILexicalBlock(scope: !5748, file: !2, line: 43, column: 7)
!5817 = !DILocation(line: 43, column: 21, scope: !5816)
!5818 = !DILocation(line: 43, column: 54, scope: !5816)
!5819 = !DILocation(line: 43, column: 52, scope: !5816)
!5820 = !DILocation(line: 43, column: 7, scope: !5748)
!5821 = !DILocation(line: 44, column: 4, scope: !5816)
!5822 = !DILocation(line: 45, column: 30, scope: !5748)
!5823 = !DILocation(line: 45, column: 3, scope: !5748)
!5824 = !DILocation(line: 45, column: 8, scope: !5748)
!5825 = !DILocation(line: 45, column: 18, scope: !5748)
!5826 = !DILocation(line: 45, column: 21, scope: !5748)
!5827 = !DILocation(line: 45, column: 28, scope: !5748)
!5828 = !DILocation(line: 46, column: 30, scope: !5748)
!5829 = !DILocation(line: 46, column: 3, scope: !5748)
!5830 = !DILocation(line: 46, column: 8, scope: !5748)
!5831 = !DILocation(line: 46, column: 18, scope: !5748)
!5832 = !DILocation(line: 46, column: 21, scope: !5748)
!5833 = !DILocation(line: 46, column: 28, scope: !5748)
!5834 = !DILocation(line: 48, column: 11, scope: !5748)
!5835 = !DILocation(line: 48, column: 16, scope: !5748)
!5836 = !DILocation(line: 48, column: 26, scope: !5748)
!5837 = !DILocation(line: 48, column: 29, scope: !5748)
!5838 = !DILocation(line: 48, column: 3, scope: !5748)
!5839 = !DILocation(line: 53, column: 20, scope: !5840)
!5840 = distinct !DILexicalBlock(scope: !5748, file: !2, line: 48, column: 36)
!5841 = !DILocation(line: 53, column: 26, scope: !5840)
!5842 = !DILocation(line: 53, column: 10, scope: !5840)
!5843 = !DILocation(line: 55, column: 4, scope: !5840)
!5844 = !DILocation(line: 58, column: 20, scope: !5840)
!5845 = !DILocation(line: 58, column: 26, scope: !5840)
!5846 = !DILocation(line: 58, column: 10, scope: !5840)
!5847 = !DILocation(line: 59, column: 16, scope: !5848)
!5848 = distinct !DILexicalBlock(scope: !5840, file: !2, line: 59, column: 8)
!5849 = !DILocation(line: 59, column: 24, scope: !5848)
!5850 = !DILocation(line: 59, column: 22, scope: !5848)
!5851 = !DILocation(line: 59, column: 8, scope: !5840)
!5852 = !DILocation(line: 60, column: 5, scope: !5848)
!5853 = !DILocation(line: 61, column: 4, scope: !5840)
!5854 = !DILocation(line: 61, column: 9, scope: !5840)
!5855 = !DILocation(line: 61, column: 19, scope: !5840)
!5856 = !DILocation(line: 61, column: 22, scope: !5840)
!5857 = !DILocation(line: 62, column: 5, scope: !5840)
!5858 = !DILocation(line: 63, column: 8, scope: !5840)
!5859 = !DILocation(line: 64, column: 4, scope: !5840)
!5860 = !DILocation(line: 66, column: 20, scope: !5840)
!5861 = !DILocation(line: 66, column: 26, scope: !5840)
!5862 = !DILocation(line: 66, column: 10, scope: !5840)
!5863 = !DILocation(line: 67, column: 16, scope: !5864)
!5864 = distinct !DILexicalBlock(scope: !5840, file: !2, line: 67, column: 8)
!5865 = !DILocation(line: 67, column: 24, scope: !5864)
!5866 = !DILocation(line: 67, column: 22, scope: !5864)
!5867 = !DILocation(line: 67, column: 8, scope: !5840)
!5868 = !DILocation(line: 68, column: 5, scope: !5864)
!5869 = !DILocation(line: 69, column: 4, scope: !5840)
!5870 = !DILocation(line: 69, column: 9, scope: !5840)
!5871 = !DILocation(line: 69, column: 19, scope: !5840)
!5872 = !DILocation(line: 69, column: 22, scope: !5840)
!5873 = !DILocation(line: 70, column: 5, scope: !5840)
!5874 = !DILocation(line: 71, column: 8, scope: !5840)
!5875 = !DILocation(line: 72, column: 4, scope: !5840)
!5876 = !DILocation(line: 75, column: 4, scope: !5840)
!5877 = !DILocation(line: 77, column: 2, scope: !5749)
!5878 = !DILocation(line: 77, column: 2, scope: !5748)
!5879 = !DILocation(line: 40, column: 26, scope: !5749)
!5880 = !DILocation(line: 40, column: 2, scope: !5749)
!5881 = distinct !{!5881, !5811, !5882, !5883, !5884}
!5882 = !DILocation(line: 77, column: 2, scope: !5750)
!5883 = !{!"llvm.loop.mustprogress"}
!5884 = !{!"llvm.loop.unroll.disable"}
!5885 = !DILocation(line: 78, column: 6, scope: !5886)
!5886 = distinct !DILexicalBlock(scope: !5737, file: !2, line: 78, column: 6)
!5887 = !DILocation(line: 78, column: 15, scope: !5886)
!5888 = !DILocation(line: 78, column: 12, scope: !5886)
!5889 = !DILocation(line: 78, column: 6, scope: !5737)
!5890 = !DILocation(line: 79, column: 3, scope: !5886)
!5891 = !DILocation(line: 80, column: 9, scope: !5737)
!5892 = !DILocation(line: 80, column: 2, scope: !5737)
!5893 = !DILocation(line: 82, column: 1, scope: !5737)
!5894 = !DILocation(line: 83, column: 20, scope: !5737)
!5895 = !DILocation(line: 83, column: 2, scope: !5737)
!5896 = !DILocation(line: 84, column: 9, scope: !5737)
!5897 = !DILocation(line: 84, column: 2, scope: !5737)
!5898 = !DILocation(line: 85, column: 1, scope: !5737)
!5899 = !DISubprogram(name: "kfree", scope: !20, file: !20, line: 227, type: !5900, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5900 = !DISubroutineType(types: !5901)
!5901 = !{null, !1511}
!5902 = distinct !DISubprogram(name: "ext4_set_acl", scope: !2, file: !2, line: 228, type: !4933, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5903)
!5903 = !{!5904, !5905, !5906, !5907, !5908, !5933, !5934, !5935, !5936, !5937, !5938, !5939, !5940, !5941}
!5904 = !DILocalVariable(name: "idmap", arg: 1, scope: !5902, file: !2, line: 228, type: !2603)
!5905 = !DILocalVariable(name: "dentry", arg: 2, scope: !5902, file: !2, line: 228, type: !412)
!5906 = !DILocalVariable(name: "acl", arg: 3, scope: !5902, file: !2, line: 229, type: !368)
!5907 = !DILocalVariable(name: "type", arg: 4, scope: !5902, file: !2, line: 229, type: !59)
!5908 = !DILocalVariable(name: "handle", scope: !5902, file: !2, line: 231, type: !5909)
!5909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5910, size: 64)
!5910 = !DIDerivedType(tag: DW_TAG_typedef, name: "handle_t", file: !271, line: 91, baseType: !5911)
!5911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jbd2_journal_handle", file: !271, line: 477, size: 448, elements: !5912)
!5912 = !{!5913, !5918, !5919, !5920, !5921, !5922, !5923, !5924, !5925, !5926, !5927, !5928, !5929, !5930, !5931, !5932}
!5913 = !DIDerivedType(tag: DW_TAG_member, scope: !5911, file: !271, line: 479, baseType: !5914, size: 64)
!5914 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5911, file: !271, line: 479, size: 64, elements: !5915)
!5915 = !{!5916, !5917}
!5916 = !DIDerivedType(tag: DW_TAG_member, name: "h_transaction", scope: !5914, file: !271, line: 480, baseType: !5270, size: 64)
!5917 = !DIDerivedType(tag: DW_TAG_member, name: "h_journal", scope: !5914, file: !271, line: 482, baseType: !280, size: 64)
!5918 = !DIDerivedType(tag: DW_TAG_member, name: "h_rsv_handle", scope: !5911, file: !271, line: 485, baseType: !5909, size: 64, offset: 64)
!5919 = !DIDerivedType(tag: DW_TAG_member, name: "h_total_credits", scope: !5911, file: !271, line: 486, baseType: !59, size: 32, offset: 128)
!5920 = !DIDerivedType(tag: DW_TAG_member, name: "h_revoke_credits", scope: !5911, file: !271, line: 487, baseType: !59, size: 32, offset: 160)
!5921 = !DIDerivedType(tag: DW_TAG_member, name: "h_revoke_credits_requested", scope: !5911, file: !271, line: 488, baseType: !59, size: 32, offset: 192)
!5922 = !DIDerivedType(tag: DW_TAG_member, name: "h_ref", scope: !5911, file: !271, line: 489, baseType: !59, size: 32, offset: 224)
!5923 = !DIDerivedType(tag: DW_TAG_member, name: "h_err", scope: !5911, file: !271, line: 490, baseType: !59, size: 32, offset: 256)
!5924 = !DIDerivedType(tag: DW_TAG_member, name: "h_sync", scope: !5911, file: !271, line: 493, baseType: !28, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!5925 = !DIDerivedType(tag: DW_TAG_member, name: "h_jdata", scope: !5911, file: !271, line: 494, baseType: !28, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!5926 = !DIDerivedType(tag: DW_TAG_member, name: "h_reserved", scope: !5911, file: !271, line: 495, baseType: !28, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!5927 = !DIDerivedType(tag: DW_TAG_member, name: "h_aborted", scope: !5911, file: !271, line: 496, baseType: !28, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!5928 = !DIDerivedType(tag: DW_TAG_member, name: "h_type", scope: !5911, file: !271, line: 497, baseType: !28, size: 8, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!5929 = !DIDerivedType(tag: DW_TAG_member, name: "h_line_no", scope: !5911, file: !271, line: 498, baseType: !28, size: 16, offset: 300, flags: DIFlagBitField, extraData: i64 288)
!5930 = !DIDerivedType(tag: DW_TAG_member, name: "h_start_jiffies", scope: !5911, file: !271, line: 500, baseType: !76, size: 64, offset: 320)
!5931 = !DIDerivedType(tag: DW_TAG_member, name: "h_requested_credits", scope: !5911, file: !271, line: 501, baseType: !28, size: 32, offset: 384)
!5932 = !DIDerivedType(tag: DW_TAG_member, name: "saved_alloc_context", scope: !5911, file: !271, line: 503, baseType: !28, size: 32, offset: 416)
!5933 = !DILocalVariable(name: "error", scope: !5902, file: !2, line: 232, type: !59)
!5934 = !DILocalVariable(name: "credits", scope: !5902, file: !2, line: 232, type: !59)
!5935 = !DILocalVariable(name: "retries", scope: !5902, file: !2, line: 232, type: !59)
!5936 = !DILocalVariable(name: "acl_size", scope: !5902, file: !2, line: 233, type: !72)
!5937 = !DILocalVariable(name: "inode", scope: !5902, file: !2, line: 234, type: !345)
!5938 = !DILocalVariable(name: "mode", scope: !5902, file: !2, line: 235, type: !61)
!5939 = !DILocalVariable(name: "update_mode", scope: !5902, file: !2, line: 236, type: !59)
!5940 = !DILabel(scope: !5902, name: "retry", file: !2, line: 241)
!5941 = !DILabel(scope: !5902, name: "out_stop", file: !2, line: 265)
!5942 = !DILocation(line: 228, column: 32, scope: !5902)
!5943 = !DILocation(line: 228, column: 54, scope: !5902)
!5944 = !DILocation(line: 229, column: 25, scope: !5902)
!5945 = !DILocation(line: 229, column: 34, scope: !5902)
!5946 = !DILocation(line: 231, column: 2, scope: !5902)
!5947 = !DILocation(line: 231, column: 12, scope: !5902)
!5948 = !DILocation(line: 232, column: 2, scope: !5902)
!5949 = !DILocation(line: 232, column: 6, scope: !5902)
!5950 = !DILocation(line: 232, column: 13, scope: !5902)
!5951 = !DILocation(line: 232, column: 22, scope: !5902)
!5952 = !DILocation(line: 233, column: 2, scope: !5902)
!5953 = !DILocation(line: 233, column: 9, scope: !5902)
!5954 = !DILocation(line: 233, column: 20, scope: !5902)
!5955 = !DILocation(line: 233, column: 40, scope: !5902)
!5956 = !DILocation(line: 233, column: 45, scope: !5902)
!5957 = !DILocation(line: 233, column: 26, scope: !5902)
!5958 = !DILocation(line: 234, column: 2, scope: !5902)
!5959 = !DILocation(line: 234, column: 16, scope: !5902)
!5960 = !DILocation(line: 234, column: 32, scope: !5902)
!5961 = !DILocation(line: 234, column: 24, scope: !5902)
!5962 = !DILocation(line: 235, column: 2, scope: !5902)
!5963 = !DILocation(line: 235, column: 10, scope: !5902)
!5964 = !DILocation(line: 235, column: 17, scope: !5902)
!5965 = !DILocation(line: 235, column: 24, scope: !5902)
!5966 = !DILocation(line: 236, column: 2, scope: !5902)
!5967 = !DILocation(line: 236, column: 6, scope: !5902)
!5968 = !DILocation(line: 238, column: 27, scope: !5902)
!5969 = !DILocation(line: 238, column: 10, scope: !5902)
!5970 = !DILocation(line: 238, column: 8, scope: !5902)
!5971 = !DILocation(line: 239, column: 6, scope: !5972)
!5972 = distinct !DILexicalBlock(scope: !5902, file: !2, line: 239, column: 6)
!5973 = !DILocation(line: 239, column: 6, scope: !5902)
!5974 = !DILocation(line: 240, column: 10, scope: !5972)
!5975 = !DILocation(line: 240, column: 3, scope: !5972)
!5976 = !DILocation(line: 241, column: 1, scope: !5902)
!5977 = !DILocation(line: 242, column: 33, scope: !5902)
!5978 = !DILocation(line: 242, column: 40, scope: !5902)
!5979 = !DILocation(line: 242, column: 10, scope: !5902)
!5980 = !DILocation(line: 242, column: 8, scope: !5902)
!5981 = !DILocation(line: 244, column: 6, scope: !5982)
!5982 = distinct !DILexicalBlock(scope: !5902, file: !2, line: 244, column: 6)
!5983 = !DILocation(line: 244, column: 6, scope: !5902)
!5984 = !DILocation(line: 245, column: 10, scope: !5982)
!5985 = !DILocation(line: 245, column: 3, scope: !5982)
!5986 = !DILocation(line: 247, column: 11, scope: !5902)
!5987 = !DILocation(line: 247, column: 9, scope: !5902)
!5988 = !DILocation(line: 248, column: 13, scope: !5989)
!5989 = distinct !DILexicalBlock(scope: !5902, file: !2, line: 248, column: 6)
!5990 = !DILocation(line: 248, column: 6, scope: !5989)
!5991 = !DILocation(line: 248, column: 6, scope: !5902)
!5992 = !DILocation(line: 249, column: 18, scope: !5989)
!5993 = !DILocation(line: 249, column: 10, scope: !5989)
!5994 = !DILocation(line: 249, column: 3, scope: !5989)
!5995 = !DILocation(line: 251, column: 7, scope: !5996)
!5996 = distinct !DILexicalBlock(scope: !5902, file: !2, line: 251, column: 6)
!5997 = !DILocation(line: 251, column: 12, scope: !5996)
!5998 = !DILocation(line: 251, column: 32, scope: !5996)
!5999 = !DILocation(line: 251, column: 35, scope: !5996)
!6000 = !DILocation(line: 251, column: 6, scope: !5902)
!6001 = !DILocation(line: 252, column: 33, scope: !6002)
!6002 = distinct !DILexicalBlock(scope: !5996, file: !2, line: 251, column: 40)
!6003 = !DILocation(line: 252, column: 40, scope: !6002)
!6004 = !DILocation(line: 252, column: 11, scope: !6002)
!6005 = !DILocation(line: 252, column: 9, scope: !6002)
!6006 = !DILocation(line: 253, column: 7, scope: !6007)
!6007 = distinct !DILexicalBlock(scope: !6002, file: !2, line: 253, column: 7)
!6008 = !DILocation(line: 253, column: 7, scope: !6002)
!6009 = !DILocation(line: 254, column: 4, scope: !6007)
!6010 = !DILocation(line: 255, column: 7, scope: !6011)
!6011 = distinct !DILexicalBlock(scope: !6002, file: !2, line: 255, column: 7)
!6012 = !DILocation(line: 255, column: 15, scope: !6011)
!6013 = !DILocation(line: 255, column: 22, scope: !6011)
!6014 = !DILocation(line: 255, column: 12, scope: !6011)
!6015 = !DILocation(line: 255, column: 7, scope: !6002)
!6016 = !DILocation(line: 256, column: 16, scope: !6011)
!6017 = !DILocation(line: 256, column: 4, scope: !6011)
!6018 = !DILocation(line: 257, column: 2, scope: !6002)
!6019 = !DILocation(line: 259, column: 25, scope: !5902)
!6020 = !DILocation(line: 259, column: 33, scope: !5902)
!6021 = !DILocation(line: 259, column: 40, scope: !5902)
!6022 = !DILocation(line: 259, column: 46, scope: !5902)
!6023 = !DILocation(line: 259, column: 10, scope: !5902)
!6024 = !DILocation(line: 259, column: 8, scope: !5902)
!6025 = !DILocation(line: 260, column: 7, scope: !6026)
!6026 = distinct !DILexicalBlock(scope: !5902, file: !2, line: 260, column: 6)
!6027 = !DILocation(line: 260, column: 13, scope: !6026)
!6028 = !DILocation(line: 260, column: 16, scope: !6026)
!6029 = !DILocation(line: 260, column: 6, scope: !5902)
!6030 = !DILocation(line: 261, column: 19, scope: !6031)
!6031 = distinct !DILexicalBlock(scope: !6026, file: !2, line: 260, column: 29)
!6032 = !DILocation(line: 261, column: 3, scope: !6031)
!6033 = !DILocation(line: 261, column: 10, scope: !6031)
!6034 = !DILocation(line: 261, column: 17, scope: !6031)
!6035 = !DILocation(line: 262, column: 27, scope: !6031)
!6036 = !DILocation(line: 262, column: 3, scope: !6031)
!6037 = !DILocation(line: 263, column: 11, scope: !6031)
!6038 = !DILocation(line: 263, column: 9, scope: !6031)
!6039 = !DILocation(line: 264, column: 2, scope: !6031)
!6040 = !DILocation(line: 265, column: 1, scope: !5902)
!6041 = !DILocation(line: 266, column: 2, scope: !5902)
!6042 = !DILocation(line: 267, column: 6, scope: !6043)
!6043 = distinct !DILexicalBlock(scope: !5902, file: !2, line: 267, column: 6)
!6044 = !DILocation(line: 267, column: 12, scope: !6043)
!6045 = !DILocation(line: 267, column: 23, scope: !6043)
!6046 = !DILocation(line: 267, column: 50, scope: !6043)
!6047 = !DILocation(line: 267, column: 57, scope: !6043)
!6048 = !DILocation(line: 267, column: 26, scope: !6043)
!6049 = !DILocation(line: 267, column: 6, scope: !5902)
!6050 = !DILocation(line: 268, column: 3, scope: !6043)
!6051 = !DILocation(line: 269, column: 9, scope: !5902)
!6052 = !DILocation(line: 269, column: 2, scope: !5902)
!6053 = !DILocation(line: 270, column: 1, scope: !5902)
!6054 = distinct !DISubprogram(name: "ext4_acl_size", scope: !5565, file: !5565, line: 27, type: !6055, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !6057)
!6055 = !DISubroutineType(types: !6056)
!6056 = !{!72, !59}
!6057 = !{!6058}
!6058 = !DILocalVariable(name: "count", arg: 1, scope: !6054, file: !5565, line: 27, type: !59)
!6059 = !DILocation(line: 27, column: 40, scope: !6054)
!6060 = !DILocation(line: 29, column: 6, scope: !6061)
!6061 = distinct !DILexicalBlock(scope: !6054, file: !5565, line: 29, column: 6)
!6062 = !DILocation(line: 29, column: 12, scope: !6061)
!6063 = !DILocation(line: 29, column: 6, scope: !6054)
!6064 = !DILocation(line: 31, column: 10, scope: !6065)
!6065 = distinct !DILexicalBlock(scope: !6061, file: !5565, line: 29, column: 18)
!6066 = !DILocation(line: 31, column: 16, scope: !6065)
!6067 = !DILocation(line: 30, column: 34, scope: !6065)
!6068 = !DILocation(line: 30, column: 3, scope: !6065)
!6069 = !DILocation(line: 35, column: 11, scope: !6070)
!6070 = distinct !DILexicalBlock(scope: !6061, file: !5565, line: 32, column: 9)
!6071 = !DILocation(line: 35, column: 17, scope: !6070)
!6072 = !DILocation(line: 35, column: 10, scope: !6070)
!6073 = !DILocation(line: 35, column: 22, scope: !6070)
!6074 = !DILocation(line: 34, column: 43, scope: !6070)
!6075 = !DILocation(line: 33, column: 3, scope: !6070)
!6076 = !DILocation(line: 37, column: 1, scope: !6054)
!6077 = distinct !DISubprogram(name: "d_inode", scope: !414, file: !414, line: 514, type: !6078, scopeLine: 515, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !6080)
!6078 = !DISubroutineType(types: !6079)
!6079 = !{!345, !488}
!6080 = !{!6081}
!6081 = !DILocalVariable(name: "dentry", arg: 1, scope: !6077, file: !414, line: 514, type: !488)
!6082 = !DILocation(line: 514, column: 58, scope: !6077)
!6083 = !DILocation(line: 516, column: 9, scope: !6077)
!6084 = !DILocation(line: 516, column: 17, scope: !6077)
!6085 = !DILocation(line: 516, column: 2, scope: !6077)
!6086 = !DISubprogram(name: "dquot_initialize", scope: !6087, file: !6087, line: 43, type: !2336, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6087 = !DIFile(filename: "./include/linux/quotaops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6dc28cea268ecb45653da7e53975c60c")
!6088 = !DISubprogram(name: "ext4_xattr_set_credits", scope: !5691, file: !5691, line: 181, type: !6089, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6089 = !DISubroutineType(types: !6090)
!6090 = !{!59, !345, !72, !880, !2091}
!6091 = distinct !DISubprogram(name: "__ext4_journal_start", scope: !6092, file: !6092, line: 321, type: !6093, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !6095)
!6092 = !DIFile(filename: "fs/ext4/ext4_jbd2.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06664dac23645b85b5d9fb80da68cf79")
!6093 = !DISubroutineType(types: !6094)
!6094 = !{!5909, !345, !28, !59, !59, !59, !59}
!6095 = !{!6096, !6097, !6098, !6099, !6100, !6101}
!6096 = !DILocalVariable(name: "inode", arg: 1, scope: !6091, file: !6092, line: 321, type: !345)
!6097 = !DILocalVariable(name: "line", arg: 2, scope: !6091, file: !6092, line: 322, type: !28)
!6098 = !DILocalVariable(name: "type", arg: 3, scope: !6091, file: !6092, line: 322, type: !59)
!6099 = !DILocalVariable(name: "blocks", arg: 4, scope: !6091, file: !6092, line: 323, type: !59)
!6100 = !DILocalVariable(name: "rsv_blocks", arg: 5, scope: !6091, file: !6092, line: 323, type: !59)
!6101 = !DILocalVariable(name: "revoke_creds", arg: 6, scope: !6091, file: !6092, line: 324, type: !59)
!6102 = !DILocation(line: 321, column: 60, scope: !6091)
!6103 = !DILocation(line: 322, column: 24, scope: !6091)
!6104 = !DILocation(line: 322, column: 34, scope: !6091)
!6105 = !DILocation(line: 323, column: 15, scope: !6091)
!6106 = !DILocation(line: 323, column: 27, scope: !6091)
!6107 = !DILocation(line: 324, column: 15, scope: !6091)
!6108 = !DILocation(line: 326, column: 33, scope: !6091)
!6109 = !DILocation(line: 326, column: 40, scope: !6091)
!6110 = !DILocation(line: 326, column: 47, scope: !6091)
!6111 = !DILocation(line: 326, column: 53, scope: !6091)
!6112 = !DILocation(line: 326, column: 59, scope: !6091)
!6113 = !DILocation(line: 326, column: 65, scope: !6091)
!6114 = !DILocation(line: 327, column: 12, scope: !6091)
!6115 = !DILocation(line: 327, column: 24, scope: !6091)
!6116 = !DILocation(line: 326, column: 9, scope: !6091)
!6117 = !DILocation(line: 326, column: 2, scope: !6091)
!6118 = distinct !DISubprogram(name: "ext4_trans_default_revoke_credits", scope: !6092, file: !6092, line: 300, type: !2350, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !6119)
!6119 = !{!6120}
!6120 = !DILocalVariable(name: "sb", arg: 1, scope: !6118, file: !6092, line: 300, type: !529)
!6121 = !DILocation(line: 300, column: 73, scope: !6118)
!6122 = !DILocation(line: 302, column: 43, scope: !6118)
!6123 = !DILocation(line: 302, column: 9, scope: !6118)
!6124 = !DILocation(line: 302, column: 2, scope: !6118)
!6125 = distinct !DISubprogram(name: "IS_ERR", scope: !5681, file: !5681, line: 59, type: !6126, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !6128)
!6126 = !DISubroutineType(types: !6127)
!6127 = !{!880, !1511}
!6128 = !{!6129}
!6129 = !DILocalVariable(name: "ptr", arg: 1, scope: !6125, file: !5681, line: 59, type: !1511)
!6130 = !DILocation(line: 59, column: 60, scope: !6125)
!6131 = !DILocation(line: 61, column: 9, scope: !6125)
!6132 = !DILocation(line: 61, column: 2, scope: !6125)
!6133 = distinct !DISubprogram(name: "PTR_ERR", scope: !5681, file: !5681, line: 49, type: !6134, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !6136)
!6134 = !DISubroutineType(types: !6135)
!6135 = !{!652, !1511}
!6136 = !{!6137}
!6137 = !DILocalVariable(name: "ptr", arg: 1, scope: !6133, file: !5681, line: 49, type: !1511)
!6138 = !DILocation(line: 49, column: 61, scope: !6133)
!6139 = !DILocation(line: 51, column: 16, scope: !6133)
!6140 = !DILocation(line: 51, column: 9, scope: !6133)
!6141 = !DILocation(line: 51, column: 2, scope: !6133)
!6142 = !DISubprogram(name: "posix_acl_update_mode", scope: !370, file: !370, line: 82, type: !6143, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6143 = !DISubroutineType(types: !6144)
!6144 = !{!59, !2603, !345, !2795, !6145}
!6145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!6146 = distinct !DISubprogram(name: "__ext4_set_acl", scope: !2, file: !2, line: 189, type: !6147, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !6149)
!6147 = !DISubroutineType(types: !6148)
!6148 = !{!59, !5909, !345, !59, !368, !59}
!6149 = !{!6150, !6151, !6152, !6153, !6154, !6155, !6156, !6157, !6158}
!6150 = !DILocalVariable(name: "handle", arg: 1, scope: !6146, file: !2, line: 189, type: !5909)
!6151 = !DILocalVariable(name: "inode", arg: 2, scope: !6146, file: !2, line: 189, type: !345)
!6152 = !DILocalVariable(name: "type", arg: 3, scope: !6146, file: !2, line: 189, type: !59)
!6153 = !DILocalVariable(name: "acl", arg: 4, scope: !6146, file: !2, line: 190, type: !368)
!6154 = !DILocalVariable(name: "xattr_flags", arg: 5, scope: !6146, file: !2, line: 190, type: !59)
!6155 = !DILocalVariable(name: "name_index", scope: !6146, file: !2, line: 192, type: !59)
!6156 = !DILocalVariable(name: "value", scope: !6146, file: !2, line: 193, type: !57)
!6157 = !DILocalVariable(name: "size", scope: !6146, file: !2, line: 194, type: !72)
!6158 = !DILocalVariable(name: "error", scope: !6146, file: !2, line: 195, type: !59)
!6159 = !DILocation(line: 189, column: 26, scope: !6146)
!6160 = !DILocation(line: 189, column: 48, scope: !6146)
!6161 = !DILocation(line: 189, column: 59, scope: !6146)
!6162 = !DILocation(line: 190, column: 25, scope: !6146)
!6163 = !DILocation(line: 190, column: 34, scope: !6146)
!6164 = !DILocation(line: 192, column: 2, scope: !6146)
!6165 = !DILocation(line: 192, column: 6, scope: !6146)
!6166 = !DILocation(line: 193, column: 2, scope: !6146)
!6167 = !DILocation(line: 193, column: 8, scope: !6146)
!6168 = !DILocation(line: 194, column: 2, scope: !6146)
!6169 = !DILocation(line: 194, column: 9, scope: !6146)
!6170 = !DILocation(line: 195, column: 2, scope: !6146)
!6171 = !DILocation(line: 195, column: 6, scope: !6146)
!6172 = !DILocation(line: 197, column: 10, scope: !6146)
!6173 = !DILocation(line: 197, column: 2, scope: !6146)
!6174 = !DILocation(line: 199, column: 14, scope: !6175)
!6175 = distinct !DILexicalBlock(scope: !6146, file: !2, line: 197, column: 16)
!6176 = !DILocation(line: 200, column: 3, scope: !6175)
!6177 = !DILocation(line: 203, column: 14, scope: !6175)
!6178 = !DILocation(line: 204, column: 8, scope: !6179)
!6179 = distinct !DILexicalBlock(scope: !6175, file: !2, line: 204, column: 7)
!6180 = !DILocation(line: 204, column: 7, scope: !6175)
!6181 = !DILocation(line: 205, column: 11, scope: !6179)
!6182 = !DILocation(line: 205, column: 4, scope: !6179)
!6183 = !DILocation(line: 206, column: 3, scope: !6175)
!6184 = !DILocation(line: 209, column: 3, scope: !6175)
!6185 = !DILocation(line: 211, column: 6, scope: !6186)
!6186 = distinct !DILexicalBlock(scope: !6146, file: !2, line: 211, column: 6)
!6187 = !DILocation(line: 211, column: 6, scope: !6146)
!6188 = !DILocation(line: 212, column: 28, scope: !6189)
!6189 = distinct !DILexicalBlock(scope: !6186, file: !2, line: 211, column: 11)
!6190 = !DILocation(line: 212, column: 11, scope: !6189)
!6191 = !DILocation(line: 212, column: 9, scope: !6189)
!6192 = !DILocation(line: 213, column: 14, scope: !6193)
!6193 = distinct !DILexicalBlock(scope: !6189, file: !2, line: 213, column: 7)
!6194 = !DILocation(line: 213, column: 7, scope: !6193)
!6195 = !DILocation(line: 213, column: 7, scope: !6189)
!6196 = !DILocation(line: 214, column: 24, scope: !6193)
!6197 = !DILocation(line: 214, column: 16, scope: !6193)
!6198 = !DILocation(line: 214, column: 11, scope: !6193)
!6199 = !DILocation(line: 214, column: 4, scope: !6193)
!6200 = !DILocation(line: 215, column: 2, scope: !6189)
!6201 = !DILocation(line: 217, column: 32, scope: !6146)
!6202 = !DILocation(line: 217, column: 40, scope: !6146)
!6203 = !DILocation(line: 217, column: 47, scope: !6146)
!6204 = !DILocation(line: 218, column: 11, scope: !6146)
!6205 = !DILocation(line: 218, column: 18, scope: !6146)
!6206 = !DILocation(line: 218, column: 24, scope: !6146)
!6207 = !DILocation(line: 217, column: 10, scope: !6146)
!6208 = !DILocation(line: 217, column: 8, scope: !6146)
!6209 = !DILocation(line: 220, column: 8, scope: !6146)
!6210 = !DILocation(line: 220, column: 2, scope: !6146)
!6211 = !DILocation(line: 221, column: 7, scope: !6212)
!6212 = distinct !DILexicalBlock(scope: !6146, file: !2, line: 221, column: 6)
!6213 = !DILocation(line: 221, column: 6, scope: !6146)
!6214 = !DILocation(line: 222, column: 18, scope: !6212)
!6215 = !DILocation(line: 222, column: 25, scope: !6212)
!6216 = !DILocation(line: 222, column: 31, scope: !6212)
!6217 = !DILocation(line: 222, column: 3, scope: !6212)
!6218 = !DILocation(line: 224, column: 9, scope: !6146)
!6219 = !DILocation(line: 224, column: 2, scope: !6146)
!6220 = !DILocation(line: 225, column: 1, scope: !6146)
!6221 = !DISubprogram(name: "inode_set_ctime_current", scope: !174, file: !174, line: 1515, type: !6222, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6222 = !DISubroutineType(types: !6223)
!6223 = !{!4851, !345}
!6224 = !DISubprogram(name: "__ext4_mark_inode_dirty", scope: !6092, file: !6092, line: 224, type: !6225, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6225 = !DISubroutineType(types: !6226)
!6226 = !{!59, !5909, !345, !55, !28}
!6227 = !DISubprogram(name: "__ext4_journal_stop", scope: !6092, file: !6092, line: 267, type: !6228, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6228 = !DISubroutineType(types: !6229)
!6229 = !{!59, !55, !28, !5909}
!6230 = !DISubprogram(name: "ext4_should_retry_alloc", scope: !5551, file: !5551, line: 2717, type: !6231, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6231 = !DISubroutineType(types: !6232)
!6232 = !{!59, !529, !2091}
!6233 = distinct !DISubprogram(name: "ext4_init_acl", scope: !2, file: !2, line: 279, type: !6234, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !6236)
!6234 = !DISubroutineType(types: !6235)
!6235 = !{!59, !5909, !345, !345}
!6236 = !{!6237, !6238, !6239, !6240, !6241, !6242}
!6237 = !DILocalVariable(name: "handle", arg: 1, scope: !6233, file: !2, line: 279, type: !5909)
!6238 = !DILocalVariable(name: "inode", arg: 2, scope: !6233, file: !2, line: 279, type: !345)
!6239 = !DILocalVariable(name: "dir", arg: 3, scope: !6233, file: !2, line: 279, type: !345)
!6240 = !DILocalVariable(name: "default_acl", scope: !6233, file: !2, line: 281, type: !368)
!6241 = !DILocalVariable(name: "acl", scope: !6233, file: !2, line: 281, type: !368)
!6242 = !DILocalVariable(name: "error", scope: !6233, file: !2, line: 282, type: !59)
!6243 = !DILocation(line: 279, column: 25, scope: !6233)
!6244 = !DILocation(line: 279, column: 47, scope: !6233)
!6245 = !DILocation(line: 279, column: 68, scope: !6233)
!6246 = !DILocation(line: 281, column: 2, scope: !6233)
!6247 = !DILocation(line: 281, column: 20, scope: !6233)
!6248 = !DILocation(line: 281, column: 34, scope: !6233)
!6249 = !DILocation(line: 282, column: 2, scope: !6233)
!6250 = !DILocation(line: 282, column: 6, scope: !6233)
!6251 = !DILocation(line: 284, column: 27, scope: !6233)
!6252 = !DILocation(line: 284, column: 33, scope: !6233)
!6253 = !DILocation(line: 284, column: 40, scope: !6233)
!6254 = !DILocation(line: 284, column: 10, scope: !6233)
!6255 = !DILocation(line: 284, column: 8, scope: !6233)
!6256 = !DILocation(line: 285, column: 6, scope: !6257)
!6257 = distinct !DILexicalBlock(scope: !6233, file: !2, line: 285, column: 6)
!6258 = !DILocation(line: 285, column: 6, scope: !6233)
!6259 = !DILocation(line: 286, column: 10, scope: !6257)
!6260 = !DILocation(line: 286, column: 3, scope: !6257)
!6261 = !DILocation(line: 288, column: 6, scope: !6262)
!6262 = distinct !DILexicalBlock(scope: !6233, file: !2, line: 288, column: 6)
!6263 = !DILocation(line: 288, column: 6, scope: !6233)
!6264 = !DILocation(line: 289, column: 26, scope: !6265)
!6265 = distinct !DILexicalBlock(scope: !6262, file: !2, line: 288, column: 19)
!6266 = !DILocation(line: 289, column: 34, scope: !6265)
!6267 = !DILocation(line: 290, column: 12, scope: !6265)
!6268 = !DILocation(line: 289, column: 11, scope: !6265)
!6269 = !DILocation(line: 289, column: 9, scope: !6265)
!6270 = !DILocation(line: 291, column: 21, scope: !6265)
!6271 = !DILocation(line: 291, column: 3, scope: !6265)
!6272 = !DILocation(line: 292, column: 2, scope: !6265)
!6273 = !DILocation(line: 293, column: 3, scope: !6274)
!6274 = distinct !DILexicalBlock(scope: !6262, file: !2, line: 292, column: 9)
!6275 = !DILocation(line: 293, column: 10, scope: !6274)
!6276 = !DILocation(line: 293, column: 24, scope: !6274)
!6277 = !DILocation(line: 295, column: 6, scope: !6278)
!6278 = distinct !DILexicalBlock(scope: !6233, file: !2, line: 295, column: 6)
!6279 = !DILocation(line: 295, column: 6, scope: !6233)
!6280 = !DILocation(line: 296, column: 8, scope: !6281)
!6281 = distinct !DILexicalBlock(scope: !6282, file: !2, line: 296, column: 7)
!6282 = distinct !DILexicalBlock(scope: !6278, file: !2, line: 295, column: 11)
!6283 = !DILocation(line: 296, column: 7, scope: !6282)
!6284 = !DILocation(line: 297, column: 27, scope: !6281)
!6285 = !DILocation(line: 297, column: 35, scope: !6281)
!6286 = !DILocation(line: 298, column: 13, scope: !6281)
!6287 = !DILocation(line: 297, column: 12, scope: !6281)
!6288 = !DILocation(line: 297, column: 10, scope: !6281)
!6289 = !DILocation(line: 297, column: 4, scope: !6281)
!6290 = !DILocation(line: 299, column: 21, scope: !6282)
!6291 = !DILocation(line: 299, column: 3, scope: !6282)
!6292 = !DILocation(line: 300, column: 2, scope: !6282)
!6293 = !DILocation(line: 301, column: 3, scope: !6294)
!6294 = distinct !DILexicalBlock(scope: !6278, file: !2, line: 300, column: 9)
!6295 = !DILocation(line: 301, column: 10, scope: !6294)
!6296 = !DILocation(line: 301, column: 16, scope: !6294)
!6297 = !DILocation(line: 303, column: 9, scope: !6233)
!6298 = !DILocation(line: 303, column: 2, scope: !6233)
!6299 = !DILocation(line: 304, column: 1, scope: !6233)
!6300 = !DISubprogram(name: "posix_acl_create", scope: !370, file: !370, line: 80, type: !6301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6301 = !DISubroutineType(types: !6302)
!6302 = !{!59, !345, !2795, !6145, !6145}
!6303 = distinct !DISubprogram(name: "posix_acl_release", scope: !370, file: !370, line: 55, type: !6304, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !6306)
!6304 = !DISubroutineType(types: !6305)
!6305 = !{null, !368}
!6306 = !{!6307, !6308}
!6307 = !DILocalVariable(name: "acl", arg: 1, scope: !6303, file: !370, line: 55, type: !368)
!6308 = !DILocalVariable(name: "___p", scope: !6309, file: !370, line: 58, type: !368)
!6309 = distinct !DILexicalBlock(scope: !6310, file: !370, line: 58, column: 3)
!6310 = distinct !DILexicalBlock(scope: !6303, file: !370, line: 57, column: 6)
!6311 = !DILocation(line: 55, column: 37, scope: !6303)
!6312 = !DILocation(line: 57, column: 6, scope: !6310)
!6313 = !DILocation(line: 57, column: 10, scope: !6310)
!6314 = !DILocation(line: 57, column: 36, scope: !6310)
!6315 = !DILocation(line: 57, column: 41, scope: !6310)
!6316 = !DILocation(line: 57, column: 13, scope: !6310)
!6317 = !DILocation(line: 57, column: 6, scope: !6303)
!6318 = !DILocation(line: 58, column: 3, scope: !6310)
!6319 = !DILocation(line: 58, column: 3, scope: !6309)
!6320 = !DILocation(line: 58, column: 3, scope: !6321)
!6321 = distinct !DILexicalBlock(scope: !6309, file: !370, line: 58, column: 3)
!6322 = !DILocation(line: 58, column: 3, scope: !6323)
!6323 = distinct !DILexicalBlock(scope: !6321, file: !370, line: 58, column: 3)
!6324 = !DILocation(line: 58, column: 3, scope: !6325)
!6325 = distinct !DILexicalBlock(scope: !6323, file: !370, line: 58, column: 3)
!6326 = !DILocation(line: 59, column: 1, scope: !6303)
!6327 = !DISubprogram(name: "kmalloc_large", scope: !20, file: !20, line: 531, type: !5695, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6328 = distinct !DISubprogram(name: "__kmalloc_index", scope: !20, file: !20, line: 444, type: !6329, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !6331)
!6329 = !DISubroutineType(types: !6330)
!6330 = !{!28, !72, !880}
!6331 = !{!6332, !6333}
!6332 = !DILocalVariable(name: "size", arg: 1, scope: !6328, file: !20, line: 444, type: !72)
!6333 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6328, file: !20, line: 445, type: !880)
!6334 = !DILocation(line: 444, column: 60, scope: !6328)
!6335 = !DILocation(line: 445, column: 16, scope: !6328)
!6336 = !DILocation(line: 447, column: 7, scope: !6337)
!6337 = distinct !DILexicalBlock(scope: !6328, file: !20, line: 447, column: 6)
!6338 = !DILocation(line: 447, column: 6, scope: !6328)
!6339 = !DILocation(line: 448, column: 3, scope: !6337)
!6340 = !DILocation(line: 450, column: 6, scope: !6341)
!6341 = distinct !DILexicalBlock(scope: !6328, file: !20, line: 450, column: 6)
!6342 = !DILocation(line: 450, column: 11, scope: !6341)
!6343 = !DILocation(line: 450, column: 6, scope: !6328)
!6344 = !DILocation(line: 451, column: 3, scope: !6341)
!6345 = !DILocation(line: 453, column: 32, scope: !6346)
!6346 = distinct !DILexicalBlock(scope: !6328, file: !20, line: 453, column: 6)
!6347 = !DILocation(line: 453, column: 37, scope: !6346)
!6348 = !DILocation(line: 453, column: 42, scope: !6346)
!6349 = !DILocation(line: 453, column: 45, scope: !6346)
!6350 = !DILocation(line: 453, column: 50, scope: !6346)
!6351 = !DILocation(line: 453, column: 6, scope: !6328)
!6352 = !DILocation(line: 454, column: 3, scope: !6346)
!6353 = !DILocation(line: 455, column: 32, scope: !6354)
!6354 = distinct !DILexicalBlock(scope: !6328, file: !20, line: 455, column: 6)
!6355 = !DILocation(line: 455, column: 37, scope: !6354)
!6356 = !DILocation(line: 455, column: 43, scope: !6354)
!6357 = !DILocation(line: 455, column: 46, scope: !6354)
!6358 = !DILocation(line: 455, column: 51, scope: !6354)
!6359 = !DILocation(line: 455, column: 6, scope: !6328)
!6360 = !DILocation(line: 456, column: 3, scope: !6354)
!6361 = !DILocation(line: 457, column: 6, scope: !6362)
!6362 = distinct !DILexicalBlock(scope: !6328, file: !20, line: 457, column: 6)
!6363 = !DILocation(line: 457, column: 11, scope: !6362)
!6364 = !DILocation(line: 457, column: 6, scope: !6328)
!6365 = !DILocation(line: 457, column: 26, scope: !6362)
!6366 = !DILocation(line: 458, column: 6, scope: !6367)
!6367 = distinct !DILexicalBlock(scope: !6328, file: !20, line: 458, column: 6)
!6368 = !DILocation(line: 458, column: 11, scope: !6367)
!6369 = !DILocation(line: 458, column: 6, scope: !6328)
!6370 = !DILocation(line: 458, column: 26, scope: !6367)
!6371 = !DILocation(line: 459, column: 6, scope: !6372)
!6372 = distinct !DILexicalBlock(scope: !6328, file: !20, line: 459, column: 6)
!6373 = !DILocation(line: 459, column: 11, scope: !6372)
!6374 = !DILocation(line: 459, column: 6, scope: !6328)
!6375 = !DILocation(line: 459, column: 26, scope: !6372)
!6376 = !DILocation(line: 460, column: 6, scope: !6377)
!6377 = distinct !DILexicalBlock(scope: !6328, file: !20, line: 460, column: 6)
!6378 = !DILocation(line: 460, column: 11, scope: !6377)
!6379 = !DILocation(line: 460, column: 6, scope: !6328)
!6380 = !DILocation(line: 460, column: 26, scope: !6377)
!6381 = !DILocation(line: 461, column: 6, scope: !6382)
!6382 = distinct !DILexicalBlock(scope: !6328, file: !20, line: 461, column: 6)
!6383 = !DILocation(line: 461, column: 11, scope: !6382)
!6384 = !DILocation(line: 461, column: 6, scope: !6328)
!6385 = !DILocation(line: 461, column: 26, scope: !6382)
!6386 = !DILocation(line: 462, column: 6, scope: !6387)
!6387 = distinct !DILexicalBlock(scope: !6328, file: !20, line: 462, column: 6)
!6388 = !DILocation(line: 462, column: 11, scope: !6387)
!6389 = !DILocation(line: 462, column: 6, scope: !6328)
!6390 = !DILocation(line: 462, column: 26, scope: !6387)
!6391 = !DILocation(line: 463, column: 6, scope: !6392)
!6392 = distinct !DILexicalBlock(scope: !6328, file: !20, line: 463, column: 6)
!6393 = !DILocation(line: 463, column: 11, scope: !6392)
!6394 = !DILocation(line: 463, column: 6, scope: !6328)
!6395 = !DILocation(line: 463, column: 26, scope: !6392)
!6396 = !DILocation(line: 464, column: 6, scope: !6397)
!6397 = distinct !DILexicalBlock(scope: !6328, file: !20, line: 464, column: 6)
!6398 = !DILocation(line: 464, column: 11, scope: !6397)
!6399 = !DILocation(line: 464, column: 6, scope: !6328)
!6400 = !DILocation(line: 464, column: 26, scope: !6397)
!6401 = !DILocation(line: 465, column: 6, scope: !6402)
!6402 = distinct !DILexicalBlock(scope: !6328, file: !20, line: 465, column: 6)
!6403 = !DILocation(line: 465, column: 11, scope: !6402)
!6404 = !DILocation(line: 465, column: 6, scope: !6328)
!6405 = !DILocation(line: 465, column: 26, scope: !6402)
!6406 = !DILocation(line: 466, column: 6, scope: !6407)
!6407 = distinct !DILexicalBlock(scope: !6328, file: !20, line: 466, column: 6)
!6408 = !DILocation(line: 466, column: 11, scope: !6407)
!6409 = !DILocation(line: 466, column: 6, scope: !6328)
!6410 = !DILocation(line: 466, column: 26, scope: !6407)
!6411 = !DILocation(line: 467, column: 6, scope: !6412)
!6412 = distinct !DILexicalBlock(scope: !6328, file: !20, line: 467, column: 6)
!6413 = !DILocation(line: 467, column: 11, scope: !6412)
!6414 = !DILocation(line: 467, column: 6, scope: !6328)
!6415 = !DILocation(line: 467, column: 26, scope: !6412)
!6416 = !DILocation(line: 468, column: 6, scope: !6417)
!6417 = distinct !DILexicalBlock(scope: !6328, file: !20, line: 468, column: 6)
!6418 = !DILocation(line: 468, column: 11, scope: !6417)
!6419 = !DILocation(line: 468, column: 6, scope: !6328)
!6420 = !DILocation(line: 468, column: 26, scope: !6417)
!6421 = !DILocation(line: 469, column: 6, scope: !6422)
!6422 = distinct !DILexicalBlock(scope: !6328, file: !20, line: 469, column: 6)
!6423 = !DILocation(line: 469, column: 11, scope: !6422)
!6424 = !DILocation(line: 469, column: 6, scope: !6328)
!6425 = !DILocation(line: 469, column: 26, scope: !6422)
!6426 = !DILocation(line: 470, column: 6, scope: !6427)
!6427 = distinct !DILexicalBlock(scope: !6328, file: !20, line: 470, column: 6)
!6428 = !DILocation(line: 470, column: 11, scope: !6427)
!6429 = !DILocation(line: 470, column: 6, scope: !6328)
!6430 = !DILocation(line: 470, column: 26, scope: !6427)
!6431 = !DILocation(line: 471, column: 6, scope: !6432)
!6432 = distinct !DILexicalBlock(scope: !6328, file: !20, line: 471, column: 6)
!6433 = !DILocation(line: 471, column: 11, scope: !6432)
!6434 = !DILocation(line: 471, column: 6, scope: !6328)
!6435 = !DILocation(line: 471, column: 26, scope: !6432)
!6436 = !DILocation(line: 472, column: 6, scope: !6437)
!6437 = distinct !DILexicalBlock(scope: !6328, file: !20, line: 472, column: 6)
!6438 = !DILocation(line: 472, column: 11, scope: !6437)
!6439 = !DILocation(line: 472, column: 6, scope: !6328)
!6440 = !DILocation(line: 472, column: 26, scope: !6437)
!6441 = !DILocation(line: 473, column: 6, scope: !6442)
!6442 = distinct !DILexicalBlock(scope: !6328, file: !20, line: 473, column: 6)
!6443 = !DILocation(line: 473, column: 11, scope: !6442)
!6444 = !DILocation(line: 473, column: 6, scope: !6328)
!6445 = !DILocation(line: 473, column: 26, scope: !6442)
!6446 = !DILocation(line: 474, column: 6, scope: !6447)
!6447 = distinct !DILexicalBlock(scope: !6328, file: !20, line: 474, column: 6)
!6448 = !DILocation(line: 474, column: 11, scope: !6447)
!6449 = !DILocation(line: 474, column: 6, scope: !6328)
!6450 = !DILocation(line: 474, column: 27, scope: !6447)
!6451 = !DILocation(line: 475, column: 6, scope: !6452)
!6452 = distinct !DILexicalBlock(scope: !6328, file: !20, line: 475, column: 6)
!6453 = !DILocation(line: 475, column: 11, scope: !6452)
!6454 = !DILocation(line: 475, column: 6, scope: !6328)
!6455 = !DILocation(line: 475, column: 32, scope: !6452)
!6456 = !DILocation(line: 477, column: 50, scope: !6457)
!6457 = distinct !DILexicalBlock(scope: !6328, file: !20, line: 477, column: 6)
!6458 = !DILocation(line: 477, column: 6, scope: !6328)
!6459 = !DILocation(line: 478, column: 3, scope: !6457)
!6460 = !DILocation(line: 478, column: 3, scope: !6461)
!6461 = distinct !DILexicalBlock(scope: !6462, file: !20, line: 478, column: 3)
!6462 = distinct !DILexicalBlock(scope: !6457, file: !20, line: 478, column: 3)
!6463 = !{i32 -2141707782}
!6464 = !DILocation(line: 478, column: 3, scope: !6462)
!6465 = !DILocation(line: 480, column: 3, scope: !6457)
!6466 = !DILocation(line: 480, column: 3, scope: !6467)
!6467 = distinct !DILexicalBlock(scope: !6457, file: !20, line: 480, column: 3)
!6468 = !DILocation(line: 480, column: 3, scope: !6469)
!6469 = distinct !DILexicalBlock(scope: !6467, file: !20, line: 480, column: 3)
!6470 = !DILocation(line: 480, column: 3, scope: !6471)
!6471 = distinct !DILexicalBlock(scope: !6467, file: !20, line: 480, column: 3)
!6472 = !{i64 2153259717, i64 2153259746, i64 2153259792, i64 2153259850, i64 2153259904, i64 2153259958, i64 2153260013, i64 2153260044}
!6473 = !DILocation(line: 483, column: 2, scope: !6328)
!6474 = !DILocation(line: 484, column: 1, scope: !6328)
!6475 = !DISubprogram(name: "kmalloc_trace", scope: !20, file: !20, line: 525, type: !6476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6476 = !DISubroutineType(types: !6477)
!6477 = !{!57, !2686, !1327, !72}
!6478 = distinct !DISubprogram(name: "kmalloc_type", scope: !20, file: !20, line: 401, type: !6479, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !6481)
!6479 = !DISubroutineType(types: !6480)
!6480 = !{!5541, !1327, !76}
!6481 = !{!6482, !6483}
!6482 = !DILocalVariable(name: "flags", arg: 1, scope: !6478, file: !20, line: 401, type: !1327)
!6483 = !DILocalVariable(name: "caller", arg: 2, scope: !6478, file: !20, line: 401, type: !76)
!6484 = !DILocation(line: 401, column: 67, scope: !6478)
!6485 = !DILocation(line: 401, column: 88, scope: !6478)
!6486 = !DILocation(line: 407, column: 6, scope: !6487)
!6487 = distinct !DILexicalBlock(scope: !6478, file: !20, line: 407, column: 6)
!6488 = !DILocation(line: 407, column: 6, scope: !6478)
!6489 = !DILocation(line: 413, column: 3, scope: !6487)
!6490 = !DILocation(line: 423, column: 38, scope: !6491)
!6491 = distinct !DILexicalBlock(scope: !6478, file: !20, line: 423, column: 6)
!6492 = !DILocation(line: 423, column: 44, scope: !6491)
!6493 = !DILocation(line: 423, column: 6, scope: !6478)
!6494 = !DILocation(line: 424, column: 3, scope: !6491)
!6495 = !DILocation(line: 426, column: 3, scope: !6496)
!6496 = distinct !DILexicalBlock(scope: !6478, file: !20, line: 425, column: 6)
!6497 = !DILocation(line: 429, column: 1, scope: !6478)
!6498 = !DISubprogram(name: "__kmalloc", scope: !20, file: !20, line: 488, type: !5695, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6499 = !DISubprogram(name: "__compiletime_assert_245", scope: !20, file: !20, line: 478, type: !2295, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6500 = distinct !DISubprogram(name: "ext4_acl_count", scope: !5565, file: !5565, line: 39, type: !6501, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !6503)
!6501 = !DISubroutineType(types: !6502)
!6502 = !{!59, !72}
!6503 = !{!6504, !6505}
!6504 = !DILocalVariable(name: "size", arg: 1, scope: !6500, file: !5565, line: 39, type: !72)
!6505 = !DILocalVariable(name: "s", scope: !6500, file: !5565, line: 41, type: !649)
!6506 = !DILocation(line: 39, column: 41, scope: !6500)
!6507 = !DILocation(line: 41, column: 2, scope: !6500)
!6508 = !DILocation(line: 41, column: 10, scope: !6500)
!6509 = !DILocation(line: 42, column: 7, scope: !6500)
!6510 = !DILocation(line: 43, column: 6, scope: !6500)
!6511 = !DILocation(line: 43, column: 11, scope: !6500)
!6512 = !DILocation(line: 43, column: 4, scope: !6500)
!6513 = !DILocation(line: 44, column: 6, scope: !6514)
!6514 = distinct !DILexicalBlock(scope: !6500, file: !5565, line: 44, column: 6)
!6515 = !DILocation(line: 44, column: 8, scope: !6514)
!6516 = !DILocation(line: 44, column: 6, scope: !6500)
!6517 = !DILocation(line: 45, column: 7, scope: !6518)
!6518 = distinct !DILexicalBlock(scope: !6519, file: !5565, line: 45, column: 7)
!6519 = distinct !DILexicalBlock(scope: !6514, file: !5565, line: 44, column: 13)
!6520 = !DILocation(line: 45, column: 12, scope: !6518)
!6521 = !DILocation(line: 45, column: 7, scope: !6519)
!6522 = !DILocation(line: 46, column: 4, scope: !6518)
!6523 = !DILocation(line: 47, column: 10, scope: !6519)
!6524 = !DILocation(line: 47, column: 15, scope: !6519)
!6525 = !DILocation(line: 47, column: 3, scope: !6519)
!6526 = !DILocation(line: 49, column: 7, scope: !6527)
!6527 = distinct !DILexicalBlock(scope: !6528, file: !5565, line: 49, column: 7)
!6528 = distinct !DILexicalBlock(scope: !6514, file: !5565, line: 48, column: 9)
!6529 = !DILocation(line: 49, column: 9, scope: !6527)
!6530 = !DILocation(line: 49, column: 7, scope: !6528)
!6531 = !DILocation(line: 50, column: 4, scope: !6527)
!6532 = !DILocation(line: 51, column: 10, scope: !6528)
!6533 = !DILocation(line: 51, column: 12, scope: !6528)
!6534 = !DILocation(line: 51, column: 37, scope: !6528)
!6535 = !DILocation(line: 51, column: 3, scope: !6528)
!6536 = !DILocation(line: 53, column: 1, scope: !6500)
!6537 = !DISubprogram(name: "posix_acl_alloc", scope: !370, file: !370, line: 65, type: !6538, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6538 = !DISubroutineType(types: !6539)
!6539 = !{!368, !59, !1327}
!6540 = distinct !DISubprogram(name: "make_kuid", scope: !352, file: !352, line: 143, type: !6541, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !6543)
!6541 = !DISubroutineType(types: !6542)
!6542 = !{!351, !963, !356}
!6543 = !{!6544, !6545}
!6544 = !DILocalVariable(name: "from", arg: 1, scope: !6540, file: !352, line: 143, type: !963)
!6545 = !DILocalVariable(name: "uid", arg: 2, scope: !6540, file: !352, line: 143, type: !356)
!6546 = !DILocation(line: 143, column: 55, scope: !6540)
!6547 = !DILocation(line: 143, column: 67, scope: !6540)
!6548 = !DILocation(line: 145, column: 9, scope: !6540)
!6549 = !DILocation(line: 145, column: 2, scope: !6540)
!6550 = distinct !DISubprogram(name: "make_kgid", scope: !352, file: !352, line: 148, type: !6551, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !6553)
!6551 = !DISubroutineType(types: !6552)
!6552 = !{!360, !963, !364}
!6553 = !{!6554, !6555}
!6554 = !DILocalVariable(name: "from", arg: 1, scope: !6550, file: !352, line: 148, type: !963)
!6555 = !DILocalVariable(name: "gid", arg: 2, scope: !6550, file: !352, line: 148, type: !364)
!6556 = !DILocation(line: 148, column: 55, scope: !6550)
!6557 = !DILocation(line: 148, column: 67, scope: !6550)
!6558 = !DILocation(line: 150, column: 9, scope: !6550)
!6559 = !DILocation(line: 150, column: 2, scope: !6550)
!6560 = !DISubprogram(name: "__ext4_journal_start_sb", scope: !6092, file: !6092, line: 264, type: !6561, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6561 = !DISubroutineType(types: !6562)
!6562 = !{!5909, !345, !529, !28, !59, !59, !59, !59}
!6563 = distinct !DISubprogram(name: "ext4_free_metadata_revoke_credits", scope: !6092, file: !6092, line: 293, type: !2342, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !6564)
!6564 = !{!6565, !6566}
!6565 = !DILocalVariable(name: "sb", arg: 1, scope: !6563, file: !6092, line: 293, type: !529)
!6566 = !DILocalVariable(name: "blocks", arg: 2, scope: !6563, file: !6092, line: 294, type: !59)
!6567 = !DILocation(line: 293, column: 73, scope: !6563)
!6568 = !DILocation(line: 294, column: 15, scope: !6563)
!6569 = !DILocation(line: 297, column: 9, scope: !6563)
!6570 = !DILocation(line: 297, column: 26, scope: !6563)
!6571 = !DILocation(line: 297, column: 18, scope: !6563)
!6572 = !DILocation(line: 297, column: 31, scope: !6563)
!6573 = !DILocation(line: 297, column: 16, scope: !6563)
!6574 = !DILocation(line: 297, column: 2, scope: !6563)
!6575 = distinct !DISubprogram(name: "EXT4_SB", scope: !5551, file: !5551, line: 1755, type: !6576, scopeLine: 1756, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !6994)
!6576 = !DISubroutineType(types: !6577)
!6577 = !{!6578, !529}
!6578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6579, size: 64)
!6579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ext4_sb_info", file: !5551, line: 1490, size: 18432, elements: !6580)
!6580 = !{!6581, !6582, !6583, !6584, !6585, !6586, !6587, !6588, !6589, !6591, !6592, !6593, !6594, !6595, !6596, !6597, !6716, !6717, !6718, !6719, !6720, !6721, !6722, !6724, !6725, !6726, !6727, !6728, !6729, !6730, !6731, !6732, !6733, !6734, !6735, !6737, !6738, !6739, !6740, !6741, !6742, !6743, !6744, !6754, !6755, !6756, !6757, !6758, !6759, !6760, !6761, !6762, !6763, !6774, !6775, !6776, !6777, !6778, !6779, !6780, !6781, !6787, !6808, !6809, !6810, !6812, !6813, !6814, !6815, !6816, !6817, !6818, !6819, !6820, !6822, !6823, !6824, !6825, !6826, !6827, !6828, !6829, !6830, !6831, !6832, !6833, !6834, !6835, !6836, !6837, !6838, !6839, !6840, !6841, !6842, !6844, !6845, !6846, !6847, !6848, !6849, !6850, !6851, !6852, !6854, !6855, !6856, !6857, !6858, !6859, !6860, !6861, !6862, !6865, !6866, !6867, !6868, !6869, !6877, !6878, !6879, !6880, !6891, !6892, !6893, !6894, !6895, !6896, !6897, !6898, !6899, !6910, !6913, !6914, !6915, !6921, !6922, !6923, !6924, !6925, !6926, !6929, !6930, !6933, !6934, !6935, !6936, !6937, !6938, !6939, !6940, !6941, !6942, !6943, !6944, !6945, !6946, !6947, !6948, !6949, !6950, !6951, !6952, !6954, !6955, !6956, !6957, !6958, !6970, !6971}
!6581 = !DIDerivedType(tag: DW_TAG_member, name: "s_desc_size", scope: !6579, file: !5551, line: 1491, baseType: !76, size: 64)
!6582 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_per_block", scope: !6579, file: !5551, line: 1492, baseType: !76, size: 64, offset: 64)
!6583 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocks_per_group", scope: !6579, file: !5551, line: 1493, baseType: !76, size: 64, offset: 128)
!6584 = !DIDerivedType(tag: DW_TAG_member, name: "s_clusters_per_group", scope: !6579, file: !5551, line: 1494, baseType: !76, size: 64, offset: 192)
!6585 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_per_group", scope: !6579, file: !5551, line: 1495, baseType: !76, size: 64, offset: 256)
!6586 = !DIDerivedType(tag: DW_TAG_member, name: "s_itb_per_group", scope: !6579, file: !5551, line: 1496, baseType: !76, size: 64, offset: 320)
!6587 = !DIDerivedType(tag: DW_TAG_member, name: "s_gdb_count", scope: !6579, file: !5551, line: 1497, baseType: !76, size: 64, offset: 384)
!6588 = !DIDerivedType(tag: DW_TAG_member, name: "s_desc_per_block", scope: !6579, file: !5551, line: 1498, baseType: !76, size: 64, offset: 448)
!6589 = !DIDerivedType(tag: DW_TAG_member, name: "s_groups_count", scope: !6579, file: !5551, line: 1499, baseType: !6590, size: 32, offset: 512)
!6590 = !DIDerivedType(tag: DW_TAG_typedef, name: "ext4_group_t", file: !5551, line: 123, baseType: !28)
!6591 = !DIDerivedType(tag: DW_TAG_member, name: "s_blockfile_groups", scope: !6579, file: !5551, line: 1500, baseType: !6590, size: 32, offset: 544)
!6592 = !DIDerivedType(tag: DW_TAG_member, name: "s_overhead", scope: !6579, file: !5551, line: 1501, baseType: !76, size: 64, offset: 576)
!6593 = !DIDerivedType(tag: DW_TAG_member, name: "s_cluster_ratio", scope: !6579, file: !5551, line: 1502, baseType: !28, size: 32, offset: 640)
!6594 = !DIDerivedType(tag: DW_TAG_member, name: "s_cluster_bits", scope: !6579, file: !5551, line: 1503, baseType: !28, size: 32, offset: 672)
!6595 = !DIDerivedType(tag: DW_TAG_member, name: "s_bitmap_maxbytes", scope: !6579, file: !5551, line: 1504, baseType: !78, size: 64, offset: 704)
!6596 = !DIDerivedType(tag: DW_TAG_member, name: "s_sbh", scope: !6579, file: !5551, line: 1505, baseType: !309, size: 64, offset: 768)
!6597 = !DIDerivedType(tag: DW_TAG_member, name: "s_es", scope: !6579, file: !5551, line: 1506, baseType: !6598, size: 64, offset: 832)
!6598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6599, size: 64)
!6599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ext4_super_block", file: !5551, line: 1299, size: 8192, elements: !6600)
!6600 = !{!6601, !6602, !6603, !6604, !6605, !6606, !6607, !6608, !6609, !6610, !6611, !6612, !6613, !6614, !6615, !6616, !6617, !6618, !6619, !6620, !6621, !6622, !6623, !6624, !6625, !6626, !6627, !6628, !6629, !6630, !6631, !6632, !6633, !6634, !6636, !6637, !6638, !6639, !6640, !6641, !6642, !6643, !6644, !6646, !6647, !6648, !6649, !6650, !6651, !6652, !6656, !6657, !6658, !6659, !6660, !6661, !6662, !6663, !6664, !6666, !6667, !6668, !6669, !6670, !6671, !6672, !6673, !6674, !6675, !6676, !6677, !6678, !6679, !6680, !6682, !6683, !6684, !6685, !6686, !6687, !6688, !6690, !6691, !6692, !6693, !6695, !6696, !6697, !6698, !6699, !6700, !6701, !6702, !6703, !6704, !6705, !6706, !6707, !6708, !6709, !6710, !6711, !6715}
!6601 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_count", scope: !6599, file: !5551, line: 1300, baseType: !5569, size: 32)
!6602 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocks_count_lo", scope: !6599, file: !5551, line: 1301, baseType: !5569, size: 32, offset: 32)
!6603 = !DIDerivedType(tag: DW_TAG_member, name: "s_r_blocks_count_lo", scope: !6599, file: !5551, line: 1302, baseType: !5569, size: 32, offset: 64)
!6604 = !DIDerivedType(tag: DW_TAG_member, name: "s_free_blocks_count_lo", scope: !6599, file: !5551, line: 1303, baseType: !5569, size: 32, offset: 96)
!6605 = !DIDerivedType(tag: DW_TAG_member, name: "s_free_inodes_count", scope: !6599, file: !5551, line: 1304, baseType: !5569, size: 32, offset: 128)
!6606 = !DIDerivedType(tag: DW_TAG_member, name: "s_first_data_block", scope: !6599, file: !5551, line: 1305, baseType: !5569, size: 32, offset: 160)
!6607 = !DIDerivedType(tag: DW_TAG_member, name: "s_log_block_size", scope: !6599, file: !5551, line: 1306, baseType: !5569, size: 32, offset: 192)
!6608 = !DIDerivedType(tag: DW_TAG_member, name: "s_log_cluster_size", scope: !6599, file: !5551, line: 1307, baseType: !5569, size: 32, offset: 224)
!6609 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocks_per_group", scope: !6599, file: !5551, line: 1308, baseType: !5569, size: 32, offset: 256)
!6610 = !DIDerivedType(tag: DW_TAG_member, name: "s_clusters_per_group", scope: !6599, file: !5551, line: 1309, baseType: !5569, size: 32, offset: 288)
!6611 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_per_group", scope: !6599, file: !5551, line: 1310, baseType: !5569, size: 32, offset: 320)
!6612 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtime", scope: !6599, file: !5551, line: 1311, baseType: !5569, size: 32, offset: 352)
!6613 = !DIDerivedType(tag: DW_TAG_member, name: "s_wtime", scope: !6599, file: !5551, line: 1312, baseType: !5569, size: 32, offset: 384)
!6614 = !DIDerivedType(tag: DW_TAG_member, name: "s_mnt_count", scope: !6599, file: !5551, line: 1313, baseType: !5575, size: 16, offset: 416)
!6615 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_mnt_count", scope: !6599, file: !5551, line: 1314, baseType: !5575, size: 16, offset: 432)
!6616 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !6599, file: !5551, line: 1315, baseType: !5575, size: 16, offset: 448)
!6617 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !6599, file: !5551, line: 1316, baseType: !5575, size: 16, offset: 464)
!6618 = !DIDerivedType(tag: DW_TAG_member, name: "s_errors", scope: !6599, file: !5551, line: 1317, baseType: !5575, size: 16, offset: 480)
!6619 = !DIDerivedType(tag: DW_TAG_member, name: "s_minor_rev_level", scope: !6599, file: !5551, line: 1318, baseType: !5575, size: 16, offset: 496)
!6620 = !DIDerivedType(tag: DW_TAG_member, name: "s_lastcheck", scope: !6599, file: !5551, line: 1319, baseType: !5569, size: 32, offset: 512)
!6621 = !DIDerivedType(tag: DW_TAG_member, name: "s_checkinterval", scope: !6599, file: !5551, line: 1320, baseType: !5569, size: 32, offset: 544)
!6622 = !DIDerivedType(tag: DW_TAG_member, name: "s_creator_os", scope: !6599, file: !5551, line: 1321, baseType: !5569, size: 32, offset: 576)
!6623 = !DIDerivedType(tag: DW_TAG_member, name: "s_rev_level", scope: !6599, file: !5551, line: 1322, baseType: !5569, size: 32, offset: 608)
!6624 = !DIDerivedType(tag: DW_TAG_member, name: "s_def_resuid", scope: !6599, file: !5551, line: 1323, baseType: !5575, size: 16, offset: 640)
!6625 = !DIDerivedType(tag: DW_TAG_member, name: "s_def_resgid", scope: !6599, file: !5551, line: 1324, baseType: !5575, size: 16, offset: 656)
!6626 = !DIDerivedType(tag: DW_TAG_member, name: "s_first_ino", scope: !6599, file: !5551, line: 1338, baseType: !5569, size: 32, offset: 672)
!6627 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_size", scope: !6599, file: !5551, line: 1339, baseType: !5575, size: 16, offset: 704)
!6628 = !DIDerivedType(tag: DW_TAG_member, name: "s_block_group_nr", scope: !6599, file: !5551, line: 1340, baseType: !5575, size: 16, offset: 720)
!6629 = !DIDerivedType(tag: DW_TAG_member, name: "s_feature_compat", scope: !6599, file: !5551, line: 1341, baseType: !5569, size: 32, offset: 736)
!6630 = !DIDerivedType(tag: DW_TAG_member, name: "s_feature_incompat", scope: !6599, file: !5551, line: 1342, baseType: !5569, size: 32, offset: 768)
!6631 = !DIDerivedType(tag: DW_TAG_member, name: "s_feature_ro_compat", scope: !6599, file: !5551, line: 1343, baseType: !5569, size: 32, offset: 800)
!6632 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !6599, file: !5551, line: 1344, baseType: !4689, size: 128, offset: 832)
!6633 = !DIDerivedType(tag: DW_TAG_member, name: "s_volume_name", scope: !6599, file: !5551, line: 1345, baseType: !3878, size: 128, offset: 960)
!6634 = !DIDerivedType(tag: DW_TAG_member, name: "s_last_mounted", scope: !6599, file: !5551, line: 1346, baseType: !6635, size: 512, offset: 1088)
!6635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !622)
!6636 = !DIDerivedType(tag: DW_TAG_member, name: "s_algorithm_usage_bitmap", scope: !6599, file: !5551, line: 1347, baseType: !5569, size: 32, offset: 1600)
!6637 = !DIDerivedType(tag: DW_TAG_member, name: "s_prealloc_blocks", scope: !6599, file: !5551, line: 1352, baseType: !122, size: 8, offset: 1632)
!6638 = !DIDerivedType(tag: DW_TAG_member, name: "s_prealloc_dir_blocks", scope: !6599, file: !5551, line: 1353, baseType: !122, size: 8, offset: 1640)
!6639 = !DIDerivedType(tag: DW_TAG_member, name: "s_reserved_gdt_blocks", scope: !6599, file: !5551, line: 1354, baseType: !5575, size: 16, offset: 1648)
!6640 = !DIDerivedType(tag: DW_TAG_member, name: "s_journal_uuid", scope: !6599, file: !5551, line: 1358, baseType: !4689, size: 128, offset: 1664)
!6641 = !DIDerivedType(tag: DW_TAG_member, name: "s_journal_inum", scope: !6599, file: !5551, line: 1359, baseType: !5569, size: 32, offset: 1792)
!6642 = !DIDerivedType(tag: DW_TAG_member, name: "s_journal_dev", scope: !6599, file: !5551, line: 1360, baseType: !5569, size: 32, offset: 1824)
!6643 = !DIDerivedType(tag: DW_TAG_member, name: "s_last_orphan", scope: !6599, file: !5551, line: 1361, baseType: !5569, size: 32, offset: 1856)
!6644 = !DIDerivedType(tag: DW_TAG_member, name: "s_hash_seed", scope: !6599, file: !5551, line: 1362, baseType: !6645, size: 128, offset: 1888)
!6645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5569, size: 128, elements: !754)
!6646 = !DIDerivedType(tag: DW_TAG_member, name: "s_def_hash_version", scope: !6599, file: !5551, line: 1363, baseType: !122, size: 8, offset: 2016)
!6647 = !DIDerivedType(tag: DW_TAG_member, name: "s_jnl_backup_type", scope: !6599, file: !5551, line: 1364, baseType: !122, size: 8, offset: 2024)
!6648 = !DIDerivedType(tag: DW_TAG_member, name: "s_desc_size", scope: !6599, file: !5551, line: 1365, baseType: !5575, size: 16, offset: 2032)
!6649 = !DIDerivedType(tag: DW_TAG_member, name: "s_default_mount_opts", scope: !6599, file: !5551, line: 1366, baseType: !5569, size: 32, offset: 2048)
!6650 = !DIDerivedType(tag: DW_TAG_member, name: "s_first_meta_bg", scope: !6599, file: !5551, line: 1367, baseType: !5569, size: 32, offset: 2080)
!6651 = !DIDerivedType(tag: DW_TAG_member, name: "s_mkfs_time", scope: !6599, file: !5551, line: 1368, baseType: !5569, size: 32, offset: 2112)
!6652 = !DIDerivedType(tag: DW_TAG_member, name: "s_jnl_blocks", scope: !6599, file: !5551, line: 1369, baseType: !6653, size: 544, offset: 2144)
!6653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5569, size: 544, elements: !6654)
!6654 = !{!6655}
!6655 = !DISubrange(count: 17)
!6656 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocks_count_hi", scope: !6599, file: !5551, line: 1371, baseType: !5569, size: 32, offset: 2688)
!6657 = !DIDerivedType(tag: DW_TAG_member, name: "s_r_blocks_count_hi", scope: !6599, file: !5551, line: 1372, baseType: !5569, size: 32, offset: 2720)
!6658 = !DIDerivedType(tag: DW_TAG_member, name: "s_free_blocks_count_hi", scope: !6599, file: !5551, line: 1373, baseType: !5569, size: 32, offset: 2752)
!6659 = !DIDerivedType(tag: DW_TAG_member, name: "s_min_extra_isize", scope: !6599, file: !5551, line: 1374, baseType: !5575, size: 16, offset: 2784)
!6660 = !DIDerivedType(tag: DW_TAG_member, name: "s_want_extra_isize", scope: !6599, file: !5551, line: 1375, baseType: !5575, size: 16, offset: 2800)
!6661 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !6599, file: !5551, line: 1376, baseType: !5569, size: 32, offset: 2816)
!6662 = !DIDerivedType(tag: DW_TAG_member, name: "s_raid_stride", scope: !6599, file: !5551, line: 1377, baseType: !5575, size: 16, offset: 2848)
!6663 = !DIDerivedType(tag: DW_TAG_member, name: "s_mmp_update_interval", scope: !6599, file: !5551, line: 1378, baseType: !5575, size: 16, offset: 2864)
!6664 = !DIDerivedType(tag: DW_TAG_member, name: "s_mmp_block", scope: !6599, file: !5551, line: 1379, baseType: !6665, size: 64, offset: 2880)
!6665 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le64", file: !1370, line: 40, baseType: !451)
!6666 = !DIDerivedType(tag: DW_TAG_member, name: "s_raid_stripe_width", scope: !6599, file: !5551, line: 1380, baseType: !5569, size: 32, offset: 2944)
!6667 = !DIDerivedType(tag: DW_TAG_member, name: "s_log_groups_per_flex", scope: !6599, file: !5551, line: 1381, baseType: !122, size: 8, offset: 2976)
!6668 = !DIDerivedType(tag: DW_TAG_member, name: "s_checksum_type", scope: !6599, file: !5551, line: 1382, baseType: !122, size: 8, offset: 2984)
!6669 = !DIDerivedType(tag: DW_TAG_member, name: "s_encryption_level", scope: !6599, file: !5551, line: 1383, baseType: !122, size: 8, offset: 2992)
!6670 = !DIDerivedType(tag: DW_TAG_member, name: "s_reserved_pad", scope: !6599, file: !5551, line: 1384, baseType: !122, size: 8, offset: 3000)
!6671 = !DIDerivedType(tag: DW_TAG_member, name: "s_kbytes_written", scope: !6599, file: !5551, line: 1385, baseType: !6665, size: 64, offset: 3008)
!6672 = !DIDerivedType(tag: DW_TAG_member, name: "s_snapshot_inum", scope: !6599, file: !5551, line: 1386, baseType: !5569, size: 32, offset: 3072)
!6673 = !DIDerivedType(tag: DW_TAG_member, name: "s_snapshot_id", scope: !6599, file: !5551, line: 1387, baseType: !5569, size: 32, offset: 3104)
!6674 = !DIDerivedType(tag: DW_TAG_member, name: "s_snapshot_r_blocks_count", scope: !6599, file: !5551, line: 1388, baseType: !6665, size: 64, offset: 3136)
!6675 = !DIDerivedType(tag: DW_TAG_member, name: "s_snapshot_list", scope: !6599, file: !5551, line: 1390, baseType: !5569, size: 32, offset: 3200)
!6676 = !DIDerivedType(tag: DW_TAG_member, name: "s_error_count", scope: !6599, file: !5551, line: 1393, baseType: !5569, size: 32, offset: 3232)
!6677 = !DIDerivedType(tag: DW_TAG_member, name: "s_first_error_time", scope: !6599, file: !5551, line: 1394, baseType: !5569, size: 32, offset: 3264)
!6678 = !DIDerivedType(tag: DW_TAG_member, name: "s_first_error_ino", scope: !6599, file: !5551, line: 1395, baseType: !5569, size: 32, offset: 3296)
!6679 = !DIDerivedType(tag: DW_TAG_member, name: "s_first_error_block", scope: !6599, file: !5551, line: 1396, baseType: !6665, size: 64, offset: 3328)
!6680 = !DIDerivedType(tag: DW_TAG_member, name: "s_first_error_func", scope: !6599, file: !5551, line: 1397, baseType: !6681, size: 256, offset: 3392)
!6681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 256, elements: !459)
!6682 = !DIDerivedType(tag: DW_TAG_member, name: "s_first_error_line", scope: !6599, file: !5551, line: 1398, baseType: !5569, size: 32, offset: 3648)
!6683 = !DIDerivedType(tag: DW_TAG_member, name: "s_last_error_time", scope: !6599, file: !5551, line: 1399, baseType: !5569, size: 32, offset: 3680)
!6684 = !DIDerivedType(tag: DW_TAG_member, name: "s_last_error_ino", scope: !6599, file: !5551, line: 1400, baseType: !5569, size: 32, offset: 3712)
!6685 = !DIDerivedType(tag: DW_TAG_member, name: "s_last_error_line", scope: !6599, file: !5551, line: 1401, baseType: !5569, size: 32, offset: 3744)
!6686 = !DIDerivedType(tag: DW_TAG_member, name: "s_last_error_block", scope: !6599, file: !5551, line: 1402, baseType: !6665, size: 64, offset: 3776)
!6687 = !DIDerivedType(tag: DW_TAG_member, name: "s_last_error_func", scope: !6599, file: !5551, line: 1403, baseType: !6681, size: 256, offset: 3840)
!6688 = !DIDerivedType(tag: DW_TAG_member, name: "s_mount_opts", scope: !6599, file: !5551, line: 1405, baseType: !6689, size: 512, offset: 4096)
!6689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 512, elements: !622)
!6690 = !DIDerivedType(tag: DW_TAG_member, name: "s_usr_quota_inum", scope: !6599, file: !5551, line: 1406, baseType: !5569, size: 32, offset: 4608)
!6691 = !DIDerivedType(tag: DW_TAG_member, name: "s_grp_quota_inum", scope: !6599, file: !5551, line: 1407, baseType: !5569, size: 32, offset: 4640)
!6692 = !DIDerivedType(tag: DW_TAG_member, name: "s_overhead_clusters", scope: !6599, file: !5551, line: 1408, baseType: !5569, size: 32, offset: 4672)
!6693 = !DIDerivedType(tag: DW_TAG_member, name: "s_backup_bgs", scope: !6599, file: !5551, line: 1409, baseType: !6694, size: 64, offset: 4704)
!6694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5569, size: 64, elements: !2081)
!6695 = !DIDerivedType(tag: DW_TAG_member, name: "s_encrypt_algos", scope: !6599, file: !5551, line: 1410, baseType: !2785, size: 32, offset: 4768)
!6696 = !DIDerivedType(tag: DW_TAG_member, name: "s_encrypt_pw_salt", scope: !6599, file: !5551, line: 1411, baseType: !4689, size: 128, offset: 4800)
!6697 = !DIDerivedType(tag: DW_TAG_member, name: "s_lpf_ino", scope: !6599, file: !5551, line: 1412, baseType: !5569, size: 32, offset: 4928)
!6698 = !DIDerivedType(tag: DW_TAG_member, name: "s_prj_quota_inum", scope: !6599, file: !5551, line: 1413, baseType: !5569, size: 32, offset: 4960)
!6699 = !DIDerivedType(tag: DW_TAG_member, name: "s_checksum_seed", scope: !6599, file: !5551, line: 1414, baseType: !5569, size: 32, offset: 4992)
!6700 = !DIDerivedType(tag: DW_TAG_member, name: "s_wtime_hi", scope: !6599, file: !5551, line: 1415, baseType: !122, size: 8, offset: 5024)
!6701 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtime_hi", scope: !6599, file: !5551, line: 1416, baseType: !122, size: 8, offset: 5032)
!6702 = !DIDerivedType(tag: DW_TAG_member, name: "s_mkfs_time_hi", scope: !6599, file: !5551, line: 1417, baseType: !122, size: 8, offset: 5040)
!6703 = !DIDerivedType(tag: DW_TAG_member, name: "s_lastcheck_hi", scope: !6599, file: !5551, line: 1418, baseType: !122, size: 8, offset: 5048)
!6704 = !DIDerivedType(tag: DW_TAG_member, name: "s_first_error_time_hi", scope: !6599, file: !5551, line: 1419, baseType: !122, size: 8, offset: 5056)
!6705 = !DIDerivedType(tag: DW_TAG_member, name: "s_last_error_time_hi", scope: !6599, file: !5551, line: 1420, baseType: !122, size: 8, offset: 5064)
!6706 = !DIDerivedType(tag: DW_TAG_member, name: "s_first_error_errcode", scope: !6599, file: !5551, line: 1421, baseType: !122, size: 8, offset: 5072)
!6707 = !DIDerivedType(tag: DW_TAG_member, name: "s_last_error_errcode", scope: !6599, file: !5551, line: 1422, baseType: !122, size: 8, offset: 5080)
!6708 = !DIDerivedType(tag: DW_TAG_member, name: "s_encoding", scope: !6599, file: !5551, line: 1423, baseType: !5575, size: 16, offset: 5088)
!6709 = !DIDerivedType(tag: DW_TAG_member, name: "s_encoding_flags", scope: !6599, file: !5551, line: 1424, baseType: !5575, size: 16, offset: 5104)
!6710 = !DIDerivedType(tag: DW_TAG_member, name: "s_orphan_file_inum", scope: !6599, file: !5551, line: 1425, baseType: !5569, size: 32, offset: 5120)
!6711 = !DIDerivedType(tag: DW_TAG_member, name: "s_reserved", scope: !6599, file: !5551, line: 1426, baseType: !6712, size: 3008, offset: 5152)
!6712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5569, size: 3008, elements: !6713)
!6713 = !{!6714}
!6714 = !DISubrange(count: 94)
!6715 = !DIDerivedType(tag: DW_TAG_member, name: "s_checksum", scope: !6599, file: !5551, line: 1427, baseType: !5569, size: 32, offset: 8160)
!6716 = !DIDerivedType(tag: DW_TAG_member, name: "s_group_desc", scope: !6579, file: !5551, line: 1507, baseType: !5323, size: 64, offset: 896)
!6717 = !DIDerivedType(tag: DW_TAG_member, name: "s_mount_opt", scope: !6579, file: !5551, line: 1508, baseType: !28, size: 32, offset: 960)
!6718 = !DIDerivedType(tag: DW_TAG_member, name: "s_mount_opt2", scope: !6579, file: !5551, line: 1509, baseType: !28, size: 32, offset: 992)
!6719 = !DIDerivedType(tag: DW_TAG_member, name: "s_mount_flags", scope: !6579, file: !5551, line: 1510, baseType: !76, size: 64, offset: 1024)
!6720 = !DIDerivedType(tag: DW_TAG_member, name: "s_def_mount_opt", scope: !6579, file: !5551, line: 1511, baseType: !28, size: 32, offset: 1088)
!6721 = !DIDerivedType(tag: DW_TAG_member, name: "s_def_mount_opt2", scope: !6579, file: !5551, line: 1512, baseType: !28, size: 32, offset: 1120)
!6722 = !DIDerivedType(tag: DW_TAG_member, name: "s_sb_block", scope: !6579, file: !5551, line: 1513, baseType: !6723, size: 64, offset: 1152)
!6723 = !DIDerivedType(tag: DW_TAG_typedef, name: "ext4_fsblk_t", file: !5551, line: 117, baseType: !452)
!6724 = !DIDerivedType(tag: DW_TAG_member, name: "s_resv_clusters", scope: !6579, file: !5551, line: 1514, baseType: !294, size: 64, offset: 1216)
!6725 = !DIDerivedType(tag: DW_TAG_member, name: "s_resuid", scope: !6579, file: !5551, line: 1515, baseType: !351, size: 32, offset: 1280)
!6726 = !DIDerivedType(tag: DW_TAG_member, name: "s_resgid", scope: !6579, file: !5551, line: 1516, baseType: !360, size: 32, offset: 1312)
!6727 = !DIDerivedType(tag: DW_TAG_member, name: "s_mount_state", scope: !6579, file: !5551, line: 1517, baseType: !63, size: 16, offset: 1344)
!6728 = !DIDerivedType(tag: DW_TAG_member, name: "s_pad", scope: !6579, file: !5551, line: 1518, baseType: !63, size: 16, offset: 1360)
!6729 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr_per_block_bits", scope: !6579, file: !5551, line: 1519, baseType: !59, size: 32, offset: 1376)
!6730 = !DIDerivedType(tag: DW_TAG_member, name: "s_desc_per_block_bits", scope: !6579, file: !5551, line: 1520, baseType: !59, size: 32, offset: 1408)
!6731 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_size", scope: !6579, file: !5551, line: 1521, baseType: !59, size: 32, offset: 1440)
!6732 = !DIDerivedType(tag: DW_TAG_member, name: "s_first_ino", scope: !6579, file: !5551, line: 1522, baseType: !59, size: 32, offset: 1472)
!6733 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_readahead_blks", scope: !6579, file: !5551, line: 1523, baseType: !28, size: 32, offset: 1504)
!6734 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_goal", scope: !6579, file: !5551, line: 1524, baseType: !28, size: 32, offset: 1536)
!6735 = !DIDerivedType(tag: DW_TAG_member, name: "s_hash_seed", scope: !6579, file: !5551, line: 1525, baseType: !6736, size: 128, offset: 1568)
!6736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !446, size: 128, elements: !754)
!6737 = !DIDerivedType(tag: DW_TAG_member, name: "s_def_hash_version", scope: !6579, file: !5551, line: 1526, baseType: !59, size: 32, offset: 1696)
!6738 = !DIDerivedType(tag: DW_TAG_member, name: "s_hash_unsigned", scope: !6579, file: !5551, line: 1527, baseType: !59, size: 32, offset: 1728)
!6739 = !DIDerivedType(tag: DW_TAG_member, name: "s_freeclusters_counter", scope: !6579, file: !5551, line: 1528, baseType: !938, size: 320, offset: 1792)
!6740 = !DIDerivedType(tag: DW_TAG_member, name: "s_freeinodes_counter", scope: !6579, file: !5551, line: 1529, baseType: !938, size: 320, offset: 2112)
!6741 = !DIDerivedType(tag: DW_TAG_member, name: "s_dirs_counter", scope: !6579, file: !5551, line: 1530, baseType: !938, size: 320, offset: 2432)
!6742 = !DIDerivedType(tag: DW_TAG_member, name: "s_dirtyclusters_counter", scope: !6579, file: !5551, line: 1531, baseType: !938, size: 320, offset: 2752)
!6743 = !DIDerivedType(tag: DW_TAG_member, name: "s_sra_exceeded_retry_limit", scope: !6579, file: !5551, line: 1532, baseType: !938, size: 320, offset: 3072)
!6744 = !DIDerivedType(tag: DW_TAG_member, name: "s_blockgroup_lock", scope: !6579, file: !5551, line: 1533, baseType: !6745, size: 64, offset: 3392)
!6745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6746, size: 64)
!6746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockgroup_lock", file: !6747, line: 23, size: 65536, elements: !6748)
!6747 = !DIFile(filename: "./include/linux/blockgroup_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff9f5c31f6330308389fc4f693a8520f")
!6748 = !{!6749}
!6749 = !DIDerivedType(tag: DW_TAG_member, name: "locks", scope: !6746, file: !6747, line: 24, baseType: !6750, size: 65536, align: 512)
!6750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6751, size: 65536, align: 512, elements: !5405)
!6751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bgl_lock", file: !6747, line: 19, size: 512, align: 512, elements: !6752)
!6752 = !{!6753}
!6753 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !6751, file: !6747, line: 20, baseType: !96, size: 32)
!6754 = !DIDerivedType(tag: DW_TAG_member, name: "s_proc", scope: !6579, file: !5551, line: 1534, baseType: !5352, size: 64, offset: 3456)
!6755 = !DIDerivedType(tag: DW_TAG_member, name: "s_kobj", scope: !6579, file: !5551, line: 1535, baseType: !577, size: 512, offset: 3520)
!6756 = !DIDerivedType(tag: DW_TAG_member, name: "s_kobj_unregister", scope: !6579, file: !5551, line: 1536, baseType: !1051, size: 256, offset: 4032)
!6757 = !DIDerivedType(tag: DW_TAG_member, name: "s_sb", scope: !6579, file: !5551, line: 1537, baseType: !529, size: 64, offset: 4288)
!6758 = !DIDerivedType(tag: DW_TAG_member, name: "s_mmp_bh", scope: !6579, file: !5551, line: 1538, baseType: !309, size: 64, offset: 4352)
!6759 = !DIDerivedType(tag: DW_TAG_member, name: "s_journal", scope: !6579, file: !5551, line: 1541, baseType: !5456, size: 64, offset: 4416)
!6760 = !DIDerivedType(tag: DW_TAG_member, name: "s_ext4_flags", scope: !6579, file: !5551, line: 1542, baseType: !76, size: 64, offset: 4480)
!6761 = !DIDerivedType(tag: DW_TAG_member, name: "s_orphan_lock", scope: !6579, file: !5551, line: 1543, baseType: !288, size: 256, offset: 4544)
!6762 = !DIDerivedType(tag: DW_TAG_member, name: "s_orphan", scope: !6579, file: !5551, line: 1544, baseType: !134, size: 128, offset: 4800)
!6763 = !DIDerivedType(tag: DW_TAG_member, name: "s_orphan_info", scope: !6579, file: !5551, line: 1546, baseType: !6764, size: 128, offset: 4928)
!6764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ext4_orphan_info", file: !5551, line: 1480, size: 128, elements: !6765)
!6765 = !{!6766, !6767, !6768}
!6766 = !DIDerivedType(tag: DW_TAG_member, name: "of_blocks", scope: !6764, file: !5551, line: 1481, baseType: !59, size: 32)
!6767 = !DIDerivedType(tag: DW_TAG_member, name: "of_csum_seed", scope: !6764, file: !5551, line: 1482, baseType: !447, size: 32, offset: 32)
!6768 = !DIDerivedType(tag: DW_TAG_member, name: "of_binfo", scope: !6764, file: !5551, line: 1483, baseType: !6769, size: 64, offset: 64)
!6769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6770, size: 64)
!6770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ext4_orphan_block", file: !5551, line: 1472, size: 128, elements: !6771)
!6771 = !{!6772, !6773}
!6772 = !DIDerivedType(tag: DW_TAG_member, name: "ob_free_entries", scope: !6770, file: !5551, line: 1473, baseType: !86, size: 32)
!6773 = !DIDerivedType(tag: DW_TAG_member, name: "ob_bh", scope: !6770, file: !5551, line: 1474, baseType: !309, size: 64, offset: 64)
!6774 = !DIDerivedType(tag: DW_TAG_member, name: "s_commit_interval", scope: !6579, file: !5551, line: 1547, baseType: !76, size: 64, offset: 5056)
!6775 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_batch_time", scope: !6579, file: !5551, line: 1548, baseType: !446, size: 32, offset: 5120)
!6776 = !DIDerivedType(tag: DW_TAG_member, name: "s_min_batch_time", scope: !6579, file: !5551, line: 1549, baseType: !446, size: 32, offset: 5152)
!6777 = !DIDerivedType(tag: DW_TAG_member, name: "s_journal_bdev", scope: !6579, file: !5551, line: 1550, baseType: !2611, size: 64, offset: 5184)
!6778 = !DIDerivedType(tag: DW_TAG_member, name: "s_qf_names", scope: !6579, file: !5551, line: 1553, baseType: !617, size: 192, offset: 5248)
!6779 = !DIDerivedType(tag: DW_TAG_member, name: "s_jquota_fmt", scope: !6579, file: !5551, line: 1554, baseType: !59, size: 32, offset: 5440)
!6780 = !DIDerivedType(tag: DW_TAG_member, name: "s_want_extra_isize", scope: !6579, file: !5551, line: 1556, baseType: !28, size: 32, offset: 5472)
!6781 = !DIDerivedType(tag: DW_TAG_member, name: "s_system_blks", scope: !6579, file: !5551, line: 1557, baseType: !6782, size: 64, offset: 5504)
!6782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6783, size: 64)
!6783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ext4_system_blocks", file: !5551, line: 268, size: 192, elements: !6784)
!6784 = !{!6785, !6786}
!6785 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !6783, file: !5551, line: 269, baseType: !1093, size: 64)
!6786 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !6783, file: !5551, line: 270, baseType: !379, size: 128, align: 64, offset: 64)
!6787 = !DIDerivedType(tag: DW_TAG_member, name: "s_group_info", scope: !6579, file: !5551, line: 1570, baseType: !6788, size: 64, offset: 5568)
!6788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6789, size: 64)
!6789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6790, size: 64)
!6790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6791, size: 64)
!6791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ext4_group_info", file: !5551, line: 3397, size: 1024, elements: !6792)
!6792 = !{!6793, !6794, !6795, !6797, !6798, !6799, !6800, !6801, !6802, !6803, !6804, !6805, !6806}
!6793 = !DIDerivedType(tag: DW_TAG_member, name: "bb_state", scope: !6791, file: !5551, line: 3398, baseType: !76, size: 64)
!6794 = !DIDerivedType(tag: DW_TAG_member, name: "bb_free_root", scope: !6791, file: !5551, line: 3402, baseType: !1093, size: 64, offset: 64)
!6795 = !DIDerivedType(tag: DW_TAG_member, name: "bb_first_free", scope: !6791, file: !5551, line: 3403, baseType: !6796, size: 32, offset: 128)
!6796 = !DIDerivedType(tag: DW_TAG_typedef, name: "ext4_grpblk_t", file: !5551, line: 114, baseType: !59)
!6797 = !DIDerivedType(tag: DW_TAG_member, name: "bb_free", scope: !6791, file: !5551, line: 3404, baseType: !6796, size: 32, offset: 160)
!6798 = !DIDerivedType(tag: DW_TAG_member, name: "bb_fragments", scope: !6791, file: !5551, line: 3405, baseType: !6796, size: 32, offset: 192)
!6799 = !DIDerivedType(tag: DW_TAG_member, name: "bb_avg_fragment_size_order", scope: !6791, file: !5551, line: 3406, baseType: !59, size: 32, offset: 224)
!6800 = !DIDerivedType(tag: DW_TAG_member, name: "bb_largest_free_order", scope: !6791, file: !5551, line: 3408, baseType: !6796, size: 32, offset: 256)
!6801 = !DIDerivedType(tag: DW_TAG_member, name: "bb_group", scope: !6791, file: !5551, line: 3409, baseType: !6590, size: 32, offset: 288)
!6802 = !DIDerivedType(tag: DW_TAG_member, name: "bb_prealloc_list", scope: !6791, file: !5551, line: 3410, baseType: !134, size: 128, offset: 320)
!6803 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_sem", scope: !6791, file: !5551, line: 3414, baseType: !822, size: 320, offset: 448)
!6804 = !DIDerivedType(tag: DW_TAG_member, name: "bb_avg_fragment_size_node", scope: !6791, file: !5551, line: 3415, baseType: !134, size: 128, offset: 768)
!6805 = !DIDerivedType(tag: DW_TAG_member, name: "bb_largest_free_order_node", scope: !6791, file: !5551, line: 3416, baseType: !134, size: 128, offset: 896)
!6806 = !DIDerivedType(tag: DW_TAG_member, name: "bb_counters", scope: !6791, file: !5551, line: 3417, baseType: !6807, offset: 1024)
!6807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6796, elements: !400)
!6808 = !DIDerivedType(tag: DW_TAG_member, name: "s_buddy_cache", scope: !6579, file: !5551, line: 1571, baseType: !345, size: 64, offset: 5632)
!6809 = !DIDerivedType(tag: DW_TAG_member, name: "s_md_lock", scope: !6579, file: !5551, line: 1572, baseType: !96, size: 32, offset: 5696)
!6810 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_offsets", scope: !6579, file: !5551, line: 1573, baseType: !6811, size: 64, offset: 5760)
!6811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!6812 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_maxs", scope: !6579, file: !5551, line: 1574, baseType: !2043, size: 64, offset: 5824)
!6813 = !DIDerivedType(tag: DW_TAG_member, name: "s_group_info_size", scope: !6579, file: !5551, line: 1575, baseType: !28, size: 32, offset: 5888)
!6814 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_free_pending", scope: !6579, file: !5551, line: 1576, baseType: !28, size: 32, offset: 5920)
!6815 = !DIDerivedType(tag: DW_TAG_member, name: "s_freed_data_list", scope: !6579, file: !5551, line: 1577, baseType: !134, size: 128, offset: 5952)
!6816 = !DIDerivedType(tag: DW_TAG_member, name: "s_discard_list", scope: !6579, file: !5551, line: 1579, baseType: !134, size: 128, offset: 6080)
!6817 = !DIDerivedType(tag: DW_TAG_member, name: "s_discard_work", scope: !6579, file: !5551, line: 1580, baseType: !1012, size: 256, offset: 6208)
!6818 = !DIDerivedType(tag: DW_TAG_member, name: "s_retry_alloc_pending", scope: !6579, file: !5551, line: 1581, baseType: !86, size: 32, offset: 6464)
!6819 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_avg_fragment_size", scope: !6579, file: !5551, line: 1582, baseType: !137, size: 64, offset: 6528)
!6820 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_avg_fragment_size_locks", scope: !6579, file: !5551, line: 1583, baseType: !6821, size: 64, offset: 6592)
!6821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!6822 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_largest_free_orders", scope: !6579, file: !5551, line: 1584, baseType: !137, size: 64, offset: 6656)
!6823 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_largest_free_orders_locks", scope: !6579, file: !5551, line: 1585, baseType: !6821, size: 64, offset: 6720)
!6824 = !DIDerivedType(tag: DW_TAG_member, name: "s_stripe", scope: !6579, file: !5551, line: 1588, baseType: !76, size: 64, offset: 6784)
!6825 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_max_linear_groups", scope: !6579, file: !5551, line: 1589, baseType: !28, size: 32, offset: 6848)
!6826 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_stream_request", scope: !6579, file: !5551, line: 1590, baseType: !28, size: 32, offset: 6880)
!6827 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_max_to_scan", scope: !6579, file: !5551, line: 1591, baseType: !28, size: 32, offset: 6912)
!6828 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_min_to_scan", scope: !6579, file: !5551, line: 1592, baseType: !28, size: 32, offset: 6944)
!6829 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_stats", scope: !6579, file: !5551, line: 1593, baseType: !28, size: 32, offset: 6976)
!6830 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_order2_reqs", scope: !6579, file: !5551, line: 1594, baseType: !28, size: 32, offset: 7008)
!6831 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_group_prealloc", scope: !6579, file: !5551, line: 1595, baseType: !28, size: 32, offset: 7040)
!6832 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_dir_size_kb", scope: !6579, file: !5551, line: 1596, baseType: !28, size: 32, offset: 7072)
!6833 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_last_group", scope: !6579, file: !5551, line: 1598, baseType: !76, size: 64, offset: 7104)
!6834 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_last_start", scope: !6579, file: !5551, line: 1599, baseType: !76, size: 64, offset: 7168)
!6835 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_prefetch", scope: !6579, file: !5551, line: 1600, baseType: !28, size: 32, offset: 7232)
!6836 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_prefetch_limit", scope: !6579, file: !5551, line: 1601, baseType: !28, size: 32, offset: 7264)
!6837 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_best_avail_max_trim_order", scope: !6579, file: !5551, line: 1602, baseType: !28, size: 32, offset: 7296)
!6838 = !DIDerivedType(tag: DW_TAG_member, name: "s_bal_reqs", scope: !6579, file: !5551, line: 1605, baseType: !86, size: 32, offset: 7328)
!6839 = !DIDerivedType(tag: DW_TAG_member, name: "s_bal_success", scope: !6579, file: !5551, line: 1606, baseType: !86, size: 32, offset: 7360)
!6840 = !DIDerivedType(tag: DW_TAG_member, name: "s_bal_allocated", scope: !6579, file: !5551, line: 1607, baseType: !86, size: 32, offset: 7392)
!6841 = !DIDerivedType(tag: DW_TAG_member, name: "s_bal_ex_scanned", scope: !6579, file: !5551, line: 1608, baseType: !86, size: 32, offset: 7424)
!6842 = !DIDerivedType(tag: DW_TAG_member, name: "s_bal_cX_ex_scanned", scope: !6579, file: !5551, line: 1609, baseType: !6843, size: 160, offset: 7456)
!6843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 160, elements: !981)
!6844 = !DIDerivedType(tag: DW_TAG_member, name: "s_bal_groups_scanned", scope: !6579, file: !5551, line: 1610, baseType: !86, size: 32, offset: 7616)
!6845 = !DIDerivedType(tag: DW_TAG_member, name: "s_bal_goals", scope: !6579, file: !5551, line: 1611, baseType: !86, size: 32, offset: 7648)
!6846 = !DIDerivedType(tag: DW_TAG_member, name: "s_bal_len_goals", scope: !6579, file: !5551, line: 1612, baseType: !86, size: 32, offset: 7680)
!6847 = !DIDerivedType(tag: DW_TAG_member, name: "s_bal_breaks", scope: !6579, file: !5551, line: 1613, baseType: !86, size: 32, offset: 7712)
!6848 = !DIDerivedType(tag: DW_TAG_member, name: "s_bal_2orders", scope: !6579, file: !5551, line: 1614, baseType: !86, size: 32, offset: 7744)
!6849 = !DIDerivedType(tag: DW_TAG_member, name: "s_bal_p2_aligned_bad_suggestions", scope: !6579, file: !5551, line: 1615, baseType: !86, size: 32, offset: 7776)
!6850 = !DIDerivedType(tag: DW_TAG_member, name: "s_bal_goal_fast_bad_suggestions", scope: !6579, file: !5551, line: 1616, baseType: !86, size: 32, offset: 7808)
!6851 = !DIDerivedType(tag: DW_TAG_member, name: "s_bal_best_avail_bad_suggestions", scope: !6579, file: !5551, line: 1617, baseType: !86, size: 32, offset: 7840)
!6852 = !DIDerivedType(tag: DW_TAG_member, name: "s_bal_cX_groups_considered", scope: !6579, file: !5551, line: 1618, baseType: !6853, size: 320, offset: 7872)
!6853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 320, elements: !981)
!6854 = !DIDerivedType(tag: DW_TAG_member, name: "s_bal_cX_hits", scope: !6579, file: !5551, line: 1619, baseType: !6853, size: 320, offset: 8192)
!6855 = !DIDerivedType(tag: DW_TAG_member, name: "s_bal_cX_failed", scope: !6579, file: !5551, line: 1620, baseType: !6853, size: 320, offset: 8512)
!6856 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_buddies_generated", scope: !6579, file: !5551, line: 1621, baseType: !86, size: 32, offset: 8832)
!6857 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_generation_time", scope: !6579, file: !5551, line: 1622, baseType: !294, size: 64, offset: 8896)
!6858 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_lost_chunks", scope: !6579, file: !5551, line: 1623, baseType: !86, size: 32, offset: 8960)
!6859 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_preallocated", scope: !6579, file: !5551, line: 1624, baseType: !86, size: 32, offset: 8992)
!6860 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_discarded", scope: !6579, file: !5551, line: 1625, baseType: !86, size: 32, offset: 9024)
!6861 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_busy", scope: !6579, file: !5551, line: 1626, baseType: !86, size: 32, offset: 9056)
!6862 = !DIDerivedType(tag: DW_TAG_member, name: "s_locality_groups", scope: !6579, file: !5551, line: 1629, baseType: !6863, size: 64, offset: 9088)
!6863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6864, size: 64)
!6864 = !DICompositeType(tag: DW_TAG_structure_type, name: "ext4_locality_group", file: !5551, line: 1629, flags: DIFlagFwdDecl)
!6865 = !DIDerivedType(tag: DW_TAG_member, name: "s_sectors_written_start", scope: !6579, file: !5551, line: 1632, baseType: !76, size: 64, offset: 9152)
!6866 = !DIDerivedType(tag: DW_TAG_member, name: "s_kbytes_written", scope: !6579, file: !5551, line: 1633, baseType: !450, size: 64, offset: 9216)
!6867 = !DIDerivedType(tag: DW_TAG_member, name: "s_extent_max_zeroout_kb", scope: !6579, file: !5551, line: 1636, baseType: !28, size: 32, offset: 9280)
!6868 = !DIDerivedType(tag: DW_TAG_member, name: "s_log_groups_per_flex", scope: !6579, file: !5551, line: 1638, baseType: !28, size: 32, offset: 9312)
!6869 = !DIDerivedType(tag: DW_TAG_member, name: "s_flex_groups", scope: !6579, file: !5551, line: 1639, baseType: !6870, size: 64, offset: 9344)
!6870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6871, size: 64)
!6871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6872, size: 64)
!6872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "flex_groups", file: !5551, line: 428, size: 128, elements: !6873)
!6873 = !{!6874, !6875, !6876}
!6874 = !DIDerivedType(tag: DW_TAG_member, name: "free_clusters", scope: !6872, file: !5551, line: 429, baseType: !294, size: 64)
!6875 = !DIDerivedType(tag: DW_TAG_member, name: "free_inodes", scope: !6872, file: !5551, line: 430, baseType: !86, size: 32, offset: 64)
!6876 = !DIDerivedType(tag: DW_TAG_member, name: "used_dirs", scope: !6872, file: !5551, line: 431, baseType: !86, size: 32, offset: 96)
!6877 = !DIDerivedType(tag: DW_TAG_member, name: "s_flex_groups_allocated", scope: !6579, file: !5551, line: 1640, baseType: !6590, size: 32, offset: 9408)
!6878 = !DIDerivedType(tag: DW_TAG_member, name: "rsv_conversion_wq", scope: !6579, file: !5551, line: 1643, baseType: !2252, size: 64, offset: 9472)
!6879 = !DIDerivedType(tag: DW_TAG_member, name: "s_err_report", scope: !6579, file: !5551, line: 1646, baseType: !2190, size: 320, offset: 9536)
!6880 = !DIDerivedType(tag: DW_TAG_member, name: "s_li_request", scope: !6579, file: !5551, line: 1649, baseType: !6881, size: 64, offset: 9856)
!6881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6882, size: 64)
!6882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ext4_li_request", file: !5551, line: 2589, size: 448, elements: !6883)
!6883 = !{!6884, !6885, !6886, !6887, !6888, !6889, !6890}
!6884 = !DIDerivedType(tag: DW_TAG_member, name: "lr_super", scope: !6882, file: !5551, line: 2590, baseType: !529, size: 64)
!6885 = !DIDerivedType(tag: DW_TAG_member, name: "lr_mode", scope: !6882, file: !5551, line: 2591, baseType: !5550, size: 32, offset: 64)
!6886 = !DIDerivedType(tag: DW_TAG_member, name: "lr_first_not_zeroed", scope: !6882, file: !5551, line: 2592, baseType: !6590, size: 32, offset: 96)
!6887 = !DIDerivedType(tag: DW_TAG_member, name: "lr_next_group", scope: !6882, file: !5551, line: 2593, baseType: !6590, size: 32, offset: 128)
!6888 = !DIDerivedType(tag: DW_TAG_member, name: "lr_request", scope: !6882, file: !5551, line: 2594, baseType: !134, size: 128, offset: 192)
!6889 = !DIDerivedType(tag: DW_TAG_member, name: "lr_next_sched", scope: !6882, file: !5551, line: 2595, baseType: !76, size: 64, offset: 320)
!6890 = !DIDerivedType(tag: DW_TAG_member, name: "lr_timeout", scope: !6882, file: !5551, line: 2596, baseType: !76, size: 64, offset: 384)
!6891 = !DIDerivedType(tag: DW_TAG_member, name: "s_li_wait_mult", scope: !6579, file: !5551, line: 1651, baseType: !28, size: 32, offset: 9920)
!6892 = !DIDerivedType(tag: DW_TAG_member, name: "s_mmp_tsk", scope: !6579, file: !5551, line: 1654, baseType: !3531, size: 64, offset: 9984)
!6893 = !DIDerivedType(tag: DW_TAG_member, name: "s_last_trim_minblks", scope: !6579, file: !5551, line: 1657, baseType: !76, size: 64, offset: 10048)
!6894 = !DIDerivedType(tag: DW_TAG_member, name: "s_chksum_driver", scope: !6579, file: !5551, line: 1660, baseType: !5374, size: 64, offset: 10112)
!6895 = !DIDerivedType(tag: DW_TAG_member, name: "s_csum_seed", scope: !6579, file: !5551, line: 1663, baseType: !447, size: 32, offset: 10176)
!6896 = !DIDerivedType(tag: DW_TAG_member, name: "s_es_shrinker", scope: !6579, file: !5551, line: 1666, baseType: !4695, size: 448, offset: 10240)
!6897 = !DIDerivedType(tag: DW_TAG_member, name: "s_es_list", scope: !6579, file: !5551, line: 1667, baseType: !134, size: 128, offset: 10688)
!6898 = !DIDerivedType(tag: DW_TAG_member, name: "s_es_nr_inode", scope: !6579, file: !5551, line: 1668, baseType: !652, size: 64, offset: 10816)
!6899 = !DIDerivedType(tag: DW_TAG_member, name: "s_es_stats", scope: !6579, file: !5551, line: 1669, baseType: !6900, size: 1472, offset: 10880)
!6900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ext4_es_stats", file: !6901, line: 71, size: 1472, elements: !6902)
!6901 = !DIFile(filename: "fs/ext4/extents_status.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "648897cf7c169849fe8d39a5b97e872e")
!6902 = !{!6903, !6904, !6905, !6906, !6907, !6908, !6909}
!6903 = !DIDerivedType(tag: DW_TAG_member, name: "es_stats_shrunk", scope: !6900, file: !6901, line: 72, baseType: !76, size: 64)
!6904 = !DIDerivedType(tag: DW_TAG_member, name: "es_stats_cache_hits", scope: !6900, file: !6901, line: 73, baseType: !938, size: 320, offset: 64)
!6905 = !DIDerivedType(tag: DW_TAG_member, name: "es_stats_cache_misses", scope: !6900, file: !6901, line: 74, baseType: !938, size: 320, offset: 384)
!6906 = !DIDerivedType(tag: DW_TAG_member, name: "es_stats_scan_time", scope: !6900, file: !6901, line: 75, baseType: !450, size: 64, offset: 704)
!6907 = !DIDerivedType(tag: DW_TAG_member, name: "es_stats_max_scan_time", scope: !6900, file: !6901, line: 76, baseType: !450, size: 64, offset: 768)
!6908 = !DIDerivedType(tag: DW_TAG_member, name: "es_stats_all_cnt", scope: !6900, file: !6901, line: 77, baseType: !938, size: 320, offset: 832)
!6909 = !DIDerivedType(tag: DW_TAG_member, name: "es_stats_shk_cnt", scope: !6900, file: !6901, line: 78, baseType: !938, size: 320, offset: 1152)
!6910 = !DIDerivedType(tag: DW_TAG_member, name: "s_ea_block_cache", scope: !6579, file: !5551, line: 1670, baseType: !6911, size: 64, offset: 12352)
!6911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6912, size: 64)
!6912 = !DICompositeType(tag: DW_TAG_structure_type, name: "mb_cache", file: !5551, line: 1670, flags: DIFlagFwdDecl)
!6913 = !DIDerivedType(tag: DW_TAG_member, name: "s_ea_inode_cache", scope: !6579, file: !5551, line: 1671, baseType: !6911, size: 64, offset: 12416)
!6914 = !DIDerivedType(tag: DW_TAG_member, name: "s_es_lock", scope: !6579, file: !5551, line: 1672, baseType: !96, size: 32, align: 512, offset: 12800)
!6915 = !DIDerivedType(tag: DW_TAG_member, name: "s_journal_triggers", scope: !6579, file: !5551, line: 1675, baseType: !6916, size: 192, offset: 12864)
!6916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6917, size: 192, elements: !10)
!6917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ext4_journal_trigger", file: !5551, line: 1447, size: 192, elements: !6918)
!6918 = !{!6919, !6920}
!6919 = !DIDerivedType(tag: DW_TAG_member, name: "tr_triggers", scope: !6917, file: !5551, line: 1448, baseType: !5489, size: 128)
!6920 = !DIDerivedType(tag: DW_TAG_member, name: "sb", scope: !6917, file: !5551, line: 1449, baseType: !529, size: 64, offset: 128)
!6921 = !DIDerivedType(tag: DW_TAG_member, name: "s_err_ratelimit_state", scope: !6579, file: !5551, line: 1678, baseType: !952, size: 320, offset: 13056)
!6922 = !DIDerivedType(tag: DW_TAG_member, name: "s_warning_ratelimit_state", scope: !6579, file: !5551, line: 1679, baseType: !952, size: 320, offset: 13376)
!6923 = !DIDerivedType(tag: DW_TAG_member, name: "s_msg_ratelimit_state", scope: !6579, file: !5551, line: 1680, baseType: !952, size: 320, offset: 13696)
!6924 = !DIDerivedType(tag: DW_TAG_member, name: "s_warning_count", scope: !6579, file: !5551, line: 1681, baseType: !86, size: 32, offset: 14016)
!6925 = !DIDerivedType(tag: DW_TAG_member, name: "s_msg_count", scope: !6579, file: !5551, line: 1682, baseType: !86, size: 32, offset: 14048)
!6926 = !DIDerivedType(tag: DW_TAG_member, name: "s_dummy_enc_policy", scope: !6579, file: !5551, line: 1685, baseType: !6927, offset: 14080)
!6927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fscrypt_dummy_policy", file: !6928, line: 508, elements: !1416)
!6928 = !DIFile(filename: "./include/linux/fscrypt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "65ccc03ddf43dd4b78f86896df8d37b6")
!6929 = !DIDerivedType(tag: DW_TAG_member, name: "s_writepages_rwsem", scope: !6579, file: !5551, line: 1692, baseType: !3514, size: 768, offset: 14080)
!6930 = !DIDerivedType(tag: DW_TAG_member, name: "s_daxdev", scope: !6579, file: !5551, line: 1693, baseType: !6931, size: 64, offset: 14848)
!6931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6932, size: 64)
!6932 = !DICompositeType(tag: DW_TAG_structure_type, name: "dax_device", file: !5551, line: 1693, flags: DIFlagFwdDecl)
!6933 = !DIDerivedType(tag: DW_TAG_member, name: "s_dax_part_off", scope: !6579, file: !5551, line: 1694, baseType: !450, size: 64, offset: 14912)
!6934 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_wb_err", scope: !6579, file: !5551, line: 1699, baseType: !1784, size: 32, offset: 14976)
!6935 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_wb_lock", scope: !6579, file: !5551, line: 1700, baseType: !96, size: 32, offset: 15008)
!6936 = !DIDerivedType(tag: DW_TAG_member, name: "s_error_lock", scope: !6579, file: !5551, line: 1703, baseType: !96, size: 32, offset: 15040)
!6937 = !DIDerivedType(tag: DW_TAG_member, name: "s_add_error_count", scope: !6579, file: !5551, line: 1704, baseType: !59, size: 32, offset: 15072)
!6938 = !DIDerivedType(tag: DW_TAG_member, name: "s_first_error_code", scope: !6579, file: !5551, line: 1705, baseType: !59, size: 32, offset: 15104)
!6939 = !DIDerivedType(tag: DW_TAG_member, name: "s_first_error_line", scope: !6579, file: !5551, line: 1706, baseType: !447, size: 32, offset: 15136)
!6940 = !DIDerivedType(tag: DW_TAG_member, name: "s_first_error_ino", scope: !6579, file: !5551, line: 1707, baseType: !447, size: 32, offset: 15168)
!6941 = !DIDerivedType(tag: DW_TAG_member, name: "s_first_error_block", scope: !6579, file: !5551, line: 1708, baseType: !451, size: 64, offset: 15232)
!6942 = !DIDerivedType(tag: DW_TAG_member, name: "s_first_error_func", scope: !6579, file: !5551, line: 1709, baseType: !55, size: 64, offset: 15296)
!6943 = !DIDerivedType(tag: DW_TAG_member, name: "s_first_error_time", scope: !6579, file: !5551, line: 1710, baseType: !838, size: 64, offset: 15360)
!6944 = !DIDerivedType(tag: DW_TAG_member, name: "s_last_error_code", scope: !6579, file: !5551, line: 1711, baseType: !59, size: 32, offset: 15424)
!6945 = !DIDerivedType(tag: DW_TAG_member, name: "s_last_error_line", scope: !6579, file: !5551, line: 1712, baseType: !447, size: 32, offset: 15456)
!6946 = !DIDerivedType(tag: DW_TAG_member, name: "s_last_error_ino", scope: !6579, file: !5551, line: 1713, baseType: !447, size: 32, offset: 15488)
!6947 = !DIDerivedType(tag: DW_TAG_member, name: "s_last_error_block", scope: !6579, file: !5551, line: 1714, baseType: !451, size: 64, offset: 15552)
!6948 = !DIDerivedType(tag: DW_TAG_member, name: "s_last_error_func", scope: !6579, file: !5551, line: 1715, baseType: !55, size: 64, offset: 15616)
!6949 = !DIDerivedType(tag: DW_TAG_member, name: "s_last_error_time", scope: !6579, file: !5551, line: 1716, baseType: !838, size: 64, offset: 15680)
!6950 = !DIDerivedType(tag: DW_TAG_member, name: "s_sb_upd_work", scope: !6579, file: !5551, line: 1724, baseType: !1012, size: 256, offset: 15744)
!6951 = !DIDerivedType(tag: DW_TAG_member, name: "s_fc_subtid", scope: !6579, file: !5551, line: 1727, baseType: !86, size: 32, offset: 16000)
!6952 = !DIDerivedType(tag: DW_TAG_member, name: "s_fc_q", scope: !6579, file: !5551, line: 1735, baseType: !6953, size: 256, offset: 16064)
!6953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 256, elements: !2081)
!6954 = !DIDerivedType(tag: DW_TAG_member, name: "s_fc_dentry_q", scope: !6579, file: !5551, line: 1738, baseType: !6953, size: 256, offset: 16320)
!6955 = !DIDerivedType(tag: DW_TAG_member, name: "s_fc_bytes", scope: !6579, file: !5551, line: 1739, baseType: !28, size: 32, offset: 16576)
!6956 = !DIDerivedType(tag: DW_TAG_member, name: "s_fc_lock", scope: !6579, file: !5551, line: 1745, baseType: !96, size: 32, offset: 16608)
!6957 = !DIDerivedType(tag: DW_TAG_member, name: "s_fc_bh", scope: !6579, file: !5551, line: 1746, baseType: !309, size: 64, offset: 16640)
!6958 = !DIDerivedType(tag: DW_TAG_member, name: "s_fc_stats", scope: !6579, file: !5551, line: 1747, baseType: !6959, size: 704, offset: 16704)
!6959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ext4_fc_stats", file: !6960, line: 118, size: 704, elements: !6961)
!6960 = !DIFile(filename: "fs/ext4/fast_commit.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a5cfa5ab26e1ae185395a32f83e37577")
!6961 = !{!6962, !6964, !6965, !6966, !6967, !6968, !6969}
!6962 = !DIDerivedType(tag: DW_TAG_member, name: "fc_ineligible_reason_count", scope: !6959, file: !6960, line: 119, baseType: !6963, size: 320)
!6963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 320, elements: !1107)
!6964 = !DIDerivedType(tag: DW_TAG_member, name: "fc_num_commits", scope: !6959, file: !6960, line: 120, baseType: !76, size: 64, offset: 320)
!6965 = !DIDerivedType(tag: DW_TAG_member, name: "fc_ineligible_commits", scope: !6959, file: !6960, line: 121, baseType: !76, size: 64, offset: 384)
!6966 = !DIDerivedType(tag: DW_TAG_member, name: "fc_failed_commits", scope: !6959, file: !6960, line: 122, baseType: !76, size: 64, offset: 448)
!6967 = !DIDerivedType(tag: DW_TAG_member, name: "fc_skipped_commits", scope: !6959, file: !6960, line: 123, baseType: !76, size: 64, offset: 512)
!6968 = !DIDerivedType(tag: DW_TAG_member, name: "fc_numblks", scope: !6959, file: !6960, line: 124, baseType: !76, size: 64, offset: 576)
!6969 = !DIDerivedType(tag: DW_TAG_member, name: "s_fc_avg_commit_time", scope: !6959, file: !6960, line: 125, baseType: !450, size: 64, offset: 640)
!6970 = !DIDerivedType(tag: DW_TAG_member, name: "s_fc_ineligible_tid", scope: !6579, file: !5551, line: 1748, baseType: !5305, size: 32, offset: 17408)
!6971 = !DIDerivedType(tag: DW_TAG_member, name: "s_fc_replay_state", scope: !6579, file: !5551, line: 1752, baseType: !6972, size: 512, offset: 17472)
!6972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ext4_fc_replay_state", file: !6960, line: 146, size: 512, elements: !6973)
!6973 = !{!6974, !6975, !6976, !6977, !6978, !6979, !6988, !6989, !6990, !6991, !6992, !6993}
!6974 = !DIDerivedType(tag: DW_TAG_member, name: "fc_replay_num_tags", scope: !6972, file: !6960, line: 147, baseType: !59, size: 32)
!6975 = !DIDerivedType(tag: DW_TAG_member, name: "fc_replay_expected_off", scope: !6972, file: !6960, line: 148, baseType: !59, size: 32, offset: 32)
!6976 = !DIDerivedType(tag: DW_TAG_member, name: "fc_current_pass", scope: !6972, file: !6960, line: 149, baseType: !59, size: 32, offset: 64)
!6977 = !DIDerivedType(tag: DW_TAG_member, name: "fc_cur_tag", scope: !6972, file: !6960, line: 150, baseType: !59, size: 32, offset: 96)
!6978 = !DIDerivedType(tag: DW_TAG_member, name: "fc_crc", scope: !6972, file: !6960, line: 151, baseType: !59, size: 32, offset: 128)
!6979 = !DIDerivedType(tag: DW_TAG_member, name: "fc_regions", scope: !6972, file: !6960, line: 152, baseType: !6980, size: 64, offset: 192)
!6980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6981, size: 64)
!6981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ext4_fc_alloc_region", file: !6960, line: 137, size: 192, elements: !6982)
!6982 = !{!6983, !6985, !6986, !6987}
!6983 = !DIDerivedType(tag: DW_TAG_member, name: "lblk", scope: !6981, file: !6960, line: 138, baseType: !6984, size: 32)
!6984 = !DIDerivedType(tag: DW_TAG_typedef, name: "ext4_lblk_t", file: !5551, line: 120, baseType: !447)
!6985 = !DIDerivedType(tag: DW_TAG_member, name: "pblk", scope: !6981, file: !6960, line: 139, baseType: !6723, size: 64, offset: 64)
!6986 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !6981, file: !6960, line: 140, baseType: !59, size: 32, offset: 128)
!6987 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !6981, file: !6960, line: 140, baseType: !59, size: 32, offset: 160)
!6988 = !DIDerivedType(tag: DW_TAG_member, name: "fc_regions_size", scope: !6972, file: !6960, line: 153, baseType: !59, size: 32, offset: 256)
!6989 = !DIDerivedType(tag: DW_TAG_member, name: "fc_regions_used", scope: !6972, file: !6960, line: 153, baseType: !59, size: 32, offset: 288)
!6990 = !DIDerivedType(tag: DW_TAG_member, name: "fc_regions_valid", scope: !6972, file: !6960, line: 153, baseType: !59, size: 32, offset: 320)
!6991 = !DIDerivedType(tag: DW_TAG_member, name: "fc_modified_inodes", scope: !6972, file: !6960, line: 154, baseType: !2091, size: 64, offset: 384)
!6992 = !DIDerivedType(tag: DW_TAG_member, name: "fc_modified_inodes_used", scope: !6972, file: !6960, line: 155, baseType: !59, size: 32, offset: 448)
!6993 = !DIDerivedType(tag: DW_TAG_member, name: "fc_modified_inodes_size", scope: !6972, file: !6960, line: 155, baseType: !59, size: 32, offset: 480)
!6994 = !{!6995}
!6995 = !DILocalVariable(name: "sb", arg: 1, scope: !6575, file: !5551, line: 1755, type: !529)
!6996 = !DILocation(line: 1755, column: 64, scope: !6575)
!6997 = !DILocation(line: 1757, column: 9, scope: !6575)
!6998 = !DILocation(line: 1757, column: 13, scope: !6575)
!6999 = !DILocation(line: 1757, column: 2, scope: !6575)
!7000 = distinct !DISubprogram(name: "ext4_acl_to_disk", scope: !2, file: !2, line: 91, type: !7001, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !7005)
!7001 = !DISubroutineType(types: !7002)
!7002 = !{!57, !7003, !71}
!7003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7004, size: 64)
!7004 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !369)
!7005 = !{!7006, !7007, !7008, !7009, !7010, !7011, !7017, !7018}
!7006 = !DILocalVariable(name: "acl", arg: 1, scope: !7000, file: !2, line: 91, type: !7003)
!7007 = !DILocalVariable(name: "size", arg: 2, scope: !7000, file: !2, line: 91, type: !71)
!7008 = !DILocalVariable(name: "ext_acl", scope: !7000, file: !2, line: 93, type: !5563)
!7009 = !DILocalVariable(name: "e", scope: !7000, file: !2, line: 94, type: !518)
!7010 = !DILocalVariable(name: "n", scope: !7000, file: !2, line: 95, type: !72)
!7011 = !DILocalVariable(name: "acl_e", scope: !7012, file: !2, line: 105, type: !7015)
!7012 = distinct !DILexicalBlock(scope: !7013, file: !2, line: 104, column: 37)
!7013 = distinct !DILexicalBlock(scope: !7014, file: !2, line: 104, column: 2)
!7014 = distinct !DILexicalBlock(scope: !7000, file: !2, line: 104, column: 2)
!7015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7016, size: 64)
!7016 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !390)
!7017 = !DILocalVariable(name: "entry", scope: !7012, file: !2, line: 106, type: !5570)
!7018 = !DILabel(scope: !7000, name: "fail", file: !2, line: 134)
!7019 = !DILocation(line: 91, column: 42, scope: !7000)
!7020 = !DILocation(line: 91, column: 55, scope: !7000)
!7021 = !DILocation(line: 93, column: 2, scope: !7000)
!7022 = !DILocation(line: 93, column: 19, scope: !7000)
!7023 = !DILocation(line: 94, column: 2, scope: !7000)
!7024 = !DILocation(line: 94, column: 8, scope: !7000)
!7025 = !DILocation(line: 95, column: 2, scope: !7000)
!7026 = !DILocation(line: 95, column: 9, scope: !7000)
!7027 = !DILocation(line: 97, column: 24, scope: !7000)
!7028 = !DILocation(line: 97, column: 29, scope: !7000)
!7029 = !DILocation(line: 97, column: 10, scope: !7000)
!7030 = !DILocation(line: 97, column: 3, scope: !7000)
!7031 = !DILocation(line: 97, column: 8, scope: !7000)
!7032 = !DILocation(line: 98, column: 46, scope: !7000)
!7033 = !DILocation(line: 98, column: 51, scope: !7000)
!7034 = !DILocation(line: 98, column: 59, scope: !7000)
!7035 = !DILocation(line: 98, column: 44, scope: !7000)
!7036 = !DILocation(line: 98, column: 12, scope: !7000)
!7037 = !DILocation(line: 98, column: 10, scope: !7000)
!7038 = !DILocation(line: 100, column: 7, scope: !7039)
!7039 = distinct !DILexicalBlock(scope: !7000, file: !2, line: 100, column: 6)
!7040 = !DILocation(line: 100, column: 6, scope: !7000)
!7041 = !DILocation(line: 101, column: 10, scope: !7039)
!7042 = !DILocation(line: 101, column: 3, scope: !7039)
!7043 = !DILocation(line: 102, column: 2, scope: !7000)
!7044 = !DILocation(line: 102, column: 11, scope: !7000)
!7045 = !DILocation(line: 102, column: 21, scope: !7000)
!7046 = !DILocation(line: 103, column: 14, scope: !7000)
!7047 = !DILocation(line: 103, column: 22, scope: !7000)
!7048 = !DILocation(line: 103, column: 4, scope: !7000)
!7049 = !DILocation(line: 104, column: 9, scope: !7014)
!7050 = !DILocation(line: 104, column: 7, scope: !7014)
!7051 = !DILocation(line: 104, column: 14, scope: !7013)
!7052 = !DILocation(line: 104, column: 18, scope: !7013)
!7053 = !DILocation(line: 104, column: 23, scope: !7013)
!7054 = !DILocation(line: 104, column: 16, scope: !7013)
!7055 = !DILocation(line: 104, column: 2, scope: !7014)
!7056 = !DILocation(line: 105, column: 3, scope: !7012)
!7057 = !DILocation(line: 105, column: 33, scope: !7012)
!7058 = !DILocation(line: 105, column: 42, scope: !7012)
!7059 = !DILocation(line: 105, column: 47, scope: !7012)
!7060 = !DILocation(line: 105, column: 57, scope: !7012)
!7061 = !DILocation(line: 106, column: 3, scope: !7012)
!7062 = !DILocation(line: 106, column: 19, scope: !7012)
!7063 = !DILocation(line: 106, column: 45, scope: !7012)
!7064 = !DILocation(line: 107, column: 19, scope: !7012)
!7065 = !DILocation(line: 107, column: 3, scope: !7012)
!7066 = !DILocation(line: 107, column: 10, scope: !7012)
!7067 = !DILocation(line: 107, column: 17, scope: !7012)
!7068 = !DILocation(line: 108, column: 19, scope: !7012)
!7069 = !DILocation(line: 108, column: 3, scope: !7012)
!7070 = !DILocation(line: 108, column: 10, scope: !7012)
!7071 = !DILocation(line: 108, column: 17, scope: !7012)
!7072 = !DILocation(line: 109, column: 11, scope: !7012)
!7073 = !DILocation(line: 109, column: 18, scope: !7012)
!7074 = !DILocation(line: 109, column: 3, scope: !7012)
!7075 = !DILocation(line: 111, column: 18, scope: !7076)
!7076 = distinct !DILexicalBlock(scope: !7012, file: !2, line: 109, column: 25)
!7077 = !DILocation(line: 111, column: 4, scope: !7076)
!7078 = !DILocation(line: 111, column: 11, scope: !7076)
!7079 = !DILocation(line: 111, column: 16, scope: !7076)
!7080 = !DILocation(line: 113, column: 6, scope: !7076)
!7081 = !DILocation(line: 114, column: 4, scope: !7076)
!7082 = !DILocation(line: 116, column: 18, scope: !7076)
!7083 = !DILocation(line: 116, column: 4, scope: !7076)
!7084 = !DILocation(line: 116, column: 11, scope: !7076)
!7085 = !DILocation(line: 116, column: 16, scope: !7076)
!7086 = !DILocation(line: 118, column: 6, scope: !7076)
!7087 = !DILocation(line: 119, column: 4, scope: !7076)
!7088 = !DILocation(line: 125, column: 6, scope: !7076)
!7089 = !DILocation(line: 126, column: 4, scope: !7076)
!7090 = !DILocation(line: 129, column: 4, scope: !7076)
!7091 = !DILocation(line: 131, column: 2, scope: !7013)
!7092 = !DILocation(line: 131, column: 2, scope: !7012)
!7093 = !DILocation(line: 104, column: 33, scope: !7013)
!7094 = !DILocation(line: 104, column: 2, scope: !7013)
!7095 = distinct !{!7095, !7055, !7096, !5883, !5884}
!7096 = !DILocation(line: 131, column: 2, scope: !7014)
!7097 = !DILocation(line: 132, column: 17, scope: !7000)
!7098 = !DILocation(line: 132, column: 2, scope: !7000)
!7099 = !DILocation(line: 134, column: 1, scope: !7000)
!7100 = !DILocation(line: 135, column: 8, scope: !7000)
!7101 = !DILocation(line: 135, column: 2, scope: !7000)
!7102 = !DILocation(line: 136, column: 9, scope: !7000)
!7103 = !DILocation(line: 136, column: 2, scope: !7000)
!7104 = !DILocation(line: 137, column: 1, scope: !7000)
!7105 = !DISubprogram(name: "ext4_xattr_set_handle", scope: !5691, file: !5691, line: 180, type: !7106, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7106 = !DISubroutineType(types: !7107)
!7107 = !{!59, !5909, !345, !59, !55, !1511, !72, !59}
!7108 = !DISubprogram(name: "set_cached_acl", scope: !370, file: !370, line: 90, type: !7109, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7109 = !DISubroutineType(types: !7110)
!7110 = !{null, !345, !59, !368}
!7111 = distinct !DISubprogram(name: "from_kuid", scope: !352, file: !352, line: 153, type: !7112, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !7114)
!7112 = !DISubroutineType(types: !7113)
!7113 = !{!356, !963, !351}
!7114 = !{!7115, !7116}
!7115 = !DILocalVariable(name: "to", arg: 1, scope: !7111, file: !352, line: 153, type: !963)
!7116 = !DILocalVariable(name: "kuid", arg: 2, scope: !7111, file: !352, line: 153, type: !351)
!7117 = !DILocation(line: 153, column: 54, scope: !7111)
!7118 = !DILocation(line: 153, column: 65, scope: !7111)
!7119 = !DILocation(line: 155, column: 9, scope: !7111)
!7120 = !DILocation(line: 155, column: 2, scope: !7111)
!7121 = distinct !DISubprogram(name: "from_kgid", scope: !352, file: !352, line: 158, type: !7122, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !7124)
!7122 = !DISubroutineType(types: !7123)
!7123 = !{!364, !963, !360}
!7124 = !{!7125, !7126}
!7125 = !DILocalVariable(name: "to", arg: 1, scope: !7121, file: !352, line: 158, type: !963)
!7126 = !DILocalVariable(name: "kgid", arg: 2, scope: !7121, file: !352, line: 158, type: !360)
!7127 = !DILocation(line: 158, column: 54, scope: !7121)
!7128 = !DILocation(line: 158, column: 65, scope: !7121)
!7129 = !DILocation(line: 160, column: 9, scope: !7121)
!7130 = !DILocation(line: 160, column: 2, scope: !7121)
!7131 = distinct !DISubprogram(name: "__kuid_val", scope: !352, file: !352, line: 34, type: !7132, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !7134)
!7132 = !DISubroutineType(types: !7133)
!7133 = !{!356, !351}
!7134 = !{!7135}
!7135 = !DILocalVariable(name: "uid", arg: 1, scope: !7131, file: !352, line: 34, type: !351)
!7136 = !DILocation(line: 34, column: 39, scope: !7131)
!7137 = !DILocation(line: 36, column: 13, scope: !7131)
!7138 = !DILocation(line: 36, column: 2, scope: !7131)
!7139 = distinct !DISubprogram(name: "__kgid_val", scope: !352, file: !352, line: 39, type: !7140, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !7142)
!7140 = !DISubroutineType(types: !7141)
!7141 = !{!364, !360}
!7142 = !{!7143}
!7143 = !DILocalVariable(name: "gid", arg: 1, scope: !7139, file: !352, line: 39, type: !360)
!7144 = !DILocation(line: 39, column: 39, scope: !7139)
!7145 = !DILocation(line: 41, column: 13, scope: !7139)
!7146 = !DILocation(line: 41, column: 2, scope: !7139)
!7147 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !374, file: !374, line: 331, type: !7148, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !7151)
!7148 = !DISubroutineType(types: !7149)
!7149 = !{!880, !7150}
!7150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!7151 = !{!7152}
!7152 = !DILocalVariable(name: "r", arg: 1, scope: !7147, file: !374, line: 331, type: !7150)
!7153 = !DILocation(line: 331, column: 67, scope: !7147)
!7154 = !DILocation(line: 333, column: 33, scope: !7147)
!7155 = !DILocation(line: 333, column: 9, scope: !7147)
!7156 = !DILocation(line: 333, column: 2, scope: !7147)
!7157 = !DISubprogram(name: "kvfree_call_rcu", scope: !7158, file: !7158, line: 37, type: !7159, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7158 = !DIFile(filename: "./include/linux/rcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ba1a11a02717ea844631ceb399131463")
!7159 = !DISubroutineType(types: !7160)
!7160 = !{null, !382, !57}
!7161 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !374, file: !374, line: 313, type: !7162, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !7164)
!7162 = !DISubroutineType(types: !7163)
!7163 = !{!880, !7150, !2091}
!7164 = !{!7165, !7166}
!7165 = !DILocalVariable(name: "r", arg: 1, scope: !7161, file: !374, line: 313, type: !7150)
!7166 = !DILocalVariable(name: "oldp", arg: 2, scope: !7161, file: !374, line: 313, type: !2091)
!7167 = !DILocation(line: 313, column: 69, scope: !7161)
!7168 = !DILocation(line: 313, column: 77, scope: !7161)
!7169 = !DILocation(line: 315, column: 36, scope: !7161)
!7170 = !DILocation(line: 315, column: 39, scope: !7161)
!7171 = !DILocation(line: 315, column: 9, scope: !7161)
!7172 = !DILocation(line: 315, column: 2, scope: !7161)
!7173 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !374, file: !374, line: 270, type: !7174, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !7176)
!7174 = !DISubroutineType(types: !7175)
!7175 = !{!880, !59, !7150, !2091}
!7176 = !{!7177, !7178, !7179, !7180}
!7177 = !DILocalVariable(name: "i", arg: 1, scope: !7173, file: !374, line: 270, type: !59)
!7178 = !DILocalVariable(name: "r", arg: 2, scope: !7173, file: !374, line: 270, type: !7150)
!7179 = !DILocalVariable(name: "oldp", arg: 3, scope: !7173, file: !374, line: 270, type: !2091)
!7180 = !DILocalVariable(name: "old", scope: !7173, file: !374, line: 272, type: !59)
!7181 = !DILocation(line: 270, column: 61, scope: !7173)
!7182 = !DILocation(line: 270, column: 76, scope: !7173)
!7183 = !DILocation(line: 270, column: 84, scope: !7173)
!7184 = !DILocation(line: 272, column: 2, scope: !7173)
!7185 = !DILocation(line: 272, column: 6, scope: !7173)
!7186 = !DILocation(line: 272, column: 37, scope: !7173)
!7187 = !DILocation(line: 272, column: 41, scope: !7173)
!7188 = !DILocation(line: 272, column: 44, scope: !7173)
!7189 = !DILocation(line: 272, column: 12, scope: !7173)
!7190 = !DILocation(line: 274, column: 6, scope: !7191)
!7191 = distinct !DILexicalBlock(scope: !7173, file: !374, line: 274, column: 6)
!7192 = !DILocation(line: 274, column: 6, scope: !7173)
!7193 = !DILocation(line: 275, column: 11, scope: !7191)
!7194 = !DILocation(line: 275, column: 4, scope: !7191)
!7195 = !DILocation(line: 275, column: 9, scope: !7191)
!7196 = !DILocation(line: 275, column: 3, scope: !7191)
!7197 = !DILocation(line: 277, column: 6, scope: !7198)
!7198 = distinct !DILexicalBlock(scope: !7173, file: !374, line: 277, column: 6)
!7199 = !DILocation(line: 277, column: 13, scope: !7198)
!7200 = !DILocation(line: 277, column: 10, scope: !7198)
!7201 = !DILocation(line: 277, column: 6, scope: !7173)
!7202 = !DILocation(line: 278, column: 3, scope: !7203)
!7203 = distinct !DILexicalBlock(scope: !7198, file: !374, line: 277, column: 16)
!7204 = !DILocation(line: 278, column: 3, scope: !7205)
!7205 = distinct !DILexicalBlock(scope: !7203, file: !374, line: 278, column: 3)
!7206 = !DILocation(line: 278, column: 3, scope: !7207)
!7207 = distinct !DILexicalBlock(scope: !7205, file: !374, line: 278, column: 3)
!7208 = !DILocation(line: 278, column: 3, scope: !7209)
!7209 = distinct !DILexicalBlock(scope: !7205, file: !374, line: 278, column: 3)
!7210 = !DILocation(line: 278, column: 3, scope: !7211)
!7211 = distinct !DILexicalBlock(scope: !7209, file: !374, line: 278, column: 3)
!7212 = !{i64 2150823330}
!7213 = !DILocation(line: 279, column: 3, scope: !7203)
!7214 = !DILocation(line: 282, column: 6, scope: !7215)
!7215 = distinct !DILexicalBlock(scope: !7173, file: !374, line: 282, column: 6)
!7216 = !DILocation(line: 282, column: 6, scope: !7173)
!7217 = !DILocation(line: 283, column: 26, scope: !7215)
!7218 = !DILocation(line: 283, column: 3, scope: !7215)
!7219 = !DILocation(line: 285, column: 2, scope: !7173)
!7220 = !DILocation(line: 286, column: 1, scope: !7173)
!7221 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !7222, file: !7222, line: 397, type: !7223, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !7226)
!7222 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!7223 = !DISubroutineType(types: !7224)
!7224 = !{!59, !59, !7225}
!7225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!7226 = !{!7227, !7228}
!7227 = !DILocalVariable(name: "i", arg: 1, scope: !7221, file: !7222, line: 397, type: !59)
!7228 = !DILocalVariable(name: "v", arg: 2, scope: !7221, file: !7222, line: 397, type: !7225)
!7229 = !DILocation(line: 397, column: 30, scope: !7221)
!7230 = !DILocation(line: 397, column: 43, scope: !7221)
!7231 = !DILocation(line: 399, column: 2, scope: !7221)
!7232 = !DILocation(line: 399, column: 2, scope: !7233)
!7233 = distinct !DILexicalBlock(scope: !7221, file: !7222, line: 399, column: 2)
!7234 = !DILocation(line: 400, column: 31, scope: !7221)
!7235 = !DILocation(line: 400, column: 2, scope: !7221)
!7236 = !DILocation(line: 401, column: 38, scope: !7221)
!7237 = !DILocation(line: 401, column: 41, scope: !7221)
!7238 = !DILocation(line: 401, column: 9, scope: !7221)
!7239 = !DILocation(line: 401, column: 2, scope: !7221)
!7240 = !DISubprogram(name: "refcount_warn_saturate", scope: !374, file: !374, line: 127, type: !7241, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7241 = !DISubroutineType(types: !7242)
!7242 = !{null, !7150, !5555}
!7243 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !7244, file: !7244, line: 94, type: !7245, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !7250)
!7244 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!7245 = !DISubroutineType(types: !7246)
!7246 = !{null, !7247, !72}
!7247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7248, size: 64)
!7248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7249)
!7249 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!7250 = !{!7251, !7252}
!7251 = !DILocalVariable(name: "v", arg: 1, scope: !7243, file: !7244, line: 94, type: !7247)
!7252 = !DILocalVariable(name: "size", arg: 2, scope: !7243, file: !7244, line: 94, type: !72)
!7253 = !DILocation(line: 94, column: 79, scope: !7243)
!7254 = !DILocation(line: 94, column: 89, scope: !7243)
!7255 = !DILocation(line: 96, column: 20, scope: !7243)
!7256 = !DILocation(line: 96, column: 23, scope: !7243)
!7257 = !DILocation(line: 96, column: 2, scope: !7243)
!7258 = !DILocation(line: 97, column: 2, scope: !7243)
!7259 = !DILocation(line: 98, column: 1, scope: !7243)
!7260 = distinct !DISubprogram(name: "raw_atomic_fetch_sub_release", scope: !7261, file: !7261, line: 928, type: !7223, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !7262)
!7261 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!7262 = !{!7263, !7264}
!7263 = !DILocalVariable(name: "i", arg: 1, scope: !7260, file: !7261, line: 928, type: !59)
!7264 = !DILocalVariable(name: "v", arg: 2, scope: !7260, file: !7261, line: 928, type: !7225)
!7265 = !DILocation(line: 928, column: 34, scope: !7260)
!7266 = !DILocation(line: 928, column: 47, scope: !7260)
!7267 = !DILocation(line: 936, column: 31, scope: !7260)
!7268 = !DILocation(line: 936, column: 34, scope: !7260)
!7269 = !DILocation(line: 936, column: 9, scope: !7260)
!7270 = !DILocation(line: 936, column: 2, scope: !7260)
!7271 = distinct !DISubprogram(name: "kasan_check_write", scope: !7272, file: !7272, line: 44, type: !7273, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !7275)
!7272 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!7273 = !DISubroutineType(types: !7274)
!7274 = !{!880, !7247, !28}
!7275 = !{!7276, !7277}
!7276 = !DILocalVariable(name: "p", arg: 1, scope: !7271, file: !7272, line: 44, type: !7247)
!7277 = !DILocalVariable(name: "size", arg: 2, scope: !7271, file: !7272, line: 44, type: !28)
!7278 = !DILocation(line: 44, column: 59, scope: !7271)
!7279 = !DILocation(line: 44, column: 75, scope: !7271)
!7280 = !DILocation(line: 46, column: 2, scope: !7271)
!7281 = distinct !DISubprogram(name: "kcsan_check_access", scope: !7282, file: !7282, line: 229, type: !7283, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !7285)
!7282 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!7283 = !DISubroutineType(types: !7284)
!7284 = !{null, !7247, !72, !59}
!7285 = !{!7286, !7287, !7288}
!7286 = !DILocalVariable(name: "ptr", arg: 1, scope: !7281, file: !7282, line: 229, type: !7247)
!7287 = !DILocalVariable(name: "size", arg: 2, scope: !7281, file: !7282, line: 229, type: !72)
!7288 = !DILocalVariable(name: "type", arg: 3, scope: !7281, file: !7282, line: 230, type: !59)
!7289 = !DILocation(line: 229, column: 60, scope: !7281)
!7290 = !DILocation(line: 229, column: 72, scope: !7281)
!7291 = !DILocation(line: 230, column: 15, scope: !7281)
!7292 = !DILocation(line: 230, column: 23, scope: !7281)
!7293 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !7294, file: !7294, line: 101, type: !7223, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !7295)
!7294 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!7295 = !{!7296, !7297, !7298}
!7296 = !DILocalVariable(name: "i", arg: 1, scope: !7293, file: !7294, line: 101, type: !59)
!7297 = !DILocalVariable(name: "v", arg: 2, scope: !7293, file: !7294, line: 101, type: !7225)
!7298 = !DILocalVariable(name: "__ret", scope: !7299, file: !7294, line: 103, type: !59)
!7299 = distinct !DILexicalBlock(scope: !7293, file: !7294, line: 103, column: 9)
!7300 = !DILocation(line: 101, column: 54, scope: !7293)
!7301 = !DILocation(line: 101, column: 67, scope: !7293)
!7302 = !DILocation(line: 103, column: 9, scope: !7299)
!7303 = !{i64 2149001796, i64 2149001835, i64 2149001856, i64 2149001893, i64 2149001916, i64 2149001925}
!7304 = !DILocation(line: 103, column: 9, scope: !7293)
!7305 = !DILocation(line: 103, column: 2, scope: !7293)
