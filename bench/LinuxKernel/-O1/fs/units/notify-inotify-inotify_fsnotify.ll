; ModuleID = 'fs/notify/inotify/inotify_fsnotify.c'
source_filename = "fs/notify/inotify/inotify_fsnotify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsnotify_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fsnotify_mark = type { i32, %struct.refcount_struct, ptr, %struct.list_head, %struct.spinlock, %struct.hlist_node, ptr, i32, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.13, ptr }
%union.anon.13 = type { i64 }
%struct.anon.14 = type { i32, i32 }
%struct.inotify_inode_mark = type { %struct.fsnotify_mark, i32 }
%struct.fsnotify_group = type { ptr, %struct.refcount_struct, %struct.spinlock, %struct.list_head, %struct.wait_queue_head, i32, i32, i32, i8, i32, i32, %struct.mutex, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, %union.anon.15 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.15 = type { %struct.inotify_group_private_data }
%struct.inotify_group_private_data = type { %struct.spinlock, %struct.idr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.inotify_event_info = type { %struct.fsnotify_event, i32, i32, i32, i32, [0 x i8] }
%struct.fsnotify_event = type { %struct.list_head }

@inotify_fsnotify_ops = hidden constant %struct.fsnotify_ops { ptr null, ptr @inotify_handle_inode_event, ptr @inotify_free_group_priv, ptr @inotify_freeing_mark, ptr @inotify_free_event, ptr @inotify_free_mark }, align 8, !dbg !0
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !3527
@idr_callback.warned = internal global i8 0, align 1, !dbg !3532
@.str.1 = private unnamed_addr constant [94 x i8] c"inotify closing but id=%d for fsn_mark=%p in group=%p still in idr.  Probably leaking memory\0A\00", align 1, !dbg !3551
@.str.2 = private unnamed_addr constant [37 x i8] c"fs/notify/inotify/inotify_fsnotify.c\00", align 1, !dbg !3556
@.str.3 = private unnamed_addr constant [28 x i8] c"\014fsn_mark->group=%p wd=%d\0A\00", align 1, !dbg !3561
@inotify_inode_mark_cachep = external dso_local global ptr, align 8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @inotify_handle_inode_event(ptr noundef %inode_mark, i32 noundef %mask, ptr noundef %inode, ptr noundef %dir, ptr noundef %name, i32 noundef %cookie) #0 align 16 !dbg !3575 {
entry:
  %retval = alloca i32, align 4
  %inode_mark.addr = alloca ptr, align 8
  %mask.addr = alloca i32, align 4
  %inode.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %cookie.addr = alloca i32, align 4
  %i_mark = alloca ptr, align 8
  %event = alloca ptr, align 8
  %fsn_event = alloca ptr, align 8
  %group = alloca ptr, align 8
  %ret = alloca i32, align 4
  %len = alloca i32, align 4
  %wd = alloca i32, align 4
  %alloc_len = alloca i32, align 4
  %old_memcg = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  %tmp5 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %inode_mark, ptr %inode_mark.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode_mark.addr, metadata !3577, metadata !DIExpression()), !dbg !3594
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !3578, metadata !DIExpression()), !dbg !3595
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !3579, metadata !DIExpression()), !dbg !3596
  store ptr %dir, ptr %dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !3580, metadata !DIExpression()), !dbg !3597
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !3581, metadata !DIExpression()), !dbg !3598
  store i32 %cookie, ptr %cookie.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cookie.addr, metadata !3582, metadata !DIExpression()), !dbg !3599
  call void @llvm.lifetime.start.p0(i64 8, ptr %i_mark) #13, !dbg !3600
  call void @llvm.dbg.declare(metadata ptr %i_mark, metadata !3583, metadata !DIExpression()), !dbg !3601
  call void @llvm.lifetime.start.p0(i64 8, ptr %event) #13, !dbg !3602
  call void @llvm.dbg.declare(metadata ptr %event, metadata !3584, metadata !DIExpression()), !dbg !3603
  call void @llvm.lifetime.start.p0(i64 8, ptr %fsn_event) #13, !dbg !3604
  call void @llvm.dbg.declare(metadata ptr %fsn_event, metadata !3585, metadata !DIExpression()), !dbg !3605
  call void @llvm.lifetime.start.p0(i64 8, ptr %group) #13, !dbg !3606
  call void @llvm.dbg.declare(metadata ptr %group, metadata !3586, metadata !DIExpression()), !dbg !3607
  %0 = load ptr, ptr %inode_mark.addr, align 8, !dbg !3608
  %group1 = getelementptr inbounds %struct.fsnotify_mark, ptr %0, i32 0, i32 2, !dbg !3609
  %1 = load ptr, ptr %group1, align 8, !dbg !3609
  store ptr %1, ptr %group, align 8, !dbg !3607
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #13, !dbg !3610
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3587, metadata !DIExpression()), !dbg !3611
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #13, !dbg !3612
  call void @llvm.dbg.declare(metadata ptr %len, metadata !3588, metadata !DIExpression()), !dbg !3613
  store i32 0, ptr %len, align 4, !dbg !3613
  call void @llvm.lifetime.start.p0(i64 4, ptr %wd) #13, !dbg !3612
  call void @llvm.dbg.declare(metadata ptr %wd, metadata !3589, metadata !DIExpression()), !dbg !3614
  call void @llvm.lifetime.start.p0(i64 4, ptr %alloc_len) #13, !dbg !3615
  call void @llvm.dbg.declare(metadata ptr %alloc_len, metadata !3590, metadata !DIExpression()), !dbg !3616
  store i32 32, ptr %alloc_len, align 4, !dbg !3616
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_memcg) #13, !dbg !3617
  call void @llvm.dbg.declare(metadata ptr %old_memcg, metadata !3591, metadata !DIExpression()), !dbg !3618
  %2 = load ptr, ptr %name.addr, align 8, !dbg !3619
  %tobool = icmp ne ptr %2, null, !dbg !3619
  br i1 %tobool, label %if.then, label %if.end, !dbg !3621

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %name.addr, align 8, !dbg !3622
  %4 = getelementptr inbounds %struct.qstr, ptr %3, i32 0, i32 0, !dbg !3624
  %len2 = getelementptr inbounds %struct.anon.14, ptr %4, i32 0, i32 1, !dbg !3624
  %5 = load i32, ptr %len2, align 4, !dbg !3624
  store i32 %5, ptr %len, align 4, !dbg !3625
  %6 = load i32, ptr %len, align 4, !dbg !3626
  %add = add i32 %6, 1, !dbg !3627
  %7 = load i32, ptr %alloc_len, align 4, !dbg !3628
  %add3 = add i32 %7, %add, !dbg !3628
  store i32 %add3, ptr %alloc_len, align 4, !dbg !3628
  br label %if.end, !dbg !3629

if.end:                                           ; preds = %if.then, %entry
  store i32 0, ptr %tmp, align 4, !dbg !3630
  %8 = load i32, ptr %tmp, align 4, !dbg !3633
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !3634
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3592, metadata !DIExpression()), !dbg !3634
  %9 = load ptr, ptr %inode_mark.addr, align 8, !dbg !3634
  store ptr %9, ptr %__mptr, align 8, !dbg !3634
  %10 = load ptr, ptr %__mptr, align 8, !dbg !3634
  %add.ptr = getelementptr i8, ptr %10, i64 0, !dbg !3634
  store ptr %add.ptr, ptr %tmp4, align 8, !dbg !3634
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !3635
  %11 = load ptr, ptr %tmp4, align 8, !dbg !3634
  store ptr %11, ptr %i_mark, align 8, !dbg !3636
  br label %do.body, !dbg !3637

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !3639

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3639

do.end:                                           ; preds = %do.cond
  %12 = load ptr, ptr %i_mark, align 8, !dbg !3637
  %wd6 = getelementptr inbounds %struct.inotify_inode_mark, ptr %12, i32 0, i32 1, !dbg !3637
  %13 = load volatile i32, ptr %wd6, align 8, !dbg !3637
  store i32 %13, ptr %tmp5, align 4, !dbg !3639
  %14 = load i32, ptr %tmp5, align 4, !dbg !3637
  store i32 %14, ptr %wd, align 4, !dbg !3641
  %15 = load i32, ptr %wd, align 4, !dbg !3642
  %cmp = icmp eq i32 %15, -1, !dbg !3644
  br i1 %cmp, label %if.then7, label %if.end8, !dbg !3645

if.then7:                                         ; preds = %do.end
  store i32 0, ptr %retval, align 4, !dbg !3646
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3646

if.end8:                                          ; preds = %do.end
  %16 = load ptr, ptr %group, align 8, !dbg !3647
  %memcg = getelementptr inbounds %struct.fsnotify_group, ptr %16, i32 0, i32 16, !dbg !3648
  %17 = load ptr, ptr %memcg, align 8, !dbg !3648
  %call = call ptr @set_active_memcg(ptr noundef %17) #14, !dbg !3649
  store ptr %call, ptr %old_memcg, align 8, !dbg !3650
  %18 = load i32, ptr %alloc_len, align 4, !dbg !3651
  %conv = sext i32 %18 to i64, !dbg !3651
  %call9 = call noalias ptr @kmalloc(i64 noundef %conv, i32 noundef 4213952) #15, !dbg !3652
  store ptr %call9, ptr %event, align 8, !dbg !3653
  %19 = load ptr, ptr %old_memcg, align 8, !dbg !3654
  %call10 = call ptr @set_active_memcg(ptr noundef %19) #14, !dbg !3655
  %20 = load ptr, ptr %event, align 8, !dbg !3656
  %tobool11 = icmp ne ptr %20, null, !dbg !3656
  %lnot = xor i1 %tobool11, true, !dbg !3656
  %lnot12 = xor i1 %lnot, true, !dbg !3656
  %lnot13 = xor i1 %lnot12, true, !dbg !3656
  %lnot.ext = zext i1 %lnot13 to i32, !dbg !3656
  %conv14 = sext i32 %lnot.ext to i64, !dbg !3656
  %expval = call i64 @llvm.expect.i64(i64 %conv14, i64 0), !dbg !3656
  %tobool15 = icmp ne i64 %expval, 0, !dbg !3656
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !3658

if.then16:                                        ; preds = %if.end8
  %21 = load ptr, ptr %group, align 8, !dbg !3659
  call void @fsnotify_queue_overflow(ptr noundef %21) #14, !dbg !3661
  store i32 -12, ptr %retval, align 4, !dbg !3662
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3662

if.end17:                                         ; preds = %if.end8
  %22 = load i32, ptr %mask.addr, align 4, !dbg !3663
  %and = and i32 %22, 3072, !dbg !3665
  %tobool18 = icmp ne i32 %and, 0, !dbg !3665
  br i1 %tobool18, label %if.then19, label %if.end21, !dbg !3666

if.then19:                                        ; preds = %if.end17
  %23 = load i32, ptr %mask.addr, align 4, !dbg !3667
  %and20 = and i32 %23, -1073741825, !dbg !3667
  store i32 %and20, ptr %mask.addr, align 4, !dbg !3667
  br label %if.end21, !dbg !3668

if.end21:                                         ; preds = %if.then19, %if.end17
  %24 = load ptr, ptr %event, align 8, !dbg !3669
  %fse = getelementptr inbounds %struct.inotify_event_info, ptr %24, i32 0, i32 0, !dbg !3670
  store ptr %fse, ptr %fsn_event, align 8, !dbg !3671
  %25 = load ptr, ptr %fsn_event, align 8, !dbg !3672
  call void @fsnotify_init_event(ptr noundef %25) #14, !dbg !3673
  %26 = load i32, ptr %mask.addr, align 4, !dbg !3674
  %27 = load ptr, ptr %event, align 8, !dbg !3675
  %mask22 = getelementptr inbounds %struct.inotify_event_info, ptr %27, i32 0, i32 1, !dbg !3676
  store i32 %26, ptr %mask22, align 8, !dbg !3677
  %28 = load i32, ptr %wd, align 4, !dbg !3678
  %29 = load ptr, ptr %event, align 8, !dbg !3679
  %wd23 = getelementptr inbounds %struct.inotify_event_info, ptr %29, i32 0, i32 2, !dbg !3680
  store i32 %28, ptr %wd23, align 4, !dbg !3681
  %30 = load i32, ptr %cookie.addr, align 4, !dbg !3682
  %31 = load ptr, ptr %event, align 8, !dbg !3683
  %sync_cookie = getelementptr inbounds %struct.inotify_event_info, ptr %31, i32 0, i32 3, !dbg !3684
  store i32 %30, ptr %sync_cookie, align 8, !dbg !3685
  %32 = load i32, ptr %len, align 4, !dbg !3686
  %33 = load ptr, ptr %event, align 8, !dbg !3687
  %name_len = getelementptr inbounds %struct.inotify_event_info, ptr %33, i32 0, i32 4, !dbg !3688
  store i32 %32, ptr %name_len, align 4, !dbg !3689
  %34 = load i32, ptr %len, align 4, !dbg !3690
  %tobool24 = icmp ne i32 %34, 0, !dbg !3690
  br i1 %tobool24, label %if.then25, label %if.end29, !dbg !3692

if.then25:                                        ; preds = %if.end21
  %35 = load ptr, ptr %event, align 8, !dbg !3693
  %name26 = getelementptr inbounds %struct.inotify_event_info, ptr %35, i32 0, i32 5, !dbg !3694
  %arraydecay = getelementptr inbounds [0 x i8], ptr %name26, i64 0, i64 0, !dbg !3693
  %36 = load ptr, ptr %name.addr, align 8, !dbg !3695
  %name27 = getelementptr inbounds %struct.qstr, ptr %36, i32 0, i32 1, !dbg !3696
  %37 = load ptr, ptr %name27, align 8, !dbg !3696
  %call28 = call ptr @strcpy(ptr noundef %arraydecay, ptr noundef %37) #14, !dbg !3697
  br label %if.end29, !dbg !3697

if.end29:                                         ; preds = %if.then25, %if.end21
  %38 = load ptr, ptr %group, align 8, !dbg !3698
  %39 = load ptr, ptr %fsn_event, align 8, !dbg !3699
  %call30 = call i32 @fsnotify_add_event(ptr noundef %38, ptr noundef %39, ptr noundef @inotify_merge) #14, !dbg !3700
  store i32 %call30, ptr %ret, align 4, !dbg !3701
  %40 = load i32, ptr %ret, align 4, !dbg !3702
  %tobool31 = icmp ne i32 %40, 0, !dbg !3702
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !3704

if.then32:                                        ; preds = %if.end29
  %41 = load ptr, ptr %group, align 8, !dbg !3705
  %42 = load ptr, ptr %fsn_event, align 8, !dbg !3707
  call void @fsnotify_destroy_event(ptr noundef %41, ptr noundef %42) #14, !dbg !3708
  br label %if.end33, !dbg !3709

if.end33:                                         ; preds = %if.then32, %if.end29
  %43 = load ptr, ptr %inode_mark.addr, align 8, !dbg !3710
  %flags = getelementptr inbounds %struct.fsnotify_mark, ptr %43, i32 0, i32 8, !dbg !3712
  %44 = load i32, ptr %flags, align 4, !dbg !3712
  %and34 = and i32 %44, 32, !dbg !3713
  %tobool35 = icmp ne i32 %and34, 0, !dbg !3713
  br i1 %tobool35, label %if.then36, label %if.end37, !dbg !3714

if.then36:                                        ; preds = %if.end33
  %45 = load ptr, ptr %inode_mark.addr, align 8, !dbg !3715
  %46 = load ptr, ptr %group, align 8, !dbg !3716
  call void @fsnotify_destroy_mark(ptr noundef %45, ptr noundef %46) #14, !dbg !3717
  br label %if.end37, !dbg !3717

if.end37:                                         ; preds = %if.then36, %if.end33
  store i32 0, ptr %retval, align 4, !dbg !3718
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3718

cleanup:                                          ; preds = %if.end37, %if.then16, %if.then7
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_memcg) #13, !dbg !3719
  call void @llvm.lifetime.end.p0(i64 4, ptr %alloc_len) #13, !dbg !3719
  call void @llvm.lifetime.end.p0(i64 4, ptr %wd) #13, !dbg !3719
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #13, !dbg !3719
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #13, !dbg !3719
  call void @llvm.lifetime.end.p0(i64 8, ptr %group) #13, !dbg !3719
  call void @llvm.lifetime.end.p0(i64 8, ptr %fsn_event) #13, !dbg !3719
  call void @llvm.lifetime.end.p0(i64 8, ptr %event) #13, !dbg !3719
  call void @llvm.lifetime.end.p0(i64 8, ptr %i_mark) #13, !dbg !3719
  %47 = load i32, ptr %retval, align 4, !dbg !3719
  ret i32 %47, !dbg !3719
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @set_active_memcg(ptr noundef %memcg) #3 align 16 !dbg !3720 {
entry:
  %memcg.addr = alloca ptr, align 8
  store ptr %memcg, ptr %memcg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memcg.addr, metadata !3725, metadata !DIExpression()), !dbg !3726
  ret ptr null, !dbg !3727
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #4 align 16 !dbg !3728 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3732, metadata !DIExpression()), !dbg !3737
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3733, metadata !DIExpression()), !dbg !3738
  %0 = load i64, ptr %size.addr, align 8, !dbg !3739
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3740
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !3741

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !3742
  %tobool = icmp ne i64 %2, 0, !dbg !3742
  br i1 %tobool, label %if.then, label %if.end7, !dbg !3743

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #13, !dbg !3744
  call void @llvm.dbg.declare(metadata ptr %index, metadata !3734, metadata !DIExpression()), !dbg !3745
  %3 = load i64, ptr %size.addr, align 8, !dbg !3746
  %cmp = icmp ugt i64 %3, 8192, !dbg !3748
  br i1 %cmp, label %if.then1, label %if.end, !dbg !3749

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !3750
  %5 = load i32, ptr %flags.addr, align 4, !dbg !3751
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #15, !dbg !3752
  store ptr %call, ptr %retval, align 8, !dbg !3753
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3753

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !3754
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #14, !dbg !3754
  store i32 %call2, ptr %index, align 4, !dbg !3755
  %7 = load i32, ptr %flags.addr, align 4, !dbg !3756
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !3757
  %9 = ptrtoint ptr %8 to i64, !dbg !3757
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #14, !dbg !3758
  %idxprom = zext i32 %call3 to i64, !dbg !3759
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !3759
  %10 = load i32, ptr %index, align 4, !dbg !3760
  %idxprom4 = zext i32 %10 to i64, !dbg !3759
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !3759
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !3759
  %12 = load i32, ptr %flags.addr, align 4, !dbg !3761
  %13 = load i64, ptr %size.addr, align 8, !dbg !3762
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #16, !dbg !3763
  store ptr %call6, ptr %retval, align 8, !dbg !3764
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3764

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #13, !dbg !3765
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !3766
  %15 = load i32, ptr %flags.addr, align 4, !dbg !3767
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #15, !dbg !3768
  store ptr %call8, ptr %retval, align 8, !dbg !3769
  br label %return, !dbg !3769

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !3770
  ret ptr %16, !dbg !3770
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fsnotify_queue_overflow(ptr noundef %group) #3 align 16 !dbg !3771 {
entry:
  %group.addr = alloca ptr, align 8
  store ptr %group, ptr %group.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %group.addr, metadata !3773, metadata !DIExpression()), !dbg !3774
  %0 = load ptr, ptr %group.addr, align 8, !dbg !3775
  %1 = load ptr, ptr %group.addr, align 8, !dbg !3776
  %overflow_event = getelementptr inbounds %struct.fsnotify_group, ptr %1, i32 0, i32 15, !dbg !3777
  %2 = load ptr, ptr %overflow_event, align 8, !dbg !3777
  %call = call i32 @fsnotify_add_event(ptr noundef %0, ptr noundef %2, ptr noundef null) #14, !dbg !3778
  ret void, !dbg !3779
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fsnotify_init_event(ptr noundef %event) #3 align 16 !dbg !3780 {
entry:
  %event.addr = alloca ptr, align 8
  store ptr %event, ptr %event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !3784, metadata !DIExpression()), !dbg !3785
  %0 = load ptr, ptr %event.addr, align 8, !dbg !3786
  %list = getelementptr inbounds %struct.fsnotify_event, ptr %0, i32 0, i32 0, !dbg !3787
  call void @INIT_LIST_HEAD(ptr noundef %list) #14, !dbg !3788
  ret void, !dbg !3789
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3790 dso_local ptr @strcpy(ptr noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fsnotify_add_event(ptr noundef %group, ptr noundef %event, ptr noundef %merge) #3 align 16 !dbg !3794 {
entry:
  %group.addr = alloca ptr, align 8
  %event.addr = alloca ptr, align 8
  %merge.addr = alloca ptr, align 8
  store ptr %group, ptr %group.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %group.addr, metadata !3801, metadata !DIExpression()), !dbg !3804
  store ptr %event, ptr %event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !3802, metadata !DIExpression()), !dbg !3805
  store ptr %merge, ptr %merge.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %merge.addr, metadata !3803, metadata !DIExpression()), !dbg !3806
  %0 = load ptr, ptr %group.addr, align 8, !dbg !3807
  %1 = load ptr, ptr %event.addr, align 8, !dbg !3808
  %2 = load ptr, ptr %merge.addr, align 8, !dbg !3809
  %call = call i32 @fsnotify_insert_event(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null) #14, !dbg !3810
  ret i32 %call, !dbg !3811
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @inotify_merge(ptr noundef %group, ptr noundef %event) #0 align 16 !dbg !3812 {
entry:
  %group.addr = alloca ptr, align 8
  %event.addr = alloca ptr, align 8
  %list = alloca ptr, align 8
  %last_event = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %group, ptr %group.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %group.addr, metadata !3814, metadata !DIExpression()), !dbg !3820
  store ptr %event, ptr %event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !3815, metadata !DIExpression()), !dbg !3821
  call void @llvm.lifetime.start.p0(i64 8, ptr %list) #13, !dbg !3822
  call void @llvm.dbg.declare(metadata ptr %list, metadata !3816, metadata !DIExpression()), !dbg !3823
  %0 = load ptr, ptr %group.addr, align 8, !dbg !3824
  %notification_list = getelementptr inbounds %struct.fsnotify_group, ptr %0, i32 0, i32 3, !dbg !3825
  store ptr %notification_list, ptr %list, align 8, !dbg !3823
  call void @llvm.lifetime.start.p0(i64 8, ptr %last_event) #13, !dbg !3826
  call void @llvm.dbg.declare(metadata ptr %last_event, metadata !3817, metadata !DIExpression()), !dbg !3827
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !3828
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3818, metadata !DIExpression()), !dbg !3828
  %1 = load ptr, ptr %list, align 8, !dbg !3828
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !3828
  %2 = load ptr, ptr %prev, align 8, !dbg !3828
  store ptr %2, ptr %__mptr, align 8, !dbg !3828
  %3 = load ptr, ptr %__mptr, align 8, !dbg !3828
  %add.ptr = getelementptr i8, ptr %3, i64 0, !dbg !3828
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3828
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !3829
  %4 = load ptr, ptr %tmp, align 8, !dbg !3828
  store ptr %4, ptr %last_event, align 8, !dbg !3830
  %5 = load ptr, ptr %last_event, align 8, !dbg !3831
  %6 = load ptr, ptr %event.addr, align 8, !dbg !3832
  %call = call zeroext i1 @event_compare(ptr noundef %5, ptr noundef %6) #14, !dbg !3833
  %conv = zext i1 %call to i32, !dbg !3833
  call void @llvm.lifetime.end.p0(i64 8, ptr %last_event) #13, !dbg !3834
  call void @llvm.lifetime.end.p0(i64 8, ptr %list) #13, !dbg !3834
  ret i32 %conv, !dbg !3835
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3836 dso_local void @fsnotify_destroy_event(ptr noundef, ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3837 dso_local void @fsnotify_destroy_mark(ptr noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @inotify_free_group_priv(ptr noundef %group) #0 align 16 !dbg !3838 {
entry:
  %group.addr = alloca ptr, align 8
  store ptr %group, ptr %group.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %group.addr, metadata !3840, metadata !DIExpression()), !dbg !3841
  %0 = load ptr, ptr %group.addr, align 8, !dbg !3842
  %1 = getelementptr inbounds %struct.fsnotify_group, ptr %0, i32 0, i32 17, !dbg !3843
  %idr = getelementptr inbounds %struct.inotify_group_private_data, ptr %1, i32 0, i32 1, !dbg !3844
  %2 = load ptr, ptr %group.addr, align 8, !dbg !3845
  %call = call i32 @idr_for_each(ptr noundef %idr, ptr noundef @idr_callback, ptr noundef %2) #14, !dbg !3846
  %3 = load ptr, ptr %group.addr, align 8, !dbg !3847
  %4 = getelementptr inbounds %struct.fsnotify_group, ptr %3, i32 0, i32 17, !dbg !3848
  %idr1 = getelementptr inbounds %struct.inotify_group_private_data, ptr %4, i32 0, i32 1, !dbg !3849
  call void @idr_destroy(ptr noundef %idr1) #14, !dbg !3850
  %5 = load ptr, ptr %group.addr, align 8, !dbg !3851
  %6 = getelementptr inbounds %struct.fsnotify_group, ptr %5, i32 0, i32 17, !dbg !3853
  %ucounts = getelementptr inbounds %struct.inotify_group_private_data, ptr %6, i32 0, i32 2, !dbg !3854
  %7 = load ptr, ptr %ucounts, align 8, !dbg !3854
  %tobool = icmp ne ptr %7, null, !dbg !3851
  br i1 %tobool, label %if.then, label %if.end, !dbg !3855

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %group.addr, align 8, !dbg !3856
  %9 = getelementptr inbounds %struct.fsnotify_group, ptr %8, i32 0, i32 17, !dbg !3857
  %ucounts2 = getelementptr inbounds %struct.inotify_group_private_data, ptr %9, i32 0, i32 2, !dbg !3858
  %10 = load ptr, ptr %ucounts2, align 8, !dbg !3858
  call void @dec_inotify_instances(ptr noundef %10) #14, !dbg !3859
  br label %if.end, !dbg !3859

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !3860
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @inotify_freeing_mark(ptr noundef %fsn_mark, ptr noundef %group) #0 align 16 !dbg !3861 {
entry:
  %fsn_mark.addr = alloca ptr, align 8
  %group.addr = alloca ptr, align 8
  store ptr %fsn_mark, ptr %fsn_mark.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fsn_mark.addr, metadata !3863, metadata !DIExpression()), !dbg !3865
  store ptr %group, ptr %group.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %group.addr, metadata !3864, metadata !DIExpression()), !dbg !3866
  %0 = load ptr, ptr %fsn_mark.addr, align 8, !dbg !3867
  %1 = load ptr, ptr %group.addr, align 8, !dbg !3868
  call void @inotify_ignored_and_remove_idr(ptr noundef %0, ptr noundef %1) #14, !dbg !3869
  ret void, !dbg !3870
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @inotify_free_event(ptr noundef %group, ptr noundef %fsn_event) #0 align 16 !dbg !3871 {
entry:
  %group.addr = alloca ptr, align 8
  %fsn_event.addr = alloca ptr, align 8
  store ptr %group, ptr %group.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %group.addr, metadata !3873, metadata !DIExpression()), !dbg !3875
  store ptr %fsn_event, ptr %fsn_event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fsn_event.addr, metadata !3874, metadata !DIExpression()), !dbg !3876
  %0 = load ptr, ptr %fsn_event.addr, align 8, !dbg !3877
  %call = call ptr @INOTIFY_E(ptr noundef %0) #14, !dbg !3878
  call void @kfree(ptr noundef %call) #14, !dbg !3879
  ret void, !dbg !3880
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @inotify_free_mark(ptr noundef %fsn_mark) #0 align 16 !dbg !3881 {
entry:
  %fsn_mark.addr = alloca ptr, align 8
  %i_mark = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %fsn_mark, ptr %fsn_mark.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fsn_mark.addr, metadata !3883, metadata !DIExpression()), !dbg !3887
  call void @llvm.lifetime.start.p0(i64 8, ptr %i_mark) #13, !dbg !3888
  call void @llvm.dbg.declare(metadata ptr %i_mark, metadata !3884, metadata !DIExpression()), !dbg !3889
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !3890
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3885, metadata !DIExpression()), !dbg !3890
  %0 = load ptr, ptr %fsn_mark.addr, align 8, !dbg !3890
  store ptr %0, ptr %__mptr, align 8, !dbg !3890
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3890
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !3890
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3890
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !3891
  %2 = load ptr, ptr %tmp, align 8, !dbg !3890
  store ptr %2, ptr %i_mark, align 8, !dbg !3892
  %3 = load ptr, ptr @inotify_inode_mark_cachep, align 8, !dbg !3893
  %4 = load ptr, ptr %i_mark, align 8, !dbg !3894
  call void @kmem_cache_free(ptr noundef %3, ptr noundef %4) #14, !dbg !3895
  call void @llvm.lifetime.end.p0(i64 8, ptr %i_mark) #13, !dbg !3896
  ret void, !dbg !3896
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !3897 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #9 align 16 !dbg !3898 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3902, metadata !DIExpression()), !dbg !3904
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !3903, metadata !DIExpression()), !dbg !3905
  %0 = load i64, ptr %size.addr, align 8, !dbg !3906
  %tobool = icmp ne i64 %0, 0, !dbg !3906
  br i1 %tobool, label %if.end, label %if.then, !dbg !3908

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3909
  br label %return, !dbg !3909

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !3910
  %cmp = icmp ule i64 %1, 8, !dbg !3912
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !3913

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !3914
  br label %return, !dbg !3914

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !3915
  %cmp3 = icmp ugt i64 %2, 64, !dbg !3917
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !3918

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !3919
  %cmp4 = icmp ule i64 %3, 96, !dbg !3920
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !3921

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !3922
  br label %return, !dbg !3922

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !3923
  %cmp7 = icmp ugt i64 %4, 128, !dbg !3925
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !3926

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !3927
  %cmp9 = icmp ule i64 %5, 192, !dbg !3928
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !3929

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !3930
  br label %return, !dbg !3930

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !3931
  %cmp12 = icmp ule i64 %6, 8, !dbg !3933
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !3934

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !3935
  br label %return, !dbg !3935

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !3936
  %cmp15 = icmp ule i64 %7, 16, !dbg !3938
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !3939

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !3940
  br label %return, !dbg !3940

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !3941
  %cmp18 = icmp ule i64 %8, 32, !dbg !3943
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !3944

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !3945
  br label %return, !dbg !3945

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !3946
  %cmp21 = icmp ule i64 %9, 64, !dbg !3948
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !3949

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !3950
  br label %return, !dbg !3950

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !3951
  %cmp24 = icmp ule i64 %10, 128, !dbg !3953
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !3954

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !3955
  br label %return, !dbg !3955

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !3956
  %cmp27 = icmp ule i64 %11, 256, !dbg !3958
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !3959

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !3960
  br label %return, !dbg !3960

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !3961
  %cmp30 = icmp ule i64 %12, 512, !dbg !3963
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !3964

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !3965
  br label %return, !dbg !3965

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !3966
  %cmp33 = icmp ule i64 %13, 1024, !dbg !3968
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !3969

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !3970
  br label %return, !dbg !3970

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !3971
  %cmp36 = icmp ule i64 %14, 2048, !dbg !3973
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !3974

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !3975
  br label %return, !dbg !3975

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !3976
  %cmp39 = icmp ule i64 %15, 4096, !dbg !3978
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !3979

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !3980
  br label %return, !dbg !3980

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !3981
  %cmp42 = icmp ule i64 %16, 8192, !dbg !3983
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !3984

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !3985
  br label %return, !dbg !3985

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !3986
  %cmp45 = icmp ule i64 %17, 16384, !dbg !3988
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !3989

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !3990
  br label %return, !dbg !3990

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !3991
  %cmp48 = icmp ule i64 %18, 32768, !dbg !3993
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !3994

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !3995
  br label %return, !dbg !3995

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !3996
  %cmp51 = icmp ule i64 %19, 65536, !dbg !3998
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !3999

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !4000
  br label %return, !dbg !4000

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !4001
  %cmp54 = icmp ule i64 %20, 131072, !dbg !4003
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !4004

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !4005
  br label %return, !dbg !4005

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !4006
  %cmp57 = icmp ule i64 %21, 262144, !dbg !4008
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !4009

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !4010
  br label %return, !dbg !4010

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !4011
  %cmp60 = icmp ule i64 %22, 524288, !dbg !4013
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !4014

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !4015
  br label %return, !dbg !4015

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !4016
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !4018
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !4019

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !4020
  br label %return, !dbg !4020

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !4021
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !4023
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !4024

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !4025
  br label %return, !dbg !4025

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !4026, !range !4028, !noundef !410
  %tobool69 = trunc i8 %25 to i1, !dbg !4026
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !4029

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !4030

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_245() #17, !dbg !4031, !srcloc !4034
  unreachable, !dbg !4031

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !4035

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !4036

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !4037

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !4039

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !4037

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 480, i32 0, i64 12) #13, !dbg !4041, !srcloc !4043
  br label %do.end75, !dbg !4041

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !4037

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !4044
  br label %return, !dbg !4044

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !4045
  ret i32 %26, !dbg !4045
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !4046 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #9 align 16 !dbg !4052 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4056, metadata !DIExpression()), !dbg !4058
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !4057, metadata !DIExpression()), !dbg !4059
  %0 = load i32, ptr %flags.addr, align 4, !dbg !4060
  %and = and i32 %0, 17, !dbg !4060
  %cmp = icmp eq i32 %and, 0, !dbg !4060
  %lnot = xor i1 %cmp, true, !dbg !4060
  %lnot1 = xor i1 %lnot, true, !dbg !4060
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4060
  %conv = sext i32 %lnot.ext to i64, !dbg !4060
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !4060
  %tobool = icmp ne i64 %expval, 0, !dbg !4060
  br i1 %tobool, label %if.then, label %if.end, !dbg !4062

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4063
  br label %return, !dbg !4063

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4064
  %and2 = and i32 %1, 1, !dbg !4066
  %tobool3 = icmp ne i32 %and2, 0, !dbg !4066
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4067

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !4068
  br label %return, !dbg !4068

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !4069
  br label %return, !dbg !4069

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !4071
  ret i32 %2, !dbg !4071
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4072 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #8

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !4073 dso_local void @__compiletime_assert_245() #11

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #3 align 16 !dbg !4074 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !4079, metadata !DIExpression()), !dbg !4080
  br label %do.body, !dbg !4081

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4082

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !4084

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !4082

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !4086
  %1 = load ptr, ptr %list.addr, align 8, !dbg !4086
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !4086
  store volatile ptr %0, ptr %next, align 8, !dbg !4086
  br label %do.end3, !dbg !4086

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !4082

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !4088

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !4089

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !4091

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !4089

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !4093
  %3 = load ptr, ptr %list.addr, align 8, !dbg !4093
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !4093
  store volatile ptr %2, ptr %prev, align 8, !dbg !4093
  br label %do.end9, !dbg !4093

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !4089

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !4095
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4096 dso_local i32 @fsnotify_insert_event(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @event_compare(ptr noundef %old_fsn, ptr noundef %new_fsn) #0 align 16 !dbg !4099 {
entry:
  %retval = alloca i1, align 1
  %old_fsn.addr = alloca ptr, align 8
  %new_fsn.addr = alloca ptr, align 8
  %old = alloca ptr, align 8
  %new = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %old_fsn, ptr %old_fsn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old_fsn.addr, metadata !4103, metadata !DIExpression()), !dbg !4107
  store ptr %new_fsn, ptr %new_fsn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new_fsn.addr, metadata !4104, metadata !DIExpression()), !dbg !4108
  call void @llvm.lifetime.start.p0(i64 8, ptr %old) #13, !dbg !4109
  call void @llvm.dbg.declare(metadata ptr %old, metadata !4105, metadata !DIExpression()), !dbg !4110
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #13, !dbg !4109
  call void @llvm.dbg.declare(metadata ptr %new, metadata !4106, metadata !DIExpression()), !dbg !4111
  %0 = load ptr, ptr %old_fsn.addr, align 8, !dbg !4112
  %call = call ptr @INOTIFY_E(ptr noundef %0) #14, !dbg !4113
  store ptr %call, ptr %old, align 8, !dbg !4114
  %1 = load ptr, ptr %new_fsn.addr, align 8, !dbg !4115
  %call1 = call ptr @INOTIFY_E(ptr noundef %1) #14, !dbg !4116
  store ptr %call1, ptr %new, align 8, !dbg !4117
  %2 = load ptr, ptr %old, align 8, !dbg !4118
  %mask = getelementptr inbounds %struct.inotify_event_info, ptr %2, i32 0, i32 1, !dbg !4120
  %3 = load i32, ptr %mask, align 8, !dbg !4120
  %and = and i32 %3, 32768, !dbg !4121
  %tobool = icmp ne i32 %and, 0, !dbg !4121
  br i1 %tobool, label %if.then, label %if.end, !dbg !4122

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !4123
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4123

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %old, align 8, !dbg !4124
  %mask2 = getelementptr inbounds %struct.inotify_event_info, ptr %4, i32 0, i32 1, !dbg !4126
  %5 = load i32, ptr %mask2, align 8, !dbg !4126
  %6 = load ptr, ptr %new, align 8, !dbg !4127
  %mask3 = getelementptr inbounds %struct.inotify_event_info, ptr %6, i32 0, i32 1, !dbg !4128
  %7 = load i32, ptr %mask3, align 8, !dbg !4128
  %cmp = icmp eq i32 %5, %7, !dbg !4129
  br i1 %cmp, label %land.lhs.true, label %if.end17, !dbg !4130

land.lhs.true:                                    ; preds = %if.end
  %8 = load ptr, ptr %old, align 8, !dbg !4131
  %wd = getelementptr inbounds %struct.inotify_event_info, ptr %8, i32 0, i32 2, !dbg !4132
  %9 = load i32, ptr %wd, align 4, !dbg !4132
  %10 = load ptr, ptr %new, align 8, !dbg !4133
  %wd4 = getelementptr inbounds %struct.inotify_event_info, ptr %10, i32 0, i32 2, !dbg !4134
  %11 = load i32, ptr %wd4, align 4, !dbg !4134
  %cmp5 = icmp eq i32 %9, %11, !dbg !4135
  br i1 %cmp5, label %land.lhs.true6, label %if.end17, !dbg !4136

land.lhs.true6:                                   ; preds = %land.lhs.true
  %12 = load ptr, ptr %old, align 8, !dbg !4137
  %name_len = getelementptr inbounds %struct.inotify_event_info, ptr %12, i32 0, i32 4, !dbg !4138
  %13 = load i32, ptr %name_len, align 4, !dbg !4138
  %14 = load ptr, ptr %new, align 8, !dbg !4139
  %name_len7 = getelementptr inbounds %struct.inotify_event_info, ptr %14, i32 0, i32 4, !dbg !4140
  %15 = load i32, ptr %name_len7, align 4, !dbg !4140
  %cmp8 = icmp eq i32 %13, %15, !dbg !4141
  br i1 %cmp8, label %land.lhs.true9, label %if.end17, !dbg !4142

