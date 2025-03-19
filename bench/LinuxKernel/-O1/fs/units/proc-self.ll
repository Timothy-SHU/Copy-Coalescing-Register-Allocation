; ModuleID = 'fs/proc/self.c'
source_filename = "fs/proc/self.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [56 x i8] }
%struct.pcpu_hot = type { %union.anon.23 }
%union.anon.23 = type { %struct.anon.24, [16 x i8] }
%struct.anon.24 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.timespec64 = type { i64, i64 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.hlist_bl_head = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i64, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i16, i16, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i64, i32, i32, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.13, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.14, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.15, ptr, %struct.address_space, %struct.list_head, %union.anon.16, i32, i32, ptr, ptr }
%union.anon.13 = type { i32 }
%union.anon.14 = type { %struct.callback_head }
%union.anon.15 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.16 = type { ptr }
%struct.proc_fs_info = type { ptr, ptr, ptr, %struct.kgid_t, i32, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [32 x i8], %struct.lockref, ptr, ptr, i64, ptr, %union.anon.21, %struct.list_head, %struct.list_head, %union.anon.22 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.17, ptr }
%union.anon.17 = type { i64 }
%struct.lockref = type { %union.anon.19 }
%union.anon.19 = type { i64 }
%union.anon.21 = type { %struct.list_head }
%union.anon.22 = type { %struct.hlist_node }
%struct.delayed_call = type { ptr, ptr }

@.str = private unnamed_addr constant [5 x i8] c"self\00", align 1, !dbg !0
@self_inum = internal global i32 0, section ".data..ro_after_init", align 4, !dbg !7
@proc_self_inode_operations = internal constant %struct.inode_operations { ptr null, ptr @proc_self_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [56 x i8] undef }, align 64, !dbg !3563
@.str.1 = private unnamed_addr constant [46 x i8] c"\013proc_fill_super: can't allocate /proc/self\0A\00", align 1, !dbg !3558
@.str.2 = private unnamed_addr constant [3 x i8] c"%u\00", align 1, !dbg !3565
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !3568

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @proc_setup_self(ptr noundef %s) #0 align 16 !dbg !3582 {
entry:
  %s.addr = alloca ptr, align 8
  %root_inode = alloca ptr, align 8
  %fs_info = alloca ptr, align 8
  %self = alloca ptr, align 8
  %ret = alloca i32, align 4
  %inode = alloca ptr, align 8
  %tmp = alloca %struct.timespec64, align 8
  %.compoundliteral = alloca %struct.kuid_t, align 4
  %.compoundliteral8 = alloca %struct.kgid_t, align 4
  %tmp13 = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3584, metadata !DIExpression()), !dbg !3601
  call void @llvm.lifetime.start.p0(i64 8, ptr %root_inode) #15, !dbg !3602
  call void @llvm.dbg.declare(metadata ptr %root_inode, metadata !3585, metadata !DIExpression()), !dbg !3603
  %0 = load ptr, ptr %s.addr, align 8, !dbg !3604
  %s_root = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 13, !dbg !3605
  %1 = load ptr, ptr %s_root, align 8, !dbg !3605
  %call = call ptr @d_inode(ptr noundef %1) #16, !dbg !3606
  store ptr %call, ptr %root_inode, align 8, !dbg !3603
  call void @llvm.lifetime.start.p0(i64 8, ptr %fs_info) #15, !dbg !3607
  call void @llvm.dbg.declare(metadata ptr %fs_info, metadata !3586, metadata !DIExpression()), !dbg !3608
  %2 = load ptr, ptr %s.addr, align 8, !dbg !3609
  %call1 = call ptr @proc_sb_info(ptr noundef %2) #16, !dbg !3610
  store ptr %call1, ptr %fs_info, align 8, !dbg !3608
  call void @llvm.lifetime.start.p0(i64 8, ptr %self) #15, !dbg !3611
  call void @llvm.dbg.declare(metadata ptr %self, metadata !3596, metadata !DIExpression()), !dbg !3612
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !3613
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3597, metadata !DIExpression()), !dbg !3614
  store i32 -12, ptr %ret, align 4, !dbg !3614
  %3 = load ptr, ptr %root_inode, align 8, !dbg !3615
  call void @inode_lock(ptr noundef %3) #16, !dbg !3616
  %4 = load ptr, ptr %s.addr, align 8, !dbg !3617
  %s_root2 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 13, !dbg !3618
  %5 = load ptr, ptr %s_root2, align 8, !dbg !3618
  %call3 = call ptr @d_alloc_name(ptr noundef %5, ptr noundef @.str) #16, !dbg !3619
  store ptr %call3, ptr %self, align 8, !dbg !3620
  %6 = load ptr, ptr %self, align 8, !dbg !3621
  %tobool = icmp ne ptr %6, null, !dbg !3621
  br i1 %tobool, label %if.then, label %if.end10, !dbg !3622

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #15, !dbg !3623
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !3598, metadata !DIExpression()), !dbg !3624
  %7 = load ptr, ptr %s.addr, align 8, !dbg !3625
  %call4 = call ptr @new_inode(ptr noundef %7) #16, !dbg !3626
  store ptr %call4, ptr %inode, align 8, !dbg !3624
  %8 = load ptr, ptr %inode, align 8, !dbg !3627
  %tobool5 = icmp ne ptr %8, null, !dbg !3627
  br i1 %tobool5, label %if.then6, label %if.else, !dbg !3629

if.then6:                                         ; preds = %if.then
  %9 = load i32, ptr @self_inum, align 4, !dbg !3630
  %conv = zext i32 %9 to i64, !dbg !3630
  %10 = load ptr, ptr %inode, align 8, !dbg !3632
  %i_ino = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 12, !dbg !3633
  store i64 %conv, ptr %i_ino, align 8, !dbg !3634
  %11 = load ptr, ptr %inode, align 8, !dbg !3635
  %i_mtime = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 17, !dbg !3636
  %12 = load ptr, ptr %inode, align 8, !dbg !3637
  %i_atime = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 16, !dbg !3638
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #15, !dbg !3639
  %13 = load ptr, ptr %inode, align 8, !dbg !3640
  %call7 = call { i64, i64 } @inode_set_ctime_current(ptr noundef %13) #16, !dbg !3639
  %14 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 0, !dbg !3639
  %15 = extractvalue { i64, i64 } %call7, 0, !dbg !3639
  store i64 %15, ptr %14, align 8, !dbg !3639
  %16 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 1, !dbg !3639
  %17 = extractvalue { i64, i64 } %call7, 1, !dbg !3639
  store i64 %17, ptr %16, align 8, !dbg !3639
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i_atime, ptr align 8 %tmp, i64 16, i1 false), !dbg !3639
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #15, !dbg !3639
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i_mtime, ptr align 8 %i_atime, i64 16, i1 false), !dbg !3641
  %18 = load ptr, ptr %inode, align 8, !dbg !3642
  %i_mode = getelementptr inbounds %struct.inode, ptr %18, i32 0, i32 0, !dbg !3643
  store i16 -24065, ptr %i_mode, align 8, !dbg !3644
  %19 = load ptr, ptr %inode, align 8, !dbg !3645
  %i_uid = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 2, !dbg !3646
  %val = getelementptr inbounds %struct.kuid_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !3647
  store i32 0, ptr %val, align 4, !dbg !3647
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i_uid, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !3647
  %20 = load ptr, ptr %inode, align 8, !dbg !3648
  %i_gid = getelementptr inbounds %struct.inode, ptr %20, i32 0, i32 4, !dbg !3649
  %val9 = getelementptr inbounds %struct.kgid_t, ptr %.compoundliteral8, i32 0, i32 0, !dbg !3650
  store i32 0, ptr %val9, align 4, !dbg !3650
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i_gid, ptr align 4 %.compoundliteral8, i64 4, i1 false), !dbg !3650
  %21 = load ptr, ptr %inode, align 8, !dbg !3651
  %i_op = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 8, !dbg !3652
  store ptr @proc_self_inode_operations, ptr %i_op, align 8, !dbg !3653
  %22 = load ptr, ptr %self, align 8, !dbg !3654
  %23 = load ptr, ptr %inode, align 8, !dbg !3655
  call void @d_add(ptr noundef %22, ptr noundef %23) #16, !dbg !3656
  store i32 0, ptr %ret, align 4, !dbg !3657
  br label %if.end, !dbg !3658

if.else:                                          ; preds = %if.then
  %24 = load ptr, ptr %self, align 8, !dbg !3659
  call void @dput(ptr noundef %24) #16, !dbg !3661
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then6
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #15, !dbg !3662
  br label %if.end10, !dbg !3663

if.end10:                                         ; preds = %if.end, %entry
  %25 = load ptr, ptr %root_inode, align 8, !dbg !3664
  call void @inode_unlock(ptr noundef %25) #16, !dbg !3665
  %26 = load i32, ptr %ret, align 4, !dbg !3666
  %tobool11 = icmp ne i32 %26, 0, !dbg !3666
  br i1 %tobool11, label %if.then12, label %if.else15, !dbg !3668

if.then12:                                        ; preds = %if.end10
  br label %do.body, !dbg !3669

do.body:                                          ; preds = %if.then12
  br label %do.cond, !dbg !3671

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3671

do.end:                                           ; preds = %do.cond
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1) #17, !dbg !3669
  store i32 %call14, ptr %tmp13, align 4, !dbg !3671
  %27 = load i32, ptr %tmp13, align 4, !dbg !3669
  br label %if.end16, !dbg !3673

if.else15:                                        ; preds = %if.end10
  %28 = load ptr, ptr %self, align 8, !dbg !3674
  %29 = load ptr, ptr %fs_info, align 8, !dbg !3675
  %proc_self = getelementptr inbounds %struct.proc_fs_info, ptr %29, i32 0, i32 1, !dbg !3676
  store ptr %28, ptr %proc_self, align 8, !dbg !3677
  br label %if.end16