land.lhs.true9:                                   ; preds = %land.lhs.true6
  %16 = load ptr, ptr %old, align 8, !dbg !4143
  %name_len10 = getelementptr inbounds %struct.inotify_event_info, ptr %16, i32 0, i32 4, !dbg !4144
  %17 = load i32, ptr %name_len10, align 4, !dbg !4144
  %tobool11 = icmp ne i32 %17, 0, !dbg !4143
  br i1 %tobool11, label %lor.lhs.false, label %if.then16, !dbg !4145

lor.lhs.false:                                    ; preds = %land.lhs.true9
  %18 = load ptr, ptr %old, align 8, !dbg !4146
  %name = getelementptr inbounds %struct.inotify_event_info, ptr %18, i32 0, i32 5, !dbg !4147
  %arraydecay = getelementptr inbounds [0 x i8], ptr %name, i64 0, i64 0, !dbg !4146
  %19 = load ptr, ptr %new, align 8, !dbg !4148
  %name12 = getelementptr inbounds %struct.inotify_event_info, ptr %19, i32 0, i32 5, !dbg !4149
  %arraydecay13 = getelementptr inbounds [0 x i8], ptr %name12, i64 0, i64 0, !dbg !4148
  %call14 = call i32 @strcmp(ptr noundef %arraydecay, ptr noundef %arraydecay13) #14, !dbg !4150
  %tobool15 = icmp ne i32 %call14, 0, !dbg !4150
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !4151

if.then16:                                        ; preds = %lor.lhs.false, %land.lhs.true9
  store i1 true, ptr %retval, align 1, !dbg !4152
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4152

if.end17:                                         ; preds = %lor.lhs.false, %land.lhs.true6, %land.lhs.true, %if.end
  store i1 false, ptr %retval, align 1, !dbg !4153
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4153

cleanup:                                          ; preds = %if.end17, %if.then16, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #13, !dbg !4154
  call void @llvm.lifetime.end.p0(i64 8, ptr %old) #13, !dbg !4154
  %20 = load i1, ptr %retval, align 1, !dbg !4154
  ret i1 %20, !dbg !4154
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @INOTIFY_E(ptr noundef %fse) #3 align 16 !dbg !4155 {
entry:
  %fse.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %fse, ptr %fse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fse.addr, metadata !4159, metadata !DIExpression()), !dbg !4162
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !4163
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4160, metadata !DIExpression()), !dbg !4163
  %0 = load ptr, ptr %fse.addr, align 8, !dbg !4163
  store ptr %0, ptr %__mptr, align 8, !dbg !4163
  %1 = load ptr, ptr %__mptr, align 8, !dbg !4163
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !4163
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4163
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !4164
  %2 = load ptr, ptr %tmp, align 8, !dbg !4163
  ret ptr %2, !dbg !4165
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4166 dso_local i32 @strcmp(ptr noundef, ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4169 dso_local i32 @idr_for_each(ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @idr_callback(i32 noundef %id, ptr noundef %p, ptr noundef %data) #0 align 16 !dbg !3534 {
entry:
  %retval = alloca i32, align 4
  %id.addr = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %fsn_mark = alloca ptr, align 8
  %i_mark = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp24 = alloca i64, align 8
  %tmp37 = alloca i32, align 4
  store i32 %id, ptr %id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !3538, metadata !DIExpression()), !dbg !4175
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3539, metadata !DIExpression()), !dbg !4176
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !3540, metadata !DIExpression()), !dbg !4177
  call void @llvm.lifetime.start.p0(i64 8, ptr %fsn_mark) #13, !dbg !4178
  call void @llvm.dbg.declare(metadata ptr %fsn_mark, metadata !3541, metadata !DIExpression()), !dbg !4179
  call void @llvm.lifetime.start.p0(i64 8, ptr %i_mark) #13, !dbg !4180
  call void @llvm.dbg.declare(metadata ptr %i_mark, metadata !3542, metadata !DIExpression()), !dbg !4181
  %0 = load i8, ptr @idr_callback.warned, align 1, !dbg !4182, !range !4028, !noundef !410
  %tobool = trunc i8 %0 to i1, !dbg !4182
  br i1 %tobool, label %if.then, label %if.end, !dbg !4184

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4185
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4185

if.end:                                           ; preds = %entry
  store i8 1, ptr @idr_callback.warned, align 1, !dbg !4186
  %1 = load ptr, ptr %p.addr, align 8, !dbg !4187
  store ptr %1, ptr %fsn_mark, align 8, !dbg !4188
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !4189
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3543, metadata !DIExpression()), !dbg !4189
  %2 = load ptr, ptr %fsn_mark, align 8, !dbg !4189
  store ptr %2, ptr %__mptr, align 8, !dbg !4189
  %3 = load ptr, ptr %__mptr, align 8, !dbg !4189
  %add.ptr = getelementptr i8, ptr %3, i64 0, !dbg !4189
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4189
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !4190
  %4 = load ptr, ptr %tmp, align 8, !dbg !4189
  store ptr %4, ptr %i_mark, align 8, !dbg !4191
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !4192
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !3545, metadata !DIExpression()), !dbg !4192
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !4192
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !4193
  %tobool1 = icmp ne i32 %5, 0, !dbg !4193
  %lnot = xor i1 %tobool1, true, !dbg !4193
  %lnot2 = xor i1 %lnot, true, !dbg !4193
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4193
  %conv = sext i32 %lnot.ext to i64, !dbg !4193
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4193
  %tobool3 = icmp ne i64 %expval, 0, !dbg !4193
  br i1 %tobool3, label %if.then4, label %if.end23, !dbg !4192

if.then4:                                         ; preds = %if.end
  br label %do.body, !dbg !4193

do.body:                                          ; preds = %if.then4
  br label %do.body5, !dbg !4194

do.body5:                                         ; preds = %do.body
  br label %do.cond, !dbg !4195

do.cond:                                          ; preds = %do.body5
  br label %do.end, !dbg !4195

do.end:                                           ; preds = %do.cond
  %6 = load i32, ptr %id.addr, align 4, !dbg !4194
  %7 = load ptr, ptr %p.addr, align 8, !dbg !4194
  %8 = load ptr, ptr %data.addr, align 8, !dbg !4194
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.1, i32 noundef %6, ptr noundef %7, ptr noundef %8) #14, !dbg !4194
  br label %do.body6, !dbg !4194

do.body6:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #13, !dbg !4197
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !3547, metadata !DIExpression()), !dbg !4197
  store i32 2313, ptr %__flags, align 4, !dbg !4197
  br label %do.body7, !dbg !4197

do.body7:                                         ; preds = %do.body6
  br label %do.cond8, !dbg !4198

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !4198

do.end9:                                          ; preds = %do.cond8
  br label %do.body10, !dbg !4197

do.body10:                                        ; preds = %do.end9
  %9 = load i32, ptr %__flags, align 4, !dbg !4200
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 164, i32 %9, i64 12) #13, !dbg !4200, !srcloc !4202
  br label %do.cond11, !dbg !4200

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !4200

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !4197

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !4203

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !4203

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #13, !dbg !4194
  br label %do.cond16, !dbg !4197

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !4197

do.end17:                                         ; preds = %do.cond16
  br label %do.body18, !dbg !4194

do.body18:                                        ; preds = %do.end17
  br label %do.cond19, !dbg !4205

do.cond19:                                        ; preds = %do.body18
  br label %do.end20, !dbg !4205

do.end20:                                         ; preds = %do.cond19
  br label %do.cond21, !dbg !4194

do.cond21:                                        ; preds = %do.end20
  br label %do.end22, !dbg !4194

do.end22:                                         ; preds = %do.cond21
  br label %if.end23, !dbg !4194

if.end23:                                         ; preds = %do.end22, %if.end
  %10 = load i32, ptr %__ret_warn_on, align 4, !dbg !4192
  %tobool25 = icmp ne i32 %10, 0, !dbg !4192
  %lnot26 = xor i1 %tobool25, true, !dbg !4192
  %lnot28 = xor i1 %lnot26, true, !dbg !4192
  %lnot.ext29 = zext i1 %lnot28 to i32, !dbg !4192
  %conv30 = sext i32 %lnot.ext29 to i64, !dbg !4192
  %expval31 = call i64 @llvm.expect.i64(i64 %conv30, i64 0), !dbg !4192
  store i64 %expval31, ptr %tmp24, align 8, !dbg !4193
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !4207
  %11 = load i64, ptr %tmp24, align 8, !dbg !4192
  %12 = load ptr, ptr %fsn_mark, align 8, !dbg !4208
  %tobool32 = icmp ne ptr %12, null, !dbg !4208
  br i1 %tobool32, label %if.then33, label %if.end38, !dbg !4210

if.then33:                                        ; preds = %if.end23
  br label %do.body34, !dbg !4211

do.body34:                                        ; preds = %if.then33
  br label %do.cond35, !dbg !4213

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !4213

do.end36:                                         ; preds = %do.cond35
  %13 = load ptr, ptr %fsn_mark, align 8, !dbg !4211
  %group = getelementptr inbounds %struct.fsnotify_mark, ptr %13, i32 0, i32 2, !dbg !4211
  %14 = load ptr, ptr %group, align 8, !dbg !4211
  %15 = load ptr, ptr %i_mark, align 8, !dbg !4211
  %wd = getelementptr inbounds %struct.inotify_inode_mark, ptr %15, i32 0, i32 1, !dbg !4211
  %16 = load i32, ptr %wd, align 8, !dbg !4211
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.3, ptr noundef %14, i32 noundef %16) #18, !dbg !4211
  store i32 %call, ptr %tmp37, align 4, !dbg !4213
  %17 = load i32, ptr %tmp37, align 4, !dbg !4211
  br label %if.end38, !dbg !4215

if.end38:                                         ; preds = %do.end36, %if.end23
  store i32 0, ptr %retval, align 4, !dbg !4216
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4216

cleanup:                                          ; preds = %if.end38, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %i_mark) #13, !dbg !4217
  call void @llvm.lifetime.end.p0(i64 8, ptr %fsn_mark) #13, !dbg !4217
  %18 = load i32, ptr %retval, align 4, !dbg !4217
  ret i32 %18, !dbg !4217
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4218 dso_local void @idr_destroy(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dec_inotify_instances(ptr noundef %ucounts) #3 align 16 !dbg !4222 {
entry:
  %ucounts.addr = alloca ptr, align 8
  store ptr %ucounts, ptr %ucounts.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ucounts.addr, metadata !4226, metadata !DIExpression()), !dbg !4227
  %0 = load ptr, ptr %ucounts.addr, align 8, !dbg !4228
  call void @dec_ucount(ptr noundef %0, i32 noundef 8) #14, !dbg !4229
  ret void, !dbg !4230
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4231 dso_local void @__warn_printk(ptr noundef, ...) #6

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !4235 dso_local i32 @_printk(ptr noundef, ...) #12

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4239 dso_local void @dec_ucount(ptr noundef, i32 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4242 dso_local void @inotify_ignored_and_remove_idr(ptr noundef, ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4243 dso_local void @kfree(ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4246 dso_local void @kmem_cache_free(ptr noundef, ptr noundef) #6

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { noredzone }
attributes #15 = { noredzone allocsize(0) }
attributes #16 = { noredzone allocsize(2) }
attributes #17 = { noredzone noreturn }
attributes #18 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573}
!llvm.ident = !{!3574}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "inotify_fsnotify_ops", scope: !2, file: !3, line: 203, type: !198, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/notify/inotify/.inotify_fsnotify.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/notify/inotify/inotify_fsnotify\22 -D KBUILD_BASENAME=\22inotify_fsnotify\22 -D KBUILD_MODNAME=\22inotify_fsnotify\22 -D __KBUILD_MODNAME=kmod_inotify_fsnotify -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/notify/inotify/inotify_fsnotify.ll fs/notify/inotify/inotify_fsnotify.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !175, globals: !3526, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fs/notify/inotify/inotify_fsnotify.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec627aa3a9cfd3405290387a194fec3c")
!4 = !{!5, !11, !17, !22, !30, !126, !133, !139, !146, !151, !161}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !6, line: 2052, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!10 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !12, line: 54, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!13 = !{!14, !15, !16}
!14 = !DIEnumerator(name: "USRQUOTA", value: 0)
!15 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!16 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !18, line: 65, baseType: !7, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!19 = !{!20, !21}
!20 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!21 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !23, line: 9, baseType: !7, size: 32, elements: !24)
!23 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!24 = !{!25, !26, !27, !28, !29}
!25 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!26 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!27 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!28 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!29 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !32, file: !31, line: 147, baseType: !7, size: 32, elements: !123)
!31 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !31, line: 135, size: 512, elements: !33)
!33 = !{!34, !38, !40, !42, !46, !47, !63, !121, !122}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !32, file: !31, line: 136, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!37 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !32, file: !31, line: 137, baseType: !39, size: 64, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !32, file: !31, line: 138, baseType: !41, size: 32, offset: 128)
!41 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !32, file: !31, line: 139, baseType: !43, size: 16, offset: 160)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !44, line: 24, baseType: !45)
!44 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!45 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !32, file: !31, line: 150, baseType: !30, size: 32, offset: 192)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !32, file: !31, line: 151, baseType: !48, size: 64, offset: 256)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !31, line: 64, baseType: !50)
!50 = !DISubroutineType(types: !51)
!51 = !{!41, !52, !41, !39, !53, !59}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !44, line: 61, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !56, line: 72, baseType: !57)
!56 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !56, line: 16, baseType: !58)
!58 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !44, line: 52, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !56, line: 88, baseType: !62)
!62 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !32, file: !31, line: 152, baseType: !64, size: 64, offset: 320)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !31, line: 117, size: 256, elements: !66)
!66 = !{!67, !72}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !65, file: !31, line: 118, baseType: !68, size: 32)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !44, line: 174, baseType: !69)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !44, line: 172, size: 32, elements: !70)
!70 = !{!71}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !69, file: !44, line: 173, baseType: !41, size: 32)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !65, file: !31, line: 119, baseType: !73, size: 192, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !74, line: 41, baseType: !75)
!74 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !74, line: 37, size: 192, elements: !76)
!76 = !{!77, !115}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !75, file: !74, line: 38, baseType: !78, size: 32)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !79, line: 29, baseType: !80)
!79 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !79, line: 17, size: 32, elements: !81)
!81 = !{!82}
!82 = !DIDerivedType(tag: DW_TAG_member, scope: !80, file: !79, line: 18, baseType: !83, size: 32)
!83 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !80, file: !79, line: 18, size: 32, elements: !84)
!84 = !{!85}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !83, file: !79, line: 19, baseType: !86, size: 32)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !87, line: 14, size: 32, elements: !88)
!87 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!88 = !{!89}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !86, file: !87, line: 15, baseType: !90, size: 32)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !91, line: 44, baseType: !92)
!91 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !91, line: 14, size: 32, elements: !93)
!93 = !{!94}
!94 = !DIDerivedType(tag: DW_TAG_member, scope: !92, file: !91, line: 15, baseType: !95, size: 32)
!95 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !92, file: !91, line: 15, size: 32, elements: !96)
!96 = !{!97, !98, !108}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !95, file: !91, line: 16, baseType: !68, size: 32)
!98 = !DIDerivedType(tag: DW_TAG_member, scope: !95, file: !91, line: 24, baseType: !99, size: 16)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !95, file: !91, line: 24, size: 16, elements: !100)
!100 = !{!101, !107}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !99, file: !91, line: 25, baseType: !102, size: 8)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !103, line: 17, baseType: !104)
!103 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !105, line: 21, baseType: !106)
!105 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!106 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !99, file: !91, line: 26, baseType: !102, size: 8, offset: 8)
!108 = !DIDerivedType(tag: DW_TAG_member, scope: !95, file: !91, line: 28, baseType: !109, size: 32)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !95, file: !91, line: 28, size: 32, elements: !110)
!110 = !{!111, !114}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !109, file: !91, line: 29, baseType: !112, size: 16)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !103, line: 19, baseType: !113)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !105, line: 24, baseType: !45)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !109, file: !91, line: 30, baseType: !112, size: 16, offset: 16)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !75, file: !74, line: 39, baseType: !116, size: 128, offset: 64)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !44, line: 190, size: 128, elements: !117)
!117 = !{!118, !120}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !116, file: !44, line: 191, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !116, file: !44, line: 191, baseType: !119, size: 64, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !32, file: !31, line: 153, baseType: !39, size: 64, offset: 384)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !32, file: !31, line: 154, baseType: !39, size: 64, offset: 448)
!123 = !{!124, !125}
!124 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!125 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!126 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !127, line: 15, baseType: !7, size: 32, elements: !128)
!127 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!128 = !{!129, !130, !131, !132}
!129 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!130 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!131 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!132 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!133 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !134, line: 16, baseType: !7, size: 32, elements: !135)
!134 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!135 = !{!136, !137, !138}
!136 = !DIEnumerator(name: "TT_NONE", value: 0)
!137 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!138 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!139 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !140, line: 51, baseType: !7, size: 32, elements: !141)
!140 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!141 = !{!142, !143, !144, !145}
!142 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!143 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!144 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!145 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !147, line: 10, baseType: !7, size: 32, elements: !148)
!147 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!148 = !{!149, !150}
!149 = !DIEnumerator(name: "false", value: 0)
!150 = !DIEnumerator(name: "true", value: 1)
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !152, line: 364, baseType: !7, size: 32, elements: !153)
!152 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!153 = !{!154, !155, !156, !157, !158, !159, !160}
!154 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!155 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!156 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!157 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!158 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!159 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!160 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!161 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ucount_type", file: !162, line: 40, baseType: !7, size: 32, elements: !163)
!162 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!163 = !{!164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174}
!164 = !DIEnumerator(name: "UCOUNT_USER_NAMESPACES", value: 0)
!165 = !DIEnumerator(name: "UCOUNT_PID_NAMESPACES", value: 1)
!166 = !DIEnumerator(name: "UCOUNT_UTS_NAMESPACES", value: 2)
!167 = !DIEnumerator(name: "UCOUNT_IPC_NAMESPACES", value: 3)
!168 = !DIEnumerator(name: "UCOUNT_NET_NAMESPACES", value: 4)
!169 = !DIEnumerator(name: "UCOUNT_MNT_NAMESPACES", value: 5)
!170 = !DIEnumerator(name: "UCOUNT_CGROUP_NAMESPACES", value: 6)
!171 = !DIEnumerator(name: "UCOUNT_TIME_NAMESPACES", value: 7)
!172 = !DIEnumerator(name: "UCOUNT_INOTIFY_INSTANCES", value: 8)
!173 = !DIEnumerator(name: "UCOUNT_INOTIFY_WATCHES", value: 9)
!174 = !DIEnumerator(name: "UCOUNT_COUNTS", value: 10)
!175 = !{!39, !176, !3512, !577, !58, !3515, !3456, !3517}
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inotify_inode_mark", file: !178, line: 15, size: 640, elements: !179)
!178 = !DIFile(filename: "fs/notify/inotify/inotify.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "edff87c46cef0699a93e80ca256dbb4c")
!179 = !{!180, !3511}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "fsn_mark", scope: !177, file: !178, line: 16, baseType: !181, size: 576)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark", file: !182, line: 502, size: 576, elements: !183)
!182 = !DIFile(filename: "./include/linux/fsnotify_backend.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ad4cb752e360d262cfaf7a818c344e9c")
!183 = !{!184, !186, !192, !3505, !3506, !3507, !3508, !3509, !3510}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !181, file: !182, line: 504, baseType: !185, size: 32)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !105, line: 27, baseType: !7)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !181, file: !182, line: 507, baseType: !187, size: 32, offset: 32)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !188, line: 113, baseType: !189)
!188 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !188, line: 111, size: 32, elements: !190)
!190 = !{!191}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !189, file: !188, line: 112, baseType: !68, size: 32)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !181, file: !182, line: 510, baseType: !193, size: 64, offset: 64)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_group", file: !182, line: 185, size: 1600, elements: !195)
!195 = !{!196, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3487, !3488, !3489}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !194, file: !182, line: 186, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !199)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_ops", file: !182, line: 155, size: 384, elements: !200)
!200 = !{!201, !3440, !3444, !3448, !3452, !3460}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "handle_event", scope: !199, file: !182, line: 156, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{!41, !193, !205, !206, !41, !208, !324, !205, !3431}
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !103, line: 21, baseType: !185)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !6, line: 641, size: 4800, elements: !210)
!210 = !{!211, !212, !213, !221, !222, !229, !230, !233, !234, !3369, !3370, !3371, !3372, !3373, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3413, !3416, !3417, !3418, !3427, !3428, !3429, !3430}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !209, file: !6, line: 642, baseType: !43, size: 16)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !209, file: !6, line: 643, baseType: !45, size: 16, offset: 16)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !209, file: !6, line: 644, baseType: !214, size: 32, offset: 32)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !215, line: 23, baseType: !216)
!215 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !215, line: 21, size: 32, elements: !217)
!217 = !{!218}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !216, file: !215, line: 22, baseType: !219, size: 32)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !44, line: 37, baseType: !220)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !56, line: 49, baseType: !7)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !209, file: !6, line: 645, baseType: !116, size: 128, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !209, file: !6, line: 646, baseType: !223, size: 32, offset: 192)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !215, line: 28, baseType: !224)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !215, line: 26, size: 32, elements: !225)
!225 = !{!226}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !224, file: !215, line: 27, baseType: !227, size: 32)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !44, line: 38, baseType: !228)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !56, line: 50, baseType: !7)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !209, file: !6, line: 647, baseType: !7, size: 32, offset: 224)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !209, file: !6, line: 650, baseType: !231, size: 64, offset: 256)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !6, line: 607, flags: DIFlagFwdDecl)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !209, file: !6, line: 651, baseType: !231, size: 64, offset: 320)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !209, file: !6, line: 654, baseType: !235, size: 64, offset: 384)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !237)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !6, line: 1966, size: 2048, align: 512, elements: !238)
!238 = !{!239, !3200, !3213, !3217, !3221, !3225, !3229, !3233, !3237, !3241, !3245, !3246, !3250, !3254, !3291, !3320, !3324, !3330, !3334, !3338, !3342, !3346, !3350, !3356, !3360}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !237, file: !6, line: 1967, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{!243, !208, !243, !7}
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !245, line: 82, size: 1536, elements: !246)
!245 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!246 = !{!247, !248, !258, !266, !267, !285, !286, !290, !303, !3183, !3184, !3185, !3186, !3192, !3193, !3194}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !244, file: !245, line: 84, baseType: !7, size: 32)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !244, file: !245, line: 85, baseType: !249, size: 32, offset: 32)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !250, line: 275, baseType: !251)
!250 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !250, line: 275, size: 32, elements: !252)
!252 = !{!253}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !251, file: !250, line: 275, baseType: !254, size: 32)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !250, line: 69, baseType: !255)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !250, line: 64, size: 32, elements: !256)
!256 = !{!257}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !255, file: !250, line: 65, baseType: !7, size: 32)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !244, file: !245, line: 86, baseType: !259, size: 128, offset: 64)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !260, line: 38, size: 128, elements: !261)
!260 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!261 = !{!262, !264}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !259, file: !260, line: 39, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !259, file: !260, line: 39, baseType: !265, size: 64, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !244, file: !245, line: 87, baseType: !243, size: 64, offset: 192)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !244, file: !245, line: 88, baseType: !268, size: 128, offset: 256)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !245, line: 49, size: 128, elements: !269)
!269 = !{!270, !282}
!270 = !DIDerivedType(tag: DW_TAG_member, scope: !268, file: !245, line: 50, baseType: !271, size: 64)
!271 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !268, file: !245, line: 50, size: 64, elements: !272)
!272 = !{!273, !278}
!273 = !DIDerivedType(tag: DW_TAG_member, scope: !271, file: !245, line: 51, baseType: !274, size: 64)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !271, file: !245, line: 51, size: 64, elements: !275)
!275 = !{!276, !277}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !274, file: !245, line: 52, baseType: !205, size: 32)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !274, file: !245, line: 52, baseType: !205, size: 32, offset: 32)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !271, file: !245, line: 54, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !103, line: 23, baseType: !280)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !105, line: 31, baseType: !281)
!281 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !268, file: !245, line: 56, baseType: !283, size: 64, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !106)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !244, file: !245, line: 89, baseType: !208, size: 64, offset: 384)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !244, file: !245, line: 91, baseType: !287, size: 256, offset: 448)
!287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 256, elements: !288)
!288 = !{!289}
!289 = !DISubrange(count: 32)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !244, file: !245, line: 94, baseType: !291, size: 64, offset: 704)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !292, line: 25, size: 64, elements: !293)
!292 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!293 = !{!294}
!294 = !DIDerivedType(tag: DW_TAG_member, scope: !291, file: !292, line: 26, baseType: !295, size: 64)
!295 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !291, file: !292, line: 26, size: 64, elements: !296)
!296 = !{!297, !298}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !295, file: !292, line: 28, baseType: !280, size: 64, align: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, scope: !295, file: !292, line: 30, baseType: !299, size: 64)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !295, file: !292, line: 30, size: 64, elements: !300)
!300 = !{!301, !302}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !299, file: !292, line: 31, baseType: !78, size: 32)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !299, file: !292, line: 32, baseType: !41, size: 32, offset: 32)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !244, file: !245, line: 95, baseType: !304, size: 64, offset: 768)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !306)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !245, line: 128, size: 1024, align: 512, elements: !307)
!307 = !{!308, !312, !313, !320, !326, !330, !334, !338, !339, !343, !348, !3173, !3177}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !306, file: !245, line: 129, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{!41, !243, !7}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !306, file: !245, line: 130, baseType: !309, size: 64, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !306, file: !245, line: 131, baseType: !314, size: 64, offset: 128)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DISubroutineType(types: !316)
!316 = !{!41, !317, !319}
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !244)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !306, file: !245, line: 132, baseType: !321, size: 64, offset: 192)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DISubroutineType(types: !323)
!323 = !{!41, !317, !7, !35, !324}
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !268)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !306, file: !245, line: 134, baseType: !327, size: 64, offset: 256)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!41, !317}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !306, file: !245, line: 135, baseType: !331, size: 64, offset: 320)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DISubroutineType(types: !333)
!333 = !{!41, !243}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !306, file: !245, line: 136, baseType: !335, size: 64, offset: 384)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DISubroutineType(types: !337)
!337 = !{null, !243}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !306, file: !245, line: 137, baseType: !335, size: 64, offset: 448)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !306, file: !245, line: 138, baseType: !340, size: 64, offset: 512)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DISubroutineType(types: !342)
!342 = !{null, !243, !208}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !306, file: !245, line: 139, baseType: !344, size: 64, offset: 576)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DISubroutineType(types: !346)
!346 = !{!347, !243, !347, !41}
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !306, file: !245, line: 140, baseType: !349, size: 64, offset: 640)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DISubroutineType(types: !351)
!351 = !{!352, !3172}
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !354, line: 70, size: 256, elements: !355)
!354 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!355 = !{!356, !357, !3168, !3169}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !353, file: !354, line: 71, baseType: !243, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !353, file: !354, line: 72, baseType: !358, size: 64, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !6, line: 1190, size: 10752, elements: !360)
!360 = !{!361, !362, !365, !366, !367, !368, !421, !586, !626, !716, !720, !721, !722, !723, !724, !733, !734, !735, !736, !741, !745, !746, !749, !752, !755, !758, !759, !760, !801, !3081, !3082, !3083, !3084, !3085, !3086, !3107, !3109, !3116, !3117, !3118, !3119, !3120, !3135, !3136, !3137, !3138, !3139, !3142, !3143, !3144, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166, !3167}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !359, file: !6, line: 1191, baseType: !116, size: 128)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !359, file: !6, line: 1192, baseType: !363, size: 32, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !44, line: 21, baseType: !364)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !44, line: 18, baseType: !205)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !359, file: !6, line: 1193, baseType: !106, size: 8, offset: 160)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !359, file: !6, line: 1194, baseType: !58, size: 64, offset: 192)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !359, file: !6, line: 1195, baseType: !60, size: 64, offset: 256)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !359, file: !6, line: 1196, baseType: !369, size: 64, offset: 320)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !6, line: 2366, size: 576, elements: !371)
!371 = !{!372, !373, !374, !380, !384, !388, !392, !396, !397, !407, !411, !412, !413, !417, !418, !419, !420}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !370, file: !6, line: 2367, baseType: !35, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !370, file: !6, line: 2368, baseType: !41, size: 32, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !370, file: !6, line: 2376, baseType: !375, size: 64, offset: 128)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DISubroutineType(types: !377)
!377 = !{!41, !378}
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !354, line: 21, flags: DIFlagFwdDecl)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !370, file: !6, line: 2377, baseType: !381, size: 64, offset: 192)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !383)
!383 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !6, line: 75, flags: DIFlagFwdDecl)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !370, file: !6, line: 2378, baseType: !385, size: 64, offset: 256)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DISubroutineType(types: !387)
!387 = !{!243, !369, !41, !35, !39}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !370, file: !6, line: 2380, baseType: !389, size: 64, offset: 320)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DISubroutineType(types: !391)
!391 = !{null, !358}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !370, file: !6, line: 2381, baseType: !393, size: 64, offset: 384)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !395, line: 103, flags: DIFlagFwdDecl)
!395 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec86911224c4b764298f6e976616738c")
!396 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !370, file: !6, line: 2382, baseType: !369, size: 64, offset: 448)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !370, file: !6, line: 2383, baseType: !398, size: 64, offset: 512)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !44, line: 194, size: 64, elements: !399)
!399 = !{!400}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !398, file: !44, line: 195, baseType: !401, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !44, line: 198, size: 128, elements: !403)
!403 = !{!404, !405}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !402, file: !44, line: 199, baseType: !401, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !402, file: !44, line: 199, baseType: !406, size: 64, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !370, file: !6, line: 2385, baseType: !408, offset: 576)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !409, line: 206, elements: !410)
!409 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!410 = !{}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !370, file: !6, line: 2386, baseType: !408, offset: 576)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !370, file: !6, line: 2387, baseType: !408, offset: 576)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !370, file: !6, line: 2388, baseType: !414, offset: 576)
!414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !408, elements: !415)
!415 = !{!416}
!416 = !DISubrange(count: 3)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !370, file: !6, line: 2390, baseType: !408, offset: 576)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !370, file: !6, line: 2391, baseType: !408, offset: 576)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !370, file: !6, line: 2392, baseType: !408, offset: 576)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !370, file: !6, line: 2393, baseType: !408, offset: 576)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !359, file: !6, line: 1197, baseType: !422, size: 64, offset: 384)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !424)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !6, line: 2057, size: 1664, elements: !425)
!425 = !{!426, !430, !434, !435, !439, !445, !449, !450, !451, !455, !459, !463, !464, !465, !471, !476, !477, !484, !485, !486, !487, !495, !499, !568, !584, !585}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !424, file: !6, line: 2058, baseType: !427, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DISubroutineType(types: !429)
!429 = !{!208, !358}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !424, file: !6, line: 2059, baseType: !431, size: 64, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DISubroutineType(types: !433)
!433 = !{null, !208}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !424, file: !6, line: 2060, baseType: !431, size: 64, offset: 128)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !424, file: !6, line: 2062, baseType: !436, size: 64, offset: 192)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DISubroutineType(types: !438)
!438 = !{null, !208, !41}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !424, file: !6, line: 2063, baseType: !440, size: 64, offset: 256)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DISubroutineType(types: !442)
!442 = !{!41, !208, !443}
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !6, line: 309, flags: DIFlagFwdDecl)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !424, file: !6, line: 2064, baseType: !446, size: 64, offset: 320)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{!41, !208}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !424, file: !6, line: 2065, baseType: !431, size: 64, offset: 384)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !424, file: !6, line: 2066, baseType: !389, size: 64, offset: 448)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !424, file: !6, line: 2067, baseType: !452, size: 64, offset: 512)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{!41, !358, !41}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !424, file: !6, line: 2068, baseType: !456, size: 64, offset: 576)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{!41, !358, !5}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !424, file: !6, line: 2069, baseType: !460, size: 64, offset: 640)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{!41, !358}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !424, file: !6, line: 2070, baseType: !456, size: 64, offset: 704)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !424, file: !6, line: 2071, baseType: !460, size: 64, offset: 768)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !424, file: !6, line: 2072, baseType: !466, size: 64, offset: 832)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{!41, !243, !469}
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !6, line: 62, flags: DIFlagFwdDecl)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !424, file: !6, line: 2073, baseType: !472, size: 64, offset: 896)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{!41, !358, !475, !347}
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !424, file: !6, line: 2074, baseType: !389, size: 64, offset: 960)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !424, file: !6, line: 2076, baseType: !478, size: 64, offset: 1024)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DISubroutineType(types: !480)
!480 = !{!41, !481, !243}
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !483, line: 66, flags: DIFlagFwdDecl)
!483 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!484 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !424, file: !6, line: 2077, baseType: !478, size: 64, offset: 1088)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !424, file: !6, line: 2078, baseType: !478, size: 64, offset: 1152)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !424, file: !6, line: 2079, baseType: !478, size: 64, offset: 1216)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !424, file: !6, line: 2081, baseType: !488, size: 64, offset: 1280)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DISubroutineType(types: !490)
!490 = !{!491, !358, !41, !347, !54, !60}
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !44, line: 66, baseType: !492)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !56, line: 73, baseType: !493)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !56, line: 15, baseType: !494)
!494 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !424, file: !6, line: 2082, baseType: !496, size: 64, offset: 1344)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{!491, !358, !41, !35, !54, !60}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !424, file: !6, line: 2083, baseType: !500, size: 64, offset: 1408)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{!503, !208}
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !12, line: 296, size: 1664, elements: !506)
!506 = !{!507, !508, !509, !510, !511, !532, !533, !534, !535, !551, !552, !553}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !505, file: !12, line: 297, baseType: !402, size: 128)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !505, file: !12, line: 298, baseType: !116, size: 128, offset: 128)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !505, file: !12, line: 299, baseType: !116, size: 128, offset: 256)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !505, file: !12, line: 300, baseType: !116, size: 128, offset: 384)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !505, file: !12, line: 301, baseType: !512, size: 256, offset: 512)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !513, line: 66, size: 256, elements: !514)
!513 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!514 = !{!515, !524, !526, !531}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !512, file: !513, line: 67, baseType: !516, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !517, line: 13, baseType: !518)
!517 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !44, line: 181, baseType: !519)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !44, line: 179, size: 64, elements: !520)
!520 = !{!521}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !519, file: !44, line: 180, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !103, line: 22, baseType: !523)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !105, line: 30, baseType: !62)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !512, file: !513, line: 68, baseType: !525, size: 32, offset: 64)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !87, line: 23, baseType: !86)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !512, file: !513, line: 70, baseType: !527, size: 32, offset: 96)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !528, line: 15, size: 32, elements: !529)
!528 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!529 = !{!530}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !527, file: !528, line: 20, baseType: !68, size: 32)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !512, file: !513, line: 72, baseType: !116, size: 128, offset: 128)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !505, file: !12, line: 302, baseType: !78, size: 32, offset: 768)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !505, file: !12, line: 303, baseType: !68, size: 32, offset: 800)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !505, file: !12, line: 304, baseType: !358, size: 64, offset: 832)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !505, file: !12, line: 305, baseType: !536, size: 64, offset: 896)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !12, line: 68, size: 64, elements: !537)
!537 = !{!538, !550}
!538 = !DIDerivedType(tag: DW_TAG_member, scope: !536, file: !12, line: 69, baseType: !539, size: 32)
!539 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !536, file: !12, line: 69, size: 32, elements: !540)
!540 = !{!541, !542, !543}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !539, file: !12, line: 70, baseType: !214, size: 32)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !539, file: !12, line: 71, baseType: !223, size: 32)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !539, file: !12, line: 72, baseType: !544, size: 32)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !545, line: 24, baseType: !546)
!545 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !545, line: 22, size: 32, elements: !547)
!547 = !{!548}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !546, file: !545, line: 23, baseType: !549, size: 32)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !545, line: 20, baseType: !220)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !536, file: !12, line: 74, baseType: !11, size: 32, offset: 32)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !505, file: !12, line: 306, baseType: !60, size: 64, offset: 960)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !505, file: !12, line: 307, baseType: !58, size: 64, offset: 1024)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !505, file: !12, line: 308, baseType: !554, size: 576, offset: 1088)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !12, line: 205, size: 576, elements: !555)
!555 = !{!556, !558, !559, !560, !561, !562, !563, !564, !567}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !554, file: !12, line: 206, baseType: !557, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !12, line: 66, baseType: !62)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !554, file: !12, line: 207, baseType: !557, size: 64, offset: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !554, file: !12, line: 208, baseType: !557, size: 64, offset: 128)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !554, file: !12, line: 209, baseType: !557, size: 64, offset: 192)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !554, file: !12, line: 210, baseType: !557, size: 64, offset: 256)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !554, file: !12, line: 211, baseType: !557, size: 64, offset: 320)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !554, file: !12, line: 212, baseType: !557, size: 64, offset: 384)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !554, file: !12, line: 213, baseType: !565, size: 64, offset: 448)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !566, line: 8, baseType: !523)
!566 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!567 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !554, file: !12, line: 214, baseType: !565, size: 64, offset: 512)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !424, file: !6, line: 2085, baseType: !569, size: 64, offset: 1472)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DISubroutineType(types: !571)
!571 = !{!494, !358, !572}
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !574, line: 15, size: 256, elements: !575)
!574 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!575 = !{!576, !578, !579, !580, !581}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !573, file: !574, line: 16, baseType: !577, size: 32)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !44, line: 154, baseType: !7)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !573, file: !574, line: 19, baseType: !41, size: 32, offset: 32)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !573, file: !574, line: 26, baseType: !58, size: 64, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !573, file: !574, line: 33, baseType: !58, size: 64, offset: 128)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !573, file: !574, line: 36, baseType: !582, size: 64, offset: 192)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !574, line: 36, flags: DIFlagFwdDecl)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !424, file: !6, line: 2087, baseType: !569, size: 64, offset: 1536)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !424, file: !6, line: 2089, baseType: !389, size: 64, offset: 1600)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !359, file: !6, line: 1198, baseType: !587, size: 64, offset: 448)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !589)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !12, line: 324, size: 704, elements: !590)
!590 = !{!591, !595, !599, !603, !604, !605, !606, !607, !612, !617, !621}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !589, file: !12, line: 325, baseType: !592, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DISubroutineType(types: !594)
!594 = !{!41, !504}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !589, file: !12, line: 326, baseType: !596, size: 64, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DISubroutineType(types: !598)
!598 = !{!504, !358, !41}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !589, file: !12, line: 327, baseType: !600, size: 64, offset: 128)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DISubroutineType(types: !602)
!602 = !{null, !504}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !589, file: !12, line: 328, baseType: !592, size: 64, offset: 192)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !589, file: !12, line: 329, baseType: !592, size: 64, offset: 256)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !589, file: !12, line: 330, baseType: !592, size: 64, offset: 320)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !589, file: !12, line: 331, baseType: !452, size: 64, offset: 384)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !589, file: !12, line: 334, baseType: !608, size: 64, offset: 448)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DISubroutineType(types: !610)
!610 = !{!611, !208}
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !589, file: !12, line: 335, baseType: !613, size: 64, offset: 512)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DISubroutineType(types: !615)
!615 = !{!41, !208, !616}
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !589, file: !12, line: 337, baseType: !618, size: 64, offset: 576)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DISubroutineType(types: !620)
!620 = !{!41, !208, !611}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !589, file: !12, line: 339, baseType: !622, size: 64, offset: 640)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DISubroutineType(types: !624)
!624 = !{!41, !358, !625}
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !359, file: !6, line: 1199, baseType: !627, size: 64, offset: 512)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !629)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !12, line: 430, size: 704, elements: !630)
!630 = !{!631, !642, !643, !647, !648, !649, !664, !687, !691, !692, !715}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !629, file: !12, line: 431, baseType: !632, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DISubroutineType(types: !634)
!634 = !{!41, !358, !41, !41, !635}
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !637)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !638, line: 8, size: 128, elements: !639)
!638 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!639 = !{!640, !641}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !637, file: !638, line: 9, baseType: !352, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !637, file: !638, line: 10, baseType: !243, size: 64, offset: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !629, file: !12, line: 432, baseType: !452, size: 64, offset: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !629, file: !12, line: 433, baseType: !644, size: 64, offset: 128)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DISubroutineType(types: !646)
!646 = !{!41, !358, !7}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !629, file: !12, line: 434, baseType: !644, size: 64, offset: 192)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !629, file: !12, line: 435, baseType: !452, size: 64, offset: 256)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !629, file: !12, line: 436, baseType: !650, size: 64, offset: 320)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DISubroutineType(types: !652)
!652 = !{!41, !358, !41, !653}
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !12, line: 417, size: 256, elements: !655)
!655 = !{!656, !657, !658, !659, !660, !661, !662, !663}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !654, file: !12, line: 418, baseType: !41, size: 32)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !654, file: !12, line: 419, baseType: !7, size: 32, offset: 32)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !654, file: !12, line: 420, baseType: !7, size: 32, offset: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !654, file: !12, line: 422, baseType: !7, size: 32, offset: 96)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !654, file: !12, line: 423, baseType: !7, size: 32, offset: 128)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !654, file: !12, line: 424, baseType: !7, size: 32, offset: 160)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !654, file: !12, line: 425, baseType: !7, size: 32, offset: 192)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !654, file: !12, line: 426, baseType: !7, size: 32, offset: 224)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !629, file: !12, line: 437, baseType: !665, size: 64, offset: 384)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DISubroutineType(types: !667)
!667 = !{!41, !358, !536, !668}
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !12, line: 345, size: 960, elements: !670)
!670 = !{!671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !669, file: !12, line: 346, baseType: !41, size: 32)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !669, file: !12, line: 347, baseType: !279, size: 64, offset: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !669, file: !12, line: 348, baseType: !279, size: 64, offset: 128)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !669, file: !12, line: 349, baseType: !279, size: 64, offset: 192)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !669, file: !12, line: 350, baseType: !279, size: 64, offset: 256)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !669, file: !12, line: 351, baseType: !279, size: 64, offset: 320)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !669, file: !12, line: 352, baseType: !279, size: 64, offset: 384)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !669, file: !12, line: 353, baseType: !522, size: 64, offset: 448)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !669, file: !12, line: 355, baseType: !522, size: 64, offset: 512)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !669, file: !12, line: 356, baseType: !41, size: 32, offset: 576)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !669, file: !12, line: 357, baseType: !41, size: 32, offset: 608)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !669, file: !12, line: 358, baseType: !279, size: 64, offset: 640)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !669, file: !12, line: 359, baseType: !279, size: 64, offset: 704)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !669, file: !12, line: 360, baseType: !279, size: 64, offset: 768)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !669, file: !12, line: 361, baseType: !522, size: 64, offset: 832)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !669, file: !12, line: 362, baseType: !41, size: 32, offset: 896)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !629, file: !12, line: 438, baseType: !688, size: 64, offset: 448)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DISubroutineType(types: !690)
!690 = !{!41, !358, !625, !668}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !629, file: !12, line: 440, baseType: !665, size: 64, offset: 512)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !629, file: !12, line: 441, baseType: !693, size: 64, offset: 576)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DISubroutineType(types: !695)
!695 = !{!41, !358, !696}
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !12, line: 411, size: 1408, elements: !698)
!698 = !{!699, !700}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !697, file: !12, line: 412, baseType: !7, size: 32)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !697, file: !12, line: 413, baseType: !701, size: 1344, offset: 64)
!701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !702, size: 1344, elements: !415)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !12, line: 397, size: 448, elements: !703)
!703 = !{!704, !705, !706, !707, !708, !709, !710, !711, !712, !714}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !702, file: !12, line: 398, baseType: !7, size: 32)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !702, file: !12, line: 399, baseType: !7, size: 32, offset: 32)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !702, file: !12, line: 401, baseType: !7, size: 32, offset: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !702, file: !12, line: 402, baseType: !7, size: 32, offset: 96)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !702, file: !12, line: 403, baseType: !7, size: 32, offset: 128)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !702, file: !12, line: 404, baseType: !7, size: 32, offset: 160)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !702, file: !12, line: 405, baseType: !7, size: 32, offset: 192)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !702, file: !12, line: 406, baseType: !281, size: 64, offset: 256)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !702, file: !12, line: 407, baseType: !713, size: 64, offset: 320)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !44, line: 132, baseType: !279)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !702, file: !12, line: 408, baseType: !713, size: 64, offset: 384)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !629, file: !12, line: 442, baseType: !644, size: 64, offset: 640)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !359, file: !6, line: 1200, baseType: !717, size: 64, offset: 576)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !719)
!719 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !6, line: 54, flags: DIFlagFwdDecl)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !359, file: !6, line: 1201, baseType: !58, size: 64, offset: 640)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !359, file: !6, line: 1202, baseType: !58, size: 64, offset: 704)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !359, file: !6, line: 1203, baseType: !58, size: 64, offset: 768)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !359, file: !6, line: 1204, baseType: !243, size: 64, offset: 832)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !359, file: !6, line: 1205, baseType: !725, size: 320, offset: 896)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !726, line: 48, size: 320, elements: !727)
!726 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!727 = !{!728, !729, !730, !731, !732}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !725, file: !726, line: 49, baseType: !516, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !725, file: !726, line: 55, baseType: !516, size: 64, offset: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !725, file: !726, line: 57, baseType: !527, size: 32, offset: 128)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !725, file: !726, line: 59, baseType: !525, size: 32, offset: 160)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !725, file: !726, line: 60, baseType: !116, size: 128, offset: 192)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !359, file: !6, line: 1206, baseType: !41, size: 32, offset: 1216)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !359, file: !6, line: 1207, baseType: !68, size: 32, offset: 1248)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !359, file: !6, line: 1209, baseType: !39, size: 64, offset: 1280)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !359, file: !6, line: 1211, baseType: !737, size: 64, offset: 1344)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !740)
!740 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !6, line: 1211, flags: DIFlagFwdDecl)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !359, file: !6, line: 1223, baseType: !742, size: 64, offset: 1408)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !260, line: 34, size: 64, elements: !743)
!743 = !{!744}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !742, file: !260, line: 35, baseType: !263, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !359, file: !6, line: 1224, baseType: !116, size: 128, offset: 1472)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !359, file: !6, line: 1225, baseType: !747, size: 64, offset: 1600)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !6, line: 1225, flags: DIFlagFwdDecl)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !359, file: !6, line: 1226, baseType: !750, size: 64, offset: 1664)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !6, line: 1226, flags: DIFlagFwdDecl)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !359, file: !6, line: 1227, baseType: !753, size: 64, offset: 1728)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !6, line: 50, flags: DIFlagFwdDecl)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !359, file: !6, line: 1228, baseType: !756, size: 64, offset: 1792)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !6, line: 1228, flags: DIFlagFwdDecl)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !359, file: !6, line: 1229, baseType: !402, size: 128, offset: 1856)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !359, file: !6, line: 1230, baseType: !7, size: 32, offset: 1984)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !359, file: !6, line: 1231, baseType: !761, size: 2496, offset: 2048)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !12, line: 521, size: 2496, elements: !762)
!762 = !{!763, !764, !765, !767, !799}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !761, file: !12, line: 522, baseType: !7, size: 32)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !761, file: !12, line: 523, baseType: !725, size: 320, offset: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !761, file: !12, line: 524, baseType: !766, size: 192, offset: 384)
!766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 192, elements: !415)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !761, file: !12, line: 525, baseType: !768, size: 1728, offset: 576)
!768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !769, size: 1728, elements: !415)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !12, line: 222, size: 576, elements: !770)
!770 = !{!771, !791, !792, !793, !794, !795, !796, !797, !798}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !769, file: !12, line: 223, baseType: !772, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !12, line: 445, size: 256, elements: !774)
!774 = !{!775, !776, !789, !790}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !773, file: !12, line: 446, baseType: !41, size: 32)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !773, file: !12, line: 447, baseType: !777, size: 64, offset: 64)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !779)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !12, line: 312, size: 512, elements: !780)
!780 = !{!781, !782, !783, !784, !785, !786, !787, !788}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !779, file: !12, line: 313, baseType: !452, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !779, file: !12, line: 314, baseType: !452, size: 64, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !779, file: !12, line: 315, baseType: !452, size: 64, offset: 128)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !779, file: !12, line: 316, baseType: !452, size: 64, offset: 192)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !779, file: !12, line: 317, baseType: !592, size: 64, offset: 256)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !779, file: !12, line: 318, baseType: !592, size: 64, offset: 320)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !779, file: !12, line: 319, baseType: !592, size: 64, offset: 384)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !779, file: !12, line: 320, baseType: !622, size: 64, offset: 448)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !773, file: !12, line: 448, baseType: !393, size: 64, offset: 128)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !773, file: !12, line: 449, baseType: !772, size: 64, offset: 192)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !769, file: !12, line: 224, baseType: !41, size: 32, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !769, file: !12, line: 226, baseType: !116, size: 128, offset: 128)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !769, file: !12, line: 227, baseType: !58, size: 64, offset: 256)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !769, file: !12, line: 228, baseType: !7, size: 32, offset: 320)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !769, file: !12, line: 229, baseType: !7, size: 32, offset: 352)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !769, file: !12, line: 230, baseType: !557, size: 64, offset: 384)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !769, file: !12, line: 231, baseType: !557, size: 64, offset: 448)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !769, file: !12, line: 232, baseType: !39, size: 64, offset: 512)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !761, file: !12, line: 526, baseType: !800, size: 192, offset: 2304)
!800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !777, size: 192, elements: !415)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !359, file: !6, line: 1233, baseType: !802, size: 2368, offset: 4544)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !6, line: 1184, size: 2368, elements: !803)
!803 = !{!804, !805, !806}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !802, file: !6, line: 1185, baseType: !45, size: 16)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !802, file: !6, line: 1186, baseType: !45, size: 16, offset: 16)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !802, file: !6, line: 1187, baseType: !807, size: 2304, offset: 64)
!807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !808, size: 2304, elements: !415)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !809, line: 12, size: 768, elements: !810)
!809 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!810 = !{!811, !827, !829, !3079, !3080}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !808, file: !809, line: 13, baseType: !812, size: 384)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !813, line: 17, size: 384, elements: !814)
!813 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!814 = !{!815, !816, !817, !818}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !812, file: !813, line: 18, baseType: !41, size: 32)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !812, file: !813, line: 19, baseType: !41, size: 32, offset: 32)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !812, file: !813, line: 20, baseType: !73, size: 192, offset: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !812, file: !813, line: 22, baseType: !819, size: 128, align: 64, offset: 256)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !44, line: 232, size: 128, align: 64, elements: !820)
!820 = !{!821, !823}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !819, file: !44, line: 233, baseType: !822, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !819, file: !44, line: 234, baseType: !824, size: 64, offset: 64)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DISubroutineType(types: !826)
!826 = !{null, !822}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !808, file: !809, line: 14, baseType: !828, size: 64, offset: 384)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !808, file: !809, line: 15, baseType: !830, size: 64, offset: 448)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !831, line: 16, size: 64, elements: !832)
!831 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!832 = !{!833}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !830, file: !831, line: 17, baseType: !834, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !483, line: 746, size: 58368, elements: !836)
!836 = !{!837, !845, !846, !847, !848, !849, !850, !851, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !929, !940, !1035, !1039, !1042, !1073, !1074, !1075, !1076, !1087, !1089, !1090, !1091, !1092, !1093, !1094, !1105, !1106, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1123, !1124, !1131, !1132, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2225, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2273, !2279, !2280, !2281, !2282, !2283, !2287, !2290, !2297, !2302, !2305, !2308, !2311, !2337, !2478, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2520, !2521, !2522, !2531, !2539, !2540, !2541, !2542, !2543, !2548, !2549, !2550, !2553, !2554, !2557, !2560, !2563, !2571, !2574, !2575, !2661, !2662, !2663, !2664, !2665, !2671, !2672, !2673, !2674, !2677, !2678, !2681, !2684, !2685, !2688, !2689, !2690, !2693, !2694, !2695, !2696, !2697, !2698, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2730, !2731, !2737, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2749, !2821, !2823, !2824, !2825, !2826, !2827, !2839, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2856, !2857, !2858}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !835, file: !483, line: 752, baseType: !838, size: 192)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !839, line: 56, size: 192, elements: !840)
!839 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!840 = !{!841, !842, !843, !844}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !838, file: !839, line: 57, baseType: !58, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !838, file: !839, line: 58, baseType: !58, size: 64, offset: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !838, file: !839, line: 59, baseType: !205, size: 32, offset: 128)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !838, file: !839, line: 61, baseType: !205, size: 32, offset: 160)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !835, file: !483, line: 754, baseType: !7, size: 32, offset: 192)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !835, file: !483, line: 767, baseType: !39, size: 64, offset: 256)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !835, file: !483, line: 768, baseType: !187, size: 32, offset: 320)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !835, file: !483, line: 770, baseType: !7, size: 32, offset: 352)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !835, file: !483, line: 771, baseType: !7, size: 32, offset: 384)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !835, file: !483, line: 774, baseType: !41, size: 32, offset: 416)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !835, file: !483, line: 775, baseType: !852, size: 128, offset: 448)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !853, line: 58, size: 128, elements: !854)
!853 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!854 = !{!855, !861, !866, !867}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !852, file: !853, line: 59, baseType: !856, size: 64)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !857, line: 60, size: 64, elements: !858)
!857 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!858 = !{!859}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !856, file: !857, line: 61, baseType: !860, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, scope: !852, file: !853, line: 60, baseType: !862, size: 32, offset: 64)
!862 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !852, file: !853, line: 60, size: 32, elements: !863)
!863 = !{!864, !865}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !862, file: !853, line: 61, baseType: !7, size: 32)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !862, file: !853, line: 62, baseType: !68, size: 32)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !852, file: !853, line: 65, baseType: !112, size: 16, offset: 96)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !852, file: !853, line: 65, baseType: !112, size: 16, offset: 112)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !835, file: !483, line: 776, baseType: !7, size: 32, offset: 576)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !835, file: !483, line: 777, baseType: !58, size: 64, offset: 640)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !835, file: !483, line: 778, baseType: !834, size: 64, offset: 704)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !835, file: !483, line: 787, baseType: !41, size: 32, offset: 768)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !835, file: !483, line: 788, baseType: !41, size: 32, offset: 800)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !835, file: !483, line: 790, baseType: !41, size: 32, offset: 832)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !835, file: !483, line: 792, baseType: !41, size: 32, offset: 864)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !835, file: !483, line: 793, baseType: !41, size: 32, offset: 896)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !835, file: !483, line: 794, baseType: !41, size: 32, offset: 928)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !835, file: !483, line: 795, baseType: !7, size: 32, offset: 960)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !835, file: !483, line: 797, baseType: !879, size: 2048, offset: 1024)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !483, line: 551, size: 2048, elements: !880)
!880 = !{!881, !886, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !908, !911, !912, !913}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !879, file: !483, line: 553, baseType: !882, size: 128)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !483, line: 411, size: 128, elements: !883)
!883 = !{!884, !885}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !882, file: !483, line: 412, baseType: !58, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !882, file: !483, line: 413, baseType: !205, size: 32, offset: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !879, file: !483, line: 554, baseType: !887, size: 192, align: 64, offset: 128)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !888, line: 5, size: 192, align: 64, elements: !889)
!888 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!889 = !{!890, !891, !893}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !887, file: !888, line: 6, baseType: !58, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !887, file: !888, line: 7, baseType: !892, size: 64, offset: 64)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !887, file: !888, line: 8, baseType: !892, size: 64, offset: 128)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !879, file: !483, line: 555, baseType: !279, size: 64, offset: 320)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !879, file: !483, line: 556, baseType: !279, size: 64, offset: 384)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !879, file: !483, line: 558, baseType: !116, size: 128, offset: 448)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !879, file: !483, line: 559, baseType: !7, size: 32, offset: 576)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !879, file: !483, line: 561, baseType: !279, size: 64, offset: 640)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !879, file: !483, line: 562, baseType: !279, size: 64, offset: 704)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !879, file: !483, line: 563, baseType: !279, size: 64, offset: 768)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !879, file: !483, line: 564, baseType: !279, size: 64, offset: 832)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !879, file: !483, line: 565, baseType: !522, size: 64, offset: 896)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !879, file: !483, line: 566, baseType: !279, size: 64, offset: 960)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !879, file: !483, line: 568, baseType: !279, size: 64, offset: 1024)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !879, file: !483, line: 571, baseType: !41, size: 32, offset: 1088)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !879, file: !483, line: 572, baseType: !907, size: 64, offset: 1152)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !879, file: !483, line: 574, baseType: !909, size: 64, offset: 1216)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !483, line: 49, flags: DIFlagFwdDecl)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !879, file: !483, line: 576, baseType: !909, size: 64, offset: 1280)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !879, file: !483, line: 578, baseType: !58, size: 64, offset: 1344)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !879, file: !483, line: 588, baseType: !914, size: 512, align: 512, offset: 1536)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !483, line: 497, size: 512, align: 512, elements: !915)
!915 = !{!916, !917, !918, !919, !920, !921, !922, !923, !924}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !914, file: !483, line: 498, baseType: !279, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !914, file: !483, line: 499, baseType: !279, size: 64, offset: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !914, file: !483, line: 500, baseType: !279, size: 64, offset: 128)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !914, file: !483, line: 501, baseType: !205, size: 32, offset: 192)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !914, file: !483, line: 502, baseType: !205, size: 32, offset: 224)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !914, file: !483, line: 503, baseType: !58, size: 64, offset: 256)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !914, file: !483, line: 504, baseType: !58, size: 64, offset: 320)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !914, file: !483, line: 505, baseType: !58, size: 64, offset: 384)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !914, file: !483, line: 506, baseType: !925, size: 64, align: 64, offset: 448)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !483, line: 445, size: 64, align: 64, elements: !926)
!926 = !{!927, !928}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !925, file: !483, line: 446, baseType: !7, size: 32)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !925, file: !483, line: 447, baseType: !7, size: 32, offset: 32)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !835, file: !483, line: 798, baseType: !930, size: 384, offset: 3072)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !483, line: 592, size: 384, elements: !931)
!931 = !{!932, !933, !934, !935, !936, !937, !938}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !930, file: !483, line: 593, baseType: !116, size: 128)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !930, file: !483, line: 594, baseType: !58, size: 64, offset: 128)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !930, file: !483, line: 595, baseType: !58, size: 64, offset: 192)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !930, file: !483, line: 596, baseType: !7, size: 32, offset: 256)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !930, file: !483, line: 597, baseType: !45, size: 16, offset: 288)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !930, file: !483, line: 598, baseType: !45, size: 16, offset: 304)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !930, file: !483, line: 600, baseType: !939, size: 64, offset: 320)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !835, file: !483, line: 799, baseType: !941, size: 1792, offset: 3456)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !483, line: 610, size: 1792, elements: !942)
!942 = !{!943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !1032, !1033}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !941, file: !483, line: 611, baseType: !887, size: 192, align: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !941, file: !483, line: 618, baseType: !279, size: 64, offset: 192)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !941, file: !483, line: 619, baseType: !279, size: 64, offset: 256)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !941, file: !483, line: 620, baseType: !279, size: 64, offset: 320)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !941, file: !483, line: 621, baseType: !279, size: 64, offset: 384)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !941, file: !483, line: 622, baseType: !279, size: 64, offset: 448)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !941, file: !483, line: 629, baseType: !522, size: 64, offset: 512)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !941, file: !483, line: 630, baseType: !279, size: 64, offset: 576)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !941, file: !483, line: 631, baseType: !7, size: 32, offset: 640)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !941, file: !483, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !941, file: !483, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !941, file: !483, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !941, file: !483, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !941, file: !483, line: 662, baseType: !957, size: 512, offset: 704)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !18, line: 118, size: 512, elements: !958)
!958 = !{!959, !967, !968, !973, !1028, !1029, !1030, !1031}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !957, file: !18, line: 119, baseType: !960, size: 256)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !961, line: 9, size: 256, elements: !962)
!961 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!962 = !{!963, !964}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !960, file: !961, line: 10, baseType: !887, size: 192, align: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !960, file: !961, line: 11, baseType: !965, size: 64, offset: 192)
!965 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !966, line: 29, baseType: !522)
!966 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!967 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !957, file: !18, line: 120, baseType: !965, size: 64, offset: 256)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !957, file: !18, line: 121, baseType: !969, size: 64, offset: 320)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DISubroutineType(types: !971)
!971 = !{!17, !972}
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !957, file: !18, line: 122, baseType: !974, size: 64, offset: 384)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !18, line: 159, size: 512, align: 512, elements: !976)
!976 = !{!977, !1002, !1003, !1006, !1011, !1012, !1023, !1027}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !975, file: !18, line: 160, baseType: !978, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !18, line: 215, size: 4608, align: 512, elements: !980)
!980 = !{!981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !979, file: !18, line: 216, baseType: !525, size: 32)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !979, file: !18, line: 217, baseType: !7, size: 32, offset: 32)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !979, file: !18, line: 218, baseType: !7, size: 32, offset: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !979, file: !18, line: 219, baseType: !7, size: 32, offset: 96)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !979, file: !18, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !979, file: !18, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !979, file: !18, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !979, file: !18, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !979, file: !18, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !979, file: !18, line: 226, baseType: !7, size: 32, offset: 160)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !979, file: !18, line: 227, baseType: !45, size: 16, offset: 192)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !979, file: !18, line: 228, baseType: !45, size: 16, offset: 208)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !979, file: !18, line: 229, baseType: !7, size: 32, offset: 224)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !979, file: !18, line: 235, baseType: !965, size: 64, offset: 256)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !979, file: !18, line: 236, baseType: !972, size: 64, offset: 320)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !979, file: !18, line: 237, baseType: !965, size: 64, offset: 384)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !979, file: !18, line: 238, baseType: !972, size: 64, offset: 448)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !979, file: !18, line: 239, baseType: !999, size: 4096, align: 512, offset: 512)
!999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !975, size: 4096, align: 512, elements: !1000)
!1000 = !{!1001}
!1001 = !DISubrange(count: 8)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !975, file: !18, line: 161, baseType: !7, size: 32, offset: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !975, file: !18, line: 162, baseType: !1004, size: 32, offset: 96)
!1004 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !44, line: 32, baseType: !1005)
!1005 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !56, line: 96, baseType: !41)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !975, file: !18, line: 163, baseType: !1007, size: 32, offset: 128)
!1007 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !250, line: 274, baseType: !1008)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !250, line: 274, size: 32, elements: !1009)
!1009 = !{!1010}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1008, file: !250, line: 274, baseType: !254, size: 32)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !975, file: !18, line: 164, baseType: !972, size: 64, offset: 192)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !975, file: !18, line: 165, baseType: !1013, size: 128, offset: 256)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !961, line: 14, size: 128, elements: !1014)
!1014 = !{!1015}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1013, file: !961, line: 15, baseType: !1016, size: 128)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !888, line: 26, size: 128, elements: !1017)
!1017 = !{!1018, !1022}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1016, file: !888, line: 27, baseType: !1019, size: 64)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !888, line: 12, size: 64, elements: !1020)
!1020 = !{!1021}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1019, file: !888, line: 13, baseType: !892, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1016, file: !888, line: 28, baseType: !892, size: 64, offset: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !975, file: !18, line: 166, baseType: !1024, size: 64, offset: 384)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!965}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !975, file: !18, line: 167, baseType: !965, size: 64, offset: 448)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !957, file: !18, line: 123, baseType: !102, size: 8, offset: 448)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !957, file: !18, line: 124, baseType: !102, size: 8, offset: 456)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !957, file: !18, line: 125, baseType: !102, size: 8, offset: 464)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !957, file: !18, line: 126, baseType: !102, size: 8, offset: 472)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !941, file: !483, line: 671, baseType: !957, size: 512, offset: 1216)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !941, file: !483, line: 679, baseType: !1034, size: 64, offset: 1728)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !835, file: !483, line: 800, baseType: !1036, size: 64, offset: 5248)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1038)
!1038 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !483, line: 800, flags: DIFlagFwdDecl)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !835, file: !483, line: 809, baseType: !1040, size: 64, offset: 5312)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !483, line: 70, flags: DIFlagFwdDecl)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !835, file: !483, line: 825, baseType: !1043, size: 2048, align: 512, offset: 5632)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !483, line: 509, size: 2048, align: 512, elements: !1044)
!1044 = !{!1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1043, file: !483, line: 511, baseType: !279, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1043, file: !483, line: 512, baseType: !279, size: 64, offset: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1043, file: !483, line: 513, baseType: !279, size: 64, offset: 128)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1043, file: !483, line: 514, baseType: !279, size: 64, offset: 192)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1043, file: !483, line: 515, baseType: !279, size: 64, offset: 256)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1043, file: !483, line: 516, baseType: !279, size: 64, offset: 320)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1043, file: !483, line: 518, baseType: !279, size: 64, offset: 384)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1043, file: !483, line: 519, baseType: !279, size: 64, offset: 448)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1043, file: !483, line: 520, baseType: !522, size: 64, offset: 512)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1043, file: !483, line: 522, baseType: !279, size: 64, offset: 576)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1043, file: !483, line: 523, baseType: !279, size: 64, offset: 640)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1043, file: !483, line: 524, baseType: !522, size: 64, offset: 704)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1043, file: !483, line: 526, baseType: !522, size: 64, offset: 768)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1043, file: !483, line: 527, baseType: !279, size: 64, offset: 832)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1043, file: !483, line: 529, baseType: !279, size: 64, offset: 896)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1043, file: !483, line: 530, baseType: !279, size: 64, offset: 960)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1043, file: !483, line: 531, baseType: !279, size: 64, offset: 1024)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1043, file: !483, line: 532, baseType: !279, size: 64, offset: 1088)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1043, file: !483, line: 533, baseType: !279, size: 64, offset: 1152)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1043, file: !483, line: 535, baseType: !279, size: 64, offset: 1216)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1043, file: !483, line: 536, baseType: !279, size: 64, offset: 1280)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1043, file: !483, line: 537, baseType: !279, size: 64, offset: 1344)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1043, file: !483, line: 538, baseType: !279, size: 64, offset: 1408)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1043, file: !483, line: 539, baseType: !279, size: 64, offset: 1472)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1043, file: !483, line: 540, baseType: !279, size: 64, offset: 1536)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1043, file: !483, line: 541, baseType: !279, size: 64, offset: 1600)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1043, file: !483, line: 542, baseType: !279, size: 64, offset: 1664)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1043, file: !483, line: 543, baseType: !279, size: 64, offset: 1728)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !835, file: !483, line: 833, baseType: !7, size: 32, offset: 7680)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !835, file: !483, line: 836, baseType: !7, size: 32, offset: 7712)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !835, file: !483, line: 837, baseType: !41, size: 32, offset: 7744)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !835, file: !483, line: 838, baseType: !1077, size: 64, offset: 7808)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1079)
!1079 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1080, line: 19, baseType: !1081)
!1080 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1080, line: 19, size: 64, elements: !1082)
!1082 = !{!1083}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1081, file: !1080, line: 19, baseType: !1084, size: 64)
!1084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 64, elements: !1085)
!1085 = !{!1086}
!1086 = !DISubrange(count: 1)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !835, file: !483, line: 839, baseType: !1088, size: 64, offset: 7872)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !835, file: !483, line: 840, baseType: !1079, size: 64, offset: 7936)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !835, file: !483, line: 841, baseType: !39, size: 64, offset: 8000)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !835, file: !483, line: 843, baseType: !45, size: 16, offset: 8064)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !835, file: !483, line: 845, baseType: !45, size: 16, offset: 8080)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !835, file: !483, line: 848, baseType: !41, size: 32, offset: 8096)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !835, file: !483, line: 849, baseType: !1095, size: 32, offset: 8128)
!1095 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !483, line: 718, size: 32, elements: !1096)
!1096 = !{!1097, !1104}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1095, file: !483, line: 724, baseType: !1098, size: 32)
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1095, file: !483, line: 719, size: 32, elements: !1099)
!1099 = !{!1100, !1101, !1102, !1103}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1098, file: !483, line: 720, baseType: !102, size: 8)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1098, file: !483, line: 721, baseType: !102, size: 8, offset: 8)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1098, file: !483, line: 722, baseType: !102, size: 8, offset: 16)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1098, file: !483, line: 723, baseType: !102, size: 8, offset: 24)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1095, file: !483, line: 725, baseType: !205, size: 32)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !835, file: !483, line: 850, baseType: !116, size: 128, offset: 8192)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !835, file: !483, line: 851, baseType: !1107, size: 64, offset: 8320)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !483, line: 60, flags: DIFlagFwdDecl)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !835, file: !483, line: 855, baseType: !58, size: 64, offset: 8384)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !835, file: !483, line: 856, baseType: !102, size: 8, offset: 8448)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !835, file: !483, line: 857, baseType: !102, size: 8, offset: 8456)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !835, file: !483, line: 858, baseType: !41, size: 32, offset: 8480)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !835, file: !483, line: 859, baseType: !116, size: 128, offset: 8512)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !835, file: !483, line: 860, baseType: !41, size: 32, offset: 8640)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !835, file: !483, line: 861, baseType: !116, size: 128, offset: 8704)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !835, file: !483, line: 873, baseType: !1117, size: 256, offset: 8832)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !483, line: 376, size: 256, elements: !1118)
!1118 = !{!1119, !1120, !1121, !1122}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1117, file: !483, line: 381, baseType: !58, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1117, file: !483, line: 384, baseType: !281, size: 64, offset: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1117, file: !483, line: 389, baseType: !281, size: 64, offset: 128)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1117, file: !483, line: 392, baseType: !281, size: 64, offset: 192)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !835, file: !483, line: 875, baseType: !116, size: 128, offset: 9088)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !835, file: !483, line: 877, baseType: !1125, size: 320, offset: 9216)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1126, line: 86, size: 320, elements: !1127)
!1126 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1127 = !{!1128, !1129, !1130}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1125, file: !1126, line: 87, baseType: !41, size: 32)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1125, file: !1126, line: 88, baseType: !116, size: 128, offset: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1125, file: !1126, line: 89, baseType: !116, size: 128, offset: 192)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !835, file: !483, line: 878, baseType: !887, size: 192, align: 64, offset: 9536)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !835, file: !483, line: 881, baseType: !1133, size: 64, offset: 9728)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1135, line: 733, size: 10240, elements: !1136)
!1135 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!1136 = !{!1137, !2144}
!1137 = !DIDerivedType(tag: DW_TAG_member, scope: !1134, file: !1135, line: 734, baseType: !1138, size: 10240)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1134, file: !1135, line: 734, size: 10240, elements: !1139)
!1139 = !{!1140, !1144, !1157, !2042, !2043, !2044, !2045, !2046, !2047, !2054, !2055, !2056, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2095, !2097, !2100, !2124, !2125, !2126, !2129, !2130, !2131, !2134, !2135, !2136, !2142, !2143}
!1140 = !DIDerivedType(tag: DW_TAG_member, scope: !1138, file: !1135, line: 739, baseType: !1141, size: 512, align: 512)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1138, file: !1135, line: 739, size: 512, align: 512, elements: !1142)
!1142 = !{!1143}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1141, file: !1135, line: 747, baseType: !68, size: 32)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1138, file: !1135, line: 750, baseType: !1145, size: 128, offset: 512)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1146, line: 218, size: 128, elements: !1147)
!1146 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1147 = !{!1148, !1155, !1156}
!1148 = !DIDerivedType(tag: DW_TAG_member, scope: !1145, file: !1146, line: 219, baseType: !1149, size: 32)
!1149 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1145, file: !1146, line: 219, size: 32, elements: !1150)
!1150 = !{!1151, !1152}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1149, file: !1146, line: 220, baseType: !78, size: 32)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1149, file: !1146, line: 221, baseType: !1153)
!1153 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1146, line: 197, baseType: !1154)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1146, line: 197, elements: !410)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1145, file: !1146, line: 223, baseType: !7, size: 32, offset: 32)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1145, file: !1146, line: 224, baseType: !39, size: 64, offset: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1138, file: !1135, line: 752, baseType: !1158, size: 64, offset: 640)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!58, !1161, !58, !58, !58, !58}
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !6, line: 994, size: 1856, align: 64, elements: !1163)
!1163 = !{!1164, !1170, !1171, !1173, !1174, !1175, !1176, !1177, !1229, !1567, !1576, !1577, !1578, !1796, !1797, !1798, !1799, !1801, !2040, !2041}
!1164 = !DIDerivedType(tag: DW_TAG_member, scope: !1162, file: !6, line: 995, baseType: !1165, size: 128)
!1165 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1162, file: !6, line: 995, size: 128, elements: !1166)
!1166 = !{!1167, !1168, !1169}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1165, file: !6, line: 996, baseType: !856, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1165, file: !6, line: 997, baseType: !819, size: 128, align: 64)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1165, file: !6, line: 998, baseType: !7, size: 32)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1162, file: !6, line: 1005, baseType: !78, size: 32, offset: 128)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1162, file: !6, line: 1006, baseType: !1172, size: 32, offset: 160)
!1172 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !44, line: 156, baseType: !7)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1162, file: !6, line: 1007, baseType: !516, size: 64, offset: 192)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1162, file: !6, line: 1008, baseType: !512, size: 256, offset: 256)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1162, file: !6, line: 1009, baseType: !60, size: 64, offset: 512)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1162, file: !6, line: 1010, baseType: !7, size: 32, offset: 576)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1162, file: !6, line: 1011, baseType: !1178, size: 256, offset: 640)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !6, line: 948, size: 256, elements: !1179)
!1179 = !{!1180, !1201, !1225, !1226, !1227, !1228}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1178, file: !6, line: 949, baseType: !1181, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1182, line: 34, baseType: !1183)
!1182 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1182, line: 25, size: 64, elements: !1184)
!1184 = !{!1185}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1183, file: !1182, line: 26, baseType: !1186, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1187, line: 27, baseType: !1188)
!1187 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1187, line: 13, size: 64, elements: !1189)
!1189 = !{!1190, !1200}
!1190 = !DIDerivedType(tag: DW_TAG_member, scope: !1188, file: !1187, line: 14, baseType: !1191, size: 32)
!1191 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1188, file: !1187, line: 14, size: 32, elements: !1192)
!1192 = !{!1193, !1194}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1191, file: !1187, line: 15, baseType: !68, size: 32)
!1194 = !DIDerivedType(tag: DW_TAG_member, scope: !1191, file: !1187, line: 16, baseType: !1195, size: 32)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1191, file: !1187, line: 16, size: 32, elements: !1196)
!1196 = !{!1197, !1198}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1195, file: !1187, line: 18, baseType: !102, size: 8)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1195, file: !1187, line: 19, baseType: !1199, size: 24, offset: 8)
!1199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 24, elements: !415)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1188, file: !1187, line: 26, baseType: !90, size: 32, offset: 32)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1178, file: !6, line: 950, baseType: !1202, size: 64, offset: 64)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !23, line: 59, size: 768, elements: !1204)
!1204 = !{!1205, !1206, !1207, !1208, !1212, !1213, !1214, !1215}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1203, file: !23, line: 61, baseType: !187, size: 32)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1203, file: !23, line: 62, baseType: !7, size: 32, offset: 32)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1203, file: !23, line: 63, baseType: !78, size: 32, offset: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1203, file: !23, line: 65, baseType: !1209, size: 256, offset: 128)
!1209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 256, elements: !1210)
!1210 = !{!1211}
!1211 = !DISubrange(count: 4)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1203, file: !23, line: 66, baseType: !398, size: 64, offset: 384)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1203, file: !23, line: 68, baseType: !73, size: 192, offset: 448)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1203, file: !23, line: 69, baseType: !819, size: 128, align: 64, offset: 640)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1203, file: !23, line: 70, baseType: !1216, offset: 768)
!1216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1217, elements: !1223)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !23, line: 54, size: 128, elements: !1218)
!1218 = !{!1219, !1220}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1217, file: !23, line: 55, baseType: !41, size: 32)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1217, file: !23, line: 56, baseType: !1221, size: 64, offset: 64)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !23, line: 56, flags: DIFlagFwdDecl)
!1223 = !{!1224}
!1224 = !DISubrange(count: -1)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1178, file: !6, line: 951, baseType: !22, size: 32, offset: 128)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1178, file: !6, line: 952, baseType: !214, size: 32, offset: 160)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1178, file: !6, line: 952, baseType: !214, size: 32, offset: 192)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1178, file: !6, line: 953, baseType: !41, size: 32, offset: 224)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1162, file: !6, line: 1012, baseType: !1230, size: 64, offset: 896)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1232)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1233, line: 110, size: 1472, elements: !1234)
!1233 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1234 = !{!1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1251, !1252, !1253, !1254, !1255, !1256, !1369, !1370, !1371, !1372, !1373, !1404, !1553, !1554, !1562}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1232, file: !1233, line: 111, baseType: !516, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1232, file: !1233, line: 112, baseType: !214, size: 32, offset: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1232, file: !1233, line: 113, baseType: !223, size: 32, offset: 96)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1232, file: !1233, line: 114, baseType: !214, size: 32, offset: 128)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1232, file: !1233, line: 115, baseType: !223, size: 32, offset: 160)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1232, file: !1233, line: 116, baseType: !214, size: 32, offset: 192)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1232, file: !1233, line: 117, baseType: !223, size: 32, offset: 224)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1232, file: !1233, line: 118, baseType: !214, size: 32, offset: 256)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1232, file: !1233, line: 119, baseType: !223, size: 32, offset: 288)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1232, file: !1233, line: 120, baseType: !7, size: 32, offset: 320)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1232, file: !1233, line: 121, baseType: !1246, size: 64, offset: 384)
!1246 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1247, line: 24, baseType: !1248)
!1247 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1247, line: 24, size: 64, elements: !1249)
!1249 = !{!1250}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1248, file: !1247, line: 24, baseType: !279, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1232, file: !1233, line: 122, baseType: !1246, size: 64, offset: 448)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1232, file: !1233, line: 123, baseType: !1246, size: 64, offset: 512)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1232, file: !1233, line: 124, baseType: !1246, size: 64, offset: 576)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1232, file: !1233, line: 125, baseType: !1246, size: 64, offset: 640)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1232, file: !1233, line: 127, baseType: !106, size: 8, offset: 704)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1232, file: !1233, line: 129, baseType: !1257, size: 64, offset: 768)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1259, line: 195, size: 1728, elements: !1260)
!1259 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1260 = !{!1261, !1262, !1267, !1272, !1273, !1276, !1277, !1282, !1283, !1284, !1285, !1288, !1289, !1290, !1292, !1293, !1333, !1354}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1258, file: !1259, line: 196, baseType: !187, size: 32)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1258, file: !1259, line: 197, baseType: !1263, size: 32, offset: 32)
!1263 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1259, line: 28, baseType: !1264)
!1264 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !44, line: 104, baseType: !1265)
!1265 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !103, line: 20, baseType: !1266)
!1266 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !105, line: 26, baseType: !41)
!1267 = !DIDerivedType(tag: DW_TAG_member, scope: !1258, file: !1259, line: 198, baseType: !1268, size: 192, offset: 64)
!1268 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1258, file: !1259, line: 198, size: 192, elements: !1269)
!1269 = !{!1270, !1271}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1268, file: !1259, line: 199, baseType: !116, size: 128)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1268, file: !1259, line: 200, baseType: !887, size: 192, align: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1258, file: !1259, line: 205, baseType: !725, size: 320, offset: 256)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1258, file: !1259, line: 206, baseType: !1274, size: 64, offset: 576)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1259, line: 206, flags: DIFlagFwdDecl)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1258, file: !1259, line: 207, baseType: !39, size: 64, offset: 640)
!1277 = !DIDerivedType(tag: DW_TAG_member, scope: !1258, file: !1259, line: 208, baseType: !1278, size: 64, offset: 704)
!1278 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1258, file: !1259, line: 208, size: 64, elements: !1279)
!1279 = !{!1280, !1281}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1278, file: !1259, line: 209, baseType: !565, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1278, file: !1259, line: 210, baseType: !565, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1258, file: !1259, line: 212, baseType: !565, size: 64, offset: 768)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1258, file: !1259, line: 213, baseType: !214, size: 32, offset: 832)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1258, file: !1259, line: 214, baseType: !223, size: 32, offset: 864)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1258, file: !1259, line: 215, baseType: !1286, size: 32, offset: 896)
!1286 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1259, line: 31, baseType: !1287)
!1287 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !44, line: 110, baseType: !205)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1258, file: !1259, line: 216, baseType: !45, size: 16, offset: 928)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1258, file: !1259, line: 217, baseType: !45, size: 16, offset: 944)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1258, file: !1259, line: 221, baseType: !1291, size: 16, offset: 960)
!1291 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1258, file: !1259, line: 228, baseType: !58, size: 64, offset: 1024)
!1293 = !DIDerivedType(tag: DW_TAG_member, scope: !1258, file: !1259, line: 245, baseType: !1294, size: 320, offset: 1088)
!1294 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1258, file: !1259, line: 245, size: 320, elements: !1295)
!1295 = !{!1296, !1325}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1294, file: !1259, line: 246, baseType: !1297, size: 320)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1259, line: 114, size: 320, elements: !1298)
!1298 = !{!1299, !1300, !1312, !1315, !1324}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1297, file: !1259, line: 116, baseType: !58, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, scope: !1297, file: !1259, line: 117, baseType: !1301, size: 64, offset: 64)
!1301 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1297, file: !1259, line: 117, size: 64, elements: !1302)
!1302 = !{!1303, !1311}
!1303 = !DIDerivedType(tag: DW_TAG_member, scope: !1301, file: !1259, line: 118, baseType: !1304, size: 64)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1301, file: !1259, line: 118, size: 64, elements: !1305)
!1305 = !{!1306, !1307}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1304, file: !1259, line: 120, baseType: !112, size: 16)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1304, file: !1259, line: 121, baseType: !1308, size: 48, offset: 16)
!1308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 48, elements: !1309)
!1309 = !{!1310}
!1310 = !DISubrange(count: 6)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1301, file: !1259, line: 127, baseType: !58, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1297, file: !1259, line: 129, baseType: !1313, size: 64, offset: 128)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1259, line: 102, flags: DIFlagFwdDecl)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1297, file: !1259, line: 130, baseType: !1316, size: 64, offset: 192)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1259, line: 108, size: 192, elements: !1318)
!1318 = !{!1319, !1320, !1321}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1317, file: !1259, line: 109, baseType: !819, size: 128, align: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1317, file: !1259, line: 110, baseType: !187, size: 32, offset: 128)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1317, file: !1259, line: 111, baseType: !1322, size: 8, offset: 160)
!1322 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !44, line: 35, baseType: !1323)
!1323 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1297, file: !1259, line: 131, baseType: !35, size: 64, offset: 256)
!1325 = !DIDerivedType(tag: DW_TAG_member, scope: !1294, file: !1259, line: 247, baseType: !1326, size: 320)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1294, file: !1259, line: 247, size: 320, elements: !1327)
!1327 = !{!1328, !1329, !1330, !1331, !1332}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1326, file: !1259, line: 248, baseType: !58, size: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1326, file: !1259, line: 249, baseType: !58, size: 64, offset: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1326, file: !1259, line: 250, baseType: !1313, size: 64, offset: 128)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1326, file: !1259, line: 251, baseType: !1316, size: 64, offset: 192)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1326, file: !1259, line: 252, baseType: !347, size: 64, offset: 256)
!1333 = !DIDerivedType(tag: DW_TAG_member, scope: !1258, file: !1259, line: 260, baseType: !1334, size: 256, offset: 1408)
!1334 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1258, file: !1259, line: 260, size: 256, elements: !1335)
!1335 = !{!1336, !1342}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1334, file: !1259, line: 261, baseType: !1337, size: 256)
!1337 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1259, line: 134, size: 256, elements: !1338)
!1338 = !{!1339, !1340}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1337, file: !1259, line: 135, baseType: !39, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1337, file: !1259, line: 136, baseType: !1341, size: 256)
!1341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 256, elements: !1210)
!1342 = !DIDerivedType(tag: DW_TAG_member, scope: !1334, file: !1259, line: 262, baseType: !1343, size: 256)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1334, file: !1259, line: 262, size: 256, elements: !1344)
!1344 = !{!1345, !1346}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1343, file: !1259, line: 264, baseType: !116, size: 128)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1343, file: !1259, line: 265, baseType: !1347, size: 128, offset: 128)
!1347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1348, line: 22, size: 128, elements: !1349)
!1348 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1349 = !{!1350, !1353}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1347, file: !1348, line: 23, baseType: !1351, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1348, line: 23, flags: DIFlagFwdDecl)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1347, file: !1348, line: 24, baseType: !58, size: 64, offset: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1258, file: !1259, line: 280, baseType: !1355, size: 64, offset: 1664)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1259, line: 176, size: 192, elements: !1357)
!1357 = !{!1358, !1367, !1368}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1356, file: !1259, line: 177, baseType: !1359, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1259, line: 171, baseType: !1360)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{!41, !1257, !1363, !1365, !1257}
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1314)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1337)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1356, file: !1259, line: 178, baseType: !1257, size: 64, offset: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1356, file: !1259, line: 179, baseType: !1313, size: 64, offset: 128)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1232, file: !1233, line: 130, baseType: !1257, size: 64, offset: 832)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1232, file: !1233, line: 131, baseType: !1257, size: 64, offset: 896)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1232, file: !1233, line: 132, baseType: !1257, size: 64, offset: 960)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1232, file: !1233, line: 135, baseType: !39, size: 64, offset: 1024)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1232, file: !1233, line: 137, baseType: !1374, size: 64, offset: 1088)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1376, line: 14, size: 1088, elements: !1377)
!1376 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1377 = !{!1378, !1379, !1388, !1389, !1390, !1391, !1392, !1393}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1375, file: !1376, line: 15, baseType: !187, size: 32)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1375, file: !1376, line: 17, baseType: !1380, size: 320, offset: 64)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1381, line: 22, size: 320, elements: !1382)
!1381 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1382 = !{!1383, !1384, !1385, !1386}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1380, file: !1381, line: 23, baseType: !525, size: 32)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1380, file: !1381, line: 24, baseType: !522, size: 64, offset: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1380, file: !1381, line: 26, baseType: !116, size: 128, offset: 128)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1380, file: !1381, line: 28, baseType: !1387, size: 64, offset: 256)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1375, file: !1376, line: 19, baseType: !58, size: 64, offset: 384)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1375, file: !1376, line: 20, baseType: !516, size: 64, offset: 448)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1375, file: !1376, line: 23, baseType: !402, size: 128, offset: 512)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1375, file: !1376, line: 24, baseType: !214, size: 32, offset: 640)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1375, file: !1376, line: 29, baseType: !516, size: 64, offset: 704)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1375, file: !1376, line: 36, baseType: !1394, size: 320, offset: 768)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1395, line: 15, size: 320, elements: !1396)
!1395 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1396 = !{!1397, !1398, !1399, !1400, !1401, !1402, !1403}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1394, file: !1395, line: 16, baseType: !525, size: 32)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1394, file: !1395, line: 18, baseType: !41, size: 32, offset: 32)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1394, file: !1395, line: 19, baseType: !41, size: 32, offset: 64)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1394, file: !1395, line: 20, baseType: !41, size: 32, offset: 96)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1394, file: !1395, line: 21, baseType: !41, size: 32, offset: 128)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1394, file: !1395, line: 22, baseType: !58, size: 64, offset: 192)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1394, file: !1395, line: 23, baseType: !58, size: 64, offset: 256)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1232, file: !1233, line: 138, baseType: !1405, size: 64, offset: 1152)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !162, line: 68, size: 4800, elements: !1407)
!1407 = !{!1408, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1447, !1448, !1449, !1450, !1451, !1452, !1464, !1534, !1535, !1549, !1551}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !1406, file: !162, line: 69, baseType: !1409, size: 576)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !162, line: 23, size: 576, elements: !1410)
!1410 = !{!1411, !1412}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !1409, file: !162, line: 24, baseType: !205, size: 32)
!1412 = !DIDerivedType(tag: DW_TAG_member, scope: !1409, file: !162, line: 25, baseType: !1413, size: 512, offset: 64)
!1413 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1409, file: !162, line: 25, size: 512, elements: !1414)
!1414 = !{!1415, !1424}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !1413, file: !162, line: 26, baseType: !1416, size: 480)
!1416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1417, size: 480, elements: !1422)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !162, line: 17, size: 96, elements: !1418)
!1418 = !{!1419, !1420, !1421}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1417, file: !162, line: 18, baseType: !205, size: 32)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !1417, file: !162, line: 19, baseType: !205, size: 32, offset: 32)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1417, file: !162, line: 20, baseType: !205, size: 32, offset: 64)
!1422 = !{!1423}
!1423 = !DISubrange(count: 5)
!1424 = !DIDerivedType(tag: DW_TAG_member, scope: !1413, file: !162, line: 27, baseType: !1425, size: 128)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1413, file: !162, line: 27, size: 128, elements: !1426)
!1426 = !{!1427, !1429}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !1425, file: !162, line: 28, baseType: !1428, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !1425, file: !162, line: 29, baseType: !1428, size: 64, offset: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !1406, file: !162, line: 70, baseType: !1409, size: 576, offset: 576)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !1406, file: !162, line: 71, baseType: !1409, size: 576, offset: 1152)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1406, file: !162, line: 72, baseType: !1405, size: 64, offset: 1728)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1406, file: !162, line: 73, baseType: !41, size: 32, offset: 1792)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1406, file: !162, line: 74, baseType: !214, size: 32, offset: 1824)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !1406, file: !162, line: 75, baseType: !223, size: 32, offset: 1856)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1406, file: !162, line: 76, baseType: !1437, size: 192, offset: 1920)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1438, line: 9, size: 192, elements: !1439)
!1438 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!1439 = !{!1440, !1441, !1445, !1446}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1437, file: !1438, line: 10, baseType: !516, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1437, file: !1438, line: 11, baseType: !1442, size: 64, offset: 64)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1444)
!1444 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1438, line: 7, flags: DIFlagFwdDecl)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1437, file: !1438, line: 12, baseType: !7, size: 32, offset: 128)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1437, file: !1438, line: 13, baseType: !187, size: 32, offset: 160)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1406, file: !162, line: 77, baseType: !58, size: 64, offset: 2112)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !1406, file: !162, line: 80, baseType: !1322, size: 8, offset: 2176)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !1406, file: !162, line: 88, baseType: !116, size: 128, offset: 2240)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !1406, file: !162, line: 89, baseType: !1257, size: 64, offset: 2368)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !1406, file: !162, line: 90, baseType: !725, size: 320, offset: 2432)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1406, file: !162, line: 97, baseType: !1453, size: 256, offset: 2752)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1454, line: 98, size: 256, elements: !1455)
!1454 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1455 = !{!1456, !1457, !1458}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1453, file: !1454, line: 99, baseType: !516, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1453, file: !1454, line: 100, baseType: !116, size: 128, offset: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1453, file: !1454, line: 101, baseType: !1459, size: 64, offset: 192)
!1459 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1454, line: 21, baseType: !1460)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1461 = !DISubroutineType(types: !1462)
!1462 = !{null, !1463}
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1406, file: !162, line: 99, baseType: !1465, size: 768, offset: 3008)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !31, line: 199, size: 768, elements: !1466)
!1466 = !{!1467, !1472}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1465, file: !31, line: 200, baseType: !1468, size: 64)
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = !DISubroutineType(types: !1470)
!1470 = !{!41, !1471}
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1465, file: !31, line: 201, baseType: !1473, size: 704, offset: 64)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !31, line: 193, size: 704, elements: !1474)
!1474 = !{!1475, !1533}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1473, file: !31, line: 195, baseType: !1476, size: 640)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !31, line: 173, size: 640, elements: !1477)
!1477 = !{!1478, !1490, !1502, !1503, !1523, !1524, !1526, !1532}
!1478 = !DIDerivedType(tag: DW_TAG_member, scope: !1476, file: !31, line: 174, baseType: !1479, size: 192)
!1479 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1476, file: !31, line: 174, size: 192, elements: !1480)
!1480 = !{!1481, !1489}
!1481 = !DIDerivedType(tag: DW_TAG_member, scope: !1479, file: !31, line: 175, baseType: !1482, size: 192)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1479, file: !31, line: 175, size: 192, elements: !1483)
!1483 = !{!1484, !1485, !1486, !1487, !1488}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1482, file: !31, line: 176, baseType: !52, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1482, file: !31, line: 177, baseType: !41, size: 32, offset: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1482, file: !31, line: 178, baseType: !41, size: 32, offset: 96)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1482, file: !31, line: 179, baseType: !41, size: 32, offset: 128)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1482, file: !31, line: 180, baseType: !41, size: 32, offset: 160)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1479, file: !31, line: 182, baseType: !819, size: 128, align: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1476, file: !31, line: 184, baseType: !1491, size: 64, offset: 192)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1493, line: 26, size: 256, elements: !1494)
!1493 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1494 = !{!1495, !1496}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1492, file: !1493, line: 27, baseType: !7, size: 32)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1492, file: !1493, line: 28, baseType: !1497, size: 192, offset: 64)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1498, line: 43, size: 192, elements: !1499)
!1498 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1499 = !{!1500, !1501}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1497, file: !1498, line: 44, baseType: !525, size: 32)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1497, file: !1498, line: 45, baseType: !116, size: 128, offset: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1476, file: !31, line: 185, baseType: !52, size: 64, offset: 256)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1476, file: !31, line: 186, baseType: !1504, size: 64, offset: 320)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !31, line: 204, size: 960, elements: !1506)
!1506 = !{!1507, !1508, !1512, !1519}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1505, file: !31, line: 205, baseType: !1465, size: 768)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1505, file: !31, line: 206, baseType: !1509, size: 64, offset: 768)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{!1471, !1504}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1505, file: !31, line: 207, baseType: !1513, size: 64, offset: 832)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{null, !1516, !1517, !1518}
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1505, file: !31, line: 209, baseType: !1520, size: 64, offset: 896)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DISubroutineType(types: !1522)
!1522 = !{!41, !1516, !52}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1476, file: !31, line: 187, baseType: !1471, size: 64, offset: 384)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1476, file: !31, line: 188, baseType: !1525, size: 64, offset: 448)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1476, file: !31, line: 189, baseType: !1527, size: 64, offset: 512)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !31, line: 157, size: 256, elements: !1529)
!1529 = !{!1530, !1531}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1528, file: !31, line: 158, baseType: !887, size: 192, align: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1528, file: !31, line: 159, baseType: !1516, size: 64, offset: 192)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1476, file: !31, line: 190, baseType: !398, size: 64, offset: 576)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1473, file: !31, line: 196, baseType: !1019, size: 64, offset: 640)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !1406, file: !162, line: 100, baseType: !1516, size: 64, offset: 3776)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1406, file: !162, line: 102, baseType: !1536, size: 64, offset: 3840)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !162, line: 107, size: 1152, elements: !1538)
!1538 = !{!1539, !1540, !1541, !1542, !1543, !1547}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1537, file: !162, line: 108, baseType: !402, size: 128)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1537, file: !162, line: 109, baseType: !1405, size: 64, offset: 128)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1537, file: !162, line: 110, baseType: !214, size: 32, offset: 192)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1537, file: !162, line: 111, baseType: !68, size: 32, offset: 224)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1537, file: !162, line: 112, baseType: !1544, size: 640, offset: 256)
!1544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !516, size: 640, elements: !1545)
!1545 = !{!1546}
!1546 = !DISubrange(count: 10)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1537, file: !162, line: 113, baseType: !1548, size: 256, offset: 896)
!1548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !516, size: 256, elements: !1210)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !1406, file: !162, line: 103, baseType: !1550, size: 640, offset: 3904)
!1550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, size: 640, elements: !1545)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !1406, file: !162, line: 104, baseType: !1552, size: 256, offset: 4544)
!1552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, size: 256, elements: !1210)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1232, file: !1233, line: 139, baseType: !1536, size: 64, offset: 1216)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1232, file: !1233, line: 140, baseType: !1555, size: 64, offset: 1280)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1233, line: 25, size: 64, elements: !1557)
!1557 = !{!1558, !1559, !1560}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1556, file: !1233, line: 26, baseType: !68, size: 32)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1556, file: !1233, line: 27, baseType: !41, size: 32, offset: 32)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1556, file: !1233, line: 28, baseType: !1561, offset: 64)
!1561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, elements: !1223)
!1562 = !DIDerivedType(tag: DW_TAG_member, scope: !1232, file: !1233, line: 142, baseType: !1563, size: 128, offset: 1344)
!1563 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1232, file: !1233, line: 142, size: 128, elements: !1564)
!1564 = !{!1565, !1566}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1563, file: !1233, line: 143, baseType: !41, size: 32)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1563, file: !1233, line: 144, baseType: !819, size: 128, align: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1162, file: !6, line: 1013, baseType: !1568, size: 256, offset: 960)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !6, line: 970, size: 256, elements: !1569)
!1569 = !{!1570, !1571, !1572, !1573, !1574, !1575}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1568, file: !6, line: 971, baseType: !58, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1568, file: !6, line: 972, baseType: !7, size: 32, offset: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1568, file: !6, line: 973, baseType: !7, size: 32, offset: 96)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1568, file: !6, line: 974, baseType: !7, size: 32, offset: 128)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1568, file: !6, line: 975, baseType: !7, size: 32, offset: 160)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1568, file: !6, line: 976, baseType: !60, size: 64, offset: 192)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1162, file: !6, line: 1014, baseType: !637, size: 128, offset: 1216)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1162, file: !6, line: 1015, baseType: !208, size: 64, offset: 1344)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1162, file: !6, line: 1016, baseType: !1579, size: 64, offset: 1408)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1581)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !6, line: 1914, size: 2112, elements: !1582)
!1582 = !{!1583, !1584, !1588, !1592, !1596, !1624, !1625, !1631, !1644, !1652, !1656, !1657, !1718, !1719, !1723, !1728, !1729, !1733, !1737, !1743, !1744, !1748, !1749, !1755, !1759, !1763, !1769, !1773, !1777, !1781, !1785, !1786, !1792}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1581, file: !6, line: 1915, baseType: !393, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1581, file: !6, line: 1916, baseType: !1585, size: 64, offset: 64)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!60, !1161, !60, !41}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1581, file: !6, line: 1917, baseType: !1589, size: 64, offset: 128)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!491, !1161, !347, !54, !59}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1581, file: !6, line: 1918, baseType: !1593, size: 64, offset: 192)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{!491, !1161, !35, !54, !59}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1581, file: !6, line: 1919, baseType: !1597, size: 64, offset: 256)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DISubroutineType(types: !1599)
!1599 = !{!491, !1600, !1622}
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !6, line: 373, size: 384, elements: !1602)
!1602 = !{!1603, !1604, !1605, !1609, !1610, !1611, !1612}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1601, file: !6, line: 374, baseType: !1161, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1601, file: !6, line: 375, baseType: !60, size: 64, offset: 64)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1601, file: !6, line: 376, baseType: !1606, size: 64, offset: 128)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DISubroutineType(types: !1608)
!1608 = !{null, !1600, !494}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1601, file: !6, line: 377, baseType: !39, size: 64, offset: 192)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1601, file: !6, line: 378, baseType: !41, size: 32, offset: 256)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1601, file: !6, line: 379, baseType: !112, size: 16, offset: 288)
!1612 = !DIDerivedType(tag: DW_TAG_member, scope: !1601, file: !6, line: 380, baseType: !1613, size: 64, offset: 320)
!1613 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1601, file: !6, line: 380, size: 64, elements: !1614)
!1614 = !{!1615, !1618}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1613, file: !6, line: 386, baseType: !1616, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !6, line: 386, flags: DIFlagFwdDecl)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1613, file: !6, line: 395, baseType: !1619, size: 64)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{!491, !39}
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !6, line: 69, flags: DIFlagFwdDecl)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1581, file: !6, line: 1920, baseType: !1597, size: 64, offset: 320)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1581, file: !6, line: 1921, baseType: !1626, size: 64, offset: 384)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DISubroutineType(types: !1628)
!1628 = !{!41, !1600, !1629, !7}
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !6, line: 53, flags: DIFlagFwdDecl)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1581, file: !6, line: 1923, baseType: !1632, size: 64, offset: 448)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{!41, !1161, !1635}
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !6, line: 1858, size: 128, elements: !1637)
!1637 = !{!1638, !1643}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1636, file: !6, line: 1859, baseType: !1639, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !6, line: 1855, baseType: !1640)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{!1322, !1635, !35, !41, !60, !279, !7}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1636, file: !6, line: 1860, baseType: !60, size: 64, offset: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1581, file: !6, line: 1924, baseType: !1645, size: 64, offset: 512)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!1648, !1161, !1650}
!1648 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1649, line: 59, baseType: !7)
!1649 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !6, line: 61, flags: DIFlagFwdDecl)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1581, file: !6, line: 1925, baseType: !1653, size: 64, offset: 576)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{!494, !1161, !7, !58}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1581, file: !6, line: 1926, baseType: !1653, size: 64, offset: 640)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1581, file: !6, line: 1927, baseType: !1658, size: 64, offset: 704)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{!41, !1161, !1661}
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1135, line: 625, size: 1344, elements: !1663)
!1663 = !{!1664, !1673, !1674, !1682, !1689, !1690, !1695, !1696, !1701, !1702, !1705, !1709, !1710, !1711, !1712, !1713, !1716}
!1664 = !DIDerivedType(tag: DW_TAG_member, scope: !1662, file: !1135, line: 628, baseType: !1665, size: 128)
!1665 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1662, file: !1135, line: 628, size: 128, elements: !1666)
!1666 = !{!1667, !1672}
!1667 = !DIDerivedType(tag: DW_TAG_member, scope: !1665, file: !1135, line: 629, baseType: !1668, size: 128)
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1665, file: !1135, line: 629, size: 128, elements: !1669)
!1669 = !{!1670, !1671}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1668, file: !1135, line: 631, baseType: !58, size: 64)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1668, file: !1135, line: 632, baseType: !58, size: 64, offset: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1665, file: !1135, line: 635, baseType: !819, size: 128, align: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1662, file: !1135, line: 639, baseType: !1133, size: 64, offset: 128)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1662, file: !1135, line: 640, baseType: !1675, size: 64, offset: 192)
!1675 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1676, line: 297, baseType: !1677)
!1676 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1676, line: 297, size: 64, elements: !1678)
!1678 = !{!1679}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1677, file: !1676, line: 297, baseType: !1680, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1681, line: 19, baseType: !58)
!1681 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1682 = !DIDerivedType(tag: DW_TAG_member, scope: !1662, file: !1135, line: 646, baseType: !1683, size: 64, offset: 256)
!1683 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1662, file: !1135, line: 646, size: 64, elements: !1684)
!1684 = !{!1685, !1688}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1683, file: !1135, line: 647, baseType: !1686, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1687)
!1687 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !1135, line: 542, baseType: !58)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1683, file: !1135, line: 648, baseType: !1687, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1662, file: !1135, line: 666, baseType: !41, size: 32, offset: 320)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1662, file: !1135, line: 667, baseType: !1691, size: 64, offset: 384)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !1135, line: 579, size: 320, elements: !1693)
!1693 = !{!1694}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1692, file: !1135, line: 580, baseType: !725, size: 320)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1662, file: !1135, line: 670, baseType: !1322, size: 8, offset: 448)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1662, file: !1135, line: 681, baseType: !1697, size: 256, offset: 512)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1662, file: !1135, line: 678, size: 256, elements: !1698)
!1698 = !{!1699, !1700}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1697, file: !1135, line: 679, baseType: !887, size: 192, align: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1697, file: !1135, line: 680, baseType: !58, size: 64, offset: 192)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1662, file: !1135, line: 689, baseType: !116, size: 128, offset: 768)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1662, file: !1135, line: 691, baseType: !1703, size: 64, offset: 896)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1135, line: 691, flags: DIFlagFwdDecl)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1662, file: !1135, line: 694, baseType: !1706, size: 64, offset: 960)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1708)
!1708 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1135, line: 694, flags: DIFlagFwdDecl)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1662, file: !1135, line: 697, baseType: !58, size: 64, offset: 1024)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1662, file: !1135, line: 699, baseType: !1161, size: 64, offset: 1088)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1662, file: !1135, line: 700, baseType: !39, size: 64, offset: 1152)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1662, file: !1135, line: 711, baseType: !516, size: 64, offset: 1216)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1662, file: !1135, line: 717, baseType: !1714, size: 64, offset: 1280)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1135, line: 717, flags: DIFlagFwdDecl)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1662, file: !1135, line: 722, baseType: !1717, offset: 1344)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1135, line: 570, elements: !410)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1581, file: !6, line: 1928, baseType: !58, size: 64, offset: 768)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1581, file: !6, line: 1929, baseType: !1720, size: 64, offset: 832)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DISubroutineType(types: !1722)
!1722 = !{!41, !208, !1161}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1581, file: !6, line: 1930, baseType: !1724, size: 64, offset: 896)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = !DISubroutineType(types: !1726)
!1726 = !{!41, !1161, !1727}
!1727 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !6, line: 1061, baseType: !39)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1581, file: !6, line: 1931, baseType: !1720, size: 64, offset: 960)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1581, file: !6, line: 1932, baseType: !1730, size: 64, offset: 1024)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DISubroutineType(types: !1732)
!1732 = !{!41, !1161, !60, !60, !41}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1581, file: !6, line: 1933, baseType: !1734, size: 64, offset: 1088)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DISubroutineType(types: !1736)
!1736 = !{!41, !41, !1161, !41}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1581, file: !6, line: 1934, baseType: !1738, size: 64, offset: 1152)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DISubroutineType(types: !1740)
!1740 = !{!41, !1161, !41, !1741}
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !6, line: 1063, flags: DIFlagFwdDecl)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1581, file: !6, line: 1935, baseType: !1158, size: 64, offset: 1216)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1581, file: !6, line: 1936, baseType: !1745, size: 64, offset: 1280)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{!41, !41}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1581, file: !6, line: 1937, baseType: !1738, size: 64, offset: 1344)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1581, file: !6, line: 1938, baseType: !1750, size: 64, offset: 1408)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{!491, !1753, !1161, !59, !54, !7}
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !483, line: 59, flags: DIFlagFwdDecl)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1581, file: !6, line: 1939, baseType: !1756, size: 64, offset: 1472)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{!491, !1161, !59, !1753, !54, !7}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1581, file: !6, line: 1940, baseType: !1760, size: 64, offset: 1536)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = !DISubroutineType(types: !1762)
!1762 = !{null, !1161}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1581, file: !6, line: 1941, baseType: !1764, size: 64, offset: 1600)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = !DISubroutineType(types: !1766)
!1766 = !{!41, !1161, !41, !1767, !1768}
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1581, file: !6, line: 1942, baseType: !1770, size: 64, offset: 1664)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DISubroutineType(types: !1772)
!1772 = !{!494, !1161, !41, !60, !60}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1581, file: !6, line: 1944, baseType: !1774, size: 64, offset: 1728)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{null, !481, !1161}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1581, file: !6, line: 1948, baseType: !1778, size: 64, offset: 1792)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{!491, !1161, !60, !1161, !60, !54, !7}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1581, file: !6, line: 1950, baseType: !1782, size: 64, offset: 1856)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DISubroutineType(types: !1784)
!1784 = !{!60, !1161, !60, !1161, !60, !60, !7}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1581, file: !6, line: 1953, baseType: !1730, size: 64, offset: 1920)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1581, file: !6, line: 1954, baseType: !1787, size: 64, offset: 1984)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DISubroutineType(types: !1789)
!1789 = !{!41, !1790, !7}
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !6, line: 1911, flags: DIFlagFwdDecl)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1581, file: !6, line: 1955, baseType: !1793, size: 64, offset: 2048)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DISubroutineType(types: !1795)
!1795 = !{!41, !1790, !1629, !7}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1162, file: !6, line: 1018, baseType: !279, size: 64, offset: 1472)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1162, file: !6, line: 1020, baseType: !39, size: 64, offset: 1536)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1162, file: !6, line: 1023, baseType: !39, size: 64, offset: 1600)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1162, file: !6, line: 1027, baseType: !1800, size: 64, offset: 1664)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1162, file: !6, line: 1029, baseType: !1802, size: 64, offset: 1728)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !6, line: 472, size: 1536, align: 64, elements: !1804)
!1804 = !{!1805, !1806, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !2032, !2033, !2034, !2037, !2038, !2039}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1803, file: !6, line: 473, baseType: !208, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1803, file: !6, line: 474, baseType: !1807, size: 128, offset: 64)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1808, line: 296, size: 128, elements: !1809)
!1808 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1809 = !{!1810, !1811, !1812}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1807, file: !1808, line: 297, baseType: !78, size: 32)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1807, file: !1808, line: 299, baseType: !577, size: 32, offset: 32)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1807, file: !1808, line: 300, baseType: !39, size: 64, offset: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1803, file: !6, line: 475, baseType: !725, size: 320, offset: 192)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1803, file: !6, line: 476, baseType: !577, size: 32, offset: 512)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1803, file: !6, line: 477, baseType: !68, size: 32, offset: 544)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1803, file: !6, line: 482, baseType: !1016, size: 128, offset: 576)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1803, file: !6, line: 483, baseType: !58, size: 64, offset: 704)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1803, file: !6, line: 484, baseType: !58, size: 64, offset: 768)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1803, file: !6, line: 485, baseType: !1820, size: 64, offset: 832)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1822)
!1822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !6, line: 404, size: 1280, elements: !1823)
!1823 = !{!1824, !1888, !1958, !1962, !1966, !1972, !1977, !1981, !1986, !1990, !1994, !1998, !1999, !2003, !2007, !2011, !2016, !2020, !2027, !2028}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1822, file: !6, line: 405, baseType: !1825, size: 64)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = !DISubroutineType(types: !1827)
!1827 = !{!41, !1828, !443}
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1135, line: 74, size: 512, align: 128, elements: !1830)
!1830 = !{!1831, !1832, !1882, !1887}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1829, file: !1135, line: 75, baseType: !58, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, scope: !1829, file: !1135, line: 83, baseType: !1833, size: 320, offset: 64)
!1833 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1829, file: !1135, line: 83, size: 320, elements: !1834)
!1834 = !{!1835, !1856, !1870, !1874, !1881}
!1835 = !DIDerivedType(tag: DW_TAG_member, scope: !1833, file: !1135, line: 84, baseType: !1836, size: 320)
!1836 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1833, file: !1135, line: 84, size: 320, elements: !1837)
!1837 = !{!1838, !1849, !1850, !1855}
!1838 = !DIDerivedType(tag: DW_TAG_member, scope: !1836, file: !1135, line: 90, baseType: !1839, size: 128)
!1839 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1836, file: !1135, line: 90, size: 128, elements: !1840)
!1840 = !{!1841, !1842, !1847, !1848}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1839, file: !1135, line: 91, baseType: !116, size: 128)
!1842 = !DIDerivedType(tag: DW_TAG_member, scope: !1839, file: !1135, line: 94, baseType: !1843, size: 128)
!1843 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1839, file: !1135, line: 94, size: 128, elements: !1844)
!1844 = !{!1845, !1846}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1843, file: !1135, line: 96, baseType: !39, size: 64)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1843, file: !1135, line: 98, baseType: !7, size: 32, offset: 64)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1839, file: !1135, line: 102, baseType: !116, size: 128)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1839, file: !1135, line: 103, baseType: !116, size: 128)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1836, file: !1135, line: 106, baseType: !1802, size: 64, offset: 128)
!1850 = !DIDerivedType(tag: DW_TAG_member, scope: !1836, file: !1135, line: 107, baseType: !1851, size: 64, offset: 192)
!1851 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1836, file: !1135, line: 107, size: 64, elements: !1852)
!1852 = !{!1853, !1854}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1851, file: !1135, line: 108, baseType: !58, size: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1851, file: !1135, line: 109, baseType: !58, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1836, file: !1135, line: 117, baseType: !58, size: 64, offset: 256)
!1856 = !DIDerivedType(tag: DW_TAG_member, scope: !1833, file: !1135, line: 119, baseType: !1857, size: 320)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1833, file: !1135, line: 119, size: 320, elements: !1858)
!1858 = !{!1859, !1860, !1863, !1864, !1865}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1857, file: !1135, line: 124, baseType: !58, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1857, file: !1135, line: 125, baseType: !1861, size: 64, offset: 64)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !1135, line: 125, flags: DIFlagFwdDecl)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1857, file: !1135, line: 126, baseType: !58, size: 64, offset: 128)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1857, file: !1135, line: 127, baseType: !58, size: 64, offset: 192)
!1865 = !DIDerivedType(tag: DW_TAG_member, scope: !1857, file: !1135, line: 128, baseType: !1866, size: 64, offset: 256)
!1866 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1857, file: !1135, line: 128, size: 64, elements: !1867)
!1867 = !{!1868, !1869}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1866, file: !1135, line: 133, baseType: !58, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1866, file: !1135, line: 138, baseType: !516, size: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, scope: !1833, file: !1135, line: 141, baseType: !1871, size: 64)
!1871 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1833, file: !1135, line: 141, size: 64, elements: !1872)
!1872 = !{!1873}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1871, file: !1135, line: 142, baseType: !58, size: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, scope: !1833, file: !1135, line: 144, baseType: !1875, size: 128)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1833, file: !1135, line: 144, size: 128, elements: !1876)
!1876 = !{!1877, !1880}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1875, file: !1135, line: 146, baseType: !1878, size: 64)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1135, line: 146, flags: DIFlagFwdDecl)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1875, file: !1135, line: 147, baseType: !39, size: 64, offset: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1833, file: !1135, line: 161, baseType: !819, size: 128, align: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, scope: !1829, file: !1135, line: 164, baseType: !1883, size: 32, offset: 384)
!1883 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1829, file: !1135, line: 164, size: 32, elements: !1884)
!1884 = !{!1885, !1886}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1883, file: !1135, line: 169, baseType: !68, size: 32)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1883, file: !1135, line: 177, baseType: !7, size: 32)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1829, file: !1135, line: 181, baseType: !68, size: 32, offset: 416)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1822, file: !6, line: 406, baseType: !1889, size: 64, offset: 64)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DISubroutineType(types: !1891)
!1891 = !{!41, !1161, !1892}
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !1135, line: 293, size: 1536, elements: !1894)
!1894 = !{!1895, !1925, !1939}
!1895 = !DIDerivedType(tag: DW_TAG_member, scope: !1893, file: !1135, line: 295, baseType: !1896, size: 512)
!1896 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1893, file: !1135, line: 295, size: 512, elements: !1897)
!1897 = !{!1898, !1924}
!1898 = !DIDerivedType(tag: DW_TAG_member, scope: !1896, file: !1135, line: 296, baseType: !1899, size: 448)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1896, file: !1135, line: 296, size: 448, elements: !1900)
!1900 = !{!1901, !1902, !1911, !1912, !1913, !1922, !1923}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1899, file: !1135, line: 298, baseType: !58, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, scope: !1899, file: !1135, line: 299, baseType: !1903, size: 128, offset: 64)
!1903 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1899, file: !1135, line: 299, size: 128, elements: !1904)
!1904 = !{!1905, !1906}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1903, file: !1135, line: 300, baseType: !116, size: 128)
!1906 = !DIDerivedType(tag: DW_TAG_member, scope: !1903, file: !1135, line: 302, baseType: !1907, size: 128)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1903, file: !1135, line: 302, size: 128, elements: !1908)
!1908 = !{!1909, !1910}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1907, file: !1135, line: 303, baseType: !39, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1907, file: !1135, line: 305, baseType: !7, size: 32, offset: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1899, file: !1135, line: 310, baseType: !1802, size: 64, offset: 192)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1899, file: !1135, line: 311, baseType: !58, size: 64, offset: 256)
!1913 = !DIDerivedType(tag: DW_TAG_member, scope: !1899, file: !1135, line: 312, baseType: !1914, size: 64, offset: 320)
!1914 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1899, file: !1135, line: 312, size: 64, elements: !1915)
!1915 = !{!1916, !1917}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1914, file: !1135, line: 313, baseType: !39, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1914, file: !1135, line: 314, baseType: !1918, size: 64)
!1918 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !1135, line: 257, baseType: !1919)
!1919 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1135, line: 255, size: 64, elements: !1920)
!1920 = !{!1921}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1919, file: !1135, line: 256, baseType: !58, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1899, file: !1135, line: 316, baseType: !68, size: 32, offset: 384)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1899, file: !1135, line: 317, baseType: !68, size: 32, offset: 416)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1896, file: !1135, line: 323, baseType: !1829, size: 512, align: 128)
!1925 = !DIDerivedType(tag: DW_TAG_member, scope: !1893, file: !1135, line: 325, baseType: !1926, size: 512, offset: 512)
!1926 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1893, file: !1135, line: 325, size: 512, elements: !1927)
!1927 = !{!1928, !1938}
!1928 = !DIDerivedType(tag: DW_TAG_member, scope: !1926, file: !1135, line: 326, baseType: !1929, size: 320)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1926, file: !1135, line: 326, size: 320, elements: !1930)
!1930 = !{!1931, !1932, !1933, !1934, !1935, !1936, !1937}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1929, file: !1135, line: 327, baseType: !58, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1929, file: !1135, line: 328, baseType: !58, size: 64, offset: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1929, file: !1135, line: 329, baseType: !58, size: 64, offset: 128)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1929, file: !1135, line: 331, baseType: !68, size: 32, offset: 192)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1929, file: !1135, line: 332, baseType: !68, size: 32, offset: 224)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1929, file: !1135, line: 333, baseType: !68, size: 32, offset: 256)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1929, file: !1135, line: 335, baseType: !7, size: 32, offset: 288)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1926, file: !1135, line: 339, baseType: !1829, size: 512, align: 128)
!1939 = !DIDerivedType(tag: DW_TAG_member, scope: !1893, file: !1135, line: 341, baseType: !1940, size: 512, offset: 1024)
!1940 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1893, file: !1135, line: 341, size: 512, elements: !1941)
!1941 = !{!1942, !1951, !1957}
!1942 = !DIDerivedType(tag: DW_TAG_member, scope: !1940, file: !1135, line: 342, baseType: !1943, size: 384)
!1943 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1940, file: !1135, line: 342, size: 384, elements: !1944)
!1944 = !{!1945, !1946, !1947, !1948, !1949, !1950}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1943, file: !1135, line: 343, baseType: !58, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1943, file: !1135, line: 344, baseType: !58, size: 64, offset: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1943, file: !1135, line: 346, baseType: !39, size: 64, offset: 128)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1943, file: !1135, line: 347, baseType: !39, size: 64, offset: 192)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1943, file: !1135, line: 348, baseType: !39, size: 64, offset: 256)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1943, file: !1135, line: 349, baseType: !39, size: 64, offset: 320)
!1951 = !DIDerivedType(tag: DW_TAG_member, scope: !1940, file: !1135, line: 352, baseType: !1952, size: 256)
!1952 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1940, file: !1135, line: 352, size: 256, elements: !1953)
!1953 = !{!1954, !1955, !1956}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1952, file: !1135, line: 353, baseType: !58, size: 64)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1952, file: !1135, line: 354, baseType: !58, size: 64, offset: 64)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1952, file: !1135, line: 356, baseType: !116, size: 128, offset: 128)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1940, file: !1135, line: 359, baseType: !1829, size: 512, align: 128)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1822, file: !6, line: 409, baseType: !1959, size: 64, offset: 128)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{!41, !1802, !443}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1822, file: !6, line: 412, baseType: !1963, size: 64, offset: 192)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!1322, !1802, !1892}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1822, file: !6, line: 414, baseType: !1967, size: 64, offset: 256)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DISubroutineType(types: !1969)
!1969 = !{null, !1970}
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !6, line: 310, flags: DIFlagFwdDecl)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1822, file: !6, line: 416, baseType: !1973, size: 64, offset: 320)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{!41, !1161, !1802, !60, !7, !1976, !1768}
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1822, file: !6, line: 419, baseType: !1978, size: 64, offset: 384)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{!41, !1161, !1802, !60, !7, !7, !1828, !39}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1822, file: !6, line: 424, baseType: !1982, size: 64, offset: 448)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{!1985, !1802, !1985}
!1985 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !44, line: 131, baseType: !279)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1822, file: !6, line: 425, baseType: !1987, size: 64, offset: 512)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{null, !1892, !54, !54}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1822, file: !6, line: 426, baseType: !1991, size: 64, offset: 576)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!1322, !1892, !577}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1822, file: !6, line: 427, baseType: !1995, size: 64, offset: 640)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DISubroutineType(types: !1997)
!1997 = !{null, !1892}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1822, file: !6, line: 428, baseType: !1597, size: 64, offset: 704)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1822, file: !6, line: 433, baseType: !2000, size: 64, offset: 768)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!41, !1802, !1892, !1892, !126}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1822, file: !6, line: 435, baseType: !2004, size: 64, offset: 832)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DISubroutineType(types: !2006)
!2006 = !{!41, !1892}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1822, file: !6, line: 436, baseType: !2008, size: 64, offset: 896)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{!1322, !1892, !54, !54}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1822, file: !6, line: 438, baseType: !2012, size: 64, offset: 960)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = !DISubroutineType(types: !2014)
!2014 = !{null, !1892, !2015, !2015}
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1822, file: !6, line: 439, baseType: !2017, size: 64, offset: 1024)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!41, !1802, !1828}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1822, file: !6, line: 442, baseType: !2021, size: 64, offset: 1088)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{!41, !2024, !1161, !2026}
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !6, line: 66, flags: DIFlagFwdDecl)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1822, file: !6, line: 444, baseType: !1760, size: 64, offset: 1152)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1822, file: !6, line: 445, baseType: !2029, size: 64, offset: 1216)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{!41, !1600, !1622}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1803, file: !6, line: 486, baseType: !58, size: 64, offset: 896)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1803, file: !6, line: 487, baseType: !725, size: 320, offset: 960)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1803, file: !6, line: 488, baseType: !2035, size: 32, offset: 1280)
!2035 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2036, line: 8, baseType: !205)
!2036 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1803, file: !6, line: 489, baseType: !78, size: 32, offset: 1312)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1803, file: !6, line: 490, baseType: !116, size: 128, offset: 1344)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1803, file: !6, line: 491, baseType: !39, size: 64, offset: 1472)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1162, file: !6, line: 1030, baseType: !2035, size: 32, offset: 1792)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1162, file: !6, line: 1031, baseType: !2035, size: 32, offset: 1824)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1138, file: !1135, line: 756, baseType: !58, size: 64, offset: 704)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1138, file: !1135, line: 757, baseType: !58, size: 64, offset: 768)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1138, file: !1135, line: 760, baseType: !58, size: 64, offset: 832)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1138, file: !1135, line: 761, baseType: !58, size: 64, offset: 896)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1138, file: !1135, line: 763, baseType: !58, size: 64, offset: 960)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1138, file: !1135, line: 764, baseType: !2048, size: 64, offset: 1024)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1676, line: 299, baseType: !2050)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1676, line: 299, size: 64, elements: !2051)
!2051 = !{!2052}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2050, file: !1676, line: 299, baseType: !2053, size: 64)
!2053 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1681, line: 18, baseType: !58)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1138, file: !1135, line: 773, baseType: !68, size: 32, offset: 1088)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1138, file: !1135, line: 785, baseType: !68, size: 32, offset: 1120)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1138, file: !1135, line: 795, baseType: !2057, size: 64, offset: 1152)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !1135, line: 726, size: 128, elements: !2059)
!2059 = !{!2060, !2061}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2058, file: !1135, line: 727, baseType: !279, size: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2058, file: !1135, line: 728, baseType: !41, size: 32, offset: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1138, file: !1135, line: 801, baseType: !58, size: 64, offset: 1216)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1138, file: !1135, line: 804, baseType: !516, size: 64, offset: 1280)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1138, file: !1135, line: 806, baseType: !41, size: 32, offset: 1344)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1138, file: !1135, line: 808, baseType: !78, size: 32, offset: 1376)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1138, file: !1135, line: 823, baseType: !725, size: 320, offset: 1408)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1138, file: !1135, line: 825, baseType: !116, size: 128, offset: 1728)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1138, file: !1135, line: 845, baseType: !41, size: 32, offset: 1856)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1138, file: !1135, line: 849, baseType: !58, size: 64, offset: 1920)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1138, file: !1135, line: 850, baseType: !58, size: 64, offset: 1984)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1138, file: !1135, line: 852, baseType: !58, size: 64, offset: 2048)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1138, file: !1135, line: 853, baseType: !58, size: 64, offset: 2112)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1138, file: !1135, line: 854, baseType: !518, size: 64, offset: 2176)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1138, file: !1135, line: 855, baseType: !58, size: 64, offset: 2240)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1138, file: !1135, line: 856, baseType: !58, size: 64, offset: 2304)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1138, file: !1135, line: 857, baseType: !58, size: 64, offset: 2368)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1138, file: !1135, line: 858, baseType: !58, size: 64, offset: 2432)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1138, file: !1135, line: 865, baseType: !254, size: 32, offset: 2496)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1138, file: !1135, line: 867, baseType: !78, size: 32, offset: 2528)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1138, file: !1135, line: 869, baseType: !58, size: 64, offset: 2560)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1138, file: !1135, line: 869, baseType: !58, size: 64, offset: 2624)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1138, file: !1135, line: 869, baseType: !58, size: 64, offset: 2688)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1138, file: !1135, line: 869, baseType: !58, size: 64, offset: 2752)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1138, file: !1135, line: 870, baseType: !58, size: 64, offset: 2816)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1138, file: !1135, line: 870, baseType: !58, size: 64, offset: 2880)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1138, file: !1135, line: 870, baseType: !58, size: 64, offset: 2944)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1138, file: !1135, line: 871, baseType: !58, size: 64, offset: 3008)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1138, file: !1135, line: 871, baseType: !58, size: 64, offset: 3072)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1138, file: !1135, line: 871, baseType: !58, size: 64, offset: 3136)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1138, file: !1135, line: 871, baseType: !58, size: 64, offset: 3200)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1138, file: !1135, line: 873, baseType: !2092, size: 3328, offset: 3264)
!2092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 3328, elements: !2093)
!2093 = !{!2094}
!2094 = !DISubrange(count: 52)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1138, file: !1135, line: 875, baseType: !2096, size: 1280, offset: 6592)
!2096 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1380, size: 1280, elements: !1210)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1138, file: !1135, line: 877, baseType: !2098, size: 64, offset: 7872)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1135, line: 877, flags: DIFlagFwdDecl)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1138, file: !1135, line: 880, baseType: !2101, size: 1088, offset: 7936)
!2101 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2102, line: 72, baseType: !2103)
!2102 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2103 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2102, line: 23, size: 1088, elements: !2104)
!2104 = !{!2105, !2106, !2107, !2108, !2109, !2112, !2113, !2114, !2115, !2119, !2120, !2121}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2103, file: !2102, line: 28, baseType: !279, size: 64)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2103, file: !2102, line: 38, baseType: !518, size: 64, offset: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2103, file: !2102, line: 40, baseType: !58, size: 64, offset: 128)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2103, file: !2102, line: 43, baseType: !725, size: 320, offset: 192)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2103, file: !2102, line: 44, baseType: !2110, size: 64, offset: 512)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2102, line: 44, flags: DIFlagFwdDecl)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2103, file: !2102, line: 48, baseType: !58, size: 64, offset: 576)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2103, file: !2102, line: 59, baseType: !512, size: 256, offset: 640)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2103, file: !2102, line: 60, baseType: !39, size: 64, offset: 896)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2103, file: !2102, line: 61, baseType: !2116, size: 64, offset: 960)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2118)
!2118 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2102, line: 61, flags: DIFlagFwdDecl)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2103, file: !2102, line: 63, baseType: !68, size: 32, offset: 1024)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2103, file: !2102, line: 69, baseType: !112, size: 16, offset: 1056)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2103, file: !2102, line: 70, baseType: !2122, size: 16, offset: 1072)
!2122 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !103, line: 18, baseType: !2123)
!2123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !105, line: 23, baseType: !1291)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1138, file: !1135, line: 882, baseType: !58, size: 64, offset: 9024)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1138, file: !1135, line: 885, baseType: !78, size: 32, offset: 9088)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1138, file: !1135, line: 886, baseType: !2127, size: 64, offset: 9152)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1135, line: 732, flags: DIFlagFwdDecl)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1138, file: !1135, line: 901, baseType: !1405, size: 64, offset: 9216)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1138, file: !1135, line: 904, baseType: !1161, size: 64, offset: 9280)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1138, file: !1135, line: 906, baseType: !2132, size: 64, offset: 9344)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1135, line: 906, flags: DIFlagFwdDecl)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1138, file: !1135, line: 930, baseType: !68, size: 32, offset: 9408)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1138, file: !1135, line: 933, baseType: !68, size: 32, offset: 9440)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1138, file: !1135, line: 935, baseType: !2137, size: 64, offset: 9472)
!2137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !140, line: 103, size: 64, elements: !2138)
!2138 = !{!2139}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2137, file: !140, line: 104, baseType: !2140, size: 64)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !140, line: 101, flags: DIFlagFwdDecl)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1138, file: !1135, line: 940, baseType: !516, size: 64, offset: 9536)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1138, file: !1135, line: 942, baseType: !1453, size: 256, offset: 9600)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1134, file: !1135, line: 986, baseType: !2145, offset: 10240)
!2145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, elements: !1223)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !835, file: !483, line: 882, baseType: !1133, size: 64, offset: 9792)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !835, file: !483, line: 884, baseType: !41, size: 32, offset: 9856)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !835, file: !483, line: 885, baseType: !41, size: 32, offset: 9888)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !835, file: !483, line: 886, baseType: !41, size: 32, offset: 9920)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !835, file: !483, line: 888, baseType: !41, size: 32, offset: 9952)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !835, file: !483, line: 890, baseType: !58, size: 64, offset: 9984)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !835, file: !483, line: 893, baseType: !7, size: 32, offset: 10048)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !835, file: !483, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !835, file: !483, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !835, file: !483, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !835, file: !483, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !835, file: !483, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !835, file: !483, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !835, file: !483, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !835, file: !483, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !835, file: !483, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !835, file: !483, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !835, file: !483, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !835, file: !483, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !835, file: !483, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !835, file: !483, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !835, file: !483, line: 969, baseType: !58, size: 64, offset: 10176)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !835, file: !483, line: 971, baseType: !2169, size: 448, offset: 10240)
!2169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !134, line: 25, size: 448, elements: !2170)
!2170 = !{!2171, !2172, !2177}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2169, file: !134, line: 26, baseType: !58, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2169, file: !134, line: 27, baseType: !2173, size: 64, offset: 64)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = !DISubroutineType(types: !2175)
!2175 = !{!494, !2176}
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2177 = !DIDerivedType(tag: DW_TAG_member, scope: !2169, file: !134, line: 28, baseType: !2178, size: 320, offset: 128)
!2178 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2169, file: !134, line: 28, size: 320, elements: !2179)
!2179 = !{!2180, !2190, !2215}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2178, file: !134, line: 37, baseType: !2181, size: 320)
!2181 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2178, file: !134, line: 30, size: 320, elements: !2182)
!2182 = !{!2183, !2185, !2186, !2187, !2188, !2189}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2181, file: !134, line: 31, baseType: !2184, size: 64)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2181, file: !134, line: 32, baseType: !205, size: 32, offset: 64)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2181, file: !134, line: 33, baseType: !205, size: 32, offset: 96)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2181, file: !134, line: 34, baseType: !205, size: 32, offset: 128)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2181, file: !134, line: 35, baseType: !279, size: 64, offset: 192)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2181, file: !134, line: 36, baseType: !2184, size: 64, offset: 256)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2178, file: !134, line: 47, baseType: !2191, size: 192)
!2191 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2178, file: !134, line: 39, size: 192, elements: !2192)
!2192 = !{!2193, !2194, !2195, !2214}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2191, file: !134, line: 40, baseType: !1004, size: 32)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2191, file: !134, line: 41, baseType: !133, size: 32, offset: 32)
!2195 = !DIDerivedType(tag: DW_TAG_member, scope: !2191, file: !134, line: 42, baseType: !2196, size: 64, offset: 64)
!2196 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2191, file: !134, line: 42, size: 64, elements: !2197)
!2197 = !{!2198, !2206}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2196, file: !134, line: 43, baseType: !2199, size: 64)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2201, line: 7, size: 128, elements: !2202)
!2201 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2202 = !{!2203, !2205}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2200, file: !2201, line: 8, baseType: !2204, size: 64)
!2204 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !56, line: 93, baseType: !62)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2200, file: !2201, line: 9, baseType: !62, size: 64, offset: 64)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2196, file: !134, line: 44, baseType: !2207, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2209, line: 7, size: 64, elements: !2210)
!2209 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2210 = !{!2211, !2213}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2208, file: !2209, line: 8, baseType: !2212, size: 32)
!2212 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2209, line: 5, baseType: !1265)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2208, file: !2209, line: 9, baseType: !1265, size: 32, offset: 32)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2191, file: !134, line: 46, baseType: !279, size: 64, offset: 128)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2178, file: !134, line: 55, baseType: !2216, size: 256)
!2216 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2178, file: !134, line: 49, size: 256, elements: !2217)
!2217 = !{!2218, !2221, !2222, !2223, !2224}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2216, file: !134, line: 50, baseType: !2219, size: 64)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !134, line: 14, flags: DIFlagFwdDecl)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2216, file: !134, line: 51, baseType: !41, size: 32, offset: 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2216, file: !134, line: 52, baseType: !41, size: 32, offset: 96)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2216, file: !134, line: 53, baseType: !58, size: 64, offset: 128)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2216, file: !134, line: 54, baseType: !58, size: 64, offset: 192)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !835, file: !483, line: 973, baseType: !2226, size: 32, offset: 10688)
!2226 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !44, line: 27, baseType: !2227)
!2227 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !56, line: 28, baseType: !41)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !835, file: !483, line: 974, baseType: !2226, size: 32, offset: 10720)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !835, file: !483, line: 978, baseType: !58, size: 64, offset: 10752)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !835, file: !483, line: 987, baseType: !834, size: 64, offset: 10816)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !835, file: !483, line: 990, baseType: !834, size: 64, offset: 10880)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !835, file: !483, line: 995, baseType: !116, size: 128, offset: 10944)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !835, file: !483, line: 996, baseType: !116, size: 128, offset: 11072)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !835, file: !483, line: 997, baseType: !834, size: 64, offset: 11200)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !835, file: !483, line: 1005, baseType: !116, size: 128, offset: 11264)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !835, file: !483, line: 1006, baseType: !116, size: 128, offset: 11392)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !835, file: !483, line: 1009, baseType: !1202, size: 64, offset: 11520)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !835, file: !483, line: 1010, baseType: !2239, size: 512, offset: 11584)
!2239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !402, size: 512, elements: !1210)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !835, file: !483, line: 1011, baseType: !116, size: 128, offset: 12096)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !835, file: !483, line: 1012, baseType: !116, size: 128, offset: 12224)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !835, file: !483, line: 1014, baseType: !1491, size: 64, offset: 12352)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !835, file: !483, line: 1017, baseType: !475, size: 64, offset: 12416)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !835, file: !483, line: 1020, baseType: !475, size: 64, offset: 12480)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !835, file: !483, line: 1023, baseType: !39, size: 64, offset: 12544)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !835, file: !483, line: 1025, baseType: !279, size: 64, offset: 12608)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !835, file: !483, line: 1026, baseType: !279, size: 64, offset: 12672)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !835, file: !483, line: 1031, baseType: !279, size: 64, offset: 12736)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !835, file: !483, line: 1032, baseType: !2250, size: 192, offset: 12800)
!2250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !483, line: 324, size: 192, elements: !2251)
!2251 = !{!2252, !2253, !2254}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2250, file: !483, line: 326, baseType: !279, size: 64)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2250, file: !483, line: 327, baseType: !279, size: 64, offset: 64)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2250, file: !483, line: 328, baseType: !525, size: 32, offset: 128)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !835, file: !483, line: 1041, baseType: !58, size: 64, offset: 12992)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !835, file: !483, line: 1042, baseType: !58, size: 64, offset: 13056)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !835, file: !483, line: 1045, baseType: !279, size: 64, offset: 13120)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !835, file: !483, line: 1048, baseType: !279, size: 64, offset: 13184)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !835, file: !483, line: 1051, baseType: !58, size: 64, offset: 13248)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !835, file: !483, line: 1052, baseType: !58, size: 64, offset: 13312)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !835, file: !483, line: 1055, baseType: !2262, size: 640, offset: 13376)
!2262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2263, line: 132, size: 640, elements: !2264)
!2263 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2264 = !{!2265, !2271, !2272}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2262, file: !2263, line: 133, baseType: !2266, size: 576)
!2266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2267, size: 576, elements: !415)
!2267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2263, line: 117, size: 192, elements: !2268)
!2268 = !{!2269, !2270}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2267, file: !2263, line: 118, baseType: !279, size: 64)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2267, file: !2263, line: 119, baseType: !1013, size: 128, offset: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2262, file: !2263, line: 134, baseType: !7, size: 32, offset: 576)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2262, file: !2263, line: 135, baseType: !7, size: 32, offset: 608)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !835, file: !483, line: 1058, baseType: !2274, size: 448, offset: 14016)
!2274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2263, line: 144, size: 448, elements: !2275)
!2275 = !{!2276, !2277, !2278}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2274, file: !2263, line: 145, baseType: !819, size: 128, align: 64)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2274, file: !2263, line: 146, baseType: !512, size: 256, offset: 128)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2274, file: !2263, line: 147, baseType: !7, size: 32, offset: 384)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !835, file: !483, line: 1064, baseType: !1230, size: 64, offset: 14464)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !835, file: !483, line: 1067, baseType: !1230, size: 64, offset: 14528)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !835, file: !483, line: 1070, baseType: !1230, size: 64, offset: 14592)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !835, file: !483, line: 1074, baseType: !1257, size: 64, offset: 14656)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !835, file: !483, line: 1084, baseType: !2284, size: 128, offset: 14720)
!2284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 128, elements: !2285)
!2285 = !{!2286}
!2286 = !DISubrange(count: 16)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !835, file: !483, line: 1086, baseType: !2288, size: 64, offset: 14848)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !483, line: 55, flags: DIFlagFwdDecl)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !835, file: !483, line: 1089, baseType: !2291, size: 64, offset: 14912)
!2291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2292, line: 12, size: 64, elements: !2293)
!2292 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2293 = !{!2294}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2291, file: !2292, line: 13, baseType: !2295, size: 64)
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2292, line: 8, flags: DIFlagFwdDecl)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !835, file: !483, line: 1090, baseType: !2298, size: 128, offset: 14976)
!2298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2299, line: 13, size: 128, elements: !2300)
!2299 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2300 = !{!2301}
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2298, file: !2299, line: 14, baseType: !116, size: 128)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !835, file: !483, line: 1097, baseType: !2303, size: 64, offset: 15104)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !483, line: 50, flags: DIFlagFwdDecl)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !835, file: !483, line: 1100, baseType: !2306, size: 64, offset: 15168)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !483, line: 1100, flags: DIFlagFwdDecl)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !835, file: !483, line: 1103, baseType: !2309, size: 64, offset: 15232)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !483, line: 53, flags: DIFlagFwdDecl)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !835, file: !483, line: 1107, baseType: !2312, size: 64, offset: 15296)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2314, line: 31, size: 576, elements: !2315)
!2314 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!2315 = !{!2316, !2317, !2320, !2323, !2326, !2327, !2330, !2333, !2334}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2313, file: !2314, line: 32, baseType: !187, size: 32)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !2313, file: !2314, line: 33, baseType: !2318, size: 64, offset: 64)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !2314, line: 9, flags: DIFlagFwdDecl)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !2313, file: !2314, line: 34, baseType: !2321, size: 64, offset: 128)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !2314, line: 10, flags: DIFlagFwdDecl)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !2313, file: !2314, line: 35, baseType: !2324, size: 64, offset: 192)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !2314, line: 8, flags: DIFlagFwdDecl)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !2313, file: !2314, line: 36, baseType: !1221, size: 64, offset: 256)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !2313, file: !2314, line: 37, baseType: !2328, size: 64, offset: 320)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1259, line: 34, flags: DIFlagFwdDecl)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !2313, file: !2314, line: 38, baseType: !2331, size: 64, offset: 384)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !2314, line: 38, flags: DIFlagFwdDecl)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !2313, file: !2314, line: 39, baseType: !2331, size: 64, offset: 448)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !2313, file: !2314, line: 40, baseType: !2335, size: 64, offset: 512)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !2314, line: 12, flags: DIFlagFwdDecl)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !835, file: !483, line: 1110, baseType: !2338, size: 64, offset: 15360)
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2340, line: 93, size: 8768, elements: !2341)
!2340 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2341 = !{!2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2378, !2379, !2380, !2381, !2382, !2383, !2384, !2392, !2401, !2402, !2404, !2405, !2406, !2409, !2415, !2416, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2447, !2448, !2455, !2465, !2468, !2469, !2472, !2473, !2474, !2475, !2476, !2477}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2339, file: !2340, line: 94, baseType: !187, size: 32)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2339, file: !2340, line: 95, baseType: !68, size: 32, offset: 32)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2339, file: !2340, line: 96, baseType: !41, size: 32, offset: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2339, file: !2340, line: 97, baseType: !41, size: 32, offset: 96)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2339, file: !2340, line: 98, baseType: !116, size: 128, offset: 128)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2339, file: !2340, line: 100, baseType: !73, size: 192, offset: 256)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2339, file: !2340, line: 103, baseType: !834, size: 64, offset: 448)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2339, file: !2340, line: 106, baseType: !2350, size: 192, offset: 512)
!2350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2351, line: 32, size: 192, elements: !2352)
!2351 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2352 = !{!2353, !2354}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2350, file: !2351, line: 33, baseType: !116, size: 128)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2350, file: !2351, line: 34, baseType: !2355, size: 64, offset: 128)
!2355 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2356, line: 25, baseType: !2357)
!2356 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2357 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2356, line: 23, size: 64, elements: !2358)
!2358 = !{!2359}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2357, file: !2356, line: 24, baseType: !1084, size: 64)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2339, file: !2340, line: 109, baseType: !398, size: 64, offset: 704)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2339, file: !2340, line: 112, baseType: !41, size: 32, offset: 768)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2339, file: !2340, line: 114, baseType: !41, size: 32, offset: 800)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2339, file: !2340, line: 115, baseType: !834, size: 64, offset: 832)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2339, file: !2340, line: 118, baseType: !41, size: 32, offset: 896)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2339, file: !2340, line: 119, baseType: !7, size: 32, offset: 928)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2339, file: !2340, line: 121, baseType: !2367, size: 64, offset: 960)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2340, line: 80, size: 448, elements: !2369)
!2369 = !{!2370, !2371, !2377}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2368, file: !2340, line: 81, baseType: !68, size: 32)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2368, file: !2340, line: 82, baseType: !2372, size: 128, offset: 64)
!2372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2340, line: 75, size: 128, elements: !2373)
!2373 = !{!2374, !2375}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2372, file: !2340, line: 76, baseType: !834, size: 64)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2372, file: !2340, line: 77, baseType: !2376, size: 64, offset: 64)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2368, file: !2340, line: 83, baseType: !1492, size: 256, offset: 192)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2339, file: !2340, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2339, file: !2340, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2339, file: !2340, line: 138, baseType: !7, size: 32, offset: 1056)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2339, file: !2340, line: 139, baseType: !116, size: 128, offset: 1088)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2339, file: !2340, line: 142, baseType: !957, size: 512, offset: 1216)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2339, file: !2340, line: 143, baseType: !965, size: 64, offset: 1728)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2339, file: !2340, line: 150, baseType: !2385, size: 256, offset: 1792)
!2385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2386, size: 256, elements: !2390)
!2386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2340, line: 38, size: 128, elements: !2387)
!2387 = !{!2388, !2389}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2386, file: !2340, line: 39, baseType: !279, size: 64)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2386, file: !2340, line: 40, baseType: !279, size: 64, offset: 64)
!2390 = !{!2391}
!2391 = !DISubrange(count: 2)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2339, file: !2340, line: 156, baseType: !2393, size: 192, offset: 2048)
!2393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2340, line: 66, size: 192, elements: !2394)
!2394 = !{!2395}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2393, file: !2340, line: 67, baseType: !2396, size: 192)
!2396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2340, line: 47, size: 192, elements: !2397)
!2397 = !{!2398, !2399, !2400}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2396, file: !2340, line: 48, baseType: !518, size: 64)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2396, file: !2340, line: 49, baseType: !518, size: 64, offset: 64)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2396, file: !2340, line: 50, baseType: !518, size: 64, offset: 128)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2339, file: !2340, line: 160, baseType: !2262, size: 640, offset: 2240)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2339, file: !2340, line: 163, baseType: !2403, size: 256, offset: 2880)
!2403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1202, size: 256, elements: !1210)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2339, file: !2340, line: 169, baseType: !1202, size: 64, offset: 3136)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2339, file: !2340, line: 172, baseType: !41, size: 32, offset: 3200)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2339, file: !2340, line: 174, baseType: !2407, size: 64, offset: 3264)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2340, line: 174, flags: DIFlagFwdDecl)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2339, file: !2340, line: 185, baseType: !2410, size: 64, offset: 3328)
!2410 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !250, line: 860, baseType: !2411)
!2411 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !250, line: 853, size: 64, elements: !2412)
!2412 = !{!2413, !2414}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2411, file: !250, line: 858, baseType: !249, size: 32)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2411, file: !250, line: 859, baseType: !78, size: 32, offset: 32)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2339, file: !2340, line: 186, baseType: !279, size: 64, offset: 3392)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2339, file: !2340, line: 186, baseType: !279, size: 64, offset: 3456)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2339, file: !2340, line: 186, baseType: !279, size: 64, offset: 3520)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2339, file: !2340, line: 186, baseType: !279, size: 64, offset: 3584)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2339, file: !2340, line: 187, baseType: !279, size: 64, offset: 3648)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2339, file: !2340, line: 188, baseType: !279, size: 64, offset: 3712)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2339, file: !2340, line: 189, baseType: !2250, size: 192, offset: 3776)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2339, file: !2340, line: 190, baseType: !58, size: 64, offset: 3968)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2339, file: !2340, line: 190, baseType: !58, size: 64, offset: 4032)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2339, file: !2340, line: 190, baseType: !58, size: 64, offset: 4096)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2339, file: !2340, line: 190, baseType: !58, size: 64, offset: 4160)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2339, file: !2340, line: 191, baseType: !58, size: 64, offset: 4224)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2339, file: !2340, line: 191, baseType: !58, size: 64, offset: 4288)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2339, file: !2340, line: 191, baseType: !58, size: 64, offset: 4352)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2339, file: !2340, line: 191, baseType: !58, size: 64, offset: 4416)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2339, file: !2340, line: 192, baseType: !58, size: 64, offset: 4480)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2339, file: !2340, line: 192, baseType: !58, size: 64, offset: 4544)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2339, file: !2340, line: 192, baseType: !58, size: 64, offset: 4608)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2339, file: !2340, line: 192, baseType: !58, size: 64, offset: 4672)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2339, file: !2340, line: 193, baseType: !58, size: 64, offset: 4736)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2339, file: !2340, line: 193, baseType: !58, size: 64, offset: 4800)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2339, file: !2340, line: 194, baseType: !2437, size: 448, offset: 4864)
!2437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2438, line: 12, size: 448, elements: !2439)
!2438 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2439 = !{!2440, !2441, !2442, !2443, !2444, !2445, !2446}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2437, file: !2438, line: 15, baseType: !279, size: 64)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2437, file: !2438, line: 17, baseType: !279, size: 64, offset: 64)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2437, file: !2438, line: 19, baseType: !279, size: 64, offset: 128)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2437, file: !2438, line: 21, baseType: !279, size: 64, offset: 192)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2437, file: !2438, line: 29, baseType: !279, size: 64, offset: 256)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2437, file: !2438, line: 35, baseType: !279, size: 64, offset: 320)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2437, file: !2438, line: 44, baseType: !279, size: 64, offset: 384)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2339, file: !2340, line: 202, baseType: !281, size: 64, offset: 5312)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2339, file: !2340, line: 213, baseType: !2449, size: 2048, offset: 5376)
!2449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2450, size: 2048, elements: !2285)
!2450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2451, line: 43, size: 128, elements: !2452)
!2451 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2452 = !{!2453, !2454}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2450, file: !2451, line: 44, baseType: !57, size: 64)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2450, file: !2451, line: 45, baseType: !57, size: 64, offset: 64)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2339, file: !2340, line: 216, baseType: !2456, size: 448, offset: 7424)
!2456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2340, line: 30, size: 448, elements: !2457)
!2457 = !{!2458, !2459, !2460, !2461, !2462, !2463, !2464}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2456, file: !2340, line: 31, baseType: !41, size: 32)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2456, file: !2340, line: 32, baseType: !494, size: 64, offset: 64)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2456, file: !2340, line: 33, baseType: !58, size: 64, offset: 128)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2456, file: !2340, line: 34, baseType: !279, size: 64, offset: 192)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2456, file: !2340, line: 34, baseType: !279, size: 64, offset: 256)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2456, file: !2340, line: 35, baseType: !58, size: 64, offset: 320)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2456, file: !2340, line: 35, baseType: !58, size: 64, offset: 384)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2339, file: !2340, line: 219, baseType: !2466, size: 64, offset: 7872)
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2340, line: 219, flags: DIFlagFwdDecl)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2339, file: !2340, line: 222, baseType: !7, size: 32, offset: 7936)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2339, file: !2340, line: 223, baseType: !2470, size: 64, offset: 8000)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2340, line: 223, flags: DIFlagFwdDecl)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2339, file: !2340, line: 230, baseType: !1322, size: 8, offset: 8064)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2339, file: !2340, line: 231, baseType: !1291, size: 16, offset: 8080)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2339, file: !2340, line: 232, baseType: !1291, size: 16, offset: 8096)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2339, file: !2340, line: 234, baseType: !1133, size: 64, offset: 8128)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2339, file: !2340, line: 237, baseType: !512, size: 256, offset: 8192)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2339, file: !2340, line: 243, baseType: !725, size: 320, offset: 8448)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !835, file: !483, line: 1111, baseType: !2479, size: 64, offset: 15424)
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2340, line: 20, size: 16640, elements: !2481)
!2481 = !{!2482, !2483, !2484, !2485}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2480, file: !2340, line: 21, baseType: !78, size: 32)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2480, file: !2340, line: 22, baseType: !187, size: 32, offset: 32)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2480, file: !2340, line: 23, baseType: !73, size: 192, offset: 64)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2480, file: !2340, line: 24, baseType: !2486, size: 16384, offset: 256)
!2486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2487, size: 16384, elements: !2507)
!2487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2351, line: 51, size: 256, elements: !2488)
!2488 = !{!2489}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2487, file: !2351, line: 52, baseType: !2490, size: 256)
!2490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2351, line: 37, size: 256, elements: !2491)
!2491 = !{!2492, !2499, !2500, !2506}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2490, file: !2351, line: 39, baseType: !2493, size: 64)
!2493 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2494, line: 83, baseType: !2495)
!2494 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2494, line: 82, baseType: !2497)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{null, !41}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2490, file: !2351, line: 40, baseType: !58, size: 64, offset: 64)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2490, file: !2351, line: 46, baseType: !2501, size: 64, offset: 128)
!2501 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2494, line: 86, baseType: !2502)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2494, line: 85, baseType: !2504)
!2504 = !DISubroutineType(types: !2505)
!2505 = !{null}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2490, file: !2351, line: 48, baseType: !2355, size: 64, offset: 192)
!2507 = !{!2508}
!2508 = !DISubrange(count: 64)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !835, file: !483, line: 1112, baseType: !2355, size: 64, offset: 15488)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !835, file: !483, line: 1113, baseType: !2355, size: 64, offset: 15552)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !835, file: !483, line: 1115, baseType: !2355, size: 64, offset: 15616)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !835, file: !483, line: 1116, baseType: !2350, size: 192, offset: 15680)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !835, file: !483, line: 1117, baseType: !58, size: 64, offset: 15872)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !835, file: !483, line: 1118, baseType: !54, size: 64, offset: 15936)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !835, file: !483, line: 1119, baseType: !7, size: 32, offset: 16000)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !835, file: !483, line: 1121, baseType: !822, size: 64, offset: 16064)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !835, file: !483, line: 1125, baseType: !2518, size: 64, offset: 16128)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !483, line: 43, flags: DIFlagFwdDecl)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !835, file: !483, line: 1127, baseType: !214, size: 32, offset: 16192)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !835, file: !483, line: 1128, baseType: !7, size: 32, offset: 16224)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !835, file: !483, line: 1130, baseType: !2523, size: 128, offset: 16256)
!2523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2524, line: 37, size: 128, elements: !2525)
!2524 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2525 = !{!2526, !2527, !2528}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2523, file: !2524, line: 38, baseType: !41, size: 32)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2523, file: !2524, line: 39, baseType: !68, size: 32, offset: 32)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2523, file: !2524, line: 40, baseType: !2529, size: 64, offset: 64)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2524, line: 24, flags: DIFlagFwdDecl)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !835, file: !483, line: 1131, baseType: !2532, size: 256, offset: 16384)
!2532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2533, line: 12, size: 256, elements: !2534)
!2533 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2534 = !{!2535, !2536, !2537, !2538}
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2532, file: !2533, line: 13, baseType: !347, size: 64)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2532, file: !2533, line: 14, baseType: !58, size: 64, offset: 64)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2532, file: !2533, line: 15, baseType: !58, size: 64, offset: 128)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2532, file: !2533, line: 16, baseType: !1322, size: 8, offset: 192)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !835, file: !483, line: 1134, baseType: !279, size: 64, offset: 16640)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !835, file: !483, line: 1135, baseType: !279, size: 64, offset: 16704)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !835, file: !483, line: 1138, baseType: !78, size: 32, offset: 16768)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !835, file: !483, line: 1141, baseType: !525, size: 32, offset: 16800)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !835, file: !483, line: 1143, baseType: !2544, size: 64, offset: 16832)
!2544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !483, line: 735, size: 64, elements: !2545)
!2545 = !{!2546}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2544, file: !483, line: 736, baseType: !2547, size: 64)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !835, file: !483, line: 1147, baseType: !1016, size: 128, offset: 16896)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !835, file: !483, line: 1149, baseType: !834, size: 64, offset: 17024)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !835, file: !483, line: 1151, baseType: !2551, size: 64, offset: 17088)
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !483, line: 1151, flags: DIFlagFwdDecl)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !835, file: !483, line: 1188, baseType: !39, size: 64, offset: 17152)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !835, file: !483, line: 1191, baseType: !2555, size: 64, offset: 17216)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !483, line: 44, flags: DIFlagFwdDecl)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !835, file: !483, line: 1194, baseType: !2558, size: 64, offset: 17280)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !483, line: 45, flags: DIFlagFwdDecl)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !835, file: !483, line: 1197, baseType: !2561, size: 64, offset: 17344)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !483, line: 61, flags: DIFlagFwdDecl)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !835, file: !483, line: 1199, baseType: !2564, size: 64, offset: 17408)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2566, line: 99, size: 128, elements: !2567)
!2566 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2567 = !{!2568, !2569, !2570}
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2565, file: !2566, line: 100, baseType: !516, size: 64)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2565, file: !2566, line: 101, baseType: !68, size: 32, offset: 64)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2565, file: !2566, line: 103, baseType: !45, size: 16, offset: 96)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !835, file: !483, line: 1202, baseType: !2572, size: 64, offset: 17472)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !483, line: 48, flags: DIFlagFwdDecl)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !835, file: !483, line: 1205, baseType: !58, size: 64, offset: 17536)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !835, file: !483, line: 1206, baseType: !2576, size: 64, offset: 17600)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2351, line: 14, baseType: !2578)
!2578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2351, line: 12, size: 384, elements: !2579)
!2579 = !{!2580}
!2580 = !DIDerivedType(tag: DW_TAG_member, scope: !2578, file: !2351, line: 13, baseType: !2581, size: 384)
!2581 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2578, file: !2351, line: 13, size: 384, elements: !2582)
!2582 = !{!2583, !2584, !2585, !2586}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2581, file: !2351, line: 13, baseType: !41, size: 32)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2581, file: !2351, line: 13, baseType: !41, size: 32, offset: 32)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2581, file: !2351, line: 13, baseType: !41, size: 32, offset: 64)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2581, file: !2351, line: 13, baseType: !2587, size: 256, offset: 128)
!2587 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2588, line: 37, size: 256, elements: !2589)
!2588 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2589 = !{!2590, !2595, !2608, !2614, !2623, !2650, !2655}
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2587, file: !2588, line: 42, baseType: !2591, size: 64)
!2591 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2587, file: !2588, line: 39, size: 64, elements: !2592)
!2592 = !{!2593, !2594}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2591, file: !2588, line: 40, baseType: !2227, size: 32)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2591, file: !2588, line: 41, baseType: !220, size: 32, offset: 32)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2587, file: !2588, line: 50, baseType: !2596, size: 192)
!2596 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2587, file: !2588, line: 45, size: 192, elements: !2597)
!2597 = !{!2598, !2600, !2601, !2607}
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2596, file: !2588, line: 46, baseType: !2599, size: 32)
!2599 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !56, line: 95, baseType: !41)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2596, file: !2588, line: 47, baseType: !41, size: 32, offset: 32)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2596, file: !2588, line: 48, baseType: !2602, size: 64, offset: 64)
!2602 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2588, line: 11, baseType: !2603)
!2603 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2588, line: 8, size: 64, elements: !2604)
!2604 = !{!2605, !2606}
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2603, file: !2588, line: 9, baseType: !41, size: 32)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2603, file: !2588, line: 10, baseType: !39, size: 64)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2596, file: !2588, line: 49, baseType: !41, size: 32, offset: 128)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2587, file: !2588, line: 57, baseType: !2609, size: 128)
!2609 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2587, file: !2588, line: 53, size: 128, elements: !2610)
!2610 = !{!2611, !2612, !2613}
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2609, file: !2588, line: 54, baseType: !2227, size: 32)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2609, file: !2588, line: 55, baseType: !220, size: 32, offset: 32)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2609, file: !2588, line: 56, baseType: !2602, size: 64, offset: 64)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2587, file: !2588, line: 66, baseType: !2615, size: 256)
!2615 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2587, file: !2588, line: 60, size: 256, elements: !2616)
!2616 = !{!2617, !2618, !2619, !2620, !2622}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2615, file: !2588, line: 61, baseType: !2227, size: 32)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2615, file: !2588, line: 62, baseType: !220, size: 32, offset: 32)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2615, file: !2588, line: 63, baseType: !41, size: 32, offset: 64)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2615, file: !2588, line: 64, baseType: !2621, size: 64, offset: 128)
!2621 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !56, line: 94, baseType: !493)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2615, file: !2588, line: 65, baseType: !2621, size: 64, offset: 192)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2587, file: !2588, line: 105, baseType: !2624, size: 256)
!2624 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2587, file: !2588, line: 69, size: 256, elements: !2625)
!2625 = !{!2626, !2627}
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2624, file: !2588, line: 70, baseType: !39, size: 64)
!2627 = !DIDerivedType(tag: DW_TAG_member, scope: !2624, file: !2588, line: 79, baseType: !2628, size: 192, offset: 64)
!2628 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2624, file: !2588, line: 79, size: 192, elements: !2629)
!2629 = !{!2630, !2631, !2632, !2639, !2644}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2628, file: !2588, line: 81, baseType: !41, size: 32)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2628, file: !2588, line: 86, baseType: !1291, size: 16)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2628, file: !2588, line: 92, baseType: !2633, size: 192)
!2633 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2628, file: !2588, line: 88, size: 192, elements: !2634)
!2634 = !{!2635, !2637, !2638}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2633, file: !2588, line: 89, baseType: !2636, size: 64)
!2636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 64, elements: !1000)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2633, file: !2588, line: 90, baseType: !39, size: 64, offset: 64)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2633, file: !2588, line: 91, baseType: !39, size: 64, offset: 128)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2628, file: !2588, line: 97, baseType: !2640, size: 96)
!2640 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2628, file: !2588, line: 94, size: 96, elements: !2641)
!2641 = !{!2642, !2643}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2640, file: !2588, line: 95, baseType: !2636, size: 64)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2640, file: !2588, line: 96, baseType: !185, size: 32, offset: 64)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2628, file: !2588, line: 103, baseType: !2645, size: 128)
!2645 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2628, file: !2588, line: 99, size: 128, elements: !2646)
!2646 = !{!2647, !2648, !2649}
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2645, file: !2588, line: 100, baseType: !58, size: 64)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2645, file: !2588, line: 101, baseType: !185, size: 32, offset: 64)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2645, file: !2588, line: 102, baseType: !185, size: 32, offset: 96)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2587, file: !2588, line: 111, baseType: !2651, size: 128)
!2651 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2587, file: !2588, line: 108, size: 128, elements: !2652)
!2652 = !{!2653, !2654}
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2651, file: !2588, line: 109, baseType: !494, size: 64)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2651, file: !2588, line: 110, baseType: !41, size: 32, offset: 64)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2587, file: !2588, line: 118, baseType: !2656, size: 128)
!2656 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2587, file: !2588, line: 114, size: 128, elements: !2657)
!2657 = !{!2658, !2659, !2660}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2656, file: !2588, line: 115, baseType: !39, size: 64)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2656, file: !2588, line: 116, baseType: !41, size: 32, offset: 64)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2656, file: !2588, line: 117, baseType: !7, size: 32, offset: 96)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !835, file: !483, line: 1208, baseType: !2437, size: 448, offset: 17664)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !835, file: !483, line: 1215, baseType: !279, size: 64, offset: 18112)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !835, file: !483, line: 1217, baseType: !279, size: 64, offset: 18176)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !835, file: !483, line: 1219, baseType: !279, size: 64, offset: 18240)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !835, file: !483, line: 1223, baseType: !2666, size: 64, offset: 18304)
!2666 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2667, line: 99, baseType: !2668)
!2667 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2668 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2667, line: 99, size: 64, elements: !2669)
!2669 = !{!2670}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2668, file: !2667, line: 99, baseType: !1084, size: 64)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !835, file: !483, line: 1225, baseType: !249, size: 32, offset: 18368)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !835, file: !483, line: 1226, baseType: !41, size: 32, offset: 18400)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !835, file: !483, line: 1227, baseType: !41, size: 32, offset: 18432)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !835, file: !483, line: 1231, baseType: !2675, size: 64, offset: 18496)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !483, line: 1231, flags: DIFlagFwdDecl)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !835, file: !483, line: 1233, baseType: !116, size: 128, offset: 18560)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !835, file: !483, line: 1240, baseType: !2679, size: 64, offset: 18688)
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!2680 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !483, line: 62, flags: DIFlagFwdDecl)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !835, file: !483, line: 1242, baseType: !2682, size: 64, offset: 18752)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !483, line: 1242, flags: DIFlagFwdDecl)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !835, file: !483, line: 1244, baseType: !116, size: 128, offset: 18816)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !835, file: !483, line: 1245, baseType: !2686, size: 64, offset: 18944)
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !483, line: 51, flags: DIFlagFwdDecl)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !835, file: !483, line: 1246, baseType: !512, size: 256, offset: 19008)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !835, file: !483, line: 1247, baseType: !7, size: 32, offset: 19264)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !835, file: !483, line: 1250, baseType: !2691, size: 64, offset: 19328)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !483, line: 57, flags: DIFlagFwdDecl)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !835, file: !483, line: 1251, baseType: !512, size: 256, offset: 19392)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !835, file: !483, line: 1252, baseType: !116, size: 128, offset: 19648)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !835, file: !483, line: 1259, baseType: !1714, size: 64, offset: 19776)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !835, file: !483, line: 1260, baseType: !1291, size: 16, offset: 19840)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !835, file: !483, line: 1261, baseType: !1291, size: 16, offset: 19856)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !835, file: !483, line: 1314, baseType: !2699, size: 64, offset: 19904)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2701, line: 62, size: 256, align: 256, elements: !2702)
!2701 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2702 = !{!2703, !2704, !2705, !2706, !2707, !2708, !2709}
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2700, file: !2701, line: 75, baseType: !185, size: 32)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2700, file: !2701, line: 90, baseType: !185, size: 32, offset: 32)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2700, file: !2701, line: 112, baseType: !280, size: 64, offset: 64)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2700, file: !2701, line: 132, baseType: !185, size: 32, offset: 128)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2700, file: !2701, line: 140, baseType: !185, size: 32, offset: 160)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2700, file: !2701, line: 149, baseType: !185, size: 32, offset: 192)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2700, file: !2701, line: 154, baseType: !2710, offset: 224)
!2710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, elements: !1223)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !835, file: !483, line: 1315, baseType: !205, size: 32, offset: 19968)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !835, file: !483, line: 1316, baseType: !205, size: 32, offset: 20000)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !835, file: !483, line: 1321, baseType: !58, size: 64, offset: 20032)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !835, file: !483, line: 1325, baseType: !41, size: 32, offset: 20096)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !835, file: !483, line: 1326, baseType: !41, size: 32, offset: 20128)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !835, file: !483, line: 1327, baseType: !41, size: 32, offset: 20160)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !835, file: !483, line: 1328, baseType: !41, size: 32, offset: 20192)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !835, file: !483, line: 1329, baseType: !819, size: 128, align: 64, offset: 20224)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !835, file: !483, line: 1332, baseType: !2720, size: 128, offset: 20352)
!2720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2721, line: 51, size: 128, elements: !2722)
!2721 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2722 = !{!2723, !2728, !2729}
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2720, file: !2721, line: 60, baseType: !2724, size: 64)
!2724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2725, line: 7, size: 64, elements: !2726)
!2725 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2726 = !{!2727}
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2724, file: !2725, line: 12, baseType: !1081, size: 64)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2720, file: !2721, line: 63, baseType: !1322, size: 8, offset: 64)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2720, file: !2721, line: 70, baseType: !1322, size: 8, offset: 72)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !835, file: !483, line: 1335, baseType: !1753, size: 64, offset: 20480)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !835, file: !483, line: 1337, baseType: !2732, size: 128, offset: 20544)
!2732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2721, line: 39, size: 128, elements: !2733)
!2733 = !{!2734, !2735, !2736}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2732, file: !2721, line: 40, baseType: !1828, size: 64)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2732, file: !2721, line: 42, baseType: !185, size: 32, offset: 64)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2732, file: !2721, line: 43, baseType: !185, size: 32, offset: 96)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !835, file: !483, line: 1340, baseType: !2738, size: 64, offset: 20672)
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2739 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !483, line: 69, flags: DIFlagFwdDecl)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !835, file: !483, line: 1351, baseType: !41, size: 32, offset: 20736)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !835, file: !483, line: 1352, baseType: !41, size: 32, offset: 20768)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !835, file: !483, line: 1354, baseType: !58, size: 64, offset: 20800)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !835, file: !483, line: 1364, baseType: !279, size: 64, offset: 20864)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !835, file: !483, line: 1365, baseType: !279, size: 64, offset: 20928)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !835, file: !483, line: 1412, baseType: !58, size: 64, offset: 20992)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !835, file: !483, line: 1453, baseType: !2747, size: 64, offset: 21056)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !483, line: 1453, flags: DIFlagFwdDecl)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !835, file: !483, line: 1457, baseType: !2750, size: 64, offset: 21120)
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !140, line: 61, size: 576, elements: !2752)
!2752 = !{!2753, !2754, !2773, !2776, !2777, !2810, !2820}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2751, file: !140, line: 62, baseType: !139, size: 32)
!2754 = !DIDerivedType(tag: DW_TAG_member, scope: !2751, file: !140, line: 64, baseType: !2755, size: 192, offset: 64)
!2755 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2751, file: !140, line: 64, size: 192, elements: !2756)
!2756 = !{!2757, !2768}
!2757 = !DIDerivedType(tag: DW_TAG_member, scope: !2755, file: !140, line: 65, baseType: !2758, size: 192)
!2758 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2755, file: !140, line: 65, size: 192, elements: !2759)
!2759 = !{!2760, !2767}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2758, file: !140, line: 66, baseType: !2761, size: 128)
!2761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2762, line: 50, size: 128, elements: !2763)
!2762 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2763 = !{!2764, !2765, !2766}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2761, file: !2762, line: 52, baseType: !58, size: 64)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2761, file: !2762, line: 54, baseType: !7, size: 32, offset: 64)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2761, file: !2762, line: 55, baseType: !7, size: 32, offset: 96)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2758, file: !140, line: 67, baseType: !58, size: 64, offset: 128)
!2768 = !DIDerivedType(tag: DW_TAG_member, scope: !2755, file: !140, line: 70, baseType: !2769, size: 192)
!2769 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2755, file: !140, line: 70, size: 192, elements: !2770)
!2770 = !{!2771, !2772}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2769, file: !140, line: 71, baseType: !819, size: 128, align: 64)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2769, file: !140, line: 72, baseType: !58, size: 64, offset: 128)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2751, file: !140, line: 76, baseType: !2774, size: 64, offset: 256)
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !140, line: 76, flags: DIFlagFwdDecl)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2751, file: !140, line: 77, baseType: !58, size: 64, offset: 320)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2751, file: !140, line: 79, baseType: !2778, size: 64, offset: 384)
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2762, line: 25, size: 256, elements: !2780)
!2780 = !{!2781, !2787, !2791}
!2781 = !DIDerivedType(tag: DW_TAG_member, scope: !2779, file: !2762, line: 26, baseType: !2782, size: 128)
!2782 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2779, file: !2762, line: 26, size: 128, elements: !2783)
!2783 = !{!2784, !2786}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2782, file: !2762, line: 27, baseType: !2785, size: 128)
!2785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 128, elements: !2285)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2782, file: !2762, line: 28, baseType: !2785, size: 128)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2779, file: !2762, line: 31, baseType: !2788, size: 64, offset: 128)
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2790)
!2790 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2762, line: 23, flags: DIFlagFwdDecl)
!2791 = !DIDerivedType(tag: DW_TAG_member, scope: !2779, file: !2762, line: 33, baseType: !2792, size: 64, offset: 192)
!2792 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2779, file: !2762, line: 33, size: 64, elements: !2793)
!2793 = !{!2794, !2800, !2805}
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2792, file: !2762, line: 38, baseType: !2795, size: 64)
!2795 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2792, file: !2762, line: 34, size: 64, elements: !2796)
!2796 = !{!2797, !2798, !2799}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2795, file: !2762, line: 35, baseType: !1265, size: 32)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2795, file: !2762, line: 36, baseType: !102, size: 8, offset: 32)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2795, file: !2762, line: 37, baseType: !102, size: 8, offset: 40)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2792, file: !2762, line: 42, baseType: !2801, size: 16)
!2801 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2792, file: !2762, line: 39, size: 16, elements: !2802)
!2802 = !{!2803, !2804}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2801, file: !2762, line: 40, baseType: !102, size: 8)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2801, file: !2762, line: 41, baseType: !102, size: 8, offset: 8)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2792, file: !2762, line: 46, baseType: !2806, size: 16)
!2806 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2792, file: !2762, line: 43, size: 16, elements: !2807)
!2807 = !{!2808, !2809}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2806, file: !2762, line: 44, baseType: !102, size: 8)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2806, file: !2762, line: 45, baseType: !102, size: 8, offset: 8)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2751, file: !140, line: 81, baseType: !2811, size: 64, offset: 448)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !140, line: 85, size: 384, elements: !2813)
!2813 = !{!2814, !2815, !2816, !2817, !2818, !2819}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2812, file: !140, line: 86, baseType: !2774, size: 64)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2812, file: !140, line: 87, baseType: !58, size: 64, offset: 64)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2812, file: !140, line: 88, baseType: !58, size: 64, offset: 128)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2812, file: !140, line: 89, baseType: !58, size: 64, offset: 192)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2812, file: !140, line: 90, baseType: !1322, size: 8, offset: 256)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2812, file: !140, line: 92, baseType: !2811, size: 64, offset: 320)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2751, file: !140, line: 82, baseType: !7, size: 32, offset: 512)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !835, file: !483, line: 1463, baseType: !2822, offset: 21184)
!2822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !483, line: 739, elements: !410)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !835, file: !483, line: 1470, baseType: !819, size: 128, align: 64, offset: 21184)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !835, file: !483, line: 1471, baseType: !187, size: 32, offset: 21312)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !835, file: !483, line: 1472, baseType: !41, size: 32, offset: 21344)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !835, file: !483, line: 1474, baseType: !834, size: 64, offset: 21376)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !835, file: !483, line: 1475, baseType: !2828, size: 320, offset: 21440)
!2828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2829, line: 11, size: 320, elements: !2830)
!2829 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2830 = !{!2831, !2832, !2833, !2838}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2828, file: !2829, line: 16, baseType: !402, size: 128)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2828, file: !2829, line: 17, baseType: !58, size: 64, offset: 128)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2828, file: !2829, line: 18, baseType: !2834, size: 64, offset: 192)
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2835, size: 64)
!2835 = !DISubroutineType(types: !2836)
!2836 = !{null, !2837}
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2828, size: 64)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2828, file: !2829, line: 19, baseType: !205, size: 32, offset: 256)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !835, file: !483, line: 1478, baseType: !2840, size: 64, offset: 21760)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !483, line: 1478, flags: DIFlagFwdDecl)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !835, file: !483, line: 1482, baseType: !187, size: 32, offset: 21824)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !835, file: !483, line: 1489, baseType: !39, size: 64, offset: 21888)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !835, file: !483, line: 1504, baseType: !39, size: 64, offset: 21952)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !835, file: !483, line: 1505, baseType: !280, size: 64, offset: 22016)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !835, file: !483, line: 1506, baseType: !279, size: 64, offset: 22080)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !835, file: !483, line: 1507, baseType: !280, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !835, file: !483, line: 1508, baseType: !280, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !835, file: !483, line: 1509, baseType: !280, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !835, file: !483, line: 1510, baseType: !819, size: 128, align: 64, offset: 22208)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !835, file: !483, line: 1511, baseType: !41, size: 32, offset: 22336)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !835, file: !483, line: 1515, baseType: !2853, size: 64, offset: 22400)
!2853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !857, line: 56, size: 64, elements: !2854)
!2854 = !{!2855}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2853, file: !857, line: 57, baseType: !860, size: 64)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !835, file: !483, line: 1518, baseType: !2853, size: 64, offset: 22464)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !835, file: !483, line: 1528, baseType: !819, size: 128, align: 64, offset: 22528)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !835, file: !483, line: 1552, baseType: !2859, size: 35328, offset: 23040)
!2859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2860, line: 430, size: 35328, elements: !2861)
!2860 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2861 = !{!2862, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2891, !2892, !2893, !2894, !2895, !2896, !2899, !2900, !2901, !2902}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2859, file: !2860, line: 432, baseType: !2863, size: 192)
!2863 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2864, size: 192, elements: !415)
!2864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2865, line: 16, size: 64, elements: !2866)
!2865 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2866 = !{!2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2864, file: !2865, line: 17, baseType: !112, size: 16)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2864, file: !2865, line: 18, baseType: !112, size: 16, offset: 16)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2864, file: !2865, line: 19, baseType: !112, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2864, file: !2865, line: 19, baseType: !112, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2864, file: !2865, line: 19, baseType: !112, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2864, file: !2865, line: 19, baseType: !112, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2864, file: !2865, line: 19, baseType: !112, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2864, file: !2865, line: 20, baseType: !112, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2864, file: !2865, line: 20, baseType: !112, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2864, file: !2865, line: 20, baseType: !112, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2864, file: !2865, line: 20, baseType: !112, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2864, file: !2865, line: 20, baseType: !112, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2864, file: !2865, line: 20, baseType: !112, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2859, file: !2860, line: 436, baseType: !58, size: 64, offset: 192)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2859, file: !2860, line: 440, baseType: !45, size: 16, offset: 256)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2859, file: !2860, line: 441, baseType: !45, size: 16, offset: 272)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2859, file: !2860, line: 442, baseType: !45, size: 16, offset: 288)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2859, file: !2860, line: 443, baseType: !45, size: 16, offset: 304)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2859, file: !2860, line: 447, baseType: !58, size: 64, offset: 320)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2859, file: !2860, line: 448, baseType: !58, size: 64, offset: 384)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2859, file: !2860, line: 459, baseType: !2888, size: 256, offset: 448)
!2888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2889, size: 256, elements: !1210)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2860, line: 428, flags: DIFlagFwdDecl)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2859, file: !2860, line: 461, baseType: !58, size: 64, offset: 704)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2859, file: !2860, line: 463, baseType: !58, size: 64, offset: 768)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2859, file: !2860, line: 465, baseType: !58, size: 64, offset: 832)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2859, file: !2860, line: 466, baseType: !58, size: 64, offset: 896)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2859, file: !2860, line: 467, baseType: !58, size: 64, offset: 960)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2859, file: !2860, line: 473, baseType: !2897, size: 64, offset: 1024)
!2897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2898, size: 64)
!2898 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2860, line: 10, flags: DIFlagFwdDecl)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2859, file: !2860, line: 480, baseType: !58, size: 64, offset: 1088)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2859, file: !2860, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2859, file: !2860, line: 491, baseType: !205, size: 32, offset: 1184)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2859, file: !2860, line: 501, baseType: !2903, size: 33792, offset: 1536)
!2903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2904, line: 448, size: 33792, elements: !2905)
!2904 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2905 = !{!2906, !2907, !2908, !3070, !3071, !3077, !3078}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2903, file: !2904, line: 461, baseType: !7, size: 32)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2903, file: !2904, line: 468, baseType: !58, size: 64, offset: 64)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2903, file: !2904, line: 476, baseType: !2909, size: 64, offset: 128)
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2910, size: 64)
!2910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2904, line: 356, size: 33280, align: 512, elements: !2911)
!2911 = !{!2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2910, file: !2904, line: 358, baseType: !7, size: 32)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2910, file: !2904, line: 361, baseType: !7, size: 32, offset: 32)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2910, file: !2904, line: 364, baseType: !279, size: 64, offset: 64)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2910, file: !2904, line: 367, baseType: !279, size: 64, offset: 128)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2910, file: !2904, line: 370, baseType: !279, size: 64, offset: 192)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2910, file: !2904, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2910, file: !2904, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2910, file: !2904, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2910, file: !2904, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2910, file: !2904, line: 397, baseType: !2922, size: 32768, offset: 512)
!2922 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2904, line: 348, size: 32768, elements: !2923)
!2923 = !{!2924, !2939, !2976, !3053, !3066}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2922, file: !2904, line: 349, baseType: !2925, size: 896)
!2925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2904, line: 12, size: 896, elements: !2926)
!2926 = !{!2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2938}
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2925, file: !2904, line: 13, baseType: !205, size: 32)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2925, file: !2904, line: 14, baseType: !205, size: 32, offset: 32)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2925, file: !2904, line: 15, baseType: !205, size: 32, offset: 64)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2925, file: !2904, line: 16, baseType: !205, size: 32, offset: 96)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2925, file: !2904, line: 17, baseType: !205, size: 32, offset: 128)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2925, file: !2904, line: 18, baseType: !205, size: 32, offset: 160)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2925, file: !2904, line: 19, baseType: !205, size: 32, offset: 192)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2925, file: !2904, line: 22, baseType: !2935, size: 640, offset: 224)
!2935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 640, elements: !2936)
!2936 = !{!2937}
!2937 = !DISubrange(count: 20)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2925, file: !2904, line: 25, baseType: !205, size: 32, offset: 864)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2922, file: !2904, line: 350, baseType: !2940, size: 4096, align: 128)
!2940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2904, line: 34, size: 4096, align: 128, elements: !2941)
!2941 = !{!2942, !2943, !2944, !2945, !2946, !2961, !2962, !2963, !2965, !2967, !2971}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2940, file: !2904, line: 35, baseType: !112, size: 16)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2940, file: !2904, line: 36, baseType: !112, size: 16, offset: 16)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2940, file: !2904, line: 37, baseType: !112, size: 16, offset: 32)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2940, file: !2904, line: 38, baseType: !112, size: 16, offset: 48)
!2946 = !DIDerivedType(tag: DW_TAG_member, scope: !2940, file: !2904, line: 39, baseType: !2947, size: 128, offset: 64)
!2947 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2940, file: !2904, line: 39, size: 128, elements: !2948)
!2948 = !{!2949, !2954}
!2949 = !DIDerivedType(tag: DW_TAG_member, scope: !2947, file: !2904, line: 40, baseType: !2950, size: 128)
!2950 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2947, file: !2904, line: 40, size: 128, elements: !2951)
!2951 = !{!2952, !2953}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2950, file: !2904, line: 41, baseType: !279, size: 64)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2950, file: !2904, line: 42, baseType: !279, size: 64, offset: 64)
!2954 = !DIDerivedType(tag: DW_TAG_member, scope: !2947, file: !2904, line: 44, baseType: !2955, size: 128)
!2955 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2947, file: !2904, line: 44, size: 128, elements: !2956)
!2956 = !{!2957, !2958, !2959, !2960}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2955, file: !2904, line: 45, baseType: !205, size: 32)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2955, file: !2904, line: 46, baseType: !205, size: 32, offset: 32)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2955, file: !2904, line: 47, baseType: !205, size: 32, offset: 64)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2955, file: !2904, line: 48, baseType: !205, size: 32, offset: 96)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2940, file: !2904, line: 51, baseType: !205, size: 32, offset: 192)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2940, file: !2904, line: 52, baseType: !205, size: 32, offset: 224)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2940, file: !2904, line: 55, baseType: !2964, size: 1024, offset: 256)
!2964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 1024, elements: !288)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2940, file: !2904, line: 58, baseType: !2966, size: 2048, offset: 1280)
!2966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 2048, elements: !2507)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2940, file: !2904, line: 60, baseType: !2968, size: 384, offset: 3328)
!2968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 384, elements: !2969)
!2969 = !{!2970}
!2970 = !DISubrange(count: 12)
!2971 = !DIDerivedType(tag: DW_TAG_member, scope: !2940, file: !2904, line: 62, baseType: !2972, size: 384, offset: 3712)
!2972 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2940, file: !2904, line: 62, size: 384, elements: !2973)
!2973 = !{!2974, !2975}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2972, file: !2904, line: 63, baseType: !2968, size: 384)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2972, file: !2904, line: 64, baseType: !2968, size: 384)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2922, file: !2904, line: 351, baseType: !2977, size: 1088)
!2977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2904, line: 79, size: 1088, elements: !2978)
!2978 = !{!2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !3052}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2977, file: !2904, line: 80, baseType: !205, size: 32)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2977, file: !2904, line: 81, baseType: !205, size: 32, offset: 32)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2977, file: !2904, line: 82, baseType: !205, size: 32, offset: 64)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2977, file: !2904, line: 83, baseType: !205, size: 32, offset: 96)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2977, file: !2904, line: 84, baseType: !205, size: 32, offset: 128)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2977, file: !2904, line: 85, baseType: !205, size: 32, offset: 160)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2977, file: !2904, line: 86, baseType: !205, size: 32, offset: 192)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2977, file: !2904, line: 88, baseType: !2935, size: 640, offset: 224)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2977, file: !2904, line: 89, baseType: !102, size: 8, offset: 864)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2977, file: !2904, line: 90, baseType: !102, size: 8, offset: 872)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2977, file: !2904, line: 91, baseType: !102, size: 8, offset: 880)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2977, file: !2904, line: 92, baseType: !102, size: 8, offset: 888)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2977, file: !2904, line: 93, baseType: !102, size: 8, offset: 896)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2977, file: !2904, line: 94, baseType: !102, size: 8, offset: 904)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2977, file: !2904, line: 95, baseType: !2994, size: 64, offset: 960)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2996, line: 11, size: 128, elements: !2997)
!2996 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!2997 = !{!2998, !2999}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2995, file: !2996, line: 12, baseType: !494, size: 64)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2995, file: !2996, line: 13, baseType: !3000, size: 64, offset: 64)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3002, line: 103, size: 1344, elements: !3003)
!3002 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3003 = !{!3004, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3020, !3021, !3032, !3033, !3034}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3001, file: !3002, line: 109, baseType: !58, size: 64)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3001, file: !3002, line: 110, baseType: !58, size: 64, offset: 64)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3001, file: !3002, line: 111, baseType: !58, size: 64, offset: 128)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3001, file: !3002, line: 112, baseType: !58, size: 64, offset: 192)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3001, file: !3002, line: 113, baseType: !58, size: 64, offset: 256)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3001, file: !3002, line: 114, baseType: !58, size: 64, offset: 320)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3001, file: !3002, line: 117, baseType: !58, size: 64, offset: 384)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3001, file: !3002, line: 118, baseType: !58, size: 64, offset: 448)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3001, file: !3002, line: 119, baseType: !58, size: 64, offset: 512)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3001, file: !3002, line: 120, baseType: !58, size: 64, offset: 576)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3001, file: !3002, line: 121, baseType: !58, size: 64, offset: 640)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3001, file: !3002, line: 122, baseType: !58, size: 64, offset: 704)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3001, file: !3002, line: 123, baseType: !58, size: 64, offset: 768)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3001, file: !3002, line: 124, baseType: !58, size: 64, offset: 832)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3001, file: !3002, line: 125, baseType: !58, size: 64, offset: 896)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3001, file: !3002, line: 139, baseType: !58, size: 64, offset: 960)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3001, file: !3002, line: 142, baseType: !58, size: 64, offset: 1024)
!3021 = !DIDerivedType(tag: DW_TAG_member, scope: !3001, file: !3002, line: 144, baseType: !3022, size: 64, offset: 1088)
!3022 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3001, file: !3002, line: 144, size: 64, elements: !3023)
!3023 = !{!3024, !3025, !3026}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3022, file: !3002, line: 146, baseType: !112, size: 16)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3022, file: !3002, line: 148, baseType: !279, size: 64)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3022, file: !3002, line: 150, baseType: !3027, size: 64)
!3027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3002, line: 59, size: 64, elements: !3028)
!3028 = !{!3029, !3030, !3031}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3027, file: !3002, line: 61, baseType: !279, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3027, file: !3002, line: 63, baseType: !279, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3027, file: !3002, line: 65, baseType: !279, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3001, file: !3002, line: 153, baseType: !58, size: 64, offset: 1152)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3001, file: !3002, line: 154, baseType: !58, size: 64, offset: 1216)
!3034 = !DIDerivedType(tag: DW_TAG_member, scope: !3001, file: !3002, line: 156, baseType: !3035, size: 64, offset: 1280)
!3035 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3001, file: !3002, line: 156, size: 64, elements: !3036)
!3036 = !{!3037, !3038, !3039}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3035, file: !3002, line: 158, baseType: !112, size: 16)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3035, file: !3002, line: 160, baseType: !279, size: 64)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3035, file: !3002, line: 162, baseType: !3040, size: 64)
!3040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3002, line: 69, size: 64, elements: !3041)
!3041 = !{!3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3040, file: !3002, line: 71, baseType: !279, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3040, file: !3002, line: 73, baseType: !279, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3040, file: !3002, line: 75, baseType: !279, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3040, file: !3002, line: 77, baseType: !279, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3040, file: !3002, line: 80, baseType: !279, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3040, file: !3002, line: 83, baseType: !279, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3040, file: !3002, line: 86, baseType: !279, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3040, file: !3002, line: 88, baseType: !279, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3040, file: !3002, line: 93, baseType: !279, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3040, file: !3002, line: 100, baseType: !279, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2977, file: !2904, line: 96, baseType: !205, size: 32, offset: 1024)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2922, file: !2904, line: 352, baseType: !3054, size: 4608, align: 512)
!3054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2904, line: 333, size: 4608, align: 512, elements: !3055)
!3055 = !{!3056, !3057, !3064}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3054, file: !2904, line: 334, baseType: !2940, size: 4096, align: 128)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3054, file: !2904, line: 335, baseType: !3058, size: 512, offset: 4096)
!3058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2904, line: 312, size: 512, elements: !3059)
!3059 = !{!3060, !3061, !3062}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3058, file: !2904, line: 313, baseType: !279, size: 64)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3058, file: !2904, line: 314, baseType: !279, size: 64, offset: 64)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3058, file: !2904, line: 315, baseType: !3063, size: 384, offset: 128)
!3063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !279, size: 384, elements: !1309)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3054, file: !2904, line: 336, baseType: !3065, offset: 4608)
!3065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, elements: !1223)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2922, file: !2904, line: 353, baseType: !3067, size: 32768)
!3067 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 32768, elements: !3068)
!3068 = !{!3069}
!3069 = !DISubrange(count: 4096)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2903, file: !2904, line: 484, baseType: !2909, size: 64, offset: 192)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2903, file: !2904, line: 491, baseType: !3072, size: 128, offset: 256)
!3072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2904, line: 404, size: 128, elements: !3073)
!3073 = !{!3074, !3075, !3076}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3072, file: !2904, line: 424, baseType: !279, size: 64)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3072, file: !2904, line: 432, baseType: !7, size: 32, offset: 64)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3072, file: !2904, line: 440, baseType: !7, size: 32, offset: 96)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2903, file: !2904, line: 498, baseType: !3072, size: 128, offset: 384)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2903, file: !2904, line: 508, baseType: !2910, size: 33280, align: 512, offset: 512)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !808, file: !809, line: 16, baseType: !73, size: 192, offset: 512)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !808, file: !809, line: 17, baseType: !68, size: 32, offset: 704)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !359, file: !6, line: 1240, baseType: !39, size: 64, offset: 6912)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !359, file: !6, line: 1243, baseType: !205, size: 32, offset: 6976)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !359, file: !6, line: 1245, baseType: !565, size: 64, offset: 7040)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !359, file: !6, line: 1246, baseType: !565, size: 64, offset: 7104)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !359, file: !6, line: 1248, baseType: !185, size: 32, offset: 7168)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !359, file: !6, line: 1249, baseType: !3087, size: 64, offset: 7232)
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !182, line: 472, size: 256, elements: !3089)
!3089 = !{!3090, !3091, !3092, !3093, !3099, !3106}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3088, file: !182, line: 473, baseType: !78, size: 32)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3088, file: !182, line: 474, baseType: !45, size: 16, offset: 32)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3088, file: !182, line: 477, baseType: !45, size: 16, offset: 48)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "fsid", scope: !3088, file: !182, line: 478, baseType: !3094, size: 64, offset: 64)
!3094 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_fsid_t", file: !56, line: 81, baseType: !3095)
!3095 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !56, line: 79, size: 64, elements: !3096)
!3096 = !{!3097}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3095, file: !56, line: 80, baseType: !3098, size: 64)
!3098 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 64, elements: !2390)
!3099 = !DIDerivedType(tag: DW_TAG_member, scope: !3088, file: !182, line: 479, baseType: !3100, size: 64, offset: 128)
!3100 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3088, file: !182, line: 479, size: 64, elements: !3101)
!3101 = !{!3102, !3105}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !3100, file: !182, line: 481, baseType: !3103, size: 64)
!3103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3104, size: 64)
!3104 = !DIDerivedType(tag: DW_TAG_typedef, name: "fsnotify_connp_t", file: !182, line: 464, baseType: !3087)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_next", scope: !3100, file: !182, line: 483, baseType: !3087, size: 64)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3088, file: !182, line: 485, baseType: !398, size: 64, offset: 192)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !359, file: !6, line: 1252, baseType: !3108, size: 256, offset: 7296)
!3108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 256, elements: !288)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !359, file: !6, line: 1253, baseType: !3110, size: 128, offset: 7552)
!3110 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3111, line: 21, baseType: !3112)
!3111 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3112 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3111, line: 19, size: 128, elements: !3113)
!3113 = !{!3114}
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3112, file: !3111, line: 20, baseType: !3115, size: 128)
!3115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 128, elements: !2285)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !359, file: !6, line: 1255, baseType: !7, size: 32, offset: 7680)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !359, file: !6, line: 1261, baseType: !512, size: 256, offset: 7744)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !359, file: !6, line: 1267, baseType: !35, size: 64, offset: 8000)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !359, file: !6, line: 1269, baseType: !304, size: 64, offset: 8064)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !359, file: !6, line: 1271, baseType: !3121, size: 448, offset: 8128)
!3121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !574, line: 63, size: 448, elements: !3122)
!3122 = !{!3123, !3128, !3129, !3130, !3131, !3132, !3133}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3121, file: !574, line: 64, baseType: !3124, size: 64)
!3124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3125, size: 64)
!3125 = !DISubroutineType(types: !3126)
!3126 = !{!58, !3127, !572}
!3127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3121, file: !574, line: 66, baseType: !3124, size: 64, offset: 64)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3121, file: !574, line: 69, baseType: !494, size: 64, offset: 128)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3121, file: !574, line: 70, baseType: !41, size: 32, offset: 192)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3121, file: !574, line: 71, baseType: !7, size: 32, offset: 224)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3121, file: !574, line: 74, baseType: !116, size: 128, offset: 256)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3121, file: !574, line: 85, baseType: !3134, size: 64, offset: 384)
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !359, file: !6, line: 1274, baseType: !516, size: 64, offset: 8576)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !359, file: !6, line: 1280, baseType: !516, size: 64, offset: 8640)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !359, file: !6, line: 1283, baseType: !41, size: 32, offset: 8704)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !359, file: !6, line: 1286, baseType: !2035, size: 32, offset: 8736)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !359, file: !6, line: 1289, baseType: !3140, size: 64, offset: 8768)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1454, line: 18, flags: DIFlagFwdDecl)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !359, file: !6, line: 1290, baseType: !398, size: 64, offset: 8832)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !359, file: !6, line: 1297, baseType: !1405, size: 64, offset: 8896)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !359, file: !6, line: 1304, baseType: !3145, size: 64, offset: 8960)
!3145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3146, line: 49, size: 64, elements: !3147)
!3146 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3147 = !{!3148}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3145, file: !3146, line: 50, baseType: !3149, size: 64)
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3146, line: 41, size: 512, align: 512, elements: !3151)
!3151 = !{!3152, !3153, !3158}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3150, file: !3146, line: 43, baseType: !78, size: 32)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3150, file: !3146, line: 45, baseType: !3154, size: 192, offset: 64)
!3154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3146, line: 29, size: 192, elements: !3155)
!3155 = !{!3156, !3157}
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3154, file: !3146, line: 30, baseType: !116, size: 128)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3154, file: !3146, line: 32, baseType: !494, size: 64, offset: 128)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3150, file: !3146, line: 46, baseType: !494, size: 64, offset: 256)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !359, file: !6, line: 1305, baseType: !3145, size: 64, offset: 9024)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !359, file: !6, line: 1306, baseType: !819, size: 128, align: 64, offset: 9088)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !359, file: !6, line: 1307, baseType: !1453, size: 256, offset: 9216)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !359, file: !6, line: 1309, baseType: !512, size: 256, offset: 9472)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !359, file: !6, line: 1314, baseType: !41, size: 32, offset: 9728)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !359, file: !6, line: 1317, baseType: !78, size: 32, align: 512, offset: 10240)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !359, file: !6, line: 1318, baseType: !116, size: 128, offset: 10304)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !359, file: !6, line: 1320, baseType: !78, size: 32, offset: 10432)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !359, file: !6, line: 1321, baseType: !116, size: 128, offset: 10496)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !353, file: !354, line: 73, baseType: !41, size: 32, offset: 128)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !353, file: !354, line: 74, baseType: !3170, size: 64, offset: 192)
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3171 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1247, line: 42, flags: DIFlagFwdDecl)
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !306, file: !245, line: 141, baseType: !3174, size: 64, offset: 704)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = !DISubroutineType(types: !3176)
!3176 = !{!41, !635, !1322}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !306, file: !245, line: 142, baseType: !3178, size: 64, offset: 768)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = !DISubroutineType(types: !3180)
!3180 = !{!243, !243, !3181}
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3182, size: 64)
!3182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !209)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !244, file: !245, line: 96, baseType: !358, size: 64, offset: 832)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !244, file: !245, line: 97, baseType: !58, size: 64, offset: 896)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !244, file: !245, line: 98, baseType: !39, size: 64, offset: 960)
!3186 = !DIDerivedType(tag: DW_TAG_member, scope: !244, file: !245, line: 100, baseType: !3187, size: 128, offset: 1024)
!3187 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !244, file: !245, line: 100, size: 128, elements: !3188)
!3188 = !{!3189, !3190}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3187, file: !245, line: 101, baseType: !116, size: 128)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3187, file: !245, line: 102, baseType: !3191, size: 64)
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !244, file: !245, line: 104, baseType: !116, size: 128, offset: 1152)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !244, file: !245, line: 105, baseType: !116, size: 128, offset: 1280)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !244, file: !245, line: 113, baseType: !3195, size: 128, offset: 1408)
!3195 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !244, file: !245, line: 109, size: 128, elements: !3196)
!3196 = !{!3197, !3198, !3199}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3195, file: !245, line: 110, baseType: !402, size: 128)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3195, file: !245, line: 111, baseType: !259, size: 128)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3195, file: !245, line: 112, baseType: !819, size: 128, align: 64)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !237, file: !6, line: 1968, baseType: !3201, size: 64, offset: 64)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = !DISubroutineType(types: !3203)
!3203 = !{!35, !243, !208, !3204}
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3206, line: 10, size: 128, elements: !3207)
!3206 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3207 = !{!3208, !3212}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3205, file: !3206, line: 11, baseType: !3209, size: 64)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{null, !39}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3205, file: !3206, line: 12, baseType: !39, size: 64, offset: 64)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !237, file: !6, line: 1969, baseType: !3214, size: 64, offset: 128)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3215, size: 64)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{!41, !3170, !208, !41}
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !237, file: !6, line: 1970, baseType: !3218, size: 64, offset: 192)
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3219 = !DISubroutineType(types: !3220)
!3220 = !{!231, !208, !41, !1322}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !237, file: !6, line: 1972, baseType: !3222, size: 64, offset: 256)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3223 = !DISubroutineType(types: !3224)
!3224 = !{!41, !243, !347, !41}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !237, file: !6, line: 1974, baseType: !3226, size: 64, offset: 320)
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = !DISubroutineType(types: !3228)
!3228 = !{!41, !3170, !208, !243, !43, !1322}
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !237, file: !6, line: 1976, baseType: !3230, size: 64, offset: 384)
!3230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3231, size: 64)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{!41, !243, !208, !243}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !237, file: !6, line: 1977, baseType: !3234, size: 64, offset: 448)
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = !DISubroutineType(types: !3236)
!3236 = !{!41, !208, !243}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !237, file: !6, line: 1978, baseType: !3238, size: 64, offset: 512)
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3239, size: 64)
!3239 = !DISubroutineType(types: !3240)
!3240 = !{!41, !3170, !208, !243, !35}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !237, file: !6, line: 1980, baseType: !3242, size: 64, offset: 576)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = !DISubroutineType(types: !3244)
!3244 = !{!41, !3170, !208, !243, !43}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !237, file: !6, line: 1982, baseType: !3234, size: 64, offset: 640)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !237, file: !6, line: 1983, baseType: !3247, size: 64, offset: 704)
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = !DISubroutineType(types: !3249)
!3249 = !{!41, !3170, !208, !243, !43, !363}
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !237, file: !6, line: 1985, baseType: !3251, size: 64, offset: 768)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3252 = !DISubroutineType(types: !3253)
!3253 = !{!41, !3170, !208, !243, !208, !243, !7}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !237, file: !6, line: 1987, baseType: !3255, size: 64, offset: 832)
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3256, size: 64)
!3256 = !DISubroutineType(types: !3257)
!3257 = !{!41, !3170, !243, !3258}
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !6, line: 226, size: 640, elements: !3260)
!3260 = !{!3261, !3262, !3263, !3273, !3282, !3283, !3288, !3289, !3290}
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3259, file: !6, line: 227, baseType: !7, size: 32)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3259, file: !6, line: 228, baseType: !43, size: 16, offset: 32)
!3263 = !DIDerivedType(tag: DW_TAG_member, scope: !3259, file: !6, line: 241, baseType: !3264, size: 32, offset: 64)
!3264 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3259, file: !6, line: 241, size: 32, elements: !3265)
!3265 = !{!3266, !3267}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3264, file: !6, line: 242, baseType: !214, size: 32)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3264, file: !6, line: 243, baseType: !3268, size: 32)
!3268 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3269, line: 16, baseType: !3270)
!3269 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3270 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3269, line: 14, size: 32, elements: !3271)
!3271 = !{!3272}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3270, file: !3269, line: 15, baseType: !219, size: 32)
!3273 = !DIDerivedType(tag: DW_TAG_member, scope: !3259, file: !6, line: 245, baseType: !3274, size: 32, offset: 96)
!3274 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3259, file: !6, line: 245, size: 32, elements: !3275)
!3275 = !{!3276, !3277}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3274, file: !6, line: 246, baseType: !223, size: 32)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3274, file: !6, line: 247, baseType: !3278, size: 32)
!3278 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3269, line: 20, baseType: !3279)
!3279 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3269, line: 18, size: 32, elements: !3280)
!3280 = !{!3281}
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3279, file: !3269, line: 19, baseType: !227, size: 32)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3259, file: !6, line: 249, baseType: !60, size: 64, offset: 128)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3259, file: !6, line: 250, baseType: !3284, size: 128, offset: 192)
!3284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !566, line: 13, size: 128, elements: !3285)
!3285 = !{!3286, !3287}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3284, file: !566, line: 14, baseType: !565, size: 64)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3284, file: !566, line: 15, baseType: !494, size: 64, offset: 64)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3259, file: !6, line: 251, baseType: !3284, size: 128, offset: 320)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3259, file: !6, line: 252, baseType: !3284, size: 128, offset: 448)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3259, file: !6, line: 259, baseType: !1161, size: 64, offset: 576)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !237, file: !6, line: 1988, baseType: !3292, size: 64, offset: 896)
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3293, size: 64)
!3293 = !DISubroutineType(types: !3294)
!3294 = !{!41, !3170, !635, !3295, !205, !7}
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3296, size: 64)
!3296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3297, line: 22, size: 1280, elements: !3298)
!3297 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3298 = !{!3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3296, file: !3297, line: 23, baseType: !205, size: 32)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3296, file: !3297, line: 24, baseType: !43, size: 16, offset: 32)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3296, file: !3297, line: 25, baseType: !7, size: 32, offset: 64)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3296, file: !3297, line: 26, baseType: !1287, size: 32, offset: 96)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3296, file: !3297, line: 27, baseType: !279, size: 64, offset: 128)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3296, file: !3297, line: 28, baseType: !279, size: 64, offset: 192)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3296, file: !3297, line: 41, baseType: !279, size: 64, offset: 256)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3296, file: !3297, line: 42, baseType: !363, size: 32, offset: 320)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3296, file: !3297, line: 43, baseType: !363, size: 32, offset: 352)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3296, file: !3297, line: 44, baseType: !214, size: 32, offset: 384)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3296, file: !3297, line: 45, baseType: !223, size: 32, offset: 416)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3296, file: !3297, line: 46, baseType: !60, size: 64, offset: 448)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3296, file: !3297, line: 47, baseType: !3284, size: 128, offset: 512)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3296, file: !3297, line: 48, baseType: !3284, size: 128, offset: 640)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3296, file: !3297, line: 49, baseType: !3284, size: 128, offset: 768)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3296, file: !3297, line: 50, baseType: !3284, size: 128, offset: 896)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3296, file: !3297, line: 51, baseType: !279, size: 64, offset: 1024)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3296, file: !3297, line: 52, baseType: !279, size: 64, offset: 1088)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3296, file: !3297, line: 53, baseType: !205, size: 32, offset: 1152)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3296, file: !3297, line: 54, baseType: !205, size: 32, offset: 1184)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3296, file: !3297, line: 55, baseType: !279, size: 64, offset: 1216)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !237, file: !6, line: 1990, baseType: !3321, size: 64, offset: 960)
!3321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3322, size: 64)
!3322 = !DISubroutineType(types: !3323)
!3323 = !{!491, !243, !347, !54}
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !237, file: !6, line: 1991, baseType: !3325, size: 64, offset: 1024)
!3325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3326, size: 64)
!3326 = !DISubroutineType(types: !3327)
!3327 = !{!41, !208, !3328, !279, !279}
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3329, size: 64)
!3329 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !6, line: 55, flags: DIFlagFwdDecl)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !237, file: !6, line: 1993, baseType: !3331, size: 64, offset: 1088)
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{!41, !208, !41}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !237, file: !6, line: 1994, baseType: !3335, size: 64, offset: 1152)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = !DISubroutineType(types: !3337)
!3337 = !{!41, !208, !243, !1161, !7, !43}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !237, file: !6, line: 1997, baseType: !3339, size: 64, offset: 1216)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{!41, !3170, !208, !1161, !43}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !237, file: !6, line: 1999, baseType: !3343, size: 64, offset: 1280)
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = !DISubroutineType(types: !3345)
!3345 = !{!231, !3170, !243, !41}
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !237, file: !6, line: 2001, baseType: !3347, size: 64, offset: 1344)
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3348 = !DISubroutineType(types: !3349)
!3349 = !{!41, !3170, !243, !231, !41}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !237, file: !6, line: 2003, baseType: !3351, size: 64, offset: 1408)
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 64)
!3352 = !DISubroutineType(types: !3353)
!3353 = !{!41, !3170, !243, !3354}
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !6, line: 76, flags: DIFlagFwdDecl)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !237, file: !6, line: 2005, baseType: !3357, size: 64, offset: 1472)
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3358 = !DISubroutineType(types: !3359)
!3359 = !{!41, !243, !3354}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !237, file: !6, line: 2006, baseType: !3361, size: 64, offset: 1536)
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3362, size: 64)
!3362 = !DISubroutineType(types: !3363)
!3363 = !{!3364, !208}
!3364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3365, size: 64)
!3365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !6, line: 3192, size: 192, elements: !3366)
!3366 = !{!3367, !3368}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3365, file: !6, line: 3193, baseType: !1807, size: 128)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3365, file: !6, line: 3194, baseType: !205, size: 32, offset: 128)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !209, file: !6, line: 655, baseType: !358, size: 64, offset: 448)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !209, file: !6, line: 656, baseType: !1802, size: 64, offset: 512)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !209, file: !6, line: 659, baseType: !39, size: 64, offset: 576)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !209, file: !6, line: 663, baseType: !58, size: 64, offset: 640)
!3373 = !DIDerivedType(tag: DW_TAG_member, scope: !209, file: !6, line: 671, baseType: !3374, size: 32, offset: 704)
!3374 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !209, file: !6, line: 671, size: 32, elements: !3375)
!3375 = !{!3376, !3378}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3374, file: !6, line: 672, baseType: !3377, size: 32)
!3377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3374, file: !6, line: 673, baseType: !7, size: 32)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !209, file: !6, line: 675, baseType: !363, size: 32, offset: 736)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !209, file: !6, line: 676, baseType: !60, size: 64, offset: 768)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !209, file: !6, line: 677, baseType: !3284, size: 128, offset: 832)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !209, file: !6, line: 678, baseType: !3284, size: 128, offset: 960)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !209, file: !6, line: 679, baseType: !3284, size: 128, offset: 1088)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !209, file: !6, line: 680, baseType: !78, size: 32, offset: 1216)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !209, file: !6, line: 681, baseType: !45, size: 16, offset: 1248)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !209, file: !6, line: 682, baseType: !102, size: 8, offset: 1264)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !209, file: !6, line: 683, baseType: !102, size: 8, offset: 1272)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !209, file: !6, line: 684, baseType: !713, size: 64, offset: 1280)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !209, file: !6, line: 691, baseType: !58, size: 64, offset: 1344)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !209, file: !6, line: 692, baseType: !725, size: 320, offset: 1408)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !209, file: !6, line: 694, baseType: !58, size: 64, offset: 1728)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !209, file: !6, line: 695, baseType: !58, size: 64, offset: 1792)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !209, file: !6, line: 697, baseType: !402, size: 128, offset: 1856)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !209, file: !6, line: 698, baseType: !116, size: 128, offset: 1984)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !209, file: !6, line: 707, baseType: !116, size: 128, offset: 2112)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !209, file: !6, line: 708, baseType: !116, size: 128, offset: 2240)
!3397 = !DIDerivedType(tag: DW_TAG_member, scope: !209, file: !6, line: 709, baseType: !3398, size: 128, offset: 2368)
!3398 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !209, file: !6, line: 709, size: 128, elements: !3399)
!3399 = !{!3400, !3401}
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3398, file: !6, line: 710, baseType: !398, size: 64)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3398, file: !6, line: 711, baseType: !819, size: 128, align: 64)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !209, file: !6, line: 713, baseType: !518, size: 64, offset: 2496)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !209, file: !6, line: 714, baseType: !518, size: 64, offset: 2560)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !209, file: !6, line: 715, baseType: !68, size: 32, offset: 2624)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !209, file: !6, line: 716, baseType: !68, size: 32, offset: 2656)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !209, file: !6, line: 717, baseType: !68, size: 32, offset: 2688)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !209, file: !6, line: 719, baseType: !68, size: 32, offset: 2720)
!3408 = !DIDerivedType(tag: DW_TAG_member, scope: !209, file: !6, line: 721, baseType: !3409, size: 64, offset: 2752)
!3409 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !209, file: !6, line: 721, size: 64, elements: !3410)
!3410 = !{!3411, !3412}
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3409, file: !6, line: 722, baseType: !1579, size: 64)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3409, file: !6, line: 723, baseType: !431, size: 64)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !209, file: !6, line: 725, baseType: !3414, size: 64, offset: 2816)
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3415 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !6, line: 725, flags: DIFlagFwdDecl)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !209, file: !6, line: 726, baseType: !1803, size: 1536, align: 64, offset: 2880)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !209, file: !6, line: 727, baseType: !116, size: 128, offset: 4416)
!3418 = !DIDerivedType(tag: DW_TAG_member, scope: !209, file: !6, line: 728, baseType: !3419, size: 64, offset: 4544)
!3419 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !209, file: !6, line: 728, size: 64, elements: !3420)
!3420 = !{!3421, !3422, !3425, !3426}
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3419, file: !6, line: 729, baseType: !1753, size: 64)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3419, file: !6, line: 730, baseType: !3423, size: 64)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !6, line: 730, flags: DIFlagFwdDecl)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3419, file: !6, line: 731, baseType: !347, size: 64)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3419, file: !6, line: 732, baseType: !7, size: 32)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !209, file: !6, line: 735, baseType: !185, size: 32, offset: 4608)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !209, file: !6, line: 738, baseType: !185, size: 32, offset: 4640)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !209, file: !6, line: 739, baseType: !3087, size: 64, offset: 4672)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !209, file: !6, line: 750, baseType: !39, size: 64, offset: 4736)
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_iter_info", file: !182, line: 400, size: 448, elements: !3433)
!3433 = !{!3434, !3437, !3438, !3439}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "marks", scope: !3432, file: !182, line: 401, baseType: !3435, size: 320)
!3435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3436, size: 320, elements: !1422)
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "current_group", scope: !3432, file: !182, line: 402, baseType: !193, size: 64, offset: 320)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "report_mask", scope: !3432, file: !182, line: 403, baseType: !7, size: 32, offset: 384)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !3432, file: !182, line: 404, baseType: !41, size: 32, offset: 416)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "handle_inode_event", scope: !199, file: !182, line: 160, baseType: !3441, size: 64, offset: 64)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = !DISubroutineType(types: !3443)
!3443 = !{!41, !3436, !205, !208, !208, !324, !205}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "free_group_priv", scope: !199, file: !182, line: 163, baseType: !3445, size: 64, offset: 128)
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3446, size: 64)
!3446 = !DISubroutineType(types: !3447)
!3447 = !{null, !193}
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "freeing_mark", scope: !199, file: !182, line: 164, baseType: !3449, size: 64, offset: 192)
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3450, size: 64)
!3450 = !DISubroutineType(types: !3451)
!3451 = !{null, !3436, !193}
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "free_event", scope: !199, file: !182, line: 165, baseType: !3453, size: 64, offset: 256)
!3453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3454, size: 64)
!3454 = !DISubroutineType(types: !3455)
!3455 = !{null, !193, !3456}
!3456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3457, size: 64)
!3457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_event", file: !182, line: 175, size: 128, elements: !3458)
!3458 = !{!3459}
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3457, file: !182, line: 176, baseType: !116, size: 128)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "free_mark", scope: !199, file: !182, line: 167, baseType: !3461, size: 64, offset: 320)
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3462, size: 64)
!3462 = !DISubroutineType(types: !3463)
!3463 = !{null, !3436}
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !194, file: !182, line: 196, baseType: !187, size: 32, offset: 64)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "notification_lock", scope: !194, file: !182, line: 199, baseType: !78, size: 32, offset: 96)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "notification_list", scope: !194, file: !182, line: 200, baseType: !116, size: 128, offset: 128)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "notification_waitq", scope: !194, file: !182, line: 201, baseType: !73, size: 192, offset: 256)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "q_len", scope: !194, file: !182, line: 202, baseType: !7, size: 32, offset: 448)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "max_events", scope: !194, file: !182, line: 203, baseType: !7, size: 32, offset: 480)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !194, file: !182, line: 211, baseType: !7, size: 32, offset: 512)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !194, file: !182, line: 212, baseType: !1322, size: 8, offset: 544)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !194, file: !182, line: 217, baseType: !41, size: 32, offset: 576)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "owner_flags", scope: !194, file: !182, line: 218, baseType: !7, size: 32, offset: 608)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "mark_mutex", scope: !194, file: !182, line: 221, baseType: !512, size: 256, offset: 640)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "user_waits", scope: !194, file: !182, line: 222, baseType: !68, size: 32, offset: 896)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "marks_list", scope: !194, file: !182, line: 224, baseType: !116, size: 128, offset: 960)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "fsn_fa", scope: !194, file: !182, line: 226, baseType: !3478, size: 64, offset: 1088)
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3479, size: 64)
!3479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !6, line: 1083, size: 384, elements: !3480)
!3480 = !{!3481, !3482, !3483, !3484, !3485, !3486}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3479, file: !6, line: 1084, baseType: !1181, size: 64)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3479, file: !6, line: 1085, baseType: !41, size: 32, offset: 64)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3479, file: !6, line: 1086, baseType: !41, size: 32, offset: 96)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3479, file: !6, line: 1087, baseType: !3478, size: 64, offset: 128)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3479, file: !6, line: 1088, baseType: !1161, size: 64, offset: 192)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3479, file: !6, line: 1089, baseType: !819, size: 128, align: 64, offset: 256)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_event", scope: !194, file: !182, line: 228, baseType: !3456, size: 64, offset: 1152)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !194, file: !182, line: 232, baseType: !582, size: 64, offset: 1216)
!3489 = !DIDerivedType(tag: DW_TAG_member, scope: !194, file: !182, line: 235, baseType: !3490, size: 320, offset: 1280)
!3490 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !194, file: !182, line: 235, size: 320, elements: !3491)
!3491 = !{!3492, !3493}
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3490, file: !182, line: 236, baseType: !39, size: 64)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "inotify_data", scope: !3490, file: !182, line: 242, baseType: !3494, size: 320)
!3494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inotify_group_private_data", file: !182, line: 238, size: 320, elements: !3495)
!3495 = !{!3496, !3497, !3504}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "idr_lock", scope: !3494, file: !182, line: 239, baseType: !78, size: 32)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !3494, file: !182, line: 240, baseType: !3498, size: 192, offset: 64)
!3498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3499, line: 19, size: 192, elements: !3500)
!3499 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!3500 = !{!3501, !3502, !3503}
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3498, file: !3499, line: 20, baseType: !1807, size: 128)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3498, file: !3499, line: 21, baseType: !7, size: 32, offset: 128)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3498, file: !3499, line: 22, baseType: !7, size: 32, offset: 160)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !3494, file: !182, line: 241, baseType: !1536, size: 64, offset: 256)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "g_list", scope: !181, file: !182, line: 514, baseType: !116, size: 128, offset: 128)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !181, file: !182, line: 516, baseType: !78, size: 32, offset: 256)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "obj_list", scope: !181, file: !182, line: 518, baseType: !402, size: 128, offset: 320)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "connector", scope: !181, file: !182, line: 520, baseType: !3087, size: 64, offset: 448)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_mask", scope: !181, file: !182, line: 522, baseType: !185, size: 32, offset: 512)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !181, file: !182, line: 533, baseType: !7, size: 32, offset: 544)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "wd", scope: !177, file: !178, line: 17, baseType: !41, size: 32, offset: 576)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3514)
!3514 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !41)
!3515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3516, size: 64)
!3516 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !119)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inotify_event_info", file: !178, line: 6, size: 256, elements: !3519)
!3519 = !{!3520, !3521, !3522, !3523, !3524, !3525}
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "fse", scope: !3518, file: !178, line: 7, baseType: !3457, size: 128)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3518, file: !178, line: 8, baseType: !205, size: 32, offset: 128)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "wd", scope: !3518, file: !178, line: 9, baseType: !41, size: 32, offset: 160)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "sync_cookie", scope: !3518, file: !178, line: 10, baseType: !205, size: 32, offset: 192)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "name_len", scope: !3518, file: !178, line: 11, baseType: !41, size: 32, offset: 224)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3518, file: !178, line: 12, baseType: !2710, offset: 256)
!3526 = !{!0, !3527, !3532, !3551, !3556, !3561}
!3527 = !DIGlobalVariableExpression(var: !3528, expr: !DIExpression())
!3528 = distinct !DIGlobalVariable(scope: null, file: !152, line: 480, type: !3529, isLocal: true, isDefinition: true)
!3529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 168, elements: !3530)
!3530 = !{!3531}
!3531 = !DISubrange(count: 21)
!3532 = !DIGlobalVariableExpression(var: !3533, expr: !DIExpression())
!3533 = distinct !DIGlobalVariable(name: "warned", scope: !3534, file: !3, line: 154, type: !1322, isLocal: true, isDefinition: true)
!3534 = distinct !DISubprogram(name: "idr_callback", scope: !3, file: !3, line: 150, type: !3535, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3537)
!3535 = !DISubroutineType(types: !3536)
!3536 = !{!41, !41, !39, !39}
!3537 = !{!3538, !3539, !3540, !3541, !3542, !3543, !3545, !3547}
!3538 = !DILocalVariable(name: "id", arg: 1, scope: !3534, file: !3, line: 150, type: !41)
!3539 = !DILocalVariable(name: "p", arg: 2, scope: !3534, file: !3, line: 150, type: !39)
!3540 = !DILocalVariable(name: "data", arg: 3, scope: !3534, file: !3, line: 150, type: !39)
!3541 = !DILocalVariable(name: "fsn_mark", scope: !3534, file: !3, line: 152, type: !3436)
!3542 = !DILocalVariable(name: "i_mark", scope: !3534, file: !3, line: 153, type: !176)
!3543 = !DILocalVariable(name: "__mptr", scope: !3544, file: !3, line: 161, type: !39)
!3544 = distinct !DILexicalBlock(scope: !3534, file: !3, line: 161, column: 11)
!3545 = !DILocalVariable(name: "__ret_warn_on", scope: !3546, file: !3, line: 163, type: !41)
!3546 = distinct !DILexicalBlock(scope: !3534, file: !3, line: 163, column: 2)
!3547 = !DILocalVariable(name: "__flags", scope: !3548, file: !3, line: 163, type: !41)
!3548 = distinct !DILexicalBlock(scope: !3549, file: !3, line: 163, column: 2)
!3549 = distinct !DILexicalBlock(scope: !3550, file: !3, line: 163, column: 2)
!3550 = distinct !DILexicalBlock(scope: !3546, file: !3, line: 163, column: 2)
!3551 = !DIGlobalVariableExpression(var: !3552, expr: !DIExpression())
!3552 = distinct !DIGlobalVariable(scope: null, file: !3, line: 163, type: !3553, isLocal: true, isDefinition: true)
!3553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 752, elements: !3554)
!3554 = !{!3555}
!3555 = !DISubrange(count: 94)
!3556 = !DIGlobalVariableExpression(var: !3557, expr: !DIExpression())
!3557 = distinct !DIGlobalVariable(scope: null, file: !3, line: 163, type: !3558, isLocal: true, isDefinition: true)
!3558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 296, elements: !3559)
!3559 = !{!3560}
!3560 = !DISubrange(count: 37)
!3561 = !DIGlobalVariableExpression(var: !3562, expr: !DIExpression())
!3562 = distinct !DIGlobalVariable(scope: null, file: !3, line: 173, type: !3563, isLocal: true, isDefinition: true)
!3563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 224, elements: !3564)
!3564 = !{!3565}
!3565 = !DISubrange(count: 28)
!3566 = !{i32 7, !"Dwarf Version", i32 5}
!3567 = !{i32 2, !"Debug Info Version", i32 3}
!3568 = !{i32 1, !"wchar_size", i32 2}
!3569 = !{i32 8, !"cf-protection-branch", i32 1}
!3570 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3571 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!3572 = !{i32 1, !"Code Model", i32 2}
!3573 = !{i32 1, !"override-stack-alignment", i32 8}
!3574 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!3575 = distinct !DISubprogram(name: "inotify_handle_inode_event", scope: !3, file: !3, line: 59, type: !3442, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3576)
!3576 = !{!3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592}
!3577 = !DILocalVariable(name: "inode_mark", arg: 1, scope: !3575, file: !3, line: 59, type: !3436)
!3578 = !DILocalVariable(name: "mask", arg: 2, scope: !3575, file: !3, line: 59, type: !205)
!3579 = !DILocalVariable(name: "inode", arg: 3, scope: !3575, file: !3, line: 60, type: !208)
!3580 = !DILocalVariable(name: "dir", arg: 4, scope: !3575, file: !3, line: 60, type: !208)
!3581 = !DILocalVariable(name: "name", arg: 5, scope: !3575, file: !3, line: 61, type: !324)
!3582 = !DILocalVariable(name: "cookie", arg: 6, scope: !3575, file: !3, line: 61, type: !205)
!3583 = !DILocalVariable(name: "i_mark", scope: !3575, file: !3, line: 63, type: !176)
!3584 = !DILocalVariable(name: "event", scope: !3575, file: !3, line: 64, type: !3517)
!3585 = !DILocalVariable(name: "fsn_event", scope: !3575, file: !3, line: 65, type: !3456)
!3586 = !DILocalVariable(name: "group", scope: !3575, file: !3, line: 66, type: !193)
!3587 = !DILocalVariable(name: "ret", scope: !3575, file: !3, line: 67, type: !41)
!3588 = !DILocalVariable(name: "len", scope: !3575, file: !3, line: 68, type: !41)
!3589 = !DILocalVariable(name: "wd", scope: !3575, file: !3, line: 68, type: !41)
!3590 = !DILocalVariable(name: "alloc_len", scope: !3575, file: !3, line: 69, type: !41)
!3591 = !DILocalVariable(name: "old_memcg", scope: !3575, file: !3, line: 70, type: !582)
!3592 = !DILocalVariable(name: "__mptr", scope: !3593, file: !3, line: 80, type: !39)
!3593 = distinct !DILexicalBlock(scope: !3575, file: !3, line: 80, column: 11)
!3594 = !DILocation(line: 59, column: 54, scope: !3575)
!3595 = !DILocation(line: 59, column: 70, scope: !3575)
!3596 = !DILocation(line: 60, column: 25, scope: !3575)
!3597 = !DILocation(line: 60, column: 46, scope: !3575)
!3598 = !DILocation(line: 61, column: 30, scope: !3575)
!3599 = !DILocation(line: 61, column: 40, scope: !3575)
!3600 = !DILocation(line: 63, column: 2, scope: !3575)
!3601 = !DILocation(line: 63, column: 29, scope: !3575)
!3602 = !DILocation(line: 64, column: 2, scope: !3575)
!3603 = !DILocation(line: 64, column: 29, scope: !3575)
!3604 = !DILocation(line: 65, column: 2, scope: !3575)
!3605 = !DILocation(line: 65, column: 25, scope: !3575)
!3606 = !DILocation(line: 66, column: 2, scope: !3575)
!3607 = !DILocation(line: 66, column: 25, scope: !3575)
!3608 = !DILocation(line: 66, column: 33, scope: !3575)
!3609 = !DILocation(line: 66, column: 45, scope: !3575)
!3610 = !DILocation(line: 67, column: 2, scope: !3575)
!3611 = !DILocation(line: 67, column: 6, scope: !3575)
!3612 = !DILocation(line: 68, column: 2, scope: !3575)
!3613 = !DILocation(line: 68, column: 6, scope: !3575)
!3614 = !DILocation(line: 68, column: 15, scope: !3575)
!3615 = !DILocation(line: 69, column: 2, scope: !3575)
!3616 = !DILocation(line: 69, column: 6, scope: !3575)
!3617 = !DILocation(line: 70, column: 2, scope: !3575)
!3618 = !DILocation(line: 70, column: 21, scope: !3575)
!3619 = !DILocation(line: 72, column: 6, scope: !3620)
!3620 = distinct !DILexicalBlock(scope: !3575, file: !3, line: 72, column: 6)
!3621 = !DILocation(line: 72, column: 6, scope: !3575)
!3622 = !DILocation(line: 73, column: 9, scope: !3623)
!3623 = distinct !DILexicalBlock(scope: !3620, file: !3, line: 72, column: 12)
!3624 = !DILocation(line: 73, column: 15, scope: !3623)
!3625 = !DILocation(line: 73, column: 7, scope: !3623)
!3626 = !DILocation(line: 74, column: 16, scope: !3623)
!3627 = !DILocation(line: 74, column: 20, scope: !3623)
!3628 = !DILocation(line: 74, column: 13, scope: !3623)
!3629 = !DILocation(line: 75, column: 2, scope: !3623)
!3630 = !DILocation(line: 77, column: 2, scope: !3631)
!3631 = distinct !DILexicalBlock(scope: !3632, file: !3, line: 77, column: 2)
!3632 = distinct !DILexicalBlock(scope: !3575, file: !3, line: 77, column: 2)
!3633 = !DILocation(line: 77, column: 2, scope: !3632)
!3634 = !DILocation(line: 80, column: 11, scope: !3593)
!3635 = !DILocation(line: 80, column: 11, scope: !3575)
!3636 = !DILocation(line: 80, column: 9, scope: !3575)
!3637 = !DILocation(line: 87, column: 7, scope: !3638)
!3638 = distinct !DILexicalBlock(scope: !3575, file: !3, line: 87, column: 7)
!3639 = !DILocation(line: 87, column: 7, scope: !3640)
!3640 = distinct !DILexicalBlock(scope: !3638, file: !3, line: 87, column: 7)
!3641 = !DILocation(line: 87, column: 5, scope: !3575)
!3642 = !DILocation(line: 88, column: 6, scope: !3643)
!3643 = distinct !DILexicalBlock(scope: !3575, file: !3, line: 88, column: 6)
!3644 = !DILocation(line: 88, column: 9, scope: !3643)
!3645 = !DILocation(line: 88, column: 6, scope: !3575)
!3646 = !DILocation(line: 89, column: 3, scope: !3643)
!3647 = !DILocation(line: 95, column: 31, scope: !3575)
!3648 = !DILocation(line: 95, column: 38, scope: !3575)
!3649 = !DILocation(line: 95, column: 14, scope: !3575)
!3650 = !DILocation(line: 95, column: 12, scope: !3575)
!3651 = !DILocation(line: 96, column: 18, scope: !3575)
!3652 = !DILocation(line: 96, column: 10, scope: !3575)
!3653 = !DILocation(line: 96, column: 8, scope: !3575)
!3654 = !DILocation(line: 97, column: 19, scope: !3575)
!3655 = !DILocation(line: 97, column: 2, scope: !3575)
!3656 = !DILocation(line: 99, column: 6, scope: !3657)
!3657 = distinct !DILexicalBlock(scope: !3575, file: !3, line: 99, column: 6)
!3658 = !DILocation(line: 99, column: 6, scope: !3575)
!3659 = !DILocation(line: 104, column: 27, scope: !3660)
!3660 = distinct !DILexicalBlock(scope: !3657, file: !3, line: 99, column: 24)
!3661 = !DILocation(line: 104, column: 3, scope: !3660)
!3662 = !DILocation(line: 105, column: 3, scope: !3660)
!3663 = !DILocation(line: 114, column: 6, scope: !3664)
!3664 = distinct !DILexicalBlock(scope: !3575, file: !3, line: 114, column: 6)
!3665 = !DILocation(line: 114, column: 11, scope: !3664)
!3666 = !DILocation(line: 114, column: 6, scope: !3575)
!3667 = !DILocation(line: 115, column: 8, scope: !3664)
!3668 = !DILocation(line: 115, column: 3, scope: !3664)
!3669 = !DILocation(line: 117, column: 15, scope: !3575)
!3670 = !DILocation(line: 117, column: 22, scope: !3575)
!3671 = !DILocation(line: 117, column: 12, scope: !3575)
!3672 = !DILocation(line: 118, column: 22, scope: !3575)
!3673 = !DILocation(line: 118, column: 2, scope: !3575)
!3674 = !DILocation(line: 119, column: 16, scope: !3575)
!3675 = !DILocation(line: 119, column: 2, scope: !3575)
!3676 = !DILocation(line: 119, column: 9, scope: !3575)
!3677 = !DILocation(line: 119, column: 14, scope: !3575)
!3678 = !DILocation(line: 120, column: 14, scope: !3575)
!3679 = !DILocation(line: 120, column: 2, scope: !3575)
!3680 = !DILocation(line: 120, column: 9, scope: !3575)
!3681 = !DILocation(line: 120, column: 12, scope: !3575)
!3682 = !DILocation(line: 121, column: 23, scope: !3575)
!3683 = !DILocation(line: 121, column: 2, scope: !3575)
!3684 = !DILocation(line: 121, column: 9, scope: !3575)
!3685 = !DILocation(line: 121, column: 21, scope: !3575)
!3686 = !DILocation(line: 122, column: 20, scope: !3575)
!3687 = !DILocation(line: 122, column: 2, scope: !3575)
!3688 = !DILocation(line: 122, column: 9, scope: !3575)
!3689 = !DILocation(line: 122, column: 18, scope: !3575)
!3690 = !DILocation(line: 123, column: 6, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !3575, file: !3, line: 123, column: 6)
!3692 = !DILocation(line: 123, column: 6, scope: !3575)
!3693 = !DILocation(line: 124, column: 10, scope: !3691)
!3694 = !DILocation(line: 124, column: 17, scope: !3691)
!3695 = !DILocation(line: 124, column: 23, scope: !3691)
!3696 = !DILocation(line: 124, column: 29, scope: !3691)
!3697 = !DILocation(line: 124, column: 3, scope: !3691)
!3698 = !DILocation(line: 126, column: 27, scope: !3575)
!3699 = !DILocation(line: 126, column: 34, scope: !3575)
!3700 = !DILocation(line: 126, column: 8, scope: !3575)
!3701 = !DILocation(line: 126, column: 6, scope: !3575)
!3702 = !DILocation(line: 127, column: 6, scope: !3703)
!3703 = distinct !DILexicalBlock(scope: !3575, file: !3, line: 127, column: 6)
!3704 = !DILocation(line: 127, column: 6, scope: !3575)
!3705 = !DILocation(line: 129, column: 26, scope: !3706)
!3706 = distinct !DILexicalBlock(scope: !3703, file: !3, line: 127, column: 11)
!3707 = !DILocation(line: 129, column: 33, scope: !3706)
!3708 = !DILocation(line: 129, column: 3, scope: !3706)
!3709 = !DILocation(line: 130, column: 2, scope: !3706)
!3710 = !DILocation(line: 132, column: 6, scope: !3711)
!3711 = distinct !DILexicalBlock(scope: !3575, file: !3, line: 132, column: 6)
!3712 = !DILocation(line: 132, column: 18, scope: !3711)
!3713 = !DILocation(line: 132, column: 24, scope: !3711)
!3714 = !DILocation(line: 132, column: 6, scope: !3575)
!3715 = !DILocation(line: 133, column: 25, scope: !3711)
!3716 = !DILocation(line: 133, column: 37, scope: !3711)
!3717 = !DILocation(line: 133, column: 3, scope: !3711)
!3718 = !DILocation(line: 135, column: 2, scope: !3575)
!3719 = !DILocation(line: 136, column: 1, scope: !3575)
!3720 = distinct !DISubprogram(name: "set_active_memcg", scope: !3721, file: !3721, line: 426, type: !3722, scopeLine: 427, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3724)
!3721 = !DIFile(filename: "./include/linux/sched/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2bdb17d42d55a8ac5ff9bf0c87450707")
!3722 = !DISubroutineType(types: !3723)
!3723 = !{!582, !582}
!3724 = !{!3725}
!3725 = !DILocalVariable(name: "memcg", arg: 1, scope: !3720, file: !3721, line: 426, type: !582)
!3726 = !DILocation(line: 426, column: 37, scope: !3720)
!3727 = !DILocation(line: 428, column: 2, scope: !3720)
!3728 = distinct !DISubprogram(name: "kmalloc", scope: !152, file: !152, line: 591, type: !3729, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3731)
!3729 = !DISubroutineType(types: !3730)
!3730 = !{!39, !54, !577}
!3731 = !{!3732, !3733, !3734}
!3732 = !DILocalVariable(name: "size", arg: 1, scope: !3728, file: !152, line: 591, type: !54)
!3733 = !DILocalVariable(name: "flags", arg: 2, scope: !3728, file: !152, line: 591, type: !577)
!3734 = !DILocalVariable(name: "index", scope: !3735, file: !152, line: 594, type: !7)
!3735 = distinct !DILexicalBlock(scope: !3736, file: !152, line: 593, column: 42)
!3736 = distinct !DILexicalBlock(scope: !3728, file: !152, line: 593, column: 6)
!3737 = !DILocation(line: 591, column: 61, scope: !3728)
!3738 = !DILocation(line: 591, column: 73, scope: !3728)
!3739 = !DILocation(line: 593, column: 27, scope: !3736)
!3740 = !DILocation(line: 593, column: 6, scope: !3736)
!3741 = !DILocation(line: 593, column: 33, scope: !3736)
!3742 = !DILocation(line: 593, column: 36, scope: !3736)
!3743 = !DILocation(line: 593, column: 6, scope: !3728)
!3744 = !DILocation(line: 594, column: 3, scope: !3735)
!3745 = !DILocation(line: 594, column: 16, scope: !3735)
!3746 = !DILocation(line: 596, column: 7, scope: !3747)
!3747 = distinct !DILexicalBlock(scope: !3735, file: !152, line: 596, column: 7)
!3748 = !DILocation(line: 596, column: 12, scope: !3747)
!3749 = !DILocation(line: 596, column: 7, scope: !3735)
!3750 = !DILocation(line: 597, column: 25, scope: !3747)
!3751 = !DILocation(line: 597, column: 31, scope: !3747)
!3752 = !DILocation(line: 597, column: 11, scope: !3747)
!3753 = !DILocation(line: 597, column: 4, scope: !3747)
!3754 = !DILocation(line: 599, column: 11, scope: !3735)
!3755 = !DILocation(line: 599, column: 9, scope: !3735)
!3756 = !DILocation(line: 601, column: 33, scope: !3735)
!3757 = !DILocation(line: 601, column: 40, scope: !3735)
!3758 = !DILocation(line: 601, column: 20, scope: !3735)
!3759 = !DILocation(line: 601, column: 5, scope: !3735)
!3760 = !DILocation(line: 601, column: 51, scope: !3735)
!3761 = !DILocation(line: 602, column: 5, scope: !3735)
!3762 = !DILocation(line: 602, column: 12, scope: !3735)
!3763 = !DILocation(line: 600, column: 10, scope: !3735)
!3764 = !DILocation(line: 600, column: 3, scope: !3735)
!3765 = !DILocation(line: 603, column: 2, scope: !3736)
!3766 = !DILocation(line: 604, column: 19, scope: !3728)
!3767 = !DILocation(line: 604, column: 25, scope: !3728)
!3768 = !DILocation(line: 604, column: 9, scope: !3728)
!3769 = !DILocation(line: 604, column: 2, scope: !3728)
!3770 = !DILocation(line: 605, column: 1, scope: !3728)
!3771 = distinct !DISubprogram(name: "fsnotify_queue_overflow", scope: !182, file: !182, line: 633, type: !3446, scopeLine: 634, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3772)
!3772 = !{!3773}
!3773 = !DILocalVariable(name: "group", arg: 1, scope: !3771, file: !182, line: 633, type: !193)
!3774 = !DILocation(line: 633, column: 67, scope: !3771)
!3775 = !DILocation(line: 635, column: 21, scope: !3771)
!3776 = !DILocation(line: 635, column: 28, scope: !3771)
!3777 = !DILocation(line: 635, column: 35, scope: !3771)
!3778 = !DILocation(line: 635, column: 2, scope: !3771)
!3779 = !DILocation(line: 636, column: 1, scope: !3771)
!3780 = distinct !DISubprogram(name: "fsnotify_init_event", scope: !182, file: !182, line: 823, type: !3781, scopeLine: 824, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3783)
!3781 = !DISubroutineType(types: !3782)
!3782 = !{null, !3456}
!3783 = !{!3784}
!3784 = !DILocalVariable(name: "event", arg: 1, scope: !3780, file: !182, line: 823, type: !3456)
!3785 = !DILocation(line: 823, column: 63, scope: !3780)
!3786 = !DILocation(line: 825, column: 18, scope: !3780)
!3787 = !DILocation(line: 825, column: 25, scope: !3780)
!3788 = !DILocation(line: 825, column: 2, scope: !3780)
!3789 = !DILocation(line: 826, column: 1, scope: !3780)
!3790 = !DISubprogram(name: "strcpy", scope: !3791, file: !3791, line: 63, type: !3792, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3791 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!3792 = !DISubroutineType(types: !3793)
!3793 = !{!347, !347, !35}
!3794 = distinct !DISubprogram(name: "fsnotify_add_event", scope: !182, file: !182, line: 624, type: !3795, scopeLine: 628, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3800)
!3795 = !DISubroutineType(types: !3796)
!3796 = !{!41, !193, !3456, !3797}
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = !DISubroutineType(types: !3799)
!3799 = !{!41, !193, !3456}
!3800 = !{!3801, !3802, !3803}
!3801 = !DILocalVariable(name: "group", arg: 1, scope: !3794, file: !182, line: 624, type: !193)
!3802 = !DILocalVariable(name: "event", arg: 2, scope: !3794, file: !182, line: 625, type: !3456)
!3803 = !DILocalVariable(name: "merge", arg: 3, scope: !3794, file: !182, line: 626, type: !3797)
!3804 = !DILocation(line: 624, column: 61, scope: !3794)
!3805 = !DILocation(line: 625, column: 33, scope: !3794)
!3806 = !DILocation(line: 626, column: 16, scope: !3794)
!3807 = !DILocation(line: 629, column: 31, scope: !3794)
!3808 = !DILocation(line: 629, column: 38, scope: !3794)
!3809 = !DILocation(line: 629, column: 45, scope: !3794)
!3810 = !DILocation(line: 629, column: 9, scope: !3794)
!3811 = !DILocation(line: 629, column: 2, scope: !3794)
!3812 = distinct !DISubprogram(name: "inotify_merge", scope: !3, file: !3, line: 49, type: !3798, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3813)
!3813 = !{!3814, !3815, !3816, !3817, !3818}
!3814 = !DILocalVariable(name: "group", arg: 1, scope: !3812, file: !3, line: 49, type: !193)
!3815 = !DILocalVariable(name: "event", arg: 2, scope: !3812, file: !3, line: 50, type: !3456)
!3816 = !DILocalVariable(name: "list", scope: !3812, file: !3, line: 52, type: !119)
!3817 = !DILocalVariable(name: "last_event", scope: !3812, file: !3, line: 53, type: !3456)
!3818 = !DILocalVariable(name: "__mptr", scope: !3819, file: !3, line: 55, type: !39)
!3819 = distinct !DILexicalBlock(scope: !3812, file: !3, line: 55, column: 15)
!3820 = !DILocation(line: 49, column: 49, scope: !3812)
!3821 = !DILocation(line: 50, column: 28, scope: !3812)
!3822 = !DILocation(line: 52, column: 2, scope: !3812)
!3823 = !DILocation(line: 52, column: 20, scope: !3812)
!3824 = !DILocation(line: 52, column: 28, scope: !3812)
!3825 = !DILocation(line: 52, column: 35, scope: !3812)
!3826 = !DILocation(line: 53, column: 2, scope: !3812)
!3827 = !DILocation(line: 53, column: 25, scope: !3812)
!3828 = !DILocation(line: 55, column: 15, scope: !3819)
!3829 = !DILocation(line: 55, column: 15, scope: !3812)
!3830 = !DILocation(line: 55, column: 13, scope: !3812)
!3831 = !DILocation(line: 56, column: 23, scope: !3812)
!3832 = !DILocation(line: 56, column: 35, scope: !3812)
!3833 = !DILocation(line: 56, column: 9, scope: !3812)
!3834 = !DILocation(line: 57, column: 1, scope: !3812)
!3835 = !DILocation(line: 56, column: 2, scope: !3812)
!3836 = !DISubprogram(name: "fsnotify_destroy_event", scope: !182, file: !182, line: 614, type: !3454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3837 = !DISubprogram(name: "fsnotify_destroy_mark", scope: !182, file: !182, line: 792, type: !3450, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3838 = distinct !DISubprogram(name: "inotify_free_group_priv", scope: !3, file: !3, line: 178, type: !3446, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3839)
!3839 = !{!3840}
!3840 = !DILocalVariable(name: "group", arg: 1, scope: !3838, file: !3, line: 178, type: !193)
!3841 = !DILocation(line: 178, column: 60, scope: !3838)
!3842 = !DILocation(line: 181, column: 16, scope: !3838)
!3843 = !DILocation(line: 181, column: 23, scope: !3838)
!3844 = !DILocation(line: 181, column: 36, scope: !3838)
!3845 = !DILocation(line: 181, column: 55, scope: !3838)
!3846 = !DILocation(line: 181, column: 2, scope: !3838)
!3847 = !DILocation(line: 182, column: 15, scope: !3838)
!3848 = !DILocation(line: 182, column: 22, scope: !3838)
!3849 = !DILocation(line: 182, column: 35, scope: !3838)
!3850 = !DILocation(line: 182, column: 2, scope: !3838)
!3851 = !DILocation(line: 183, column: 6, scope: !3852)
!3852 = distinct !DILexicalBlock(scope: !3838, file: !3, line: 183, column: 6)
!3853 = !DILocation(line: 183, column: 13, scope: !3852)
!3854 = !DILocation(line: 183, column: 26, scope: !3852)
!3855 = !DILocation(line: 183, column: 6, scope: !3838)
!3856 = !DILocation(line: 184, column: 25, scope: !3852)
!3857 = !DILocation(line: 184, column: 32, scope: !3852)
!3858 = !DILocation(line: 184, column: 45, scope: !3852)
!3859 = !DILocation(line: 184, column: 3, scope: !3852)
!3860 = !DILocation(line: 185, column: 1, scope: !3838)
!3861 = distinct !DISubprogram(name: "inotify_freeing_mark", scope: !3, file: !3, line: 138, type: !3450, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3862)
!3862 = !{!3863, !3864}
!3863 = !DILocalVariable(name: "fsn_mark", arg: 1, scope: !3861, file: !3, line: 138, type: !3436)
!3864 = !DILocalVariable(name: "group", arg: 2, scope: !3861, file: !3, line: 138, type: !193)
!3865 = !DILocation(line: 138, column: 56, scope: !3861)
!3866 = !DILocation(line: 138, column: 89, scope: !3861)
!3867 = !DILocation(line: 140, column: 33, scope: !3861)
!3868 = !DILocation(line: 140, column: 43, scope: !3861)
!3869 = !DILocation(line: 140, column: 2, scope: !3861)
!3870 = !DILocation(line: 141, column: 1, scope: !3861)
!3871 = distinct !DISubprogram(name: "inotify_free_event", scope: !3, file: !3, line: 187, type: !3454, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3872)
!3872 = !{!3873, !3874}
!3873 = !DILocalVariable(name: "group", arg: 1, scope: !3871, file: !3, line: 187, type: !193)
!3874 = !DILocalVariable(name: "fsn_event", arg: 2, scope: !3871, file: !3, line: 188, type: !3456)
!3875 = !DILocation(line: 187, column: 55, scope: !3871)
!3876 = !DILocation(line: 188, column: 34, scope: !3871)
!3877 = !DILocation(line: 190, column: 18, scope: !3871)
!3878 = !DILocation(line: 190, column: 8, scope: !3871)
!3879 = !DILocation(line: 190, column: 2, scope: !3871)
!3880 = !DILocation(line: 191, column: 1, scope: !3871)
!3881 = distinct !DISubprogram(name: "inotify_free_mark", scope: !3, file: !3, line: 194, type: !3462, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3882)
!3882 = !{!3883, !3884, !3885}
!3883 = !DILocalVariable(name: "fsn_mark", arg: 1, scope: !3881, file: !3, line: 194, type: !3436)
!3884 = !DILocalVariable(name: "i_mark", scope: !3881, file: !3, line: 196, type: !176)
!3885 = !DILocalVariable(name: "__mptr", scope: !3886, file: !3, line: 198, type: !39)
!3886 = distinct !DILexicalBlock(scope: !3881, file: !3, line: 198, column: 11)
!3887 = !DILocation(line: 194, column: 53, scope: !3881)
!3888 = !DILocation(line: 196, column: 2, scope: !3881)
!3889 = !DILocation(line: 196, column: 29, scope: !3881)
!3890 = !DILocation(line: 198, column: 11, scope: !3886)
!3891 = !DILocation(line: 198, column: 11, scope: !3881)
!3892 = !DILocation(line: 198, column: 9, scope: !3881)
!3893 = !DILocation(line: 200, column: 18, scope: !3881)
!3894 = !DILocation(line: 200, column: 45, scope: !3881)
!3895 = !DILocation(line: 200, column: 2, scope: !3881)
!3896 = !DILocation(line: 201, column: 1, scope: !3881)
!3897 = !DISubprogram(name: "kmalloc_large", scope: !152, file: !152, line: 531, type: !3729, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3898 = distinct !DISubprogram(name: "__kmalloc_index", scope: !152, file: !152, line: 444, type: !3899, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3901)
!3899 = !DISubroutineType(types: !3900)
!3900 = !{!7, !54, !1322}
!3901 = !{!3902, !3903}
!3902 = !DILocalVariable(name: "size", arg: 1, scope: !3898, file: !152, line: 444, type: !54)
!3903 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !3898, file: !152, line: 445, type: !1322)
!3904 = !DILocation(line: 444, column: 60, scope: !3898)
!3905 = !DILocation(line: 445, column: 16, scope: !3898)
!3906 = !DILocation(line: 447, column: 7, scope: !3907)
!3907 = distinct !DILexicalBlock(scope: !3898, file: !152, line: 447, column: 6)
!3908 = !DILocation(line: 447, column: 6, scope: !3898)
!3909 = !DILocation(line: 448, column: 3, scope: !3907)
!3910 = !DILocation(line: 450, column: 6, scope: !3911)
!3911 = distinct !DILexicalBlock(scope: !3898, file: !152, line: 450, column: 6)
!3912 = !DILocation(line: 450, column: 11, scope: !3911)
!3913 = !DILocation(line: 450, column: 6, scope: !3898)
!3914 = !DILocation(line: 451, column: 3, scope: !3911)
!3915 = !DILocation(line: 453, column: 32, scope: !3916)
!3916 = distinct !DILexicalBlock(scope: !3898, file: !152, line: 453, column: 6)
!3917 = !DILocation(line: 453, column: 37, scope: !3916)
!3918 = !DILocation(line: 453, column: 42, scope: !3916)
!3919 = !DILocation(line: 453, column: 45, scope: !3916)
!3920 = !DILocation(line: 453, column: 50, scope: !3916)
!3921 = !DILocation(line: 453, column: 6, scope: !3898)
!3922 = !DILocation(line: 454, column: 3, scope: !3916)
!3923 = !DILocation(line: 455, column: 32, scope: !3924)
!3924 = distinct !DILexicalBlock(scope: !3898, file: !152, line: 455, column: 6)
!3925 = !DILocation(line: 455, column: 37, scope: !3924)
!3926 = !DILocation(line: 455, column: 43, scope: !3924)
!3927 = !DILocation(line: 455, column: 46, scope: !3924)
!3928 = !DILocation(line: 455, column: 51, scope: !3924)
!3929 = !DILocation(line: 455, column: 6, scope: !3898)
!3930 = !DILocation(line: 456, column: 3, scope: !3924)
!3931 = !DILocation(line: 457, column: 6, scope: !3932)
!3932 = distinct !DILexicalBlock(scope: !3898, file: !152, line: 457, column: 6)
!3933 = !DILocation(line: 457, column: 11, scope: !3932)
!3934 = !DILocation(line: 457, column: 6, scope: !3898)
!3935 = !DILocation(line: 457, column: 26, scope: !3932)
!3936 = !DILocation(line: 458, column: 6, scope: !3937)
!3937 = distinct !DILexicalBlock(scope: !3898, file: !152, line: 458, column: 6)
!3938 = !DILocation(line: 458, column: 11, scope: !3937)
!3939 = !DILocation(line: 458, column: 6, scope: !3898)
!3940 = !DILocation(line: 458, column: 26, scope: !3937)
!3941 = !DILocation(line: 459, column: 6, scope: !3942)
!3942 = distinct !DILexicalBlock(scope: !3898, file: !152, line: 459, column: 6)
!3943 = !DILocation(line: 459, column: 11, scope: !3942)
!3944 = !DILocation(line: 459, column: 6, scope: !3898)
!3945 = !DILocation(line: 459, column: 26, scope: !3942)
!3946 = !DILocation(line: 460, column: 6, scope: !3947)
!3947 = distinct !DILexicalBlock(scope: !3898, file: !152, line: 460, column: 6)
!3948 = !DILocation(line: 460, column: 11, scope: !3947)
!3949 = !DILocation(line: 460, column: 6, scope: !3898)
!3950 = !DILocation(line: 460, column: 26, scope: !3947)
!3951 = !DILocation(line: 461, column: 6, scope: !3952)
!3952 = distinct !DILexicalBlock(scope: !3898, file: !152, line: 461, column: 6)
!3953 = !DILocation(line: 461, column: 11, scope: !3952)
!3954 = !DILocation(line: 461, column: 6, scope: !3898)
!3955 = !DILocation(line: 461, column: 26, scope: !3952)
!3956 = !DILocation(line: 462, column: 6, scope: !3957)
!3957 = distinct !DILexicalBlock(scope: !3898, file: !152, line: 462, column: 6)
!3958 = !DILocation(line: 462, column: 11, scope: !3957)
!3959 = !DILocation(line: 462, column: 6, scope: !3898)
!3960 = !DILocation(line: 462, column: 26, scope: !3957)
!3961 = !DILocation(line: 463, column: 6, scope: !3962)
!3962 = distinct !DILexicalBlock(scope: !3898, file: !152, line: 463, column: 6)
!3963 = !DILocation(line: 463, column: 11, scope: !3962)
!3964 = !DILocation(line: 463, column: 6, scope: !3898)
!3965 = !DILocation(line: 463, column: 26, scope: !3962)
!3966 = !DILocation(line: 464, column: 6, scope: !3967)
!3967 = distinct !DILexicalBlock(scope: !3898, file: !152, line: 464, column: 6)
!3968 = !DILocation(line: 464, column: 11, scope: !3967)
!3969 = !DILocation(line: 464, column: 6, scope: !3898)
!3970 = !DILocation(line: 464, column: 26, scope: !3967)
!3971 = !DILocation(line: 465, column: 6, scope: !3972)
!3972 = distinct !DILexicalBlock(scope: !3898, file: !152, line: 465, column: 6)
!3973 = !DILocation(line: 465, column: 11, scope: !3972)
!3974 = !DILocation(line: 465, column: 6, scope: !3898)
!3975 = !DILocation(line: 465, column: 26, scope: !3972)
!3976 = !DILocation(line: 466, column: 6, scope: !3977)
!3977 = distinct !DILexicalBlock(scope: !3898, file: !152, line: 466, column: 6)
!3978 = !DILocation(line: 466, column: 11, scope: !3977)
!3979 = !DILocation(line: 466, column: 6, scope: !3898)
!3980 = !DILocation(line: 466, column: 26, scope: !3977)
!3981 = !DILocation(line: 467, column: 6, scope: !3982)
!3982 = distinct !DILexicalBlock(scope: !3898, file: !152, line: 467, column: 6)
!3983 = !DILocation(line: 467, column: 11, scope: !3982)
!3984 = !DILocation(line: 467, column: 6, scope: !3898)
!3985 = !DILocation(line: 467, column: 26, scope: !3982)
!3986 = !DILocation(line: 468, column: 6, scope: !3987)
!3987 = distinct !DILexicalBlock(scope: !3898, file: !152, line: 468, column: 6)
!3988 = !DILocation(line: 468, column: 11, scope: !3987)
!3989 = !DILocation(line: 468, column: 6, scope: !3898)
!3990 = !DILocation(line: 468, column: 26, scope: !3987)
!3991 = !DILocation(line: 469, column: 6, scope: !3992)
!3992 = distinct !DILexicalBlock(scope: !3898, file: !152, line: 469, column: 6)
!3993 = !DILocation(line: 469, column: 11, scope: !3992)
!3994 = !DILocation(line: 469, column: 6, scope: !3898)
!3995 = !DILocation(line: 469, column: 26, scope: !3992)
!3996 = !DILocation(line: 470, column: 6, scope: !3997)
!3997 = distinct !DILexicalBlock(scope: !3898, file: !152, line: 470, column: 6)
!3998 = !DILocation(line: 470, column: 11, scope: !3997)
!3999 = !DILocation(line: 470, column: 6, scope: !3898)
!4000 = !DILocation(line: 470, column: 26, scope: !3997)
!4001 = !DILocation(line: 471, column: 6, scope: !4002)
!4002 = distinct !DILexicalBlock(scope: !3898, file: !152, line: 471, column: 6)
!4003 = !DILocation(line: 471, column: 11, scope: !4002)
!4004 = !DILocation(line: 471, column: 6, scope: !3898)
!4005 = !DILocation(line: 471, column: 26, scope: !4002)
!4006 = !DILocation(line: 472, column: 6, scope: !4007)
!4007 = distinct !DILexicalBlock(scope: !3898, file: !152, line: 472, column: 6)
!4008 = !DILocation(line: 472, column: 11, scope: !4007)
!4009 = !DILocation(line: 472, column: 6, scope: !3898)
!4010 = !DILocation(line: 472, column: 26, scope: !4007)
!4011 = !DILocation(line: 473, column: 6, scope: !4012)
!4012 = distinct !DILexicalBlock(scope: !3898, file: !152, line: 473, column: 6)
!4013 = !DILocation(line: 473, column: 11, scope: !4012)
!4014 = !DILocation(line: 473, column: 6, scope: !3898)
!4015 = !DILocation(line: 473, column: 26, scope: !4012)
!4016 = !DILocation(line: 474, column: 6, scope: !4017)
!4017 = distinct !DILexicalBlock(scope: !3898, file: !152, line: 474, column: 6)
!4018 = !DILocation(line: 474, column: 11, scope: !4017)
!4019 = !DILocation(line: 474, column: 6, scope: !3898)
!4020 = !DILocation(line: 474, column: 27, scope: !4017)
!4021 = !DILocation(line: 475, column: 6, scope: !4022)
!4022 = distinct !DILexicalBlock(scope: !3898, file: !152, line: 475, column: 6)
!4023 = !DILocation(line: 475, column: 11, scope: !4022)
!4024 = !DILocation(line: 475, column: 6, scope: !3898)
!4025 = !DILocation(line: 475, column: 32, scope: !4022)
!4026 = !DILocation(line: 477, column: 50, scope: !4027)
!4027 = distinct !DILexicalBlock(scope: !3898, file: !152, line: 477, column: 6)
!4028 = !{i8 0, i8 2}
!4029 = !DILocation(line: 477, column: 6, scope: !3898)
!4030 = !DILocation(line: 478, column: 3, scope: !4027)
!4031 = !DILocation(line: 478, column: 3, scope: !4032)
!4032 = distinct !DILexicalBlock(scope: !4033, file: !152, line: 478, column: 3)
!4033 = distinct !DILexicalBlock(scope: !4027, file: !152, line: 478, column: 3)
!4034 = !{i32 -2141716550}
!4035 = !DILocation(line: 478, column: 3, scope: !4033)
!4036 = !DILocation(line: 480, column: 3, scope: !4027)
!4037 = !DILocation(line: 480, column: 3, scope: !4038)
!4038 = distinct !DILexicalBlock(scope: !4027, file: !152, line: 480, column: 3)
!4039 = !DILocation(line: 480, column: 3, scope: !4040)
!4040 = distinct !DILexicalBlock(scope: !4038, file: !152, line: 480, column: 3)
!4041 = !DILocation(line: 480, column: 3, scope: !4042)
!4042 = distinct !DILexicalBlock(scope: !4038, file: !152, line: 480, column: 3)
!4043 = !{i64 2153250949, i64 2153250978, i64 2153251024, i64 2153251082, i64 2153251136, i64 2153251190, i64 2153251245, i64 2153251276}
!4044 = !DILocation(line: 483, column: 2, scope: !3898)
!4045 = !DILocation(line: 484, column: 1, scope: !3898)
!4046 = !DISubprogram(name: "kmalloc_trace", scope: !152, file: !152, line: 525, type: !4047, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4047 = !DISubroutineType(types: !4048)
!4048 = !{!39, !4049, !577, !54}
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !4051, line: 325, flags: DIFlagFwdDecl)
!4051 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!4052 = distinct !DISubprogram(name: "kmalloc_type", scope: !152, file: !152, line: 401, type: !4053, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4055)
!4053 = !DISubroutineType(types: !4054)
!4054 = !{!151, !577, !58}
!4055 = !{!4056, !4057}
!4056 = !DILocalVariable(name: "flags", arg: 1, scope: !4052, file: !152, line: 401, type: !577)
!4057 = !DILocalVariable(name: "caller", arg: 2, scope: !4052, file: !152, line: 401, type: !58)
!4058 = !DILocation(line: 401, column: 67, scope: !4052)
!4059 = !DILocation(line: 401, column: 88, scope: !4052)
!4060 = !DILocation(line: 407, column: 6, scope: !4061)
!4061 = distinct !DILexicalBlock(scope: !4052, file: !152, line: 407, column: 6)
!4062 = !DILocation(line: 407, column: 6, scope: !4052)
!4063 = !DILocation(line: 413, column: 3, scope: !4061)
!4064 = !DILocation(line: 423, column: 38, scope: !4065)
!4065 = distinct !DILexicalBlock(scope: !4052, file: !152, line: 423, column: 6)
!4066 = !DILocation(line: 423, column: 44, scope: !4065)
!4067 = !DILocation(line: 423, column: 6, scope: !4052)
!4068 = !DILocation(line: 424, column: 3, scope: !4065)
!4069 = !DILocation(line: 426, column: 3, scope: !4070)
!4070 = distinct !DILexicalBlock(scope: !4052, file: !152, line: 425, column: 6)
!4071 = !DILocation(line: 429, column: 1, scope: !4052)
!4072 = !DISubprogram(name: "__kmalloc", scope: !152, file: !152, line: 488, type: !3729, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4073 = !DISubprogram(name: "__compiletime_assert_245", scope: !152, file: !152, line: 478, type: !2504, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!4074 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !4075, file: !4075, line: 35, type: !4076, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4078)
!4075 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!4076 = !DISubroutineType(types: !4077)
!4077 = !{null, !119}
!4078 = !{!4079}
!4079 = !DILocalVariable(name: "list", arg: 1, scope: !4074, file: !4075, line: 35, type: !119)
!4080 = !DILocation(line: 35, column: 53, scope: !4074)
!4081 = !DILocation(line: 37, column: 2, scope: !4074)
!4082 = !DILocation(line: 37, column: 2, scope: !4083)
!4083 = distinct !DILexicalBlock(scope: !4074, file: !4075, line: 37, column: 2)
!4084 = !DILocation(line: 37, column: 2, scope: !4085)
!4085 = distinct !DILexicalBlock(scope: !4083, file: !4075, line: 37, column: 2)
!4086 = !DILocation(line: 37, column: 2, scope: !4087)
!4087 = distinct !DILexicalBlock(scope: !4083, file: !4075, line: 37, column: 2)
!4088 = !DILocation(line: 38, column: 2, scope: !4074)
!4089 = !DILocation(line: 38, column: 2, scope: !4090)
!4090 = distinct !DILexicalBlock(scope: !4074, file: !4075, line: 38, column: 2)
!4091 = !DILocation(line: 38, column: 2, scope: !4092)
!4092 = distinct !DILexicalBlock(scope: !4090, file: !4075, line: 38, column: 2)
!4093 = !DILocation(line: 38, column: 2, scope: !4094)
!4094 = distinct !DILexicalBlock(scope: !4090, file: !4075, line: 38, column: 2)
!4095 = !DILocation(line: 39, column: 1, scope: !4074)
!4096 = !DISubprogram(name: "fsnotify_insert_event", scope: !182, file: !182, line: 617, type: !4097, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4097 = !DISubroutineType(types: !4098)
!4098 = !{!41, !193, !3456, !3797, !3453}
!4099 = distinct !DISubprogram(name: "event_compare", scope: !3, file: !3, line: 32, type: !4100, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4102)
!4100 = !DISubroutineType(types: !4101)
!4101 = !{!1322, !3456, !3456}
!4102 = !{!4103, !4104, !4105, !4106}
!4103 = !DILocalVariable(name: "old_fsn", arg: 1, scope: !4099, file: !3, line: 32, type: !3456)
!4104 = !DILocalVariable(name: "new_fsn", arg: 2, scope: !4099, file: !3, line: 33, type: !3456)
!4105 = !DILocalVariable(name: "old", scope: !4099, file: !3, line: 35, type: !3517)
!4106 = !DILocalVariable(name: "new", scope: !4099, file: !3, line: 35, type: !3517)
!4107 = !DILocation(line: 32, column: 50, scope: !4099)
!4108 = !DILocation(line: 33, column: 29, scope: !4099)
!4109 = !DILocation(line: 35, column: 2, scope: !4099)
!4110 = !DILocation(line: 35, column: 29, scope: !4099)
!4111 = !DILocation(line: 35, column: 35, scope: !4099)
!4112 = !DILocation(line: 37, column: 18, scope: !4099)
!4113 = !DILocation(line: 37, column: 8, scope: !4099)
!4114 = !DILocation(line: 37, column: 6, scope: !4099)
!4115 = !DILocation(line: 38, column: 18, scope: !4099)
!4116 = !DILocation(line: 38, column: 8, scope: !4099)
!4117 = !DILocation(line: 38, column: 6, scope: !4099)
!4118 = !DILocation(line: 39, column: 6, scope: !4119)
!4119 = distinct !DILexicalBlock(scope: !4099, file: !3, line: 39, column: 6)
!4120 = !DILocation(line: 39, column: 11, scope: !4119)
!4121 = !DILocation(line: 39, column: 16, scope: !4119)
!4122 = !DILocation(line: 39, column: 6, scope: !4099)
!4123 = !DILocation(line: 40, column: 3, scope: !4119)
!4124 = !DILocation(line: 41, column: 7, scope: !4125)
!4125 = distinct !DILexicalBlock(scope: !4099, file: !3, line: 41, column: 6)
!4126 = !DILocation(line: 41, column: 12, scope: !4125)
!4127 = !DILocation(line: 41, column: 20, scope: !4125)
!4128 = !DILocation(line: 41, column: 25, scope: !4125)
!4129 = !DILocation(line: 41, column: 17, scope: !4125)
!4130 = !DILocation(line: 41, column: 31, scope: !4125)
!4131 = !DILocation(line: 42, column: 7, scope: !4125)
!4132 = !DILocation(line: 42, column: 12, scope: !4125)
!4133 = !DILocation(line: 42, column: 18, scope: !4125)
!4134 = !DILocation(line: 42, column: 23, scope: !4125)
!4135 = !DILocation(line: 42, column: 15, scope: !4125)
!4136 = !DILocation(line: 42, column: 27, scope: !4125)
!4137 = !DILocation(line: 43, column: 7, scope: !4125)
!4138 = !DILocation(line: 43, column: 12, scope: !4125)
!4139 = !DILocation(line: 43, column: 24, scope: !4125)
!4140 = !DILocation(line: 43, column: 29, scope: !4125)
!4141 = !DILocation(line: 43, column: 21, scope: !4125)
!4142 = !DILocation(line: 43, column: 39, scope: !4125)
!4143 = !DILocation(line: 44, column: 8, scope: !4125)
!4144 = !DILocation(line: 44, column: 13, scope: !4125)
!4145 = !DILocation(line: 44, column: 22, scope: !4125)
!4146 = !DILocation(line: 44, column: 33, scope: !4125)
!4147 = !DILocation(line: 44, column: 38, scope: !4125)
!4148 = !DILocation(line: 44, column: 44, scope: !4125)
!4149 = !DILocation(line: 44, column: 49, scope: !4125)
!4150 = !DILocation(line: 44, column: 26, scope: !4125)
!4151 = !DILocation(line: 41, column: 6, scope: !4099)
!4152 = !DILocation(line: 45, column: 3, scope: !4125)
!4153 = !DILocation(line: 46, column: 2, scope: !4099)
!4154 = !DILocation(line: 47, column: 1, scope: !4099)
!4155 = distinct !DISubprogram(name: "INOTIFY_E", scope: !178, file: !178, line: 20, type: !4156, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4158)
!4156 = !DISubroutineType(types: !4157)
!4157 = !{!3517, !3456}
!4158 = !{!4159, !4160}
!4159 = !DILocalVariable(name: "fse", arg: 1, scope: !4155, file: !178, line: 20, type: !3456)
!4160 = !DILocalVariable(name: "__mptr", scope: !4161, file: !178, line: 22, type: !39)
!4161 = distinct !DILexicalBlock(scope: !4155, file: !178, line: 22, column: 9)
!4162 = !DILocation(line: 20, column: 75, scope: !4155)
!4163 = !DILocation(line: 22, column: 9, scope: !4161)
!4164 = !DILocation(line: 22, column: 9, scope: !4155)
!4165 = !DILocation(line: 22, column: 2, scope: !4155)
!4166 = !DISubprogram(name: "strcmp", scope: !3791, file: !3791, line: 88, type: !4167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4167 = !DISubroutineType(types: !4168)
!4168 = !{!41, !35, !35}
!4169 = !DISubprogram(name: "idr_for_each", scope: !3499, file: !3499, line: 120, type: !4170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4170 = !DISubroutineType(types: !4171)
!4171 = !{!41, !4172, !4174, !39}
!4172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4173, size: 64)
!4173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3498)
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3535, size: 64)
!4175 = !DILocation(line: 150, column: 29, scope: !3534)
!4176 = !DILocation(line: 150, column: 39, scope: !3534)
!4177 = !DILocation(line: 150, column: 48, scope: !3534)
!4178 = !DILocation(line: 152, column: 2, scope: !3534)
!4179 = !DILocation(line: 152, column: 24, scope: !3534)
!4180 = !DILocation(line: 153, column: 2, scope: !3534)
!4181 = !DILocation(line: 153, column: 29, scope: !3534)
!4182 = !DILocation(line: 156, column: 6, scope: !4183)
!4183 = distinct !DILexicalBlock(scope: !3534, file: !3, line: 156, column: 6)
!4184 = !DILocation(line: 156, column: 6, scope: !3534)
!4185 = !DILocation(line: 157, column: 3, scope: !4183)
!4186 = !DILocation(line: 159, column: 9, scope: !3534)
!4187 = !DILocation(line: 160, column: 13, scope: !3534)
!4188 = !DILocation(line: 160, column: 11, scope: !3534)
!4189 = !DILocation(line: 161, column: 11, scope: !3544)
!4190 = !DILocation(line: 161, column: 11, scope: !3534)
!4191 = !DILocation(line: 161, column: 9, scope: !3534)
!4192 = !DILocation(line: 163, column: 2, scope: !3546)
!4193 = !DILocation(line: 163, column: 2, scope: !3550)
!4194 = !DILocation(line: 163, column: 2, scope: !3549)
!4195 = !DILocation(line: 163, column: 2, scope: !4196)
!4196 = distinct !DILexicalBlock(scope: !3549, file: !3, line: 163, column: 2)
!4197 = !DILocation(line: 163, column: 2, scope: !3548)
!4198 = !DILocation(line: 163, column: 2, scope: !4199)
!4199 = distinct !DILexicalBlock(scope: !3548, file: !3, line: 163, column: 2)
!4200 = !DILocation(line: 163, column: 2, scope: !4201)
!4201 = distinct !DILexicalBlock(scope: !3548, file: !3, line: 163, column: 2)
!4202 = !{i64 2153475734, i64 2153475763, i64 2153475809, i64 2153475867, i64 2153475921, i64 2153475975, i64 2153476030, i64 2153476061, i64 2153476369, i64 2153476375, i64 2153476422, i64 2153476445, i64 2153476471}
!4203 = !DILocation(line: 163, column: 2, scope: !4204)
!4204 = distinct !DILexicalBlock(scope: !3548, file: !3, line: 163, column: 2)
!4205 = !DILocation(line: 163, column: 2, scope: !4206)
!4206 = distinct !DILexicalBlock(scope: !3549, file: !3, line: 163, column: 2)
!4207 = !DILocation(line: 163, column: 2, scope: !3534)
!4208 = !DILocation(line: 172, column: 6, scope: !4209)
!4209 = distinct !DILexicalBlock(scope: !3534, file: !3, line: 172, column: 6)
!4210 = !DILocation(line: 172, column: 6, scope: !3534)
!4211 = !DILocation(line: 173, column: 3, scope: !4212)
!4212 = distinct !DILexicalBlock(scope: !4209, file: !3, line: 173, column: 3)
!4213 = !DILocation(line: 173, column: 3, scope: !4214)
!4214 = distinct !DILexicalBlock(scope: !4212, file: !3, line: 173, column: 3)
!4215 = !DILocation(line: 173, column: 3, scope: !4209)
!4216 = !DILocation(line: 175, column: 2, scope: !3534)
!4217 = !DILocation(line: 176, column: 1, scope: !3534)
!4218 = !DISubprogram(name: "idr_destroy", scope: !3499, file: !3499, line: 125, type: !4219, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4219 = !DISubroutineType(types: !4220)
!4220 = !{null, !4221}
!4221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3498, size: 64)
!4222 = distinct !DISubprogram(name: "dec_inotify_instances", scope: !178, file: !178, line: 55, type: !4223, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4225)
!4223 = !DISubroutineType(types: !4224)
!4224 = !{null, !1536}
!4225 = !{!4226}
!4226 = !DILocalVariable(name: "ucounts", arg: 1, scope: !4222, file: !178, line: 55, type: !1536)
!4227 = !DILocation(line: 55, column: 58, scope: !4222)
!4228 = !DILocation(line: 57, column: 13, scope: !4222)
!4229 = !DILocation(line: 57, column: 2, scope: !4222)
!4230 = !DILocation(line: 58, column: 1, scope: !4222)
!4231 = !DISubprogram(name: "__warn_printk", scope: !4232, file: !4232, line: 93, type: !4233, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4232 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!4233 = !DISubroutineType(types: !4234)
!4234 = !{null, !35, null}
!4235 = !DISubprogram(name: "_printk", scope: !4236, file: !4236, line: 153, type: !4237, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4236 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!4237 = !DISubroutineType(types: !4238)
!4238 = !{!41, !35, null}
!4239 = !DISubprogram(name: "dec_ucount", scope: !162, file: !162, line: 122, type: !4240, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4240 = !DISubroutineType(types: !4241)
!4241 = !{null, !1536, !161}
!4242 = !DISubprogram(name: "inotify_ignored_and_remove_idr", scope: !178, file: !178, line: 44, type: !3450, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4243 = !DISubprogram(name: "kfree", scope: !152, file: !152, line: 227, type: !4244, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4244 = !DISubroutineType(types: !4245)
!4245 = !{null, !206}
!4246 = !DISubprogram(name: "kmem_cache_free", scope: !152, file: !152, line: 503, type: !4247, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4247 = !DISubroutineType(types: !4248)
!4248 = !{null, !4049, !39}