if.end16:                                         ; preds = %if.else15, %do.end
  %30 = load i32, ptr %ret, align 4, !dbg !3678
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !3679
  call void @llvm.lifetime.end.p0(i64 8, ptr %self) #15, !dbg !3679
  call void @llvm.lifetime.end.p0(i64 8, ptr %fs_info) #15, !dbg !3679
  call void @llvm.lifetime.end.p0(i64 8, ptr %root_inode) #15, !dbg !3679
  ret i32 %30, !dbg !3680
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @d_inode(ptr noundef %dentry) #3 align 16 !dbg !3681 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !3685, metadata !DIExpression()), !dbg !3686
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !3687
  %d_inode = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5, !dbg !3688
  %1 = load ptr, ptr %d_inode, align 8, !dbg !3688
  ret ptr %1, !dbg !3689
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @proc_sb_info(ptr noundef %sb) #3 align 16 !dbg !3690 {
entry:
  %sb.addr = alloca ptr, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !3694, metadata !DIExpression()), !dbg !3695
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !3696
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 29, !dbg !3697
  %1 = load ptr, ptr %s_fs_info, align 32, !dbg !3697
  ret ptr %1, !dbg !3698
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @inode_lock(ptr noundef %inode) #3 align 16 !dbg !3699 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !3701, metadata !DIExpression()), !dbg !3702
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !3703
  %i_rwsem = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 25, !dbg !3704
  call void @down_write(ptr noundef %i_rwsem) #16, !dbg !3705
  ret void, !dbg !3706
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3707 dso_local ptr @d_alloc_name(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3710 dso_local ptr @new_inode(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3711 dso_local { i64, i64 } @inode_set_ctime_current(ptr noundef) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3714 dso_local void @d_add(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3715 dso_local void @dput(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @inode_unlock(ptr noundef %inode) #3 align 16 !dbg !3716 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !3718, metadata !DIExpression()), !dbg !3719
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !3720
  %i_rwsem = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 25, !dbg !3721
  call void @up_write(ptr noundef %i_rwsem) #16, !dbg !3722
  ret void, !dbg !3723
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !3724 dso_local i32 @_printk(ptr noundef, ...) #6

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @proc_self_init() #7 section ".init.text" align 16 !dbg !3728 {
entry:
  %call = call i32 @proc_alloc_inum(ptr noundef @self_inum) #16, !dbg !3729
  ret void, !dbg !3730
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3731 dso_local i32 @proc_alloc_inum(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3734 dso_local void @down_write(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @proc_self_get_link(ptr noundef %dentry, ptr noundef %inode, ptr noundef %done) #0 align 16 !dbg !3738 {
entry:
  %retval = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %inode.addr = alloca ptr, align 8
  %done.addr = alloca ptr, align 8
  %ns = alloca ptr, align 8
  %tgid = alloca i32, align 4
  %name = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !3740, metadata !DIExpression()), !dbg !3746
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !3741, metadata !DIExpression()), !dbg !3747
  store ptr %done, ptr %done.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %done.addr, metadata !3742, metadata !DIExpression()), !dbg !3748
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns) #15, !dbg !3749
  call void @llvm.dbg.declare(metadata ptr %ns, metadata !3743, metadata !DIExpression()), !dbg !3750
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !3751
  %i_sb = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9, !dbg !3752
  %1 = load ptr, ptr %i_sb, align 8, !dbg !3752
  %call = call ptr @proc_pid_ns(ptr noundef %1) #16, !dbg !3753
  store ptr %call, ptr %ns, align 8, !dbg !3750
  call void @llvm.lifetime.start.p0(i64 4, ptr %tgid) #15, !dbg !3754
  call void @llvm.dbg.declare(metadata ptr %tgid, metadata !3744, metadata !DIExpression()), !dbg !3755
  %call1 = call ptr @get_current() #16, !dbg !3756
  %2 = load ptr, ptr %ns, align 8, !dbg !3757
  %call2 = call i32 @task_tgid_nr_ns(ptr noundef %call1, ptr noundef %2) #16, !dbg !3758
  store i32 %call2, ptr %tgid, align 4, !dbg !3755
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #15, !dbg !3759
  call void @llvm.dbg.declare(metadata ptr %name, metadata !3745, metadata !DIExpression()), !dbg !3760
  %3 = load i32, ptr %tgid, align 4, !dbg !3761
  %tobool = icmp ne i32 %3, 0, !dbg !3761
  br i1 %tobool, label %if.end, label %if.then, !dbg !3763

if.then:                                          ; preds = %entry
  %call3 = call ptr @ERR_PTR(i64 noundef -2) #16, !dbg !3764
  store ptr %call3, ptr %retval, align 8, !dbg !3765
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3765

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %dentry.addr, align 8, !dbg !3766
  %tobool4 = icmp ne ptr %4, null, !dbg !3766
  %5 = zext i1 %tobool4 to i64, !dbg !3766
  %cond = select i1 %tobool4, i32 3264, i32 2080, !dbg !3766
  %call5 = call noalias ptr @kmalloc(i64 noundef 11, i32 noundef %cond) #18, !dbg !3767
  store ptr %call5, ptr %name, align 8, !dbg !3768
  %6 = load ptr, ptr %name, align 8, !dbg !3769
  %tobool6 = icmp ne ptr %6, null, !dbg !3769
  %lnot = xor i1 %tobool6, true, !dbg !3769
  %lnot7 = xor i1 %lnot, true, !dbg !3769
  %lnot8 = xor i1 %lnot7, true, !dbg !3769
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !3769
  %conv = sext i32 %lnot.ext to i64, !dbg !3769
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3769
  %tobool9 = icmp ne i64 %expval, 0, !dbg !3769
  br i1 %tobool9, label %if.then10, label %if.end15, !dbg !3771

if.then10:                                        ; preds = %if.end
  %7 = load ptr, ptr %dentry.addr, align 8, !dbg !3772
  %tobool11 = icmp ne ptr %7, null, !dbg !3772
  br i1 %tobool11, label %cond.true, label %cond.false, !dbg !3772

cond.true:                                        ; preds = %if.then10
  %call12 = call ptr @ERR_PTR(i64 noundef -12) #16, !dbg !3773
  br label %cond.end, !dbg !3772

cond.false:                                       ; preds = %if.then10
  %call13 = call ptr @ERR_PTR(i64 noundef -10) #16, !dbg !3774
  br label %cond.end, !dbg !3772

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond14 = phi ptr [ %call12, %cond.true ], [ %call13, %cond.false ], !dbg !3772
  store ptr %cond14, ptr %retval, align 8, !dbg !3775
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3775

if.end15:                                         ; preds = %if.end
  %8 = load ptr, ptr %name, align 8, !dbg !3776
  %9 = load i32, ptr %tgid, align 4, !dbg !3777
  %call16 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %8, ptr noundef @.str.2, i32 noundef %9) #16, !dbg !3778
  %10 = load ptr, ptr %done.addr, align 8, !dbg !3779
  %11 = load ptr, ptr %name, align 8, !dbg !3780
  call void @set_delayed_call(ptr noundef %10, ptr noundef @kfree_link, ptr noundef %11) #16, !dbg !3781
  %12 = load ptr, ptr %name, align 8, !dbg !3782
  store ptr %12, ptr %retval, align 8, !dbg !3783
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3783

cleanup:                                          ; preds = %if.end15, %cond.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #15, !dbg !3784
  call void @llvm.lifetime.end.p0(i64 4, ptr %tgid) #15, !dbg !3784
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns) #15, !dbg !3784
  %13 = load ptr, ptr %retval, align 8, !dbg !3784
  ret ptr %13, !dbg !3784
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @proc_pid_ns(ptr noundef %sb) #3 align 16 !dbg !3785 {
entry:
  %sb.addr = alloca ptr, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !3789, metadata !DIExpression()), !dbg !3790
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !3791
  %call = call ptr @proc_sb_info(ptr noundef %0) #16, !dbg !3792
  %pid_ns = getelementptr inbounds %struct.proc_fs_info, ptr %call, i32 0, i32 0, !dbg !3793
  %1 = load ptr, ptr %pid_ns, align 8, !dbg !3793
  ret ptr %1, !dbg !3794
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @task_tgid_nr_ns(ptr noundef %tsk, ptr noundef %ns) #3 align 16 !dbg !3795 {
entry:
  %tsk.addr = alloca ptr, align 8
  %ns.addr = alloca ptr, align 8
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !3799, metadata !DIExpression()), !dbg !3801
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !3800, metadata !DIExpression()), !dbg !3802
  %0 = load ptr, ptr %tsk.addr, align 8, !dbg !3803
  %1 = load ptr, ptr %ns.addr, align 8, !dbg !3804
  %call = call i32 @__task_pid_nr_ns(ptr noundef %0, i32 noundef 1, ptr noundef %1) #16, !dbg !3805
  ret i32 %call, !dbg !3806
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #8 align 16 !dbg !3807 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #15, !dbg !3820
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !3812, metadata !DIExpression()), !dbg !3820
  br label %do.body, !dbg !3820

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !3821
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !3814, metadata !DIExpression()), !dbg !3821
  store ptr null, ptr %__vpp_verify, align 8, !dbg !3821
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !3821
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !3820
  br label %do.cond, !dbg !3821

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3821

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #15, !dbg !3822
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !3818, metadata !DIExpression()), !dbg !3822
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #19, !dbg !3822, !srcloc !3823
  store i64 %1, ptr %pfo_val__, align 8, !dbg !3822
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !3822
  %3 = inttoptr i64 %2 to ptr, !dbg !3822
  store ptr %3, ptr %tmp, align 8, !dbg !3822
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #15, !dbg !3820
  %4 = load ptr, ptr %tmp, align 8, !dbg !3822
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !3820
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !3820
  store ptr %5, ptr %tmp1, align 8, !dbg !3820
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #15, !dbg !3824
  %6 = load ptr, ptr %tmp1, align 8, !dbg !3820
  ret ptr %6, !dbg !3825
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #3 align 16 !dbg !3826 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !3831, metadata !DIExpression()), !dbg !3832
  %0 = load i64, ptr %error.addr, align 8, !dbg !3833
  %1 = inttoptr i64 %0 to ptr, !dbg !3834
  ret ptr %1, !dbg !3835
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !3836 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3840, metadata !DIExpression()), !dbg !3845
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3841, metadata !DIExpression()), !dbg !3846
  %0 = load i64, ptr %size.addr, align 8, !dbg !3847
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3848
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !3849

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !3850
  %tobool = icmp ne i64 %2, 0, !dbg !3850
  br i1 %tobool, label %if.then, label %if.end7, !dbg !3851

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !3852
  call void @llvm.dbg.declare(metadata ptr %index, metadata !3842, metadata !DIExpression()), !dbg !3853
  %3 = load i64, ptr %size.addr, align 8, !dbg !3854
  %cmp = icmp ugt i64 %3, 8192, !dbg !3856
  br i1 %cmp, label %if.then1, label %if.end, !dbg !3857

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !3858
  %5 = load i32, ptr %flags.addr, align 4, !dbg !3859
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #18, !dbg !3860
  store ptr %call, ptr %retval, align 8, !dbg !3861
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3861

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !3862
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !3862
  store i32 %call2, ptr %index, align 4, !dbg !3863
  %7 = load i32, ptr %flags.addr, align 4, !dbg !3864
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !3865
  %9 = ptrtoint ptr %8 to i64, !dbg !3865
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !3866
  %idxprom = zext i32 %call3 to i64, !dbg !3867
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !3867
  %10 = load i32, ptr %index, align 4, !dbg !3868
  %idxprom4 = zext i32 %10 to i64, !dbg !3867
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !3867
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !3867
  %12 = load i32, ptr %flags.addr, align 4, !dbg !3869
  %13 = load i64, ptr %size.addr, align 8, !dbg !3870
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #20, !dbg !3871
  store ptr %call6, ptr %retval, align 8, !dbg !3872
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3872

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !3873
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !3874
  %15 = load i32, ptr %flags.addr, align 4, !dbg !3875
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #18, !dbg !3876
  store ptr %call8, ptr %retval, align 8, !dbg !3877
  br label %return, !dbg !3877

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !3878
  ret ptr %16, !dbg !3878
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #10

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3879 dso_local i32 @sprintf(ptr noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_delayed_call(ptr noundef %call, ptr noundef %fn, ptr noundef %arg) #3 align 16 !dbg !3883 {
entry:
  %call.addr = alloca ptr, align 8
  %fn.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  store ptr %call, ptr %call.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %call.addr, metadata !3887, metadata !DIExpression()), !dbg !3890
  store ptr %fn, ptr %fn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fn.addr, metadata !3888, metadata !DIExpression()), !dbg !3891
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !3889, metadata !DIExpression()), !dbg !3892
  %0 = load ptr, ptr %fn.addr, align 8, !dbg !3893
  %1 = load ptr, ptr %call.addr, align 8, !dbg !3894
  %fn1 = getelementptr inbounds %struct.delayed_call, ptr %1, i32 0, i32 0, !dbg !3895
  store ptr %0, ptr %fn1, align 8, !dbg !3896
  %2 = load ptr, ptr %arg.addr, align 8, !dbg !3897
  %3 = load ptr, ptr %call.addr, align 8, !dbg !3898
  %arg2 = getelementptr inbounds %struct.delayed_call, ptr %3, i32 0, i32 1, !dbg !3899
  store ptr %2, ptr %arg2, align 8, !dbg !3900
  ret void, !dbg !3901
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree_link(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3902 dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !3905 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #8 align 16 !dbg !3906 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3910, metadata !DIExpression()), !dbg !3912
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !3911, metadata !DIExpression()), !dbg !3913
  %0 = load i64, ptr %size.addr, align 8, !dbg !3914
  %tobool = icmp ne i64 %0, 0, !dbg !3914
  br i1 %tobool, label %if.end, label %if.then, !dbg !3916

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3917
  br label %return, !dbg !3917

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !3918
  %cmp = icmp ule i64 %1, 8, !dbg !3920
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !3921

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !3922
  br label %return, !dbg !3922

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !3923
  %cmp3 = icmp ugt i64 %2, 64, !dbg !3925
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !3926

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !3927
  %cmp4 = icmp ule i64 %3, 96, !dbg !3928
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !3929

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !3930
  br label %return, !dbg !3930

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !3931
  %cmp7 = icmp ugt i64 %4, 128, !dbg !3933
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !3934

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !3935
  %cmp9 = icmp ule i64 %5, 192, !dbg !3936
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !3937

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !3938
  br label %return, !dbg !3938

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !3939
  %cmp12 = icmp ule i64 %6, 8, !dbg !3941
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !3942

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !3943
  br label %return, !dbg !3943

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !3944
  %cmp15 = icmp ule i64 %7, 16, !dbg !3946
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !3947

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !3948
  br label %return, !dbg !3948

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !3949
  %cmp18 = icmp ule i64 %8, 32, !dbg !3951
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !3952

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !3953
  br label %return, !dbg !3953

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !3954
  %cmp21 = icmp ule i64 %9, 64, !dbg !3956
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !3957

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !3958
  br label %return, !dbg !3958

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !3959
  %cmp24 = icmp ule i64 %10, 128, !dbg !3961
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !3962

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !3963
  br label %return, !dbg !3963

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !3964
  %cmp27 = icmp ule i64 %11, 256, !dbg !3966
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !3967

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !3968
  br label %return, !dbg !3968

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !3969
  %cmp30 = icmp ule i64 %12, 512, !dbg !3971
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !3972

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !3973
  br label %return, !dbg !3973

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !3974
  %cmp33 = icmp ule i64 %13, 1024, !dbg !3976
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !3977

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !3978
  br label %return, !dbg !3978

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !3979
  %cmp36 = icmp ule i64 %14, 2048, !dbg !3981
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !3982

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !3983
  br label %return, !dbg !3983

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !3984
  %cmp39 = icmp ule i64 %15, 4096, !dbg !3986
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !3987

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !3988
  br label %return, !dbg !3988

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !3989
  %cmp42 = icmp ule i64 %16, 8192, !dbg !3991
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !3992

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !3993
  br label %return, !dbg !3993

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !3994
  %cmp45 = icmp ule i64 %17, 16384, !dbg !3996
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !3997

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !3998
  br label %return, !dbg !3998

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !3999
  %cmp48 = icmp ule i64 %18, 32768, !dbg !4001
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !4002

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !4003
  br label %return, !dbg !4003

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !4004
  %cmp51 = icmp ule i64 %19, 65536, !dbg !4006
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !4007

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !4008
  br label %return, !dbg !4008

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !4009
  %cmp54 = icmp ule i64 %20, 131072, !dbg !4011
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !4012

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !4013
  br label %return, !dbg !4013

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !4014
  %cmp57 = icmp ule i64 %21, 262144, !dbg !4016
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !4017

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !4018
  br label %return, !dbg !4018

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !4019
  %cmp60 = icmp ule i64 %22, 524288, !dbg !4021
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !4022

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !4023
  br label %return, !dbg !4023

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !4024
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !4026
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !4027

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !4028
  br label %return, !dbg !4028

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !4029
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !4031
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !4032

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !4033
  br label %return, !dbg !4033

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !4034, !range !4036, !noundef !501
  %tobool69 = trunc i8 %25 to i1, !dbg !4034
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !4037

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !4038

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_173() #21, !dbg !4039, !srcloc !4042
  unreachable, !dbg !4039

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !4043

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !4044

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !4045

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !4047

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !4045

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 480, i32 0, i64 12) #15, !dbg !4049, !srcloc !4051
  br label %do.end75, !dbg !4049

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !4045

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !4052
  br label %return, !dbg !4052

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !4053
  ret i32 %26, !dbg !4053
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !4054 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #8 align 16 !dbg !4057 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4061, metadata !DIExpression()), !dbg !4063
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !4062, metadata !DIExpression()), !dbg !4064
  %0 = load i32, ptr %flags.addr, align 4, !dbg !4065
  %and = and i32 %0, 17, !dbg !4065
  %cmp = icmp eq i32 %and, 0, !dbg !4065
  %lnot = xor i1 %cmp, true, !dbg !4065
  %lnot1 = xor i1 %lnot, true, !dbg !4065
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4065
  %conv = sext i32 %lnot.ext to i64, !dbg !4065
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !4065
  %tobool = icmp ne i64 %expval, 0, !dbg !4065
  br i1 %tobool, label %if.then, label %if.end, !dbg !4067

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4068
  br label %return, !dbg !4068

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4069
  %and2 = and i32 %1, 1, !dbg !4071
  %tobool3 = icmp ne i32 %and2, 0, !dbg !4071
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4072

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !4073
  br label %return, !dbg !4073

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !4074
  br label %return, !dbg !4074

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !4076
  ret i32 %2, !dbg !4076
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4077 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #12

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !4078 dso_local void @__compiletime_assert_173() #14

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4079 dso_local void @up_write(ptr noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { noredzone }
attributes #17 = { cold noredzone }
attributes #18 = { noredzone allocsize(0) }
attributes #19 = { nounwind memory(none) }
attributes #20 = { noredzone allocsize(2) }
attributes #21 = { noredzone noreturn }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580}
!llvm.ident = !{!3581}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 44, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "fs/proc/self.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8d76beeb0980856a0c71220e33aed631")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 5)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "self_inum", scope: !9, file: !2, line: 34, type: !13, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/proc/.self.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/proc/proc\22 -D KBUILD_BASENAME=\22self\22 -D KBUILD_MODNAME=\22proc\22 -D __KBUILD_MODNAME=kmod_proc -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/proc/self.ll fs/proc/self.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !106, globals: !3557, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !17, !33, !40, !48, !54, !61, !69, !74, !80, !87, !91, !96}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !12, line: 65, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16}
!15 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!16 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !18, line: 1325, baseType: !13, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!19 = !{!20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!20 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!21 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!22 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!23 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!24 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!25 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!26 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!27 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!28 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!29 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!30 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!31 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!32 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!33 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !34, line: 15, baseType: !13, size: 32, elements: !35)
!34 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!35 = !{!36, !37, !38, !39}
!36 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!37 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!38 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!39 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !41, line: 68, baseType: !13, size: 32, elements: !42)
!41 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!42 = !{!43, !44, !45, !46, !47}
!43 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!44 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!45 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!46 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!47 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !49, line: 16, baseType: !13, size: 32, elements: !50)
!49 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!50 = !{!51, !52, !53}
!51 = !DIEnumerator(name: "TT_NONE", value: 0)
!52 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!53 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!54 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !55, line: 51, baseType: !13, size: 32, elements: !56)
!55 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!56 = !{!57, !58, !59, !60}
!57 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!58 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!59 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!60 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !62, line: 9, baseType: !13, size: 32, elements: !63)
!62 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!63 = !{!64, !65, !66, !67, !68}
!64 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!65 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!66 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!67 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!68 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
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
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "proc_hidepid", file: !81, line: 48, baseType: !13, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/proc_fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3e8a31057d6ce7bcf5851cd096e4b3e8")
!82 = !{!83, !84, !85, !86}
!83 = !DIEnumerator(name: "HIDEPID_OFF", value: 0)
!84 = !DIEnumerator(name: "HIDEPID_NO_ACCESS", value: 1)
!85 = !DIEnumerator(name: "HIDEPID_INVISIBLE", value: 2)
!86 = !DIEnumerator(name: "HIDEPID_NOT_PTRACEABLE", value: 4)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "proc_pidonly", file: !81, line: 56, baseType: !13, size: 32, elements: !88)
!88 = !{!89, !90}
!89 = !DIEnumerator(name: "PROC_PIDONLY_OFF", value: 0)
!90 = !DIEnumerator(name: "PROC_PIDONLY_ON", value: 1)
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !92, line: 10, baseType: !13, size: 32, elements: !93)
!92 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!93 = !{!94, !95}
!94 = !DIEnumerator(name: "false", value: 0)
!95 = !DIEnumerator(name: "true", value: 1)
!96 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !97, line: 364, baseType: !13, size: 32, elements: !98)
!97 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!98 = !{!99, !100, !101, !102, !103, !104, !105}
!99 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!100 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!101 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!102 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!103 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!104 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!105 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!106 = !{!107, !109, !129, !110, !119}
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !108, line: 154, baseType: !13)
!108 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !112, line: 746, size: 58368, elements: !113)
!112 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!113 = !{!114, !127, !128, !130, !141, !142, !143, !144, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !236, !247, !374, !378, !381, !412, !413, !414, !415, !426, !428, !429, !430, !431, !432, !433, !444, !445, !448, !449, !450, !451, !452, !453, !454, !455, !462, !463, !470, !471, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2737, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2752, !2753, !2754, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2786, !2792, !2793, !2794, !2795, !2796, !2798, !2801, !2808, !2813, !2814, !2817, !2820, !2821, !2956, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994, !2995, !2998, !2999, !3000, !3009, !3017, !3018, !3019, !3020, !3021, !3026, !3027, !3028, !3031, !3032, !3035, !3038, !3041, !3049, !3052, !3053, !3139, !3140, !3141, !3142, !3143, !3149, !3150, !3151, !3152, !3155, !3156, !3159, !3162, !3163, !3166, !3167, !3168, !3171, !3172, !3173, !3174, !3175, !3176, !3189, !3190, !3191, !3192, !3193, !3194, !3195, !3196, !3197, !3208, !3209, !3215, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3227, !3299, !3301, !3302, !3303, !3304, !3305, !3317, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3334, !3335, !3336}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !111, file: !112, line: 752, baseType: !115, size: 192)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !116, line: 56, size: 192, elements: !117)
!116 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!117 = !{!118, !120, !121, !126}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !115, file: !116, line: 57, baseType: !119, size: 64)
!119 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !115, file: !116, line: 58, baseType: !119, size: 64, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !115, file: !116, line: 59, baseType: !122, size: 32, offset: 128)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !123, line: 21, baseType: !124)
!123 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !125, line: 27, baseType: !13)
!125 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!126 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !115, file: !116, line: 61, baseType: !122, size: 32, offset: 160)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !111, file: !112, line: 754, baseType: !13, size: 32, offset: 192)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !111, file: !112, line: 767, baseType: !129, size: 64, offset: 256)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !111, file: !112, line: 768, baseType: !131, size: 32, offset: 320)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !132, line: 113, baseType: !133)
!132 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !132, line: 111, size: 32, elements: !134)
!134 = !{!135}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !133, file: !132, line: 112, baseType: !136, size: 32)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !108, line: 174, baseType: !137)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !108, line: 172, size: 32, elements: !138)
!138 = !{!139}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !137, file: !108, line: 173, baseType: !140, size: 32)
!140 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !111, file: !112, line: 770, baseType: !13, size: 32, offset: 352)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !111, file: !112, line: 771, baseType: !13, size: 32, offset: 384)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !111, file: !112, line: 774, baseType: !140, size: 32, offset: 416)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !111, file: !112, line: 775, baseType: !145, size: 128, offset: 448)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !146, line: 58, size: 128, elements: !147)
!146 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!147 = !{!148, !154, !159, !163}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !145, file: !146, line: 59, baseType: !149, size: 64)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !150, line: 60, size: 64, elements: !151)
!150 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!151 = !{!152}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !149, file: !150, line: 61, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, scope: !145, file: !146, line: 60, baseType: !155, size: 32, offset: 64)
!155 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !145, file: !146, line: 60, size: 32, elements: !156)
!156 = !{!157, !158}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !155, file: !146, line: 61, baseType: !13, size: 32)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !155, file: !146, line: 62, baseType: !136, size: 32)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !145, file: !146, line: 65, baseType: !160, size: 16, offset: 96)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !123, line: 19, baseType: !161)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !125, line: 24, baseType: !162)
!162 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !145, file: !146, line: 65, baseType: !160, size: 16, offset: 112)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !111, file: !112, line: 776, baseType: !13, size: 32, offset: 576)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !111, file: !112, line: 777, baseType: !119, size: 64, offset: 640)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !111, file: !112, line: 778, baseType: !110, size: 64, offset: 704)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !111, file: !112, line: 787, baseType: !140, size: 32, offset: 768)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !111, file: !112, line: 788, baseType: !140, size: 32, offset: 800)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !111, file: !112, line: 790, baseType: !140, size: 32, offset: 832)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !111, file: !112, line: 792, baseType: !140, size: 32, offset: 864)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !111, file: !112, line: 793, baseType: !140, size: 32, offset: 896)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !111, file: !112, line: 794, baseType: !140, size: 32, offset: 928)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !111, file: !112, line: 795, baseType: !13, size: 32, offset: 960)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !111, file: !112, line: 797, baseType: !175, size: 2048, offset: 1024)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !112, line: 551, size: 2048, elements: !176)
!176 = !{!177, !182, !190, !194, !195, !201, !202, !203, !204, !205, !206, !210, !211, !212, !213, !215, !218, !219, !220}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !175, file: !112, line: 553, baseType: !178, size: 128)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !112, line: 411, size: 128, elements: !179)
!179 = !{!180, !181}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !178, file: !112, line: 412, baseType: !119, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !178, file: !112, line: 413, baseType: !122, size: 32, offset: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !175, file: !112, line: 554, baseType: !183, size: 192, align: 64, offset: 128)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !184, line: 5, size: 192, align: 64, elements: !185)
!184 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!185 = !{!186, !187, !189}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !183, file: !184, line: 6, baseType: !119, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !183, file: !184, line: 7, baseType: !188, size: 64, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !183, file: !184, line: 8, baseType: !188, size: 64, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !175, file: !112, line: 555, baseType: !191, size: 64, offset: 320)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !123, line: 23, baseType: !192)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !125, line: 31, baseType: !193)
!193 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !175, file: !112, line: 556, baseType: !191, size: 64, offset: 384)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !175, file: !112, line: 558, baseType: !196, size: 128, offset: 448)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !108, line: 190, size: 128, elements: !197)
!197 = !{!198, !200}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !196, file: !108, line: 191, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !196, file: !108, line: 191, baseType: !199, size: 64, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !175, file: !112, line: 559, baseType: !13, size: 32, offset: 576)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !175, file: !112, line: 561, baseType: !191, size: 64, offset: 640)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !175, file: !112, line: 562, baseType: !191, size: 64, offset: 704)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !175, file: !112, line: 563, baseType: !191, size: 64, offset: 768)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !175, file: !112, line: 564, baseType: !191, size: 64, offset: 832)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !175, file: !112, line: 565, baseType: !207, size: 64, offset: 896)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !123, line: 22, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !125, line: 30, baseType: !209)
!209 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !175, file: !112, line: 566, baseType: !191, size: 64, offset: 960)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !175, file: !112, line: 568, baseType: !191, size: 64, offset: 1024)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !175, file: !112, line: 571, baseType: !140, size: 32, offset: 1088)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !175, file: !112, line: 572, baseType: !214, size: 64, offset: 1152)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !175, file: !112, line: 574, baseType: !216, size: 64, offset: 1216)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !112, line: 49, flags: DIFlagFwdDecl)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !175, file: !112, line: 576, baseType: !216, size: 64, offset: 1280)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !175, file: !112, line: 578, baseType: !119, size: 64, offset: 1344)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !175, file: !112, line: 588, baseType: !221, size: 512, align: 512, offset: 1536)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !112, line: 497, size: 512, align: 512, elements: !222)
!222 = !{!223, !224, !225, !226, !227, !228, !229, !230, !231}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !221, file: !112, line: 498, baseType: !191, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !221, file: !112, line: 499, baseType: !191, size: 64, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !221, file: !112, line: 500, baseType: !191, size: 64, offset: 128)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !221, file: !112, line: 501, baseType: !122, size: 32, offset: 192)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !221, file: !112, line: 502, baseType: !122, size: 32, offset: 224)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !221, file: !112, line: 503, baseType: !119, size: 64, offset: 256)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !221, file: !112, line: 504, baseType: !119, size: 64, offset: 320)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !221, file: !112, line: 505, baseType: !119, size: 64, offset: 384)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !221, file: !112, line: 506, baseType: !232, size: 64, align: 64, offset: 448)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !112, line: 445, size: 64, align: 64, elements: !233)
!233 = !{!234, !235}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !232, file: !112, line: 446, baseType: !13, size: 32)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !232, file: !112, line: 447, baseType: !13, size: 32, offset: 32)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !111, file: !112, line: 798, baseType: !237, size: 384, offset: 3072)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !112, line: 592, size: 384, elements: !238)
!238 = !{!239, !240, !241, !242, !243, !244, !245}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !237, file: !112, line: 593, baseType: !196, size: 128)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !237, file: !112, line: 594, baseType: !119, size: 64, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !237, file: !112, line: 595, baseType: !119, size: 64, offset: 192)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !237, file: !112, line: 596, baseType: !13, size: 32, offset: 256)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !237, file: !112, line: 597, baseType: !162, size: 16, offset: 288)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !237, file: !112, line: 598, baseType: !162, size: 16, offset: 304)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !237, file: !112, line: 600, baseType: !246, size: 64, offset: 320)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !111, file: !112, line: 799, baseType: !248, size: 1792, offset: 3456)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !112, line: 610, size: 1792, elements: !249)
!249 = !{!250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !371, !372}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !248, file: !112, line: 611, baseType: !183, size: 192, align: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !248, file: !112, line: 618, baseType: !191, size: 64, offset: 192)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !248, file: !112, line: 619, baseType: !191, size: 64, offset: 256)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !248, file: !112, line: 620, baseType: !191, size: 64, offset: 320)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !248, file: !112, line: 621, baseType: !191, size: 64, offset: 384)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !248, file: !112, line: 622, baseType: !191, size: 64, offset: 448)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !248, file: !112, line: 629, baseType: !207, size: 64, offset: 512)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !248, file: !112, line: 630, baseType: !191, size: 64, offset: 576)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !248, file: !112, line: 631, baseType: !13, size: 32, offset: 640)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !248, file: !112, line: 653, baseType: !13, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !248, file: !112, line: 654, baseType: !13, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !248, file: !112, line: 655, baseType: !13, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !248, file: !112, line: 656, baseType: !13, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !248, file: !112, line: 662, baseType: !264, size: 512, offset: 704)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !12, line: 118, size: 512, elements: !265)
!265 = !{!266, !274, !275, !280, !367, !368, !369, !370}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !264, file: !12, line: 119, baseType: !267, size: 256)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !268, line: 9, size: 256, elements: !269)
!268 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!269 = !{!270, !271}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !267, file: !268, line: 10, baseType: !183, size: 192, align: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !267, file: !268, line: 11, baseType: !272, size: 64, offset: 192)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !273, line: 29, baseType: !207)
!273 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !264, file: !12, line: 120, baseType: !272, size: 64, offset: 256)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !264, file: !12, line: 121, baseType: !276, size: 64, offset: 320)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!11, !279}
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !264, file: !12, line: 122, baseType: !281, size: 64, offset: 384)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !12, line: 159, size: 512, align: 512, elements: !283)
!283 = !{!284, !335, !336, !340, !350, !351, !362, !366}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !282, file: !12, line: 160, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !12, line: 215, size: 4608, align: 512, elements: !287)
!287 = !{!288, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !286, file: !12, line: 216, baseType: !289, size: 32)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !290, line: 23, baseType: !291)
!290 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !290, line: 14, size: 32, elements: !292)
!292 = !{!293}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !291, file: !290, line: 15, baseType: !294, size: 32)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !295, line: 44, baseType: !296)
!295 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !295, line: 14, size: 32, elements: !297)
!297 = !{!298}
!298 = !DIDerivedType(tag: DW_TAG_member, scope: !296, file: !295, line: 15, baseType: !299, size: 32)
!299 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !296, file: !295, line: 15, size: 32, elements: !300)
!300 = !{!301, !302, !310}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !299, file: !295, line: 16, baseType: !136, size: 32)
!302 = !DIDerivedType(tag: DW_TAG_member, scope: !299, file: !295, line: 24, baseType: !303, size: 16)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !299, file: !295, line: 24, size: 16, elements: !304)
!304 = !{!305, !309}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !303, file: !295, line: 25, baseType: !306, size: 8)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !123, line: 17, baseType: !307)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !125, line: 21, baseType: !308)
!308 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !303, file: !295, line: 26, baseType: !306, size: 8, offset: 8)
!310 = !DIDerivedType(tag: DW_TAG_member, scope: !299, file: !295, line: 28, baseType: !311, size: 32)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !299, file: !295, line: 28, size: 32, elements: !312)
!312 = !{!313, !314}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !311, file: !295, line: 29, baseType: !160, size: 16)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !311, file: !295, line: 30, baseType: !160, size: 16, offset: 16)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !286, file: !12, line: 217, baseType: !13, size: 32, offset: 32)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !286, file: !12, line: 218, baseType: !13, size: 32, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !286, file: !12, line: 219, baseType: !13, size: 32, offset: 96)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !286, file: !12, line: 220, baseType: !13, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !286, file: !12, line: 221, baseType: !13, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !286, file: !12, line: 222, baseType: !13, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !286, file: !12, line: 223, baseType: !13, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !286, file: !12, line: 224, baseType: !13, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !286, file: !12, line: 226, baseType: !13, size: 32, offset: 160)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !286, file: !12, line: 227, baseType: !162, size: 16, offset: 192)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !286, file: !12, line: 228, baseType: !162, size: 16, offset: 208)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !286, file: !12, line: 229, baseType: !13, size: 32, offset: 224)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !286, file: !12, line: 235, baseType: !272, size: 64, offset: 256)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !286, file: !12, line: 236, baseType: !279, size: 64, offset: 320)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !286, file: !12, line: 237, baseType: !272, size: 64, offset: 384)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !286, file: !12, line: 238, baseType: !279, size: 64, offset: 448)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !286, file: !12, line: 239, baseType: !332, size: 4096, align: 512, offset: 512)
!332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !282, size: 4096, align: 512, elements: !333)
!333 = !{!334}
!334 = !DISubrange(count: 8)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !282, file: !12, line: 161, baseType: !13, size: 32, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !282, file: !12, line: 162, baseType: !337, size: 32, offset: 96)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !108, line: 32, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !339, line: 96, baseType: !140)
!339 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!340 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !282, file: !12, line: 163, baseType: !341, size: 32, offset: 128)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !342, line: 274, baseType: !343)
!342 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !342, line: 274, size: 32, elements: !344)
!344 = !{!345}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !343, file: !342, line: 274, baseType: !346, size: 32)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !342, line: 69, baseType: !347)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !342, line: 64, size: 32, elements: !348)
!348 = !{!349}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !347, file: !342, line: 65, baseType: !13, size: 32)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !282, file: !12, line: 164, baseType: !279, size: 64, offset: 192)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !282, file: !12, line: 165, baseType: !352, size: 128, offset: 256)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !268, line: 14, size: 128, elements: !353)
!353 = !{!354}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !352, file: !268, line: 15, baseType: !355, size: 128)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !184, line: 26, size: 128, elements: !356)
!356 = !{!357, !361}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !355, file: !184, line: 27, baseType: !358, size: 64)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !184, line: 12, size: 64, elements: !359)
!359 = !{!360}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !358, file: !184, line: 13, baseType: !188, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !355, file: !184, line: 28, baseType: !188, size: 64, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !282, file: !12, line: 166, baseType: !363, size: 64, offset: 384)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DISubroutineType(types: !365)
!365 = !{!272}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !282, file: !12, line: 167, baseType: !272, size: 64, offset: 448)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !264, file: !12, line: 123, baseType: !306, size: 8, offset: 448)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !264, file: !12, line: 124, baseType: !306, size: 8, offset: 456)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !264, file: !12, line: 125, baseType: !306, size: 8, offset: 464)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !264, file: !12, line: 126, baseType: !306, size: 8, offset: 472)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !248, file: !112, line: 671, baseType: !264, size: 512, offset: 1216)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !248, file: !112, line: 679, baseType: !373, size: 64, offset: 1728)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !111, file: !112, line: 800, baseType: !375, size: 64, offset: 5248)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !377)
!377 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !112, line: 800, flags: DIFlagFwdDecl)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !111, file: !112, line: 809, baseType: !379, size: 64, offset: 5312)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !112, line: 70, flags: DIFlagFwdDecl)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !111, file: !112, line: 825, baseType: !382, size: 2048, align: 512, offset: 5632)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !112, line: 509, size: 2048, align: 512, elements: !383)
!383 = !{!384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !382, file: !112, line: 511, baseType: !191, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !382, file: !112, line: 512, baseType: !191, size: 64, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !382, file: !112, line: 513, baseType: !191, size: 64, offset: 128)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !382, file: !112, line: 514, baseType: !191, size: 64, offset: 192)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !382, file: !112, line: 515, baseType: !191, size: 64, offset: 256)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !382, file: !112, line: 516, baseType: !191, size: 64, offset: 320)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !382, file: !112, line: 518, baseType: !191, size: 64, offset: 384)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !382, file: !112, line: 519, baseType: !191, size: 64, offset: 448)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !382, file: !112, line: 520, baseType: !207, size: 64, offset: 512)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !382, file: !112, line: 522, baseType: !191, size: 64, offset: 576)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !382, file: !112, line: 523, baseType: !191, size: 64, offset: 640)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !382, file: !112, line: 524, baseType: !207, size: 64, offset: 704)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !382, file: !112, line: 526, baseType: !207, size: 64, offset: 768)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !382, file: !112, line: 527, baseType: !191, size: 64, offset: 832)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !382, file: !112, line: 529, baseType: !191, size: 64, offset: 896)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !382, file: !112, line: 530, baseType: !191, size: 64, offset: 960)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !382, file: !112, line: 531, baseType: !191, size: 64, offset: 1024)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !382, file: !112, line: 532, baseType: !191, size: 64, offset: 1088)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !382, file: !112, line: 533, baseType: !191, size: 64, offset: 1152)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !382, file: !112, line: 535, baseType: !191, size: 64, offset: 1216)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !382, file: !112, line: 536, baseType: !191, size: 64, offset: 1280)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !382, file: !112, line: 537, baseType: !191, size: 64, offset: 1344)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !382, file: !112, line: 538, baseType: !191, size: 64, offset: 1408)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !382, file: !112, line: 539, baseType: !191, size: 64, offset: 1472)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !382, file: !112, line: 540, baseType: !191, size: 64, offset: 1536)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !382, file: !112, line: 541, baseType: !191, size: 64, offset: 1600)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !382, file: !112, line: 542, baseType: !191, size: 64, offset: 1664)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !382, file: !112, line: 543, baseType: !191, size: 64, offset: 1728)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !111, file: !112, line: 833, baseType: !13, size: 32, offset: 7680)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !111, file: !112, line: 836, baseType: !13, size: 32, offset: 7712)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !111, file: !112, line: 837, baseType: !140, size: 32, offset: 7744)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !111, file: !112, line: 838, baseType: !416, size: 64, offset: 7808)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !418)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !419, line: 19, baseType: !420)
!419 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !419, line: 19, size: 64, elements: !421)
!421 = !{!422}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !420, file: !419, line: 19, baseType: !423, size: 64)
!423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 64, elements: !424)
!424 = !{!425}
!425 = !DISubrange(count: 1)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !111, file: !112, line: 839, baseType: !427, size: 64, offset: 7872)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !111, file: !112, line: 840, baseType: !418, size: 64, offset: 7936)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !111, file: !112, line: 841, baseType: !129, size: 64, offset: 8000)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !111, file: !112, line: 843, baseType: !162, size: 16, offset: 8064)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !111, file: !112, line: 845, baseType: !162, size: 16, offset: 8080)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !111, file: !112, line: 848, baseType: !140, size: 32, offset: 8096)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !111, file: !112, line: 849, baseType: !434, size: 32, offset: 8128)
!434 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !112, line: 718, size: 32, elements: !435)
!435 = !{!436, !443}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !434, file: !112, line: 724, baseType: !437, size: 32)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !434, file: !112, line: 719, size: 32, elements: !438)
!438 = !{!439, !440, !441, !442}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !437, file: !112, line: 720, baseType: !306, size: 8)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !437, file: !112, line: 721, baseType: !306, size: 8, offset: 8)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !437, file: !112, line: 722, baseType: !306, size: 8, offset: 16)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !437, file: !112, line: 723, baseType: !306, size: 8, offset: 24)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !434, file: !112, line: 725, baseType: !122, size: 32)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !111, file: !112, line: 850, baseType: !196, size: 128, offset: 8192)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !111, file: !112, line: 851, baseType: !446, size: 64, offset: 8320)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !112, line: 60, flags: DIFlagFwdDecl)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !111, file: !112, line: 855, baseType: !119, size: 64, offset: 8384)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !111, file: !112, line: 856, baseType: !306, size: 8, offset: 8448)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !111, file: !112, line: 857, baseType: !306, size: 8, offset: 8456)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !111, file: !112, line: 858, baseType: !140, size: 32, offset: 8480)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !111, file: !112, line: 859, baseType: !196, size: 128, offset: 8512)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !111, file: !112, line: 860, baseType: !140, size: 32, offset: 8640)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !111, file: !112, line: 861, baseType: !196, size: 128, offset: 8704)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !111, file: !112, line: 873, baseType: !456, size: 256, offset: 8832)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !112, line: 376, size: 256, elements: !457)
!457 = !{!458, !459, !460, !461}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !456, file: !112, line: 381, baseType: !119, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !456, file: !112, line: 384, baseType: !193, size: 64, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !456, file: !112, line: 389, baseType: !193, size: 64, offset: 128)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !456, file: !112, line: 392, baseType: !193, size: 64, offset: 192)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !111, file: !112, line: 875, baseType: !196, size: 128, offset: 9088)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !111, file: !112, line: 877, baseType: !464, size: 320, offset: 9216)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !465, line: 86, size: 320, elements: !466)
!465 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!466 = !{!467, !468, !469}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !464, file: !465, line: 87, baseType: !140, size: 32)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !464, file: !465, line: 88, baseType: !196, size: 128, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !464, file: !465, line: 89, baseType: !196, size: 128, offset: 192)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !111, file: !112, line: 878, baseType: !183, size: 192, align: 64, offset: 9536)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !111, file: !112, line: 881, baseType: !472, size: 64, offset: 9728)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !18, line: 733, size: 10240, elements: !474)
!474 = !{!475, !2656}
!475 = !DIDerivedType(tag: DW_TAG_member, scope: !473, file: !18, line: 734, baseType: !476, size: 10240)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !473, file: !18, line: 734, size: 10240, elements: !477)
!477 = !{!478, !482, !504, !2496, !2497, !2498, !2499, !2500, !2501, !2508, !2509, !2510, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545, !2549, !2551, !2612, !2636, !2637, !2638, !2641, !2642, !2643, !2646, !2647, !2648, !2654, !2655}
!478 = !DIDerivedType(tag: DW_TAG_member, scope: !476, file: !18, line: 739, baseType: !479, size: 512, align: 512)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !476, file: !18, line: 739, size: 512, align: 512, elements: !480)
!480 = !{!481}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !479, file: !18, line: 747, baseType: !136, size: 32)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !476, file: !18, line: 750, baseType: !483, size: 128, offset: 512)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !484, line: 218, size: 128, elements: !485)
!484 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!485 = !{!486, !502, !503}
!486 = !DIDerivedType(tag: DW_TAG_member, scope: !483, file: !484, line: 219, baseType: !487, size: 32)
!487 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !483, file: !484, line: 219, size: 32, elements: !488)
!488 = !{!489, !498}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !487, file: !484, line: 220, baseType: !490, size: 32)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !491, line: 29, baseType: !492)
!491 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !491, line: 17, size: 32, elements: !493)
!493 = !{!494}
!494 = !DIDerivedType(tag: DW_TAG_member, scope: !492, file: !491, line: 18, baseType: !495, size: 32)
!495 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !492, file: !491, line: 18, size: 32, elements: !496)
!496 = !{!497}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !495, file: !491, line: 19, baseType: !291, size: 32)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !487, file: !484, line: 221, baseType: !499)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !484, line: 197, baseType: !500)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !484, line: 197, elements: !501)
!501 = !{}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !483, file: !484, line: 223, baseType: !13, size: 32, offset: 32)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !483, file: !484, line: 224, baseType: !129, size: 64, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !476, file: !18, line: 752, baseType: !505, size: 64, offset: 640)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DISubroutineType(types: !507)
!507 = !{!119, !508, !119, !119, !119, !119}
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !70, line: 994, size: 1856, align: 64, elements: !510)
!510 = !{!511, !525, !526, !528, !535, !547, !550, !551, !942, !943, !952, !2486, !2487, !2488, !2489, !2490, !2491, !2493, !2494, !2495}
!511 = !DIDerivedType(tag: DW_TAG_member, scope: !509, file: !70, line: 995, baseType: !512, size: 128)
!512 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !509, file: !70, line: 995, size: 128, elements: !513)
!513 = !{!514, !515, !524}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !512, file: !70, line: 996, baseType: !149, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !512, file: !70, line: 997, baseType: !516, size: 128, align: 64)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !108, line: 232, size: 128, align: 64, elements: !517)
!517 = !{!518, !520}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !516, file: !108, line: 233, baseType: !519, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !516, file: !108, line: 234, baseType: !521, size: 64, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DISubroutineType(types: !523)
!523 = !{null, !519}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !512, file: !70, line: 998, baseType: !13, size: 32)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !509, file: !70, line: 1005, baseType: !490, size: 32, offset: 128)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !509, file: !70, line: 1006, baseType: !527, size: 32, offset: 160)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !108, line: 156, baseType: !13)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !509, file: !70, line: 1007, baseType: !529, size: 64, offset: 192)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !530, line: 13, baseType: !531)
!530 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !108, line: 181, baseType: !532)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !108, line: 179, size: 64, elements: !533)
!533 = !{!534}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !532, file: !108, line: 180, baseType: !207, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !509, file: !70, line: 1008, baseType: !536, size: 256, offset: 256)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !537, line: 66, size: 256, elements: !538)
!537 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!538 = !{!539, !540, !541, !546}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !536, file: !537, line: 67, baseType: !529, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !536, file: !537, line: 68, baseType: !289, size: 32, offset: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !536, file: !537, line: 70, baseType: !542, size: 32, offset: 96)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !543, line: 15, size: 32, elements: !544)
!543 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!544 = !{!545}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !542, file: !543, line: 20, baseType: !136, size: 32)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !536, file: !537, line: 72, baseType: !196, size: 128, offset: 128)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !509, file: !70, line: 1009, baseType: !548, size: 64, offset: 512)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !108, line: 52, baseType: !549)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !339, line: 88, baseType: !209)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !509, file: !70, line: 1010, baseType: !13, size: 32, offset: 576)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !509, file: !70, line: 1011, baseType: !552, size: 256, offset: 640)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !70, line: 948, size: 256, elements: !553)
!553 = !{!554, !577, !938, !939, !940, !941}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !552, file: !70, line: 949, baseType: !555, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !556, line: 34, baseType: !557)
!556 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !556, line: 25, size: 64, elements: !558)
!558 = !{!559}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !557, file: !556, line: 26, baseType: !560, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !561, line: 27, baseType: !562)
!561 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !561, line: 13, size: 64, elements: !563)
!563 = !{!564, !576}
!564 = !DIDerivedType(tag: DW_TAG_member, scope: !562, file: !561, line: 14, baseType: !565, size: 32)
!565 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !562, file: !561, line: 14, size: 32, elements: !566)
!566 = !{!567, !568}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !565, file: !561, line: 15, baseType: !136, size: 32)
!568 = !DIDerivedType(tag: DW_TAG_member, scope: !565, file: !561, line: 16, baseType: !569, size: 32)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !565, file: !561, line: 16, size: 32, elements: !570)
!570 = !{!571, !572}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !569, file: !561, line: 18, baseType: !306, size: 8)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !569, file: !561, line: 19, baseType: !573, size: 24, offset: 8)
!573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !306, size: 24, elements: !574)
!574 = !{!575}
!575 = !DISubrange(count: 3)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !562, file: !561, line: 26, baseType: !294, size: 32, offset: 32)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !552, file: !70, line: 950, baseType: !578, size: 64, offset: 64)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !62, line: 59, size: 768, elements: !580)
!580 = !{!581, !582, !583, !584, !597, !598, !605, !606}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !579, file: !62, line: 61, baseType: !131, size: 32)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !579, file: !62, line: 62, baseType: !13, size: 32, offset: 32)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !579, file: !62, line: 63, baseType: !490, size: 32, offset: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !579, file: !62, line: 65, baseType: !585, size: 256, offset: 128)
!585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !586, size: 256, elements: !595)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !108, line: 194, size: 64, elements: !587)
!587 = !{!588}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !586, file: !108, line: 195, baseType: !589, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !108, line: 198, size: 128, elements: !591)
!591 = !{!592, !593}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !590, file: !108, line: 199, baseType: !589, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !590, file: !108, line: 199, baseType: !594, size: 64, offset: 64)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!595 = !{!596}
!596 = !DISubrange(count: 4)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !579, file: !62, line: 66, baseType: !586, size: 64, offset: 384)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !579, file: !62, line: 68, baseType: !599, size: 192, offset: 448)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !600, line: 41, baseType: !601)
!600 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !600, line: 37, size: 192, elements: !602)
!602 = !{!603, !604}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !601, file: !600, line: 38, baseType: !490, size: 32)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !601, file: !600, line: 39, baseType: !196, size: 128, offset: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !579, file: !62, line: 69, baseType: !516, size: 128, align: 64, offset: 640)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !579, file: !62, line: 70, baseType: !607, offset: 768)
!607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !608, elements: !920)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !62, line: 54, size: 128, elements: !609)
!609 = !{!610, !611}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !608, file: !62, line: 55, baseType: !140, size: 32)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !608, file: !62, line: 56, baseType: !612, size: 64, offset: 64)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !614, line: 26, size: 1152, elements: !615)
!614 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!615 = !{!616, !629, !630, !631, !632, !636, !637, !638, !641, !645, !649, !650, !937}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !613, file: !614, line: 27, baseType: !617, size: 192)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !618, line: 19, size: 192, elements: !619)
!618 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!619 = !{!620, !627, !628}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !617, file: !618, line: 20, baseType: !621, size: 128)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !622, line: 296, size: 128, elements: !623)
!622 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!623 = !{!624, !625, !626}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !621, file: !622, line: 297, baseType: !490, size: 32)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !621, file: !622, line: 299, baseType: !107, size: 32, offset: 32)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !621, file: !622, line: 300, baseType: !129, size: 64, offset: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !617, file: !618, line: 21, baseType: !13, size: 32, offset: 128)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !617, file: !618, line: 22, baseType: !13, size: 32, offset: 160)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !613, file: !614, line: 28, baseType: !516, size: 128, align: 64, offset: 192)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !613, file: !614, line: 29, baseType: !13, size: 32, offset: 320)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !613, file: !614, line: 30, baseType: !110, size: 64, offset: 384)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !613, file: !614, line: 31, baseType: !633, size: 64, offset: 448)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !635, line: 11, flags: DIFlagFwdDecl)
!635 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!636 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !613, file: !614, line: 32, baseType: !13, size: 32, offset: 512)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !613, file: !614, line: 33, baseType: !612, size: 64, offset: 576)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !613, file: !614, line: 35, baseType: !639, size: 64, offset: 640)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !614, line: 17, flags: DIFlagFwdDecl)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !613, file: !614, line: 37, baseType: !642, size: 64, offset: 704)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !644, line: 18, flags: DIFlagFwdDecl)
!644 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!645 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !613, file: !614, line: 38, baseType: !646, size: 64, offset: 768)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !648, line: 16, flags: DIFlagFwdDecl)
!648 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!649 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !613, file: !614, line: 39, baseType: !140, size: 32, offset: 832)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !613, file: !614, line: 40, baseType: !651, size: 192, offset: 896)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !652, line: 9, size: 192, elements: !653)
!652 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!653 = !{!654, !655, !935, !936}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !651, file: !652, line: 10, baseType: !529, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !651, file: !652, line: 11, baseType: !656, size: 64, offset: 64)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !658)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !659, line: 16, size: 512, elements: !660)
!659 = !DIFile(filename: "./include/linux/proc_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10d8d049c3f8fd93040e0b5385a478ba")
!660 = !{!661, !664, !665, !666, !671, !675, !927, !931}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !658, file: !659, line: 17, baseType: !662, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "real_ns_name", scope: !658, file: !659, line: 18, baseType: !662, size: 64, offset: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !658, file: !659, line: 19, baseType: !140, size: 32, offset: 128)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !658, file: !659, line: 20, baseType: !667, size: 64, offset: 192)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DISubroutineType(types: !669)
!669 = !{!670, !110}
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !658, file: !659, line: 21, baseType: !672, size: 64, offset: 256)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DISubroutineType(types: !674)
!674 = !{null, !670}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "install", scope: !658, file: !659, line: 22, baseType: !676, size: 64, offset: 320)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DISubroutineType(types: !678)
!678 = !{!140, !679, !670}
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsset", file: !681, line: 53, size: 256, elements: !682)
!681 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!682 = !{!683, !684, !710, !713}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !680, file: !681, line: 54, baseType: !13, size: 32)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !680, file: !681, line: 55, baseType: !685, size: 64, offset: 64)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !681, line: 31, size: 576, elements: !687)
!687 = !{!688, !689, !692, !695, !698, !699, !703, !706, !707}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !686, file: !681, line: 32, baseType: !131, size: 32)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !686, file: !681, line: 33, baseType: !690, size: 64, offset: 64)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !681, line: 9, flags: DIFlagFwdDecl)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !686, file: !681, line: 34, baseType: !693, size: 64, offset: 128)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !681, line: 10, flags: DIFlagFwdDecl)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !686, file: !681, line: 35, baseType: !696, size: 64, offset: 192)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !681, line: 8, flags: DIFlagFwdDecl)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !686, file: !681, line: 36, baseType: !612, size: 64, offset: 256)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !686, file: !681, line: 37, baseType: !700, size: 64, offset: 320)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !702, line: 34, flags: DIFlagFwdDecl)
!702 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!703 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !686, file: !681, line: 38, baseType: !704, size: 64, offset: 384)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !681, line: 38, flags: DIFlagFwdDecl)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !686, file: !681, line: 39, baseType: !704, size: 64, offset: 448)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !686, file: !681, line: 40, baseType: !708, size: 64, offset: 512)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !681, line: 12, flags: DIFlagFwdDecl)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !680, file: !681, line: 56, baseType: !711, size: 64, offset: 128)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !112, line: 50, flags: DIFlagFwdDecl)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !680, file: !681, line: 57, baseType: !714, size: 64, offset: 192)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !716)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !717, line: 110, size: 1472, elements: !718)
!717 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!718 = !{!719, !720, !727, !734, !735, !736, !737, !738, !739, !740, !741, !747, !748, !749, !750, !751, !752, !875, !876, !877, !878, !879, !910, !911, !912, !922}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !716, file: !717, line: 111, baseType: !529, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !716, file: !717, line: 112, baseType: !721, size: 32, offset: 64)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !644, line: 23, baseType: !722)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !644, line: 21, size: 32, elements: !723)
!723 = !{!724}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !722, file: !644, line: 22, baseType: !725, size: 32)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !108, line: 37, baseType: !726)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !339, line: 49, baseType: !13)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !716, file: !717, line: 113, baseType: !728, size: 32, offset: 96)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !644, line: 28, baseType: !729)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !644, line: 26, size: 32, elements: !730)
!730 = !{!731}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !729, file: !644, line: 27, baseType: !732, size: 32)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !108, line: 38, baseType: !733)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !339, line: 50, baseType: !13)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !716, file: !717, line: 114, baseType: !721, size: 32, offset: 128)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !716, file: !717, line: 115, baseType: !728, size: 32, offset: 160)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !716, file: !717, line: 116, baseType: !721, size: 32, offset: 192)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !716, file: !717, line: 117, baseType: !728, size: 32, offset: 224)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !716, file: !717, line: 118, baseType: !721, size: 32, offset: 256)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !716, file: !717, line: 119, baseType: !728, size: 32, offset: 288)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !716, file: !717, line: 120, baseType: !13, size: 32, offset: 320)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !716, file: !717, line: 121, baseType: !742, size: 64, offset: 384)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !743, line: 24, baseType: !744)
!743 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !743, line: 24, size: 64, elements: !745)
!745 = !{!746}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !744, file: !743, line: 24, baseType: !191, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !716, file: !717, line: 122, baseType: !742, size: 64, offset: 448)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !716, file: !717, line: 123, baseType: !742, size: 64, offset: 512)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !716, file: !717, line: 124, baseType: !742, size: 64, offset: 576)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !716, file: !717, line: 125, baseType: !742, size: 64, offset: 640)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !716, file: !717, line: 127, baseType: !308, size: 8, offset: 704)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !716, file: !717, line: 129, baseType: !753, size: 64, offset: 768)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !702, line: 195, size: 1728, elements: !755)
!755 = !{!756, !757, !762, !767, !776, !779, !780, !787, !788, !789, !790, !793, !794, !795, !797, !798, !839, !860}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !754, file: !702, line: 196, baseType: !131, size: 32)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !754, file: !702, line: 197, baseType: !758, size: 32, offset: 32)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !702, line: 28, baseType: !759)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !108, line: 104, baseType: !760)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !123, line: 20, baseType: !761)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !125, line: 26, baseType: !140)
!762 = !DIDerivedType(tag: DW_TAG_member, scope: !754, file: !702, line: 198, baseType: !763, size: 192, offset: 64)
!763 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !754, file: !702, line: 198, size: 192, elements: !764)
!764 = !{!765, !766}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !763, file: !702, line: 199, baseType: !196, size: 128)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !763, file: !702, line: 200, baseType: !183, size: 192, align: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !754, file: !702, line: 205, baseType: !768, size: 320, offset: 256)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !769, line: 48, size: 320, elements: !770)
!769 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!770 = !{!771, !772, !773, !774, !775}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !768, file: !769, line: 49, baseType: !529, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !768, file: !769, line: 55, baseType: !529, size: 64, offset: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !768, file: !769, line: 57, baseType: !542, size: 32, offset: 128)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !768, file: !769, line: 59, baseType: !289, size: 32, offset: 160)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !768, file: !769, line: 60, baseType: !196, size: 128, offset: 192)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !754, file: !702, line: 206, baseType: !777, size: 64, offset: 576)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !702, line: 206, flags: DIFlagFwdDecl)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !754, file: !702, line: 207, baseType: !129, size: 64, offset: 640)
!780 = !DIDerivedType(tag: DW_TAG_member, scope: !754, file: !702, line: 208, baseType: !781, size: 64, offset: 704)
!781 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !754, file: !702, line: 208, size: 64, elements: !782)
!782 = !{!783, !786}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !781, file: !702, line: 209, baseType: !784, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !785, line: 8, baseType: !208)
!785 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!786 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !781, file: !702, line: 210, baseType: !784, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !754, file: !702, line: 212, baseType: !784, size: 64, offset: 768)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !754, file: !702, line: 213, baseType: !721, size: 32, offset: 832)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !754, file: !702, line: 214, baseType: !728, size: 32, offset: 864)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !754, file: !702, line: 215, baseType: !791, size: 32, offset: 896)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !702, line: 31, baseType: !792)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !108, line: 110, baseType: !122)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !754, file: !702, line: 216, baseType: !162, size: 16, offset: 928)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !754, file: !702, line: 217, baseType: !162, size: 16, offset: 944)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !754, file: !702, line: 221, baseType: !796, size: 16, offset: 960)
!796 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !754, file: !702, line: 228, baseType: !119, size: 64, offset: 1024)
!798 = !DIDerivedType(tag: DW_TAG_member, scope: !754, file: !702, line: 245, baseType: !799, size: 320, offset: 1088)
!799 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !754, file: !702, line: 245, size: 320, elements: !800)
!800 = !{!801, !830}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !799, file: !702, line: 246, baseType: !802, size: 320)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !702, line: 114, size: 320, elements: !803)
!803 = !{!804, !805, !817, !820, !829}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !802, file: !702, line: 116, baseType: !119, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, scope: !802, file: !702, line: 117, baseType: !806, size: 64, offset: 64)
!806 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !802, file: !702, line: 117, size: 64, elements: !807)
!807 = !{!808, !816}
!808 = !DIDerivedType(tag: DW_TAG_member, scope: !806, file: !702, line: 118, baseType: !809, size: 64)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !806, file: !702, line: 118, size: 64, elements: !810)
!810 = !{!811, !812}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !809, file: !702, line: 120, baseType: !160, size: 16)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !809, file: !702, line: 121, baseType: !813, size: 48, offset: 16)
!813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !814)
!814 = !{!815}
!815 = !DISubrange(count: 6)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !806, file: !702, line: 127, baseType: !119, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !802, file: !702, line: 129, baseType: !818, size: 64, offset: 128)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !702, line: 102, flags: DIFlagFwdDecl)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !802, file: !702, line: 130, baseType: !821, size: 64, offset: 192)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !702, line: 108, size: 192, elements: !823)
!823 = !{!824, !825, !826}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !822, file: !702, line: 109, baseType: !516, size: 128, align: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !822, file: !702, line: 110, baseType: !131, size: 32, offset: 128)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !822, file: !702, line: 111, baseType: !827, size: 8, offset: 160)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !108, line: 35, baseType: !828)
!828 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !802, file: !702, line: 131, baseType: !662, size: 64, offset: 256)
!830 = !DIDerivedType(tag: DW_TAG_member, scope: !799, file: !702, line: 247, baseType: !831, size: 320)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !799, file: !702, line: 247, size: 320, elements: !832)
!832 = !{!833, !834, !835, !836, !837}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !831, file: !702, line: 248, baseType: !119, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !831, file: !702, line: 249, baseType: !119, size: 64, offset: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !831, file: !702, line: 250, baseType: !818, size: 64, offset: 128)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !831, file: !702, line: 251, baseType: !821, size: 64, offset: 192)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !831, file: !702, line: 252, baseType: !838, size: 64, offset: 256)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, scope: !754, file: !702, line: 260, baseType: !840, size: 256, offset: 1408)
!840 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !754, file: !702, line: 260, size: 256, elements: !841)
!841 = !{!842, !848}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !840, file: !702, line: 261, baseType: !843, size: 256)
!843 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !702, line: 134, size: 256, elements: !844)
!844 = !{!845, !846}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !843, file: !702, line: 135, baseType: !129, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !843, file: !702, line: 136, baseType: !847, size: 256)
!847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 256, elements: !595)
!848 = !DIDerivedType(tag: DW_TAG_member, scope: !840, file: !702, line: 262, baseType: !849, size: 256)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !840, file: !702, line: 262, size: 256, elements: !850)
!850 = !{!851, !852}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !849, file: !702, line: 264, baseType: !196, size: 128)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !849, file: !702, line: 265, baseType: !853, size: 128, offset: 128)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !854, line: 22, size: 128, elements: !855)
!854 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!855 = !{!856, !859}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !853, file: !854, line: 23, baseType: !857, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !854, line: 23, flags: DIFlagFwdDecl)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !853, file: !854, line: 24, baseType: !119, size: 64, offset: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !754, file: !702, line: 280, baseType: !861, size: 64, offset: 1664)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !702, line: 176, size: 192, elements: !863)
!863 = !{!864, !873, !874}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !862, file: !702, line: 177, baseType: !865, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !702, line: 171, baseType: !866)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DISubroutineType(types: !868)
!868 = !{!140, !753, !869, !871, !753}
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !819)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !843)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !862, file: !702, line: 178, baseType: !753, size: 64, offset: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !862, file: !702, line: 179, baseType: !818, size: 64, offset: 128)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !716, file: !717, line: 130, baseType: !753, size: 64, offset: 832)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !716, file: !717, line: 131, baseType: !753, size: 64, offset: 896)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !716, file: !717, line: 132, baseType: !753, size: 64, offset: 960)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !716, file: !717, line: 135, baseType: !129, size: 64, offset: 1024)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !716, file: !717, line: 137, baseType: !880, size: 64, offset: 1088)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !882, line: 14, size: 1088, elements: !883)
!882 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!883 = !{!884, !885, !894, !895, !896, !897, !898, !899}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !881, file: !882, line: 15, baseType: !131, size: 32)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !881, file: !882, line: 17, baseType: !886, size: 320, offset: 64)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !887, line: 22, size: 320, elements: !888)
!887 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!888 = !{!889, !890, !891, !892}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !886, file: !887, line: 23, baseType: !289, size: 32)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !886, file: !887, line: 24, baseType: !207, size: 64, offset: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !886, file: !887, line: 26, baseType: !196, size: 128, offset: 128)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !886, file: !887, line: 28, baseType: !893, size: 64, offset: 256)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !881, file: !882, line: 19, baseType: !119, size: 64, offset: 384)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !881, file: !882, line: 20, baseType: !529, size: 64, offset: 448)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !881, file: !882, line: 23, baseType: !590, size: 128, offset: 512)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !881, file: !882, line: 24, baseType: !721, size: 32, offset: 640)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !881, file: !882, line: 29, baseType: !529, size: 64, offset: 704)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !881, file: !882, line: 36, baseType: !900, size: 320, offset: 768)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !901, line: 15, size: 320, elements: !902)
!901 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!902 = !{!903, !904, !905, !906, !907, !908, !909}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !900, file: !901, line: 16, baseType: !289, size: 32)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !900, file: !901, line: 18, baseType: !140, size: 32, offset: 32)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !900, file: !901, line: 19, baseType: !140, size: 32, offset: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !900, file: !901, line: 20, baseType: !140, size: 32, offset: 96)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !900, file: !901, line: 21, baseType: !140, size: 32, offset: 128)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !900, file: !901, line: 22, baseType: !119, size: 64, offset: 192)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !900, file: !901, line: 23, baseType: !119, size: 64, offset: 256)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !716, file: !717, line: 138, baseType: !642, size: 64, offset: 1152)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !716, file: !717, line: 139, baseType: !646, size: 64, offset: 1216)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !716, file: !717, line: 140, baseType: !913, size: 64, offset: 1280)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !717, line: 25, size: 64, elements: !915)
!915 = !{!916, !917, !918}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !914, file: !717, line: 26, baseType: !136, size: 32)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !914, file: !717, line: 27, baseType: !140, size: 32, offset: 32)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !914, file: !717, line: 28, baseType: !919, offset: 64)
!919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !728, elements: !920)
!920 = !{!921}
!921 = !DISubrange(count: -1)
!922 = !DIDerivedType(tag: DW_TAG_member, scope: !716, file: !717, line: 142, baseType: !923, size: 128, offset: 1344)
!923 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !716, file: !717, line: 142, size: 128, elements: !924)
!924 = !{!925, !926}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !923, file: !717, line: 143, baseType: !140, size: 32)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !923, file: !717, line: 144, baseType: !516, size: 128, align: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !658, file: !659, line: 23, baseType: !928, size: 64, offset: 384)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DISubroutineType(types: !930)
!930 = !{!642, !670}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !658, file: !659, line: 24, baseType: !932, size: 64, offset: 448)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DISubroutineType(types: !934)
!934 = !{!670, !670}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !651, file: !652, line: 12, baseType: !13, size: 32, offset: 128)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !651, file: !652, line: 13, baseType: !131, size: 32, offset: 160)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !613, file: !614, line: 42, baseType: !140, size: 32, offset: 1088)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !552, file: !70, line: 951, baseType: !61, size: 32, offset: 128)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !552, file: !70, line: 952, baseType: !721, size: 32, offset: 160)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !552, file: !70, line: 952, baseType: !721, size: 32, offset: 192)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !552, file: !70, line: 953, baseType: !140, size: 32, offset: 224)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !509, file: !70, line: 1012, baseType: !714, size: 64, offset: 896)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !509, file: !70, line: 1013, baseType: !944, size: 256, offset: 960)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !70, line: 970, size: 256, elements: !945)
!945 = !{!946, !947, !948, !949, !950, !951}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !944, file: !70, line: 971, baseType: !119, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !944, file: !70, line: 972, baseType: !13, size: 32, offset: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !944, file: !70, line: 973, baseType: !13, size: 32, offset: 96)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !944, file: !70, line: 974, baseType: !13, size: 32, offset: 128)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !944, file: !70, line: 975, baseType: !13, size: 32, offset: 160)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !944, file: !70, line: 976, baseType: !548, size: 64, offset: 192)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !509, file: !70, line: 1014, baseType: !953, size: 128, offset: 1216)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !954, line: 8, size: 128, elements: !955)
!954 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!955 = !{!956, !2485}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !953, file: !954, line: 9, baseType: !957, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !959, line: 70, size: 256, elements: !960)
!959 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!960 = !{!961, !2482, !2483, !2484}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !958, file: !959, line: 71, baseType: !962, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !964, line: 82, size: 1536, elements: !965)
!964 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!965 = !{!966, !967, !972, !980, !981, !996, !2449, !2451, !2464, !2465, !2466, !2467, !2468, !2474, !2475, !2476}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !963, file: !964, line: 84, baseType: !13, size: 32)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !963, file: !964, line: 85, baseType: !968, size: 32, offset: 32)
!968 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !342, line: 275, baseType: !969)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !342, line: 275, size: 32, elements: !970)
!970 = !{!971}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !969, file: !342, line: 275, baseType: !346, size: 32)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !963, file: !964, line: 86, baseType: !973, size: 128, offset: 64)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !974, line: 38, size: 128, elements: !975)
!974 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!975 = !{!976, !978}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !973, file: !974, line: 39, baseType: !977, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !973, file: !974, line: 39, baseType: !979, size: 64, offset: 64)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !963, file: !964, line: 87, baseType: !962, size: 64, offset: 192)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !963, file: !964, line: 88, baseType: !982, size: 128, offset: 256)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !964, line: 49, size: 128, elements: !983)
!983 = !{!984, !993}
!984 = !DIDerivedType(tag: DW_TAG_member, scope: !982, file: !964, line: 50, baseType: !985, size: 64)
!985 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !982, file: !964, line: 50, size: 64, elements: !986)
!986 = !{!987, !992}
!987 = !DIDerivedType(tag: DW_TAG_member, scope: !985, file: !964, line: 51, baseType: !988, size: 64)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !985, file: !964, line: 51, size: 64, elements: !989)
!989 = !{!990, !991}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !988, file: !964, line: 52, baseType: !122, size: 32)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !988, file: !964, line: 52, baseType: !122, size: 32, offset: 32)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !985, file: !964, line: 54, baseType: !191, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !982, file: !964, line: 56, baseType: !994, size: 64, offset: 64)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !308)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !963, file: !964, line: 89, baseType: !997, size: 64, offset: 384)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !70, line: 641, size: 4800, elements: !999)
!999 = !{!1000, !1002, !1003, !1004, !1005, !1006, !1007, !1010, !1011, !1202, !1760, !2259, !2260, !2261, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2431, !2434, !2435, !2436, !2445, !2446, !2447, !2448}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !998, file: !70, line: 642, baseType: !1001, size: 16)
!1001 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !108, line: 24, baseType: !162)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !998, file: !70, line: 643, baseType: !162, size: 16, offset: 16)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !998, file: !70, line: 644, baseType: !721, size: 32, offset: 32)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !998, file: !70, line: 645, baseType: !196, size: 128, offset: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !998, file: !70, line: 646, baseType: !728, size: 32, offset: 192)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !998, file: !70, line: 647, baseType: !13, size: 32, offset: 224)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !998, file: !70, line: 650, baseType: !1008, size: 64, offset: 256)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !70, line: 607, flags: DIFlagFwdDecl)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !998, file: !70, line: 651, baseType: !1008, size: 64, offset: 320)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !998, file: !70, line: 654, baseType: !1012, size: 64, offset: 384)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1014)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !70, line: 1966, size: 2048, align: 512, elements: !1015)
!1015 = !{!1016, !1020, !1033, !1039, !1043, !1047, !1051, !1055, !1059, !1063, !1067, !1068, !1074, !1078, !1116, !1147, !1157, !1163, !1167, !1171, !1175, !1179, !1183, !1189, !1193}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1014, file: !70, line: 1967, baseType: !1017, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!962, !997, !962, !13}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1014, file: !70, line: 1968, baseType: !1021, size: 64, offset: 64)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!662, !962, !997, !1024}
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1026, line: 10, size: 128, elements: !1027)
!1026 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!1027 = !{!1028, !1032}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1025, file: !1026, line: 11, baseType: !1029, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{null, !129}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1025, file: !1026, line: 12, baseType: !129, size: 64, offset: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1014, file: !70, line: 1969, baseType: !1034, size: 64, offset: 128)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!140, !1037, !997, !140}
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !743, line: 42, flags: DIFlagFwdDecl)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1014, file: !70, line: 1970, baseType: !1040, size: 64, offset: 192)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!1008, !997, !140, !827}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1014, file: !70, line: 1972, baseType: !1044, size: 64, offset: 256)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!140, !962, !838, !140}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1014, file: !70, line: 1974, baseType: !1048, size: 64, offset: 320)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!140, !1037, !997, !962, !1001, !827}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1014, file: !70, line: 1976, baseType: !1052, size: 64, offset: 384)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!140, !962, !997, !962}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1014, file: !70, line: 1977, baseType: !1056, size: 64, offset: 448)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!140, !997, !962}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1014, file: !70, line: 1978, baseType: !1060, size: 64, offset: 512)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!140, !1037, !997, !962, !662}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1014, file: !70, line: 1980, baseType: !1064, size: 64, offset: 576)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!140, !1037, !997, !962, !1001}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1014, file: !70, line: 1982, baseType: !1056, size: 64, offset: 640)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1014, file: !70, line: 1983, baseType: !1069, size: 64, offset: 704)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{!140, !1037, !997, !962, !1001, !1072}
!1072 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !108, line: 21, baseType: !1073)
!1073 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !108, line: 18, baseType: !122)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1014, file: !70, line: 1985, baseType: !1075, size: 64, offset: 768)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!140, !1037, !997, !962, !997, !962, !13}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1014, file: !70, line: 1987, baseType: !1079, size: 64, offset: 832)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{!140, !1037, !962, !1082}
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !70, line: 226, size: 640, elements: !1084)
!1084 = !{!1085, !1086, !1087, !1097, !1106, !1107, !1113, !1114, !1115}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1083, file: !70, line: 227, baseType: !13, size: 32)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1083, file: !70, line: 228, baseType: !1001, size: 16, offset: 32)
!1087 = !DIDerivedType(tag: DW_TAG_member, scope: !1083, file: !70, line: 241, baseType: !1088, size: 32, offset: 64)
!1088 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1083, file: !70, line: 241, size: 32, elements: !1089)
!1089 = !{!1090, !1091}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1088, file: !70, line: 242, baseType: !721, size: 32)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1088, file: !70, line: 243, baseType: !1092, size: 32)
!1092 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1093, line: 16, baseType: !1094)
!1093 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1093, line: 14, size: 32, elements: !1095)
!1095 = !{!1096}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1094, file: !1093, line: 15, baseType: !725, size: 32)
!1097 = !DIDerivedType(tag: DW_TAG_member, scope: !1083, file: !70, line: 245, baseType: !1098, size: 32, offset: 96)
!1098 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1083, file: !70, line: 245, size: 32, elements: !1099)
!1099 = !{!1100, !1101}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1098, file: !70, line: 246, baseType: !728, size: 32)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1098, file: !70, line: 247, baseType: !1102, size: 32)
!1102 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1093, line: 20, baseType: !1103)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1093, line: 18, size: 32, elements: !1104)
!1104 = !{!1105}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1103, file: !1093, line: 19, baseType: !732, size: 32)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1083, file: !70, line: 249, baseType: !548, size: 64, offset: 128)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1083, file: !70, line: 250, baseType: !1108, size: 128, offset: 192)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !785, line: 13, size: 128, elements: !1109)
!1109 = !{!1110, !1111}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1108, file: !785, line: 14, baseType: !784, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1108, file: !785, line: 15, baseType: !1112, size: 64, offset: 64)
!1112 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1083, file: !70, line: 251, baseType: !1108, size: 128, offset: 320)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1083, file: !70, line: 252, baseType: !1108, size: 128, offset: 448)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1083, file: !70, line: 259, baseType: !508, size: 64, offset: 576)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1014, file: !70, line: 1988, baseType: !1117, size: 64, offset: 896)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{!140, !1037, !1120, !1122, !122, !13}
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !953)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1124, line: 22, size: 1280, elements: !1125)
!1124 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1125 = !{!1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1123, file: !1124, line: 23, baseType: !122, size: 32)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1123, file: !1124, line: 24, baseType: !1001, size: 16, offset: 32)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1123, file: !1124, line: 25, baseType: !13, size: 32, offset: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1123, file: !1124, line: 26, baseType: !792, size: 32, offset: 96)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1123, file: !1124, line: 27, baseType: !191, size: 64, offset: 128)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1123, file: !1124, line: 28, baseType: !191, size: 64, offset: 192)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1123, file: !1124, line: 41, baseType: !191, size: 64, offset: 256)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1123, file: !1124, line: 42, baseType: !1072, size: 32, offset: 320)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1123, file: !1124, line: 43, baseType: !1072, size: 32, offset: 352)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1123, file: !1124, line: 44, baseType: !721, size: 32, offset: 384)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1123, file: !1124, line: 45, baseType: !728, size: 32, offset: 416)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1123, file: !1124, line: 46, baseType: !548, size: 64, offset: 448)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1123, file: !1124, line: 47, baseType: !1108, size: 128, offset: 512)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1123, file: !1124, line: 48, baseType: !1108, size: 128, offset: 640)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1123, file: !1124, line: 49, baseType: !1108, size: 128, offset: 768)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1123, file: !1124, line: 50, baseType: !1108, size: 128, offset: 896)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1123, file: !1124, line: 51, baseType: !191, size: 64, offset: 1024)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1123, file: !1124, line: 52, baseType: !191, size: 64, offset: 1088)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1123, file: !1124, line: 53, baseType: !122, size: 32, offset: 1152)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1123, file: !1124, line: 54, baseType: !122, size: 32, offset: 1184)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1123, file: !1124, line: 55, baseType: !191, size: 64, offset: 1216)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1014, file: !70, line: 1990, baseType: !1148, size: 64, offset: 960)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!1151, !962, !838, !1154}
!1151 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !108, line: 66, baseType: !1152)
!1152 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !339, line: 73, baseType: !1153)
!1153 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !339, line: 15, baseType: !1112)
!1154 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !108, line: 61, baseType: !1155)
!1155 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !339, line: 72, baseType: !1156)
!1156 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !339, line: 16, baseType: !119)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1014, file: !70, line: 1991, baseType: !1158, size: 64, offset: 1024)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!140, !997, !1161, !191, !191}
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !70, line: 55, flags: DIFlagFwdDecl)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1014, file: !70, line: 1993, baseType: !1164, size: 64, offset: 1088)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!140, !997, !140}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1014, file: !70, line: 1994, baseType: !1168, size: 64, offset: 1152)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{!140, !997, !962, !508, !13, !1001}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1014, file: !70, line: 1997, baseType: !1172, size: 64, offset: 1216)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{!140, !1037, !997, !508, !1001}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1014, file: !70, line: 1999, baseType: !1176, size: 64, offset: 1280)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!1008, !1037, !962, !140}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1014, file: !70, line: 2001, baseType: !1180, size: 64, offset: 1344)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!140, !1037, !962, !1008, !140}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1014, file: !70, line: 2003, baseType: !1184, size: 64, offset: 1408)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!140, !1037, !962, !1187}
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !70, line: 76, flags: DIFlagFwdDecl)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1014, file: !70, line: 2005, baseType: !1190, size: 64, offset: 1472)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!140, !962, !1187}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1014, file: !70, line: 2006, baseType: !1194, size: 64, offset: 1536)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{!1197, !997}
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !70, line: 3192, size: 192, elements: !1199)
!1199 = !{!1200, !1201}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1198, file: !70, line: 3193, baseType: !621, size: 128)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1198, file: !70, line: 3194, baseType: !122, size: 32, offset: 128)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !998, file: !70, line: 655, baseType: !1203, size: 64, offset: 448)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !70, line: 1190, size: 10752, elements: !1205)
!1205 = !{!1206, !1207, !1208, !1209, !1210, !1211, !1252, !1389, !1429, !1512, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1529, !1533, !1534, !1537, !1540, !1543, !1546, !1547, !1548, !1589, !1616, !1617, !1618, !1619, !1620, !1621, !1624, !1628, !1637, !1638, !1639, !1640, !1699, !1714, !1715, !1716, !1717, !1720, !1724, !1725, !1726, !1741, !1742, !1743, !1754, !1755, !1756, !1757, !1758, !1759}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1204, file: !70, line: 1191, baseType: !196, size: 128)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1204, file: !70, line: 1192, baseType: !1072, size: 32, offset: 128)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1204, file: !70, line: 1193, baseType: !308, size: 8, offset: 160)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1204, file: !70, line: 1194, baseType: !119, size: 64, offset: 192)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1204, file: !70, line: 1195, baseType: !548, size: 64, offset: 256)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1204, file: !70, line: 1196, baseType: !1212, size: 64, offset: 320)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !70, line: 2366, size: 576, elements: !1214)
!1214 = !{!1215, !1216, !1217, !1223, !1227, !1231, !1235, !1239, !1240, !1241, !1244, !1245, !1246, !1248, !1249, !1250, !1251}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1213, file: !70, line: 2367, baseType: !662, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1213, file: !70, line: 2368, baseType: !140, size: 32, offset: 64)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1213, file: !70, line: 2376, baseType: !1218, size: 64, offset: 128)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{!140, !1221}
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !959, line: 21, flags: DIFlagFwdDecl)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1213, file: !70, line: 2377, baseType: !1224, size: 64, offset: 192)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1226)
!1226 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !70, line: 75, flags: DIFlagFwdDecl)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1213, file: !70, line: 2378, baseType: !1228, size: 64, offset: 256)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!962, !1212, !140, !662, !129}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1213, file: !70, line: 2380, baseType: !1232, size: 64, offset: 320)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{null, !1203}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1213, file: !70, line: 2381, baseType: !1236, size: 64, offset: 384)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1238, line: 103, flags: DIFlagFwdDecl)
!1238 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec86911224c4b764298f6e976616738c")
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1213, file: !70, line: 2382, baseType: !1212, size: 64, offset: 448)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1213, file: !70, line: 2383, baseType: !586, size: 64, offset: 512)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1213, file: !70, line: 2385, baseType: !1242, offset: 576)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1243, line: 206, elements: !501)
!1243 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1213, file: !70, line: 2386, baseType: !1242, offset: 576)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1213, file: !70, line: 2387, baseType: !1242, offset: 576)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1213, file: !70, line: 2388, baseType: !1247, offset: 576)
!1247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1242, elements: !574)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1213, file: !70, line: 2390, baseType: !1242, offset: 576)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1213, file: !70, line: 2391, baseType: !1242, offset: 576)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1213, file: !70, line: 2392, baseType: !1242, offset: 576)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1213, file: !70, line: 2393, baseType: !1242, offset: 576)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1204, file: !70, line: 1197, baseType: !1253, size: 64, offset: 384)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1255)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !70, line: 2057, size: 1664, elements: !1256)
!1256 = !{!1257, !1261, !1265, !1266, !1270, !1276, !1280, !1281, !1282, !1286, !1290, !1294, !1295, !1296, !1302, !1307, !1308, !1314, !1315, !1316, !1317, !1321, !1325, !1372, !1387, !1388}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1255, file: !70, line: 2058, baseType: !1258, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!997, !1203}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1255, file: !70, line: 2059, baseType: !1262, size: 64, offset: 64)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{null, !997}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1255, file: !70, line: 2060, baseType: !1262, size: 64, offset: 128)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1255, file: !70, line: 2062, baseType: !1267, size: 64, offset: 192)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{null, !997, !140}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1255, file: !70, line: 2063, baseType: !1271, size: 64, offset: 256)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{!140, !997, !1274}
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !70, line: 309, flags: DIFlagFwdDecl)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1255, file: !70, line: 2064, baseType: !1277, size: 64, offset: 320)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{!140, !997}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1255, file: !70, line: 2065, baseType: !1262, size: 64, offset: 384)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1255, file: !70, line: 2066, baseType: !1232, size: 64, offset: 448)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1255, file: !70, line: 2067, baseType: !1283, size: 64, offset: 512)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!140, !1203, !140}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1255, file: !70, line: 2068, baseType: !1287, size: 64, offset: 576)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{!140, !1203, !69}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1255, file: !70, line: 2069, baseType: !1291, size: 64, offset: 640)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!140, !1203}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1255, file: !70, line: 2070, baseType: !1287, size: 64, offset: 704)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1255, file: !70, line: 2071, baseType: !1291, size: 64, offset: 768)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1255, file: !70, line: 2072, baseType: !1297, size: 64, offset: 832)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = !DISubroutineType(types: !1299)
!1299 = !{!140, !962, !1300}
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !70, line: 62, flags: DIFlagFwdDecl)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1255, file: !70, line: 2073, baseType: !1303, size: 64, offset: 896)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{!140, !1203, !1306, !838}
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1255, file: !70, line: 2074, baseType: !1232, size: 64, offset: 960)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1255, file: !70, line: 2076, baseType: !1309, size: 64, offset: 1024)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!140, !1312, !962}
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !112, line: 66, flags: DIFlagFwdDecl)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1255, file: !70, line: 2077, baseType: !1309, size: 64, offset: 1088)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1255, file: !70, line: 2078, baseType: !1309, size: 64, offset: 1152)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1255, file: !70, line: 2079, baseType: !1309, size: 64, offset: 1216)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1255, file: !70, line: 2081, baseType: !1318, size: 64, offset: 1280)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = !DISubroutineType(types: !1320)
!1320 = !{!1151, !1203, !140, !838, !1154, !548}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1255, file: !70, line: 2082, baseType: !1322, size: 64, offset: 1344)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1323 = !DISubroutineType(types: !1324)
!1324 = !{!1151, !1203, !140, !662, !1154, !548}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1255, file: !70, line: 2083, baseType: !1326, size: 64, offset: 1408)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = !DISubroutineType(types: !1328)
!1328 = !{!1329, !997}
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !75, line: 296, size: 1664, elements: !1332)
!1332 = !{!1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1357, !1358, !1359}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1331, file: !75, line: 297, baseType: !590, size: 128)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1331, file: !75, line: 298, baseType: !196, size: 128, offset: 128)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1331, file: !75, line: 299, baseType: !196, size: 128, offset: 256)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1331, file: !75, line: 300, baseType: !196, size: 128, offset: 384)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1331, file: !75, line: 301, baseType: !536, size: 256, offset: 512)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1331, file: !75, line: 302, baseType: !490, size: 32, offset: 768)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1331, file: !75, line: 303, baseType: !136, size: 32, offset: 800)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1331, file: !75, line: 304, baseType: !1203, size: 64, offset: 832)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1331, file: !75, line: 305, baseType: !1342, size: 64, offset: 896)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !75, line: 68, size: 64, elements: !1343)
!1343 = !{!1344, !1356}
!1344 = !DIDerivedType(tag: DW_TAG_member, scope: !1342, file: !75, line: 69, baseType: !1345, size: 32)
!1345 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1342, file: !75, line: 69, size: 32, elements: !1346)
!1346 = !{!1347, !1348, !1349}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1345, file: !75, line: 70, baseType: !721, size: 32)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1345, file: !75, line: 71, baseType: !728, size: 32)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1345, file: !75, line: 72, baseType: !1350, size: 32)
!1350 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1351, line: 24, baseType: !1352)
!1351 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1351, line: 22, size: 32, elements: !1353)
!1353 = !{!1354}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1352, file: !1351, line: 23, baseType: !1355, size: 32)
!1355 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1351, line: 20, baseType: !726)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1342, file: !75, line: 74, baseType: !74, size: 32, offset: 32)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1331, file: !75, line: 306, baseType: !548, size: 64, offset: 960)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1331, file: !75, line: 307, baseType: !119, size: 64, offset: 1024)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1331, file: !75, line: 308, baseType: !1360, size: 576, offset: 1088)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !75, line: 205, size: 576, elements: !1361)
!1361 = !{!1362, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1360, file: !75, line: 206, baseType: !1363, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !75, line: 66, baseType: !209)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1360, file: !75, line: 207, baseType: !1363, size: 64, offset: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1360, file: !75, line: 208, baseType: !1363, size: 64, offset: 128)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1360, file: !75, line: 209, baseType: !1363, size: 64, offset: 192)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1360, file: !75, line: 210, baseType: !1363, size: 64, offset: 256)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1360, file: !75, line: 211, baseType: !1363, size: 64, offset: 320)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1360, file: !75, line: 212, baseType: !1363, size: 64, offset: 384)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1360, file: !75, line: 213, baseType: !784, size: 64, offset: 448)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1360, file: !75, line: 214, baseType: !784, size: 64, offset: 512)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1255, file: !70, line: 2085, baseType: !1373, size: 64, offset: 1472)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{!1112, !1203, !1376}
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1378, line: 15, size: 256, elements: !1379)
!1378 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1379 = !{!1380, !1381, !1382, !1383, !1384}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1377, file: !1378, line: 16, baseType: !107, size: 32)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1377, file: !1378, line: 19, baseType: !140, size: 32, offset: 32)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1377, file: !1378, line: 26, baseType: !119, size: 64, offset: 64)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1377, file: !1378, line: 33, baseType: !119, size: 64, offset: 128)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1377, file: !1378, line: 36, baseType: !1385, size: 64, offset: 192)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !18, line: 33, flags: DIFlagFwdDecl)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1255, file: !70, line: 2087, baseType: !1373, size: 64, offset: 1536)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1255, file: !70, line: 2089, baseType: !1232, size: 64, offset: 1600)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1204, file: !70, line: 1198, baseType: !1390, size: 64, offset: 448)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1392)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !75, line: 324, size: 704, elements: !1393)
!1393 = !{!1394, !1398, !1402, !1406, !1407, !1408, !1409, !1410, !1415, !1420, !1424}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1392, file: !75, line: 325, baseType: !1395, size: 64)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{!140, !1330}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1392, file: !75, line: 326, baseType: !1399, size: 64, offset: 64)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!1330, !1203, !140}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1392, file: !75, line: 327, baseType: !1403, size: 64, offset: 128)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{null, !1330}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1392, file: !75, line: 328, baseType: !1395, size: 64, offset: 192)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1392, file: !75, line: 329, baseType: !1395, size: 64, offset: 256)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1392, file: !75, line: 330, baseType: !1395, size: 64, offset: 320)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1392, file: !75, line: 331, baseType: !1283, size: 64, offset: 384)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1392, file: !75, line: 334, baseType: !1411, size: 64, offset: 448)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{!1414, !997}
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1392, file: !75, line: 335, baseType: !1416, size: 64, offset: 512)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{!140, !997, !1419}
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1392, file: !75, line: 337, baseType: !1421, size: 64, offset: 576)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = !DISubroutineType(types: !1423)
!1423 = !{!140, !997, !1414}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1392, file: !75, line: 339, baseType: !1425, size: 64, offset: 640)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{!140, !1203, !1428}
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1204, file: !70, line: 1199, baseType: !1430, size: 64, offset: 512)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1432)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !75, line: 430, size: 704, elements: !1433)
!1433 = !{!1434, !1438, !1439, !1443, !1444, !1445, !1460, !1483, !1487, !1488, !1511}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1432, file: !75, line: 431, baseType: !1435, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{!140, !1203, !140, !140, !1120}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1432, file: !75, line: 432, baseType: !1283, size: 64, offset: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1432, file: !75, line: 433, baseType: !1440, size: 64, offset: 128)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = !DISubroutineType(types: !1442)
!1442 = !{!140, !1203, !13}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1432, file: !75, line: 434, baseType: !1440, size: 64, offset: 192)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1432, file: !75, line: 435, baseType: !1283, size: 64, offset: 256)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1432, file: !75, line: 436, baseType: !1446, size: 64, offset: 320)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DISubroutineType(types: !1448)
!1448 = !{!140, !1203, !140, !1449}
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !75, line: 417, size: 256, elements: !1451)
!1451 = !{!1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1450, file: !75, line: 418, baseType: !140, size: 32)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1450, file: !75, line: 419, baseType: !13, size: 32, offset: 32)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1450, file: !75, line: 420, baseType: !13, size: 32, offset: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1450, file: !75, line: 422, baseType: !13, size: 32, offset: 96)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1450, file: !75, line: 423, baseType: !13, size: 32, offset: 128)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1450, file: !75, line: 424, baseType: !13, size: 32, offset: 160)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1450, file: !75, line: 425, baseType: !13, size: 32, offset: 192)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1450, file: !75, line: 426, baseType: !13, size: 32, offset: 224)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1432, file: !75, line: 437, baseType: !1461, size: 64, offset: 384)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!140, !1203, !1342, !1464}
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !75, line: 345, size: 960, elements: !1466)
!1466 = !{!1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1465, file: !75, line: 346, baseType: !140, size: 32)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1465, file: !75, line: 347, baseType: !191, size: 64, offset: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1465, file: !75, line: 348, baseType: !191, size: 64, offset: 128)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1465, file: !75, line: 349, baseType: !191, size: 64, offset: 192)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1465, file: !75, line: 350, baseType: !191, size: 64, offset: 256)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1465, file: !75, line: 351, baseType: !191, size: 64, offset: 320)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1465, file: !75, line: 352, baseType: !191, size: 64, offset: 384)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1465, file: !75, line: 353, baseType: !207, size: 64, offset: 448)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1465, file: !75, line: 355, baseType: !207, size: 64, offset: 512)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1465, file: !75, line: 356, baseType: !140, size: 32, offset: 576)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1465, file: !75, line: 357, baseType: !140, size: 32, offset: 608)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1465, file: !75, line: 358, baseType: !191, size: 64, offset: 640)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1465, file: !75, line: 359, baseType: !191, size: 64, offset: 704)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1465, file: !75, line: 360, baseType: !191, size: 64, offset: 768)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1465, file: !75, line: 361, baseType: !207, size: 64, offset: 832)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1465, file: !75, line: 362, baseType: !140, size: 32, offset: 896)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1432, file: !75, line: 438, baseType: !1484, size: 64, offset: 448)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DISubroutineType(types: !1486)
!1486 = !{!140, !1203, !1428, !1464}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1432, file: !75, line: 440, baseType: !1461, size: 64, offset: 512)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1432, file: !75, line: 441, baseType: !1489, size: 64, offset: 576)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = !DISubroutineType(types: !1491)
!1491 = !{!140, !1203, !1492}
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !75, line: 411, size: 1408, elements: !1494)
!1494 = !{!1495, !1496}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1493, file: !75, line: 412, baseType: !13, size: 32)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1493, file: !75, line: 413, baseType: !1497, size: 1344, offset: 64)
!1497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1498, size: 1344, elements: !574)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !75, line: 397, size: 448, elements: !1499)
!1499 = !{!1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1510}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1498, file: !75, line: 398, baseType: !13, size: 32)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1498, file: !75, line: 399, baseType: !13, size: 32, offset: 32)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1498, file: !75, line: 401, baseType: !13, size: 32, offset: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1498, file: !75, line: 402, baseType: !13, size: 32, offset: 96)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1498, file: !75, line: 403, baseType: !13, size: 32, offset: 128)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1498, file: !75, line: 404, baseType: !13, size: 32, offset: 160)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1498, file: !75, line: 405, baseType: !13, size: 32, offset: 192)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1498, file: !75, line: 406, baseType: !193, size: 64, offset: 256)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1498, file: !75, line: 407, baseType: !1509, size: 64, offset: 320)
!1509 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !108, line: 132, baseType: !191)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1498, file: !75, line: 408, baseType: !1509, size: 64, offset: 384)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1432, file: !75, line: 442, baseType: !1440, size: 64, offset: 640)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1204, file: !70, line: 1200, baseType: !1513, size: 64, offset: 576)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1515)
!1515 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !70, line: 54, flags: DIFlagFwdDecl)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1204, file: !70, line: 1201, baseType: !119, size: 64, offset: 640)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1204, file: !70, line: 1202, baseType: !119, size: 64, offset: 704)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1204, file: !70, line: 1203, baseType: !119, size: 64, offset: 768)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1204, file: !70, line: 1204, baseType: !962, size: 64, offset: 832)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1204, file: !70, line: 1205, baseType: !768, size: 320, offset: 896)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1204, file: !70, line: 1206, baseType: !140, size: 32, offset: 1216)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1204, file: !70, line: 1207, baseType: !136, size: 32, offset: 1248)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1204, file: !70, line: 1209, baseType: !129, size: 64, offset: 1280)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1204, file: !70, line: 1211, baseType: !1525, size: 64, offset: 1344)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1528)
!1528 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !70, line: 1211, flags: DIFlagFwdDecl)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1204, file: !70, line: 1223, baseType: !1530, size: 64, offset: 1408)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !974, line: 34, size: 64, elements: !1531)
!1531 = !{!1532}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1530, file: !974, line: 35, baseType: !977, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1204, file: !70, line: 1224, baseType: !196, size: 128, offset: 1472)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1204, file: !70, line: 1225, baseType: !1535, size: 64, offset: 1600)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !70, line: 1225, flags: DIFlagFwdDecl)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1204, file: !70, line: 1226, baseType: !1538, size: 64, offset: 1664)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !70, line: 1226, flags: DIFlagFwdDecl)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1204, file: !70, line: 1227, baseType: !1541, size: 64, offset: 1728)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !70, line: 50, flags: DIFlagFwdDecl)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1204, file: !70, line: 1228, baseType: !1544, size: 64, offset: 1792)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !70, line: 1228, flags: DIFlagFwdDecl)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1204, file: !70, line: 1229, baseType: !590, size: 128, offset: 1856)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1204, file: !70, line: 1230, baseType: !13, size: 32, offset: 1984)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1204, file: !70, line: 1231, baseType: !1549, size: 2496, offset: 2048)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !75, line: 521, size: 2496, elements: !1550)
!1550 = !{!1551, !1552, !1553, !1555, !1587}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1549, file: !75, line: 522, baseType: !13, size: 32)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1549, file: !75, line: 523, baseType: !768, size: 320, offset: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1549, file: !75, line: 524, baseType: !1554, size: 192, offset: 384)
!1554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !997, size: 192, elements: !574)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1549, file: !75, line: 525, baseType: !1556, size: 1728, offset: 576)
!1556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1557, size: 1728, elements: !574)
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !75, line: 222, size: 576, elements: !1558)
!1558 = !{!1559, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1557, file: !75, line: 223, baseType: !1560, size: 64)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !75, line: 445, size: 256, elements: !1562)
!1562 = !{!1563, !1564, !1577, !1578}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1561, file: !75, line: 446, baseType: !140, size: 32)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1561, file: !75, line: 447, baseType: !1565, size: 64, offset: 64)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1567)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !75, line: 312, size: 512, elements: !1568)
!1568 = !{!1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1567, file: !75, line: 313, baseType: !1283, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1567, file: !75, line: 314, baseType: !1283, size: 64, offset: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1567, file: !75, line: 315, baseType: !1283, size: 64, offset: 128)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1567, file: !75, line: 316, baseType: !1283, size: 64, offset: 192)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1567, file: !75, line: 317, baseType: !1395, size: 64, offset: 256)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1567, file: !75, line: 318, baseType: !1395, size: 64, offset: 320)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1567, file: !75, line: 319, baseType: !1395, size: 64, offset: 384)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1567, file: !75, line: 320, baseType: !1425, size: 64, offset: 448)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1561, file: !75, line: 448, baseType: !1236, size: 64, offset: 128)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1561, file: !75, line: 449, baseType: !1560, size: 64, offset: 192)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1557, file: !75, line: 224, baseType: !140, size: 32, offset: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1557, file: !75, line: 226, baseType: !196, size: 128, offset: 128)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1557, file: !75, line: 227, baseType: !119, size: 64, offset: 256)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1557, file: !75, line: 228, baseType: !13, size: 32, offset: 320)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1557, file: !75, line: 229, baseType: !13, size: 32, offset: 352)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1557, file: !75, line: 230, baseType: !1363, size: 64, offset: 384)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1557, file: !75, line: 231, baseType: !1363, size: 64, offset: 448)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1557, file: !75, line: 232, baseType: !129, size: 64, offset: 512)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1549, file: !75, line: 526, baseType: !1588, size: 192, offset: 2304)
!1588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1565, size: 192, elements: !574)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1204, file: !70, line: 1233, baseType: !1590, size: 2368, offset: 4544)
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !70, line: 1184, size: 2368, elements: !1591)
!1591 = !{!1592, !1593, !1594}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1590, file: !70, line: 1185, baseType: !162, size: 16)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1590, file: !70, line: 1186, baseType: !162, size: 16, offset: 16)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1590, file: !70, line: 1187, baseType: !1595, size: 2304, offset: 64)
!1595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1596, size: 2304, elements: !574)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1597, line: 12, size: 768, elements: !1598)
!1597 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1598 = !{!1599, !1607, !1609, !1614, !1615}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1596, file: !1597, line: 13, baseType: !1600, size: 384)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1601, line: 17, size: 384, elements: !1602)
!1601 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1602 = !{!1603, !1604, !1605, !1606}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1600, file: !1601, line: 18, baseType: !140, size: 32)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1600, file: !1601, line: 19, baseType: !140, size: 32, offset: 32)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1600, file: !1601, line: 20, baseType: !599, size: 192, offset: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1600, file: !1601, line: 22, baseType: !516, size: 128, align: 64, offset: 256)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1596, file: !1597, line: 14, baseType: !1608, size: 64, offset: 384)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1596, file: !1597, line: 15, baseType: !1610, size: 64, offset: 448)
!1610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1611, line: 16, size: 64, elements: !1612)
!1611 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1612 = !{!1613}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1610, file: !1611, line: 17, baseType: !110, size: 64)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1596, file: !1597, line: 16, baseType: !599, size: 192, offset: 512)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1596, file: !1597, line: 17, baseType: !136, size: 32, offset: 704)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1204, file: !70, line: 1240, baseType: !129, size: 64, offset: 6912)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1204, file: !70, line: 1243, baseType: !122, size: 32, offset: 6976)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1204, file: !70, line: 1245, baseType: !784, size: 64, offset: 7040)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1204, file: !70, line: 1246, baseType: !784, size: 64, offset: 7104)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1204, file: !70, line: 1248, baseType: !124, size: 32, offset: 7168)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1204, file: !70, line: 1249, baseType: !1622, size: 64, offset: 7232)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !70, line: 634, flags: DIFlagFwdDecl)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1204, file: !70, line: 1252, baseType: !1625, size: 256, offset: 7296)
!1625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !1626)
!1626 = !{!1627}
!1627 = !DISubrange(count: 32)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1204, file: !70, line: 1253, baseType: !1629, size: 128, offset: 7552)
!1629 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !1630, line: 21, baseType: !1631)
!1630 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1630, line: 19, size: 128, elements: !1632)
!1632 = !{!1633}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1631, file: !1630, line: 20, baseType: !1634, size: 128)
!1634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, size: 128, elements: !1635)
!1635 = !{!1636}
!1636 = !DISubrange(count: 16)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1204, file: !70, line: 1255, baseType: !13, size: 32, offset: 7680)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1204, file: !70, line: 1261, baseType: !536, size: 256, offset: 7744)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1204, file: !70, line: 1267, baseType: !662, size: 64, offset: 8000)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1204, file: !70, line: 1269, baseType: !1641, size: 64, offset: 8064)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1643)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !964, line: 128, size: 1024, align: 512, elements: !1644)
!1644 = !{!1645, !1649, !1650, !1657, !1663, !1667, !1671, !1675, !1676, !1680, !1684, !1689, !1693}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !1643, file: !964, line: 129, baseType: !1646, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DISubroutineType(types: !1648)
!1648 = !{!140, !962, !13}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !1643, file: !964, line: 130, baseType: !1646, size: 64, offset: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1643, file: !964, line: 131, baseType: !1651, size: 64, offset: 128)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{!140, !1654, !1656}
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !963)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !1643, file: !964, line: 132, baseType: !1658, size: 64, offset: 192)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{!140, !1654, !13, !662, !1661}
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !982)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !1643, file: !964, line: 134, baseType: !1664, size: 64, offset: 256)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!140, !1654}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !1643, file: !964, line: 135, baseType: !1668, size: 64, offset: 320)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DISubroutineType(types: !1670)
!1670 = !{!140, !962}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !1643, file: !964, line: 136, baseType: !1672, size: 64, offset: 384)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DISubroutineType(types: !1674)
!1674 = !{null, !962}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !1643, file: !964, line: 137, baseType: !1672, size: 64, offset: 448)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !1643, file: !964, line: 138, baseType: !1677, size: 64, offset: 512)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{null, !962, !997}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !1643, file: !964, line: 139, baseType: !1681, size: 64, offset: 576)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DISubroutineType(types: !1683)
!1683 = !{!838, !962, !838, !140}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !1643, file: !964, line: 140, baseType: !1685, size: 64, offset: 640)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{!957, !1688}
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !1643, file: !964, line: 141, baseType: !1690, size: 64, offset: 704)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{!140, !1120, !827}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !1643, file: !964, line: 142, baseType: !1694, size: 64, offset: 768)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{!962, !962, !1697}
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !998)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1204, file: !70, line: 1271, baseType: !1700, size: 448, offset: 8128)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1378, line: 63, size: 448, elements: !1701)
!1701 = !{!1702, !1707, !1708, !1709, !1710, !1711, !1712}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !1700, file: !1378, line: 64, baseType: !1703, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{!119, !1706, !1376}
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !1700, file: !1378, line: 66, baseType: !1703, size: 64, offset: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !1700, file: !1378, line: 69, baseType: !1112, size: 64, offset: 128)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !1700, file: !1378, line: 70, baseType: !140, size: 32, offset: 192)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1700, file: !1378, line: 71, baseType: !13, size: 32, offset: 224)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1700, file: !1378, line: 74, baseType: !196, size: 128, offset: 256)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !1700, file: !1378, line: 85, baseType: !1713, size: 64, offset: 384)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1204, file: !70, line: 1274, baseType: !529, size: 64, offset: 8576)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1204, file: !70, line: 1280, baseType: !529, size: 64, offset: 8640)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1204, file: !70, line: 1283, baseType: !140, size: 32, offset: 8704)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1204, file: !70, line: 1286, baseType: !1718, size: 32, offset: 8736)
!1718 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1719, line: 8, baseType: !122)
!1719 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1204, file: !70, line: 1289, baseType: !1721, size: 64, offset: 8768)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1723, line: 18, flags: DIFlagFwdDecl)
!1723 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1204, file: !70, line: 1290, baseType: !586, size: 64, offset: 8832)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1204, file: !70, line: 1297, baseType: !642, size: 64, offset: 8896)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1204, file: !70, line: 1304, baseType: !1727, size: 64, offset: 8960)
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !1728, line: 49, size: 64, elements: !1729)
!1728 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!1729 = !{!1730}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1727, file: !1728, line: 50, baseType: !1731, size: 64)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !1728, line: 41, size: 512, align: 512, elements: !1733)
!1733 = !{!1734, !1735, !1740}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1732, file: !1728, line: 43, baseType: !490, size: 32)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1732, file: !1728, line: 45, baseType: !1736, size: 192, offset: 64)
!1736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !1728, line: 29, size: 192, elements: !1737)
!1737 = !{!1738, !1739}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1736, file: !1728, line: 30, baseType: !196, size: 128)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1736, file: !1728, line: 32, baseType: !1112, size: 64, offset: 128)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1732, file: !1728, line: 46, baseType: !1112, size: 64, offset: 256)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1204, file: !70, line: 1305, baseType: !1727, size: 64, offset: 9024)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1204, file: !70, line: 1306, baseType: !516, size: 128, align: 64, offset: 9088)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1204, file: !70, line: 1307, baseType: !1744, size: 256, offset: 9216)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1723, line: 98, size: 256, elements: !1745)
!1745 = !{!1746, !1747, !1748}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1744, file: !1723, line: 99, baseType: !529, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1744, file: !1723, line: 100, baseType: !196, size: 128, offset: 64)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1744, file: !1723, line: 101, baseType: !1749, size: 64, offset: 192)
!1749 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1723, line: 21, baseType: !1750)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{null, !1753}
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1204, file: !70, line: 1309, baseType: !536, size: 256, offset: 9472)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1204, file: !70, line: 1314, baseType: !140, size: 32, offset: 9728)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1204, file: !70, line: 1317, baseType: !490, size: 32, align: 512, offset: 10240)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1204, file: !70, line: 1318, baseType: !196, size: 128, offset: 10304)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1204, file: !70, line: 1320, baseType: !490, size: 32, offset: 10432)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1204, file: !70, line: 1321, baseType: !196, size: 128, offset: 10496)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !998, file: !70, line: 656, baseType: !1761, size: 64, offset: 512)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !70, line: 472, size: 1536, align: 64, elements: !1763)
!1763 = !{!1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !2253, !2254, !2255, !2256, !2257, !2258}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1762, file: !70, line: 473, baseType: !997, size: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1762, file: !70, line: 474, baseType: !621, size: 128, offset: 64)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1762, file: !70, line: 475, baseType: !768, size: 320, offset: 192)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1762, file: !70, line: 476, baseType: !107, size: 32, offset: 512)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1762, file: !70, line: 477, baseType: !136, size: 32, offset: 544)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1762, file: !70, line: 482, baseType: !355, size: 128, offset: 576)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1762, file: !70, line: 483, baseType: !119, size: 64, offset: 704)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1762, file: !70, line: 484, baseType: !119, size: 64, offset: 768)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1762, file: !70, line: 485, baseType: !1773, size: 64, offset: 832)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1775)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !70, line: 404, size: 1280, elements: !1776)
!1776 = !{!1777, !2078, !2148, !2152, !2156, !2162, !2168, !2172, !2177, !2181, !2185, !2189, !2217, !2221, !2225, !2229, !2234, !2238, !2245, !2249}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1775, file: !70, line: 405, baseType: !1778, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{!140, !1781, !1274}
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !18, line: 74, size: 512, align: 128, elements: !1783)
!1783 = !{!1784, !1785, !2072, !2077}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1782, file: !18, line: 75, baseType: !119, size: 64)
!1785 = !DIDerivedType(tag: DW_TAG_member, scope: !1782, file: !18, line: 83, baseType: !1786, size: 320, offset: 64)
!1786 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1782, file: !18, line: 83, size: 320, elements: !1787)
!1787 = !{!1788, !1809, !1823, !1827, !2071}
!1788 = !DIDerivedType(tag: DW_TAG_member, scope: !1786, file: !18, line: 84, baseType: !1789, size: 320)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1786, file: !18, line: 84, size: 320, elements: !1790)
!1790 = !{!1791, !1802, !1803, !1808}
!1791 = !DIDerivedType(tag: DW_TAG_member, scope: !1789, file: !18, line: 90, baseType: !1792, size: 128)
!1792 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1789, file: !18, line: 90, size: 128, elements: !1793)
!1793 = !{!1794, !1795, !1800, !1801}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1792, file: !18, line: 91, baseType: !196, size: 128)
!1795 = !DIDerivedType(tag: DW_TAG_member, scope: !1792, file: !18, line: 94, baseType: !1796, size: 128)
!1796 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1792, file: !18, line: 94, size: 128, elements: !1797)
!1797 = !{!1798, !1799}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1796, file: !18, line: 96, baseType: !129, size: 64)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1796, file: !18, line: 98, baseType: !13, size: 32, offset: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1792, file: !18, line: 102, baseType: !196, size: 128)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1792, file: !18, line: 103, baseType: !196, size: 128)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1789, file: !18, line: 106, baseType: !1761, size: 64, offset: 128)
!1803 = !DIDerivedType(tag: DW_TAG_member, scope: !1789, file: !18, line: 107, baseType: !1804, size: 64, offset: 192)
!1804 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1789, file: !18, line: 107, size: 64, elements: !1805)
!1805 = !{!1806, !1807}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1804, file: !18, line: 108, baseType: !119, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1804, file: !18, line: 109, baseType: !119, size: 64)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1789, file: !18, line: 117, baseType: !119, size: 64, offset: 256)
!1809 = !DIDerivedType(tag: DW_TAG_member, scope: !1786, file: !18, line: 119, baseType: !1810, size: 320)
!1810 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1786, file: !18, line: 119, size: 320, elements: !1811)
!1811 = !{!1812, !1813, !1816, !1817, !1818}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1810, file: !18, line: 124, baseType: !119, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1810, file: !18, line: 125, baseType: !1814, size: 64, offset: 64)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !18, line: 125, flags: DIFlagFwdDecl)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1810, file: !18, line: 126, baseType: !119, size: 64, offset: 128)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1810, file: !18, line: 127, baseType: !119, size: 64, offset: 192)
!1818 = !DIDerivedType(tag: DW_TAG_member, scope: !1810, file: !18, line: 128, baseType: !1819, size: 64, offset: 256)
!1819 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1810, file: !18, line: 128, size: 64, elements: !1820)
!1820 = !{!1821, !1822}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1819, file: !18, line: 133, baseType: !119, size: 64)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1819, file: !18, line: 138, baseType: !529, size: 64)
!1823 = !DIDerivedType(tag: DW_TAG_member, scope: !1786, file: !18, line: 141, baseType: !1824, size: 64)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1786, file: !18, line: 141, size: 64, elements: !1825)
!1825 = !{!1826}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1824, file: !18, line: 142, baseType: !119, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_member, scope: !1786, file: !18, line: 144, baseType: !1828, size: 128)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1786, file: !18, line: 144, size: 128, elements: !1829)
!1829 = !{!1830, !2070}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1828, file: !18, line: 146, baseType: !1831, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !41, line: 126, size: 1216, elements: !1833)
!1833 = !{!1834, !1844, !1865, !1876, !1877, !1878, !1879, !2052, !2053, !2054}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1832, file: !41, line: 127, baseType: !1835, size: 384)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !41, line: 21, size: 384, elements: !1836)
!1836 = !{!1837, !1838, !1840, !1841, !1842, !1843}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1835, file: !41, line: 22, baseType: !119, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1835, file: !41, line: 23, baseType: !1839, size: 64, offset: 64)
!1839 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1835, file: !41, line: 24, baseType: !1839, size: 64, offset: 128)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1835, file: !41, line: 25, baseType: !119, size: 64, offset: 192)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1835, file: !41, line: 26, baseType: !119, size: 64, offset: 256)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1835, file: !41, line: 27, baseType: !119, size: 64, offset: 320)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1832, file: !41, line: 128, baseType: !1845, size: 128, offset: 384)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1846, line: 105, size: 128, elements: !1847)
!1846 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1847 = !{!1848, !1849}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1845, file: !1846, line: 110, baseType: !119, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1845, file: !1846, line: 118, baseType: !1850, size: 64, offset: 64)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1846, line: 95, size: 448, elements: !1852)
!1852 = !{!1853, !1854, !1860, !1861, !1862, !1863, !1864}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1851, file: !1846, line: 96, baseType: !529, size: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1851, file: !1846, line: 97, baseType: !1855, size: 64, offset: 64)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1846, line: 60, baseType: !1857)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{null, !1859}
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1851, file: !1846, line: 98, baseType: !1855, size: 64, offset: 128)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1851, file: !1846, line: 99, baseType: !827, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1851, file: !1846, line: 100, baseType: !827, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1851, file: !1846, line: 101, baseType: !516, size: 128, align: 64, offset: 256)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1851, file: !1846, line: 102, baseType: !1859, size: 64, offset: 384)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1832, file: !41, line: 129, baseType: !1866, size: 256, offset: 512)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1867, line: 26, size: 256, elements: !1868)
!1867 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1868 = !{!1869, !1870}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1866, file: !1867, line: 27, baseType: !13, size: 32)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1866, file: !1867, line: 28, baseType: !1871, size: 192, offset: 64)
!1871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1872, line: 43, size: 192, elements: !1873)
!1872 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1873 = !{!1874, !1875}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1871, file: !1872, line: 44, baseType: !289, size: 32)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1871, file: !1872, line: 45, baseType: !196, size: 128, offset: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1832, file: !41, line: 130, baseType: !40, size: 32, offset: 768)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1832, file: !41, line: 131, baseType: !13, size: 32, offset: 800)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1832, file: !41, line: 132, baseType: !119, size: 64, offset: 832)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1832, file: !41, line: 133, baseType: !1880, size: 64, offset: 896)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1882)
!1882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !41, line: 77, size: 192, elements: !1883)
!1883 = !{!1884, !1888, !2048}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1882, file: !41, line: 83, baseType: !1885, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{null, !1781}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1882, file: !41, line: 89, baseType: !1889, size: 64, offset: 64)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DISubroutineType(types: !1891)
!1891 = !{!1892, !1893}
!1892 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !18, line: 1184, baseType: !13)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1895, line: 512, size: 896, elements: !1896)
!1895 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1896 = !{!1897, !2015, !2016, !2023, !2030, !2040, !2041, !2042, !2044, !2046}
!1897 = !DIDerivedType(tag: DW_TAG_member, scope: !1894, file: !1895, line: 513, baseType: !1898, size: 320)
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1894, file: !1895, line: 513, size: 320, elements: !1899)
!1899 = !{!1900, !2011, !2012, !2013, !2014}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1898, file: !1895, line: 514, baseType: !1901, size: 64)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !18, line: 625, size: 1344, elements: !1903)
!1903 = !{!1904, !1913, !1914, !1922, !1929, !1930, !1935, !1936, !1941, !1942, !1945, !2004, !2005, !2006, !2007, !2008, !2009}
!1904 = !DIDerivedType(tag: DW_TAG_member, scope: !1902, file: !18, line: 628, baseType: !1905, size: 128)
!1905 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1902, file: !18, line: 628, size: 128, elements: !1906)
!1906 = !{!1907, !1912}
!1907 = !DIDerivedType(tag: DW_TAG_member, scope: !1905, file: !18, line: 629, baseType: !1908, size: 128)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1905, file: !18, line: 629, size: 128, elements: !1909)
!1909 = !{!1910, !1911}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1908, file: !18, line: 631, baseType: !119, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1908, file: !18, line: 632, baseType: !119, size: 64, offset: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1905, file: !18, line: 635, baseType: !516, size: 128, align: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1902, file: !18, line: 639, baseType: !472, size: 64, offset: 128)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1902, file: !18, line: 640, baseType: !1915, size: 64, offset: 192)
!1915 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1916, line: 297, baseType: !1917)
!1916 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1916, line: 297, size: 64, elements: !1918)
!1918 = !{!1919}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1917, file: !1916, line: 297, baseType: !1920, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1921, line: 19, baseType: !119)
!1921 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1922 = !DIDerivedType(tag: DW_TAG_member, scope: !1902, file: !18, line: 646, baseType: !1923, size: 64, offset: 256)
!1923 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1902, file: !18, line: 646, size: 64, elements: !1924)
!1924 = !{!1925, !1928}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1923, file: !18, line: 647, baseType: !1926, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1927)
!1927 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !18, line: 542, baseType: !119)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1923, file: !18, line: 648, baseType: !1927, size: 64)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1902, file: !18, line: 666, baseType: !140, size: 32, offset: 320)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1902, file: !18, line: 667, baseType: !1931, size: 64, offset: 384)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !18, line: 579, size: 320, elements: !1933)
!1933 = !{!1934}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1932, file: !18, line: 580, baseType: !768, size: 320)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1902, file: !18, line: 670, baseType: !827, size: 8, offset: 448)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1902, file: !18, line: 681, baseType: !1937, size: 256, offset: 512)
!1937 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1902, file: !18, line: 678, size: 256, elements: !1938)
!1938 = !{!1939, !1940}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1937, file: !18, line: 679, baseType: !183, size: 192, align: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1937, file: !18, line: 680, baseType: !119, size: 64, offset: 192)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1902, file: !18, line: 689, baseType: !196, size: 128, offset: 768)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1902, file: !18, line: 691, baseType: !1943, size: 64, offset: 896)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !18, line: 691, flags: DIFlagFwdDecl)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1902, file: !18, line: 694, baseType: !1946, size: 64, offset: 960)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1948)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1895, line: 563, size: 1024, elements: !1949)
!1949 = !{!1950, !1954, !1955, !1959, !1963, !1967, !1968, !1972, !1976, !1980, !1981, !1982, !1986, !1990, !1996, !2000}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1948, file: !1895, line: 564, baseType: !1951, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DISubroutineType(types: !1953)
!1953 = !{null, !1901}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1948, file: !1895, line: 569, baseType: !1951, size: 64, offset: 64)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1948, file: !1895, line: 571, baseType: !1956, size: 64, offset: 128)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{!140, !1901, !119}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1948, file: !1895, line: 572, baseType: !1960, size: 64, offset: 192)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{!140, !1901}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1948, file: !1895, line: 578, baseType: !1964, size: 64, offset: 256)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{!140, !1901, !119, !119, !119}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1948, file: !1895, line: 580, baseType: !1889, size: 64, offset: 320)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1948, file: !1895, line: 581, baseType: !1969, size: 64, offset: 384)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{!1892, !1893, !13}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1948, file: !1895, line: 582, baseType: !1973, size: 64, offset: 448)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{!1892, !1893, !119, !119}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1948, file: !1895, line: 584, baseType: !1977, size: 64, offset: 512)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DISubroutineType(types: !1979)
!1979 = !{!119, !1901}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1948, file: !1895, line: 588, baseType: !1889, size: 64, offset: 576)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1948, file: !1895, line: 591, baseType: !1889, size: 64, offset: 640)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1948, file: !1895, line: 597, baseType: !1983, size: 64, offset: 704)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!140, !1901, !119, !129, !140, !140}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1948, file: !1895, line: 603, baseType: !1987, size: 64, offset: 768)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{!662, !1901}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1948, file: !1895, line: 613, baseType: !1991, size: 64, offset: 832)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!140, !1901, !1994}
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !112, line: 54, flags: DIFlagFwdDecl)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1948, file: !1895, line: 625, baseType: !1997, size: 64, offset: 896)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DISubroutineType(types: !1999)
!1999 = !{!1994, !1901, !119}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1948, file: !1895, line: 633, baseType: !2001, size: 64, offset: 960)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!1781, !1901, !119}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1902, file: !18, line: 697, baseType: !119, size: 64, offset: 1024)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1902, file: !18, line: 699, baseType: !508, size: 64, offset: 1088)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1902, file: !18, line: 700, baseType: !129, size: 64, offset: 1152)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1902, file: !18, line: 711, baseType: !529, size: 64, offset: 1216)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1902, file: !18, line: 717, baseType: !1994, size: 64, offset: 1280)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1902, file: !18, line: 722, baseType: !2010, offset: 1344)
!2010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !18, line: 570, elements: !501)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1898, file: !1895, line: 515, baseType: !107, size: 32, offset: 64)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1898, file: !1895, line: 516, baseType: !119, size: 64, offset: 128)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1898, file: !1895, line: 517, baseType: !119, size: 64, offset: 192)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1898, file: !1895, line: 518, baseType: !119, size: 64, offset: 256)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1894, file: !1895, line: 520, baseType: !17, size: 32, offset: 320)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1894, file: !1895, line: 522, baseType: !2017, size: 64, offset: 384)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1921, line: 22, baseType: !2019)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1921, line: 22, size: 64, elements: !2020)
!2020 = !{!2021}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2019, file: !1921, line: 22, baseType: !2022, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1921, line: 15, baseType: !119)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1894, file: !1895, line: 524, baseType: !2024, size: 64, offset: 448)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1916, line: 372, baseType: !2026)
!2026 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1916, line: 372, size: 64, elements: !2027)
!2027 = !{!2028}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2026, file: !1916, line: 372, baseType: !2029, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1921, line: 16, baseType: !119)
!2030 = !DIDerivedType(tag: DW_TAG_member, scope: !1894, file: !1895, line: 527, baseType: !2031, size: 64, offset: 512)
!2031 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1894, file: !1895, line: 527, size: 64, elements: !2032)
!2032 = !{!2033, !2039}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2031, file: !1895, line: 528, baseType: !2034, size: 64)
!2034 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1921, line: 21, baseType: !2035)
!2035 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1921, line: 21, size: 64, elements: !2036)
!2036 = !{!2037}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2035, file: !1921, line: 21, baseType: !2038, size: 64)
!2038 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1921, line: 14, baseType: !119)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2031, file: !1895, line: 529, baseType: !2018, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1894, file: !1895, line: 534, baseType: !1781, size: 64, offset: 576)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1894, file: !1895, line: 535, baseType: !1781, size: 64, offset: 640)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1894, file: !1895, line: 541, baseType: !2043, size: 64, offset: 704)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1894, file: !1895, line: 545, baseType: !2045, size: 64, offset: 768)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1894, file: !1895, line: 549, baseType: !2047, size: 64, offset: 832)
!2047 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1916, line: 520, baseType: !1781)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1882, file: !41, line: 100, baseType: !2049, size: 64, offset: 128)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DISubroutineType(types: !2051)
!2051 = !{!140, !1831, !119, !119, !140}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1832, file: !41, line: 134, baseType: !129, size: 64, offset: 960)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1832, file: !41, line: 135, baseType: !140, size: 32, offset: 1024)
!2054 = !DIDerivedType(tag: DW_TAG_member, scope: !1832, file: !41, line: 136, baseType: !2055, size: 128, offset: 1088)
!2055 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1832, file: !41, line: 136, size: 128, elements: !2056)
!2056 = !{!2057, !2063}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2055, file: !41, line: 137, baseType: !2058, size: 128)
!2058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2059, line: 6, size: 128, elements: !2060)
!2059 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2060 = !{!2061, !2062}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2058, file: !2059, line: 7, baseType: !191, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2058, file: !2059, line: 8, baseType: !191, size: 64, offset: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, scope: !2055, file: !41, line: 138, baseType: !2064)
!2064 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2055, file: !41, line: 138, elements: !2065)
!2065 = !{!2066, !2068}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2064, file: !41, line: 138, baseType: !2067)
!2067 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2064, file: !41, line: 138, elements: !501)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2064, file: !41, line: 138, baseType: !2069)
!2069 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2058, elements: !920)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1828, file: !18, line: 147, baseType: !129, size: 64, offset: 64)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1786, file: !18, line: 161, baseType: !516, size: 128, align: 64)
!2072 = !DIDerivedType(tag: DW_TAG_member, scope: !1782, file: !18, line: 164, baseType: !2073, size: 32, offset: 384)
!2073 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1782, file: !18, line: 164, size: 32, elements: !2074)
!2074 = !{!2075, !2076}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2073, file: !18, line: 169, baseType: !136, size: 32)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2073, file: !18, line: 177, baseType: !13, size: 32)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1782, file: !18, line: 181, baseType: !136, size: 32, offset: 416)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1775, file: !70, line: 406, baseType: !2079, size: 64, offset: 64)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = !DISubroutineType(types: !2081)
!2081 = !{!140, !508, !2082}
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !18, line: 293, size: 1536, elements: !2084)
!2084 = !{!2085, !2115, !2129}
!2085 = !DIDerivedType(tag: DW_TAG_member, scope: !2083, file: !18, line: 295, baseType: !2086, size: 512)
!2086 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2083, file: !18, line: 295, size: 512, elements: !2087)
!2087 = !{!2088, !2114}
!2088 = !DIDerivedType(tag: DW_TAG_member, scope: !2086, file: !18, line: 296, baseType: !2089, size: 448)
!2089 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2086, file: !18, line: 296, size: 448, elements: !2090)
!2090 = !{!2091, !2092, !2101, !2102, !2103, !2112, !2113}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2089, file: !18, line: 298, baseType: !119, size: 64)
!2092 = !DIDerivedType(tag: DW_TAG_member, scope: !2089, file: !18, line: 299, baseType: !2093, size: 128, offset: 64)
!2093 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2089, file: !18, line: 299, size: 128, elements: !2094)
!2094 = !{!2095, !2096}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2093, file: !18, line: 300, baseType: !196, size: 128)
!2096 = !DIDerivedType(tag: DW_TAG_member, scope: !2093, file: !18, line: 302, baseType: !2097, size: 128)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2093, file: !18, line: 302, size: 128, elements: !2098)
!2098 = !{!2099, !2100}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2097, file: !18, line: 303, baseType: !129, size: 64)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2097, file: !18, line: 305, baseType: !13, size: 32, offset: 64)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2089, file: !18, line: 310, baseType: !1761, size: 64, offset: 192)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2089, file: !18, line: 311, baseType: !119, size: 64, offset: 256)
!2103 = !DIDerivedType(tag: DW_TAG_member, scope: !2089, file: !18, line: 312, baseType: !2104, size: 64, offset: 320)
!2104 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2089, file: !18, line: 312, size: 64, elements: !2105)
!2105 = !{!2106, !2107}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2104, file: !18, line: 313, baseType: !129, size: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !2104, file: !18, line: 314, baseType: !2108, size: 64)
!2108 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !18, line: 257, baseType: !2109)
!2109 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 255, size: 64, elements: !2110)
!2110 = !{!2111}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2109, file: !18, line: 256, baseType: !119, size: 64)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2089, file: !18, line: 316, baseType: !136, size: 32, offset: 384)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2089, file: !18, line: 317, baseType: !136, size: 32, offset: 416)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2086, file: !18, line: 323, baseType: !1782, size: 512, align: 128)
!2115 = !DIDerivedType(tag: DW_TAG_member, scope: !2083, file: !18, line: 325, baseType: !2116, size: 512, offset: 512)
!2116 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2083, file: !18, line: 325, size: 512, elements: !2117)
!2117 = !{!2118, !2128}
!2118 = !DIDerivedType(tag: DW_TAG_member, scope: !2116, file: !18, line: 326, baseType: !2119, size: 320)
!2119 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2116, file: !18, line: 326, size: 320, elements: !2120)
!2120 = !{!2121, !2122, !2123, !2124, !2125, !2126, !2127}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !2119, file: !18, line: 327, baseType: !119, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !2119, file: !18, line: 328, baseType: !119, size: 64, offset: 64)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !2119, file: !18, line: 329, baseType: !119, size: 64, offset: 128)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !2119, file: !18, line: 331, baseType: !136, size: 32, offset: 192)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !2119, file: !18, line: 332, baseType: !136, size: 32, offset: 224)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !2119, file: !18, line: 333, baseType: !136, size: 32, offset: 256)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !2119, file: !18, line: 335, baseType: !13, size: 32, offset: 288)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !2116, file: !18, line: 339, baseType: !1782, size: 512, align: 128)
!2129 = !DIDerivedType(tag: DW_TAG_member, scope: !2083, file: !18, line: 341, baseType: !2130, size: 512, offset: 1024)
!2130 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2083, file: !18, line: 341, size: 512, elements: !2131)
!2131 = !{!2132, !2141, !2147}
!2132 = !DIDerivedType(tag: DW_TAG_member, scope: !2130, file: !18, line: 342, baseType: !2133, size: 384)
!2133 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2130, file: !18, line: 342, size: 384, elements: !2134)
!2134 = !{!2135, !2136, !2137, !2138, !2139, !2140}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !2133, file: !18, line: 343, baseType: !119, size: 64)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !2133, file: !18, line: 344, baseType: !119, size: 64, offset: 64)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !2133, file: !18, line: 346, baseType: !129, size: 64, offset: 128)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !2133, file: !18, line: 347, baseType: !129, size: 64, offset: 192)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !2133, file: !18, line: 348, baseType: !129, size: 64, offset: 256)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !2133, file: !18, line: 349, baseType: !129, size: 64, offset: 320)
!2141 = !DIDerivedType(tag: DW_TAG_member, scope: !2130, file: !18, line: 352, baseType: !2142, size: 256)
!2142 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2130, file: !18, line: 352, size: 256, elements: !2143)
!2143 = !{!2144, !2145, !2146}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !2142, file: !18, line: 353, baseType: !119, size: 64)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !2142, file: !18, line: 354, baseType: !119, size: 64, offset: 64)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !2142, file: !18, line: 356, baseType: !196, size: 128, offset: 128)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !2130, file: !18, line: 359, baseType: !1782, size: 512, align: 128)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1775, file: !70, line: 409, baseType: !2149, size: 64, offset: 128)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = !DISubroutineType(types: !2151)
!2151 = !{!140, !1761, !1274}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1775, file: !70, line: 412, baseType: !2153, size: 64, offset: 192)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{!827, !1761, !2082}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1775, file: !70, line: 414, baseType: !2157, size: 64, offset: 256)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DISubroutineType(types: !2159)
!2159 = !{null, !2160}
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !70, line: 310, flags: DIFlagFwdDecl)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1775, file: !70, line: 416, baseType: !2163, size: 64, offset: 320)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = !DISubroutineType(types: !2165)
!2165 = !{!140, !508, !1761, !548, !13, !2166, !2167}
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1775, file: !70, line: 419, baseType: !2169, size: 64, offset: 384)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{!140, !508, !1761, !548, !13, !13, !1781, !129}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1775, file: !70, line: 424, baseType: !2173, size: 64, offset: 448)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = !DISubroutineType(types: !2175)
!2175 = !{!2176, !1761, !2176}
!2176 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !108, line: 131, baseType: !191)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1775, file: !70, line: 425, baseType: !2178, size: 64, offset: 512)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{null, !2082, !1154, !1154}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1775, file: !70, line: 426, baseType: !2182, size: 64, offset: 576)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = !DISubroutineType(types: !2184)
!2184 = !{!827, !2082, !107}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1775, file: !70, line: 427, baseType: !2186, size: 64, offset: 640)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = !DISubroutineType(types: !2188)
!2188 = !{null, !2082}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1775, file: !70, line: 428, baseType: !2190, size: 64, offset: 704)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = !DISubroutineType(types: !2192)
!2192 = !{!1151, !2193, !2215}
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !70, line: 373, size: 384, elements: !2195)
!2195 = !{!2196, !2197, !2198, !2202, !2203, !2204, !2205}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2194, file: !70, line: 374, baseType: !508, size: 64)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2194, file: !70, line: 375, baseType: !548, size: 64, offset: 64)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2194, file: !70, line: 376, baseType: !2199, size: 64, offset: 128)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = !DISubroutineType(types: !2201)
!2201 = !{null, !2193, !1112}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2194, file: !70, line: 377, baseType: !129, size: 64, offset: 192)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2194, file: !70, line: 378, baseType: !140, size: 32, offset: 256)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2194, file: !70, line: 379, baseType: !160, size: 16, offset: 288)
!2205 = !DIDerivedType(tag: DW_TAG_member, scope: !2194, file: !70, line: 380, baseType: !2206, size: 64, offset: 320)
!2206 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2194, file: !70, line: 380, size: 64, elements: !2207)
!2207 = !{!2208, !2211}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2206, file: !70, line: 386, baseType: !2209, size: 64)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !70, line: 386, flags: DIFlagFwdDecl)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2206, file: !70, line: 395, baseType: !2212, size: 64)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = !DISubroutineType(types: !2214)
!2214 = !{!1151, !129}
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2216 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !70, line: 69, flags: DIFlagFwdDecl)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1775, file: !70, line: 433, baseType: !2218, size: 64, offset: 768)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{!140, !1761, !2082, !2082, !33}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1775, file: !70, line: 435, baseType: !2222, size: 64, offset: 832)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DISubroutineType(types: !2224)
!2224 = !{!140, !2082}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1775, file: !70, line: 436, baseType: !2226, size: 64, offset: 896)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = !DISubroutineType(types: !2228)
!2228 = !{!827, !2082, !1154, !1154}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1775, file: !70, line: 438, baseType: !2230, size: 64, offset: 960)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = !DISubroutineType(types: !2232)
!2232 = !{null, !2082, !2233, !2233}
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1775, file: !70, line: 439, baseType: !2235, size: 64, offset: 1024)
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = !DISubroutineType(types: !2237)
!2237 = !{!140, !1761, !1781}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1775, file: !70, line: 442, baseType: !2239, size: 64, offset: 1088)
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = !DISubroutineType(types: !2241)
!2241 = !{!140, !2242, !508, !2244}
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !70, line: 66, flags: DIFlagFwdDecl)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1775, file: !70, line: 444, baseType: !2246, size: 64, offset: 1152)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = !DISubroutineType(types: !2248)
!2248 = !{null, !508}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1775, file: !70, line: 445, baseType: !2250, size: 64, offset: 1216)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{!140, !2193, !2215}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1762, file: !70, line: 486, baseType: !119, size: 64, offset: 896)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1762, file: !70, line: 487, baseType: !768, size: 320, offset: 960)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1762, file: !70, line: 488, baseType: !1718, size: 32, offset: 1280)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1762, file: !70, line: 489, baseType: !490, size: 32, offset: 1312)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1762, file: !70, line: 490, baseType: !196, size: 128, offset: 1344)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1762, file: !70, line: 491, baseType: !129, size: 64, offset: 1472)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !998, file: !70, line: 659, baseType: !129, size: 64, offset: 576)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !998, file: !70, line: 663, baseType: !119, size: 64, offset: 640)
!2261 = !DIDerivedType(tag: DW_TAG_member, scope: !998, file: !70, line: 671, baseType: !2262, size: 32, offset: 704)
!2262 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !998, file: !70, line: 671, size: 32, elements: !2263)
!2263 = !{!2264, !2266}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2262, file: !70, line: 672, baseType: !2265, size: 32)
!2265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2262, file: !70, line: 673, baseType: !13, size: 32)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !998, file: !70, line: 675, baseType: !1072, size: 32, offset: 736)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !998, file: !70, line: 676, baseType: !548, size: 64, offset: 768)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !998, file: !70, line: 677, baseType: !1108, size: 128, offset: 832)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !998, file: !70, line: 678, baseType: !1108, size: 128, offset: 960)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !998, file: !70, line: 679, baseType: !1108, size: 128, offset: 1088)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !998, file: !70, line: 680, baseType: !490, size: 32, offset: 1216)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !998, file: !70, line: 681, baseType: !162, size: 16, offset: 1248)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !998, file: !70, line: 682, baseType: !306, size: 8, offset: 1264)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !998, file: !70, line: 683, baseType: !306, size: 8, offset: 1272)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !998, file: !70, line: 684, baseType: !1509, size: 64, offset: 1280)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !998, file: !70, line: 691, baseType: !119, size: 64, offset: 1344)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !998, file: !70, line: 692, baseType: !768, size: 320, offset: 1408)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !998, file: !70, line: 694, baseType: !119, size: 64, offset: 1728)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !998, file: !70, line: 695, baseType: !119, size: 64, offset: 1792)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !998, file: !70, line: 697, baseType: !590, size: 128, offset: 1856)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !998, file: !70, line: 698, baseType: !196, size: 128, offset: 1984)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !998, file: !70, line: 707, baseType: !196, size: 128, offset: 2112)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !998, file: !70, line: 708, baseType: !196, size: 128, offset: 2240)
!2285 = !DIDerivedType(tag: DW_TAG_member, scope: !998, file: !70, line: 709, baseType: !2286, size: 128, offset: 2368)
!2286 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !998, file: !70, line: 709, size: 128, elements: !2287)
!2287 = !{!2288, !2289}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2286, file: !70, line: 710, baseType: !586, size: 64)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2286, file: !70, line: 711, baseType: !516, size: 128, align: 64)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !998, file: !70, line: 713, baseType: !531, size: 64, offset: 2496)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !998, file: !70, line: 714, baseType: !531, size: 64, offset: 2560)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !998, file: !70, line: 715, baseType: !136, size: 32, offset: 2624)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !998, file: !70, line: 716, baseType: !136, size: 32, offset: 2656)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !998, file: !70, line: 717, baseType: !136, size: 32, offset: 2688)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !998, file: !70, line: 719, baseType: !136, size: 32, offset: 2720)
!2296 = !DIDerivedType(tag: DW_TAG_member, scope: !998, file: !70, line: 721, baseType: !2297, size: 64, offset: 2752)
!2297 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !998, file: !70, line: 721, size: 64, elements: !2298)
!2298 = !{!2299, !2430}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2297, file: !70, line: 722, baseType: !2300, size: 64)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2302)
!2302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !70, line: 1914, size: 2112, elements: !2303)
!2303 = !{!2304, !2305, !2309, !2314, !2318, !2319, !2320, !2326, !2339, !2347, !2351, !2352, !2356, !2357, !2361, !2366, !2367, !2371, !2375, !2381, !2382, !2386, !2387, !2393, !2397, !2398, !2403, !2407, !2411, !2415, !2419, !2420, !2426}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2302, file: !70, line: 1915, baseType: !1236, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2302, file: !70, line: 1916, baseType: !2306, size: 64, offset: 64)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = !DISubroutineType(types: !2308)
!2308 = !{!548, !508, !548, !140}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2302, file: !70, line: 1917, baseType: !2310, size: 64, offset: 128)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = !DISubroutineType(types: !2312)
!2312 = !{!1151, !508, !838, !1154, !2313}
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2302, file: !70, line: 1918, baseType: !2315, size: 64, offset: 192)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{!1151, !508, !662, !1154, !2313}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2302, file: !70, line: 1919, baseType: !2190, size: 64, offset: 256)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2302, file: !70, line: 1920, baseType: !2190, size: 64, offset: 320)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2302, file: !70, line: 1921, baseType: !2321, size: 64, offset: 384)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = !DISubroutineType(types: !2323)
!2323 = !{!140, !2193, !2324, !13}
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !70, line: 53, flags: DIFlagFwdDecl)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2302, file: !70, line: 1923, baseType: !2327, size: 64, offset: 448)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = !DISubroutineType(types: !2329)
!2329 = !{!140, !508, !2330}
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !70, line: 1858, size: 128, elements: !2332)
!2332 = !{!2333, !2338}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2331, file: !70, line: 1859, baseType: !2334, size: 64)
!2334 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !70, line: 1855, baseType: !2335)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{!827, !2330, !662, !140, !548, !191, !13}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2331, file: !70, line: 1860, baseType: !548, size: 64, offset: 64)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2302, file: !70, line: 1924, baseType: !2340, size: 64, offset: 512)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = !DISubroutineType(types: !2342)
!2342 = !{!2343, !508, !2345}
!2343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2344, line: 59, baseType: !13)
!2344 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !70, line: 61, flags: DIFlagFwdDecl)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2302, file: !70, line: 1925, baseType: !2348, size: 64, offset: 576)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = !DISubroutineType(types: !2350)
!2350 = !{!1112, !508, !13, !119}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2302, file: !70, line: 1926, baseType: !2348, size: 64, offset: 640)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2302, file: !70, line: 1927, baseType: !2353, size: 64, offset: 704)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = !DISubroutineType(types: !2355)
!2355 = !{!140, !508, !1901}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2302, file: !70, line: 1928, baseType: !119, size: 64, offset: 768)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2302, file: !70, line: 1929, baseType: !2358, size: 64, offset: 832)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{!140, !997, !508}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2302, file: !70, line: 1930, baseType: !2362, size: 64, offset: 896)
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2363, size: 64)
!2363 = !DISubroutineType(types: !2364)
!2364 = !{!140, !508, !2365}
!2365 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !70, line: 1061, baseType: !129)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2302, file: !70, line: 1931, baseType: !2358, size: 64, offset: 960)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2302, file: !70, line: 1932, baseType: !2368, size: 64, offset: 1024)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{!140, !508, !548, !548, !140}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2302, file: !70, line: 1933, baseType: !2372, size: 64, offset: 1088)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{!140, !140, !508, !140}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2302, file: !70, line: 1934, baseType: !2376, size: 64, offset: 1152)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{!140, !508, !140, !2379}
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !70, line: 1063, flags: DIFlagFwdDecl)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2302, file: !70, line: 1935, baseType: !505, size: 64, offset: 1216)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2302, file: !70, line: 1936, baseType: !2383, size: 64, offset: 1280)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = !DISubroutineType(types: !2385)
!2385 = !{!140, !140}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2302, file: !70, line: 1937, baseType: !2376, size: 64, offset: 1344)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2302, file: !70, line: 1938, baseType: !2388, size: 64, offset: 1408)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = !DISubroutineType(types: !2390)
!2390 = !{!1151, !2391, !508, !2313, !1154, !13}
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !112, line: 59, flags: DIFlagFwdDecl)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2302, file: !70, line: 1939, baseType: !2394, size: 64, offset: 1472)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{!1151, !508, !2313, !2391, !1154, !13}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2302, file: !70, line: 1940, baseType: !2246, size: 64, offset: 1536)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2302, file: !70, line: 1941, baseType: !2399, size: 64, offset: 1600)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{!140, !508, !140, !2402, !2167}
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2302, file: !70, line: 1942, baseType: !2404, size: 64, offset: 1664)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{!1112, !508, !140, !548, !548}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2302, file: !70, line: 1944, baseType: !2408, size: 64, offset: 1728)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{null, !1312, !508}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2302, file: !70, line: 1948, baseType: !2412, size: 64, offset: 1792)
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = !DISubroutineType(types: !2414)
!2414 = !{!1151, !508, !548, !508, !548, !1154, !13}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2302, file: !70, line: 1950, baseType: !2416, size: 64, offset: 1856)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{!548, !508, !548, !508, !548, !548, !13}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2302, file: !70, line: 1953, baseType: !2368, size: 64, offset: 1920)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2302, file: !70, line: 1954, baseType: !2421, size: 64, offset: 1984)
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{!140, !2424, !13}
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !70, line: 1911, flags: DIFlagFwdDecl)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2302, file: !70, line: 1955, baseType: !2427, size: 64, offset: 2048)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{!140, !2424, !2324, !13}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2297, file: !70, line: 723, baseType: !1262, size: 64)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !998, file: !70, line: 725, baseType: !2432, size: 64, offset: 2816)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !70, line: 725, flags: DIFlagFwdDecl)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !998, file: !70, line: 726, baseType: !1762, size: 1536, align: 64, offset: 2880)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !998, file: !70, line: 727, baseType: !196, size: 128, offset: 4416)
!2436 = !DIDerivedType(tag: DW_TAG_member, scope: !998, file: !70, line: 728, baseType: !2437, size: 64, offset: 4544)
!2437 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !998, file: !70, line: 728, size: 64, elements: !2438)
!2438 = !{!2439, !2440, !2443, !2444}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2437, file: !70, line: 729, baseType: !2391, size: 64)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2437, file: !70, line: 730, baseType: !2441, size: 64)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !70, line: 730, flags: DIFlagFwdDecl)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2437, file: !70, line: 731, baseType: !838, size: 64)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2437, file: !70, line: 732, baseType: !13, size: 32)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !998, file: !70, line: 735, baseType: !124, size: 32, offset: 4608)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !998, file: !70, line: 738, baseType: !124, size: 32, offset: 4640)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !998, file: !70, line: 739, baseType: !1622, size: 64, offset: 4672)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !998, file: !70, line: 750, baseType: !129, size: 64, offset: 4736)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !963, file: !964, line: 91, baseType: !2450, size: 256, offset: 448)
!2450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, size: 256, elements: !1626)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !963, file: !964, line: 94, baseType: !2452, size: 64, offset: 704)
!2452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2453, line: 25, size: 64, elements: !2454)
!2453 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!2454 = !{!2455}
!2455 = !DIDerivedType(tag: DW_TAG_member, scope: !2452, file: !2453, line: 26, baseType: !2456, size: 64)
!2456 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2452, file: !2453, line: 26, size: 64, elements: !2457)
!2457 = !{!2458, !2459}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !2456, file: !2453, line: 28, baseType: !192, size: 64, align: 64)
!2459 = !DIDerivedType(tag: DW_TAG_member, scope: !2456, file: !2453, line: 30, baseType: !2460, size: 64)
!2460 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2456, file: !2453, line: 30, size: 64, elements: !2461)
!2461 = !{!2462, !2463}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2460, file: !2453, line: 31, baseType: !490, size: 32)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2460, file: !2453, line: 32, baseType: !140, size: 32, offset: 32)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !963, file: !964, line: 95, baseType: !1641, size: 64, offset: 768)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !963, file: !964, line: 96, baseType: !1203, size: 64, offset: 832)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !963, file: !964, line: 97, baseType: !119, size: 64, offset: 896)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !963, file: !964, line: 98, baseType: !129, size: 64, offset: 960)
!2468 = !DIDerivedType(tag: DW_TAG_member, scope: !963, file: !964, line: 100, baseType: !2469, size: 128, offset: 1024)
!2469 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !963, file: !964, line: 100, size: 128, elements: !2470)
!2470 = !{!2471, !2472}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2469, file: !964, line: 101, baseType: !196, size: 128)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2469, file: !964, line: 102, baseType: !2473, size: 64)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !963, file: !964, line: 104, baseType: !196, size: 128, offset: 1152)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !963, file: !964, line: 105, baseType: !196, size: 128, offset: 1280)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !963, file: !964, line: 113, baseType: !2477, size: 128, offset: 1408)
!2477 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !963, file: !964, line: 109, size: 128, elements: !2478)
!2478 = !{!2479, !2480, !2481}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2477, file: !964, line: 110, baseType: !590, size: 128)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2477, file: !964, line: 111, baseType: !973, size: 128)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2477, file: !964, line: 112, baseType: !516, size: 128, align: 64)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !958, file: !959, line: 72, baseType: !1203, size: 64, offset: 64)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !958, file: !959, line: 73, baseType: !140, size: 32, offset: 128)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !958, file: !959, line: 74, baseType: !1037, size: 64, offset: 192)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !953, file: !954, line: 10, baseType: !962, size: 64, offset: 64)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !509, file: !70, line: 1015, baseType: !997, size: 64, offset: 1344)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !509, file: !70, line: 1016, baseType: !2300, size: 64, offset: 1408)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !509, file: !70, line: 1018, baseType: !191, size: 64, offset: 1472)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !509, file: !70, line: 1020, baseType: !129, size: 64, offset: 1536)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !509, file: !70, line: 1023, baseType: !129, size: 64, offset: 1600)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !509, file: !70, line: 1027, baseType: !2492, size: 64, offset: 1664)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !509, file: !70, line: 1029, baseType: !1761, size: 64, offset: 1728)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !509, file: !70, line: 1030, baseType: !1718, size: 32, offset: 1792)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !509, file: !70, line: 1031, baseType: !1718, size: 32, offset: 1824)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !476, file: !18, line: 756, baseType: !119, size: 64, offset: 704)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !476, file: !18, line: 757, baseType: !119, size: 64, offset: 768)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !476, file: !18, line: 760, baseType: !119, size: 64, offset: 832)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !476, file: !18, line: 761, baseType: !119, size: 64, offset: 896)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !476, file: !18, line: 763, baseType: !119, size: 64, offset: 960)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !476, file: !18, line: 764, baseType: !2502, size: 64, offset: 1024)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1916, line: 299, baseType: !2504)
!2504 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1916, line: 299, size: 64, elements: !2505)
!2505 = !{!2506}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2504, file: !1916, line: 299, baseType: !2507, size: 64)
!2507 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1921, line: 18, baseType: !119)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !476, file: !18, line: 773, baseType: !136, size: 32, offset: 1088)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !476, file: !18, line: 785, baseType: !136, size: 32, offset: 1120)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !476, file: !18, line: 795, baseType: !2511, size: 64, offset: 1152)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !18, line: 726, size: 128, elements: !2513)
!2513 = !{!2514, !2515}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2512, file: !18, line: 727, baseType: !191, size: 64)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2512, file: !18, line: 728, baseType: !140, size: 32, offset: 64)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !476, file: !18, line: 801, baseType: !119, size: 64, offset: 1216)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !476, file: !18, line: 804, baseType: !529, size: 64, offset: 1280)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !476, file: !18, line: 806, baseType: !140, size: 32, offset: 1344)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !476, file: !18, line: 808, baseType: !490, size: 32, offset: 1376)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !476, file: !18, line: 823, baseType: !768, size: 320, offset: 1408)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !476, file: !18, line: 825, baseType: !196, size: 128, offset: 1728)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !476, file: !18, line: 845, baseType: !140, size: 32, offset: 1856)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !476, file: !18, line: 849, baseType: !119, size: 64, offset: 1920)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !476, file: !18, line: 850, baseType: !119, size: 64, offset: 1984)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !476, file: !18, line: 852, baseType: !119, size: 64, offset: 2048)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !476, file: !18, line: 853, baseType: !119, size: 64, offset: 2112)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !476, file: !18, line: 854, baseType: !531, size: 64, offset: 2176)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !476, file: !18, line: 855, baseType: !119, size: 64, offset: 2240)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !476, file: !18, line: 856, baseType: !119, size: 64, offset: 2304)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !476, file: !18, line: 857, baseType: !119, size: 64, offset: 2368)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !476, file: !18, line: 858, baseType: !119, size: 64, offset: 2432)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !476, file: !18, line: 865, baseType: !346, size: 32, offset: 2496)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !476, file: !18, line: 867, baseType: !490, size: 32, offset: 2528)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !476, file: !18, line: 869, baseType: !119, size: 64, offset: 2560)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !476, file: !18, line: 869, baseType: !119, size: 64, offset: 2624)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !476, file: !18, line: 869, baseType: !119, size: 64, offset: 2688)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !476, file: !18, line: 869, baseType: !119, size: 64, offset: 2752)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !476, file: !18, line: 870, baseType: !119, size: 64, offset: 2816)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !476, file: !18, line: 870, baseType: !119, size: 64, offset: 2880)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !476, file: !18, line: 870, baseType: !119, size: 64, offset: 2944)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !476, file: !18, line: 871, baseType: !119, size: 64, offset: 3008)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !476, file: !18, line: 871, baseType: !119, size: 64, offset: 3072)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !476, file: !18, line: 871, baseType: !119, size: 64, offset: 3136)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !476, file: !18, line: 871, baseType: !119, size: 64, offset: 3200)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !476, file: !18, line: 873, baseType: !2546, size: 3328, offset: 3264)
!2546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 3328, elements: !2547)
!2547 = !{!2548}
!2548 = !DISubrange(count: 52)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !476, file: !18, line: 875, baseType: !2550, size: 1280, offset: 6592)
!2550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !886, size: 1280, elements: !595)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !476, file: !18, line: 877, baseType: !2552, size: 64, offset: 7872)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !2554, line: 84, size: 448, elements: !2555)
!2554 = !DIFile(filename: "./include/linux/binfmts.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c5e97d73c9e2b70108086968647f46d0")
!2555 = !{!2556, !2557, !2558, !2601, !2605, !2611}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "lh", scope: !2553, file: !2554, line: 85, baseType: !196, size: 128)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !2553, file: !2554, line: 86, baseType: !1236, size: 64, offset: 128)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "load_binary", scope: !2553, file: !2554, line: 87, baseType: !2559, size: 64, offset: 192)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{!140, !2562}
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binprm", file: !2554, line: 18, size: 3328, elements: !2564)
!2564 = !{!2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2597}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2563, file: !2554, line: 20, baseType: !1901, size: 64)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "vma_pages", scope: !2563, file: !2554, line: 21, baseType: !119, size: 64, offset: 64)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2563, file: !2554, line: 26, baseType: !472, size: 64, offset: 128)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2563, file: !2554, line: 27, baseType: !119, size: 64, offset: 192)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "argmin", scope: !2563, file: !2554, line: 28, baseType: !119, size: 64, offset: 256)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "have_execfd", scope: !2563, file: !2554, line: 31, baseType: !13, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "execfd_creds", scope: !2563, file: !2554, line: 34, baseType: !13, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "secureexec", scope: !2563, file: !2554, line: 40, baseType: !13, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "point_of_no_return", scope: !2563, file: !2554, line: 45, baseType: !13, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "comm_from_dentry", scope: !2563, file: !2554, line: 47, baseType: !13, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "executable", scope: !2563, file: !2554, line: 48, baseType: !508, size: 64, offset: 384)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "interpreter", scope: !2563, file: !2554, line: 49, baseType: !508, size: 64, offset: 448)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2563, file: !2554, line: 50, baseType: !508, size: 64, offset: 512)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2563, file: !2554, line: 51, baseType: !2579, size: 64, offset: 576)
!2579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "unsafe", scope: !2563, file: !2554, line: 52, baseType: !140, size: 32, offset: 640)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "per_clear", scope: !2563, file: !2554, line: 53, baseType: !13, size: 32, offset: 672)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !2563, file: !2554, line: 54, baseType: !140, size: 32, offset: 704)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "envc", scope: !2563, file: !2554, line: 54, baseType: !140, size: 32, offset: 736)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !2563, file: !2554, line: 55, baseType: !662, size: 64, offset: 768)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "interp", scope: !2563, file: !2554, line: 56, baseType: !662, size: 64, offset: 832)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "fdpath", scope: !2563, file: !2554, line: 59, baseType: !662, size: 64, offset: 896)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "interp_flags", scope: !2563, file: !2554, line: 60, baseType: !13, size: 32, offset: 960)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "execfd", scope: !2563, file: !2554, line: 61, baseType: !140, size: 32, offset: 992)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "loader", scope: !2563, file: !2554, line: 62, baseType: !119, size: 64, offset: 1024)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "exec", scope: !2563, file: !2554, line: 62, baseType: !119, size: 64, offset: 1088)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_stack", scope: !2563, file: !2554, line: 64, baseType: !2592, size: 128, offset: 1152)
!2592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2593, line: 43, size: 128, elements: !2594)
!2593 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2594 = !{!2595, !2596}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2592, file: !2593, line: 44, baseType: !1156, size: 64)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2592, file: !2593, line: 45, baseType: !1156, size: 64, offset: 64)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2563, file: !2554, line: 66, baseType: !2598, size: 2048, offset: 1280)
!2598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !2599)
!2599 = !{!2600}
!2600 = !DISubrange(count: 256)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "load_shlib", scope: !2553, file: !2554, line: 88, baseType: !2602, size: 64, offset: 256)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = !DISubroutineType(types: !2604)
!2604 = !{!140, !508}
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "core_dump", scope: !2553, file: !2554, line: 90, baseType: !2606, size: 64, offset: 320)
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2607 = !DISubroutineType(types: !2608)
!2608 = !{!140, !2609}
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = !DICompositeType(tag: DW_TAG_structure_type, name: "coredump_params", file: !2554, line: 11, flags: DIFlagFwdDecl)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "min_coredump", scope: !2553, file: !2554, line: 91, baseType: !119, size: 64, offset: 384)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !476, file: !18, line: 880, baseType: !2613, size: 1088, offset: 7936)
!2613 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2614, line: 72, baseType: !2615)
!2614 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2615 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2614, line: 23, size: 1088, elements: !2616)
!2616 = !{!2617, !2618, !2619, !2620, !2621, !2624, !2625, !2626, !2627, !2631, !2632, !2633}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2615, file: !2614, line: 28, baseType: !191, size: 64)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2615, file: !2614, line: 38, baseType: !531, size: 64, offset: 64)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2615, file: !2614, line: 40, baseType: !119, size: 64, offset: 128)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2615, file: !2614, line: 43, baseType: !768, size: 320, offset: 192)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2615, file: !2614, line: 44, baseType: !2622, size: 64, offset: 512)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2614, line: 44, flags: DIFlagFwdDecl)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2615, file: !2614, line: 48, baseType: !119, size: 64, offset: 576)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2615, file: !2614, line: 59, baseType: !536, size: 256, offset: 640)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2615, file: !2614, line: 60, baseType: !129, size: 64, offset: 896)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2615, file: !2614, line: 61, baseType: !2628, size: 64, offset: 960)
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2629, size: 64)
!2629 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2630)
!2630 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2614, line: 61, flags: DIFlagFwdDecl)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2615, file: !2614, line: 63, baseType: !136, size: 32, offset: 1024)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2615, file: !2614, line: 69, baseType: !160, size: 16, offset: 1056)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2615, file: !2614, line: 70, baseType: !2634, size: 16, offset: 1072)
!2634 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !123, line: 18, baseType: !2635)
!2635 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !125, line: 23, baseType: !796)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !476, file: !18, line: 882, baseType: !119, size: 64, offset: 9024)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !476, file: !18, line: 885, baseType: !490, size: 32, offset: 9088)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !476, file: !18, line: 886, baseType: !2639, size: 64, offset: 9152)
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2640, size: 64)
!2640 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !18, line: 732, flags: DIFlagFwdDecl)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !476, file: !18, line: 901, baseType: !642, size: 64, offset: 9216)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !476, file: !18, line: 904, baseType: !508, size: 64, offset: 9280)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !476, file: !18, line: 906, baseType: !2644, size: 64, offset: 9344)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !18, line: 906, flags: DIFlagFwdDecl)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !476, file: !18, line: 930, baseType: !136, size: 32, offset: 9408)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !476, file: !18, line: 933, baseType: !136, size: 32, offset: 9440)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !476, file: !18, line: 935, baseType: !2649, size: 64, offset: 9472)
!2649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !55, line: 103, size: 64, elements: !2650)
!2650 = !{!2651}
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2649, file: !55, line: 104, baseType: !2652, size: 64)
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !55, line: 101, flags: DIFlagFwdDecl)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !476, file: !18, line: 940, baseType: !529, size: 64, offset: 9536)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !476, file: !18, line: 942, baseType: !1744, size: 256, offset: 9600)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !473, file: !18, line: 986, baseType: !2657, offset: 10240)
!2657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, elements: !920)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !111, file: !112, line: 882, baseType: !472, size: 64, offset: 9792)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !111, file: !112, line: 884, baseType: !140, size: 32, offset: 9856)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !111, file: !112, line: 885, baseType: !140, size: 32, offset: 9888)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !111, file: !112, line: 886, baseType: !140, size: 32, offset: 9920)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !111, file: !112, line: 888, baseType: !140, size: 32, offset: 9952)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !111, file: !112, line: 890, baseType: !119, size: 64, offset: 9984)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !111, file: !112, line: 893, baseType: !13, size: 32, offset: 10048)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !111, file: !112, line: 896, baseType: !13, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !111, file: !112, line: 897, baseType: !13, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !111, file: !112, line: 898, baseType: !13, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !111, file: !112, line: 899, baseType: !13, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !111, file: !112, line: 919, baseType: !13, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !111, file: !112, line: 922, baseType: !13, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !111, file: !112, line: 923, baseType: !13, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !111, file: !112, line: 925, baseType: !13, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !111, file: !112, line: 939, baseType: !13, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !111, file: !112, line: 941, baseType: !13, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !111, file: !112, line: 944, baseType: !13, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !111, file: !112, line: 956, baseType: !13, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !111, file: !112, line: 962, baseType: !13, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !111, file: !112, line: 966, baseType: !13, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !111, file: !112, line: 969, baseType: !119, size: 64, offset: 10176)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !111, file: !112, line: 971, baseType: !2681, size: 448, offset: 10240)
!2681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !49, line: 25, size: 448, elements: !2682)
!2682 = !{!2683, !2684, !2689}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2681, file: !49, line: 26, baseType: !119, size: 64)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2681, file: !49, line: 27, baseType: !2685, size: 64, offset: 64)
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!2686 = !DISubroutineType(types: !2687)
!2687 = !{!1112, !2688}
!2688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2689 = !DIDerivedType(tag: DW_TAG_member, scope: !2681, file: !49, line: 28, baseType: !2690, size: 320, offset: 128)
!2690 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2681, file: !49, line: 28, size: 320, elements: !2691)
!2691 = !{!2692, !2702, !2727}
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2690, file: !49, line: 37, baseType: !2693, size: 320)
!2693 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2690, file: !49, line: 30, size: 320, elements: !2694)
!2694 = !{!2695, !2697, !2698, !2699, !2700, !2701}
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2693, file: !49, line: 31, baseType: !2696, size: 64)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2693, file: !49, line: 32, baseType: !122, size: 32, offset: 64)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2693, file: !49, line: 33, baseType: !122, size: 32, offset: 96)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2693, file: !49, line: 34, baseType: !122, size: 32, offset: 128)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2693, file: !49, line: 35, baseType: !191, size: 64, offset: 192)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2693, file: !49, line: 36, baseType: !2696, size: 64, offset: 256)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2690, file: !49, line: 47, baseType: !2703, size: 192)
!2703 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2690, file: !49, line: 39, size: 192, elements: !2704)
!2704 = !{!2705, !2706, !2707, !2726}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2703, file: !49, line: 40, baseType: !337, size: 32)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2703, file: !49, line: 41, baseType: !48, size: 32, offset: 32)
!2707 = !DIDerivedType(tag: DW_TAG_member, scope: !2703, file: !49, line: 42, baseType: !2708, size: 64, offset: 64)
!2708 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2703, file: !49, line: 42, size: 64, elements: !2709)
!2709 = !{!2710, !2718}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2708, file: !49, line: 43, baseType: !2711, size: 64)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2713, line: 7, size: 128, elements: !2714)
!2713 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2714 = !{!2715, !2717}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2712, file: !2713, line: 8, baseType: !2716, size: 64)
!2716 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !339, line: 93, baseType: !209)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2712, file: !2713, line: 9, baseType: !209, size: 64, offset: 64)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2708, file: !49, line: 44, baseType: !2719, size: 64)
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64)
!2720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2721, line: 7, size: 64, elements: !2722)
!2721 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2722 = !{!2723, !2725}
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2720, file: !2721, line: 8, baseType: !2724, size: 32)
!2724 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2721, line: 5, baseType: !760)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2720, file: !2721, line: 9, baseType: !760, size: 32, offset: 32)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2703, file: !49, line: 46, baseType: !191, size: 64, offset: 128)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2690, file: !49, line: 55, baseType: !2728, size: 256)
!2728 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2690, file: !49, line: 49, size: 256, elements: !2729)
!2729 = !{!2730, !2733, !2734, !2735, !2736}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2728, file: !49, line: 50, baseType: !2731, size: 64)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !49, line: 14, flags: DIFlagFwdDecl)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2728, file: !49, line: 51, baseType: !140, size: 32, offset: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2728, file: !49, line: 52, baseType: !140, size: 32, offset: 96)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2728, file: !49, line: 53, baseType: !119, size: 64, offset: 128)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2728, file: !49, line: 54, baseType: !119, size: 64, offset: 192)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !111, file: !112, line: 973, baseType: !2738, size: 32, offset: 10688)
!2738 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !108, line: 27, baseType: !2739)
!2739 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !339, line: 28, baseType: !140)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !111, file: !112, line: 974, baseType: !2738, size: 32, offset: 10720)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !111, file: !112, line: 978, baseType: !119, size: 64, offset: 10752)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !111, file: !112, line: 987, baseType: !110, size: 64, offset: 10816)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !111, file: !112, line: 990, baseType: !110, size: 64, offset: 10880)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !111, file: !112, line: 995, baseType: !196, size: 128, offset: 10944)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !111, file: !112, line: 996, baseType: !196, size: 128, offset: 11072)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !111, file: !112, line: 997, baseType: !110, size: 64, offset: 11200)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !111, file: !112, line: 1005, baseType: !196, size: 128, offset: 11264)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !111, file: !112, line: 1006, baseType: !196, size: 128, offset: 11392)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !111, file: !112, line: 1009, baseType: !578, size: 64, offset: 11520)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !111, file: !112, line: 1010, baseType: !2751, size: 512, offset: 11584)
!2751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !590, size: 512, elements: !595)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !111, file: !112, line: 1011, baseType: !196, size: 128, offset: 12096)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !111, file: !112, line: 1012, baseType: !196, size: 128, offset: 12224)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !111, file: !112, line: 1014, baseType: !2755, size: 64, offset: 12352)
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !111, file: !112, line: 1017, baseType: !1306, size: 64, offset: 12416)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !111, file: !112, line: 1020, baseType: !1306, size: 64, offset: 12480)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !111, file: !112, line: 1023, baseType: !129, size: 64, offset: 12544)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !111, file: !112, line: 1025, baseType: !191, size: 64, offset: 12608)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !111, file: !112, line: 1026, baseType: !191, size: 64, offset: 12672)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !111, file: !112, line: 1031, baseType: !191, size: 64, offset: 12736)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !111, file: !112, line: 1032, baseType: !2763, size: 192, offset: 12800)
!2763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !112, line: 324, size: 192, elements: !2764)
!2764 = !{!2765, !2766, !2767}
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2763, file: !112, line: 326, baseType: !191, size: 64)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2763, file: !112, line: 327, baseType: !191, size: 64, offset: 64)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2763, file: !112, line: 328, baseType: !289, size: 32, offset: 128)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !111, file: !112, line: 1041, baseType: !119, size: 64, offset: 12992)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !111, file: !112, line: 1042, baseType: !119, size: 64, offset: 13056)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !111, file: !112, line: 1045, baseType: !191, size: 64, offset: 13120)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !111, file: !112, line: 1048, baseType: !191, size: 64, offset: 13184)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !111, file: !112, line: 1051, baseType: !119, size: 64, offset: 13248)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !111, file: !112, line: 1052, baseType: !119, size: 64, offset: 13312)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !111, file: !112, line: 1055, baseType: !2775, size: 640, offset: 13376)
!2775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2776, line: 132, size: 640, elements: !2777)
!2776 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2777 = !{!2778, !2784, !2785}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2775, file: !2776, line: 133, baseType: !2779, size: 576)
!2779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2780, size: 576, elements: !574)
!2780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2776, line: 117, size: 192, elements: !2781)
!2781 = !{!2782, !2783}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2780, file: !2776, line: 118, baseType: !191, size: 64)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2780, file: !2776, line: 119, baseType: !352, size: 128, offset: 64)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2775, file: !2776, line: 134, baseType: !13, size: 32, offset: 576)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2775, file: !2776, line: 135, baseType: !13, size: 32, offset: 608)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !111, file: !112, line: 1058, baseType: !2787, size: 448, offset: 14016)
!2787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2776, line: 144, size: 448, elements: !2788)
!2788 = !{!2789, !2790, !2791}
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2787, file: !2776, line: 145, baseType: !516, size: 128, align: 64)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2787, file: !2776, line: 146, baseType: !536, size: 256, offset: 128)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2787, file: !2776, line: 147, baseType: !13, size: 32, offset: 384)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !111, file: !112, line: 1064, baseType: !714, size: 64, offset: 14464)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !111, file: !112, line: 1067, baseType: !714, size: 64, offset: 14528)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !111, file: !112, line: 1070, baseType: !714, size: 64, offset: 14592)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !111, file: !112, line: 1074, baseType: !753, size: 64, offset: 14656)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !111, file: !112, line: 1084, baseType: !2797, size: 128, offset: 14720)
!2797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !1635)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !111, file: !112, line: 1086, baseType: !2799, size: 64, offset: 14848)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !112, line: 55, flags: DIFlagFwdDecl)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !111, file: !112, line: 1089, baseType: !2802, size: 64, offset: 14912)
!2802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2803, line: 12, size: 64, elements: !2804)
!2803 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2804 = !{!2805}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2802, file: !2803, line: 13, baseType: !2806, size: 64)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2803, line: 8, flags: DIFlagFwdDecl)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !111, file: !112, line: 1090, baseType: !2809, size: 128, offset: 14976)
!2809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2810, line: 13, size: 128, elements: !2811)
!2810 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2811 = !{!2812}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2809, file: !2810, line: 14, baseType: !196, size: 128)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !111, file: !112, line: 1097, baseType: !711, size: 64, offset: 15104)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !111, file: !112, line: 1100, baseType: !2815, size: 64, offset: 15168)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !112, line: 1100, flags: DIFlagFwdDecl)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !111, file: !112, line: 1103, baseType: !2818, size: 64, offset: 15232)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !112, line: 53, flags: DIFlagFwdDecl)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !111, file: !112, line: 1107, baseType: !685, size: 64, offset: 15296)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !111, file: !112, line: 1110, baseType: !2822, size: 64, offset: 15360)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2824, line: 93, size: 8768, elements: !2825)
!2824 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2825 = !{!2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2875, !2884, !2885, !2887, !2888, !2889, !2892, !2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2930, !2931, !2933, !2943, !2946, !2947, !2950, !2951, !2952, !2953, !2954, !2955}
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2823, file: !2824, line: 94, baseType: !131, size: 32)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2823, file: !2824, line: 95, baseType: !136, size: 32, offset: 32)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2823, file: !2824, line: 96, baseType: !140, size: 32, offset: 64)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2823, file: !2824, line: 97, baseType: !140, size: 32, offset: 96)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2823, file: !2824, line: 98, baseType: !196, size: 128, offset: 128)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2823, file: !2824, line: 100, baseType: !599, size: 192, offset: 256)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2823, file: !2824, line: 103, baseType: !110, size: 64, offset: 448)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2823, file: !2824, line: 106, baseType: !2834, size: 192, offset: 512)
!2834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !648, line: 32, size: 192, elements: !2835)
!2835 = !{!2836, !2837}
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2834, file: !648, line: 33, baseType: !196, size: 128)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2834, file: !648, line: 34, baseType: !2838, size: 64, offset: 128)
!2838 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2839, line: 25, baseType: !2840)
!2839 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2840 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2839, line: 23, size: 64, elements: !2841)
!2841 = !{!2842}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2840, file: !2839, line: 24, baseType: !423, size: 64)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2823, file: !2824, line: 109, baseType: !586, size: 64, offset: 704)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2823, file: !2824, line: 112, baseType: !140, size: 32, offset: 768)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2823, file: !2824, line: 114, baseType: !140, size: 32, offset: 800)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2823, file: !2824, line: 115, baseType: !110, size: 64, offset: 832)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2823, file: !2824, line: 118, baseType: !140, size: 32, offset: 896)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2823, file: !2824, line: 119, baseType: !13, size: 32, offset: 928)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2823, file: !2824, line: 121, baseType: !2850, size: 64, offset: 960)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2824, line: 80, size: 448, elements: !2852)
!2852 = !{!2853, !2854, !2860}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2851, file: !2824, line: 81, baseType: !136, size: 32)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2851, file: !2824, line: 82, baseType: !2855, size: 128, offset: 64)
!2855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2824, line: 75, size: 128, elements: !2856)
!2856 = !{!2857, !2858}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2855, file: !2824, line: 76, baseType: !110, size: 64)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2855, file: !2824, line: 77, baseType: !2859, size: 64, offset: 64)
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2851, file: !2824, line: 83, baseType: !1866, size: 256, offset: 192)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2823, file: !2824, line: 132, baseType: !13, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2823, file: !2824, line: 133, baseType: !13, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2823, file: !2824, line: 138, baseType: !13, size: 32, offset: 1056)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2823, file: !2824, line: 139, baseType: !196, size: 128, offset: 1088)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2823, file: !2824, line: 142, baseType: !264, size: 512, offset: 1216)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2823, file: !2824, line: 143, baseType: !272, size: 64, offset: 1728)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2823, file: !2824, line: 150, baseType: !2868, size: 256, offset: 1792)
!2868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2869, size: 256, elements: !2873)
!2869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2824, line: 38, size: 128, elements: !2870)
!2870 = !{!2871, !2872}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2869, file: !2824, line: 39, baseType: !191, size: 64)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2869, file: !2824, line: 40, baseType: !191, size: 64, offset: 64)
!2873 = !{!2874}
!2874 = !DISubrange(count: 2)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2823, file: !2824, line: 156, baseType: !2876, size: 192, offset: 2048)
!2876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2824, line: 66, size: 192, elements: !2877)
!2877 = !{!2878}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2876, file: !2824, line: 67, baseType: !2879, size: 192)
!2879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2824, line: 47, size: 192, elements: !2880)
!2880 = !{!2881, !2882, !2883}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2879, file: !2824, line: 48, baseType: !531, size: 64)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2879, file: !2824, line: 49, baseType: !531, size: 64, offset: 64)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2879, file: !2824, line: 50, baseType: !531, size: 64, offset: 128)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2823, file: !2824, line: 160, baseType: !2775, size: 640, offset: 2240)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2823, file: !2824, line: 163, baseType: !2886, size: 256, offset: 2880)
!2886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !578, size: 256, elements: !595)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2823, file: !2824, line: 169, baseType: !578, size: 64, offset: 3136)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2823, file: !2824, line: 172, baseType: !140, size: 32, offset: 3200)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2823, file: !2824, line: 174, baseType: !2890, size: 64, offset: 3264)
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2891 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2824, line: 174, flags: DIFlagFwdDecl)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2823, file: !2824, line: 185, baseType: !2893, size: 64, offset: 3328)
!2893 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !342, line: 860, baseType: !2894)
!2894 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !342, line: 853, size: 64, elements: !2895)
!2895 = !{!2896, !2897}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2894, file: !342, line: 858, baseType: !968, size: 32)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2894, file: !342, line: 859, baseType: !490, size: 32, offset: 32)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2823, file: !2824, line: 186, baseType: !191, size: 64, offset: 3392)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2823, file: !2824, line: 186, baseType: !191, size: 64, offset: 3456)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2823, file: !2824, line: 186, baseType: !191, size: 64, offset: 3520)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2823, file: !2824, line: 186, baseType: !191, size: 64, offset: 3584)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2823, file: !2824, line: 187, baseType: !191, size: 64, offset: 3648)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2823, file: !2824, line: 188, baseType: !191, size: 64, offset: 3712)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2823, file: !2824, line: 189, baseType: !2763, size: 192, offset: 3776)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2823, file: !2824, line: 190, baseType: !119, size: 64, offset: 3968)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2823, file: !2824, line: 190, baseType: !119, size: 64, offset: 4032)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2823, file: !2824, line: 190, baseType: !119, size: 64, offset: 4096)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2823, file: !2824, line: 190, baseType: !119, size: 64, offset: 4160)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2823, file: !2824, line: 191, baseType: !119, size: 64, offset: 4224)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2823, file: !2824, line: 191, baseType: !119, size: 64, offset: 4288)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2823, file: !2824, line: 191, baseType: !119, size: 64, offset: 4352)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2823, file: !2824, line: 191, baseType: !119, size: 64, offset: 4416)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2823, file: !2824, line: 192, baseType: !119, size: 64, offset: 4480)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2823, file: !2824, line: 192, baseType: !119, size: 64, offset: 4544)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2823, file: !2824, line: 192, baseType: !119, size: 64, offset: 4608)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2823, file: !2824, line: 192, baseType: !119, size: 64, offset: 4672)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2823, file: !2824, line: 193, baseType: !119, size: 64, offset: 4736)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2823, file: !2824, line: 193, baseType: !119, size: 64, offset: 4800)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2823, file: !2824, line: 194, baseType: !2920, size: 448, offset: 4864)
!2920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2921, line: 12, size: 448, elements: !2922)
!2921 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2922 = !{!2923, !2924, !2925, !2926, !2927, !2928, !2929}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2920, file: !2921, line: 15, baseType: !191, size: 64)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2920, file: !2921, line: 17, baseType: !191, size: 64, offset: 64)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2920, file: !2921, line: 19, baseType: !191, size: 64, offset: 128)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2920, file: !2921, line: 21, baseType: !191, size: 64, offset: 192)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2920, file: !2921, line: 29, baseType: !191, size: 64, offset: 256)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2920, file: !2921, line: 35, baseType: !191, size: 64, offset: 320)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2920, file: !2921, line: 44, baseType: !191, size: 64, offset: 384)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2823, file: !2824, line: 202, baseType: !193, size: 64, offset: 5312)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2823, file: !2824, line: 213, baseType: !2932, size: 2048, offset: 5376)
!2932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2592, size: 2048, elements: !1635)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2823, file: !2824, line: 216, baseType: !2934, size: 448, offset: 7424)
!2934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2824, line: 30, size: 448, elements: !2935)
!2935 = !{!2936, !2937, !2938, !2939, !2940, !2941, !2942}
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2934, file: !2824, line: 31, baseType: !140, size: 32)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2934, file: !2824, line: 32, baseType: !1112, size: 64, offset: 64)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2934, file: !2824, line: 33, baseType: !119, size: 64, offset: 128)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2934, file: !2824, line: 34, baseType: !191, size: 64, offset: 192)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2934, file: !2824, line: 34, baseType: !191, size: 64, offset: 256)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2934, file: !2824, line: 35, baseType: !119, size: 64, offset: 320)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2934, file: !2824, line: 35, baseType: !119, size: 64, offset: 384)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2823, file: !2824, line: 219, baseType: !2944, size: 64, offset: 7872)
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!2945 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2824, line: 219, flags: DIFlagFwdDecl)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2823, file: !2824, line: 222, baseType: !13, size: 32, offset: 7936)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2823, file: !2824, line: 223, baseType: !2948, size: 64, offset: 8000)
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2824, line: 223, flags: DIFlagFwdDecl)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2823, file: !2824, line: 230, baseType: !827, size: 8, offset: 8064)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2823, file: !2824, line: 231, baseType: !796, size: 16, offset: 8080)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2823, file: !2824, line: 232, baseType: !796, size: 16, offset: 8096)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2823, file: !2824, line: 234, baseType: !472, size: 64, offset: 8128)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2823, file: !2824, line: 237, baseType: !536, size: 256, offset: 8192)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2823, file: !2824, line: 243, baseType: !768, size: 320, offset: 8448)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !111, file: !112, line: 1111, baseType: !2957, size: 64, offset: 15424)
!2957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2958, size: 64)
!2958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2824, line: 20, size: 16640, elements: !2959)
!2959 = !{!2960, !2961, !2962, !2963}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2958, file: !2824, line: 21, baseType: !490, size: 32)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2958, file: !2824, line: 22, baseType: !131, size: 32, offset: 32)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2958, file: !2824, line: 23, baseType: !599, size: 192, offset: 64)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2958, file: !2824, line: 24, baseType: !2964, size: 16384, offset: 256)
!2964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2965, size: 16384, elements: !2985)
!2965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !648, line: 51, size: 256, elements: !2966)
!2966 = !{!2967}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2965, file: !648, line: 52, baseType: !2968, size: 256)
!2968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !648, line: 37, size: 256, elements: !2969)
!2969 = !{!2970, !2977, !2978, !2984}
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2968, file: !648, line: 39, baseType: !2971, size: 64)
!2971 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2972, line: 83, baseType: !2973)
!2972 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2974 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2972, line: 82, baseType: !2975)
!2975 = !DISubroutineType(types: !2976)
!2976 = !{null, !140}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2968, file: !648, line: 40, baseType: !119, size: 64, offset: 64)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2968, file: !648, line: 46, baseType: !2979, size: 64, offset: 128)
!2979 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2972, line: 86, baseType: !2980)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2972, line: 85, baseType: !2982)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{null}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2968, file: !648, line: 48, baseType: !2838, size: 64, offset: 192)
!2985 = !{!2986}
!2986 = !DISubrange(count: 64)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !111, file: !112, line: 1112, baseType: !2838, size: 64, offset: 15488)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !111, file: !112, line: 1113, baseType: !2838, size: 64, offset: 15552)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !111, file: !112, line: 1115, baseType: !2838, size: 64, offset: 15616)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !111, file: !112, line: 1116, baseType: !2834, size: 192, offset: 15680)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !111, file: !112, line: 1117, baseType: !119, size: 64, offset: 15872)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !111, file: !112, line: 1118, baseType: !1154, size: 64, offset: 15936)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !111, file: !112, line: 1119, baseType: !13, size: 32, offset: 16000)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !111, file: !112, line: 1121, baseType: !519, size: 64, offset: 16064)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !111, file: !112, line: 1125, baseType: !2996, size: 64, offset: 16128)
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2997, size: 64)
!2997 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !112, line: 43, flags: DIFlagFwdDecl)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !111, file: !112, line: 1127, baseType: !721, size: 32, offset: 16192)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !111, file: !112, line: 1128, baseType: !13, size: 32, offset: 16224)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !111, file: !112, line: 1130, baseType: !3001, size: 128, offset: 16256)
!3001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3002, line: 37, size: 128, elements: !3003)
!3002 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3003 = !{!3004, !3005, !3006}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3001, file: !3002, line: 38, baseType: !140, size: 32)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3001, file: !3002, line: 39, baseType: !136, size: 32, offset: 32)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3001, file: !3002, line: 40, baseType: !3007, size: 64, offset: 64)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3002, line: 24, flags: DIFlagFwdDecl)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !111, file: !112, line: 1131, baseType: !3010, size: 256, offset: 16384)
!3010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3011, line: 12, size: 256, elements: !3012)
!3011 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3012 = !{!3013, !3014, !3015, !3016}
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3010, file: !3011, line: 13, baseType: !838, size: 64)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3010, file: !3011, line: 14, baseType: !119, size: 64, offset: 64)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3010, file: !3011, line: 15, baseType: !119, size: 64, offset: 128)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3010, file: !3011, line: 16, baseType: !827, size: 8, offset: 192)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !111, file: !112, line: 1134, baseType: !191, size: 64, offset: 16640)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !111, file: !112, line: 1135, baseType: !191, size: 64, offset: 16704)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !111, file: !112, line: 1138, baseType: !490, size: 32, offset: 16768)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !111, file: !112, line: 1141, baseType: !289, size: 32, offset: 16800)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !111, file: !112, line: 1143, baseType: !3022, size: 64, offset: 16832)
!3022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !112, line: 735, size: 64, elements: !3023)
!3023 = !{!3024}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3022, file: !112, line: 736, baseType: !3025, size: 64)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !111, file: !112, line: 1147, baseType: !355, size: 128, offset: 16896)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !111, file: !112, line: 1149, baseType: !110, size: 64, offset: 17024)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !111, file: !112, line: 1151, baseType: !3029, size: 64, offset: 17088)
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3030, size: 64)
!3030 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !112, line: 1151, flags: DIFlagFwdDecl)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !111, file: !112, line: 1188, baseType: !129, size: 64, offset: 17152)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !111, file: !112, line: 1191, baseType: !3033, size: 64, offset: 17216)
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !112, line: 44, flags: DIFlagFwdDecl)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !111, file: !112, line: 1194, baseType: !3036, size: 64, offset: 17280)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !112, line: 45, flags: DIFlagFwdDecl)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !111, file: !112, line: 1197, baseType: !3039, size: 64, offset: 17344)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !112, line: 61, flags: DIFlagFwdDecl)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !111, file: !112, line: 1199, baseType: !3042, size: 64, offset: 17408)
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3043, size: 64)
!3043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3044, line: 99, size: 128, elements: !3045)
!3044 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3045 = !{!3046, !3047, !3048}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3043, file: !3044, line: 100, baseType: !529, size: 64)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3043, file: !3044, line: 101, baseType: !136, size: 32, offset: 64)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3043, file: !3044, line: 103, baseType: !162, size: 16, offset: 96)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !111, file: !112, line: 1202, baseType: !3050, size: 64, offset: 17472)
!3050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3051, size: 64)
!3051 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !112, line: 48, flags: DIFlagFwdDecl)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !111, file: !112, line: 1205, baseType: !119, size: 64, offset: 17536)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !111, file: !112, line: 1206, baseType: !3054, size: 64, offset: 17600)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !648, line: 14, baseType: !3056)
!3056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !648, line: 12, size: 384, elements: !3057)
!3057 = !{!3058}
!3058 = !DIDerivedType(tag: DW_TAG_member, scope: !3056, file: !648, line: 13, baseType: !3059, size: 384)
!3059 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3056, file: !648, line: 13, size: 384, elements: !3060)
!3060 = !{!3061, !3062, !3063, !3064}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3059, file: !648, line: 13, baseType: !140, size: 32)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3059, file: !648, line: 13, baseType: !140, size: 32, offset: 32)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3059, file: !648, line: 13, baseType: !140, size: 32, offset: 64)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3059, file: !648, line: 13, baseType: !3065, size: 256, offset: 128)
!3065 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3066, line: 37, size: 256, elements: !3067)
!3066 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3067 = !{!3068, !3073, !3086, !3092, !3101, !3128, !3133}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3065, file: !3066, line: 42, baseType: !3069, size: 64)
!3069 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3065, file: !3066, line: 39, size: 64, elements: !3070)
!3070 = !{!3071, !3072}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3069, file: !3066, line: 40, baseType: !2739, size: 32)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3069, file: !3066, line: 41, baseType: !726, size: 32, offset: 32)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3065, file: !3066, line: 50, baseType: !3074, size: 192)
!3074 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3065, file: !3066, line: 45, size: 192, elements: !3075)
!3075 = !{!3076, !3078, !3079, !3085}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3074, file: !3066, line: 46, baseType: !3077, size: 32)
!3077 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !339, line: 95, baseType: !140)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3074, file: !3066, line: 47, baseType: !140, size: 32, offset: 32)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3074, file: !3066, line: 48, baseType: !3080, size: 64, offset: 64)
!3080 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3066, line: 11, baseType: !3081)
!3081 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3066, line: 8, size: 64, elements: !3082)
!3082 = !{!3083, !3084}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3081, file: !3066, line: 9, baseType: !140, size: 32)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3081, file: !3066, line: 10, baseType: !129, size: 64)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3074, file: !3066, line: 49, baseType: !140, size: 32, offset: 128)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3065, file: !3066, line: 57, baseType: !3087, size: 128)
!3087 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3065, file: !3066, line: 53, size: 128, elements: !3088)
!3088 = !{!3089, !3090, !3091}
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3087, file: !3066, line: 54, baseType: !2739, size: 32)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3087, file: !3066, line: 55, baseType: !726, size: 32, offset: 32)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3087, file: !3066, line: 56, baseType: !3080, size: 64, offset: 64)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3065, file: !3066, line: 66, baseType: !3093, size: 256)
!3093 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3065, file: !3066, line: 60, size: 256, elements: !3094)
!3094 = !{!3095, !3096, !3097, !3098, !3100}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3093, file: !3066, line: 61, baseType: !2739, size: 32)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3093, file: !3066, line: 62, baseType: !726, size: 32, offset: 32)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3093, file: !3066, line: 63, baseType: !140, size: 32, offset: 64)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3093, file: !3066, line: 64, baseType: !3099, size: 64, offset: 128)
!3099 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !339, line: 94, baseType: !1153)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3093, file: !3066, line: 65, baseType: !3099, size: 64, offset: 192)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3065, file: !3066, line: 105, baseType: !3102, size: 256)
!3102 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3065, file: !3066, line: 69, size: 256, elements: !3103)
!3103 = !{!3104, !3105}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3102, file: !3066, line: 70, baseType: !129, size: 64)
!3105 = !DIDerivedType(tag: DW_TAG_member, scope: !3102, file: !3066, line: 79, baseType: !3106, size: 192, offset: 64)
!3106 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3102, file: !3066, line: 79, size: 192, elements: !3107)
!3107 = !{!3108, !3109, !3110, !3117, !3122}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3106, file: !3066, line: 81, baseType: !140, size: 32)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3106, file: !3066, line: 86, baseType: !796, size: 16)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3106, file: !3066, line: 92, baseType: !3111, size: 192)
!3111 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3106, file: !3066, line: 88, size: 192, elements: !3112)
!3112 = !{!3113, !3115, !3116}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3111, file: !3066, line: 89, baseType: !3114, size: 64)
!3114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !333)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3111, file: !3066, line: 90, baseType: !129, size: 64, offset: 64)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3111, file: !3066, line: 91, baseType: !129, size: 64, offset: 128)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3106, file: !3066, line: 97, baseType: !3118, size: 96)
!3118 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3106, file: !3066, line: 94, size: 96, elements: !3119)
!3119 = !{!3120, !3121}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3118, file: !3066, line: 95, baseType: !3114, size: 64)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3118, file: !3066, line: 96, baseType: !124, size: 32, offset: 64)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3106, file: !3066, line: 103, baseType: !3123, size: 128)
!3123 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3106, file: !3066, line: 99, size: 128, elements: !3124)
!3124 = !{!3125, !3126, !3127}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3123, file: !3066, line: 100, baseType: !119, size: 64)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3123, file: !3066, line: 101, baseType: !124, size: 32, offset: 64)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3123, file: !3066, line: 102, baseType: !124, size: 32, offset: 96)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3065, file: !3066, line: 111, baseType: !3129, size: 128)
!3129 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3065, file: !3066, line: 108, size: 128, elements: !3130)
!3130 = !{!3131, !3132}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3129, file: !3066, line: 109, baseType: !1112, size: 64)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3129, file: !3066, line: 110, baseType: !140, size: 32, offset: 64)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3065, file: !3066, line: 118, baseType: !3134, size: 128)
!3134 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3065, file: !3066, line: 114, size: 128, elements: !3135)
!3135 = !{!3136, !3137, !3138}
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3134, file: !3066, line: 115, baseType: !129, size: 64)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3134, file: !3066, line: 116, baseType: !140, size: 32, offset: 64)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3134, file: !3066, line: 117, baseType: !13, size: 32, offset: 96)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !111, file: !112, line: 1208, baseType: !2920, size: 448, offset: 17664)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !111, file: !112, line: 1215, baseType: !191, size: 64, offset: 18112)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !111, file: !112, line: 1217, baseType: !191, size: 64, offset: 18176)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !111, file: !112, line: 1219, baseType: !191, size: 64, offset: 18240)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !111, file: !112, line: 1223, baseType: !3144, size: 64, offset: 18304)
!3144 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3145, line: 99, baseType: !3146)
!3145 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3146 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3145, line: 99, size: 64, elements: !3147)
!3147 = !{!3148}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3146, file: !3145, line: 99, baseType: !423, size: 64)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !111, file: !112, line: 1225, baseType: !968, size: 32, offset: 18368)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !111, file: !112, line: 1226, baseType: !140, size: 32, offset: 18400)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !111, file: !112, line: 1227, baseType: !140, size: 32, offset: 18432)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !111, file: !112, line: 1231, baseType: !3153, size: 64, offset: 18496)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !112, line: 1231, flags: DIFlagFwdDecl)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !111, file: !112, line: 1233, baseType: !196, size: 128, offset: 18560)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !111, file: !112, line: 1240, baseType: !3157, size: 64, offset: 18688)
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3158 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !112, line: 62, flags: DIFlagFwdDecl)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !111, file: !112, line: 1242, baseType: !3160, size: 64, offset: 18752)
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3161 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !112, line: 1242, flags: DIFlagFwdDecl)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !111, file: !112, line: 1244, baseType: !196, size: 128, offset: 18816)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !111, file: !112, line: 1245, baseType: !3164, size: 64, offset: 18944)
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !112, line: 51, flags: DIFlagFwdDecl)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !111, file: !112, line: 1246, baseType: !536, size: 256, offset: 19008)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !111, file: !112, line: 1247, baseType: !13, size: 32, offset: 19264)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !111, file: !112, line: 1250, baseType: !3169, size: 64, offset: 19328)
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3170 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !112, line: 57, flags: DIFlagFwdDecl)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !111, file: !112, line: 1251, baseType: !536, size: 256, offset: 19392)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !111, file: !112, line: 1252, baseType: !196, size: 128, offset: 19648)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !111, file: !112, line: 1259, baseType: !1994, size: 64, offset: 19776)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !111, file: !112, line: 1260, baseType: !796, size: 16, offset: 19840)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !111, file: !112, line: 1261, baseType: !796, size: 16, offset: 19856)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !111, file: !112, line: 1314, baseType: !3177, size: 64, offset: 19904)
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3179, line: 62, size: 256, align: 256, elements: !3180)
!3179 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3180 = !{!3181, !3182, !3183, !3184, !3185, !3186, !3187}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3178, file: !3179, line: 75, baseType: !124, size: 32)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3178, file: !3179, line: 90, baseType: !124, size: 32, offset: 32)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3178, file: !3179, line: 112, baseType: !192, size: 64, offset: 64)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3178, file: !3179, line: 132, baseType: !124, size: 32, offset: 128)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3178, file: !3179, line: 140, baseType: !124, size: 32, offset: 160)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3178, file: !3179, line: 149, baseType: !124, size: 32, offset: 192)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3178, file: !3179, line: 154, baseType: !3188, offset: 224)
!3188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !920)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !111, file: !112, line: 1315, baseType: !122, size: 32, offset: 19968)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !111, file: !112, line: 1316, baseType: !122, size: 32, offset: 20000)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !111, file: !112, line: 1321, baseType: !119, size: 64, offset: 20032)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !111, file: !112, line: 1325, baseType: !140, size: 32, offset: 20096)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !111, file: !112, line: 1326, baseType: !140, size: 32, offset: 20128)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !111, file: !112, line: 1327, baseType: !140, size: 32, offset: 20160)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !111, file: !112, line: 1328, baseType: !140, size: 32, offset: 20192)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !111, file: !112, line: 1329, baseType: !516, size: 128, align: 64, offset: 20224)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !111, file: !112, line: 1332, baseType: !3198, size: 128, offset: 20352)
!3198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3199, line: 51, size: 128, elements: !3200)
!3199 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3200 = !{!3201, !3206, !3207}
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3198, file: !3199, line: 60, baseType: !3202, size: 64)
!3202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3203, line: 7, size: 64, elements: !3204)
!3203 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3204 = !{!3205}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3202, file: !3203, line: 12, baseType: !420, size: 64)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3198, file: !3199, line: 63, baseType: !827, size: 8, offset: 64)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3198, file: !3199, line: 70, baseType: !827, size: 8, offset: 72)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !111, file: !112, line: 1335, baseType: !2391, size: 64, offset: 20480)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !111, file: !112, line: 1337, baseType: !3210, size: 128, offset: 20544)
!3210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3199, line: 39, size: 128, elements: !3211)
!3211 = !{!3212, !3213, !3214}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3210, file: !3199, line: 40, baseType: !1781, size: 64)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3210, file: !3199, line: 42, baseType: !124, size: 32, offset: 64)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3210, file: !3199, line: 43, baseType: !124, size: 32, offset: 96)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !111, file: !112, line: 1340, baseType: !3216, size: 64, offset: 20672)
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !112, line: 69, flags: DIFlagFwdDecl)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !111, file: !112, line: 1351, baseType: !140, size: 32, offset: 20736)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !111, file: !112, line: 1352, baseType: !140, size: 32, offset: 20768)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !111, file: !112, line: 1354, baseType: !119, size: 64, offset: 20800)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !111, file: !112, line: 1364, baseType: !191, size: 64, offset: 20864)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !111, file: !112, line: 1365, baseType: !191, size: 64, offset: 20928)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !111, file: !112, line: 1412, baseType: !119, size: 64, offset: 20992)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !111, file: !112, line: 1453, baseType: !3225, size: 64, offset: 21056)
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3226, size: 64)
!3226 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !112, line: 1453, flags: DIFlagFwdDecl)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !111, file: !112, line: 1457, baseType: !3228, size: 64, offset: 21120)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !55, line: 61, size: 576, elements: !3230)
!3230 = !{!3231, !3232, !3251, !3254, !3255, !3288, !3298}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3229, file: !55, line: 62, baseType: !54, size: 32)
!3232 = !DIDerivedType(tag: DW_TAG_member, scope: !3229, file: !55, line: 64, baseType: !3233, size: 192, offset: 64)
!3233 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3229, file: !55, line: 64, size: 192, elements: !3234)
!3234 = !{!3235, !3246}
!3235 = !DIDerivedType(tag: DW_TAG_member, scope: !3233, file: !55, line: 65, baseType: !3236, size: 192)
!3236 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3233, file: !55, line: 65, size: 192, elements: !3237)
!3237 = !{!3238, !3245}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3236, file: !55, line: 66, baseType: !3239, size: 128)
!3239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3240, line: 50, size: 128, elements: !3241)
!3240 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3241 = !{!3242, !3243, !3244}
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3239, file: !3240, line: 52, baseType: !119, size: 64)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3239, file: !3240, line: 54, baseType: !13, size: 32, offset: 64)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3239, file: !3240, line: 55, baseType: !13, size: 32, offset: 96)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3236, file: !55, line: 67, baseType: !119, size: 64, offset: 128)
!3246 = !DIDerivedType(tag: DW_TAG_member, scope: !3233, file: !55, line: 70, baseType: !3247, size: 192)
!3247 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3233, file: !55, line: 70, size: 192, elements: !3248)
!3248 = !{!3249, !3250}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3247, file: !55, line: 71, baseType: !516, size: 128, align: 64)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3247, file: !55, line: 72, baseType: !119, size: 64, offset: 128)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3229, file: !55, line: 76, baseType: !3252, size: 64, offset: 256)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !55, line: 76, flags: DIFlagFwdDecl)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3229, file: !55, line: 77, baseType: !119, size: 64, offset: 320)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3229, file: !55, line: 79, baseType: !3256, size: 64, offset: 384)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3240, line: 25, size: 256, elements: !3258)
!3258 = !{!3259, !3265, !3269}
!3259 = !DIDerivedType(tag: DW_TAG_member, scope: !3257, file: !3240, line: 26, baseType: !3260, size: 128)
!3260 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3257, file: !3240, line: 26, size: 128, elements: !3261)
!3261 = !{!3262, !3264}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3260, file: !3240, line: 27, baseType: !3263, size: 128)
!3263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !306, size: 128, elements: !1635)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3260, file: !3240, line: 28, baseType: !3263, size: 128)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3257, file: !3240, line: 31, baseType: !3266, size: 64, offset: 128)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3268)
!3268 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3240, line: 23, flags: DIFlagFwdDecl)
!3269 = !DIDerivedType(tag: DW_TAG_member, scope: !3257, file: !3240, line: 33, baseType: !3270, size: 64, offset: 192)
!3270 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3257, file: !3240, line: 33, size: 64, elements: !3271)
!3271 = !{!3272, !3278, !3283}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3270, file: !3240, line: 38, baseType: !3273, size: 64)
!3273 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3270, file: !3240, line: 34, size: 64, elements: !3274)
!3274 = !{!3275, !3276, !3277}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3273, file: !3240, line: 35, baseType: !760, size: 32)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3273, file: !3240, line: 36, baseType: !306, size: 8, offset: 32)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3273, file: !3240, line: 37, baseType: !306, size: 8, offset: 40)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3270, file: !3240, line: 42, baseType: !3279, size: 16)
!3279 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3270, file: !3240, line: 39, size: 16, elements: !3280)
!3280 = !{!3281, !3282}
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3279, file: !3240, line: 40, baseType: !306, size: 8)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3279, file: !3240, line: 41, baseType: !306, size: 8, offset: 8)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3270, file: !3240, line: 46, baseType: !3284, size: 16)
!3284 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3270, file: !3240, line: 43, size: 16, elements: !3285)
!3285 = !{!3286, !3287}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3284, file: !3240, line: 44, baseType: !306, size: 8)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3284, file: !3240, line: 45, baseType: !306, size: 8, offset: 8)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3229, file: !55, line: 81, baseType: !3289, size: 64, offset: 448)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !55, line: 85, size: 384, elements: !3291)
!3291 = !{!3292, !3293, !3294, !3295, !3296, !3297}
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3290, file: !55, line: 86, baseType: !3252, size: 64)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3290, file: !55, line: 87, baseType: !119, size: 64, offset: 64)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3290, file: !55, line: 88, baseType: !119, size: 64, offset: 128)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3290, file: !55, line: 89, baseType: !119, size: 64, offset: 192)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3290, file: !55, line: 90, baseType: !827, size: 8, offset: 256)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3290, file: !55, line: 92, baseType: !3289, size: 64, offset: 320)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3229, file: !55, line: 82, baseType: !13, size: 32, offset: 512)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !111, file: !112, line: 1463, baseType: !3300, offset: 21184)
!3300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !112, line: 739, elements: !501)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !111, file: !112, line: 1470, baseType: !516, size: 128, align: 64, offset: 21184)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !111, file: !112, line: 1471, baseType: !131, size: 32, offset: 21312)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !111, file: !112, line: 1472, baseType: !140, size: 32, offset: 21344)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !111, file: !112, line: 1474, baseType: !110, size: 64, offset: 21376)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !111, file: !112, line: 1475, baseType: !3306, size: 320, offset: 21440)
!3306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3307, line: 11, size: 320, elements: !3308)
!3307 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!3308 = !{!3309, !3310, !3311, !3316}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3306, file: !3307, line: 16, baseType: !590, size: 128)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3306, file: !3307, line: 17, baseType: !119, size: 64, offset: 128)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3306, file: !3307, line: 18, baseType: !3312, size: 64, offset: 192)
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = !DISubroutineType(types: !3314)
!3314 = !{null, !3315}
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3306, file: !3307, line: 19, baseType: !122, size: 32, offset: 256)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !111, file: !112, line: 1478, baseType: !3318, size: 64, offset: 21760)
!3318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3319, size: 64)
!3319 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !112, line: 1478, flags: DIFlagFwdDecl)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !111, file: !112, line: 1482, baseType: !131, size: 32, offset: 21824)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !111, file: !112, line: 1489, baseType: !129, size: 64, offset: 21888)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !111, file: !112, line: 1504, baseType: !129, size: 64, offset: 21952)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !111, file: !112, line: 1505, baseType: !192, size: 64, offset: 22016)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !111, file: !112, line: 1506, baseType: !191, size: 64, offset: 22080)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !111, file: !112, line: 1507, baseType: !192, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !111, file: !112, line: 1508, baseType: !192, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !111, file: !112, line: 1509, baseType: !192, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !111, file: !112, line: 1510, baseType: !516, size: 128, align: 64, offset: 22208)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !111, file: !112, line: 1511, baseType: !140, size: 32, offset: 22336)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !111, file: !112, line: 1515, baseType: !3331, size: 64, offset: 22400)
!3331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !150, line: 56, size: 64, elements: !3332)
!3332 = !{!3333}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3331, file: !150, line: 57, baseType: !153, size: 64)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !111, file: !112, line: 1518, baseType: !3331, size: 64, offset: 22464)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !111, file: !112, line: 1528, baseType: !516, size: 128, align: 64, offset: 22528)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !111, file: !112, line: 1552, baseType: !3337, size: 35328, offset: 23040)
!3337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3338, line: 430, size: 35328, elements: !3339)
!3338 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3339 = !{!3340, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3369, !3370, !3371, !3372, !3373, !3374, !3377, !3378, !3379, !3380}
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3337, file: !3338, line: 432, baseType: !3341, size: 192)
!3341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3342, size: 192, elements: !574)
!3342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3343, line: 16, size: 64, elements: !3344)
!3343 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3344 = !{!3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357}
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3342, file: !3343, line: 17, baseType: !160, size: 16)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3342, file: !3343, line: 18, baseType: !160, size: 16, offset: 16)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3342, file: !3343, line: 19, baseType: !160, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3342, file: !3343, line: 19, baseType: !160, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3342, file: !3343, line: 19, baseType: !160, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3342, file: !3343, line: 19, baseType: !160, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3342, file: !3343, line: 19, baseType: !160, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3342, file: !3343, line: 20, baseType: !160, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3342, file: !3343, line: 20, baseType: !160, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3342, file: !3343, line: 20, baseType: !160, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3342, file: !3343, line: 20, baseType: !160, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3342, file: !3343, line: 20, baseType: !160, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3342, file: !3343, line: 20, baseType: !160, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3337, file: !3338, line: 436, baseType: !119, size: 64, offset: 192)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3337, file: !3338, line: 440, baseType: !162, size: 16, offset: 256)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3337, file: !3338, line: 441, baseType: !162, size: 16, offset: 272)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3337, file: !3338, line: 442, baseType: !162, size: 16, offset: 288)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3337, file: !3338, line: 443, baseType: !162, size: 16, offset: 304)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3337, file: !3338, line: 447, baseType: !119, size: 64, offset: 320)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3337, file: !3338, line: 448, baseType: !119, size: 64, offset: 384)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3337, file: !3338, line: 459, baseType: !3366, size: 256, offset: 448)
!3366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3367, size: 256, elements: !595)
!3367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3368, size: 64)
!3368 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3338, line: 428, flags: DIFlagFwdDecl)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3337, file: !3338, line: 461, baseType: !119, size: 64, offset: 704)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3337, file: !3338, line: 463, baseType: !119, size: 64, offset: 768)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3337, file: !3338, line: 465, baseType: !119, size: 64, offset: 832)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3337, file: !3338, line: 466, baseType: !119, size: 64, offset: 896)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3337, file: !3338, line: 467, baseType: !119, size: 64, offset: 960)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3337, file: !3338, line: 473, baseType: !3375, size: 64, offset: 1024)
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3376, size: 64)
!3376 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3338, line: 10, flags: DIFlagFwdDecl)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3337, file: !3338, line: 480, baseType: !119, size: 64, offset: 1088)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3337, file: !3338, line: 482, baseType: !13, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3337, file: !3338, line: 491, baseType: !122, size: 32, offset: 1184)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3337, file: !3338, line: 501, baseType: !3381, size: 33792, offset: 1536)
!3381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3382, line: 448, size: 33792, elements: !3383)
!3382 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3383 = !{!3384, !3385, !3386, !3548, !3549, !3555, !3556}
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3381, file: !3382, line: 461, baseType: !13, size: 32)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3381, file: !3382, line: 468, baseType: !119, size: 64, offset: 64)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3381, file: !3382, line: 476, baseType: !3387, size: 64, offset: 128)
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3388, size: 64)
!3388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3382, line: 356, size: 33280, align: 512, elements: !3389)
!3389 = !{!3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3388, file: !3382, line: 358, baseType: !13, size: 32)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3388, file: !3382, line: 361, baseType: !13, size: 32, offset: 32)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3388, file: !3382, line: 364, baseType: !191, size: 64, offset: 64)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3388, file: !3382, line: 367, baseType: !191, size: 64, offset: 128)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3388, file: !3382, line: 370, baseType: !191, size: 64, offset: 192)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3388, file: !3382, line: 373, baseType: !13, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3388, file: !3382, line: 376, baseType: !13, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3388, file: !3382, line: 391, baseType: !13, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3388, file: !3382, line: 394, baseType: !13, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3388, file: !3382, line: 397, baseType: !3400, size: 32768, offset: 512)
!3400 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3382, line: 348, size: 32768, elements: !3401)
!3401 = !{!3402, !3417, !3454, !3531, !3544}
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3400, file: !3382, line: 349, baseType: !3403, size: 896)
!3403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3382, line: 12, size: 896, elements: !3404)
!3404 = !{!3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3416}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3403, file: !3382, line: 13, baseType: !122, size: 32)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3403, file: !3382, line: 14, baseType: !122, size: 32, offset: 32)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3403, file: !3382, line: 15, baseType: !122, size: 32, offset: 64)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3403, file: !3382, line: 16, baseType: !122, size: 32, offset: 96)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3403, file: !3382, line: 17, baseType: !122, size: 32, offset: 128)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3403, file: !3382, line: 18, baseType: !122, size: 32, offset: 160)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3403, file: !3382, line: 19, baseType: !122, size: 32, offset: 192)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3403, file: !3382, line: 22, baseType: !3413, size: 640, offset: 224)
!3413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 640, elements: !3414)
!3414 = !{!3415}
!3415 = !DISubrange(count: 20)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3403, file: !3382, line: 25, baseType: !122, size: 32, offset: 864)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3400, file: !3382, line: 350, baseType: !3418, size: 4096, align: 128)
!3418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3382, line: 34, size: 4096, align: 128, elements: !3419)
!3419 = !{!3420, !3421, !3422, !3423, !3424, !3439, !3440, !3441, !3443, !3445, !3449}
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3418, file: !3382, line: 35, baseType: !160, size: 16)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3418, file: !3382, line: 36, baseType: !160, size: 16, offset: 16)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3418, file: !3382, line: 37, baseType: !160, size: 16, offset: 32)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3418, file: !3382, line: 38, baseType: !160, size: 16, offset: 48)
!3424 = !DIDerivedType(tag: DW_TAG_member, scope: !3418, file: !3382, line: 39, baseType: !3425, size: 128, offset: 64)
!3425 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3418, file: !3382, line: 39, size: 128, elements: !3426)
!3426 = !{!3427, !3432}
!3427 = !DIDerivedType(tag: DW_TAG_member, scope: !3425, file: !3382, line: 40, baseType: !3428, size: 128)
!3428 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3425, file: !3382, line: 40, size: 128, elements: !3429)
!3429 = !{!3430, !3431}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3428, file: !3382, line: 41, baseType: !191, size: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3428, file: !3382, line: 42, baseType: !191, size: 64, offset: 64)
!3432 = !DIDerivedType(tag: DW_TAG_member, scope: !3425, file: !3382, line: 44, baseType: !3433, size: 128)
!3433 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3425, file: !3382, line: 44, size: 128, elements: !3434)
!3434 = !{!3435, !3436, !3437, !3438}
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3433, file: !3382, line: 45, baseType: !122, size: 32)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3433, file: !3382, line: 46, baseType: !122, size: 32, offset: 32)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3433, file: !3382, line: 47, baseType: !122, size: 32, offset: 64)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3433, file: !3382, line: 48, baseType: !122, size: 32, offset: 96)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3418, file: !3382, line: 51, baseType: !122, size: 32, offset: 192)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3418, file: !3382, line: 52, baseType: !122, size: 32, offset: 224)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3418, file: !3382, line: 55, baseType: !3442, size: 1024, offset: 256)
!3442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 1024, elements: !1626)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3418, file: !3382, line: 58, baseType: !3444, size: 2048, offset: 1280)
!3444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 2048, elements: !2985)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3418, file: !3382, line: 60, baseType: !3446, size: 384, offset: 3328)
!3446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 384, elements: !3447)
!3447 = !{!3448}
!3448 = !DISubrange(count: 12)
!3449 = !DIDerivedType(tag: DW_TAG_member, scope: !3418, file: !3382, line: 62, baseType: !3450, size: 384, offset: 3712)
!3450 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3418, file: !3382, line: 62, size: 384, elements: !3451)
!3451 = !{!3452, !3453}
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3450, file: !3382, line: 63, baseType: !3446, size: 384)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3450, file: !3382, line: 64, baseType: !3446, size: 384)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3400, file: !3382, line: 351, baseType: !3455, size: 1088)
!3455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3382, line: 79, size: 1088, elements: !3456)
!3456 = !{!3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3530}
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3455, file: !3382, line: 80, baseType: !122, size: 32)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3455, file: !3382, line: 81, baseType: !122, size: 32, offset: 32)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3455, file: !3382, line: 82, baseType: !122, size: 32, offset: 64)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3455, file: !3382, line: 83, baseType: !122, size: 32, offset: 96)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3455, file: !3382, line: 84, baseType: !122, size: 32, offset: 128)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3455, file: !3382, line: 85, baseType: !122, size: 32, offset: 160)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3455, file: !3382, line: 86, baseType: !122, size: 32, offset: 192)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3455, file: !3382, line: 88, baseType: !3413, size: 640, offset: 224)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3455, file: !3382, line: 89, baseType: !306, size: 8, offset: 864)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3455, file: !3382, line: 90, baseType: !306, size: 8, offset: 872)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3455, file: !3382, line: 91, baseType: !306, size: 8, offset: 880)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3455, file: !3382, line: 92, baseType: !306, size: 8, offset: 888)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3455, file: !3382, line: 93, baseType: !306, size: 8, offset: 896)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3455, file: !3382, line: 94, baseType: !306, size: 8, offset: 904)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3455, file: !3382, line: 95, baseType: !3472, size: 64, offset: 960)
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64)
!3473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3474, line: 11, size: 128, elements: !3475)
!3474 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3475 = !{!3476, !3477}
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3473, file: !3474, line: 12, baseType: !1112, size: 64)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3473, file: !3474, line: 13, baseType: !3478, size: 64, offset: 64)
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3479, size: 64)
!3479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3480, line: 103, size: 1344, elements: !3481)
!3480 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3481 = !{!3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3510, !3511, !3512}
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3479, file: !3480, line: 109, baseType: !119, size: 64)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3479, file: !3480, line: 110, baseType: !119, size: 64, offset: 64)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3479, file: !3480, line: 111, baseType: !119, size: 64, offset: 128)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3479, file: !3480, line: 112, baseType: !119, size: 64, offset: 192)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3479, file: !3480, line: 113, baseType: !119, size: 64, offset: 256)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3479, file: !3480, line: 114, baseType: !119, size: 64, offset: 320)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3479, file: !3480, line: 117, baseType: !119, size: 64, offset: 384)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3479, file: !3480, line: 118, baseType: !119, size: 64, offset: 448)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3479, file: !3480, line: 119, baseType: !119, size: 64, offset: 512)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3479, file: !3480, line: 120, baseType: !119, size: 64, offset: 576)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3479, file: !3480, line: 121, baseType: !119, size: 64, offset: 640)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3479, file: !3480, line: 122, baseType: !119, size: 64, offset: 704)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3479, file: !3480, line: 123, baseType: !119, size: 64, offset: 768)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3479, file: !3480, line: 124, baseType: !119, size: 64, offset: 832)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3479, file: !3480, line: 125, baseType: !119, size: 64, offset: 896)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3479, file: !3480, line: 139, baseType: !119, size: 64, offset: 960)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3479, file: !3480, line: 142, baseType: !119, size: 64, offset: 1024)
!3499 = !DIDerivedType(tag: DW_TAG_member, scope: !3479, file: !3480, line: 144, baseType: !3500, size: 64, offset: 1088)
!3500 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3479, file: !3480, line: 144, size: 64, elements: !3501)
!3501 = !{!3502, !3503, !3504}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3500, file: !3480, line: 146, baseType: !160, size: 16)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3500, file: !3480, line: 148, baseType: !191, size: 64)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3500, file: !3480, line: 150, baseType: !3505, size: 64)
!3505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3480, line: 59, size: 64, elements: !3506)
!3506 = !{!3507, !3508, !3509}
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3505, file: !3480, line: 61, baseType: !191, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3505, file: !3480, line: 63, baseType: !191, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3505, file: !3480, line: 65, baseType: !191, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3479, file: !3480, line: 153, baseType: !119, size: 64, offset: 1152)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3479, file: !3480, line: 154, baseType: !119, size: 64, offset: 1216)
!3512 = !DIDerivedType(tag: DW_TAG_member, scope: !3479, file: !3480, line: 156, baseType: !3513, size: 64, offset: 1280)
!3513 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3479, file: !3480, line: 156, size: 64, elements: !3514)
!3514 = !{!3515, !3516, !3517}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3513, file: !3480, line: 158, baseType: !160, size: 16)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3513, file: !3480, line: 160, baseType: !191, size: 64)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3513, file: !3480, line: 162, baseType: !3518, size: 64)
!3518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3480, line: 69, size: 64, elements: !3519)
!3519 = !{!3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529}
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3518, file: !3480, line: 71, baseType: !191, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3518, file: !3480, line: 73, baseType: !191, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3518, file: !3480, line: 75, baseType: !191, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3518, file: !3480, line: 77, baseType: !191, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3518, file: !3480, line: 80, baseType: !191, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3518, file: !3480, line: 83, baseType: !191, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3518, file: !3480, line: 86, baseType: !191, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3518, file: !3480, line: 88, baseType: !191, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3518, file: !3480, line: 93, baseType: !191, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3518, file: !3480, line: 100, baseType: !191, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3455, file: !3382, line: 96, baseType: !122, size: 32, offset: 1024)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3400, file: !3382, line: 352, baseType: !3532, size: 4608, align: 512)
!3532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3382, line: 333, size: 4608, align: 512, elements: !3533)
!3533 = !{!3534, !3535, !3542}
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3532, file: !3382, line: 334, baseType: !3418, size: 4096, align: 128)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3532, file: !3382, line: 335, baseType: !3536, size: 512, offset: 4096)
!3536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3382, line: 312, size: 512, elements: !3537)
!3537 = !{!3538, !3539, !3540}
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3536, file: !3382, line: 313, baseType: !191, size: 64)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3536, file: !3382, line: 314, baseType: !191, size: 64, offset: 64)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3536, file: !3382, line: 315, baseType: !3541, size: 384, offset: 128)
!3541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 384, elements: !814)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3532, file: !3382, line: 336, baseType: !3543, offset: 4608)
!3543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !306, elements: !920)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3400, file: !3382, line: 353, baseType: !3545, size: 32768)
!3545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !306, size: 32768, elements: !3546)
!3546 = !{!3547}
!3547 = !DISubrange(count: 4096)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3381, file: !3382, line: 484, baseType: !3387, size: 64, offset: 192)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3381, file: !3382, line: 491, baseType: !3550, size: 128, offset: 256)
!3550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3382, line: 404, size: 128, elements: !3551)
!3551 = !{!3552, !3553, !3554}
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3550, file: !3382, line: 424, baseType: !191, size: 64)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3550, file: !3382, line: 432, baseType: !13, size: 32, offset: 64)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3550, file: !3382, line: 440, baseType: !13, size: 32, offset: 96)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3381, file: !3382, line: 498, baseType: !3550, size: 128, offset: 384)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3381, file: !3382, line: 508, baseType: !3388, size: 33280, align: 512, offset: 512)
!3557 = !{!0, !3558, !7, !3563, !3565, !3568}
!3558 = !DIGlobalVariableExpression(var: !3559, expr: !DIExpression())
!3559 = distinct !DIGlobalVariable(scope: null, file: !2, line: 63, type: !3560, isLocal: true, isDefinition: true)
!3560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !3561)
!3561 = !{!3562}
!3562 = !DISubrange(count: 46)
!3563 = !DIGlobalVariableExpression(var: !3564, expr: !DIExpression())
!3564 = distinct !DIGlobalVariable(name: "proc_self_inode_operations", scope: !9, file: !2, line: 30, type: !1013, isLocal: true, isDefinition: true)
!3565 = !DIGlobalVariableExpression(var: !3566, expr: !DIExpression())
!3566 = distinct !DIGlobalVariable(scope: null, file: !2, line: 25, type: !3567, isLocal: true, isDefinition: true)
!3567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !574)
!3568 = !DIGlobalVariableExpression(var: !3569, expr: !DIExpression())
!3569 = distinct !DIGlobalVariable(scope: null, file: !97, line: 480, type: !3570, isLocal: true, isDefinition: true)
!3570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !3571)
!3571 = !{!3572}
!3572 = !DISubrange(count: 21)
!3573 = !{i32 7, !"Dwarf Version", i32 5}
!3574 = !{i32 2, !"Debug Info Version", i32 3}
!3575 = !{i32 1, !"wchar_size", i32 2}
!3576 = !{i32 8, !"cf-protection-branch", i32 1}
!3577 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3578 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!3579 = !{i32 1, !"Code Model", i32 2}
!3580 = !{i32 1, !"override-stack-alignment", i32 8}
!3581 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!3582 = distinct !DISubprogram(name: "proc_setup_self", scope: !2, file: !2, line: 36, type: !1292, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3583)
!3583 = !{!3584, !3585, !3586, !3596, !3597, !3598}
!3584 = !DILocalVariable(name: "s", arg: 1, scope: !3582, file: !2, line: 36, type: !1203)
!3585 = !DILocalVariable(name: "root_inode", scope: !3582, file: !2, line: 38, type: !997)
!3586 = !DILocalVariable(name: "fs_info", scope: !3582, file: !2, line: 39, type: !3587)
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "proc_fs_info", file: !81, line: 61, size: 320, elements: !3589)
!3589 = !{!3590, !3591, !3592, !3593, !3594, !3595}
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns", scope: !3588, file: !81, line: 62, baseType: !612, size: 64)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "proc_self", scope: !3588, file: !81, line: 63, baseType: !962, size: 64, offset: 64)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "proc_thread_self", scope: !3588, file: !81, line: 64, baseType: !962, size: 64, offset: 128)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "pid_gid", scope: !3588, file: !81, line: 65, baseType: !728, size: 32, offset: 192)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "hide_pid", scope: !3588, file: !81, line: 66, baseType: !80, size: 32, offset: 224)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "pidonly", scope: !3588, file: !81, line: 67, baseType: !87, size: 32, offset: 256)
!3596 = !DILocalVariable(name: "self", scope: !3582, file: !2, line: 40, type: !962)
!3597 = !DILocalVariable(name: "ret", scope: !3582, file: !2, line: 41, type: !140)
!3598 = !DILocalVariable(name: "inode", scope: !3599, file: !2, line: 46, type: !997)
!3599 = distinct !DILexicalBlock(scope: !3600, file: !2, line: 45, column: 12)
!3600 = distinct !DILexicalBlock(scope: !3582, file: !2, line: 45, column: 6)
!3601 = !DILocation(line: 36, column: 41, scope: !3582)
!3602 = !DILocation(line: 38, column: 2, scope: !3582)
!3603 = !DILocation(line: 38, column: 16, scope: !3582)
!3604 = !DILocation(line: 38, column: 37, scope: !3582)
!3605 = !DILocation(line: 38, column: 40, scope: !3582)
!3606 = !DILocation(line: 38, column: 29, scope: !3582)
!3607 = !DILocation(line: 39, column: 2, scope: !3582)
!3608 = !DILocation(line: 39, column: 23, scope: !3582)
!3609 = !DILocation(line: 39, column: 46, scope: !3582)
!3610 = !DILocation(line: 39, column: 33, scope: !3582)
!3611 = !DILocation(line: 40, column: 2, scope: !3582)
!3612 = !DILocation(line: 40, column: 17, scope: !3582)
!3613 = !DILocation(line: 41, column: 2, scope: !3582)
!3614 = !DILocation(line: 41, column: 6, scope: !3582)
!3615 = !DILocation(line: 43, column: 13, scope: !3582)
!3616 = !DILocation(line: 43, column: 2, scope: !3582)
!3617 = !DILocation(line: 44, column: 22, scope: !3582)
!3618 = !DILocation(line: 44, column: 25, scope: !3582)
!3619 = !DILocation(line: 44, column: 9, scope: !3582)
!3620 = !DILocation(line: 44, column: 7, scope: !3582)
!3621 = !DILocation(line: 45, column: 6, scope: !3600)
!3622 = !DILocation(line: 45, column: 6, scope: !3582)
!3623 = !DILocation(line: 46, column: 3, scope: !3599)
!3624 = !DILocation(line: 46, column: 17, scope: !3599)
!3625 = !DILocation(line: 46, column: 35, scope: !3599)
!3626 = !DILocation(line: 46, column: 25, scope: !3599)
!3627 = !DILocation(line: 47, column: 7, scope: !3628)
!3628 = distinct !DILexicalBlock(scope: !3599, file: !2, line: 47, column: 7)
!3629 = !DILocation(line: 47, column: 7, scope: !3599)
!3630 = !DILocation(line: 48, column: 19, scope: !3631)
!3631 = distinct !DILexicalBlock(scope: !3628, file: !2, line: 47, column: 14)
!3632 = !DILocation(line: 48, column: 4, scope: !3631)
!3633 = !DILocation(line: 48, column: 11, scope: !3631)
!3634 = !DILocation(line: 48, column: 17, scope: !3631)
!3635 = !DILocation(line: 49, column: 4, scope: !3631)
!3636 = !DILocation(line: 49, column: 11, scope: !3631)
!3637 = !DILocation(line: 49, column: 21, scope: !3631)
!3638 = !DILocation(line: 49, column: 28, scope: !3631)
!3639 = !DILocation(line: 49, column: 38, scope: !3631)
!3640 = !DILocation(line: 49, column: 62, scope: !3631)
!3641 = !DILocation(line: 49, column: 36, scope: !3631)
!3642 = !DILocation(line: 50, column: 4, scope: !3631)
!3643 = !DILocation(line: 50, column: 11, scope: !3631)
!3644 = !DILocation(line: 50, column: 18, scope: !3631)
!3645 = !DILocation(line: 51, column: 4, scope: !3631)
!3646 = !DILocation(line: 51, column: 11, scope: !3631)
!3647 = !DILocation(line: 51, column: 19, scope: !3631)
!3648 = !DILocation(line: 52, column: 4, scope: !3631)
!3649 = !DILocation(line: 52, column: 11, scope: !3631)
!3650 = !DILocation(line: 52, column: 19, scope: !3631)
!3651 = !DILocation(line: 53, column: 4, scope: !3631)
!3652 = !DILocation(line: 53, column: 11, scope: !3631)
!3653 = !DILocation(line: 53, column: 16, scope: !3631)
!3654 = !DILocation(line: 54, column: 10, scope: !3631)
!3655 = !DILocation(line: 54, column: 16, scope: !3631)
!3656 = !DILocation(line: 54, column: 4, scope: !3631)
!3657 = !DILocation(line: 55, column: 8, scope: !3631)
!3658 = !DILocation(line: 56, column: 3, scope: !3631)
!3659 = !DILocation(line: 57, column: 9, scope: !3660)
!3660 = distinct !DILexicalBlock(scope: !3628, file: !2, line: 56, column: 10)
!3661 = !DILocation(line: 57, column: 4, scope: !3660)
!3662 = !DILocation(line: 59, column: 2, scope: !3600)
!3663 = !DILocation(line: 59, column: 2, scope: !3599)
!3664 = !DILocation(line: 60, column: 15, scope: !3582)
!3665 = !DILocation(line: 60, column: 2, scope: !3582)
!3666 = !DILocation(line: 62, column: 6, scope: !3667)
!3667 = distinct !DILexicalBlock(scope: !3582, file: !2, line: 62, column: 6)
!3668 = !DILocation(line: 62, column: 6, scope: !3582)
!3669 = !DILocation(line: 63, column: 3, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !3667, file: !2, line: 63, column: 3)
!3671 = !DILocation(line: 63, column: 3, scope: !3672)
!3672 = distinct !DILexicalBlock(scope: !3670, file: !2, line: 63, column: 3)
!3673 = !DILocation(line: 63, column: 3, scope: !3667)
!3674 = !DILocation(line: 65, column: 24, scope: !3667)
!3675 = !DILocation(line: 65, column: 3, scope: !3667)
!3676 = !DILocation(line: 65, column: 12, scope: !3667)
!3677 = !DILocation(line: 65, column: 22, scope: !3667)
!3678 = !DILocation(line: 67, column: 9, scope: !3582)
!3679 = !DILocation(line: 68, column: 1, scope: !3582)
!3680 = !DILocation(line: 67, column: 2, scope: !3582)
!3681 = distinct !DISubprogram(name: "d_inode", scope: !964, file: !964, line: 514, type: !3682, scopeLine: 515, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3684)
!3682 = !DISubroutineType(types: !3683)
!3683 = !{!997, !1654}
!3684 = !{!3685}
!3685 = !DILocalVariable(name: "dentry", arg: 1, scope: !3681, file: !964, line: 514, type: !1654)
!3686 = !DILocation(line: 514, column: 58, scope: !3681)
!3687 = !DILocation(line: 516, column: 9, scope: !3681)
!3688 = !DILocation(line: 516, column: 17, scope: !3681)
!3689 = !DILocation(line: 516, column: 2, scope: !3681)
!3690 = distinct !DISubprogram(name: "proc_sb_info", scope: !81, file: !81, line: 70, type: !3691, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3693)
!3691 = !DISubroutineType(types: !3692)
!3692 = !{!3587, !1203}
!3693 = !{!3694}
!3694 = !DILocalVariable(name: "sb", arg: 1, scope: !3690, file: !81, line: 70, type: !1203)
!3695 = !DILocation(line: 70, column: 69, scope: !3690)
!3696 = !DILocation(line: 72, column: 9, scope: !3690)
!3697 = !DILocation(line: 72, column: 13, scope: !3690)
!3698 = !DILocation(line: 72, column: 2, scope: !3690)
!3699 = distinct !DISubprogram(name: "inode_lock", scope: !70, file: !70, line: 802, type: !1263, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3700)
!3700 = !{!3701}
!3701 = !DILocalVariable(name: "inode", arg: 1, scope: !3699, file: !70, line: 802, type: !997)
!3702 = !DILocation(line: 802, column: 45, scope: !3699)
!3703 = !DILocation(line: 804, column: 14, scope: !3699)
!3704 = !DILocation(line: 804, column: 21, scope: !3699)
!3705 = !DILocation(line: 804, column: 2, scope: !3699)
!3706 = !DILocation(line: 805, column: 1, scope: !3699)
!3707 = !DISubprogram(name: "d_alloc_name", scope: !70, file: !70, line: 3181, type: !3708, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3708 = !DISubroutineType(types: !3709)
!3709 = !{!962, !962, !662}
!3710 = !DISubprogram(name: "new_inode", scope: !70, file: !70, line: 2932, type: !1259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3711 = !DISubprogram(name: "inode_set_ctime_current", scope: !70, file: !70, line: 1515, type: !3712, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3712 = !DISubroutineType(types: !3713)
!3713 = !{!1108, !997}
!3714 = !DISubprogram(name: "d_add", scope: !964, file: !964, line: 269, type: !1678, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3715 = !DISubprogram(name: "dput", scope: !964, file: !964, line: 368, type: !1673, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3716 = distinct !DISubprogram(name: "inode_unlock", scope: !70, file: !70, line: 807, type: !1263, scopeLine: 808, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3717)
!3717 = !{!3718}
!3718 = !DILocalVariable(name: "inode", arg: 1, scope: !3716, file: !70, line: 807, type: !997)
!3719 = !DILocation(line: 807, column: 47, scope: !3716)
!3720 = !DILocation(line: 809, column: 12, scope: !3716)
!3721 = !DILocation(line: 809, column: 19, scope: !3716)
!3722 = !DILocation(line: 809, column: 2, scope: !3716)
!3723 = !DILocation(line: 810, column: 1, scope: !3716)
!3724 = !DISubprogram(name: "_printk", scope: !3725, file: !3725, line: 153, type: !3726, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3725 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!3726 = !DISubroutineType(types: !3727)
!3727 = !{!140, !662, null}
!3728 = distinct !DISubprogram(name: "proc_self_init", scope: !2, file: !2, line: 70, type: !2982, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!3729 = !DILocation(line: 72, column: 2, scope: !3728)
!3730 = !DILocation(line: 73, column: 1, scope: !3728)
!3731 = !DISubprogram(name: "proc_alloc_inum", scope: !659, file: !659, line: 53, type: !3732, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3732 = !DISubroutineType(types: !3733)
!3733 = !{!140, !1608}
!3734 = !DISubprogram(name: "down_write", scope: !769, file: !769, line: 187, type: !3735, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3735 = !DISubroutineType(types: !3736)
!3736 = !{null, !3737}
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!3738 = distinct !DISubprogram(name: "proc_self_get_link", scope: !2, file: !2, line: 11, type: !1022, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3739)
!3739 = !{!3740, !3741, !3742, !3743, !3744, !3745}
!3740 = !DILocalVariable(name: "dentry", arg: 1, scope: !3738, file: !2, line: 11, type: !962)
!3741 = !DILocalVariable(name: "inode", arg: 2, scope: !3738, file: !2, line: 12, type: !997)
!3742 = !DILocalVariable(name: "done", arg: 3, scope: !3738, file: !2, line: 13, type: !1024)
!3743 = !DILocalVariable(name: "ns", scope: !3738, file: !2, line: 15, type: !612)
!3744 = !DILocalVariable(name: "tgid", scope: !3738, file: !2, line: 16, type: !2738)
!3745 = !DILocalVariable(name: "name", scope: !3738, file: !2, line: 17, type: !838)
!3746 = !DILocation(line: 11, column: 54, scope: !3738)
!3747 = !DILocation(line: 12, column: 25, scope: !3738)
!3748 = !DILocation(line: 13, column: 32, scope: !3738)
!3749 = !DILocation(line: 15, column: 2, scope: !3738)
!3750 = !DILocation(line: 15, column: 24, scope: !3738)
!3751 = !DILocation(line: 15, column: 41, scope: !3738)
!3752 = !DILocation(line: 15, column: 48, scope: !3738)
!3753 = !DILocation(line: 15, column: 29, scope: !3738)
!3754 = !DILocation(line: 16, column: 2, scope: !3738)
!3755 = !DILocation(line: 16, column: 8, scope: !3738)
!3756 = !DILocation(line: 16, column: 31, scope: !3738)
!3757 = !DILocation(line: 16, column: 40, scope: !3738)
!3758 = !DILocation(line: 16, column: 15, scope: !3738)
!3759 = !DILocation(line: 17, column: 2, scope: !3738)
!3760 = !DILocation(line: 17, column: 8, scope: !3738)
!3761 = !DILocation(line: 19, column: 7, scope: !3762)
!3762 = distinct !DILexicalBlock(scope: !3738, file: !2, line: 19, column: 6)
!3763 = !DILocation(line: 19, column: 6, scope: !3738)
!3764 = !DILocation(line: 20, column: 10, scope: !3762)
!3765 = !DILocation(line: 20, column: 3, scope: !3762)
!3766 = !DILocation(line: 22, column: 25, scope: !3738)
!3767 = !DILocation(line: 22, column: 9, scope: !3738)
!3768 = !DILocation(line: 22, column: 7, scope: !3738)
!3769 = !DILocation(line: 23, column: 6, scope: !3770)
!3770 = distinct !DILexicalBlock(scope: !3738, file: !2, line: 23, column: 6)
!3771 = !DILocation(line: 23, column: 6, scope: !3738)
!3772 = !DILocation(line: 24, column: 10, scope: !3770)
!3773 = !DILocation(line: 24, column: 19, scope: !3770)
!3774 = !DILocation(line: 24, column: 38, scope: !3770)
!3775 = !DILocation(line: 24, column: 3, scope: !3770)
!3776 = !DILocation(line: 25, column: 10, scope: !3738)
!3777 = !DILocation(line: 25, column: 22, scope: !3738)
!3778 = !DILocation(line: 25, column: 2, scope: !3738)
!3779 = !DILocation(line: 26, column: 19, scope: !3738)
!3780 = !DILocation(line: 26, column: 37, scope: !3738)
!3781 = !DILocation(line: 26, column: 2, scope: !3738)
!3782 = !DILocation(line: 27, column: 9, scope: !3738)
!3783 = !DILocation(line: 27, column: 2, scope: !3738)
!3784 = !DILocation(line: 28, column: 1, scope: !3738)
!3785 = distinct !DISubprogram(name: "proc_pid_ns", scope: !81, file: !81, line: 239, type: !3786, scopeLine: 240, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3788)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{!612, !1203}
!3788 = !{!3789}
!3789 = !DILocalVariable(name: "sb", arg: 1, scope: !3785, file: !81, line: 239, type: !1203)
!3790 = !DILocation(line: 239, column: 69, scope: !3785)
!3791 = !DILocation(line: 241, column: 22, scope: !3785)
!3792 = !DILocation(line: 241, column: 9, scope: !3785)
!3793 = !DILocation(line: 241, column: 27, scope: !3785)
!3794 = !DILocation(line: 241, column: 2, scope: !3785)
!3795 = distinct !DISubprogram(name: "task_tgid_nr_ns", scope: !112, file: !112, line: 1637, type: !3796, scopeLine: 1638, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3798)
!3796 = !DISubroutineType(types: !3797)
!3797 = !{!2738, !110, !612}
!3798 = !{!3799, !3800}
!3799 = !DILocalVariable(name: "tsk", arg: 1, scope: !3795, file: !112, line: 1637, type: !110)
!3800 = !DILocalVariable(name: "ns", arg: 2, scope: !3795, file: !112, line: 1637, type: !612)
!3801 = !DILocation(line: 1637, column: 57, scope: !3795)
!3802 = !DILocation(line: 1637, column: 84, scope: !3795)
!3803 = !DILocation(line: 1639, column: 26, scope: !3795)
!3804 = !DILocation(line: 1639, column: 45, scope: !3795)
!3805 = !DILocation(line: 1639, column: 9, scope: !3795)
!3806 = !DILocation(line: 1639, column: 2, scope: !3795)
!3807 = distinct !DISubprogram(name: "get_current", scope: !3808, file: !3808, line: 39, type: !3809, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3811)
!3808 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!3809 = !DISubroutineType(types: !3810)
!3810 = !{!110}
!3811 = !{!3812, !3814, !3818}
!3812 = !DILocalVariable(name: "pscr_ret__", scope: !3813, file: !3808, line: 41, type: !110)
!3813 = distinct !DILexicalBlock(scope: !3807, file: !3808, line: 41, column: 9)
!3814 = !DILocalVariable(name: "__vpp_verify", scope: !3815, file: !3808, line: 41, type: !3816)
!3815 = distinct !DILexicalBlock(scope: !3813, file: !3808, line: 41, column: 9)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3818 = !DILocalVariable(name: "pfo_val__", scope: !3819, file: !3808, line: 41, type: !191)
!3819 = distinct !DILexicalBlock(scope: !3813, file: !3808, line: 41, column: 9)
!3820 = !DILocation(line: 41, column: 9, scope: !3813)
!3821 = !DILocation(line: 41, column: 9, scope: !3815)
!3822 = !DILocation(line: 41, column: 9, scope: !3819)
!3823 = !{i64 2148190900}
!3824 = !DILocation(line: 41, column: 9, scope: !3807)
!3825 = !DILocation(line: 41, column: 2, scope: !3807)
!3826 = distinct !DISubprogram(name: "ERR_PTR", scope: !3827, file: !3827, line: 39, type: !3828, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3830)
!3827 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!3828 = !DISubroutineType(types: !3829)
!3829 = !{!129, !1112}
!3830 = !{!3831}
!3831 = !DILocalVariable(name: "error", arg: 1, scope: !3826, file: !3827, line: 39, type: !1112)
!3832 = !DILocation(line: 39, column: 48, scope: !3826)
!3833 = !DILocation(line: 41, column: 18, scope: !3826)
!3834 = !DILocation(line: 41, column: 9, scope: !3826)
!3835 = !DILocation(line: 41, column: 2, scope: !3826)
!3836 = distinct !DISubprogram(name: "kmalloc", scope: !97, file: !97, line: 591, type: !3837, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3839)
!3837 = !DISubroutineType(types: !3838)
!3838 = !{!129, !1154, !107}
!3839 = !{!3840, !3841, !3842}
!3840 = !DILocalVariable(name: "size", arg: 1, scope: !3836, file: !97, line: 591, type: !1154)
!3841 = !DILocalVariable(name: "flags", arg: 2, scope: !3836, file: !97, line: 591, type: !107)
!3842 = !DILocalVariable(name: "index", scope: !3843, file: !97, line: 594, type: !13)
!3843 = distinct !DILexicalBlock(scope: !3844, file: !97, line: 593, column: 42)
!3844 = distinct !DILexicalBlock(scope: !3836, file: !97, line: 593, column: 6)
!3845 = !DILocation(line: 591, column: 61, scope: !3836)
!3846 = !DILocation(line: 591, column: 73, scope: !3836)
!3847 = !DILocation(line: 593, column: 27, scope: !3844)
!3848 = !DILocation(line: 593, column: 6, scope: !3844)
!3849 = !DILocation(line: 593, column: 33, scope: !3844)
!3850 = !DILocation(line: 593, column: 36, scope: !3844)
!3851 = !DILocation(line: 593, column: 6, scope: !3836)
!3852 = !DILocation(line: 594, column: 3, scope: !3843)
!3853 = !DILocation(line: 594, column: 16, scope: !3843)
!3854 = !DILocation(line: 596, column: 7, scope: !3855)
!3855 = distinct !DILexicalBlock(scope: !3843, file: !97, line: 596, column: 7)
!3856 = !DILocation(line: 596, column: 12, scope: !3855)
!3857 = !DILocation(line: 596, column: 7, scope: !3843)
!3858 = !DILocation(line: 597, column: 25, scope: !3855)
!3859 = !DILocation(line: 597, column: 31, scope: !3855)
!3860 = !DILocation(line: 597, column: 11, scope: !3855)
!3861 = !DILocation(line: 597, column: 4, scope: !3855)
!3862 = !DILocation(line: 599, column: 11, scope: !3843)
!3863 = !DILocation(line: 599, column: 9, scope: !3843)
!3864 = !DILocation(line: 601, column: 33, scope: !3843)
!3865 = !DILocation(line: 601, column: 40, scope: !3843)
!3866 = !DILocation(line: 601, column: 20, scope: !3843)
!3867 = !DILocation(line: 601, column: 5, scope: !3843)
!3868 = !DILocation(line: 601, column: 51, scope: !3843)
!3869 = !DILocation(line: 602, column: 5, scope: !3843)
!3870 = !DILocation(line: 602, column: 12, scope: !3843)
!3871 = !DILocation(line: 600, column: 10, scope: !3843)
!3872 = !DILocation(line: 600, column: 3, scope: !3843)
!3873 = !DILocation(line: 603, column: 2, scope: !3844)
!3874 = !DILocation(line: 604, column: 19, scope: !3836)
!3875 = !DILocation(line: 604, column: 25, scope: !3836)
!3876 = !DILocation(line: 604, column: 9, scope: !3836)
!3877 = !DILocation(line: 604, column: 2, scope: !3836)
!3878 = !DILocation(line: 605, column: 1, scope: !3836)
!3879 = !DISubprogram(name: "sprintf", scope: !3880, file: !3880, line: 10, type: !3881, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3880 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!3881 = !DISubroutineType(types: !3882)
!3882 = !{!140, !838, !662, null}
!3883 = distinct !DISubprogram(name: "set_delayed_call", scope: !1026, file: !1026, line: 18, type: !3884, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3886)
!3884 = !DISubroutineType(types: !3885)
!3885 = !{null, !1024, !1029, !129}
!3886 = !{!3887, !3888, !3889}
!3887 = !DILocalVariable(name: "call", arg: 1, scope: !3883, file: !1026, line: 18, type: !1024)
!3888 = !DILocalVariable(name: "fn", arg: 2, scope: !3883, file: !1026, line: 19, type: !1029)
!3889 = !DILocalVariable(name: "arg", arg: 3, scope: !3883, file: !1026, line: 19, type: !129)
!3890 = !DILocation(line: 18, column: 58, scope: !3883)
!3891 = !DILocation(line: 19, column: 10, scope: !3883)
!3892 = !DILocation(line: 19, column: 29, scope: !3883)
!3893 = !DILocation(line: 21, column: 13, scope: !3883)
!3894 = !DILocation(line: 21, column: 2, scope: !3883)
!3895 = !DILocation(line: 21, column: 8, scope: !3883)
!3896 = !DILocation(line: 21, column: 11, scope: !3883)
!3897 = !DILocation(line: 22, column: 14, scope: !3883)
!3898 = !DILocation(line: 22, column: 2, scope: !3883)
!3899 = !DILocation(line: 22, column: 8, scope: !3883)
!3900 = !DILocation(line: 22, column: 12, scope: !3883)
!3901 = !DILocation(line: 23, column: 1, scope: !3883)
!3902 = !DISubprogram(name: "__task_pid_nr_ns", scope: !112, file: !112, line: 1578, type: !3903, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3903 = !DISubroutineType(types: !3904)
!3904 = !{!2738, !110, !61, !612}
!3905 = !DISubprogram(name: "kmalloc_large", scope: !97, file: !97, line: 531, type: !3837, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3906 = distinct !DISubprogram(name: "__kmalloc_index", scope: !97, file: !97, line: 444, type: !3907, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3909)
!3907 = !DISubroutineType(types: !3908)
!3908 = !{!13, !1154, !827}
!3909 = !{!3910, !3911}
!3910 = !DILocalVariable(name: "size", arg: 1, scope: !3906, file: !97, line: 444, type: !1154)
!3911 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !3906, file: !97, line: 445, type: !827)
!3912 = !DILocation(line: 444, column: 60, scope: !3906)
!3913 = !DILocation(line: 445, column: 16, scope: !3906)
!3914 = !DILocation(line: 447, column: 7, scope: !3915)
!3915 = distinct !DILexicalBlock(scope: !3906, file: !97, line: 447, column: 6)
!3916 = !DILocation(line: 447, column: 6, scope: !3906)
!3917 = !DILocation(line: 448, column: 3, scope: !3915)
!3918 = !DILocation(line: 450, column: 6, scope: !3919)
!3919 = distinct !DILexicalBlock(scope: !3906, file: !97, line: 450, column: 6)
!3920 = !DILocation(line: 450, column: 11, scope: !3919)
!3921 = !DILocation(line: 450, column: 6, scope: !3906)
!3922 = !DILocation(line: 451, column: 3, scope: !3919)
!3923 = !DILocation(line: 453, column: 32, scope: !3924)
!3924 = distinct !DILexicalBlock(scope: !3906, file: !97, line: 453, column: 6)
!3925 = !DILocation(line: 453, column: 37, scope: !3924)
!3926 = !DILocation(line: 453, column: 42, scope: !3924)
!3927 = !DILocation(line: 453, column: 45, scope: !3924)
!3928 = !DILocation(line: 453, column: 50, scope: !3924)
!3929 = !DILocation(line: 453, column: 6, scope: !3906)
!3930 = !DILocation(line: 454, column: 3, scope: !3924)
!3931 = !DILocation(line: 455, column: 32, scope: !3932)
!3932 = distinct !DILexicalBlock(scope: !3906, file: !97, line: 455, column: 6)
!3933 = !DILocation(line: 455, column: 37, scope: !3932)
!3934 = !DILocation(line: 455, column: 43, scope: !3932)
!3935 = !DILocation(line: 455, column: 46, scope: !3932)
!3936 = !DILocation(line: 455, column: 51, scope: !3932)
!3937 = !DILocation(line: 455, column: 6, scope: !3906)
!3938 = !DILocation(line: 456, column: 3, scope: !3932)
!3939 = !DILocation(line: 457, column: 6, scope: !3940)
!3940 = distinct !DILexicalBlock(scope: !3906, file: !97, line: 457, column: 6)
!3941 = !DILocation(line: 457, column: 11, scope: !3940)
!3942 = !DILocation(line: 457, column: 6, scope: !3906)
!3943 = !DILocation(line: 457, column: 26, scope: !3940)
!3944 = !DILocation(line: 458, column: 6, scope: !3945)
!3945 = distinct !DILexicalBlock(scope: !3906, file: !97, line: 458, column: 6)
!3946 = !DILocation(line: 458, column: 11, scope: !3945)
!3947 = !DILocation(line: 458, column: 6, scope: !3906)
!3948 = !DILocation(line: 458, column: 26, scope: !3945)
!3949 = !DILocation(line: 459, column: 6, scope: !3950)
!3950 = distinct !DILexicalBlock(scope: !3906, file: !97, line: 459, column: 6)
!3951 = !DILocation(line: 459, column: 11, scope: !3950)
!3952 = !DILocation(line: 459, column: 6, scope: !3906)
!3953 = !DILocation(line: 459, column: 26, scope: !3950)
!3954 = !DILocation(line: 460, column: 6, scope: !3955)
!3955 = distinct !DILexicalBlock(scope: !3906, file: !97, line: 460, column: 6)
!3956 = !DILocation(line: 460, column: 11, scope: !3955)
!3957 = !DILocation(line: 460, column: 6, scope: !3906)
!3958 = !DILocation(line: 460, column: 26, scope: !3955)
!3959 = !DILocation(line: 461, column: 6, scope: !3960)
!3960 = distinct !DILexicalBlock(scope: !3906, file: !97, line: 461, column: 6)
!3961 = !DILocation(line: 461, column: 11, scope: !3960)
!3962 = !DILocation(line: 461, column: 6, scope: !3906)
!3963 = !DILocation(line: 461, column: 26, scope: !3960)
!3964 = !DILocation(line: 462, column: 6, scope: !3965)
!3965 = distinct !DILexicalBlock(scope: !3906, file: !97, line: 462, column: 6)
!3966 = !DILocation(line: 462, column: 11, scope: !3965)
!3967 = !DILocation(line: 462, column: 6, scope: !3906)
!3968 = !DILocation(line: 462, column: 26, scope: !3965)
!3969 = !DILocation(line: 463, column: 6, scope: !3970)
!3970 = distinct !DILexicalBlock(scope: !3906, file: !97, line: 463, column: 6)
!3971 = !DILocation(line: 463, column: 11, scope: !3970)
!3972 = !DILocation(line: 463, column: 6, scope: !3906)
!3973 = !DILocation(line: 463, column: 26, scope: !3970)
!3974 = !DILocation(line: 464, column: 6, scope: !3975)
!3975 = distinct !DILexicalBlock(scope: !3906, file: !97, line: 464, column: 6)
!3976 = !DILocation(line: 464, column: 11, scope: !3975)
!3977 = !DILocation(line: 464, column: 6, scope: !3906)
!3978 = !DILocation(line: 464, column: 26, scope: !3975)
!3979 = !DILocation(line: 465, column: 6, scope: !3980)
!3980 = distinct !DILexicalBlock(scope: !3906, file: !97, line: 465, column: 6)
!3981 = !DILocation(line: 465, column: 11, scope: !3980)
!3982 = !DILocation(line: 465, column: 6, scope: !3906)
!3983 = !DILocation(line: 465, column: 26, scope: !3980)
!3984 = !DILocation(line: 466, column: 6, scope: !3985)
!3985 = distinct !DILexicalBlock(scope: !3906, file: !97, line: 466, column: 6)
!3986 = !DILocation(line: 466, column: 11, scope: !3985)
!3987 = !DILocation(line: 466, column: 6, scope: !3906)
!3988 = !DILocation(line: 466, column: 26, scope: !3985)
!3989 = !DILocation(line: 467, column: 6, scope: !3990)
!3990 = distinct !DILexicalBlock(scope: !3906, file: !97, line: 467, column: 6)
!3991 = !DILocation(line: 467, column: 11, scope: !3990)
!3992 = !DILocation(line: 467, column: 6, scope: !3906)
!3993 = !DILocation(line: 467, column: 26, scope: !3990)
!3994 = !DILocation(line: 468, column: 6, scope: !3995)
!3995 = distinct !DILexicalBlock(scope: !3906, file: !97, line: 468, column: 6)
!3996 = !DILocation(line: 468, column: 11, scope: !3995)
!3997 = !DILocation(line: 468, column: 6, scope: !3906)
!3998 = !DILocation(line: 468, column: 26, scope: !3995)
!3999 = !DILocation(line: 469, column: 6, scope: !4000)
!4000 = distinct !DILexicalBlock(scope: !3906, file: !97, line: 469, column: 6)
!4001 = !DILocation(line: 469, column: 11, scope: !4000)
!4002 = !DILocation(line: 469, column: 6, scope: !3906)
!4003 = !DILocation(line: 469, column: 26, scope: !4000)
!4004 = !DILocation(line: 470, column: 6, scope: !4005)
!4005 = distinct !DILexicalBlock(scope: !3906, file: !97, line: 470, column: 6)
!4006 = !DILocation(line: 470, column: 11, scope: !4005)
!4007 = !DILocation(line: 470, column: 6, scope: !3906)
!4008 = !DILocation(line: 470, column: 26, scope: !4005)
!4009 = !DILocation(line: 471, column: 6, scope: !4010)
!4010 = distinct !DILexicalBlock(scope: !3906, file: !97, line: 471, column: 6)
!4011 = !DILocation(line: 471, column: 11, scope: !4010)
!4012 = !DILocation(line: 471, column: 6, scope: !3906)
!4013 = !DILocation(line: 471, column: 26, scope: !4010)
!4014 = !DILocation(line: 472, column: 6, scope: !4015)
!4015 = distinct !DILexicalBlock(scope: !3906, file: !97, line: 472, column: 6)
!4016 = !DILocation(line: 472, column: 11, scope: !4015)
!4017 = !DILocation(line: 472, column: 6, scope: !3906)
!4018 = !DILocation(line: 472, column: 26, scope: !4015)
!4019 = !DILocation(line: 473, column: 6, scope: !4020)
!4020 = distinct !DILexicalBlock(scope: !3906, file: !97, line: 473, column: 6)
!4021 = !DILocation(line: 473, column: 11, scope: !4020)
!4022 = !DILocation(line: 473, column: 6, scope: !3906)
!4023 = !DILocation(line: 473, column: 26, scope: !4020)
!4024 = !DILocation(line: 474, column: 6, scope: !4025)
!4025 = distinct !DILexicalBlock(scope: !3906, file: !97, line: 474, column: 6)
!4026 = !DILocation(line: 474, column: 11, scope: !4025)
!4027 = !DILocation(line: 474, column: 6, scope: !3906)
!4028 = !DILocation(line: 474, column: 27, scope: !4025)
!4029 = !DILocation(line: 475, column: 6, scope: !4030)
!4030 = distinct !DILexicalBlock(scope: !3906, file: !97, line: 475, column: 6)
!4031 = !DILocation(line: 475, column: 11, scope: !4030)
!4032 = !DILocation(line: 475, column: 6, scope: !3906)
!4033 = !DILocation(line: 475, column: 32, scope: !4030)
!4034 = !DILocation(line: 477, column: 50, scope: !4035)
!4035 = distinct !DILexicalBlock(scope: !3906, file: !97, line: 477, column: 6)
!4036 = !{i8 0, i8 2}
!4037 = !DILocation(line: 477, column: 6, scope: !3906)
!4038 = !DILocation(line: 478, column: 3, scope: !4035)
!4039 = !DILocation(line: 478, column: 3, scope: !4040)
!4040 = distinct !DILexicalBlock(scope: !4041, file: !97, line: 478, column: 3)
!4041 = distinct !DILexicalBlock(scope: !4035, file: !97, line: 478, column: 3)
!4042 = !{i32 -2143070434}
!4043 = !DILocation(line: 478, column: 3, scope: !4041)
!4044 = !DILocation(line: 480, column: 3, scope: !4035)
!4045 = !DILocation(line: 480, column: 3, scope: !4046)
!4046 = distinct !DILexicalBlock(scope: !4035, file: !97, line: 480, column: 3)
!4047 = !DILocation(line: 480, column: 3, scope: !4048)
!4048 = distinct !DILexicalBlock(scope: !4046, file: !97, line: 480, column: 3)
!4049 = !DILocation(line: 480, column: 3, scope: !4050)
!4050 = distinct !DILexicalBlock(scope: !4046, file: !97, line: 480, column: 3)
!4051 = !{i64 2151897065, i64 2151897094, i64 2151897140, i64 2151897198, i64 2151897252, i64 2151897306, i64 2151897361, i64 2151897392}
!4052 = !DILocation(line: 483, column: 2, scope: !3906)
!4053 = !DILocation(line: 484, column: 1, scope: !3906)
!4054 = !DISubprogram(name: "kmalloc_trace", scope: !97, file: !97, line: 525, type: !4055, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4055 = !DISubroutineType(types: !4056)
!4056 = !{!129, !633, !107, !1154}
!4057 = distinct !DISubprogram(name: "kmalloc_type", scope: !97, file: !97, line: 401, type: !4058, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4060)
!4058 = !DISubroutineType(types: !4059)
!4059 = !{!96, !107, !119}
!4060 = !{!4061, !4062}
!4061 = !DILocalVariable(name: "flags", arg: 1, scope: !4057, file: !97, line: 401, type: !107)
!4062 = !DILocalVariable(name: "caller", arg: 2, scope: !4057, file: !97, line: 401, type: !119)
!4063 = !DILocation(line: 401, column: 67, scope: !4057)
!4064 = !DILocation(line: 401, column: 88, scope: !4057)
!4065 = !DILocation(line: 407, column: 6, scope: !4066)
!4066 = distinct !DILexicalBlock(scope: !4057, file: !97, line: 407, column: 6)
!4067 = !DILocation(line: 407, column: 6, scope: !4057)
!4068 = !DILocation(line: 413, column: 3, scope: !4066)
!4069 = !DILocation(line: 423, column: 38, scope: !4070)
!4070 = distinct !DILexicalBlock(scope: !4057, file: !97, line: 423, column: 6)
!4071 = !DILocation(line: 423, column: 44, scope: !4070)
!4072 = !DILocation(line: 423, column: 6, scope: !4057)
!4073 = !DILocation(line: 424, column: 3, scope: !4070)
!4074 = !DILocation(line: 426, column: 3, scope: !4075)
!4075 = distinct !DILexicalBlock(scope: !4057, file: !97, line: 425, column: 6)
!4076 = !DILocation(line: 429, column: 1, scope: !4057)
!4077 = !DISubprogram(name: "__kmalloc", scope: !97, file: !97, line: 488, type: !3837, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4078 = !DISubprogram(name: "__compiletime_assert_173", scope: !97, file: !97, line: 478, type: !2982, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!4079 = !DISubprogram(name: "up_write", scope: !769, file: !769, line: 203, type: !3735, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
