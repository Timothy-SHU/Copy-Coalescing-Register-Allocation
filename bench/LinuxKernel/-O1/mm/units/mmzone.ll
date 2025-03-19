; ModuleID = 'mm/mmzone.c'
source_filename = "mm/mmzone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nodemask_t = type { [1 x i64] }
%struct.pglist_data = type { [4 x %struct.zone], [2 x %struct.zonelist], i32, i64, i64, i64, i32, %struct.wait_queue_head, %struct.wait_queue_head, [4 x %struct.wait_queue_head], %struct.atomic_t, i64, ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, i8, i64, i64, i64, [56 x i8], %struct.cacheline_padding, %struct.lruvec, i64, [48 x i8], %struct.cacheline_padding, ptr, [41 x %struct.atomic64_t], ptr, [40 x i8] }
%struct.zone = type { [4 x i64], i64, i64, [4 x i64], i32, ptr, ptr, ptr, i32, i32, i64, %struct.atomic64_t, i64, i64, ptr, i32, [28 x i8], %struct.cacheline_padding, [11 x %struct.free_area], i64, %struct.spinlock, [28 x i8], %struct.cacheline_padding, i64, i64, [2 x i64], i64, i64, i32, i32, i32, i8, i8, [2 x i8], %struct.cacheline_padding, [10 x %struct.atomic64_t], [6 x %struct.atomic64_t] }
%struct.atomic64_t = type { i64 }
%struct.free_area = type { [4 x %struct.list_head], i64 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.zonelist = type { [257 x %struct.zoneref] }
%struct.zoneref = type { ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lruvec = type { [5 x %struct.list_head], %struct.spinlock, i64, i64, %struct.atomic64_t, [2 x i64], i64 }
%struct.cacheline_padding = type { [0 x i8] }

@node_data = external dso_local global [0 x ptr], align 8
@node_states = external dso_local global [6 x %struct.nodemask_t], align 16

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @first_online_pgdat() #0 align 16 !dbg !126 {
entry:
  %call = call i32 @__first_node(ptr noundef getelementptr inbounds ([6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 1)) #11, !dbg !3575
  %idxprom = zext i32 %call to i64, !dbg !3575
  %arrayidx = getelementptr [0 x ptr], ptr @node_data, i64 0, i64 %idxprom, !dbg !3575
  %0 = load ptr, ptr %arrayidx, align 8, !dbg !3575
  ret ptr %0, !dbg !3576
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__first_node(ptr noundef %srcp) #1 align 16 !dbg !3577 {
entry:
  %srcp.addr = alloca ptr, align 8
  %__UNIQUE_ID___x83 = alloca i32, align 4
  %__UNIQUE_ID___y84 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %srcp, ptr %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp.addr, metadata !3583, metadata !DIExpression()), !dbg !3587
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x83) #12, !dbg !3588
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x83, metadata !3584, metadata !DIExpression()), !dbg !3588
  store i32 64, ptr %__UNIQUE_ID___x83, align 4, !dbg !3588
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y84) #12, !dbg !3588
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y84, metadata !3586, metadata !DIExpression()), !dbg !3588
  %0 = load ptr, ptr %srcp.addr, align 8, !dbg !3588
  %bits = getelementptr inbounds %struct.nodemask_t, ptr %0, i32 0, i32 0, !dbg !3588
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !3588
  %call = call i64 @find_first_bit(ptr noundef %arraydecay, i64 noundef 64) #11, !dbg !3588
  %conv = trunc i64 %call to i32, !dbg !3588
  store i32 %conv, ptr %__UNIQUE_ID___y84, align 4, !dbg !3588
  %1 = load i32, ptr %__UNIQUE_ID___x83, align 4, !dbg !3588
  %2 = load i32, ptr %__UNIQUE_ID___y84, align 4, !dbg !3588
  %cmp = icmp ult i32 %1, %2, !dbg !3588
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !3588

cond.true:                                        ; preds = %entry
  %3 = load i32, ptr %__UNIQUE_ID___x83, align 4, !dbg !3588
  br label %cond.end, !dbg !3588

cond.false:                                       ; preds = %entry
  %4 = load i32, ptr %__UNIQUE_ID___y84, align 4, !dbg !3588
  br label %cond.end, !dbg !3588

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ %4, %cond.false ], !dbg !3588
  store i32 %cond, ptr %tmp, align 4, !dbg !3588
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y84) #12, !dbg !3589
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x83) #12, !dbg !3589
  %5 = load i32, ptr %tmp, align 4, !dbg !3588
  ret i32 %5, !dbg !3590
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @next_online_pgdat(ptr noundef %pgdat) #0 align 16 !dbg !3591 {
entry:
  %retval = alloca ptr, align 8
  %pgdat.addr = alloca ptr, align 8
  %nid = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pgdat, ptr %pgdat.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgdat.addr, metadata !3595, metadata !DIExpression()), !dbg !3597
  call void @llvm.lifetime.start.p0(i64 4, ptr %nid) #12, !dbg !3598
  call void @llvm.dbg.declare(metadata ptr %nid, metadata !3596, metadata !DIExpression()), !dbg !3599
  %0 = load ptr, ptr %pgdat.addr, align 8, !dbg !3600
  %node_id = getelementptr inbounds %struct.pglist_data, ptr %0, i32 0, i32 6, !dbg !3601
  %1 = load i32, ptr %node_id, align 64, !dbg !3601
  %call = call i32 @next_online_node(i32 noundef %1) #11, !dbg !3602
  store i32 %call, ptr %nid, align 4, !dbg !3599
  %2 = load i32, ptr %nid, align 4, !dbg !3603
  %cmp = icmp eq i32 %2, 64, !dbg !3605
  br i1 %cmp, label %if.then, label %if.end, !dbg !3606

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !3607
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3607

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %nid, align 4, !dbg !3608
  %idxprom = sext i32 %3 to i64, !dbg !3608
  %arrayidx = getelementptr [0 x ptr], ptr @node_data, i64 0, i64 %idxprom, !dbg !3608
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !3608
  store ptr %4, ptr %retval, align 8, !dbg !3609
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3609

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %nid) #12, !dbg !3610
  %5 = load ptr, ptr %retval, align 8, !dbg !3610
  ret ptr %5, !dbg !3610
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @next_online_node(i32 noundef %nid) #1 align 16 !dbg !3611 {
entry:
  %nid.addr = alloca i32, align 4
  store i32 %nid, ptr %nid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nid.addr, metadata !3615, metadata !DIExpression()), !dbg !3616
  %0 = load i32, ptr %nid.addr, align 4, !dbg !3617
  %call = call i32 @__next_node(i32 noundef %0, ptr noundef getelementptr inbounds ([6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 1)) #11, !dbg !3617
  ret i32 %call, !dbg !3618
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @next_zone(ptr noundef %zone) #0 align 16 !dbg !3619 {
entry:
  %zone.addr = alloca ptr, align 8
  %pgdat = alloca ptr, align 8
  store ptr %zone, ptr %zone.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %zone.addr, metadata !3623, metadata !DIExpression()), !dbg !3627
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgdat) #12, !dbg !3628
  call void @llvm.dbg.declare(metadata ptr %pgdat, metadata !3624, metadata !DIExpression()), !dbg !3629
  %0 = load ptr, ptr %zone.addr, align 8, !dbg !3630
  %zone_pgdat = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 5, !dbg !3631
  %1 = load ptr, ptr %zone_pgdat, align 8, !dbg !3631
  store ptr %1, ptr %pgdat, align 8, !dbg !3629
  %2 = load ptr, ptr %zone.addr, align 8, !dbg !3632
  %3 = load ptr, ptr %pgdat, align 8, !dbg !3634
  %node_zones = getelementptr inbounds %struct.pglist_data, ptr %3, i32 0, i32 0, !dbg !3635
  %arraydecay = getelementptr inbounds [4 x %struct.zone], ptr %node_zones, i64 0, i64 0, !dbg !3634
  %add.ptr = getelementptr %struct.zone, ptr %arraydecay, i64 4, !dbg !3636
  %add.ptr1 = getelementptr %struct.zone, ptr %add.ptr, i64 -1, !dbg !3637
  %cmp = icmp ult ptr %2, %add.ptr1, !dbg !3638
  br i1 %cmp, label %if.then, label %if.else, !dbg !3639

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %zone.addr, align 8, !dbg !3640
  %incdec.ptr = getelementptr %struct.zone, ptr %4, i32 1, !dbg !3640
  store ptr %incdec.ptr, ptr %zone.addr, align 8, !dbg !3640
  br label %if.end6, !dbg !3641

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %pgdat, align 8, !dbg !3642
  %call = call ptr @next_online_pgdat(ptr noundef %5) #11, !dbg !3644
  store ptr %call, ptr %pgdat, align 8, !dbg !3645
  %6 = load ptr, ptr %pgdat, align 8, !dbg !3646
  %tobool = icmp ne ptr %6, null, !dbg !3646
  br i1 %tobool, label %if.then2, label %if.else5, !dbg !3648

if.then2:                                         ; preds = %if.else
  %7 = load ptr, ptr %pgdat, align 8, !dbg !3649
  %node_zones3 = getelementptr inbounds %struct.pglist_data, ptr %7, i32 0, i32 0, !dbg !3650
  %arraydecay4 = getelementptr inbounds [4 x %struct.zone], ptr %node_zones3, i64 0, i64 0, !dbg !3649
  store ptr %arraydecay4, ptr %zone.addr, align 8, !dbg !3651
  br label %if.end, !dbg !3652

if.else5:                                         ; preds = %if.else
  store ptr null, ptr %zone.addr, align 8, !dbg !3653
  br label %if.end

if.end:                                           ; preds = %if.else5, %if.then2
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  %8 = load ptr, ptr %zone.addr, align 8, !dbg !3654
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgdat) #12, !dbg !3655
  ret ptr %8, !dbg !3656
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @__next_zones_zonelist(ptr noundef %z, i32 noundef %highest_zoneidx, ptr noundef %nodes) #0 align 16 !dbg !3657 {
entry:
  %z.addr = alloca ptr, align 8
  %highest_zoneidx.addr = alloca i32, align 4
  %nodes.addr = alloca ptr, align 8
  store ptr %z, ptr %z.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %z.addr, metadata !3663, metadata !DIExpression()), !dbg !3666
  store i32 %highest_zoneidx, ptr %highest_zoneidx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %highest_zoneidx.addr, metadata !3664, metadata !DIExpression()), !dbg !3667
  store ptr %nodes, ptr %nodes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nodes.addr, metadata !3665, metadata !DIExpression()), !dbg !3668
  %0 = load ptr, ptr %nodes.addr, align 8, !dbg !3669
  %cmp = icmp eq ptr %0, null, !dbg !3669
  %lnot = xor i1 %cmp, true, !dbg !3669
  %lnot1 = xor i1 %lnot, true, !dbg !3669
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3669
  %conv = sext i32 %lnot.ext to i64, !dbg !3669
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3669
  %tobool = icmp ne i64 %expval, 0, !dbg !3669
  br i1 %tobool, label %if.then, label %if.else, !dbg !3671

if.then:                                          ; preds = %entry
  br label %while.cond, !dbg !3672

while.cond:                                       ; preds = %while.body, %if.then
  %1 = load ptr, ptr %z.addr, align 8, !dbg !3673
  %call = call i32 @zonelist_zone_idx(ptr noundef %1) #11, !dbg !3674
  %2 = load i32, ptr %highest_zoneidx.addr, align 4, !dbg !3675
  %cmp2 = icmp ugt i32 %call, %2, !dbg !3676
  br i1 %cmp2, label %while.body, label %while.end, !dbg !3672

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %z.addr, align 8, !dbg !3677
  %incdec.ptr = getelementptr %struct.zoneref, ptr %3, i32 1, !dbg !3677
  store ptr %incdec.ptr, ptr %z.addr, align 8, !dbg !3677
  br label %while.cond, !dbg !3672, !llvm.loop !3678

while.end:                                        ; preds = %while.cond
  br label %if.end, !dbg !3672

if.else:                                          ; preds = %entry
  br label %while.cond4, !dbg !3681

while.cond4:                                      ; preds = %while.body13, %if.else
  %4 = load ptr, ptr %z.addr, align 8, !dbg !3682
  %call5 = call i32 @zonelist_zone_idx(ptr noundef %4) #11, !dbg !3683
  %5 = load i32, ptr %highest_zoneidx.addr, align 4, !dbg !3684
  %cmp6 = icmp ugt i32 %call5, %5, !dbg !3685
  br i1 %cmp6, label %lor.end, label %lor.rhs, !dbg !3686

lor.rhs:                                          ; preds = %while.cond4
  %6 = load ptr, ptr %z.addr, align 8, !dbg !3687
  %zone = getelementptr inbounds %struct.zoneref, ptr %6, i32 0, i32 0, !dbg !3688
  %7 = load ptr, ptr %zone, align 8, !dbg !3688
  %tobool8 = icmp ne ptr %7, null, !dbg !3687
  br i1 %tobool8, label %land.rhs, label %land.end, !dbg !3689

land.rhs:                                         ; preds = %lor.rhs
  %8 = load ptr, ptr %z.addr, align 8, !dbg !3690
  %9 = load ptr, ptr %nodes.addr, align 8, !dbg !3691
  %call9 = call i32 @zref_in_nodemask(ptr noundef %8, ptr noundef %9) #11, !dbg !3692
  %tobool10 = icmp ne i32 %call9, 0, !dbg !3693
  %lnot11 = xor i1 %tobool10, true, !dbg !3693
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %10 = phi i1 [ false, %lor.rhs ], [ %lnot11, %land.rhs ], !dbg !3694
  br label %lor.end, !dbg !3686

lor.end:                                          ; preds = %land.end, %while.cond4
  %11 = phi i1 [ true, %while.cond4 ], [ %10, %land.end ]
  br i1 %11, label %while.body13, label %while.end15, !dbg !3681

while.body13:                                     ; preds = %lor.end
  %12 = load ptr, ptr %z.addr, align 8, !dbg !3695
  %incdec.ptr14 = getelementptr %struct.zoneref, ptr %12, i32 1, !dbg !3695
  store ptr %incdec.ptr14, ptr %z.addr, align 8, !dbg !3695
  br label %while.cond4, !dbg !3681, !llvm.loop !3696

while.end15:                                      ; preds = %lor.end
  br label %if.end

if.end:                                           ; preds = %while.end15, %while.end
  %13 = load ptr, ptr %z.addr, align 8, !dbg !3697
  ret ptr %13, !dbg !3698
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @zonelist_zone_idx(ptr noundef %zoneref) #1 align 16 !dbg !3699 {
entry:
  %zoneref.addr = alloca ptr, align 8
  store ptr %zoneref, ptr %zoneref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %zoneref.addr, metadata !3703, metadata !DIExpression()), !dbg !3704
  %0 = load ptr, ptr %zoneref.addr, align 8, !dbg !3705
  %zone_idx = getelementptr inbounds %struct.zoneref, ptr %0, i32 0, i32 1, !dbg !3706
  %1 = load i32, ptr %zone_idx, align 8, !dbg !3706
  ret i32 %1, !dbg !3707
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @zref_in_nodemask(ptr noundef %zref, ptr noundef %nodes) #1 align 16 !dbg !3708 {
entry:
  %zref.addr = alloca ptr, align 8
  %nodes.addr = alloca ptr, align 8
  store ptr %zref, ptr %zref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %zref.addr, metadata !3712, metadata !DIExpression()), !dbg !3714
  store ptr %nodes, ptr %nodes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nodes.addr, metadata !3713, metadata !DIExpression()), !dbg !3715
  %0 = load ptr, ptr %zref.addr, align 8, !dbg !3716
  %call = call i32 @zonelist_node_idx(ptr noundef %0) #11, !dbg !3716
  %conv = sext i32 %call to i64, !dbg !3716
  %1 = load ptr, ptr %nodes.addr, align 8, !dbg !3716
  %bits = getelementptr inbounds %struct.nodemask_t, ptr %1, i32 0, i32 0, !dbg !3716
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !3716
  %call1 = call zeroext i1 @_test_bit(i64 noundef %conv, ptr noundef %arraydecay) #11, !dbg !3716
  %conv2 = zext i1 %call1 to i32, !dbg !3716
  ret i32 %conv2, !dbg !3717
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @lruvec_init(ptr noundef %lruvec) #0 align 16 !dbg !3718 {
entry:
  %lruvec.addr = alloca ptr, align 8
  %lru = alloca i32, align 4
  %.compoundliteral = alloca %struct.spinlock, align 4
  store ptr %lruvec, ptr %lruvec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lruvec.addr, metadata !3723, metadata !DIExpression()), !dbg !3725
  call void @llvm.lifetime.start.p0(i64 4, ptr %lru) #12, !dbg !3726
  call void @llvm.dbg.declare(metadata ptr %lru, metadata !3724, metadata !DIExpression()), !dbg !3727
  %0 = load ptr, ptr %lruvec.addr, align 8, !dbg !3728
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 136, i1 false), !dbg !3729
  br label %do.body, !dbg !3730

do.body:                                          ; preds = %entry
  %1 = load ptr, ptr %lruvec.addr, align 8, !dbg !3731
  %lru_lock = getelementptr inbounds %struct.lruvec, ptr %1, i32 0, i32 1, !dbg !3731
  %call = call ptr @spinlock_check(ptr noundef %lru_lock) #11, !dbg !3731
  %2 = load ptr, ptr %lruvec.addr, align 8, !dbg !3731
  %lru_lock1 = getelementptr inbounds %struct.lruvec, ptr %2, i32 0, i32 1, !dbg !3731
  %3 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !3731
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %3, i32 0, i32 0, !dbg !3731
  %4 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !3731
  %counter = getelementptr inbounds %struct.atomic_t, ptr %4, i32 0, i32 0, !dbg !3731
  store i32 0, ptr %counter, align 4, !dbg !3731
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %lru_lock1, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !3731
  br label %do.cond, !dbg !3731

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3731

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %lru, align 4, !dbg !3733
  br label %for.cond, !dbg !3733

for.cond:                                         ; preds = %for.inc, %do.end
  %5 = load i32, ptr %lru, align 4, !dbg !3735
  %cmp = icmp ult i32 %5, 5, !dbg !3735
  br i1 %cmp, label %for.body, label %for.end, !dbg !3733

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %lruvec.addr, align 8, !dbg !3737
  %lists = getelementptr inbounds %struct.lruvec, ptr %6, i32 0, i32 0, !dbg !3738
  %7 = load i32, ptr %lru, align 4, !dbg !3739
  %idxprom = zext i32 %7 to i64, !dbg !3737
  %arrayidx = getelementptr [5 x %struct.list_head], ptr %lists, i64 0, i64 %idxprom, !dbg !3737
  call void @INIT_LIST_HEAD(ptr noundef %arrayidx) #11, !dbg !3740
  br label %for.inc, !dbg !3740

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %lru, align 4, !dbg !3735
  %inc = add i32 %8, 1, !dbg !3735
  store i32 %inc, ptr %lru, align 4, !dbg !3735
  br label %for.cond, !dbg !3735, !llvm.loop !3741

for.end:                                          ; preds = %for.cond
  %9 = load ptr, ptr %lruvec.addr, align 8, !dbg !3743
  %lists2 = getelementptr inbounds %struct.lruvec, ptr %9, i32 0, i32 0, !dbg !3744
  %arrayidx3 = getelementptr [5 x %struct.list_head], ptr %lists2, i64 0, i64 4, !dbg !3743
  call void @list_del(ptr noundef %arrayidx3) #11, !dbg !3745
  %10 = load ptr, ptr %lruvec.addr, align 8, !dbg !3746
  call void @lru_gen_init_lruvec(ptr noundef %10) #11, !dbg !3747
  call void @llvm.lifetime.end.p0(i64 4, ptr %lru) #12, !dbg !3748
  ret void, !dbg !3748
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #6 align 16 !dbg !3749 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !3755, metadata !DIExpression()), !dbg !3756
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !3757
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !3758
  ret ptr %1, !dbg !3759
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #1 align 16 !dbg !3760 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !3765, metadata !DIExpression()), !dbg !3766
  br label %do.body, !dbg !3767

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !3768

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !3770

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !3768

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !3772
  %1 = load ptr, ptr %list.addr, align 8, !dbg !3772
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !3772
  store volatile ptr %0, ptr %next, align 8, !dbg !3772
  br label %do.end3, !dbg !3772

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !3768

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !3774

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !3775

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !3777

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !3775

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !3779
  %3 = load ptr, ptr %list.addr, align 8, !dbg !3779
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !3779
  store volatile ptr %2, ptr %prev, align 8, !dbg !3779
  br label %do.end9, !dbg !3779

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !3775

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !3781
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #1 align 16 !dbg !3782 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !3784, metadata !DIExpression()), !dbg !3785
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !3786
  call void @__list_del_entry(ptr noundef %0) #11, !dbg !3787
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !3788
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !3789
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !3790
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !3791
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !3792
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !3793
  ret void, !dbg !3794
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @lru_gen_init_lruvec(ptr noundef %lruvec) #1 align 16 !dbg !3795 {
entry:
  %lruvec.addr = alloca ptr, align 8
  store ptr %lruvec, ptr %lruvec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lruvec.addr, metadata !3797, metadata !DIExpression()), !dbg !3798
  ret void, !dbg !3799
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_first_bit(ptr noundef %addr, i64 noundef %size) #1 align 16 !dbg !3800 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3806, metadata !DIExpression()), !dbg !3811
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3807, metadata !DIExpression()), !dbg !3812
  %0 = load i64, ptr %size.addr, align 8, !dbg !3813
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3813
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !3813

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !3813
  %cmp = icmp ule i64 %2, 64, !dbg !3813
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !3813

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !3813
  %cmp2 = icmp ugt i64 %3, 0, !dbg !3813
  br i1 %cmp2, label %if.then, label %if.end, !dbg !3814

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #12, !dbg !3815
  call void @llvm.dbg.declare(metadata ptr %val, metadata !3808, metadata !DIExpression()), !dbg !3816
  %4 = load ptr, ptr %addr.addr, align 8, !dbg !3817
  %5 = load i64, ptr %4, align 8, !dbg !3818
  %6 = load i64, ptr %size.addr, align 8, !dbg !3819
  %sub = sub i64 %6, 1, !dbg !3819
  %sub3 = sub i64 63, %sub, !dbg !3819
  %shr = lshr i64 -1, %sub3, !dbg !3819
  %and = and i64 -1, %shr, !dbg !3819
  %add = add i64 0, %and, !dbg !3819
  %and4 = and i64 %5, %add, !dbg !3820
  store i64 %and4, ptr %val, align 8, !dbg !3816
  %7 = load i64, ptr %val, align 8, !dbg !3821
  %tobool = icmp ne i64 %7, 0, !dbg !3821
  br i1 %tobool, label %cond.true, label %cond.false6, !dbg !3821

cond.true:                                        ; preds = %if.then
  %8 = load i64, ptr %val, align 8, !dbg !3822
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !3822
  br i1 %9, label %cond.true5, label %cond.false, !dbg !3822

cond.true5:                                       ; preds = %cond.true
  %10 = load i64, ptr %val, align 8, !dbg !3822
  %11 = call i64 @llvm.cttz.i64(i64 %10, i1 true), !dbg !3822
  %cast = trunc i64 %11 to i32, !dbg !3822
  %conv = sext i32 %cast to i64, !dbg !3822
  br label %cond.end, !dbg !3822

cond.false:                                       ; preds = %cond.true
  %12 = load i64, ptr %val, align 8, !dbg !3822
  %call = call i64 @variable__ffs(i64 noundef %12) #11, !dbg !3822
  br label %cond.end, !dbg !3822

cond.end:                                         ; preds = %cond.false, %cond.true5
  %cond = phi i64 [ %conv, %cond.true5 ], [ %call, %cond.false ], !dbg !3822
  br label %cond.end7, !dbg !3821

cond.false6:                                      ; preds = %if.then
  %13 = load i64, ptr %size.addr, align 8, !dbg !3823
  br label %cond.end7, !dbg !3821

cond.end7:                                        ; preds = %cond.false6, %cond.end
  %cond8 = phi i64 [ %cond, %cond.end ], [ %13, %cond.false6 ], !dbg !3821
  store i64 %cond8, ptr %retval, align 8, !dbg !3824
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #12, !dbg !3825
  br label %return

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %14 = load ptr, ptr %addr.addr, align 8, !dbg !3826
  %15 = load i64, ptr %size.addr, align 8, !dbg !3827
  %call9 = call i64 @_find_first_bit(ptr noundef %14, i64 noundef %15) #11, !dbg !3828
  store i64 %call9, ptr %retval, align 8, !dbg !3829
  br label %return, !dbg !3829

return:                                           ; preds = %if.end, %cond.end7
  %16 = load i64, ptr %retval, align 8, !dbg !3830
  ret i64 %16, !dbg !3830
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #6 align 16 !dbg !3831 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !3836, metadata !DIExpression()), !dbg !3837
  %0 = load i64, ptr %word.addr, align 8, !dbg !3838
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #13, !dbg !3839, !srcloc !3840
  store i64 %1, ptr %word.addr, align 8, !dbg !3839
  %2 = load i64, ptr %word.addr, align 8, !dbg !3841
  ret i64 %2, !dbg !3842
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3843 dso_local i64 @_find_first_bit(ptr noundef, i64 noundef) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__next_node(i32 noundef %n, ptr noundef %srcp) #1 align 16 !dbg !3844 {
entry:
  %n.addr = alloca i32, align 4
  %srcp.addr = alloca ptr, align 8
  %__UNIQUE_ID___x85 = alloca i32, align 4
  %__UNIQUE_ID___y86 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !3848, metadata !DIExpression()), !dbg !3853
  store ptr %srcp, ptr %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp.addr, metadata !3849, metadata !DIExpression()), !dbg !3854
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x85) #12, !dbg !3855
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x85, metadata !3850, metadata !DIExpression()), !dbg !3855
  store i32 64, ptr %__UNIQUE_ID___x85, align 4, !dbg !3855
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y86) #12, !dbg !3855
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y86, metadata !3852, metadata !DIExpression()), !dbg !3855
  %0 = load ptr, ptr %srcp.addr, align 8, !dbg !3855
  %bits = getelementptr inbounds %struct.nodemask_t, ptr %0, i32 0, i32 0, !dbg !3855
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !3855
  %1 = load i32, ptr %n.addr, align 4, !dbg !3855
  %add = add i32 %1, 1, !dbg !3855
  %conv = sext i32 %add to i64, !dbg !3855
  %call = call i64 @find_next_bit(ptr noundef %arraydecay, i64 noundef 64, i64 noundef %conv) #11, !dbg !3855
  %conv1 = trunc i64 %call to i32, !dbg !3855
  store i32 %conv1, ptr %__UNIQUE_ID___y86, align 4, !dbg !3855
  %2 = load i32, ptr %__UNIQUE_ID___x85, align 4, !dbg !3855
  %3 = load i32, ptr %__UNIQUE_ID___y86, align 4, !dbg !3855
  %cmp = icmp ult i32 %2, %3, !dbg !3855
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !3855

cond.true:                                        ; preds = %entry
  %4 = load i32, ptr %__UNIQUE_ID___x85, align 4, !dbg !3855
  br label %cond.end, !dbg !3855

cond.false:                                       ; preds = %entry
  %5 = load i32, ptr %__UNIQUE_ID___y86, align 4, !dbg !3855
  br label %cond.end, !dbg !3855

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ %5, %cond.false ], !dbg !3855
  store i32 %cond, ptr %tmp, align 4, !dbg !3855
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y86) #12, !dbg !3856
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x85) #12, !dbg !3856
  %6 = load i32, ptr %tmp, align 4, !dbg !3855
  ret i32 %6, !dbg !3857
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #1 align 16 !dbg !3858 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3862, metadata !DIExpression()), !dbg !3868
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3863, metadata !DIExpression()), !dbg !3869
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !3864, metadata !DIExpression()), !dbg !3870
  %0 = load i64, ptr %size.addr, align 8, !dbg !3871
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3871
  br i1 %1, label %land.lhs.true, label %if.end16, !dbg !3871

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !3871
  %cmp = icmp ule i64 %2, 64, !dbg !3871
  br i1 %cmp, label %land.lhs.true1, label %if.end16, !dbg !3871

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !3871
  %cmp2 = icmp ugt i64 %3, 0, !dbg !3871
  br i1 %cmp2, label %if.then, label %if.end16, !dbg !3872

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #12, !dbg !3873
  call void @llvm.dbg.declare(metadata ptr %val, metadata !3865, metadata !DIExpression()), !dbg !3874
  %4 = load i64, ptr %offset.addr, align 8, !dbg !3875
  %5 = load i64, ptr %size.addr, align 8, !dbg !3875
  %cmp3 = icmp uge i64 %4, %5, !dbg !3875
  %lnot = xor i1 %cmp3, true, !dbg !3875
  %lnot4 = xor i1 %lnot, true, !dbg !3875
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !3875
  %conv = sext i32 %lnot.ext to i64, !dbg !3875
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3875
  %tobool = icmp ne i64 %expval, 0, !dbg !3875
  br i1 %tobool, label %if.then5, label %if.end, !dbg !3877

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !3878
  store i64 %6, ptr %retval, align 8, !dbg !3879
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3879

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !3880
  %8 = load i64, ptr %7, align 8, !dbg !3881
  %9 = load i64, ptr %offset.addr, align 8, !dbg !3882
  %shl = shl i64 1, %9, !dbg !3882
  %sub = sub i64 -1, %shl, !dbg !3882
  %add = add i64 %sub, 1, !dbg !3882
  %10 = load i64, ptr %size.addr, align 8, !dbg !3882
  %sub6 = sub i64 %10, 1, !dbg !3882
  %sub7 = sub i64 63, %sub6, !dbg !3882
  %shr = lshr i64 -1, %sub7, !dbg !3882
  %and = and i64 %add, %shr, !dbg !3882
  %add8 = add i64 0, %and, !dbg !3882
  %and9 = and i64 %8, %add8, !dbg !3883
  store i64 %and9, ptr %val, align 8, !dbg !3884
  %11 = load i64, ptr %val, align 8, !dbg !3885
  %tobool10 = icmp ne i64 %11, 0, !dbg !3885
  br i1 %tobool10, label %cond.true, label %cond.false13, !dbg !3885

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %val, align 8, !dbg !3886
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !3886
  br i1 %13, label %cond.true11, label %cond.false, !dbg !3886

cond.true11:                                      ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !3886
  %15 = call i64 @llvm.cttz.i64(i64 %14, i1 true), !dbg !3886
  %cast = trunc i64 %15 to i32, !dbg !3886
  %conv12 = sext i32 %cast to i64, !dbg !3886
  br label %cond.end, !dbg !3886

cond.false:                                       ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !3886
  %call = call i64 @variable__ffs(i64 noundef %16) #11, !dbg !3886
  br label %cond.end, !dbg !3886

cond.end:                                         ; preds = %cond.false, %cond.true11
  %cond = phi i64 [ %conv12, %cond.true11 ], [ %call, %cond.false ], !dbg !3886
  br label %cond.end14, !dbg !3885

cond.false13:                                     ; preds = %if.end
  %17 = load i64, ptr %size.addr, align 8, !dbg !3887
  br label %cond.end14, !dbg !3885

cond.end14:                                       ; preds = %cond.false13, %cond.end
  %cond15 = phi i64 [ %cond, %cond.end ], [ %17, %cond.false13 ], !dbg !3885
  store i64 %cond15, ptr %retval, align 8, !dbg !3888
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3888

cleanup:                                          ; preds = %cond.end14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #12, !dbg !3889
  br label %return

if.end16:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !3890
  %19 = load i64, ptr %size.addr, align 8, !dbg !3891
  %20 = load i64, ptr %offset.addr, align 8, !dbg !3892
  %call17 = call i64 @_find_next_bit(ptr noundef %18, i64 noundef %19, i64 noundef %20) #11, !dbg !3893
  store i64 %call17, ptr %retval, align 8, !dbg !3894
  br label %return, !dbg !3894

return:                                           ; preds = %if.end16, %cleanup
  %21 = load i64, ptr %retval, align 8, !dbg !3895
  ret i64 %21, !dbg !3895
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3896 dso_local i64 @_find_next_bit(ptr noundef, i64 noundef, i64 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !3897 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3905, metadata !DIExpression()), !dbg !3907
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3906, metadata !DIExpression()), !dbg !3908
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3909
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3910
  %div = udiv i64 %1, 64, !dbg !3910
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !3911
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #11, !dbg !3912
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3913
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !3914
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #11, !dbg !3915
  ret i1 %call, !dbg !3916
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @zonelist_node_idx(ptr noundef %zoneref) #1 align 16 !dbg !3917 {
entry:
  %zoneref.addr = alloca ptr, align 8
  store ptr %zoneref, ptr %zoneref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %zoneref.addr, metadata !3919, metadata !DIExpression()), !dbg !3920
  %0 = load ptr, ptr %zoneref.addr, align 8, !dbg !3921
  %zone = getelementptr inbounds %struct.zoneref, ptr %0, i32 0, i32 0, !dbg !3922
  %1 = load ptr, ptr %zone, align 8, !dbg !3922
  %call = call i32 @zone_to_nid(ptr noundef %1) #11, !dbg !3923
  ret i32 %call, !dbg !3924
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !3925 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3933, metadata !DIExpression()), !dbg !3935
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3934, metadata !DIExpression()), !dbg !3936
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3937
  %1 = load i64, ptr %size.addr, align 8, !dbg !3938
  %conv = trunc i64 %1 to i32, !dbg !3938
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #11, !dbg !3939
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3940
  %3 = load i64, ptr %size.addr, align 8, !dbg !3940
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #11, !dbg !3940
  ret void, !dbg !3941
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !3942 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3944, metadata !DIExpression()), !dbg !3946
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3945, metadata !DIExpression()), !dbg !3947
  %0 = load i64, ptr %nr.addr, align 8, !dbg !3948
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3949
  br i1 %1, label %cond.true, label %cond.false, !dbg !3949

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3950
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !3951
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #11, !dbg !3952
  %conv = zext i1 %call to i32, !dbg !3952
  br label %cond.end, !dbg !3949

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !3953
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !3954
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #11, !dbg !3955
  %conv2 = zext i1 %call1 to i32, !dbg !3955
  br label %cond.end, !dbg !3949

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !3949
  %tobool = icmp ne i32 %cond, 0, !dbg !3949
  ret i1 %tobool, !dbg !3956
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #1 align 16 !dbg !3957 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3962, metadata !DIExpression()), !dbg !3964
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3963, metadata !DIExpression()), !dbg !3965
  ret i1 true, !dbg !3966
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #1 align 16 !dbg !3967 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !3972, metadata !DIExpression()), !dbg !3975
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3973, metadata !DIExpression()), !dbg !3976
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !3974, metadata !DIExpression()), !dbg !3977
  ret void, !dbg !3978
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !3979 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3983, metadata !DIExpression()), !dbg !3985
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3984, metadata !DIExpression()), !dbg !3986
  %0 = load i64, ptr %nr.addr, align 8, !dbg !3987
  %and = and i64 %0, 63, !dbg !3988
  %shl = shl i64 1, %and, !dbg !3989
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !3990
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3991
  %shr = ashr i64 %2, 6, !dbg !3992
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !3990
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !3990
  %and1 = and i64 %shl, %3, !dbg !3993
  %cmp = icmp ne i64 %and1, 0, !dbg !3994
  ret i1 %cmp, !dbg !3995
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !3996 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3998, metadata !DIExpression()), !dbg !4001
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3999, metadata !DIExpression()), !dbg !4002
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #12, !dbg !4003
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !4000, metadata !DIExpression()), !dbg !4004
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4005
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4006
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #12, !dbg !4007, !srcloc !4008
  %3 = icmp ult i8 %2, 2, !dbg !4007
  call void @llvm.assume(i1 %3), !dbg !4007
  store i8 %2, ptr %oldbit, align 1, !dbg !4007
  %4 = load i8, ptr %oldbit, align 1, !dbg !4009, !range !4010, !noundef !649
  %tobool = trunc i8 %4 to i1, !dbg !4009
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #12, !dbg !4011
  ret i1 %tobool, !dbg !4012
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @zone_to_nid(ptr noundef %zone) #1 align 16 !dbg !4013 {
entry:
  %zone.addr = alloca ptr, align 8
  store ptr %zone, ptr %zone.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %zone.addr, metadata !4017, metadata !DIExpression()), !dbg !4018
  %0 = load ptr, ptr %zone.addr, align 8, !dbg !4019
  %node = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 4, !dbg !4020
  %1 = load i32, ptr %node, align 16, !dbg !4020
  ret i32 %1, !dbg !4021
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #1 align 16 !dbg !4022 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !4024, metadata !DIExpression()), !dbg !4025
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !4026
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #11, !dbg !4028
  br i1 %call, label %if.end, label %if.then, !dbg !4029

if.then:                                          ; preds = %entry
  br label %return, !dbg !4030

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !4031
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !4032
  %2 = load ptr, ptr %prev, align 8, !dbg !4032
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !4033
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !4034
  %4 = load ptr, ptr %next, align 8, !dbg !4034
  call void @__list_del(ptr noundef %2, ptr noundef %4) #11, !dbg !4035
  br label %return, !dbg !4036

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !4036
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #1 align 16 !dbg !4037 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !4041, metadata !DIExpression()), !dbg !4042
  ret i1 true, !dbg !4043
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #1 align 16 !dbg !4044 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !4048, metadata !DIExpression()), !dbg !4050
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !4049, metadata !DIExpression()), !dbg !4051
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !4052
  %1 = load ptr, ptr %next.addr, align 8, !dbg !4053
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !4054
  store ptr %0, ptr %prev1, align 8, !dbg !4055
  br label %do.body, !dbg !4056

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !4057

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !4059

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !4057

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !4061
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !4061
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !4061
  store volatile ptr %2, ptr %next4, align 8, !dbg !4061
  br label %do.end5, !dbg !4061

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !4057

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !4063
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { noredzone }
attributes #12 = { nounwind }
attributes #13 = { nounwind memory(read) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!117, !118, !119, !120, !121, !122, !123, !124}
!llvm.ident = !{!125}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF mm/.mmzone.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22mm/mmzone\22 -D KBUILD_BASENAME=\22mmzone\22 -D KBUILD_MODNAME=\22mmzone\22 -D __KBUILD_MODNAME=kmod_mmzone -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o mm/mmzone.ll mm/mmzone.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !104, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "mm/mmzone.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3d7b85d5744b0c4aa2b2b76215c807d0")
!2 = !{!3, !9, !17, !22, !28, !36, !52, !59, !65, !72, !80, !91, !99}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !4, line: 65, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!8 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !10, line: 9, baseType: !5, size: 32, elements: !11)
!10 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!11 = !{!12, !13, !14, !15, !16}
!12 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!13 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!14 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!15 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!16 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !18, line: 2052, baseType: !5, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!19 = !{!20, !21}
!20 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!21 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !23, line: 54, baseType: !5, size: 32, elements: !24)
!23 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!24 = !{!25, !26, !27}
!25 = !DIEnumerator(name: "USRQUOTA", value: 0)
!26 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!27 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !29, line: 68, baseType: !5, size: 32, elements: !30)
!29 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!30 = !{!31, !32, !33, !34, !35}
!31 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!32 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!33 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!34 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!35 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !37, line: 1325, baseType: !5, size: 32, elements: !38)
!37 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!38 = !{!39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51}
!39 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!40 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!41 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!42 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!43 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!44 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!45 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!46 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!47 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!48 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!49 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!50 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!51 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!52 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !53, line: 15, baseType: !5, size: 32, elements: !54)
!53 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!54 = !{!55, !56, !57, !58}
!55 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!56 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!57 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!58 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !60, line: 16, baseType: !5, size: 32, elements: !61)
!60 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!61 = !{!62, !63, !64}
!62 = !DIEnumerator(name: "TT_NONE", value: 0)
!63 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!64 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!65 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !66, line: 51, baseType: !5, size: 32, elements: !67)
!66 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!67 = !{!68, !69, !70, !71}
!68 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!69 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!70 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!71 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "zone_type", file: !73, line: 720, baseType: !5, size: 32, elements: !74)
!73 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e018db7b4c78b2d835997a33e792065c")
!74 = !{!75, !76, !77, !78, !79}
!75 = !DIEnumerator(name: "ZONE_DMA", value: 0)
!76 = !DIEnumerator(name: "ZONE_DMA32", value: 1)
!77 = !DIEnumerator(name: "ZONE_NORMAL", value: 2)
!78 = !DIEnumerator(name: "ZONE_MOVABLE", value: 3)
!79 = !DIEnumerator(name: "__MAX_NR_ZONES", value: 4)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "node_states", file: !81, line: 398, baseType: !5, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!82 = !{!83, !84, !85, !86, !87, !88, !89, !90}
!83 = !DIEnumerator(name: "N_POSSIBLE", value: 0)
!84 = !DIEnumerator(name: "N_ONLINE", value: 1)
!85 = !DIEnumerator(name: "N_NORMAL_MEMORY", value: 2)
!86 = !DIEnumerator(name: "N_HIGH_MEMORY", value: 2)
!87 = !DIEnumerator(name: "N_MEMORY", value: 3)
!88 = !DIEnumerator(name: "N_CPU", value: 4)
!89 = !DIEnumerator(name: "N_GENERIC_INITIATOR", value: 5)
!90 = !DIEnumerator(name: "NR_NODE_STATES", value: 6)
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lru_list", file: !73, line: 265, baseType: !5, size: 32, elements: !92)
!92 = !{!93, !94, !95, !96, !97, !98}
!93 = !DIEnumerator(name: "LRU_INACTIVE_ANON", value: 0)
!94 = !DIEnumerator(name: "LRU_ACTIVE_ANON", value: 1)
!95 = !DIEnumerator(name: "LRU_INACTIVE_FILE", value: 2)
!96 = !DIEnumerator(name: "LRU_ACTIVE_FILE", value: 3)
!97 = !DIEnumerator(name: "LRU_UNEVICTABLE", value: 4)
!98 = !DIEnumerator(name: "NR_LRU_LISTS", value: 5)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !100, line: 10, baseType: !5, size: 32, elements: !101)
!100 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!101 = !{!102, !103}
!102 = !DIEnumerator(name: "false", value: 0)
!103 = !DIEnumerator(name: "true", value: 1)
!104 = !{!105, !5, !106, !107, !108, !109}
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!106 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!107 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !113, line: 190, size: 128, elements: !114)
!113 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!114 = !{!115, !116}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !112, file: !113, line: 191, baseType: !111, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !112, file: !113, line: 191, baseType: !111, size: 64, offset: 64)
!117 = !{i32 7, !"Dwarf Version", i32 5}
!118 = !{i32 2, !"Debug Info Version", i32 3}
!119 = !{i32 1, !"wchar_size", i32 2}
!120 = !{i32 8, !"cf-protection-branch", i32 1}
!121 = !{i32 4, !"function_return_thunk_extern", i32 1}
!122 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!123 = !{i32 1, !"Code Model", i32 2}
!124 = !{i32 1, !"override-stack-alignment", i32 8}
!125 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!126 = distinct !DISubprogram(name: "first_online_pgdat", scope: !1, file: !1, line: 13, type: !127, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!127 = !DISubroutineType(types: !128)
!128 = !{!129}
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pglist_data", file: !73, line: 1266, size: 112128, elements: !131)
!131 = !{!132, !280, !293, !294, !295, !296, !297, !298, !305, !306, !308, !309, !310, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3559, !3560, !3561, !3570, !3572}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "node_zones", scope: !130, file: !73, line: 1272, baseType: !133, size: 38912, align: 512)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 38912, align: 512, elements: !138)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zone", file: !73, line: 815, size: 9728, align: 512, elements: !135)
!135 = !{!136, !140, !141, !142, !145, !146, !147, !204, !220, !221, !222, !223, !233, !234, !235, !239, !240, !248, !257, !258, !259, !260, !261, !262, !266, !267, !268, !269, !270, !271, !274, !275, !276, !278}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_watermark", scope: !134, file: !73, line: 819, baseType: !137, size: 256)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 256, elements: !138)
!138 = !{!139}
!139 = !DISubrange(count: 4)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "watermark_boost", scope: !134, file: !73, line: 820, baseType: !107, size: 64, offset: 256)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "nr_reserved_highatomic", scope: !134, file: !73, line: 822, baseType: !107, size: 64, offset: 320)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "lowmem_reserve", scope: !134, file: !73, line: 833, baseType: !143, size: 256, offset: 384)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 256, elements: !138)
!144 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !134, file: !73, line: 836, baseType: !106, size: 32, offset: 640)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "zone_pgdat", scope: !134, file: !73, line: 838, baseType: !129, size: 64, offset: 704)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "per_cpu_pageset", scope: !134, file: !73, line: 839, baseType: !148, size: 64, offset: 768)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "per_cpu_pages", file: !73, line: 684, size: 2048, align: 512, elements: !150)
!150 = !{!151, !194, !195, !196, !197, !199, !200}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !149, file: !73, line: 685, baseType: !152, size: 32)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !153, line: 29, baseType: !154)
!153 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !153, line: 17, size: 32, elements: !155)
!155 = !{!156}
!156 = !DIDerivedType(tag: DW_TAG_member, scope: !154, file: !153, line: 18, baseType: !157, size: 32)
!157 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !154, file: !153, line: 18, size: 32, elements: !158)
!158 = !{!159}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !157, file: !153, line: 19, baseType: !160, size: 32)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !161, line: 14, size: 32, elements: !162)
!161 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!162 = !{!163}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !160, file: !161, line: 15, baseType: !164, size: 32)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !165, line: 44, baseType: !166)
!165 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !165, line: 14, size: 32, elements: !167)
!167 = !{!168}
!168 = !DIDerivedType(tag: DW_TAG_member, scope: !166, file: !165, line: 15, baseType: !169, size: 32)
!169 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !166, file: !165, line: 15, size: 32, elements: !170)
!170 = !{!171, !176, !186}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !169, file: !165, line: 16, baseType: !172, size: 32)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !113, line: 174, baseType: !173)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !113, line: 172, size: 32, elements: !174)
!174 = !{!175}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !173, file: !113, line: 173, baseType: !106, size: 32)
!176 = !DIDerivedType(tag: DW_TAG_member, scope: !169, file: !165, line: 24, baseType: !177, size: 16)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !169, file: !165, line: 24, size: 16, elements: !178)
!178 = !{!179, !185}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !177, file: !165, line: 25, baseType: !180, size: 8)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !181, line: 17, baseType: !182)
!181 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !183, line: 21, baseType: !184)
!183 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!184 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !177, file: !165, line: 26, baseType: !180, size: 8, offset: 8)
!186 = !DIDerivedType(tag: DW_TAG_member, scope: !169, file: !165, line: 28, baseType: !187, size: 32)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !169, file: !165, line: 28, size: 32, elements: !188)
!188 = !{!189, !193}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !187, file: !165, line: 29, baseType: !190, size: 16)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !181, line: 19, baseType: !191)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !183, line: 24, baseType: !192)
!192 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !187, file: !165, line: 30, baseType: !190, size: 16, offset: 16)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !149, file: !73, line: 686, baseType: !106, size: 32, offset: 32)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !149, file: !73, line: 687, baseType: !106, size: 32, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !149, file: !73, line: 688, baseType: !106, size: 32, offset: 96)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "free_factor", scope: !149, file: !73, line: 689, baseType: !198, size: 16, offset: 128)
!198 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "expire", scope: !149, file: !73, line: 691, baseType: !198, size: 16, offset: 144)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "lists", scope: !149, file: !73, line: 695, baseType: !201, size: 1536, offset: 192)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 1536, elements: !202)
!202 = !{!203}
!203 = !DISubrange(count: 12)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "per_cpu_zonestats", scope: !134, file: !73, line: 840, baseType: !205, size: 64, offset: 832)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "per_cpu_zonestat", file: !73, line: 698, size: 512, elements: !207)
!207 = !{!208, !215, !216}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "vm_stat_diff", scope: !206, file: !73, line: 700, baseType: !209, size: 80)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 80, elements: !213)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !181, line: 16, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !183, line: 20, baseType: !212)
!212 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!213 = !{!214}
!214 = !DISubrange(count: 10)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "stat_threshold", scope: !206, file: !73, line: 701, baseType: !210, size: 8, offset: 80)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "vm_numa_event", scope: !206, file: !73, line: 709, baseType: !217, size: 384, offset: 128)
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 384, elements: !218)
!218 = !{!219}
!219 = !DISubrange(count: 6)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "pageset_high", scope: !134, file: !73, line: 845, baseType: !106, size: 32, offset: 896)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "pageset_batch", scope: !134, file: !73, line: 846, baseType: !106, size: 32, offset: 928)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "zone_start_pfn", scope: !134, file: !73, line: 857, baseType: !107, size: 64, offset: 960)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "managed_pages", scope: !134, file: !73, line: 901, baseType: !224, size: 64, offset: 1024)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !225, line: 13, baseType: !226)
!225 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !113, line: 181, baseType: !227)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !113, line: 179, size: 64, elements: !228)
!228 = !{!229}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !227, file: !113, line: 180, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !181, line: 22, baseType: !231)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !183, line: 30, baseType: !232)
!232 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "spanned_pages", scope: !134, file: !73, line: 902, baseType: !107, size: 64, offset: 1088)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "present_pages", scope: !134, file: !73, line: 903, baseType: !107, size: 64, offset: 1152)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !134, file: !73, line: 911, baseType: !236, size: 64, offset: 1216)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !238)
!238 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !134, file: !73, line: 927, baseType: !106, size: 32, offset: 1280)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_pad1_", scope: !134, file: !73, line: 930, baseType: !241, align: 512, offset: 1536)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cacheline_padding", file: !242, line: 93, align: 512, elements: !243)
!242 = !DIFile(filename: "./include/linux/cache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "599edcbe9a1f0cbc1eddd4ed9f4096ef")
!243 = !{!244}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !241, file: !242, line: 94, baseType: !245)
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, elements: !246)
!246 = !{!247}
!247 = !DISubrange(count: 0)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "free_area", scope: !134, file: !73, line: 933, baseType: !249, size: 6336, offset: 1536)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 6336, elements: !255)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "free_area", file: !73, line: 113, size: 576, elements: !251)
!251 = !{!252, !254}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "free_list", scope: !250, file: !73, line: 114, baseType: !253, size: 512)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 512, elements: !138)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "nr_free", scope: !250, file: !73, line: 115, baseType: !107, size: 64, offset: 512)
!255 = !{!256}
!256 = !DISubrange(count: 11)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !134, file: !73, line: 941, baseType: !107, size: 64, offset: 7872)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !134, file: !73, line: 944, baseType: !152, size: 32, offset: 7936)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_pad2_", scope: !134, file: !73, line: 947, baseType: !241, align: 512, offset: 8192)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_drift_mark", scope: !134, file: !73, line: 954, baseType: !107, size: 64, offset: 8192)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "compact_cached_free_pfn", scope: !134, file: !73, line: 958, baseType: !107, size: 64, offset: 8256)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "compact_cached_migrate_pfn", scope: !134, file: !73, line: 960, baseType: !263, size: 128, offset: 8320)
!263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 128, elements: !264)
!264 = !{!265}
!265 = !DISubrange(count: 2)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "compact_init_migrate_pfn", scope: !134, file: !73, line: 961, baseType: !107, size: 64, offset: 8448)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "compact_init_free_pfn", scope: !134, file: !73, line: 962, baseType: !107, size: 64, offset: 8512)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "compact_considered", scope: !134, file: !73, line: 972, baseType: !5, size: 32, offset: 8576)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "compact_defer_shift", scope: !134, file: !73, line: 973, baseType: !5, size: 32, offset: 8608)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "compact_order_failed", scope: !134, file: !73, line: 974, baseType: !106, size: 32, offset: 8640)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "compact_blockskip_flush", scope: !134, file: !73, line: 979, baseType: !272, size: 8, offset: 8672)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !113, line: 35, baseType: !273)
!273 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "contiguous", scope: !134, file: !73, line: 982, baseType: !272, size: 8, offset: 8680)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_pad3_", scope: !134, file: !73, line: 984, baseType: !241, align: 512, offset: 8704)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "vm_stat", scope: !134, file: !73, line: 986, baseType: !277, size: 640, offset: 8704)
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 640, elements: !213)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "vm_numa_event", scope: !134, file: !73, line: 987, baseType: !279, size: 384, offset: 9344)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 384, elements: !218)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "node_zonelists", scope: !130, file: !73, line: 1279, baseType: !281, size: 65792, offset: 38912)
!281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !282, size: 65792, elements: !264)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zonelist", file: !73, line: 1214, size: 32896, elements: !283)
!283 = !{!284}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_zonerefs", scope: !282, file: !73, line: 1215, baseType: !285, size: 32896)
!285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !286, size: 32896, elements: !291)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zoneref", file: !73, line: 1195, size: 128, elements: !287)
!287 = !{!288, !290}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "zone", scope: !286, file: !73, line: 1196, baseType: !289, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "zone_idx", scope: !286, file: !73, line: 1197, baseType: !106, size: 32, offset: 64)
!291 = !{!292}
!292 = !DISubrange(count: 257)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "nr_zones", scope: !130, file: !73, line: 1281, baseType: !106, size: 32, offset: 104704)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "node_start_pfn", scope: !130, file: !73, line: 1303, baseType: !107, size: 64, offset: 104768)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "node_present_pages", scope: !130, file: !73, line: 1304, baseType: !107, size: 64, offset: 104832)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "node_spanned_pages", scope: !130, file: !73, line: 1305, baseType: !107, size: 64, offset: 104896)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !130, file: !73, line: 1307, baseType: !106, size: 32, offset: 104960)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "kswapd_wait", scope: !130, file: !73, line: 1308, baseType: !299, size: 192, offset: 105024)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !300, line: 41, baseType: !301)
!300 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !300, line: 37, size: 192, elements: !302)
!302 = !{!303, !304}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !301, file: !300, line: 38, baseType: !152, size: 32)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !301, file: !300, line: 39, baseType: !112, size: 128, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "pfmemalloc_wait", scope: !130, file: !73, line: 1309, baseType: !299, size: 192, offset: 105216)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_wait", scope: !130, file: !73, line: 1312, baseType: !307, size: 768, offset: 105408)
!307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 768, elements: !138)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "nr_writeback_throttled", scope: !130, file: !73, line: 1314, baseType: !172, size: 32, offset: 106176)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "nr_reclaim_start", scope: !130, file: !73, line: 1315, baseType: !107, size: 64, offset: 106240)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "kswapd", scope: !130, file: !73, line: 1320, baseType: !311, size: 64, offset: 106304)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !313, line: 746, size: 58368, elements: !314)
!313 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!314 = !{!315, !325, !326, !327, !333, !334, !335, !336, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !417, !428, !530, !534, !537, !568, !569, !570, !571, !582, !584, !585, !586, !587, !588, !589, !600, !601, !604, !605, !606, !607, !608, !609, !610, !611, !618, !619, !626, !627, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2710, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2725, !2726, !2727, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2759, !2765, !2766, !2767, !2768, !2769, !2771, !2774, !2781, !2786, !2789, !2792, !2795, !2798, !2936, !2967, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2975, !2978, !2979, !2980, !2989, !2997, !2998, !2999, !3000, !3001, !3006, !3007, !3008, !3011, !3012, !3015, !3018, !3021, !3029, !3032, !3033, !3119, !3120, !3121, !3122, !3123, !3128, !3129, !3130, !3131, !3134, !3135, !3138, !3141, !3142, !3145, !3146, !3147, !3150, !3151, !3152, !3153, !3154, !3155, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3187, !3188, !3194, !3197, !3198, !3199, !3200, !3201, !3202, !3203, !3206, !3278, !3280, !3281, !3282, !3283, !3284, !3296, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3313, !3314, !3315}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !312, file: !313, line: 752, baseType: !316, size: 192)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !317, line: 56, size: 192, elements: !318)
!317 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!318 = !{!319, !320, !321, !324}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !316, file: !317, line: 57, baseType: !107, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !316, file: !317, line: 58, baseType: !107, size: 64, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !316, file: !317, line: 59, baseType: !322, size: 32, offset: 128)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !181, line: 21, baseType: !323)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !183, line: 27, baseType: !5)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !316, file: !317, line: 61, baseType: !322, size: 32, offset: 160)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !312, file: !313, line: 754, baseType: !5, size: 32, offset: 192)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !312, file: !313, line: 767, baseType: !105, size: 64, offset: 256)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !312, file: !313, line: 768, baseType: !328, size: 32, offset: 320)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !329, line: 113, baseType: !330)
!329 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !329, line: 111, size: 32, elements: !331)
!331 = !{!332}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !330, file: !329, line: 112, baseType: !172, size: 32)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !312, file: !313, line: 770, baseType: !5, size: 32, offset: 352)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !312, file: !313, line: 771, baseType: !5, size: 32, offset: 384)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !312, file: !313, line: 774, baseType: !106, size: 32, offset: 416)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !312, file: !313, line: 775, baseType: !337, size: 128, offset: 448)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !338, line: 58, size: 128, elements: !339)
!338 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!339 = !{!340, !346, !351, !352}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !337, file: !338, line: 59, baseType: !341, size: 64)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !342, line: 60, size: 64, elements: !343)
!342 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!343 = !{!344}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !341, file: !342, line: 61, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, scope: !337, file: !338, line: 60, baseType: !347, size: 32, offset: 64)
!347 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !337, file: !338, line: 60, size: 32, elements: !348)
!348 = !{!349, !350}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !347, file: !338, line: 61, baseType: !5, size: 32)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !347, file: !338, line: 62, baseType: !172, size: 32)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !337, file: !338, line: 65, baseType: !190, size: 16, offset: 96)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !337, file: !338, line: 65, baseType: !190, size: 16, offset: 112)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !312, file: !313, line: 776, baseType: !5, size: 32, offset: 576)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !312, file: !313, line: 777, baseType: !107, size: 64, offset: 640)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !312, file: !313, line: 778, baseType: !311, size: 64, offset: 704)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !312, file: !313, line: 787, baseType: !106, size: 32, offset: 768)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !312, file: !313, line: 788, baseType: !106, size: 32, offset: 800)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !312, file: !313, line: 790, baseType: !106, size: 32, offset: 832)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !312, file: !313, line: 792, baseType: !106, size: 32, offset: 864)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !312, file: !313, line: 793, baseType: !106, size: 32, offset: 896)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !312, file: !313, line: 794, baseType: !106, size: 32, offset: 928)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !312, file: !313, line: 795, baseType: !5, size: 32, offset: 960)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !312, file: !313, line: 797, baseType: !364, size: 2048, offset: 1024)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !313, line: 551, size: 2048, elements: !365)
!365 = !{!366, !371, !379, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !396, !399, !400, !401}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !364, file: !313, line: 553, baseType: !367, size: 128)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !313, line: 411, size: 128, elements: !368)
!368 = !{!369, !370}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !367, file: !313, line: 412, baseType: !107, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !367, file: !313, line: 413, baseType: !322, size: 32, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !364, file: !313, line: 554, baseType: !372, size: 192, align: 64, offset: 128)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !373, line: 5, size: 192, align: 64, elements: !374)
!373 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!374 = !{!375, !376, !378}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !372, file: !373, line: 6, baseType: !107, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !372, file: !373, line: 7, baseType: !377, size: 64, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !372, file: !373, line: 8, baseType: !377, size: 64, offset: 128)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !364, file: !313, line: 555, baseType: !380, size: 64, offset: 320)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !181, line: 23, baseType: !381)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !183, line: 31, baseType: !382)
!382 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !364, file: !313, line: 556, baseType: !380, size: 64, offset: 384)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !364, file: !313, line: 558, baseType: !112, size: 128, offset: 448)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !364, file: !313, line: 559, baseType: !5, size: 32, offset: 576)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !364, file: !313, line: 561, baseType: !380, size: 64, offset: 640)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !364, file: !313, line: 562, baseType: !380, size: 64, offset: 704)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !364, file: !313, line: 563, baseType: !380, size: 64, offset: 768)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !364, file: !313, line: 564, baseType: !380, size: 64, offset: 832)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !364, file: !313, line: 565, baseType: !230, size: 64, offset: 896)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !364, file: !313, line: 566, baseType: !380, size: 64, offset: 960)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !364, file: !313, line: 568, baseType: !380, size: 64, offset: 1024)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !364, file: !313, line: 571, baseType: !106, size: 32, offset: 1088)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !364, file: !313, line: 572, baseType: !395, size: 64, offset: 1152)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !364, file: !313, line: 574, baseType: !397, size: 64, offset: 1216)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !313, line: 49, flags: DIFlagFwdDecl)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !364, file: !313, line: 576, baseType: !397, size: 64, offset: 1280)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !364, file: !313, line: 578, baseType: !107, size: 64, offset: 1344)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !364, file: !313, line: 588, baseType: !402, size: 512, align: 512, offset: 1536)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !313, line: 497, size: 512, align: 512, elements: !403)
!403 = !{!404, !405, !406, !407, !408, !409, !410, !411, !412}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !402, file: !313, line: 498, baseType: !380, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !402, file: !313, line: 499, baseType: !380, size: 64, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !402, file: !313, line: 500, baseType: !380, size: 64, offset: 128)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !402, file: !313, line: 501, baseType: !322, size: 32, offset: 192)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !402, file: !313, line: 502, baseType: !322, size: 32, offset: 224)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !402, file: !313, line: 503, baseType: !107, size: 64, offset: 256)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !402, file: !313, line: 504, baseType: !107, size: 64, offset: 320)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !402, file: !313, line: 505, baseType: !107, size: 64, offset: 384)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !402, file: !313, line: 506, baseType: !413, size: 64, align: 64, offset: 448)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !313, line: 445, size: 64, align: 64, elements: !414)
!414 = !{!415, !416}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !413, file: !313, line: 446, baseType: !5, size: 32)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !413, file: !313, line: 447, baseType: !5, size: 32, offset: 32)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !312, file: !313, line: 798, baseType: !418, size: 384, offset: 3072)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !313, line: 592, size: 384, elements: !419)
!419 = !{!420, !421, !422, !423, !424, !425, !426}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !418, file: !313, line: 593, baseType: !112, size: 128)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !418, file: !313, line: 594, baseType: !107, size: 64, offset: 128)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !418, file: !313, line: 595, baseType: !107, size: 64, offset: 192)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !418, file: !313, line: 596, baseType: !5, size: 32, offset: 256)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !418, file: !313, line: 597, baseType: !192, size: 16, offset: 288)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !418, file: !313, line: 598, baseType: !192, size: 16, offset: 304)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !418, file: !313, line: 600, baseType: !427, size: 64, offset: 320)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !312, file: !313, line: 799, baseType: !429, size: 1792, offset: 3456)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !313, line: 610, size: 1792, elements: !430)
!430 = !{!431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !527, !528}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !429, file: !313, line: 611, baseType: !372, size: 192, align: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !429, file: !313, line: 618, baseType: !380, size: 64, offset: 192)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !429, file: !313, line: 619, baseType: !380, size: 64, offset: 256)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !429, file: !313, line: 620, baseType: !380, size: 64, offset: 320)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !429, file: !313, line: 621, baseType: !380, size: 64, offset: 384)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !429, file: !313, line: 622, baseType: !380, size: 64, offset: 448)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !429, file: !313, line: 629, baseType: !230, size: 64, offset: 512)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !429, file: !313, line: 630, baseType: !380, size: 64, offset: 576)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !429, file: !313, line: 631, baseType: !5, size: 32, offset: 640)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !429, file: !313, line: 653, baseType: !5, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !429, file: !313, line: 654, baseType: !5, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !429, file: !313, line: 655, baseType: !5, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !429, file: !313, line: 656, baseType: !5, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !429, file: !313, line: 662, baseType: !445, size: 512, offset: 704)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !4, line: 118, size: 512, elements: !446)
!446 = !{!447, !455, !456, !461, !523, !524, !525, !526}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !445, file: !4, line: 119, baseType: !448, size: 256)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !449, line: 9, size: 256, elements: !450)
!449 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!450 = !{!451, !452}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !448, file: !449, line: 10, baseType: !372, size: 192, align: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !448, file: !449, line: 11, baseType: !453, size: 64, offset: 192)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !454, line: 29, baseType: !230)
!454 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!455 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !445, file: !4, line: 120, baseType: !453, size: 64, offset: 256)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !445, file: !4, line: 121, baseType: !457, size: 64, offset: 320)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{!3, !460}
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !445, file: !4, line: 122, baseType: !462, size: 64, offset: 384)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !4, line: 159, size: 512, align: 512, elements: !464)
!464 = !{!465, !491, !492, !496, !506, !507, !518, !522}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !463, file: !4, line: 160, baseType: !466, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !4, line: 215, size: 4608, align: 512, elements: !468)
!468 = !{!469, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !467, file: !4, line: 216, baseType: !470, size: 32)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !161, line: 23, baseType: !160)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !467, file: !4, line: 217, baseType: !5, size: 32, offset: 32)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !467, file: !4, line: 218, baseType: !5, size: 32, offset: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !467, file: !4, line: 219, baseType: !5, size: 32, offset: 96)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !467, file: !4, line: 220, baseType: !5, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !467, file: !4, line: 221, baseType: !5, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !467, file: !4, line: 222, baseType: !5, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !467, file: !4, line: 223, baseType: !5, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !467, file: !4, line: 224, baseType: !5, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !467, file: !4, line: 226, baseType: !5, size: 32, offset: 160)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !467, file: !4, line: 227, baseType: !192, size: 16, offset: 192)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !467, file: !4, line: 228, baseType: !192, size: 16, offset: 208)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !467, file: !4, line: 229, baseType: !5, size: 32, offset: 224)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !467, file: !4, line: 235, baseType: !453, size: 64, offset: 256)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !467, file: !4, line: 236, baseType: !460, size: 64, offset: 320)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !467, file: !4, line: 237, baseType: !453, size: 64, offset: 384)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !467, file: !4, line: 238, baseType: !460, size: 64, offset: 448)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !467, file: !4, line: 239, baseType: !488, size: 4096, align: 512, offset: 512)
!488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !463, size: 4096, align: 512, elements: !489)
!489 = !{!490}
!490 = !DISubrange(count: 8)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !463, file: !4, line: 161, baseType: !5, size: 32, offset: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !463, file: !4, line: 162, baseType: !493, size: 32, offset: 96)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !113, line: 32, baseType: !494)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !495, line: 96, baseType: !106)
!495 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!496 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !463, file: !4, line: 163, baseType: !497, size: 32, offset: 128)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !498, line: 274, baseType: !499)
!498 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !498, line: 274, size: 32, elements: !500)
!500 = !{!501}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !499, file: !498, line: 274, baseType: !502, size: 32)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !498, line: 69, baseType: !503)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !498, line: 64, size: 32, elements: !504)
!504 = !{!505}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !503, file: !498, line: 65, baseType: !5, size: 32)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !463, file: !4, line: 164, baseType: !460, size: 64, offset: 192)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !463, file: !4, line: 165, baseType: !508, size: 128, offset: 256)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !449, line: 14, size: 128, elements: !509)
!509 = !{!510}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !508, file: !449, line: 15, baseType: !511, size: 128)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !373, line: 26, size: 128, elements: !512)
!512 = !{!513, !517}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !511, file: !373, line: 27, baseType: !514, size: 64)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !373, line: 12, size: 64, elements: !515)
!515 = !{!516}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !514, file: !373, line: 13, baseType: !377, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !511, file: !373, line: 28, baseType: !377, size: 64, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !463, file: !4, line: 166, baseType: !519, size: 64, offset: 384)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DISubroutineType(types: !521)
!521 = !{!453}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !463, file: !4, line: 167, baseType: !453, size: 64, offset: 448)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !445, file: !4, line: 123, baseType: !180, size: 8, offset: 448)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !445, file: !4, line: 124, baseType: !180, size: 8, offset: 456)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !445, file: !4, line: 125, baseType: !180, size: 8, offset: 464)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !445, file: !4, line: 126, baseType: !180, size: 8, offset: 472)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !429, file: !313, line: 671, baseType: !445, size: 512, offset: 1216)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !429, file: !313, line: 679, baseType: !529, size: 64, offset: 1728)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !312, file: !313, line: 800, baseType: !531, size: 64, offset: 5248)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !533)
!533 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !313, line: 800, flags: DIFlagFwdDecl)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !312, file: !313, line: 809, baseType: !535, size: 64, offset: 5312)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !313, line: 70, flags: DIFlagFwdDecl)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !312, file: !313, line: 825, baseType: !538, size: 2048, align: 512, offset: 5632)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !313, line: 509, size: 2048, align: 512, elements: !539)
!539 = !{!540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !538, file: !313, line: 511, baseType: !380, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !538, file: !313, line: 512, baseType: !380, size: 64, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !538, file: !313, line: 513, baseType: !380, size: 64, offset: 128)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !538, file: !313, line: 514, baseType: !380, size: 64, offset: 192)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !538, file: !313, line: 515, baseType: !380, size: 64, offset: 256)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !538, file: !313, line: 516, baseType: !380, size: 64, offset: 320)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !538, file: !313, line: 518, baseType: !380, size: 64, offset: 384)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !538, file: !313, line: 519, baseType: !380, size: 64, offset: 448)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !538, file: !313, line: 520, baseType: !230, size: 64, offset: 512)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !538, file: !313, line: 522, baseType: !380, size: 64, offset: 576)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !538, file: !313, line: 523, baseType: !380, size: 64, offset: 640)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !538, file: !313, line: 524, baseType: !230, size: 64, offset: 704)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !538, file: !313, line: 526, baseType: !230, size: 64, offset: 768)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !538, file: !313, line: 527, baseType: !380, size: 64, offset: 832)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !538, file: !313, line: 529, baseType: !380, size: 64, offset: 896)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !538, file: !313, line: 530, baseType: !380, size: 64, offset: 960)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !538, file: !313, line: 531, baseType: !380, size: 64, offset: 1024)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !538, file: !313, line: 532, baseType: !380, size: 64, offset: 1088)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !538, file: !313, line: 533, baseType: !380, size: 64, offset: 1152)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !538, file: !313, line: 535, baseType: !380, size: 64, offset: 1216)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !538, file: !313, line: 536, baseType: !380, size: 64, offset: 1280)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !538, file: !313, line: 537, baseType: !380, size: 64, offset: 1344)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !538, file: !313, line: 538, baseType: !380, size: 64, offset: 1408)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !538, file: !313, line: 539, baseType: !380, size: 64, offset: 1472)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !538, file: !313, line: 540, baseType: !380, size: 64, offset: 1536)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !538, file: !313, line: 541, baseType: !380, size: 64, offset: 1600)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !538, file: !313, line: 542, baseType: !380, size: 64, offset: 1664)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !538, file: !313, line: 543, baseType: !380, size: 64, offset: 1728)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !312, file: !313, line: 833, baseType: !5, size: 32, offset: 7680)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !312, file: !313, line: 836, baseType: !5, size: 32, offset: 7712)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !312, file: !313, line: 837, baseType: !106, size: 32, offset: 7744)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !312, file: !313, line: 838, baseType: !572, size: 64, offset: 7808)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !574)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !575, line: 19, baseType: !576)
!575 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !575, line: 19, size: 64, elements: !577)
!577 = !{!578}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !576, file: !575, line: 19, baseType: !579, size: 64)
!579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 64, elements: !580)
!580 = !{!581}
!581 = !DISubrange(count: 1)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !312, file: !313, line: 839, baseType: !583, size: 64, offset: 7872)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !312, file: !313, line: 840, baseType: !574, size: 64, offset: 7936)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !312, file: !313, line: 841, baseType: !105, size: 64, offset: 8000)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !312, file: !313, line: 843, baseType: !192, size: 16, offset: 8064)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !312, file: !313, line: 845, baseType: !192, size: 16, offset: 8080)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !312, file: !313, line: 848, baseType: !106, size: 32, offset: 8096)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !312, file: !313, line: 849, baseType: !590, size: 32, offset: 8128)
!590 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !313, line: 718, size: 32, elements: !591)
!591 = !{!592, !599}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !590, file: !313, line: 724, baseType: !593, size: 32)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !590, file: !313, line: 719, size: 32, elements: !594)
!594 = !{!595, !596, !597, !598}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !593, file: !313, line: 720, baseType: !180, size: 8)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !593, file: !313, line: 721, baseType: !180, size: 8, offset: 8)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !593, file: !313, line: 722, baseType: !180, size: 8, offset: 16)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !593, file: !313, line: 723, baseType: !180, size: 8, offset: 24)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !590, file: !313, line: 725, baseType: !322, size: 32)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !312, file: !313, line: 850, baseType: !112, size: 128, offset: 8192)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !312, file: !313, line: 851, baseType: !602, size: 64, offset: 8320)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !313, line: 60, flags: DIFlagFwdDecl)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !312, file: !313, line: 855, baseType: !107, size: 64, offset: 8384)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !312, file: !313, line: 856, baseType: !180, size: 8, offset: 8448)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !312, file: !313, line: 857, baseType: !180, size: 8, offset: 8456)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !312, file: !313, line: 858, baseType: !106, size: 32, offset: 8480)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !312, file: !313, line: 859, baseType: !112, size: 128, offset: 8512)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !312, file: !313, line: 860, baseType: !106, size: 32, offset: 8640)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !312, file: !313, line: 861, baseType: !112, size: 128, offset: 8704)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !312, file: !313, line: 873, baseType: !612, size: 256, offset: 8832)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !313, line: 376, size: 256, elements: !613)
!613 = !{!614, !615, !616, !617}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !612, file: !313, line: 381, baseType: !107, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !612, file: !313, line: 384, baseType: !382, size: 64, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !612, file: !313, line: 389, baseType: !382, size: 64, offset: 128)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !612, file: !313, line: 392, baseType: !382, size: 64, offset: 192)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !312, file: !313, line: 875, baseType: !112, size: 128, offset: 9088)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !312, file: !313, line: 877, baseType: !620, size: 320, offset: 9216)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !621, line: 86, size: 320, elements: !622)
!621 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!622 = !{!623, !624, !625}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !620, file: !621, line: 87, baseType: !106, size: 32)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !620, file: !621, line: 88, baseType: !112, size: 128, offset: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !620, file: !621, line: 89, baseType: !112, size: 128, offset: 192)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !312, file: !313, line: 878, baseType: !372, size: 192, align: 64, offset: 9536)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !312, file: !313, line: 881, baseType: !628, size: 64, offset: 9728)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !37, line: 733, size: 10240, elements: !630)
!630 = !{!631, !2629}
!631 = !DIDerivedType(tag: DW_TAG_member, scope: !629, file: !37, line: 734, baseType: !632, size: 10240)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !629, file: !37, line: 734, size: 10240, elements: !633)
!633 = !{!634, !638, !652, !2527, !2528, !2529, !2530, !2531, !2532, !2539, !2540, !2541, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2580, !2582, !2585, !2609, !2610, !2611, !2614, !2615, !2616, !2619, !2620, !2621, !2627, !2628}
!634 = !DIDerivedType(tag: DW_TAG_member, scope: !632, file: !37, line: 739, baseType: !635, size: 512, align: 512)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !632, file: !37, line: 739, size: 512, align: 512, elements: !636)
!636 = !{!637}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !635, file: !37, line: 747, baseType: !172, size: 32)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !632, file: !37, line: 750, baseType: !639, size: 128, offset: 512)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !640, line: 218, size: 128, elements: !641)
!640 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!641 = !{!642, !650, !651}
!642 = !DIDerivedType(tag: DW_TAG_member, scope: !639, file: !640, line: 219, baseType: !643, size: 32)
!643 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !639, file: !640, line: 219, size: 32, elements: !644)
!644 = !{!645, !646}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !643, file: !640, line: 220, baseType: !152, size: 32)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !643, file: !640, line: 221, baseType: !647)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !640, line: 197, baseType: !648)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !640, line: 197, elements: !649)
!649 = !{}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !639, file: !640, line: 223, baseType: !5, size: 32, offset: 32)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !639, file: !640, line: 224, baseType: !105, size: 64, offset: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !632, file: !37, line: 752, baseType: !653, size: 64, offset: 640)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DISubroutineType(types: !655)
!655 = !{!107, !656, !107, !107, !107, !107}
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !18, line: 994, size: 1856, align: 64, elements: !658)
!658 = !{!659, !673, !674, !676, !677, !689, !692, !693, !761, !968, !977, !2517, !2518, !2519, !2520, !2521, !2522, !2524, !2525, !2526}
!659 = !DIDerivedType(tag: DW_TAG_member, scope: !657, file: !18, line: 995, baseType: !660, size: 128)
!660 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !657, file: !18, line: 995, size: 128, elements: !661)
!661 = !{!662, !663, !672}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !660, file: !18, line: 996, baseType: !341, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !660, file: !18, line: 997, baseType: !664, size: 128, align: 64)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !113, line: 232, size: 128, align: 64, elements: !665)
!665 = !{!666, !668}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !664, file: !113, line: 233, baseType: !667, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !664, file: !113, line: 234, baseType: !669, size: 64, offset: 64)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DISubroutineType(types: !671)
!671 = !{null, !667}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !660, file: !18, line: 998, baseType: !5, size: 32)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !657, file: !18, line: 1005, baseType: !152, size: 32, offset: 128)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !657, file: !18, line: 1006, baseType: !675, size: 32, offset: 160)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !113, line: 156, baseType: !5)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !657, file: !18, line: 1007, baseType: !224, size: 64, offset: 192)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !657, file: !18, line: 1008, baseType: !678, size: 256, offset: 256)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !679, line: 66, size: 256, elements: !680)
!679 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!680 = !{!681, !682, !683, !688}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !678, file: !679, line: 67, baseType: !224, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !678, file: !679, line: 68, baseType: !470, size: 32, offset: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !678, file: !679, line: 70, baseType: !684, size: 32, offset: 96)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !685, line: 15, size: 32, elements: !686)
!685 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!686 = !{!687}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !684, file: !685, line: 20, baseType: !172, size: 32)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !678, file: !679, line: 72, baseType: !112, size: 128, offset: 128)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !657, file: !18, line: 1009, baseType: !690, size: 64, offset: 512)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !113, line: 52, baseType: !691)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !495, line: 88, baseType: !232)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !657, file: !18, line: 1010, baseType: !5, size: 32, offset: 576)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !657, file: !18, line: 1011, baseType: !694, size: 256, offset: 640)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !18, line: 948, size: 256, elements: !695)
!695 = !{!696, !719, !750, !751, !759, !760}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !694, file: !18, line: 949, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !698, line: 34, baseType: !699)
!698 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !698, line: 25, size: 64, elements: !700)
!700 = !{!701}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !699, file: !698, line: 26, baseType: !702, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !703, line: 27, baseType: !704)
!703 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !703, line: 13, size: 64, elements: !705)
!705 = !{!706, !718}
!706 = !DIDerivedType(tag: DW_TAG_member, scope: !704, file: !703, line: 14, baseType: !707, size: 32)
!707 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !704, file: !703, line: 14, size: 32, elements: !708)
!708 = !{!709, !710}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !707, file: !703, line: 15, baseType: !172, size: 32)
!710 = !DIDerivedType(tag: DW_TAG_member, scope: !707, file: !703, line: 16, baseType: !711, size: 32)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !707, file: !703, line: 16, size: 32, elements: !712)
!712 = !{!713, !714}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !711, file: !703, line: 18, baseType: !180, size: 8)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !711, file: !703, line: 19, baseType: !715, size: 24, offset: 8)
!715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 24, elements: !716)
!716 = !{!717}
!717 = !DISubrange(count: 3)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !704, file: !703, line: 26, baseType: !164, size: 32, offset: 32)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !694, file: !18, line: 950, baseType: !720, size: 64, offset: 64)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !10, line: 59, size: 768, elements: !722)
!722 = !{!723, !724, !725, !726, !737, !738, !739, !740}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !721, file: !10, line: 61, baseType: !328, size: 32)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !721, file: !10, line: 62, baseType: !5, size: 32, offset: 32)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !721, file: !10, line: 63, baseType: !152, size: 32, offset: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !721, file: !10, line: 65, baseType: !727, size: 256, offset: 128)
!727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !728, size: 256, elements: !138)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !113, line: 194, size: 64, elements: !729)
!729 = !{!730}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !728, file: !113, line: 195, baseType: !731, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !113, line: 198, size: 128, elements: !733)
!733 = !{!734, !735}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !732, file: !113, line: 199, baseType: !731, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !732, file: !113, line: 199, baseType: !736, size: 64, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !721, file: !10, line: 66, baseType: !728, size: 64, offset: 384)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !721, file: !10, line: 68, baseType: !299, size: 192, offset: 448)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !721, file: !10, line: 69, baseType: !664, size: 128, align: 64, offset: 640)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !721, file: !10, line: 70, baseType: !741, offset: 768)
!741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !742, elements: !748)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !10, line: 54, size: 128, elements: !743)
!743 = !{!744, !745}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !742, file: !10, line: 55, baseType: !106, size: 32)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !742, file: !10, line: 56, baseType: !746, size: 64, offset: 64)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !10, line: 56, flags: DIFlagFwdDecl)
!748 = !{!749}
!749 = !DISubrange(count: -1)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !694, file: !18, line: 951, baseType: !9, size: 32, offset: 128)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !694, file: !18, line: 952, baseType: !752, size: 32, offset: 160)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !753, line: 23, baseType: !754)
!753 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !753, line: 21, size: 32, elements: !755)
!755 = !{!756}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !754, file: !753, line: 22, baseType: !757, size: 32)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !113, line: 37, baseType: !758)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !495, line: 49, baseType: !5)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !694, file: !18, line: 952, baseType: !752, size: 32, offset: 192)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !694, file: !18, line: 953, baseType: !106, size: 32, offset: 224)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !657, file: !18, line: 1012, baseType: !762, size: 64, offset: 896)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !764)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !765, line: 110, size: 1472, elements: !766)
!765 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!766 = !{!767, !768, !769, !776, !777, !778, !779, !780, !781, !782, !783, !789, !790, !791, !792, !793, !794, !913, !914, !915, !916, !917, !948, !951, !955, !963}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !764, file: !765, line: 111, baseType: !224, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !764, file: !765, line: 112, baseType: !752, size: 32, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !764, file: !765, line: 113, baseType: !770, size: 32, offset: 96)
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !753, line: 28, baseType: !771)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !753, line: 26, size: 32, elements: !772)
!772 = !{!773}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !771, file: !753, line: 27, baseType: !774, size: 32)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !113, line: 38, baseType: !775)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !495, line: 50, baseType: !5)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !764, file: !765, line: 114, baseType: !752, size: 32, offset: 128)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !764, file: !765, line: 115, baseType: !770, size: 32, offset: 160)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !764, file: !765, line: 116, baseType: !752, size: 32, offset: 192)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !764, file: !765, line: 117, baseType: !770, size: 32, offset: 224)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !764, file: !765, line: 118, baseType: !752, size: 32, offset: 256)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !764, file: !765, line: 119, baseType: !770, size: 32, offset: 288)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !764, file: !765, line: 120, baseType: !5, size: 32, offset: 320)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !764, file: !765, line: 121, baseType: !784, size: 64, offset: 384)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !785, line: 24, baseType: !786)
!785 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !785, line: 24, size: 64, elements: !787)
!787 = !{!788}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !786, file: !785, line: 24, baseType: !380, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !764, file: !765, line: 122, baseType: !784, size: 64, offset: 448)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !764, file: !765, line: 123, baseType: !784, size: 64, offset: 512)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !764, file: !765, line: 124, baseType: !784, size: 64, offset: 576)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !764, file: !765, line: 125, baseType: !784, size: 64, offset: 640)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !764, file: !765, line: 127, baseType: !184, size: 8, offset: 704)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !764, file: !765, line: 129, baseType: !795, size: 64, offset: 768)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !797, line: 195, size: 1728, elements: !798)
!797 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!798 = !{!799, !800, !805, !810, !819, !822, !823, !830, !831, !832, !833, !836, !837, !838, !839, !840, !877, !898}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !796, file: !797, line: 196, baseType: !328, size: 32)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !796, file: !797, line: 197, baseType: !801, size: 32, offset: 32)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !797, line: 28, baseType: !802)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !113, line: 104, baseType: !803)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !181, line: 20, baseType: !804)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !183, line: 26, baseType: !106)
!805 = !DIDerivedType(tag: DW_TAG_member, scope: !796, file: !797, line: 198, baseType: !806, size: 192, offset: 64)
!806 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !796, file: !797, line: 198, size: 192, elements: !807)
!807 = !{!808, !809}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !806, file: !797, line: 199, baseType: !112, size: 128)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !806, file: !797, line: 200, baseType: !372, size: 192, align: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !796, file: !797, line: 205, baseType: !811, size: 320, offset: 256)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !812, line: 48, size: 320, elements: !813)
!812 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!813 = !{!814, !815, !816, !817, !818}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !811, file: !812, line: 49, baseType: !224, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !811, file: !812, line: 55, baseType: !224, size: 64, offset: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !811, file: !812, line: 57, baseType: !684, size: 32, offset: 128)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !811, file: !812, line: 59, baseType: !470, size: 32, offset: 160)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !811, file: !812, line: 60, baseType: !112, size: 128, offset: 192)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !796, file: !797, line: 206, baseType: !820, size: 64, offset: 576)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !797, line: 206, flags: DIFlagFwdDecl)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !796, file: !797, line: 207, baseType: !105, size: 64, offset: 640)
!823 = !DIDerivedType(tag: DW_TAG_member, scope: !796, file: !797, line: 208, baseType: !824, size: 64, offset: 704)
!824 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !796, file: !797, line: 208, size: 64, elements: !825)
!825 = !{!826, !829}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !824, file: !797, line: 209, baseType: !827, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !828, line: 8, baseType: !231)
!828 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!829 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !824, file: !797, line: 210, baseType: !827, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !796, file: !797, line: 212, baseType: !827, size: 64, offset: 768)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !796, file: !797, line: 213, baseType: !752, size: 32, offset: 832)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !796, file: !797, line: 214, baseType: !770, size: 32, offset: 864)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !796, file: !797, line: 215, baseType: !834, size: 32, offset: 896)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !797, line: 31, baseType: !835)
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !113, line: 110, baseType: !322)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !796, file: !797, line: 216, baseType: !192, size: 16, offset: 928)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !796, file: !797, line: 217, baseType: !192, size: 16, offset: 944)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !796, file: !797, line: 221, baseType: !198, size: 16, offset: 960)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !796, file: !797, line: 228, baseType: !107, size: 64, offset: 1024)
!840 = !DIDerivedType(tag: DW_TAG_member, scope: !796, file: !797, line: 245, baseType: !841, size: 320, offset: 1088)
!841 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !796, file: !797, line: 245, size: 320, elements: !842)
!842 = !{!843, !868}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !841, file: !797, line: 246, baseType: !844, size: 320)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !797, line: 114, size: 320, elements: !845)
!845 = !{!846, !847, !857, !860, !867}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !844, file: !797, line: 116, baseType: !107, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, scope: !844, file: !797, line: 117, baseType: !848, size: 64, offset: 64)
!848 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !844, file: !797, line: 117, size: 64, elements: !849)
!849 = !{!850, !856}
!850 = !DIDerivedType(tag: DW_TAG_member, scope: !848, file: !797, line: 118, baseType: !851, size: 64)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !848, file: !797, line: 118, size: 64, elements: !852)
!852 = !{!853, !854}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !851, file: !797, line: 120, baseType: !190, size: 16)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !851, file: !797, line: 121, baseType: !855, size: 48, offset: 16)
!855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, size: 48, elements: !218)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !848, file: !797, line: 127, baseType: !107, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !844, file: !797, line: 129, baseType: !858, size: 64, offset: 128)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !797, line: 102, flags: DIFlagFwdDecl)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !844, file: !797, line: 130, baseType: !861, size: 64, offset: 192)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !797, line: 108, size: 192, elements: !863)
!863 = !{!864, !865, !866}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !862, file: !797, line: 109, baseType: !664, size: 128, align: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !862, file: !797, line: 110, baseType: !328, size: 32, offset: 128)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !862, file: !797, line: 111, baseType: !272, size: 8, offset: 160)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !844, file: !797, line: 131, baseType: !236, size: 64, offset: 256)
!868 = !DIDerivedType(tag: DW_TAG_member, scope: !841, file: !797, line: 247, baseType: !869, size: 320)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !841, file: !797, line: 247, size: 320, elements: !870)
!870 = !{!871, !872, !873, !874, !875}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !869, file: !797, line: 248, baseType: !107, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !869, file: !797, line: 249, baseType: !107, size: 64, offset: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !869, file: !797, line: 250, baseType: !858, size: 64, offset: 128)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !869, file: !797, line: 251, baseType: !861, size: 64, offset: 192)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !869, file: !797, line: 252, baseType: !876, size: 64, offset: 256)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, scope: !796, file: !797, line: 260, baseType: !878, size: 256, offset: 1408)
!878 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !796, file: !797, line: 260, size: 256, elements: !879)
!879 = !{!880, !886}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !878, file: !797, line: 261, baseType: !881, size: 256)
!881 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !797, line: 134, size: 256, elements: !882)
!882 = !{!883, !884}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !881, file: !797, line: 135, baseType: !105, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !881, file: !797, line: 136, baseType: !885, size: 256)
!885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 256, elements: !138)
!886 = !DIDerivedType(tag: DW_TAG_member, scope: !878, file: !797, line: 262, baseType: !887, size: 256)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !878, file: !797, line: 262, size: 256, elements: !888)
!888 = !{!889, !890}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !887, file: !797, line: 264, baseType: !112, size: 128)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !887, file: !797, line: 265, baseType: !891, size: 128, offset: 128)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !892, line: 22, size: 128, elements: !893)
!892 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!893 = !{!894, !897}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !891, file: !892, line: 23, baseType: !895, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !892, line: 23, flags: DIFlagFwdDecl)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !891, file: !892, line: 24, baseType: !107, size: 64, offset: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !796, file: !797, line: 280, baseType: !899, size: 64, offset: 1664)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !797, line: 176, size: 192, elements: !901)
!901 = !{!902, !911, !912}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !900, file: !797, line: 177, baseType: !903, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !797, line: 171, baseType: !904)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DISubroutineType(types: !906)
!906 = !{!106, !795, !907, !909, !795}
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !859)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !881)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !900, file: !797, line: 178, baseType: !795, size: 64, offset: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !900, file: !797, line: 179, baseType: !858, size: 64, offset: 128)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !764, file: !765, line: 130, baseType: !795, size: 64, offset: 832)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !764, file: !765, line: 131, baseType: !795, size: 64, offset: 896)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !764, file: !765, line: 132, baseType: !795, size: 64, offset: 960)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !764, file: !765, line: 135, baseType: !105, size: 64, offset: 1024)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !764, file: !765, line: 137, baseType: !918, size: 64, offset: 1088)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !920, line: 14, size: 1088, elements: !921)
!920 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!921 = !{!922, !923, !932, !933, !934, !935, !936, !937}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !919, file: !920, line: 15, baseType: !328, size: 32)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !919, file: !920, line: 17, baseType: !924, size: 320, offset: 64)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !925, line: 22, size: 320, elements: !926)
!925 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!926 = !{!927, !928, !929, !930}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !924, file: !925, line: 23, baseType: !470, size: 32)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !924, file: !925, line: 24, baseType: !230, size: 64, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !924, file: !925, line: 26, baseType: !112, size: 128, offset: 128)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !924, file: !925, line: 28, baseType: !931, size: 64, offset: 256)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !919, file: !920, line: 19, baseType: !107, size: 64, offset: 384)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !919, file: !920, line: 20, baseType: !224, size: 64, offset: 448)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !919, file: !920, line: 23, baseType: !732, size: 128, offset: 512)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !919, file: !920, line: 24, baseType: !752, size: 32, offset: 640)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !919, file: !920, line: 29, baseType: !224, size: 64, offset: 704)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !919, file: !920, line: 36, baseType: !938, size: 320, offset: 768)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !939, line: 15, size: 320, elements: !940)
!939 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!940 = !{!941, !942, !943, !944, !945, !946, !947}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !938, file: !939, line: 16, baseType: !470, size: 32)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !938, file: !939, line: 18, baseType: !106, size: 32, offset: 32)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !938, file: !939, line: 19, baseType: !106, size: 32, offset: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !938, file: !939, line: 20, baseType: !106, size: 32, offset: 96)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !938, file: !939, line: 21, baseType: !106, size: 32, offset: 128)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !938, file: !939, line: 22, baseType: !107, size: 64, offset: 192)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !938, file: !939, line: 23, baseType: !107, size: 64, offset: 256)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !764, file: !765, line: 138, baseType: !949, size: 64, offset: 1152)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !37, line: 901, flags: DIFlagFwdDecl)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !764, file: !765, line: 139, baseType: !952, size: 64, offset: 1216)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !954, line: 16, flags: DIFlagFwdDecl)
!954 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!955 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !764, file: !765, line: 140, baseType: !956, size: 64, offset: 1280)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !765, line: 25, size: 64, elements: !958)
!958 = !{!959, !960, !961}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !957, file: !765, line: 26, baseType: !172, size: 32)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !957, file: !765, line: 27, baseType: !106, size: 32, offset: 32)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !957, file: !765, line: 28, baseType: !962, offset: 64)
!962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !770, elements: !748)
!963 = !DIDerivedType(tag: DW_TAG_member, scope: !764, file: !765, line: 142, baseType: !964, size: 128, offset: 1344)
!964 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !764, file: !765, line: 142, size: 128, elements: !965)
!965 = !{!966, !967}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !964, file: !765, line: 143, baseType: !106, size: 32)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !964, file: !765, line: 144, baseType: !664, size: 128, align: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !657, file: !18, line: 1013, baseType: !969, size: 256, offset: 960)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !18, line: 970, size: 256, elements: !970)
!970 = !{!971, !972, !973, !974, !975, !976}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !969, file: !18, line: 971, baseType: !107, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !969, file: !18, line: 972, baseType: !5, size: 32, offset: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !969, file: !18, line: 973, baseType: !5, size: 32, offset: 96)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !969, file: !18, line: 974, baseType: !5, size: 32, offset: 128)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !969, file: !18, line: 975, baseType: !5, size: 32, offset: 160)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !969, file: !18, line: 976, baseType: !690, size: 64, offset: 192)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !657, file: !18, line: 1014, baseType: !978, size: 128, offset: 1216)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !979, line: 8, size: 128, elements: !980)
!979 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!980 = !{!981, !2516}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !978, file: !979, line: 9, baseType: !982, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !984, line: 70, size: 256, elements: !985)
!984 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!985 = !{!986, !2513, !2514, !2515}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !983, file: !984, line: 71, baseType: !987, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !989, line: 82, size: 1536, elements: !990)
!989 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!990 = !{!991, !992, !997, !1005, !1006, !1021, !2480, !2482, !2495, !2496, !2497, !2498, !2499, !2505, !2506, !2507}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !988, file: !989, line: 84, baseType: !5, size: 32)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !988, file: !989, line: 85, baseType: !993, size: 32, offset: 32)
!993 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !498, line: 275, baseType: !994)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !498, line: 275, size: 32, elements: !995)
!995 = !{!996}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !994, file: !498, line: 275, baseType: !502, size: 32)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !988, file: !989, line: 86, baseType: !998, size: 128, offset: 64)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !999, line: 38, size: 128, elements: !1000)
!999 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!1000 = !{!1001, !1003}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !998, file: !999, line: 39, baseType: !1002, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !998, file: !999, line: 39, baseType: !1004, size: 64, offset: 64)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !988, file: !989, line: 87, baseType: !987, size: 64, offset: 192)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !988, file: !989, line: 88, baseType: !1007, size: 128, offset: 256)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !989, line: 49, size: 128, elements: !1008)
!1008 = !{!1009, !1018}
!1009 = !DIDerivedType(tag: DW_TAG_member, scope: !1007, file: !989, line: 50, baseType: !1010, size: 64)
!1010 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1007, file: !989, line: 50, size: 64, elements: !1011)
!1011 = !{!1012, !1017}
!1012 = !DIDerivedType(tag: DW_TAG_member, scope: !1010, file: !989, line: 51, baseType: !1013, size: 64)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1010, file: !989, line: 51, size: 64, elements: !1014)
!1014 = !{!1015, !1016}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1013, file: !989, line: 52, baseType: !322, size: 32)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1013, file: !989, line: 52, baseType: !322, size: 32, offset: 32)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1010, file: !989, line: 54, baseType: !380, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1007, file: !989, line: 56, baseType: !1019, size: 64, offset: 64)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !184)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !988, file: !989, line: 89, baseType: !1022, size: 64, offset: 384)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !18, line: 641, size: 4800, elements: !1024)
!1024 = !{!1025, !1027, !1028, !1029, !1030, !1031, !1032, !1035, !1036, !1233, !1791, !2290, !2291, !2292, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2462, !2465, !2466, !2467, !2476, !2477, !2478, !2479}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1023, file: !18, line: 642, baseType: !1026, size: 16)
!1026 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !113, line: 24, baseType: !192)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1023, file: !18, line: 643, baseType: !192, size: 16, offset: 16)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1023, file: !18, line: 644, baseType: !752, size: 32, offset: 32)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1023, file: !18, line: 645, baseType: !112, size: 128, offset: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1023, file: !18, line: 646, baseType: !770, size: 32, offset: 192)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1023, file: !18, line: 647, baseType: !5, size: 32, offset: 224)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1023, file: !18, line: 650, baseType: !1033, size: 64, offset: 256)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !18, line: 607, flags: DIFlagFwdDecl)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1023, file: !18, line: 651, baseType: !1033, size: 64, offset: 320)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1023, file: !18, line: 654, baseType: !1037, size: 64, offset: 384)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1039)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !18, line: 1966, size: 2048, align: 512, elements: !1040)
!1040 = !{!1041, !1045, !1058, !1064, !1068, !1072, !1076, !1080, !1084, !1088, !1092, !1093, !1099, !1103, !1140, !1171, !1181, !1187, !1191, !1195, !1199, !1203, !1207, !1213, !1217}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1039, file: !18, line: 1967, baseType: !1042, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!987, !1022, !987, !5}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1039, file: !18, line: 1968, baseType: !1046, size: 64, offset: 64)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!236, !987, !1022, !1049}
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1051, line: 10, size: 128, elements: !1052)
!1051 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!1052 = !{!1053, !1057}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1050, file: !1051, line: 11, baseType: !1054, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{null, !105}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1050, file: !1051, line: 12, baseType: !105, size: 64, offset: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1039, file: !18, line: 1969, baseType: !1059, size: 64, offset: 128)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{!106, !1062, !1022, !106}
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !785, line: 42, flags: DIFlagFwdDecl)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1039, file: !18, line: 1970, baseType: !1065, size: 64, offset: 192)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!1033, !1022, !106, !272}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1039, file: !18, line: 1972, baseType: !1069, size: 64, offset: 256)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{!106, !987, !876, !106}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1039, file: !18, line: 1974, baseType: !1073, size: 64, offset: 320)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{!106, !1062, !1022, !987, !1026, !272}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1039, file: !18, line: 1976, baseType: !1077, size: 64, offset: 384)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!106, !987, !1022, !987}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1039, file: !18, line: 1977, baseType: !1081, size: 64, offset: 448)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{!106, !1022, !987}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1039, file: !18, line: 1978, baseType: !1085, size: 64, offset: 512)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!106, !1062, !1022, !987, !236}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1039, file: !18, line: 1980, baseType: !1089, size: 64, offset: 576)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!106, !1062, !1022, !987, !1026}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1039, file: !18, line: 1982, baseType: !1081, size: 64, offset: 640)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1039, file: !18, line: 1983, baseType: !1094, size: 64, offset: 704)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!106, !1062, !1022, !987, !1026, !1097}
!1097 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !113, line: 21, baseType: !1098)
!1098 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !113, line: 18, baseType: !322)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1039, file: !18, line: 1985, baseType: !1100, size: 64, offset: 768)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{!106, !1062, !1022, !987, !1022, !987, !5}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1039, file: !18, line: 1987, baseType: !1104, size: 64, offset: 832)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{!106, !1062, !987, !1107}
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !18, line: 226, size: 640, elements: !1109)
!1109 = !{!1110, !1111, !1112, !1122, !1131, !1132, !1137, !1138, !1139}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1108, file: !18, line: 227, baseType: !5, size: 32)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1108, file: !18, line: 228, baseType: !1026, size: 16, offset: 32)
!1112 = !DIDerivedType(tag: DW_TAG_member, scope: !1108, file: !18, line: 241, baseType: !1113, size: 32, offset: 64)
!1113 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1108, file: !18, line: 241, size: 32, elements: !1114)
!1114 = !{!1115, !1116}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1113, file: !18, line: 242, baseType: !752, size: 32)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1113, file: !18, line: 243, baseType: !1117, size: 32)
!1117 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1118, line: 16, baseType: !1119)
!1118 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1118, line: 14, size: 32, elements: !1120)
!1120 = !{!1121}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1119, file: !1118, line: 15, baseType: !757, size: 32)
!1122 = !DIDerivedType(tag: DW_TAG_member, scope: !1108, file: !18, line: 245, baseType: !1123, size: 32, offset: 96)
!1123 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1108, file: !18, line: 245, size: 32, elements: !1124)
!1124 = !{!1125, !1126}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1123, file: !18, line: 246, baseType: !770, size: 32)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1123, file: !18, line: 247, baseType: !1127, size: 32)
!1127 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1118, line: 20, baseType: !1128)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1118, line: 18, size: 32, elements: !1129)
!1129 = !{!1130}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1128, file: !1118, line: 19, baseType: !774, size: 32)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1108, file: !18, line: 249, baseType: !690, size: 64, offset: 128)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1108, file: !18, line: 250, baseType: !1133, size: 128, offset: 192)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !828, line: 13, size: 128, elements: !1134)
!1134 = !{!1135, !1136}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1133, file: !828, line: 14, baseType: !827, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1133, file: !828, line: 15, baseType: !144, size: 64, offset: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1108, file: !18, line: 251, baseType: !1133, size: 128, offset: 320)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1108, file: !18, line: 252, baseType: !1133, size: 128, offset: 448)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1108, file: !18, line: 259, baseType: !656, size: 64, offset: 576)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1039, file: !18, line: 1988, baseType: !1141, size: 64, offset: 896)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!106, !1062, !1144, !1146, !322, !5}
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !978)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1148, line: 22, size: 1280, elements: !1149)
!1148 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1149 = !{!1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1147, file: !1148, line: 23, baseType: !322, size: 32)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1147, file: !1148, line: 24, baseType: !1026, size: 16, offset: 32)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1147, file: !1148, line: 25, baseType: !5, size: 32, offset: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1147, file: !1148, line: 26, baseType: !835, size: 32, offset: 96)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1147, file: !1148, line: 27, baseType: !380, size: 64, offset: 128)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1147, file: !1148, line: 28, baseType: !380, size: 64, offset: 192)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1147, file: !1148, line: 41, baseType: !380, size: 64, offset: 256)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1147, file: !1148, line: 42, baseType: !1097, size: 32, offset: 320)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1147, file: !1148, line: 43, baseType: !1097, size: 32, offset: 352)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1147, file: !1148, line: 44, baseType: !752, size: 32, offset: 384)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1147, file: !1148, line: 45, baseType: !770, size: 32, offset: 416)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1147, file: !1148, line: 46, baseType: !690, size: 64, offset: 448)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1147, file: !1148, line: 47, baseType: !1133, size: 128, offset: 512)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1147, file: !1148, line: 48, baseType: !1133, size: 128, offset: 640)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1147, file: !1148, line: 49, baseType: !1133, size: 128, offset: 768)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1147, file: !1148, line: 50, baseType: !1133, size: 128, offset: 896)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1147, file: !1148, line: 51, baseType: !380, size: 64, offset: 1024)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1147, file: !1148, line: 52, baseType: !380, size: 64, offset: 1088)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1147, file: !1148, line: 53, baseType: !322, size: 32, offset: 1152)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1147, file: !1148, line: 54, baseType: !322, size: 32, offset: 1184)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1147, file: !1148, line: 55, baseType: !380, size: 64, offset: 1216)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1039, file: !18, line: 1990, baseType: !1172, size: 64, offset: 960)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{!1175, !987, !876, !1178}
!1175 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !113, line: 66, baseType: !1176)
!1176 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !495, line: 73, baseType: !1177)
!1177 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !495, line: 15, baseType: !144)
!1178 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !113, line: 61, baseType: !1179)
!1179 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !495, line: 72, baseType: !1180)
!1180 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !495, line: 16, baseType: !107)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1039, file: !18, line: 1991, baseType: !1182, size: 64, offset: 1024)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!106, !1022, !1185, !380, !380}
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !18, line: 55, flags: DIFlagFwdDecl)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1039, file: !18, line: 1993, baseType: !1188, size: 64, offset: 1088)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{!106, !1022, !106}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1039, file: !18, line: 1994, baseType: !1192, size: 64, offset: 1152)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{!106, !1022, !987, !656, !5, !1026}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1039, file: !18, line: 1997, baseType: !1196, size: 64, offset: 1216)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{!106, !1062, !1022, !656, !1026}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1039, file: !18, line: 1999, baseType: !1200, size: 64, offset: 1280)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DISubroutineType(types: !1202)
!1202 = !{!1033, !1062, !987, !106}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1039, file: !18, line: 2001, baseType: !1204, size: 64, offset: 1344)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{!106, !1062, !987, !1033, !106}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1039, file: !18, line: 2003, baseType: !1208, size: 64, offset: 1408)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!106, !1062, !987, !1211}
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !18, line: 76, flags: DIFlagFwdDecl)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1039, file: !18, line: 2005, baseType: !1214, size: 64, offset: 1472)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{!106, !987, !1211}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1039, file: !18, line: 2006, baseType: !1218, size: 64, offset: 1536)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{!1221, !1022}
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !18, line: 3192, size: 192, elements: !1223)
!1223 = !{!1224, !1232}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1222, file: !18, line: 3193, baseType: !1225, size: 128)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1226, line: 296, size: 128, elements: !1227)
!1226 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1227 = !{!1228, !1229, !1231}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1225, file: !1226, line: 297, baseType: !152, size: 32)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1225, file: !1226, line: 299, baseType: !1230, size: 32, offset: 32)
!1230 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !113, line: 154, baseType: !5)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1225, file: !1226, line: 300, baseType: !105, size: 64, offset: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1222, file: !18, line: 3194, baseType: !322, size: 32, offset: 128)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1023, file: !18, line: 655, baseType: !1234, size: 64, offset: 448)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !18, line: 1190, size: 10752, elements: !1236)
!1236 = !{!1237, !1238, !1239, !1240, !1241, !1242, !1283, !1420, !1460, !1543, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1560, !1564, !1565, !1568, !1571, !1574, !1577, !1578, !1579, !1620, !1647, !1648, !1649, !1650, !1651, !1652, !1655, !1659, !1668, !1669, !1670, !1671, !1730, !1745, !1746, !1747, !1748, !1751, !1755, !1756, !1757, !1772, !1773, !1774, !1785, !1786, !1787, !1788, !1789, !1790}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1235, file: !18, line: 1191, baseType: !112, size: 128)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1235, file: !18, line: 1192, baseType: !1097, size: 32, offset: 128)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1235, file: !18, line: 1193, baseType: !184, size: 8, offset: 160)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1235, file: !18, line: 1194, baseType: !107, size: 64, offset: 192)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1235, file: !18, line: 1195, baseType: !690, size: 64, offset: 256)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1235, file: !18, line: 1196, baseType: !1243, size: 64, offset: 320)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !18, line: 2366, size: 576, elements: !1245)
!1245 = !{!1246, !1247, !1248, !1254, !1258, !1262, !1266, !1270, !1271, !1272, !1275, !1276, !1277, !1279, !1280, !1281, !1282}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1244, file: !18, line: 2367, baseType: !236, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1244, file: !18, line: 2368, baseType: !106, size: 32, offset: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1244, file: !18, line: 2376, baseType: !1249, size: 64, offset: 128)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{!106, !1252}
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !984, line: 21, flags: DIFlagFwdDecl)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1244, file: !18, line: 2377, baseType: !1255, size: 64, offset: 192)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1257)
!1257 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !18, line: 75, flags: DIFlagFwdDecl)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1244, file: !18, line: 2378, baseType: !1259, size: 64, offset: 256)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!987, !1243, !106, !236, !105}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1244, file: !18, line: 2380, baseType: !1263, size: 64, offset: 320)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{null, !1234}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1244, file: !18, line: 2381, baseType: !1267, size: 64, offset: 384)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1269, line: 348, flags: DIFlagFwdDecl)
!1269 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1244, file: !18, line: 2382, baseType: !1243, size: 64, offset: 448)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1244, file: !18, line: 2383, baseType: !728, size: 64, offset: 512)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1244, file: !18, line: 2385, baseType: !1273, offset: 576)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1274, line: 206, elements: !649)
!1274 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1244, file: !18, line: 2386, baseType: !1273, offset: 576)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1244, file: !18, line: 2387, baseType: !1273, offset: 576)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1244, file: !18, line: 2388, baseType: !1278, offset: 576)
!1278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1273, elements: !716)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1244, file: !18, line: 2390, baseType: !1273, offset: 576)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1244, file: !18, line: 2391, baseType: !1273, offset: 576)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1244, file: !18, line: 2392, baseType: !1273, offset: 576)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1244, file: !18, line: 2393, baseType: !1273, offset: 576)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1235, file: !18, line: 1197, baseType: !1284, size: 64, offset: 384)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1286)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !18, line: 2057, size: 1664, elements: !1287)
!1287 = !{!1288, !1292, !1296, !1297, !1301, !1307, !1311, !1312, !1313, !1317, !1321, !1325, !1326, !1327, !1333, !1338, !1339, !1345, !1346, !1347, !1348, !1352, !1356, !1403, !1418, !1419}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1286, file: !18, line: 2058, baseType: !1289, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{!1022, !1234}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1286, file: !18, line: 2059, baseType: !1293, size: 64, offset: 64)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{null, !1022}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1286, file: !18, line: 2060, baseType: !1293, size: 64, offset: 128)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1286, file: !18, line: 2062, baseType: !1298, size: 64, offset: 192)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{null, !1022, !106}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1286, file: !18, line: 2063, baseType: !1302, size: 64, offset: 256)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!106, !1022, !1305}
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !18, line: 309, flags: DIFlagFwdDecl)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1286, file: !18, line: 2064, baseType: !1308, size: 64, offset: 320)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DISubroutineType(types: !1310)
!1310 = !{!106, !1022}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1286, file: !18, line: 2065, baseType: !1293, size: 64, offset: 384)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1286, file: !18, line: 2066, baseType: !1263, size: 64, offset: 448)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1286, file: !18, line: 2067, baseType: !1314, size: 64, offset: 512)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = !DISubroutineType(types: !1316)
!1316 = !{!106, !1234, !106}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1286, file: !18, line: 2068, baseType: !1318, size: 64, offset: 576)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = !DISubroutineType(types: !1320)
!1320 = !{!106, !1234, !17}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1286, file: !18, line: 2069, baseType: !1322, size: 64, offset: 640)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1323 = !DISubroutineType(types: !1324)
!1324 = !{!106, !1234}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1286, file: !18, line: 2070, baseType: !1318, size: 64, offset: 704)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1286, file: !18, line: 2071, baseType: !1322, size: 64, offset: 768)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1286, file: !18, line: 2072, baseType: !1328, size: 64, offset: 832)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!106, !987, !1331}
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !18, line: 62, flags: DIFlagFwdDecl)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1286, file: !18, line: 2073, baseType: !1334, size: 64, offset: 896)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = !DISubroutineType(types: !1336)
!1336 = !{!106, !1234, !1337, !876}
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1286, file: !18, line: 2074, baseType: !1263, size: 64, offset: 960)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1286, file: !18, line: 2076, baseType: !1340, size: 64, offset: 1024)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = !DISubroutineType(types: !1342)
!1342 = !{!106, !1343, !987}
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !313, line: 66, flags: DIFlagFwdDecl)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1286, file: !18, line: 2077, baseType: !1340, size: 64, offset: 1088)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1286, file: !18, line: 2078, baseType: !1340, size: 64, offset: 1152)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1286, file: !18, line: 2079, baseType: !1340, size: 64, offset: 1216)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1286, file: !18, line: 2081, baseType: !1349, size: 64, offset: 1280)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!1175, !1234, !106, !876, !1178, !690}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1286, file: !18, line: 2082, baseType: !1353, size: 64, offset: 1344)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{!1175, !1234, !106, !236, !1178, !690}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1286, file: !18, line: 2083, baseType: !1357, size: 64, offset: 1408)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = !DISubroutineType(types: !1359)
!1359 = !{!1360, !1022}
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !23, line: 296, size: 1664, elements: !1363)
!1363 = !{!1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1388, !1389, !1390}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1362, file: !23, line: 297, baseType: !732, size: 128)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1362, file: !23, line: 298, baseType: !112, size: 128, offset: 128)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1362, file: !23, line: 299, baseType: !112, size: 128, offset: 256)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1362, file: !23, line: 300, baseType: !112, size: 128, offset: 384)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1362, file: !23, line: 301, baseType: !678, size: 256, offset: 512)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1362, file: !23, line: 302, baseType: !152, size: 32, offset: 768)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1362, file: !23, line: 303, baseType: !172, size: 32, offset: 800)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1362, file: !23, line: 304, baseType: !1234, size: 64, offset: 832)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1362, file: !23, line: 305, baseType: !1373, size: 64, offset: 896)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !23, line: 68, size: 64, elements: !1374)
!1374 = !{!1375, !1387}
!1375 = !DIDerivedType(tag: DW_TAG_member, scope: !1373, file: !23, line: 69, baseType: !1376, size: 32)
!1376 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1373, file: !23, line: 69, size: 32, elements: !1377)
!1377 = !{!1378, !1379, !1380}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1376, file: !23, line: 70, baseType: !752, size: 32)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1376, file: !23, line: 71, baseType: !770, size: 32)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1376, file: !23, line: 72, baseType: !1381, size: 32)
!1381 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1382, line: 24, baseType: !1383)
!1382 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1382, line: 22, size: 32, elements: !1384)
!1384 = !{!1385}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1383, file: !1382, line: 23, baseType: !1386, size: 32)
!1386 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1382, line: 20, baseType: !758)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1373, file: !23, line: 74, baseType: !22, size: 32, offset: 32)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1362, file: !23, line: 306, baseType: !690, size: 64, offset: 960)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1362, file: !23, line: 307, baseType: !107, size: 64, offset: 1024)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1362, file: !23, line: 308, baseType: !1391, size: 576, offset: 1088)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !23, line: 205, size: 576, elements: !1392)
!1392 = !{!1393, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1391, file: !23, line: 206, baseType: !1394, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !23, line: 66, baseType: !232)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1391, file: !23, line: 207, baseType: !1394, size: 64, offset: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1391, file: !23, line: 208, baseType: !1394, size: 64, offset: 128)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1391, file: !23, line: 209, baseType: !1394, size: 64, offset: 192)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1391, file: !23, line: 210, baseType: !1394, size: 64, offset: 256)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1391, file: !23, line: 211, baseType: !1394, size: 64, offset: 320)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1391, file: !23, line: 212, baseType: !1394, size: 64, offset: 384)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1391, file: !23, line: 213, baseType: !827, size: 64, offset: 448)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1391, file: !23, line: 214, baseType: !827, size: 64, offset: 512)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1286, file: !18, line: 2085, baseType: !1404, size: 64, offset: 1472)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DISubroutineType(types: !1406)
!1406 = !{!144, !1234, !1407}
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1409, line: 15, size: 256, elements: !1410)
!1409 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1410 = !{!1411, !1412, !1413, !1414, !1415}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1408, file: !1409, line: 16, baseType: !1230, size: 32)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1408, file: !1409, line: 19, baseType: !106, size: 32, offset: 32)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1408, file: !1409, line: 26, baseType: !107, size: 64, offset: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1408, file: !1409, line: 33, baseType: !107, size: 64, offset: 128)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1408, file: !1409, line: 36, baseType: !1416, size: 64, offset: 192)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !37, line: 33, flags: DIFlagFwdDecl)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1286, file: !18, line: 2087, baseType: !1404, size: 64, offset: 1536)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1286, file: !18, line: 2089, baseType: !1263, size: 64, offset: 1600)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1235, file: !18, line: 1198, baseType: !1421, size: 64, offset: 448)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1423)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !23, line: 324, size: 704, elements: !1424)
!1424 = !{!1425, !1429, !1433, !1437, !1438, !1439, !1440, !1441, !1446, !1451, !1455}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1423, file: !23, line: 325, baseType: !1426, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = !DISubroutineType(types: !1428)
!1428 = !{!106, !1361}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1423, file: !23, line: 326, baseType: !1430, size: 64, offset: 64)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{!1361, !1234, !106}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1423, file: !23, line: 327, baseType: !1434, size: 64, offset: 128)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = !DISubroutineType(types: !1436)
!1436 = !{null, !1361}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1423, file: !23, line: 328, baseType: !1426, size: 64, offset: 192)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1423, file: !23, line: 329, baseType: !1426, size: 64, offset: 256)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1423, file: !23, line: 330, baseType: !1426, size: 64, offset: 320)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1423, file: !23, line: 331, baseType: !1314, size: 64, offset: 384)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1423, file: !23, line: 334, baseType: !1442, size: 64, offset: 448)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{!1445, !1022}
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1423, file: !23, line: 335, baseType: !1447, size: 64, offset: 512)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{!106, !1022, !1450}
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1423, file: !23, line: 337, baseType: !1452, size: 64, offset: 576)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{!106, !1022, !1445}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1423, file: !23, line: 339, baseType: !1456, size: 64, offset: 640)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{!106, !1234, !1459}
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1235, file: !18, line: 1199, baseType: !1461, size: 64, offset: 512)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1463)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !23, line: 430, size: 704, elements: !1464)
!1464 = !{!1465, !1469, !1470, !1474, !1475, !1476, !1491, !1514, !1518, !1519, !1542}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1463, file: !23, line: 431, baseType: !1466, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = !DISubroutineType(types: !1468)
!1468 = !{!106, !1234, !106, !106, !1144}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1463, file: !23, line: 432, baseType: !1314, size: 64, offset: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1463, file: !23, line: 433, baseType: !1471, size: 64, offset: 128)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = !DISubroutineType(types: !1473)
!1473 = !{!106, !1234, !5}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1463, file: !23, line: 434, baseType: !1471, size: 64, offset: 192)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1463, file: !23, line: 435, baseType: !1314, size: 64, offset: 256)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1463, file: !23, line: 436, baseType: !1477, size: 64, offset: 320)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{!106, !1234, !106, !1480}
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !23, line: 417, size: 256, elements: !1482)
!1482 = !{!1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1481, file: !23, line: 418, baseType: !106, size: 32)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1481, file: !23, line: 419, baseType: !5, size: 32, offset: 32)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1481, file: !23, line: 420, baseType: !5, size: 32, offset: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1481, file: !23, line: 422, baseType: !5, size: 32, offset: 96)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1481, file: !23, line: 423, baseType: !5, size: 32, offset: 128)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1481, file: !23, line: 424, baseType: !5, size: 32, offset: 160)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1481, file: !23, line: 425, baseType: !5, size: 32, offset: 192)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1481, file: !23, line: 426, baseType: !5, size: 32, offset: 224)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1463, file: !23, line: 437, baseType: !1492, size: 64, offset: 384)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DISubroutineType(types: !1494)
!1494 = !{!106, !1234, !1373, !1495}
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !23, line: 345, size: 960, elements: !1497)
!1497 = !{!1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1496, file: !23, line: 346, baseType: !106, size: 32)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1496, file: !23, line: 347, baseType: !380, size: 64, offset: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1496, file: !23, line: 348, baseType: !380, size: 64, offset: 128)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1496, file: !23, line: 349, baseType: !380, size: 64, offset: 192)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1496, file: !23, line: 350, baseType: !380, size: 64, offset: 256)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1496, file: !23, line: 351, baseType: !380, size: 64, offset: 320)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1496, file: !23, line: 352, baseType: !380, size: 64, offset: 384)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1496, file: !23, line: 353, baseType: !230, size: 64, offset: 448)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1496, file: !23, line: 355, baseType: !230, size: 64, offset: 512)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1496, file: !23, line: 356, baseType: !106, size: 32, offset: 576)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1496, file: !23, line: 357, baseType: !106, size: 32, offset: 608)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1496, file: !23, line: 358, baseType: !380, size: 64, offset: 640)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1496, file: !23, line: 359, baseType: !380, size: 64, offset: 704)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1496, file: !23, line: 360, baseType: !380, size: 64, offset: 768)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1496, file: !23, line: 361, baseType: !230, size: 64, offset: 832)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1496, file: !23, line: 362, baseType: !106, size: 32, offset: 896)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1463, file: !23, line: 438, baseType: !1515, size: 64, offset: 448)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DISubroutineType(types: !1517)
!1517 = !{!106, !1234, !1459, !1495}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1463, file: !23, line: 440, baseType: !1492, size: 64, offset: 512)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1463, file: !23, line: 441, baseType: !1520, size: 64, offset: 576)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DISubroutineType(types: !1522)
!1522 = !{!106, !1234, !1523}
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !23, line: 411, size: 1408, elements: !1525)
!1525 = !{!1526, !1527}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1524, file: !23, line: 412, baseType: !5, size: 32)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1524, file: !23, line: 413, baseType: !1528, size: 1344, offset: 64)
!1528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1529, size: 1344, elements: !716)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !23, line: 397, size: 448, elements: !1530)
!1530 = !{!1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1541}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1529, file: !23, line: 398, baseType: !5, size: 32)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1529, file: !23, line: 399, baseType: !5, size: 32, offset: 32)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1529, file: !23, line: 401, baseType: !5, size: 32, offset: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1529, file: !23, line: 402, baseType: !5, size: 32, offset: 96)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1529, file: !23, line: 403, baseType: !5, size: 32, offset: 128)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1529, file: !23, line: 404, baseType: !5, size: 32, offset: 160)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1529, file: !23, line: 405, baseType: !5, size: 32, offset: 192)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1529, file: !23, line: 406, baseType: !382, size: 64, offset: 256)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1529, file: !23, line: 407, baseType: !1540, size: 64, offset: 320)
!1540 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !113, line: 132, baseType: !380)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1529, file: !23, line: 408, baseType: !1540, size: 64, offset: 384)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1463, file: !23, line: 442, baseType: !1471, size: 64, offset: 640)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1235, file: !18, line: 1200, baseType: !1544, size: 64, offset: 576)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1546)
!1546 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !18, line: 54, flags: DIFlagFwdDecl)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1235, file: !18, line: 1201, baseType: !107, size: 64, offset: 640)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1235, file: !18, line: 1202, baseType: !107, size: 64, offset: 704)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1235, file: !18, line: 1203, baseType: !107, size: 64, offset: 768)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1235, file: !18, line: 1204, baseType: !987, size: 64, offset: 832)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1235, file: !18, line: 1205, baseType: !811, size: 320, offset: 896)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1235, file: !18, line: 1206, baseType: !106, size: 32, offset: 1216)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1235, file: !18, line: 1207, baseType: !172, size: 32, offset: 1248)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1235, file: !18, line: 1209, baseType: !105, size: 64, offset: 1280)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1235, file: !18, line: 1211, baseType: !1556, size: 64, offset: 1344)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1559)
!1559 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !18, line: 1211, flags: DIFlagFwdDecl)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1235, file: !18, line: 1223, baseType: !1561, size: 64, offset: 1408)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !999, line: 34, size: 64, elements: !1562)
!1562 = !{!1563}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1561, file: !999, line: 35, baseType: !1002, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1235, file: !18, line: 1224, baseType: !112, size: 128, offset: 1472)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1235, file: !18, line: 1225, baseType: !1566, size: 64, offset: 1600)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !18, line: 1225, flags: DIFlagFwdDecl)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1235, file: !18, line: 1226, baseType: !1569, size: 64, offset: 1664)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !18, line: 1226, flags: DIFlagFwdDecl)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1235, file: !18, line: 1227, baseType: !1572, size: 64, offset: 1728)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !18, line: 50, flags: DIFlagFwdDecl)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1235, file: !18, line: 1228, baseType: !1575, size: 64, offset: 1792)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !18, line: 1228, flags: DIFlagFwdDecl)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1235, file: !18, line: 1229, baseType: !732, size: 128, offset: 1856)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1235, file: !18, line: 1230, baseType: !5, size: 32, offset: 1984)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1235, file: !18, line: 1231, baseType: !1580, size: 2496, offset: 2048)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !23, line: 521, size: 2496, elements: !1581)
!1581 = !{!1582, !1583, !1584, !1586, !1618}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1580, file: !23, line: 522, baseType: !5, size: 32)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1580, file: !23, line: 523, baseType: !811, size: 320, offset: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1580, file: !23, line: 524, baseType: !1585, size: 192, offset: 384)
!1585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1022, size: 192, elements: !716)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1580, file: !23, line: 525, baseType: !1587, size: 1728, offset: 576)
!1587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1588, size: 1728, elements: !716)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !23, line: 222, size: 576, elements: !1589)
!1589 = !{!1590, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1588, file: !23, line: 223, baseType: !1591, size: 64)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !23, line: 445, size: 256, elements: !1593)
!1593 = !{!1594, !1595, !1608, !1609}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1592, file: !23, line: 446, baseType: !106, size: 32)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1592, file: !23, line: 447, baseType: !1596, size: 64, offset: 64)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1598)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !23, line: 312, size: 512, elements: !1599)
!1599 = !{!1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1598, file: !23, line: 313, baseType: !1314, size: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1598, file: !23, line: 314, baseType: !1314, size: 64, offset: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1598, file: !23, line: 315, baseType: !1314, size: 64, offset: 128)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1598, file: !23, line: 316, baseType: !1314, size: 64, offset: 192)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1598, file: !23, line: 317, baseType: !1426, size: 64, offset: 256)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1598, file: !23, line: 318, baseType: !1426, size: 64, offset: 320)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1598, file: !23, line: 319, baseType: !1426, size: 64, offset: 384)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1598, file: !23, line: 320, baseType: !1456, size: 64, offset: 448)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1592, file: !23, line: 448, baseType: !1267, size: 64, offset: 128)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1592, file: !23, line: 449, baseType: !1591, size: 64, offset: 192)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1588, file: !23, line: 224, baseType: !106, size: 32, offset: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1588, file: !23, line: 226, baseType: !112, size: 128, offset: 128)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1588, file: !23, line: 227, baseType: !107, size: 64, offset: 256)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1588, file: !23, line: 228, baseType: !5, size: 32, offset: 320)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1588, file: !23, line: 229, baseType: !5, size: 32, offset: 352)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1588, file: !23, line: 230, baseType: !1394, size: 64, offset: 384)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1588, file: !23, line: 231, baseType: !1394, size: 64, offset: 448)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1588, file: !23, line: 232, baseType: !105, size: 64, offset: 512)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1580, file: !23, line: 526, baseType: !1619, size: 192, offset: 2304)
!1619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1596, size: 192, elements: !716)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1235, file: !18, line: 1233, baseType: !1621, size: 2368, offset: 4544)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !18, line: 1184, size: 2368, elements: !1622)
!1622 = !{!1623, !1624, !1625}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1621, file: !18, line: 1185, baseType: !192, size: 16)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1621, file: !18, line: 1186, baseType: !192, size: 16, offset: 16)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1621, file: !18, line: 1187, baseType: !1626, size: 2304, offset: 64)
!1626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1627, size: 2304, elements: !716)
!1627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1628, line: 12, size: 768, elements: !1629)
!1628 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1629 = !{!1630, !1638, !1640, !1645, !1646}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1627, file: !1628, line: 13, baseType: !1631, size: 384)
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1632, line: 17, size: 384, elements: !1633)
!1632 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1633 = !{!1634, !1635, !1636, !1637}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1631, file: !1632, line: 18, baseType: !106, size: 32)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1631, file: !1632, line: 19, baseType: !106, size: 32, offset: 32)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1631, file: !1632, line: 20, baseType: !299, size: 192, offset: 64)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1631, file: !1632, line: 22, baseType: !664, size: 128, align: 64, offset: 256)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1627, file: !1628, line: 14, baseType: !1639, size: 64, offset: 384)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1627, file: !1628, line: 15, baseType: !1641, size: 64, offset: 448)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1642, line: 16, size: 64, elements: !1643)
!1642 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1643 = !{!1644}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1641, file: !1642, line: 17, baseType: !311, size: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1627, file: !1628, line: 16, baseType: !299, size: 192, offset: 512)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1627, file: !1628, line: 17, baseType: !172, size: 32, offset: 704)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1235, file: !18, line: 1240, baseType: !105, size: 64, offset: 6912)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1235, file: !18, line: 1243, baseType: !322, size: 32, offset: 6976)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1235, file: !18, line: 1245, baseType: !827, size: 64, offset: 7040)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1235, file: !18, line: 1246, baseType: !827, size: 64, offset: 7104)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1235, file: !18, line: 1248, baseType: !323, size: 32, offset: 7168)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1235, file: !18, line: 1249, baseType: !1653, size: 64, offset: 7232)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !18, line: 634, flags: DIFlagFwdDecl)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1235, file: !18, line: 1252, baseType: !1656, size: 256, offset: 7296)
!1656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, size: 256, elements: !1657)
!1657 = !{!1658}
!1658 = !DISubrange(count: 32)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1235, file: !18, line: 1253, baseType: !1660, size: 128, offset: 7552)
!1660 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !1661, line: 21, baseType: !1662)
!1661 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1661, line: 19, size: 128, elements: !1663)
!1663 = !{!1664}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1662, file: !1661, line: 20, baseType: !1665, size: 128)
!1665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 128, elements: !1666)
!1666 = !{!1667}
!1667 = !DISubrange(count: 16)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1235, file: !18, line: 1255, baseType: !5, size: 32, offset: 7680)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1235, file: !18, line: 1261, baseType: !678, size: 256, offset: 7744)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1235, file: !18, line: 1267, baseType: !236, size: 64, offset: 8000)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1235, file: !18, line: 1269, baseType: !1672, size: 64, offset: 8064)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1674)
!1674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !989, line: 128, size: 1024, align: 512, elements: !1675)
!1675 = !{!1676, !1680, !1681, !1688, !1694, !1698, !1702, !1706, !1707, !1711, !1715, !1720, !1724}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !1674, file: !989, line: 129, baseType: !1677, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{!106, !987, !5}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !1674, file: !989, line: 130, baseType: !1677, size: 64, offset: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1674, file: !989, line: 131, baseType: !1682, size: 64, offset: 128)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!106, !1685, !1687}
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !988)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !1674, file: !989, line: 132, baseType: !1689, size: 64, offset: 192)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DISubroutineType(types: !1691)
!1691 = !{!106, !1685, !5, !236, !1692}
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1007)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !1674, file: !989, line: 134, baseType: !1695, size: 64, offset: 256)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{!106, !1685}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !1674, file: !989, line: 135, baseType: !1699, size: 64, offset: 320)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{!106, !987}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !1674, file: !989, line: 136, baseType: !1703, size: 64, offset: 384)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{null, !987}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !1674, file: !989, line: 137, baseType: !1703, size: 64, offset: 448)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !1674, file: !989, line: 138, baseType: !1708, size: 64, offset: 512)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{null, !987, !1022}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !1674, file: !989, line: 139, baseType: !1712, size: 64, offset: 576)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{!876, !987, !876, !106}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !1674, file: !989, line: 140, baseType: !1716, size: 64, offset: 640)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{!982, !1719}
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !1674, file: !989, line: 141, baseType: !1721, size: 64, offset: 704)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{!106, !1144, !272}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !1674, file: !989, line: 142, baseType: !1725, size: 64, offset: 768)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{!987, !987, !1728}
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1023)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1235, file: !18, line: 1271, baseType: !1731, size: 448, offset: 8128)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1409, line: 63, size: 448, elements: !1732)
!1732 = !{!1733, !1738, !1739, !1740, !1741, !1742, !1743}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !1731, file: !1409, line: 64, baseType: !1734, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DISubroutineType(types: !1736)
!1736 = !{!107, !1737, !1407}
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !1731, file: !1409, line: 66, baseType: !1734, size: 64, offset: 64)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !1731, file: !1409, line: 69, baseType: !144, size: 64, offset: 128)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !1731, file: !1409, line: 70, baseType: !106, size: 32, offset: 192)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1731, file: !1409, line: 71, baseType: !5, size: 32, offset: 224)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1731, file: !1409, line: 74, baseType: !112, size: 128, offset: 256)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !1731, file: !1409, line: 85, baseType: !1744, size: 64, offset: 384)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1235, file: !18, line: 1274, baseType: !224, size: 64, offset: 8576)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1235, file: !18, line: 1280, baseType: !224, size: 64, offset: 8640)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1235, file: !18, line: 1283, baseType: !106, size: 32, offset: 8704)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1235, file: !18, line: 1286, baseType: !1749, size: 32, offset: 8736)
!1749 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1750, line: 8, baseType: !322)
!1750 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1235, file: !18, line: 1289, baseType: !1752, size: 64, offset: 8768)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1754, line: 18, flags: DIFlagFwdDecl)
!1754 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1235, file: !18, line: 1290, baseType: !728, size: 64, offset: 8832)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1235, file: !18, line: 1297, baseType: !949, size: 64, offset: 8896)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1235, file: !18, line: 1304, baseType: !1758, size: 64, offset: 8960)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !1759, line: 49, size: 64, elements: !1760)
!1759 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!1760 = !{!1761}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1758, file: !1759, line: 50, baseType: !1762, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !1759, line: 41, size: 512, align: 512, elements: !1764)
!1764 = !{!1765, !1766, !1771}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1763, file: !1759, line: 43, baseType: !152, size: 32)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1763, file: !1759, line: 45, baseType: !1767, size: 192, offset: 64)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !1759, line: 29, size: 192, elements: !1768)
!1768 = !{!1769, !1770}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1767, file: !1759, line: 30, baseType: !112, size: 128)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1767, file: !1759, line: 32, baseType: !144, size: 64, offset: 128)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1763, file: !1759, line: 46, baseType: !144, size: 64, offset: 256)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1235, file: !18, line: 1305, baseType: !1758, size: 64, offset: 9024)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1235, file: !18, line: 1306, baseType: !664, size: 128, align: 64, offset: 9088)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1235, file: !18, line: 1307, baseType: !1775, size: 256, offset: 9216)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1754, line: 98, size: 256, elements: !1776)
!1776 = !{!1777, !1778, !1779}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1775, file: !1754, line: 99, baseType: !224, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1775, file: !1754, line: 100, baseType: !112, size: 128, offset: 64)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1775, file: !1754, line: 101, baseType: !1780, size: 64, offset: 192)
!1780 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1754, line: 21, baseType: !1781)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = !DISubroutineType(types: !1783)
!1783 = !{null, !1784}
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1235, file: !18, line: 1309, baseType: !678, size: 256, offset: 9472)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1235, file: !18, line: 1314, baseType: !106, size: 32, offset: 9728)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1235, file: !18, line: 1317, baseType: !152, size: 32, align: 512, offset: 10240)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1235, file: !18, line: 1318, baseType: !112, size: 128, offset: 10304)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1235, file: !18, line: 1320, baseType: !152, size: 32, offset: 10432)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1235, file: !18, line: 1321, baseType: !112, size: 128, offset: 10496)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1023, file: !18, line: 656, baseType: !1792, size: 64, offset: 512)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !18, line: 472, size: 1536, align: 64, elements: !1794)
!1794 = !{!1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !2284, !2285, !2286, !2287, !2288, !2289}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1793, file: !18, line: 473, baseType: !1022, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1793, file: !18, line: 474, baseType: !1225, size: 128, offset: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1793, file: !18, line: 475, baseType: !811, size: 320, offset: 192)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1793, file: !18, line: 476, baseType: !1230, size: 32, offset: 512)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1793, file: !18, line: 477, baseType: !172, size: 32, offset: 544)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1793, file: !18, line: 482, baseType: !511, size: 128, offset: 576)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1793, file: !18, line: 483, baseType: !107, size: 64, offset: 704)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1793, file: !18, line: 484, baseType: !107, size: 64, offset: 768)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1793, file: !18, line: 485, baseType: !1804, size: 64, offset: 832)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1806)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !18, line: 404, size: 1280, elements: !1807)
!1807 = !{!1808, !2109, !2179, !2183, !2187, !2193, !2199, !2203, !2208, !2212, !2216, !2220, !2248, !2252, !2256, !2260, !2265, !2269, !2276, !2280}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1806, file: !18, line: 405, baseType: !1809, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{!106, !1812, !1305}
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !37, line: 74, size: 512, align: 128, elements: !1814)
!1814 = !{!1815, !1816, !2103, !2108}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1813, file: !37, line: 75, baseType: !107, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_member, scope: !1813, file: !37, line: 83, baseType: !1817, size: 320, offset: 64)
!1817 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1813, file: !37, line: 83, size: 320, elements: !1818)
!1818 = !{!1819, !1840, !1854, !1858, !2102}
!1819 = !DIDerivedType(tag: DW_TAG_member, scope: !1817, file: !37, line: 84, baseType: !1820, size: 320)
!1820 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1817, file: !37, line: 84, size: 320, elements: !1821)
!1821 = !{!1822, !1833, !1834, !1839}
!1822 = !DIDerivedType(tag: DW_TAG_member, scope: !1820, file: !37, line: 90, baseType: !1823, size: 128)
!1823 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1820, file: !37, line: 90, size: 128, elements: !1824)
!1824 = !{!1825, !1826, !1831, !1832}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1823, file: !37, line: 91, baseType: !112, size: 128)
!1826 = !DIDerivedType(tag: DW_TAG_member, scope: !1823, file: !37, line: 94, baseType: !1827, size: 128)
!1827 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1823, file: !37, line: 94, size: 128, elements: !1828)
!1828 = !{!1829, !1830}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1827, file: !37, line: 96, baseType: !105, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1827, file: !37, line: 98, baseType: !5, size: 32, offset: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1823, file: !37, line: 102, baseType: !112, size: 128)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1823, file: !37, line: 103, baseType: !112, size: 128)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1820, file: !37, line: 106, baseType: !1792, size: 64, offset: 128)
!1834 = !DIDerivedType(tag: DW_TAG_member, scope: !1820, file: !37, line: 107, baseType: !1835, size: 64, offset: 192)
!1835 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1820, file: !37, line: 107, size: 64, elements: !1836)
!1836 = !{!1837, !1838}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1835, file: !37, line: 108, baseType: !107, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1835, file: !37, line: 109, baseType: !107, size: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1820, file: !37, line: 117, baseType: !107, size: 64, offset: 256)
!1840 = !DIDerivedType(tag: DW_TAG_member, scope: !1817, file: !37, line: 119, baseType: !1841, size: 320)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1817, file: !37, line: 119, size: 320, elements: !1842)
!1842 = !{!1843, !1844, !1847, !1848, !1849}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1841, file: !37, line: 124, baseType: !107, size: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1841, file: !37, line: 125, baseType: !1845, size: 64, offset: 64)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !37, line: 125, flags: DIFlagFwdDecl)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1841, file: !37, line: 126, baseType: !107, size: 64, offset: 128)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1841, file: !37, line: 127, baseType: !107, size: 64, offset: 192)
!1849 = !DIDerivedType(tag: DW_TAG_member, scope: !1841, file: !37, line: 128, baseType: !1850, size: 64, offset: 256)
!1850 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1841, file: !37, line: 128, size: 64, elements: !1851)
!1851 = !{!1852, !1853}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1850, file: !37, line: 133, baseType: !107, size: 64)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1850, file: !37, line: 138, baseType: !224, size: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, scope: !1817, file: !37, line: 141, baseType: !1855, size: 64)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1817, file: !37, line: 141, size: 64, elements: !1856)
!1856 = !{!1857}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1855, file: !37, line: 142, baseType: !107, size: 64)
!1858 = !DIDerivedType(tag: DW_TAG_member, scope: !1817, file: !37, line: 144, baseType: !1859, size: 128)
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1817, file: !37, line: 144, size: 128, elements: !1860)
!1860 = !{!1861, !2101}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1859, file: !37, line: 146, baseType: !1862, size: 64)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !29, line: 126, size: 1216, elements: !1864)
!1864 = !{!1865, !1875, !1896, !1907, !1908, !1909, !1910, !2083, !2084, !2085}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1863, file: !29, line: 127, baseType: !1866, size: 384)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !29, line: 21, size: 384, elements: !1867)
!1867 = !{!1868, !1869, !1871, !1872, !1873, !1874}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1866, file: !29, line: 22, baseType: !107, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1866, file: !29, line: 23, baseType: !1870, size: 64, offset: 64)
!1870 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1866, file: !29, line: 24, baseType: !1870, size: 64, offset: 128)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1866, file: !29, line: 25, baseType: !107, size: 64, offset: 192)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1866, file: !29, line: 26, baseType: !107, size: 64, offset: 256)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1866, file: !29, line: 27, baseType: !107, size: 64, offset: 320)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1863, file: !29, line: 128, baseType: !1876, size: 128, offset: 384)
!1876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1877, line: 105, size: 128, elements: !1878)
!1877 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1878 = !{!1879, !1880}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1876, file: !1877, line: 110, baseType: !107, size: 64)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1876, file: !1877, line: 118, baseType: !1881, size: 64, offset: 64)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1877, line: 95, size: 448, elements: !1883)
!1883 = !{!1884, !1885, !1891, !1892, !1893, !1894, !1895}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1882, file: !1877, line: 96, baseType: !224, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1882, file: !1877, line: 97, baseType: !1886, size: 64, offset: 64)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1877, line: 60, baseType: !1888)
!1888 = !DISubroutineType(types: !1889)
!1889 = !{null, !1890}
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1882, file: !1877, line: 98, baseType: !1886, size: 64, offset: 128)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1882, file: !1877, line: 99, baseType: !272, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1882, file: !1877, line: 100, baseType: !272, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1882, file: !1877, line: 101, baseType: !664, size: 128, align: 64, offset: 256)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1882, file: !1877, line: 102, baseType: !1890, size: 64, offset: 384)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1863, file: !29, line: 129, baseType: !1897, size: 256, offset: 512)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1898, line: 26, size: 256, elements: !1899)
!1898 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1899 = !{!1900, !1901}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1897, file: !1898, line: 27, baseType: !5, size: 32)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1897, file: !1898, line: 28, baseType: !1902, size: 192, offset: 64)
!1902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1903, line: 43, size: 192, elements: !1904)
!1903 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1904 = !{!1905, !1906}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1902, file: !1903, line: 44, baseType: !470, size: 32)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1902, file: !1903, line: 45, baseType: !112, size: 128, offset: 64)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1863, file: !29, line: 130, baseType: !28, size: 32, offset: 768)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1863, file: !29, line: 131, baseType: !5, size: 32, offset: 800)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1863, file: !29, line: 132, baseType: !107, size: 64, offset: 832)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1863, file: !29, line: 133, baseType: !1911, size: 64, offset: 896)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1913)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !29, line: 77, size: 192, elements: !1914)
!1914 = !{!1915, !1919, !2079}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1913, file: !29, line: 83, baseType: !1916, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{null, !1812}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1913, file: !29, line: 89, baseType: !1920, size: 64, offset: 64)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{!1923, !1924}
!1923 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !37, line: 1184, baseType: !5)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1926, line: 512, size: 896, elements: !1927)
!1926 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1927 = !{!1928, !2046, !2047, !2054, !2061, !2071, !2072, !2073, !2075, !2077}
!1928 = !DIDerivedType(tag: DW_TAG_member, scope: !1925, file: !1926, line: 513, baseType: !1929, size: 320)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1925, file: !1926, line: 513, size: 320, elements: !1930)
!1930 = !{!1931, !2042, !2043, !2044, !2045}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1929, file: !1926, line: 514, baseType: !1932, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !37, line: 625, size: 1344, elements: !1934)
!1934 = !{!1935, !1944, !1945, !1953, !1960, !1961, !1966, !1967, !1972, !1973, !1976, !2035, !2036, !2037, !2038, !2039, !2040}
!1935 = !DIDerivedType(tag: DW_TAG_member, scope: !1933, file: !37, line: 628, baseType: !1936, size: 128)
!1936 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1933, file: !37, line: 628, size: 128, elements: !1937)
!1937 = !{!1938, !1943}
!1938 = !DIDerivedType(tag: DW_TAG_member, scope: !1936, file: !37, line: 629, baseType: !1939, size: 128)
!1939 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1936, file: !37, line: 629, size: 128, elements: !1940)
!1940 = !{!1941, !1942}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1939, file: !37, line: 631, baseType: !107, size: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1939, file: !37, line: 632, baseType: !107, size: 64, offset: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1936, file: !37, line: 635, baseType: !664, size: 128, align: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1933, file: !37, line: 639, baseType: !628, size: 64, offset: 128)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1933, file: !37, line: 640, baseType: !1946, size: 64, offset: 192)
!1946 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1947, line: 297, baseType: !1948)
!1947 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1947, line: 297, size: 64, elements: !1949)
!1949 = !{!1950}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1948, file: !1947, line: 297, baseType: !1951, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1952, line: 19, baseType: !107)
!1952 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1953 = !DIDerivedType(tag: DW_TAG_member, scope: !1933, file: !37, line: 646, baseType: !1954, size: 64, offset: 256)
!1954 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1933, file: !37, line: 646, size: 64, elements: !1955)
!1955 = !{!1956, !1959}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1954, file: !37, line: 647, baseType: !1957, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1958)
!1958 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !37, line: 542, baseType: !107)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1954, file: !37, line: 648, baseType: !1958, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1933, file: !37, line: 666, baseType: !106, size: 32, offset: 320)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1933, file: !37, line: 667, baseType: !1962, size: 64, offset: 384)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !37, line: 579, size: 320, elements: !1964)
!1964 = !{!1965}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1963, file: !37, line: 580, baseType: !811, size: 320)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1933, file: !37, line: 670, baseType: !272, size: 8, offset: 448)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1933, file: !37, line: 681, baseType: !1968, size: 256, offset: 512)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1933, file: !37, line: 678, size: 256, elements: !1969)
!1969 = !{!1970, !1971}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1968, file: !37, line: 679, baseType: !372, size: 192, align: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1968, file: !37, line: 680, baseType: !107, size: 64, offset: 192)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1933, file: !37, line: 689, baseType: !112, size: 128, offset: 768)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1933, file: !37, line: 691, baseType: !1974, size: 64, offset: 896)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !37, line: 691, flags: DIFlagFwdDecl)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1933, file: !37, line: 694, baseType: !1977, size: 64, offset: 960)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1979)
!1979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1926, line: 563, size: 1024, elements: !1980)
!1980 = !{!1981, !1985, !1986, !1990, !1994, !1998, !1999, !2003, !2007, !2011, !2012, !2013, !2017, !2021, !2027, !2031}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1979, file: !1926, line: 564, baseType: !1982, size: 64)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{null, !1932}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1979, file: !1926, line: 569, baseType: !1982, size: 64, offset: 64)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1979, file: !1926, line: 571, baseType: !1987, size: 64, offset: 128)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{!106, !1932, !107}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1979, file: !1926, line: 572, baseType: !1991, size: 64, offset: 192)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!106, !1932}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1979, file: !1926, line: 578, baseType: !1995, size: 64, offset: 256)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DISubroutineType(types: !1997)
!1997 = !{!106, !1932, !107, !107, !107}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1979, file: !1926, line: 580, baseType: !1920, size: 64, offset: 320)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1979, file: !1926, line: 581, baseType: !2000, size: 64, offset: 384)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!1923, !1924, !5}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1979, file: !1926, line: 582, baseType: !2004, size: 64, offset: 448)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DISubroutineType(types: !2006)
!2006 = !{!1923, !1924, !107, !107}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1979, file: !1926, line: 584, baseType: !2008, size: 64, offset: 512)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{!107, !1932}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1979, file: !1926, line: 588, baseType: !1920, size: 64, offset: 576)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1979, file: !1926, line: 591, baseType: !1920, size: 64, offset: 640)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1979, file: !1926, line: 597, baseType: !2014, size: 64, offset: 704)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!106, !1932, !107, !105, !106, !106}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1979, file: !1926, line: 603, baseType: !2018, size: 64, offset: 768)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DISubroutineType(types: !2020)
!2020 = !{!236, !1932}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1979, file: !1926, line: 613, baseType: !2022, size: 64, offset: 832)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DISubroutineType(types: !2024)
!2024 = !{!106, !1932, !2025}
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !37, line: 717, flags: DIFlagFwdDecl)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1979, file: !1926, line: 625, baseType: !2028, size: 64, offset: 896)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{!2025, !1932, !107}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1979, file: !1926, line: 633, baseType: !2032, size: 64, offset: 960)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{!1812, !1932, !107}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1933, file: !37, line: 697, baseType: !107, size: 64, offset: 1024)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1933, file: !37, line: 699, baseType: !656, size: 64, offset: 1088)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1933, file: !37, line: 700, baseType: !105, size: 64, offset: 1152)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1933, file: !37, line: 711, baseType: !224, size: 64, offset: 1216)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1933, file: !37, line: 717, baseType: !2025, size: 64, offset: 1280)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1933, file: !37, line: 722, baseType: !2041, offset: 1344)
!2041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !37, line: 570, elements: !649)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1929, file: !1926, line: 515, baseType: !1230, size: 32, offset: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1929, file: !1926, line: 516, baseType: !107, size: 64, offset: 128)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1929, file: !1926, line: 517, baseType: !107, size: 64, offset: 192)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1929, file: !1926, line: 518, baseType: !107, size: 64, offset: 256)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1925, file: !1926, line: 520, baseType: !36, size: 32, offset: 320)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1925, file: !1926, line: 522, baseType: !2048, size: 64, offset: 384)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1952, line: 22, baseType: !2050)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1952, line: 22, size: 64, elements: !2051)
!2051 = !{!2052}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2050, file: !1952, line: 22, baseType: !2053, size: 64)
!2053 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1952, line: 15, baseType: !107)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1925, file: !1926, line: 524, baseType: !2055, size: 64, offset: 448)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1947, line: 372, baseType: !2057)
!2057 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1947, line: 372, size: 64, elements: !2058)
!2058 = !{!2059}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2057, file: !1947, line: 372, baseType: !2060, size: 64)
!2060 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1952, line: 16, baseType: !107)
!2061 = !DIDerivedType(tag: DW_TAG_member, scope: !1925, file: !1926, line: 527, baseType: !2062, size: 64, offset: 512)
!2062 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1925, file: !1926, line: 527, size: 64, elements: !2063)
!2063 = !{!2064, !2070}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2062, file: !1926, line: 528, baseType: !2065, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1952, line: 21, baseType: !2066)
!2066 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1952, line: 21, size: 64, elements: !2067)
!2067 = !{!2068}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2066, file: !1952, line: 21, baseType: !2069, size: 64)
!2069 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1952, line: 14, baseType: !107)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2062, file: !1926, line: 529, baseType: !2049, size: 64)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1925, file: !1926, line: 534, baseType: !1812, size: 64, offset: 576)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1925, file: !1926, line: 535, baseType: !1812, size: 64, offset: 640)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1925, file: !1926, line: 541, baseType: !2074, size: 64, offset: 704)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1925, file: !1926, line: 545, baseType: !2076, size: 64, offset: 768)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1925, file: !1926, line: 549, baseType: !2078, size: 64, offset: 832)
!2078 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1947, line: 520, baseType: !1812)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1913, file: !29, line: 100, baseType: !2080, size: 64, offset: 128)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{!106, !1862, !107, !107, !106}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1863, file: !29, line: 134, baseType: !105, size: 64, offset: 960)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1863, file: !29, line: 135, baseType: !106, size: 32, offset: 1024)
!2085 = !DIDerivedType(tag: DW_TAG_member, scope: !1863, file: !29, line: 136, baseType: !2086, size: 128, offset: 1088)
!2086 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1863, file: !29, line: 136, size: 128, elements: !2087)
!2087 = !{!2088, !2094}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2086, file: !29, line: 137, baseType: !2089, size: 128)
!2089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2090, line: 6, size: 128, elements: !2091)
!2090 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2091 = !{!2092, !2093}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2089, file: !2090, line: 7, baseType: !380, size: 64)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2089, file: !2090, line: 8, baseType: !380, size: 64, offset: 64)
!2094 = !DIDerivedType(tag: DW_TAG_member, scope: !2086, file: !29, line: 138, baseType: !2095)
!2095 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2086, file: !29, line: 138, elements: !2096)
!2096 = !{!2097, !2099}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2095, file: !29, line: 138, baseType: !2098)
!2098 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2095, file: !29, line: 138, elements: !649)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2095, file: !29, line: 138, baseType: !2100)
!2100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2089, elements: !748)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1859, file: !37, line: 147, baseType: !105, size: 64, offset: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1817, file: !37, line: 161, baseType: !664, size: 128, align: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, scope: !1813, file: !37, line: 164, baseType: !2104, size: 32, offset: 384)
!2104 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1813, file: !37, line: 164, size: 32, elements: !2105)
!2105 = !{!2106, !2107}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2104, file: !37, line: 169, baseType: !172, size: 32)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2104, file: !37, line: 177, baseType: !5, size: 32)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1813, file: !37, line: 181, baseType: !172, size: 32, offset: 416)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1806, file: !18, line: 406, baseType: !2110, size: 64, offset: 64)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = !DISubroutineType(types: !2112)
!2112 = !{!106, !656, !2113}
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !37, line: 293, size: 1536, elements: !2115)
!2115 = !{!2116, !2146, !2160}
!2116 = !DIDerivedType(tag: DW_TAG_member, scope: !2114, file: !37, line: 295, baseType: !2117, size: 512)
!2117 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2114, file: !37, line: 295, size: 512, elements: !2118)
!2118 = !{!2119, !2145}
!2119 = !DIDerivedType(tag: DW_TAG_member, scope: !2117, file: !37, line: 296, baseType: !2120, size: 448)
!2120 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2117, file: !37, line: 296, size: 448, elements: !2121)
!2121 = !{!2122, !2123, !2132, !2133, !2134, !2143, !2144}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2120, file: !37, line: 298, baseType: !107, size: 64)
!2123 = !DIDerivedType(tag: DW_TAG_member, scope: !2120, file: !37, line: 299, baseType: !2124, size: 128, offset: 64)
!2124 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2120, file: !37, line: 299, size: 128, elements: !2125)
!2125 = !{!2126, !2127}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2124, file: !37, line: 300, baseType: !112, size: 128)
!2127 = !DIDerivedType(tag: DW_TAG_member, scope: !2124, file: !37, line: 302, baseType: !2128, size: 128)
!2128 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2124, file: !37, line: 302, size: 128, elements: !2129)
!2129 = !{!2130, !2131}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2128, file: !37, line: 303, baseType: !105, size: 64)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2128, file: !37, line: 305, baseType: !5, size: 32, offset: 64)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2120, file: !37, line: 310, baseType: !1792, size: 64, offset: 192)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2120, file: !37, line: 311, baseType: !107, size: 64, offset: 256)
!2134 = !DIDerivedType(tag: DW_TAG_member, scope: !2120, file: !37, line: 312, baseType: !2135, size: 64, offset: 320)
!2135 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2120, file: !37, line: 312, size: 64, elements: !2136)
!2136 = !{!2137, !2138}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2135, file: !37, line: 313, baseType: !105, size: 64)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !2135, file: !37, line: 314, baseType: !2139, size: 64)
!2139 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !37, line: 257, baseType: !2140)
!2140 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !37, line: 255, size: 64, elements: !2141)
!2141 = !{!2142}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2140, file: !37, line: 256, baseType: !107, size: 64)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2120, file: !37, line: 316, baseType: !172, size: 32, offset: 384)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2120, file: !37, line: 317, baseType: !172, size: 32, offset: 416)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2117, file: !37, line: 323, baseType: !1813, size: 512, align: 128)
!2146 = !DIDerivedType(tag: DW_TAG_member, scope: !2114, file: !37, line: 325, baseType: !2147, size: 512, offset: 512)
!2147 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2114, file: !37, line: 325, size: 512, elements: !2148)
!2148 = !{!2149, !2159}
!2149 = !DIDerivedType(tag: DW_TAG_member, scope: !2147, file: !37, line: 326, baseType: !2150, size: 320)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2147, file: !37, line: 326, size: 320, elements: !2151)
!2151 = !{!2152, !2153, !2154, !2155, !2156, !2157, !2158}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !2150, file: !37, line: 327, baseType: !107, size: 64)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !2150, file: !37, line: 328, baseType: !107, size: 64, offset: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !2150, file: !37, line: 329, baseType: !107, size: 64, offset: 128)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !2150, file: !37, line: 331, baseType: !172, size: 32, offset: 192)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !2150, file: !37, line: 332, baseType: !172, size: 32, offset: 224)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !2150, file: !37, line: 333, baseType: !172, size: 32, offset: 256)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !2150, file: !37, line: 335, baseType: !5, size: 32, offset: 288)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !2147, file: !37, line: 339, baseType: !1813, size: 512, align: 128)
!2160 = !DIDerivedType(tag: DW_TAG_member, scope: !2114, file: !37, line: 341, baseType: !2161, size: 512, offset: 1024)
!2161 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2114, file: !37, line: 341, size: 512, elements: !2162)
!2162 = !{!2163, !2172, !2178}
!2163 = !DIDerivedType(tag: DW_TAG_member, scope: !2161, file: !37, line: 342, baseType: !2164, size: 384)
!2164 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2161, file: !37, line: 342, size: 384, elements: !2165)
!2165 = !{!2166, !2167, !2168, !2169, !2170, !2171}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !2164, file: !37, line: 343, baseType: !107, size: 64)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !2164, file: !37, line: 344, baseType: !107, size: 64, offset: 64)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !2164, file: !37, line: 346, baseType: !105, size: 64, offset: 128)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !2164, file: !37, line: 347, baseType: !105, size: 64, offset: 192)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !2164, file: !37, line: 348, baseType: !105, size: 64, offset: 256)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !2164, file: !37, line: 349, baseType: !105, size: 64, offset: 320)
!2172 = !DIDerivedType(tag: DW_TAG_member, scope: !2161, file: !37, line: 352, baseType: !2173, size: 256)
!2173 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2161, file: !37, line: 352, size: 256, elements: !2174)
!2174 = !{!2175, !2176, !2177}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !2173, file: !37, line: 353, baseType: !107, size: 64)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !2173, file: !37, line: 354, baseType: !107, size: 64, offset: 64)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !2173, file: !37, line: 356, baseType: !112, size: 128, offset: 128)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !2161, file: !37, line: 359, baseType: !1813, size: 512, align: 128)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1806, file: !18, line: 409, baseType: !2180, size: 64, offset: 128)
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = !DISubroutineType(types: !2182)
!2182 = !{!106, !1792, !1305}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1806, file: !18, line: 412, baseType: !2184, size: 64, offset: 192)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = !DISubroutineType(types: !2186)
!2186 = !{!272, !1792, !2113}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1806, file: !18, line: 414, baseType: !2188, size: 64, offset: 256)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DISubroutineType(types: !2190)
!2190 = !{null, !2191}
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !18, line: 310, flags: DIFlagFwdDecl)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1806, file: !18, line: 416, baseType: !2194, size: 64, offset: 320)
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = !DISubroutineType(types: !2196)
!2196 = !{!106, !656, !1792, !690, !5, !2197, !2198}
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1806, file: !18, line: 419, baseType: !2200, size: 64, offset: 384)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!106, !656, !1792, !690, !5, !5, !1812, !105}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1806, file: !18, line: 424, baseType: !2204, size: 64, offset: 448)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{!2207, !1792, !2207}
!2207 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !113, line: 131, baseType: !380)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1806, file: !18, line: 425, baseType: !2209, size: 64, offset: 512)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = !DISubroutineType(types: !2211)
!2211 = !{null, !2113, !1178, !1178}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1806, file: !18, line: 426, baseType: !2213, size: 64, offset: 576)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{!272, !2113, !1230}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1806, file: !18, line: 427, baseType: !2217, size: 64, offset: 640)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{null, !2113}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1806, file: !18, line: 428, baseType: !2221, size: 64, offset: 704)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = !DISubroutineType(types: !2223)
!2223 = !{!1175, !2224, !2246}
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !18, line: 373, size: 384, elements: !2226)
!2226 = !{!2227, !2228, !2229, !2233, !2234, !2235, !2236}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2225, file: !18, line: 374, baseType: !656, size: 64)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2225, file: !18, line: 375, baseType: !690, size: 64, offset: 64)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2225, file: !18, line: 376, baseType: !2230, size: 64, offset: 128)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = !DISubroutineType(types: !2232)
!2232 = !{null, !2224, !144}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2225, file: !18, line: 377, baseType: !105, size: 64, offset: 192)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2225, file: !18, line: 378, baseType: !106, size: 32, offset: 256)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2225, file: !18, line: 379, baseType: !190, size: 16, offset: 288)
!2236 = !DIDerivedType(tag: DW_TAG_member, scope: !2225, file: !18, line: 380, baseType: !2237, size: 64, offset: 320)
!2237 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2225, file: !18, line: 380, size: 64, elements: !2238)
!2238 = !{!2239, !2242}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2237, file: !18, line: 386, baseType: !2240, size: 64)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !18, line: 386, flags: DIFlagFwdDecl)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2237, file: !18, line: 395, baseType: !2243, size: 64)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = !DISubroutineType(types: !2245)
!2245 = !{!1175, !105}
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !18, line: 69, flags: DIFlagFwdDecl)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1806, file: !18, line: 433, baseType: !2249, size: 64, offset: 768)
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2250 = !DISubroutineType(types: !2251)
!2251 = !{!106, !1792, !2113, !2113, !52}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1806, file: !18, line: 435, baseType: !2253, size: 64, offset: 832)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = !DISubroutineType(types: !2255)
!2255 = !{!106, !2113}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1806, file: !18, line: 436, baseType: !2257, size: 64, offset: 896)
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2258 = !DISubroutineType(types: !2259)
!2259 = !{!272, !2113, !1178, !1178}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1806, file: !18, line: 438, baseType: !2261, size: 64, offset: 960)
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!2262 = !DISubroutineType(types: !2263)
!2263 = !{null, !2113, !2264, !2264}
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1806, file: !18, line: 439, baseType: !2266, size: 64, offset: 1024)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = !DISubroutineType(types: !2268)
!2268 = !{!106, !1792, !1812}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1806, file: !18, line: 442, baseType: !2270, size: 64, offset: 1088)
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2271 = !DISubroutineType(types: !2272)
!2272 = !{!106, !2273, !656, !2275}
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !18, line: 66, flags: DIFlagFwdDecl)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1806, file: !18, line: 444, baseType: !2277, size: 64, offset: 1152)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = !DISubroutineType(types: !2279)
!2279 = !{null, !656}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1806, file: !18, line: 445, baseType: !2281, size: 64, offset: 1216)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = !DISubroutineType(types: !2283)
!2283 = !{!106, !2224, !2246}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1793, file: !18, line: 486, baseType: !107, size: 64, offset: 896)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1793, file: !18, line: 487, baseType: !811, size: 320, offset: 960)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1793, file: !18, line: 488, baseType: !1749, size: 32, offset: 1280)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1793, file: !18, line: 489, baseType: !152, size: 32, offset: 1312)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1793, file: !18, line: 490, baseType: !112, size: 128, offset: 1344)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1793, file: !18, line: 491, baseType: !105, size: 64, offset: 1472)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1023, file: !18, line: 659, baseType: !105, size: 64, offset: 576)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1023, file: !18, line: 663, baseType: !107, size: 64, offset: 640)
!2292 = !DIDerivedType(tag: DW_TAG_member, scope: !1023, file: !18, line: 671, baseType: !2293, size: 32, offset: 704)
!2293 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1023, file: !18, line: 671, size: 32, elements: !2294)
!2294 = !{!2295, !2297}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2293, file: !18, line: 672, baseType: !2296, size: 32)
!2296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2293, file: !18, line: 673, baseType: !5, size: 32)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1023, file: !18, line: 675, baseType: !1097, size: 32, offset: 736)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1023, file: !18, line: 676, baseType: !690, size: 64, offset: 768)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1023, file: !18, line: 677, baseType: !1133, size: 128, offset: 832)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1023, file: !18, line: 678, baseType: !1133, size: 128, offset: 960)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1023, file: !18, line: 679, baseType: !1133, size: 128, offset: 1088)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1023, file: !18, line: 680, baseType: !152, size: 32, offset: 1216)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1023, file: !18, line: 681, baseType: !192, size: 16, offset: 1248)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1023, file: !18, line: 682, baseType: !180, size: 8, offset: 1264)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1023, file: !18, line: 683, baseType: !180, size: 8, offset: 1272)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1023, file: !18, line: 684, baseType: !1540, size: 64, offset: 1280)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1023, file: !18, line: 691, baseType: !107, size: 64, offset: 1344)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1023, file: !18, line: 692, baseType: !811, size: 320, offset: 1408)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1023, file: !18, line: 694, baseType: !107, size: 64, offset: 1728)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1023, file: !18, line: 695, baseType: !107, size: 64, offset: 1792)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1023, file: !18, line: 697, baseType: !732, size: 128, offset: 1856)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1023, file: !18, line: 698, baseType: !112, size: 128, offset: 1984)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1023, file: !18, line: 707, baseType: !112, size: 128, offset: 2112)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1023, file: !18, line: 708, baseType: !112, size: 128, offset: 2240)
!2316 = !DIDerivedType(tag: DW_TAG_member, scope: !1023, file: !18, line: 709, baseType: !2317, size: 128, offset: 2368)
!2317 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1023, file: !18, line: 709, size: 128, elements: !2318)
!2318 = !{!2319, !2320}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2317, file: !18, line: 710, baseType: !728, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2317, file: !18, line: 711, baseType: !664, size: 128, align: 64)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1023, file: !18, line: 713, baseType: !226, size: 64, offset: 2496)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1023, file: !18, line: 714, baseType: !226, size: 64, offset: 2560)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1023, file: !18, line: 715, baseType: !172, size: 32, offset: 2624)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1023, file: !18, line: 716, baseType: !172, size: 32, offset: 2656)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1023, file: !18, line: 717, baseType: !172, size: 32, offset: 2688)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1023, file: !18, line: 719, baseType: !172, size: 32, offset: 2720)
!2327 = !DIDerivedType(tag: DW_TAG_member, scope: !1023, file: !18, line: 721, baseType: !2328, size: 64, offset: 2752)
!2328 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1023, file: !18, line: 721, size: 64, elements: !2329)
!2329 = !{!2330, !2461}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2328, file: !18, line: 722, baseType: !2331, size: 64)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2333)
!2333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !18, line: 1914, size: 2112, elements: !2334)
!2334 = !{!2335, !2336, !2340, !2345, !2349, !2350, !2351, !2357, !2370, !2378, !2382, !2383, !2387, !2388, !2392, !2397, !2398, !2402, !2406, !2412, !2413, !2417, !2418, !2424, !2428, !2429, !2434, !2438, !2442, !2446, !2450, !2451, !2457}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2333, file: !18, line: 1915, baseType: !1267, size: 64)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2333, file: !18, line: 1916, baseType: !2337, size: 64, offset: 64)
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = !DISubroutineType(types: !2339)
!2339 = !{!690, !656, !690, !106}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2333, file: !18, line: 1917, baseType: !2341, size: 64, offset: 128)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{!1175, !656, !876, !1178, !2344}
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2333, file: !18, line: 1918, baseType: !2346, size: 64, offset: 192)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = !DISubroutineType(types: !2348)
!2348 = !{!1175, !656, !236, !1178, !2344}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2333, file: !18, line: 1919, baseType: !2221, size: 64, offset: 256)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2333, file: !18, line: 1920, baseType: !2221, size: 64, offset: 320)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2333, file: !18, line: 1921, baseType: !2352, size: 64, offset: 384)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = !DISubroutineType(types: !2354)
!2354 = !{!106, !2224, !2355, !5}
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !18, line: 53, flags: DIFlagFwdDecl)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2333, file: !18, line: 1923, baseType: !2358, size: 64, offset: 448)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{!106, !656, !2361}
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !18, line: 1858, size: 128, elements: !2363)
!2363 = !{!2364, !2369}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2362, file: !18, line: 1859, baseType: !2365, size: 64)
!2365 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !18, line: 1855, baseType: !2366)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = !DISubroutineType(types: !2368)
!2368 = !{!272, !2361, !236, !106, !690, !380, !5}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2362, file: !18, line: 1860, baseType: !690, size: 64, offset: 64)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2333, file: !18, line: 1924, baseType: !2371, size: 64, offset: 512)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{!2374, !656, !2376}
!2374 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2375, line: 59, baseType: !5)
!2375 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !18, line: 61, flags: DIFlagFwdDecl)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2333, file: !18, line: 1925, baseType: !2379, size: 64, offset: 576)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{!144, !656, !5, !107}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2333, file: !18, line: 1926, baseType: !2379, size: 64, offset: 640)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2333, file: !18, line: 1927, baseType: !2384, size: 64, offset: 704)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{!106, !656, !1932}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2333, file: !18, line: 1928, baseType: !107, size: 64, offset: 768)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2333, file: !18, line: 1929, baseType: !2389, size: 64, offset: 832)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{!106, !1022, !656}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2333, file: !18, line: 1930, baseType: !2393, size: 64, offset: 896)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = !DISubroutineType(types: !2395)
!2395 = !{!106, !656, !2396}
!2396 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !18, line: 1061, baseType: !105)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2333, file: !18, line: 1931, baseType: !2389, size: 64, offset: 960)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2333, file: !18, line: 1932, baseType: !2399, size: 64, offset: 1024)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{!106, !656, !690, !690, !106}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2333, file: !18, line: 1933, baseType: !2403, size: 64, offset: 1088)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{!106, !106, !656, !106}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2333, file: !18, line: 1934, baseType: !2407, size: 64, offset: 1152)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{!106, !656, !106, !2410}
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !18, line: 1063, flags: DIFlagFwdDecl)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2333, file: !18, line: 1935, baseType: !653, size: 64, offset: 1216)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2333, file: !18, line: 1936, baseType: !2414, size: 64, offset: 1280)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{!106, !106}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2333, file: !18, line: 1937, baseType: !2407, size: 64, offset: 1344)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2333, file: !18, line: 1938, baseType: !2419, size: 64, offset: 1408)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2420 = !DISubroutineType(types: !2421)
!2421 = !{!1175, !2422, !656, !2344, !1178, !5}
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !313, line: 59, flags: DIFlagFwdDecl)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2333, file: !18, line: 1939, baseType: !2425, size: 64, offset: 1472)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{!1175, !656, !2344, !2422, !1178, !5}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2333, file: !18, line: 1940, baseType: !2277, size: 64, offset: 1536)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2333, file: !18, line: 1941, baseType: !2430, size: 64, offset: 1600)
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{!106, !656, !106, !2433, !2198}
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2333, file: !18, line: 1942, baseType: !2435, size: 64, offset: 1664)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{!144, !656, !106, !690, !690}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2333, file: !18, line: 1944, baseType: !2439, size: 64, offset: 1728)
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2440 = !DISubroutineType(types: !2441)
!2441 = !{null, !1343, !656}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2333, file: !18, line: 1948, baseType: !2443, size: 64, offset: 1792)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = !DISubroutineType(types: !2445)
!2445 = !{!1175, !656, !690, !656, !690, !1178, !5}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2333, file: !18, line: 1950, baseType: !2447, size: 64, offset: 1856)
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = !DISubroutineType(types: !2449)
!2449 = !{!690, !656, !690, !656, !690, !690, !5}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2333, file: !18, line: 1953, baseType: !2399, size: 64, offset: 1920)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2333, file: !18, line: 1954, baseType: !2452, size: 64, offset: 1984)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{!106, !2455, !5}
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !18, line: 1911, flags: DIFlagFwdDecl)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2333, file: !18, line: 1955, baseType: !2458, size: 64, offset: 2048)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = !DISubroutineType(types: !2460)
!2460 = !{!106, !2455, !2355, !5}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2328, file: !18, line: 723, baseType: !1293, size: 64)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1023, file: !18, line: 725, baseType: !2463, size: 64, offset: 2816)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !18, line: 725, flags: DIFlagFwdDecl)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1023, file: !18, line: 726, baseType: !1793, size: 1536, align: 64, offset: 2880)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1023, file: !18, line: 727, baseType: !112, size: 128, offset: 4416)
!2467 = !DIDerivedType(tag: DW_TAG_member, scope: !1023, file: !18, line: 728, baseType: !2468, size: 64, offset: 4544)
!2468 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1023, file: !18, line: 728, size: 64, elements: !2469)
!2469 = !{!2470, !2471, !2474, !2475}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2468, file: !18, line: 729, baseType: !2422, size: 64)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2468, file: !18, line: 730, baseType: !2472, size: 64)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !18, line: 730, flags: DIFlagFwdDecl)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2468, file: !18, line: 731, baseType: !876, size: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2468, file: !18, line: 732, baseType: !5, size: 32)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1023, file: !18, line: 735, baseType: !323, size: 32, offset: 4608)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1023, file: !18, line: 738, baseType: !323, size: 32, offset: 4640)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1023, file: !18, line: 739, baseType: !1653, size: 64, offset: 4672)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1023, file: !18, line: 750, baseType: !105, size: 64, offset: 4736)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !988, file: !989, line: 91, baseType: !2481, size: 256, offset: 448)
!2481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 256, elements: !1657)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !988, file: !989, line: 94, baseType: !2483, size: 64, offset: 704)
!2483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2484, line: 25, size: 64, elements: !2485)
!2484 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!2485 = !{!2486}
!2486 = !DIDerivedType(tag: DW_TAG_member, scope: !2483, file: !2484, line: 26, baseType: !2487, size: 64)
!2487 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2483, file: !2484, line: 26, size: 64, elements: !2488)
!2488 = !{!2489, !2490}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !2487, file: !2484, line: 28, baseType: !381, size: 64, align: 64)
!2490 = !DIDerivedType(tag: DW_TAG_member, scope: !2487, file: !2484, line: 30, baseType: !2491, size: 64)
!2491 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2487, file: !2484, line: 30, size: 64, elements: !2492)
!2492 = !{!2493, !2494}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2491, file: !2484, line: 31, baseType: !152, size: 32)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2491, file: !2484, line: 32, baseType: !106, size: 32, offset: 32)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !988, file: !989, line: 95, baseType: !1672, size: 64, offset: 768)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !988, file: !989, line: 96, baseType: !1234, size: 64, offset: 832)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !988, file: !989, line: 97, baseType: !107, size: 64, offset: 896)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !988, file: !989, line: 98, baseType: !105, size: 64, offset: 960)
!2499 = !DIDerivedType(tag: DW_TAG_member, scope: !988, file: !989, line: 100, baseType: !2500, size: 128, offset: 1024)
!2500 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !988, file: !989, line: 100, size: 128, elements: !2501)
!2501 = !{!2502, !2503}
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2500, file: !989, line: 101, baseType: !112, size: 128)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2500, file: !989, line: 102, baseType: !2504, size: 64)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !988, file: !989, line: 104, baseType: !112, size: 128, offset: 1152)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !988, file: !989, line: 105, baseType: !112, size: 128, offset: 1280)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !988, file: !989, line: 113, baseType: !2508, size: 128, offset: 1408)
!2508 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !988, file: !989, line: 109, size: 128, elements: !2509)
!2509 = !{!2510, !2511, !2512}
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2508, file: !989, line: 110, baseType: !732, size: 128)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2508, file: !989, line: 111, baseType: !998, size: 128)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2508, file: !989, line: 112, baseType: !664, size: 128, align: 64)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !983, file: !984, line: 72, baseType: !1234, size: 64, offset: 64)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !983, file: !984, line: 73, baseType: !106, size: 32, offset: 128)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !983, file: !984, line: 74, baseType: !1062, size: 64, offset: 192)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !978, file: !979, line: 10, baseType: !987, size: 64, offset: 64)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !657, file: !18, line: 1015, baseType: !1022, size: 64, offset: 1344)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !657, file: !18, line: 1016, baseType: !2331, size: 64, offset: 1408)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !657, file: !18, line: 1018, baseType: !380, size: 64, offset: 1472)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !657, file: !18, line: 1020, baseType: !105, size: 64, offset: 1536)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !657, file: !18, line: 1023, baseType: !105, size: 64, offset: 1600)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !657, file: !18, line: 1027, baseType: !2523, size: 64, offset: 1664)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !657, file: !18, line: 1029, baseType: !1792, size: 64, offset: 1728)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !657, file: !18, line: 1030, baseType: !1749, size: 32, offset: 1792)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !657, file: !18, line: 1031, baseType: !1749, size: 32, offset: 1824)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !632, file: !37, line: 756, baseType: !107, size: 64, offset: 704)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !632, file: !37, line: 757, baseType: !107, size: 64, offset: 768)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !632, file: !37, line: 760, baseType: !107, size: 64, offset: 832)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !632, file: !37, line: 761, baseType: !107, size: 64, offset: 896)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !632, file: !37, line: 763, baseType: !107, size: 64, offset: 960)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !632, file: !37, line: 764, baseType: !2533, size: 64, offset: 1024)
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2534, size: 64)
!2534 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1947, line: 299, baseType: !2535)
!2535 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1947, line: 299, size: 64, elements: !2536)
!2536 = !{!2537}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2535, file: !1947, line: 299, baseType: !2538, size: 64)
!2538 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1952, line: 18, baseType: !107)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !632, file: !37, line: 773, baseType: !172, size: 32, offset: 1088)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !632, file: !37, line: 785, baseType: !172, size: 32, offset: 1120)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !632, file: !37, line: 795, baseType: !2542, size: 64, offset: 1152)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !37, line: 726, size: 128, elements: !2544)
!2544 = !{!2545, !2546}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2543, file: !37, line: 727, baseType: !380, size: 64)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2543, file: !37, line: 728, baseType: !106, size: 32, offset: 64)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !632, file: !37, line: 801, baseType: !107, size: 64, offset: 1216)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !632, file: !37, line: 804, baseType: !224, size: 64, offset: 1280)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !632, file: !37, line: 806, baseType: !106, size: 32, offset: 1344)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !632, file: !37, line: 808, baseType: !152, size: 32, offset: 1376)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !632, file: !37, line: 823, baseType: !811, size: 320, offset: 1408)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !632, file: !37, line: 825, baseType: !112, size: 128, offset: 1728)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !632, file: !37, line: 845, baseType: !106, size: 32, offset: 1856)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !632, file: !37, line: 849, baseType: !107, size: 64, offset: 1920)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !632, file: !37, line: 850, baseType: !107, size: 64, offset: 1984)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !632, file: !37, line: 852, baseType: !107, size: 64, offset: 2048)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !632, file: !37, line: 853, baseType: !107, size: 64, offset: 2112)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !632, file: !37, line: 854, baseType: !226, size: 64, offset: 2176)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !632, file: !37, line: 855, baseType: !107, size: 64, offset: 2240)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !632, file: !37, line: 856, baseType: !107, size: 64, offset: 2304)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !632, file: !37, line: 857, baseType: !107, size: 64, offset: 2368)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !632, file: !37, line: 858, baseType: !107, size: 64, offset: 2432)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !632, file: !37, line: 865, baseType: !502, size: 32, offset: 2496)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !632, file: !37, line: 867, baseType: !152, size: 32, offset: 2528)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !632, file: !37, line: 869, baseType: !107, size: 64, offset: 2560)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !632, file: !37, line: 869, baseType: !107, size: 64, offset: 2624)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !632, file: !37, line: 869, baseType: !107, size: 64, offset: 2688)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !632, file: !37, line: 869, baseType: !107, size: 64, offset: 2752)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !632, file: !37, line: 870, baseType: !107, size: 64, offset: 2816)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !632, file: !37, line: 870, baseType: !107, size: 64, offset: 2880)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !632, file: !37, line: 870, baseType: !107, size: 64, offset: 2944)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !632, file: !37, line: 871, baseType: !107, size: 64, offset: 3008)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !632, file: !37, line: 871, baseType: !107, size: 64, offset: 3072)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !632, file: !37, line: 871, baseType: !107, size: 64, offset: 3136)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !632, file: !37, line: 871, baseType: !107, size: 64, offset: 3200)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !632, file: !37, line: 873, baseType: !2577, size: 3328, offset: 3264)
!2577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 3328, elements: !2578)
!2578 = !{!2579}
!2579 = !DISubrange(count: 52)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !632, file: !37, line: 875, baseType: !2581, size: 1280, offset: 6592)
!2581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !924, size: 1280, elements: !138)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !632, file: !37, line: 877, baseType: !2583, size: 64, offset: 7872)
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !37, line: 877, flags: DIFlagFwdDecl)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !632, file: !37, line: 880, baseType: !2586, size: 1088, offset: 7936)
!2586 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2587, line: 72, baseType: !2588)
!2587 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2588 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2587, line: 23, size: 1088, elements: !2589)
!2589 = !{!2590, !2591, !2592, !2593, !2594, !2597, !2598, !2599, !2600, !2604, !2605, !2606}
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2588, file: !2587, line: 28, baseType: !380, size: 64)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2588, file: !2587, line: 38, baseType: !226, size: 64, offset: 64)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2588, file: !2587, line: 40, baseType: !107, size: 64, offset: 128)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2588, file: !2587, line: 43, baseType: !811, size: 320, offset: 192)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2588, file: !2587, line: 44, baseType: !2595, size: 64, offset: 512)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2587, line: 44, flags: DIFlagFwdDecl)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2588, file: !2587, line: 48, baseType: !107, size: 64, offset: 576)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2588, file: !2587, line: 59, baseType: !678, size: 256, offset: 640)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2588, file: !2587, line: 60, baseType: !105, size: 64, offset: 896)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2588, file: !2587, line: 61, baseType: !2601, size: 64, offset: 960)
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2602 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2603)
!2603 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2587, line: 61, flags: DIFlagFwdDecl)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2588, file: !2587, line: 63, baseType: !172, size: 32, offset: 1024)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2588, file: !2587, line: 69, baseType: !190, size: 16, offset: 1056)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2588, file: !2587, line: 70, baseType: !2607, size: 16, offset: 1072)
!2607 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !181, line: 18, baseType: !2608)
!2608 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !183, line: 23, baseType: !198)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !632, file: !37, line: 882, baseType: !107, size: 64, offset: 9024)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !632, file: !37, line: 885, baseType: !152, size: 32, offset: 9088)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !632, file: !37, line: 886, baseType: !2612, size: 64, offset: 9152)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !37, line: 732, flags: DIFlagFwdDecl)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !632, file: !37, line: 901, baseType: !949, size: 64, offset: 9216)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !632, file: !37, line: 904, baseType: !656, size: 64, offset: 9280)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !632, file: !37, line: 906, baseType: !2617, size: 64, offset: 9344)
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !37, line: 906, flags: DIFlagFwdDecl)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !632, file: !37, line: 930, baseType: !172, size: 32, offset: 9408)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !632, file: !37, line: 933, baseType: !172, size: 32, offset: 9440)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !632, file: !37, line: 935, baseType: !2622, size: 64, offset: 9472)
!2622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !66, line: 103, size: 64, elements: !2623)
!2623 = !{!2624}
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2622, file: !66, line: 104, baseType: !2625, size: 64)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !66, line: 101, flags: DIFlagFwdDecl)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !632, file: !37, line: 940, baseType: !224, size: 64, offset: 9536)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !632, file: !37, line: 942, baseType: !1775, size: 256, offset: 9600)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !629, file: !37, line: 986, baseType: !2630, offset: 10240)
!2630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, elements: !748)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !312, file: !313, line: 882, baseType: !628, size: 64, offset: 9792)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !312, file: !313, line: 884, baseType: !106, size: 32, offset: 9856)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !312, file: !313, line: 885, baseType: !106, size: 32, offset: 9888)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !312, file: !313, line: 886, baseType: !106, size: 32, offset: 9920)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !312, file: !313, line: 888, baseType: !106, size: 32, offset: 9952)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !312, file: !313, line: 890, baseType: !107, size: 64, offset: 9984)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !312, file: !313, line: 893, baseType: !5, size: 32, offset: 10048)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !312, file: !313, line: 896, baseType: !5, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !312, file: !313, line: 897, baseType: !5, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !312, file: !313, line: 898, baseType: !5, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !312, file: !313, line: 899, baseType: !5, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !312, file: !313, line: 919, baseType: !5, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !312, file: !313, line: 922, baseType: !5, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !312, file: !313, line: 923, baseType: !5, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !312, file: !313, line: 925, baseType: !5, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !312, file: !313, line: 939, baseType: !5, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !312, file: !313, line: 941, baseType: !5, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !312, file: !313, line: 944, baseType: !5, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !312, file: !313, line: 956, baseType: !5, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !312, file: !313, line: 962, baseType: !5, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !312, file: !313, line: 966, baseType: !5, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !312, file: !313, line: 969, baseType: !107, size: 64, offset: 10176)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !312, file: !313, line: 971, baseType: !2654, size: 448, offset: 10240)
!2654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !60, line: 25, size: 448, elements: !2655)
!2655 = !{!2656, !2657, !2662}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2654, file: !60, line: 26, baseType: !107, size: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2654, file: !60, line: 27, baseType: !2658, size: 64, offset: 64)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = !DISubroutineType(types: !2660)
!2660 = !{!144, !2661}
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!2662 = !DIDerivedType(tag: DW_TAG_member, scope: !2654, file: !60, line: 28, baseType: !2663, size: 320, offset: 128)
!2663 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2654, file: !60, line: 28, size: 320, elements: !2664)
!2664 = !{!2665, !2675, !2700}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2663, file: !60, line: 37, baseType: !2666, size: 320)
!2666 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2663, file: !60, line: 30, size: 320, elements: !2667)
!2667 = !{!2668, !2670, !2671, !2672, !2673, !2674}
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2666, file: !60, line: 31, baseType: !2669, size: 64)
!2669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2666, file: !60, line: 32, baseType: !322, size: 32, offset: 64)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2666, file: !60, line: 33, baseType: !322, size: 32, offset: 96)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2666, file: !60, line: 34, baseType: !322, size: 32, offset: 128)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2666, file: !60, line: 35, baseType: !380, size: 64, offset: 192)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2666, file: !60, line: 36, baseType: !2669, size: 64, offset: 256)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2663, file: !60, line: 47, baseType: !2676, size: 192)
!2676 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2663, file: !60, line: 39, size: 192, elements: !2677)
!2677 = !{!2678, !2679, !2680, !2699}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2676, file: !60, line: 40, baseType: !493, size: 32)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2676, file: !60, line: 41, baseType: !59, size: 32, offset: 32)
!2680 = !DIDerivedType(tag: DW_TAG_member, scope: !2676, file: !60, line: 42, baseType: !2681, size: 64, offset: 64)
!2681 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2676, file: !60, line: 42, size: 64, elements: !2682)
!2682 = !{!2683, !2691}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2681, file: !60, line: 43, baseType: !2684, size: 64)
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2686, line: 7, size: 128, elements: !2687)
!2686 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2687 = !{!2688, !2690}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2685, file: !2686, line: 8, baseType: !2689, size: 64)
!2689 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !495, line: 93, baseType: !232)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2685, file: !2686, line: 9, baseType: !232, size: 64, offset: 64)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2681, file: !60, line: 44, baseType: !2692, size: 64)
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2694, line: 7, size: 64, elements: !2695)
!2694 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2695 = !{!2696, !2698}
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2693, file: !2694, line: 8, baseType: !2697, size: 32)
!2697 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2694, line: 5, baseType: !803)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2693, file: !2694, line: 9, baseType: !803, size: 32, offset: 32)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2676, file: !60, line: 46, baseType: !380, size: 64, offset: 128)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2663, file: !60, line: 55, baseType: !2701, size: 256)
!2701 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2663, file: !60, line: 49, size: 256, elements: !2702)
!2702 = !{!2703, !2706, !2707, !2708, !2709}
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2701, file: !60, line: 50, baseType: !2704, size: 64)
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !60, line: 14, flags: DIFlagFwdDecl)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2701, file: !60, line: 51, baseType: !106, size: 32, offset: 64)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2701, file: !60, line: 52, baseType: !106, size: 32, offset: 96)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2701, file: !60, line: 53, baseType: !107, size: 64, offset: 128)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2701, file: !60, line: 54, baseType: !107, size: 64, offset: 192)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !312, file: !313, line: 973, baseType: !2711, size: 32, offset: 10688)
!2711 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !113, line: 27, baseType: !2712)
!2712 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !495, line: 28, baseType: !106)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !312, file: !313, line: 974, baseType: !2711, size: 32, offset: 10720)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !312, file: !313, line: 978, baseType: !107, size: 64, offset: 10752)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !312, file: !313, line: 987, baseType: !311, size: 64, offset: 10816)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !312, file: !313, line: 990, baseType: !311, size: 64, offset: 10880)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !312, file: !313, line: 995, baseType: !112, size: 128, offset: 10944)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !312, file: !313, line: 996, baseType: !112, size: 128, offset: 11072)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !312, file: !313, line: 997, baseType: !311, size: 64, offset: 11200)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !312, file: !313, line: 1005, baseType: !112, size: 128, offset: 11264)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !312, file: !313, line: 1006, baseType: !112, size: 128, offset: 11392)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !312, file: !313, line: 1009, baseType: !720, size: 64, offset: 11520)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !312, file: !313, line: 1010, baseType: !2724, size: 512, offset: 11584)
!2724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !732, size: 512, elements: !138)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !312, file: !313, line: 1011, baseType: !112, size: 128, offset: 12096)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !312, file: !313, line: 1012, baseType: !112, size: 128, offset: 12224)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !312, file: !313, line: 1014, baseType: !2728, size: 64, offset: 12352)
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !312, file: !313, line: 1017, baseType: !1337, size: 64, offset: 12416)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !312, file: !313, line: 1020, baseType: !1337, size: 64, offset: 12480)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !312, file: !313, line: 1023, baseType: !105, size: 64, offset: 12544)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !312, file: !313, line: 1025, baseType: !380, size: 64, offset: 12608)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !312, file: !313, line: 1026, baseType: !380, size: 64, offset: 12672)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !312, file: !313, line: 1031, baseType: !380, size: 64, offset: 12736)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !312, file: !313, line: 1032, baseType: !2736, size: 192, offset: 12800)
!2736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !313, line: 324, size: 192, elements: !2737)
!2737 = !{!2738, !2739, !2740}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2736, file: !313, line: 326, baseType: !380, size: 64)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2736, file: !313, line: 327, baseType: !380, size: 64, offset: 64)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2736, file: !313, line: 328, baseType: !470, size: 32, offset: 128)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !312, file: !313, line: 1041, baseType: !107, size: 64, offset: 12992)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !312, file: !313, line: 1042, baseType: !107, size: 64, offset: 13056)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !312, file: !313, line: 1045, baseType: !380, size: 64, offset: 13120)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !312, file: !313, line: 1048, baseType: !380, size: 64, offset: 13184)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !312, file: !313, line: 1051, baseType: !107, size: 64, offset: 13248)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !312, file: !313, line: 1052, baseType: !107, size: 64, offset: 13312)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !312, file: !313, line: 1055, baseType: !2748, size: 640, offset: 13376)
!2748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2749, line: 132, size: 640, elements: !2750)
!2749 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2750 = !{!2751, !2757, !2758}
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2748, file: !2749, line: 133, baseType: !2752, size: 576)
!2752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2753, size: 576, elements: !716)
!2753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2749, line: 117, size: 192, elements: !2754)
!2754 = !{!2755, !2756}
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2753, file: !2749, line: 118, baseType: !380, size: 64)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2753, file: !2749, line: 119, baseType: !508, size: 128, offset: 64)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2748, file: !2749, line: 134, baseType: !5, size: 32, offset: 576)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2748, file: !2749, line: 135, baseType: !5, size: 32, offset: 608)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !312, file: !313, line: 1058, baseType: !2760, size: 448, offset: 14016)
!2760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2749, line: 144, size: 448, elements: !2761)
!2761 = !{!2762, !2763, !2764}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2760, file: !2749, line: 145, baseType: !664, size: 128, align: 64)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2760, file: !2749, line: 146, baseType: !678, size: 256, offset: 128)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2760, file: !2749, line: 147, baseType: !5, size: 32, offset: 384)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !312, file: !313, line: 1064, baseType: !762, size: 64, offset: 14464)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !312, file: !313, line: 1067, baseType: !762, size: 64, offset: 14528)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !312, file: !313, line: 1070, baseType: !762, size: 64, offset: 14592)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !312, file: !313, line: 1074, baseType: !795, size: 64, offset: 14656)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !312, file: !313, line: 1084, baseType: !2770, size: 128, offset: 14720)
!2770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, size: 128, elements: !1666)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !312, file: !313, line: 1086, baseType: !2772, size: 64, offset: 14848)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !313, line: 55, flags: DIFlagFwdDecl)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !312, file: !313, line: 1089, baseType: !2775, size: 64, offset: 14912)
!2775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2776, line: 12, size: 64, elements: !2777)
!2776 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2777 = !{!2778}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2775, file: !2776, line: 13, baseType: !2779, size: 64)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2776, line: 8, flags: DIFlagFwdDecl)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !312, file: !313, line: 1090, baseType: !2782, size: 128, offset: 14976)
!2782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2783, line: 13, size: 128, elements: !2784)
!2783 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2784 = !{!2785}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2782, file: !2783, line: 14, baseType: !112, size: 128)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !312, file: !313, line: 1097, baseType: !2787, size: 64, offset: 15104)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !313, line: 50, flags: DIFlagFwdDecl)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !312, file: !313, line: 1100, baseType: !2790, size: 64, offset: 15168)
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2791 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !313, line: 1100, flags: DIFlagFwdDecl)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !312, file: !313, line: 1103, baseType: !2793, size: 64, offset: 15232)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !313, line: 53, flags: DIFlagFwdDecl)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !312, file: !313, line: 1107, baseType: !2796, size: 64, offset: 15296)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !313, line: 56, flags: DIFlagFwdDecl)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !312, file: !313, line: 1110, baseType: !2799, size: 64, offset: 15360)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2801, line: 93, size: 8768, elements: !2802)
!2801 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2802 = !{!2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2850, !2859, !2860, !2862, !2863, !2864, !2867, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2905, !2906, !2913, !2923, !2926, !2927, !2930, !2931, !2932, !2933, !2934, !2935}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2800, file: !2801, line: 94, baseType: !328, size: 32)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2800, file: !2801, line: 95, baseType: !172, size: 32, offset: 32)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2800, file: !2801, line: 96, baseType: !106, size: 32, offset: 64)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2800, file: !2801, line: 97, baseType: !106, size: 32, offset: 96)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2800, file: !2801, line: 98, baseType: !112, size: 128, offset: 128)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2800, file: !2801, line: 100, baseType: !299, size: 192, offset: 256)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2800, file: !2801, line: 103, baseType: !311, size: 64, offset: 448)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2800, file: !2801, line: 106, baseType: !2811, size: 192, offset: 512)
!2811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !954, line: 32, size: 192, elements: !2812)
!2812 = !{!2813, !2814}
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2811, file: !954, line: 33, baseType: !112, size: 128)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2811, file: !954, line: 34, baseType: !2815, size: 64, offset: 128)
!2815 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2816, line: 25, baseType: !2817)
!2816 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2817 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2816, line: 23, size: 64, elements: !2818)
!2818 = !{!2819}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2817, file: !2816, line: 24, baseType: !579, size: 64)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2800, file: !2801, line: 109, baseType: !728, size: 64, offset: 704)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2800, file: !2801, line: 112, baseType: !106, size: 32, offset: 768)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2800, file: !2801, line: 114, baseType: !106, size: 32, offset: 800)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2800, file: !2801, line: 115, baseType: !311, size: 64, offset: 832)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2800, file: !2801, line: 118, baseType: !106, size: 32, offset: 896)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2800, file: !2801, line: 119, baseType: !5, size: 32, offset: 928)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2800, file: !2801, line: 121, baseType: !2827, size: 64, offset: 960)
!2827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2828, size: 64)
!2828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2801, line: 80, size: 448, elements: !2829)
!2829 = !{!2830, !2831, !2837}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2828, file: !2801, line: 81, baseType: !172, size: 32)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2828, file: !2801, line: 82, baseType: !2832, size: 128, offset: 64)
!2832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2801, line: 75, size: 128, elements: !2833)
!2833 = !{!2834, !2835}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2832, file: !2801, line: 76, baseType: !311, size: 64)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2832, file: !2801, line: 77, baseType: !2836, size: 64, offset: 64)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2828, file: !2801, line: 83, baseType: !1897, size: 256, offset: 192)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2800, file: !2801, line: 132, baseType: !5, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2800, file: !2801, line: 133, baseType: !5, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2800, file: !2801, line: 138, baseType: !5, size: 32, offset: 1056)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2800, file: !2801, line: 139, baseType: !112, size: 128, offset: 1088)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2800, file: !2801, line: 142, baseType: !445, size: 512, offset: 1216)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2800, file: !2801, line: 143, baseType: !453, size: 64, offset: 1728)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2800, file: !2801, line: 150, baseType: !2845, size: 256, offset: 1792)
!2845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2846, size: 256, elements: !264)
!2846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2801, line: 38, size: 128, elements: !2847)
!2847 = !{!2848, !2849}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2846, file: !2801, line: 39, baseType: !380, size: 64)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2846, file: !2801, line: 40, baseType: !380, size: 64, offset: 64)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2800, file: !2801, line: 156, baseType: !2851, size: 192, offset: 2048)
!2851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2801, line: 66, size: 192, elements: !2852)
!2852 = !{!2853}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2851, file: !2801, line: 67, baseType: !2854, size: 192)
!2854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2801, line: 47, size: 192, elements: !2855)
!2855 = !{!2856, !2857, !2858}
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2854, file: !2801, line: 48, baseType: !226, size: 64)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2854, file: !2801, line: 49, baseType: !226, size: 64, offset: 64)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2854, file: !2801, line: 50, baseType: !226, size: 64, offset: 128)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2800, file: !2801, line: 160, baseType: !2748, size: 640, offset: 2240)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2800, file: !2801, line: 163, baseType: !2861, size: 256, offset: 2880)
!2861 = !DICompositeType(tag: DW_TAG_array_type, baseType: !720, size: 256, elements: !138)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2800, file: !2801, line: 169, baseType: !720, size: 64, offset: 3136)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2800, file: !2801, line: 172, baseType: !106, size: 32, offset: 3200)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2800, file: !2801, line: 174, baseType: !2865, size: 64, offset: 3264)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2801, line: 174, flags: DIFlagFwdDecl)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2800, file: !2801, line: 185, baseType: !2868, size: 64, offset: 3328)
!2868 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !498, line: 860, baseType: !2869)
!2869 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !498, line: 853, size: 64, elements: !2870)
!2870 = !{!2871, !2872}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2869, file: !498, line: 858, baseType: !993, size: 32)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2869, file: !498, line: 859, baseType: !152, size: 32, offset: 32)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2800, file: !2801, line: 186, baseType: !380, size: 64, offset: 3392)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2800, file: !2801, line: 186, baseType: !380, size: 64, offset: 3456)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2800, file: !2801, line: 186, baseType: !380, size: 64, offset: 3520)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2800, file: !2801, line: 186, baseType: !380, size: 64, offset: 3584)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2800, file: !2801, line: 187, baseType: !380, size: 64, offset: 3648)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2800, file: !2801, line: 188, baseType: !380, size: 64, offset: 3712)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2800, file: !2801, line: 189, baseType: !2736, size: 192, offset: 3776)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2800, file: !2801, line: 190, baseType: !107, size: 64, offset: 3968)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2800, file: !2801, line: 190, baseType: !107, size: 64, offset: 4032)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2800, file: !2801, line: 190, baseType: !107, size: 64, offset: 4096)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2800, file: !2801, line: 190, baseType: !107, size: 64, offset: 4160)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2800, file: !2801, line: 191, baseType: !107, size: 64, offset: 4224)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2800, file: !2801, line: 191, baseType: !107, size: 64, offset: 4288)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2800, file: !2801, line: 191, baseType: !107, size: 64, offset: 4352)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2800, file: !2801, line: 191, baseType: !107, size: 64, offset: 4416)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2800, file: !2801, line: 192, baseType: !107, size: 64, offset: 4480)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2800, file: !2801, line: 192, baseType: !107, size: 64, offset: 4544)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2800, file: !2801, line: 192, baseType: !107, size: 64, offset: 4608)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2800, file: !2801, line: 192, baseType: !107, size: 64, offset: 4672)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2800, file: !2801, line: 193, baseType: !107, size: 64, offset: 4736)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2800, file: !2801, line: 193, baseType: !107, size: 64, offset: 4800)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2800, file: !2801, line: 194, baseType: !2895, size: 448, offset: 4864)
!2895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2896, line: 12, size: 448, elements: !2897)
!2896 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2897 = !{!2898, !2899, !2900, !2901, !2902, !2903, !2904}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2895, file: !2896, line: 15, baseType: !380, size: 64)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2895, file: !2896, line: 17, baseType: !380, size: 64, offset: 64)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2895, file: !2896, line: 19, baseType: !380, size: 64, offset: 128)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2895, file: !2896, line: 21, baseType: !380, size: 64, offset: 192)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2895, file: !2896, line: 29, baseType: !380, size: 64, offset: 256)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2895, file: !2896, line: 35, baseType: !380, size: 64, offset: 320)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2895, file: !2896, line: 44, baseType: !380, size: 64, offset: 384)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2800, file: !2801, line: 202, baseType: !382, size: 64, offset: 5312)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2800, file: !2801, line: 213, baseType: !2907, size: 2048, offset: 5376)
!2907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2908, size: 2048, elements: !1666)
!2908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2909, line: 43, size: 128, elements: !2910)
!2909 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2910 = !{!2911, !2912}
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2908, file: !2909, line: 44, baseType: !1180, size: 64)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2908, file: !2909, line: 45, baseType: !1180, size: 64, offset: 64)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2800, file: !2801, line: 216, baseType: !2914, size: 448, offset: 7424)
!2914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2801, line: 30, size: 448, elements: !2915)
!2915 = !{!2916, !2917, !2918, !2919, !2920, !2921, !2922}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2914, file: !2801, line: 31, baseType: !106, size: 32)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2914, file: !2801, line: 32, baseType: !144, size: 64, offset: 64)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2914, file: !2801, line: 33, baseType: !107, size: 64, offset: 128)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2914, file: !2801, line: 34, baseType: !380, size: 64, offset: 192)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2914, file: !2801, line: 34, baseType: !380, size: 64, offset: 256)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2914, file: !2801, line: 35, baseType: !107, size: 64, offset: 320)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2914, file: !2801, line: 35, baseType: !107, size: 64, offset: 384)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2800, file: !2801, line: 219, baseType: !2924, size: 64, offset: 7872)
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2925, size: 64)
!2925 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2801, line: 219, flags: DIFlagFwdDecl)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2800, file: !2801, line: 222, baseType: !5, size: 32, offset: 7936)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2800, file: !2801, line: 223, baseType: !2928, size: 64, offset: 8000)
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2929, size: 64)
!2929 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2801, line: 223, flags: DIFlagFwdDecl)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2800, file: !2801, line: 230, baseType: !272, size: 8, offset: 8064)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2800, file: !2801, line: 231, baseType: !198, size: 16, offset: 8080)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2800, file: !2801, line: 232, baseType: !198, size: 16, offset: 8096)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2800, file: !2801, line: 234, baseType: !628, size: 64, offset: 8128)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2800, file: !2801, line: 237, baseType: !678, size: 256, offset: 8192)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2800, file: !2801, line: 243, baseType: !811, size: 320, offset: 8448)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !312, file: !313, line: 1111, baseType: !2937, size: 64, offset: 15424)
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2801, line: 20, size: 16640, elements: !2939)
!2939 = !{!2940, !2941, !2942, !2943}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2938, file: !2801, line: 21, baseType: !152, size: 32)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2938, file: !2801, line: 22, baseType: !328, size: 32, offset: 32)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2938, file: !2801, line: 23, baseType: !299, size: 192, offset: 64)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2938, file: !2801, line: 24, baseType: !2944, size: 16384, offset: 256)
!2944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2945, size: 16384, elements: !2965)
!2945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !954, line: 51, size: 256, elements: !2946)
!2946 = !{!2947}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2945, file: !954, line: 52, baseType: !2948, size: 256)
!2948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !954, line: 37, size: 256, elements: !2949)
!2949 = !{!2950, !2957, !2958, !2964}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2948, file: !954, line: 39, baseType: !2951, size: 64)
!2951 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2952, line: 83, baseType: !2953)
!2952 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2952, line: 82, baseType: !2955)
!2955 = !DISubroutineType(types: !2956)
!2956 = !{null, !106}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2948, file: !954, line: 40, baseType: !107, size: 64, offset: 64)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2948, file: !954, line: 46, baseType: !2959, size: 64, offset: 128)
!2959 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2952, line: 86, baseType: !2960)
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2961, size: 64)
!2961 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2952, line: 85, baseType: !2962)
!2962 = !DISubroutineType(types: !2963)
!2963 = !{null}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2948, file: !954, line: 48, baseType: !2815, size: 64, offset: 192)
!2965 = !{!2966}
!2966 = !DISubrange(count: 64)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !312, file: !313, line: 1112, baseType: !2815, size: 64, offset: 15488)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !312, file: !313, line: 1113, baseType: !2815, size: 64, offset: 15552)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !312, file: !313, line: 1115, baseType: !2815, size: 64, offset: 15616)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !312, file: !313, line: 1116, baseType: !2811, size: 192, offset: 15680)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !312, file: !313, line: 1117, baseType: !107, size: 64, offset: 15872)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !312, file: !313, line: 1118, baseType: !1178, size: 64, offset: 15936)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !312, file: !313, line: 1119, baseType: !5, size: 32, offset: 16000)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !312, file: !313, line: 1121, baseType: !667, size: 64, offset: 16064)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !312, file: !313, line: 1125, baseType: !2976, size: 64, offset: 16128)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !313, line: 43, flags: DIFlagFwdDecl)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !312, file: !313, line: 1127, baseType: !752, size: 32, offset: 16192)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !312, file: !313, line: 1128, baseType: !5, size: 32, offset: 16224)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !312, file: !313, line: 1130, baseType: !2981, size: 128, offset: 16256)
!2981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2982, line: 37, size: 128, elements: !2983)
!2982 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2983 = !{!2984, !2985, !2986}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2981, file: !2982, line: 38, baseType: !106, size: 32)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2981, file: !2982, line: 39, baseType: !172, size: 32, offset: 32)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2981, file: !2982, line: 40, baseType: !2987, size: 64, offset: 64)
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2982, line: 24, flags: DIFlagFwdDecl)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !312, file: !313, line: 1131, baseType: !2990, size: 256, offset: 16384)
!2990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2991, line: 12, size: 256, elements: !2992)
!2991 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2992 = !{!2993, !2994, !2995, !2996}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2990, file: !2991, line: 13, baseType: !876, size: 64)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2990, file: !2991, line: 14, baseType: !107, size: 64, offset: 64)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2990, file: !2991, line: 15, baseType: !107, size: 64, offset: 128)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2990, file: !2991, line: 16, baseType: !272, size: 8, offset: 192)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !312, file: !313, line: 1134, baseType: !380, size: 64, offset: 16640)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !312, file: !313, line: 1135, baseType: !380, size: 64, offset: 16704)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !312, file: !313, line: 1138, baseType: !152, size: 32, offset: 16768)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !312, file: !313, line: 1141, baseType: !470, size: 32, offset: 16800)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !312, file: !313, line: 1143, baseType: !3002, size: 64, offset: 16832)
!3002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !313, line: 735, size: 64, elements: !3003)
!3003 = !{!3004}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3002, file: !313, line: 736, baseType: !3005, size: 64)
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !312, file: !313, line: 1147, baseType: !511, size: 128, offset: 16896)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !312, file: !313, line: 1149, baseType: !311, size: 64, offset: 17024)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !312, file: !313, line: 1151, baseType: !3009, size: 64, offset: 17088)
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3010, size: 64)
!3010 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !313, line: 1151, flags: DIFlagFwdDecl)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !312, file: !313, line: 1188, baseType: !105, size: 64, offset: 17152)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !312, file: !313, line: 1191, baseType: !3013, size: 64, offset: 17216)
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3014, size: 64)
!3014 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !313, line: 44, flags: DIFlagFwdDecl)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !312, file: !313, line: 1194, baseType: !3016, size: 64, offset: 17280)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !313, line: 45, flags: DIFlagFwdDecl)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !312, file: !313, line: 1197, baseType: !3019, size: 64, offset: 17344)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !313, line: 61, flags: DIFlagFwdDecl)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !312, file: !313, line: 1199, baseType: !3022, size: 64, offset: 17408)
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3024, line: 99, size: 128, elements: !3025)
!3024 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3025 = !{!3026, !3027, !3028}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3023, file: !3024, line: 100, baseType: !224, size: 64)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3023, file: !3024, line: 101, baseType: !172, size: 32, offset: 64)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3023, file: !3024, line: 103, baseType: !192, size: 16, offset: 96)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !312, file: !313, line: 1202, baseType: !3030, size: 64, offset: 17472)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !313, line: 48, flags: DIFlagFwdDecl)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !312, file: !313, line: 1205, baseType: !107, size: 64, offset: 17536)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !312, file: !313, line: 1206, baseType: !3034, size: 64, offset: 17600)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !954, line: 14, baseType: !3036)
!3036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !954, line: 12, size: 384, elements: !3037)
!3037 = !{!3038}
!3038 = !DIDerivedType(tag: DW_TAG_member, scope: !3036, file: !954, line: 13, baseType: !3039, size: 384)
!3039 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3036, file: !954, line: 13, size: 384, elements: !3040)
!3040 = !{!3041, !3042, !3043, !3044}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3039, file: !954, line: 13, baseType: !106, size: 32)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3039, file: !954, line: 13, baseType: !106, size: 32, offset: 32)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3039, file: !954, line: 13, baseType: !106, size: 32, offset: 64)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3039, file: !954, line: 13, baseType: !3045, size: 256, offset: 128)
!3045 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3046, line: 37, size: 256, elements: !3047)
!3046 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3047 = !{!3048, !3053, !3066, !3072, !3081, !3108, !3113}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3045, file: !3046, line: 42, baseType: !3049, size: 64)
!3049 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3045, file: !3046, line: 39, size: 64, elements: !3050)
!3050 = !{!3051, !3052}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3049, file: !3046, line: 40, baseType: !2712, size: 32)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3049, file: !3046, line: 41, baseType: !758, size: 32, offset: 32)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3045, file: !3046, line: 50, baseType: !3054, size: 192)
!3054 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3045, file: !3046, line: 45, size: 192, elements: !3055)
!3055 = !{!3056, !3058, !3059, !3065}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3054, file: !3046, line: 46, baseType: !3057, size: 32)
!3057 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !495, line: 95, baseType: !106)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3054, file: !3046, line: 47, baseType: !106, size: 32, offset: 32)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3054, file: !3046, line: 48, baseType: !3060, size: 64, offset: 64)
!3060 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3046, line: 11, baseType: !3061)
!3061 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3046, line: 8, size: 64, elements: !3062)
!3062 = !{!3063, !3064}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3061, file: !3046, line: 9, baseType: !106, size: 32)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3061, file: !3046, line: 10, baseType: !105, size: 64)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3054, file: !3046, line: 49, baseType: !106, size: 32, offset: 128)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3045, file: !3046, line: 57, baseType: !3067, size: 128)
!3067 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3045, file: !3046, line: 53, size: 128, elements: !3068)
!3068 = !{!3069, !3070, !3071}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3067, file: !3046, line: 54, baseType: !2712, size: 32)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3067, file: !3046, line: 55, baseType: !758, size: 32, offset: 32)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3067, file: !3046, line: 56, baseType: !3060, size: 64, offset: 64)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3045, file: !3046, line: 66, baseType: !3073, size: 256)
!3073 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3045, file: !3046, line: 60, size: 256, elements: !3074)
!3074 = !{!3075, !3076, !3077, !3078, !3080}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3073, file: !3046, line: 61, baseType: !2712, size: 32)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3073, file: !3046, line: 62, baseType: !758, size: 32, offset: 32)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3073, file: !3046, line: 63, baseType: !106, size: 32, offset: 64)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3073, file: !3046, line: 64, baseType: !3079, size: 64, offset: 128)
!3079 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !495, line: 94, baseType: !1177)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3073, file: !3046, line: 65, baseType: !3079, size: 64, offset: 192)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3045, file: !3046, line: 105, baseType: !3082, size: 256)
!3082 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3045, file: !3046, line: 69, size: 256, elements: !3083)
!3083 = !{!3084, !3085}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3082, file: !3046, line: 70, baseType: !105, size: 64)
!3085 = !DIDerivedType(tag: DW_TAG_member, scope: !3082, file: !3046, line: 79, baseType: !3086, size: 192, offset: 64)
!3086 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3082, file: !3046, line: 79, size: 192, elements: !3087)
!3087 = !{!3088, !3089, !3090, !3097, !3102}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3086, file: !3046, line: 81, baseType: !106, size: 32)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3086, file: !3046, line: 86, baseType: !198, size: 16)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3086, file: !3046, line: 92, baseType: !3091, size: 192)
!3091 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3086, file: !3046, line: 88, size: 192, elements: !3092)
!3092 = !{!3093, !3095, !3096}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3091, file: !3046, line: 89, baseType: !3094, size: 64)
!3094 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, size: 64, elements: !489)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3091, file: !3046, line: 90, baseType: !105, size: 64, offset: 64)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3091, file: !3046, line: 91, baseType: !105, size: 64, offset: 128)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3086, file: !3046, line: 97, baseType: !3098, size: 96)
!3098 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3086, file: !3046, line: 94, size: 96, elements: !3099)
!3099 = !{!3100, !3101}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3098, file: !3046, line: 95, baseType: !3094, size: 64)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3098, file: !3046, line: 96, baseType: !323, size: 32, offset: 64)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3086, file: !3046, line: 103, baseType: !3103, size: 128)
!3103 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3086, file: !3046, line: 99, size: 128, elements: !3104)
!3104 = !{!3105, !3106, !3107}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3103, file: !3046, line: 100, baseType: !107, size: 64)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3103, file: !3046, line: 101, baseType: !323, size: 32, offset: 64)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3103, file: !3046, line: 102, baseType: !323, size: 32, offset: 96)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3045, file: !3046, line: 111, baseType: !3109, size: 128)
!3109 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3045, file: !3046, line: 108, size: 128, elements: !3110)
!3110 = !{!3111, !3112}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3109, file: !3046, line: 109, baseType: !144, size: 64)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3109, file: !3046, line: 110, baseType: !106, size: 32, offset: 64)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3045, file: !3046, line: 118, baseType: !3114, size: 128)
!3114 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3045, file: !3046, line: 114, size: 128, elements: !3115)
!3115 = !{!3116, !3117, !3118}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3114, file: !3046, line: 115, baseType: !105, size: 64)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3114, file: !3046, line: 116, baseType: !106, size: 32, offset: 64)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3114, file: !3046, line: 117, baseType: !5, size: 32, offset: 96)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !312, file: !313, line: 1208, baseType: !2895, size: 448, offset: 17664)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !312, file: !313, line: 1215, baseType: !380, size: 64, offset: 18112)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !312, file: !313, line: 1217, baseType: !380, size: 64, offset: 18176)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !312, file: !313, line: 1219, baseType: !380, size: 64, offset: 18240)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !312, file: !313, line: 1223, baseType: !3124, size: 64, offset: 18304)
!3124 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !81, line: 99, baseType: !3125)
!3125 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !81, line: 99, size: 64, elements: !3126)
!3126 = !{!3127}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3125, file: !81, line: 99, baseType: !579, size: 64)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !312, file: !313, line: 1225, baseType: !993, size: 32, offset: 18368)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !312, file: !313, line: 1226, baseType: !106, size: 32, offset: 18400)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !312, file: !313, line: 1227, baseType: !106, size: 32, offset: 18432)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !312, file: !313, line: 1231, baseType: !3132, size: 64, offset: 18496)
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3133, size: 64)
!3133 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !313, line: 1231, flags: DIFlagFwdDecl)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !312, file: !313, line: 1233, baseType: !112, size: 128, offset: 18560)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !312, file: !313, line: 1240, baseType: !3136, size: 64, offset: 18688)
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !313, line: 62, flags: DIFlagFwdDecl)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !312, file: !313, line: 1242, baseType: !3139, size: 64, offset: 18752)
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3140 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !313, line: 1242, flags: DIFlagFwdDecl)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !312, file: !313, line: 1244, baseType: !112, size: 128, offset: 18816)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !312, file: !313, line: 1245, baseType: !3143, size: 64, offset: 18944)
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3144, size: 64)
!3144 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !313, line: 51, flags: DIFlagFwdDecl)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !312, file: !313, line: 1246, baseType: !678, size: 256, offset: 19008)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !312, file: !313, line: 1247, baseType: !5, size: 32, offset: 19264)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !312, file: !313, line: 1250, baseType: !3148, size: 64, offset: 19328)
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3149, size: 64)
!3149 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !313, line: 57, flags: DIFlagFwdDecl)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !312, file: !313, line: 1251, baseType: !678, size: 256, offset: 19392)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !312, file: !313, line: 1252, baseType: !112, size: 128, offset: 19648)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !312, file: !313, line: 1259, baseType: !2025, size: 64, offset: 19776)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !312, file: !313, line: 1260, baseType: !198, size: 16, offset: 19840)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !312, file: !313, line: 1261, baseType: !198, size: 16, offset: 19856)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !312, file: !313, line: 1314, baseType: !3156, size: 64, offset: 19904)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3158, line: 62, size: 256, align: 256, elements: !3159)
!3158 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3159 = !{!3160, !3161, !3162, !3163, !3164, !3165, !3166}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3157, file: !3158, line: 75, baseType: !323, size: 32)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3157, file: !3158, line: 90, baseType: !323, size: 32, offset: 32)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3157, file: !3158, line: 112, baseType: !381, size: 64, offset: 64)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3157, file: !3158, line: 132, baseType: !323, size: 32, offset: 128)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3157, file: !3158, line: 140, baseType: !323, size: 32, offset: 160)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3157, file: !3158, line: 149, baseType: !323, size: 32, offset: 192)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3157, file: !3158, line: 154, baseType: !3167, offset: 224)
!3167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, elements: !748)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !312, file: !313, line: 1315, baseType: !322, size: 32, offset: 19968)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !312, file: !313, line: 1316, baseType: !322, size: 32, offset: 20000)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !312, file: !313, line: 1321, baseType: !107, size: 64, offset: 20032)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !312, file: !313, line: 1325, baseType: !106, size: 32, offset: 20096)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !312, file: !313, line: 1326, baseType: !106, size: 32, offset: 20128)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !312, file: !313, line: 1327, baseType: !106, size: 32, offset: 20160)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !312, file: !313, line: 1328, baseType: !106, size: 32, offset: 20192)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !312, file: !313, line: 1329, baseType: !664, size: 128, align: 64, offset: 20224)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !312, file: !313, line: 1332, baseType: !3177, size: 128, offset: 20352)
!3177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3178, line: 51, size: 128, elements: !3179)
!3178 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3179 = !{!3180, !3185, !3186}
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3177, file: !3178, line: 60, baseType: !3181, size: 64)
!3181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3182, line: 7, size: 64, elements: !3183)
!3182 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3183 = !{!3184}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3181, file: !3182, line: 12, baseType: !576, size: 64)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3177, file: !3178, line: 63, baseType: !272, size: 8, offset: 64)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3177, file: !3178, line: 70, baseType: !272, size: 8, offset: 72)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !312, file: !313, line: 1335, baseType: !2422, size: 64, offset: 20480)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !312, file: !313, line: 1337, baseType: !3189, size: 128, offset: 20544)
!3189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3178, line: 39, size: 128, elements: !3190)
!3190 = !{!3191, !3192, !3193}
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3189, file: !3178, line: 40, baseType: !1812, size: 64)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3189, file: !3178, line: 42, baseType: !323, size: 32, offset: 64)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3189, file: !3178, line: 43, baseType: !323, size: 32, offset: 96)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !312, file: !313, line: 1340, baseType: !3195, size: 64, offset: 20672)
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3196 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !313, line: 69, flags: DIFlagFwdDecl)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !312, file: !313, line: 1351, baseType: !106, size: 32, offset: 20736)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !312, file: !313, line: 1352, baseType: !106, size: 32, offset: 20768)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !312, file: !313, line: 1354, baseType: !107, size: 64, offset: 20800)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !312, file: !313, line: 1364, baseType: !380, size: 64, offset: 20864)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !312, file: !313, line: 1365, baseType: !380, size: 64, offset: 20928)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !312, file: !313, line: 1412, baseType: !107, size: 64, offset: 20992)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !312, file: !313, line: 1453, baseType: !3204, size: 64, offset: 21056)
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !313, line: 1453, flags: DIFlagFwdDecl)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !312, file: !313, line: 1457, baseType: !3207, size: 64, offset: 21120)
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3208, size: 64)
!3208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !66, line: 61, size: 576, elements: !3209)
!3209 = !{!3210, !3211, !3230, !3233, !3234, !3267, !3277}
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3208, file: !66, line: 62, baseType: !65, size: 32)
!3211 = !DIDerivedType(tag: DW_TAG_member, scope: !3208, file: !66, line: 64, baseType: !3212, size: 192, offset: 64)
!3212 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3208, file: !66, line: 64, size: 192, elements: !3213)
!3213 = !{!3214, !3225}
!3214 = !DIDerivedType(tag: DW_TAG_member, scope: !3212, file: !66, line: 65, baseType: !3215, size: 192)
!3215 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3212, file: !66, line: 65, size: 192, elements: !3216)
!3216 = !{!3217, !3224}
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3215, file: !66, line: 66, baseType: !3218, size: 128)
!3218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3219, line: 50, size: 128, elements: !3220)
!3219 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3220 = !{!3221, !3222, !3223}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3218, file: !3219, line: 52, baseType: !107, size: 64)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3218, file: !3219, line: 54, baseType: !5, size: 32, offset: 64)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3218, file: !3219, line: 55, baseType: !5, size: 32, offset: 96)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3215, file: !66, line: 67, baseType: !107, size: 64, offset: 128)
!3225 = !DIDerivedType(tag: DW_TAG_member, scope: !3212, file: !66, line: 70, baseType: !3226, size: 192)
!3226 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3212, file: !66, line: 70, size: 192, elements: !3227)
!3227 = !{!3228, !3229}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3226, file: !66, line: 71, baseType: !664, size: 128, align: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3226, file: !66, line: 72, baseType: !107, size: 64, offset: 128)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3208, file: !66, line: 76, baseType: !3231, size: 64, offset: 256)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3232, size: 64)
!3232 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !66, line: 76, flags: DIFlagFwdDecl)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3208, file: !66, line: 77, baseType: !107, size: 64, offset: 320)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3208, file: !66, line: 79, baseType: !3235, size: 64, offset: 384)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3219, line: 25, size: 256, elements: !3237)
!3237 = !{!3238, !3244, !3248}
!3238 = !DIDerivedType(tag: DW_TAG_member, scope: !3236, file: !3219, line: 26, baseType: !3239, size: 128)
!3239 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3236, file: !3219, line: 26, size: 128, elements: !3240)
!3240 = !{!3241, !3243}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3239, file: !3219, line: 27, baseType: !3242, size: 128)
!3242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 128, elements: !1666)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3239, file: !3219, line: 28, baseType: !3242, size: 128)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3236, file: !3219, line: 31, baseType: !3245, size: 64, offset: 128)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3247)
!3247 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3219, line: 23, flags: DIFlagFwdDecl)
!3248 = !DIDerivedType(tag: DW_TAG_member, scope: !3236, file: !3219, line: 33, baseType: !3249, size: 64, offset: 192)
!3249 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3236, file: !3219, line: 33, size: 64, elements: !3250)
!3250 = !{!3251, !3257, !3262}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3249, file: !3219, line: 38, baseType: !3252, size: 64)
!3252 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3249, file: !3219, line: 34, size: 64, elements: !3253)
!3253 = !{!3254, !3255, !3256}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3252, file: !3219, line: 35, baseType: !803, size: 32)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3252, file: !3219, line: 36, baseType: !180, size: 8, offset: 32)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3252, file: !3219, line: 37, baseType: !180, size: 8, offset: 40)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3249, file: !3219, line: 42, baseType: !3258, size: 16)
!3258 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3249, file: !3219, line: 39, size: 16, elements: !3259)
!3259 = !{!3260, !3261}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3258, file: !3219, line: 40, baseType: !180, size: 8)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3258, file: !3219, line: 41, baseType: !180, size: 8, offset: 8)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3249, file: !3219, line: 46, baseType: !3263, size: 16)
!3263 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3249, file: !3219, line: 43, size: 16, elements: !3264)
!3264 = !{!3265, !3266}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3263, file: !3219, line: 44, baseType: !180, size: 8)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3263, file: !3219, line: 45, baseType: !180, size: 8, offset: 8)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3208, file: !66, line: 81, baseType: !3268, size: 64, offset: 448)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !66, line: 85, size: 384, elements: !3270)
!3270 = !{!3271, !3272, !3273, !3274, !3275, !3276}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3269, file: !66, line: 86, baseType: !3231, size: 64)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3269, file: !66, line: 87, baseType: !107, size: 64, offset: 64)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3269, file: !66, line: 88, baseType: !107, size: 64, offset: 128)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3269, file: !66, line: 89, baseType: !107, size: 64, offset: 192)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3269, file: !66, line: 90, baseType: !272, size: 8, offset: 256)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3269, file: !66, line: 92, baseType: !3268, size: 64, offset: 320)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3208, file: !66, line: 82, baseType: !5, size: 32, offset: 512)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !312, file: !313, line: 1463, baseType: !3279, offset: 21184)
!3279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !313, line: 739, elements: !649)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !312, file: !313, line: 1470, baseType: !664, size: 128, align: 64, offset: 21184)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !312, file: !313, line: 1471, baseType: !328, size: 32, offset: 21312)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !312, file: !313, line: 1472, baseType: !106, size: 32, offset: 21344)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !312, file: !313, line: 1474, baseType: !311, size: 64, offset: 21376)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !312, file: !313, line: 1475, baseType: !3285, size: 320, offset: 21440)
!3285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3286, line: 11, size: 320, elements: !3287)
!3286 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!3287 = !{!3288, !3289, !3290, !3295}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3285, file: !3286, line: 16, baseType: !732, size: 128)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3285, file: !3286, line: 17, baseType: !107, size: 64, offset: 128)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3285, file: !3286, line: 18, baseType: !3291, size: 64, offset: 192)
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3292, size: 64)
!3292 = !DISubroutineType(types: !3293)
!3293 = !{null, !3294}
!3294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3285, file: !3286, line: 19, baseType: !322, size: 32, offset: 256)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !312, file: !313, line: 1478, baseType: !3297, size: 64, offset: 21760)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !313, line: 1478, flags: DIFlagFwdDecl)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !312, file: !313, line: 1482, baseType: !328, size: 32, offset: 21824)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !312, file: !313, line: 1489, baseType: !105, size: 64, offset: 21888)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !312, file: !313, line: 1504, baseType: !105, size: 64, offset: 21952)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !312, file: !313, line: 1505, baseType: !381, size: 64, offset: 22016)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !312, file: !313, line: 1506, baseType: !380, size: 64, offset: 22080)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !312, file: !313, line: 1507, baseType: !381, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !312, file: !313, line: 1508, baseType: !381, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !312, file: !313, line: 1509, baseType: !381, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !312, file: !313, line: 1510, baseType: !664, size: 128, align: 64, offset: 22208)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !312, file: !313, line: 1511, baseType: !106, size: 32, offset: 22336)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !312, file: !313, line: 1515, baseType: !3310, size: 64, offset: 22400)
!3310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !342, line: 56, size: 64, elements: !3311)
!3311 = !{!3312}
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3310, file: !342, line: 57, baseType: !345, size: 64)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !312, file: !313, line: 1518, baseType: !3310, size: 64, offset: 22464)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !312, file: !313, line: 1528, baseType: !664, size: 128, align: 64, offset: 22528)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !312, file: !313, line: 1552, baseType: !3316, size: 35328, offset: 23040)
!3316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3317, line: 430, size: 35328, elements: !3318)
!3317 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3318 = !{!3319, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3348, !3349, !3350, !3351, !3352, !3353, !3356, !3357, !3358, !3359}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3316, file: !3317, line: 432, baseType: !3320, size: 192)
!3320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3321, size: 192, elements: !716)
!3321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3322, line: 16, size: 64, elements: !3323)
!3322 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3323 = !{!3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336}
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3321, file: !3322, line: 17, baseType: !190, size: 16)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3321, file: !3322, line: 18, baseType: !190, size: 16, offset: 16)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3321, file: !3322, line: 19, baseType: !190, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3321, file: !3322, line: 19, baseType: !190, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3321, file: !3322, line: 19, baseType: !190, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3321, file: !3322, line: 19, baseType: !190, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3321, file: !3322, line: 19, baseType: !190, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3321, file: !3322, line: 20, baseType: !190, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3321, file: !3322, line: 20, baseType: !190, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3321, file: !3322, line: 20, baseType: !190, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3321, file: !3322, line: 20, baseType: !190, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3321, file: !3322, line: 20, baseType: !190, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3321, file: !3322, line: 20, baseType: !190, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3316, file: !3317, line: 436, baseType: !107, size: 64, offset: 192)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3316, file: !3317, line: 440, baseType: !192, size: 16, offset: 256)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3316, file: !3317, line: 441, baseType: !192, size: 16, offset: 272)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3316, file: !3317, line: 442, baseType: !192, size: 16, offset: 288)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3316, file: !3317, line: 443, baseType: !192, size: 16, offset: 304)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3316, file: !3317, line: 447, baseType: !107, size: 64, offset: 320)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3316, file: !3317, line: 448, baseType: !107, size: 64, offset: 384)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3316, file: !3317, line: 459, baseType: !3345, size: 256, offset: 448)
!3345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3346, size: 256, elements: !138)
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3347, size: 64)
!3347 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3317, line: 428, flags: DIFlagFwdDecl)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3316, file: !3317, line: 461, baseType: !107, size: 64, offset: 704)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3316, file: !3317, line: 463, baseType: !107, size: 64, offset: 768)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3316, file: !3317, line: 465, baseType: !107, size: 64, offset: 832)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3316, file: !3317, line: 466, baseType: !107, size: 64, offset: 896)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3316, file: !3317, line: 467, baseType: !107, size: 64, offset: 960)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3316, file: !3317, line: 473, baseType: !3354, size: 64, offset: 1024)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3317, line: 10, flags: DIFlagFwdDecl)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3316, file: !3317, line: 480, baseType: !107, size: 64, offset: 1088)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3316, file: !3317, line: 482, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3316, file: !3317, line: 491, baseType: !322, size: 32, offset: 1184)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3316, file: !3317, line: 501, baseType: !3360, size: 33792, offset: 1536)
!3360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3361, line: 448, size: 33792, elements: !3362)
!3361 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3362 = !{!3363, !3364, !3365, !3525, !3526, !3532, !3533}
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3360, file: !3361, line: 461, baseType: !5, size: 32)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3360, file: !3361, line: 468, baseType: !107, size: 64, offset: 64)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3360, file: !3361, line: 476, baseType: !3366, size: 64, offset: 128)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3361, line: 356, size: 33280, align: 512, elements: !3368)
!3368 = !{!3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3367, file: !3361, line: 358, baseType: !5, size: 32)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3367, file: !3361, line: 361, baseType: !5, size: 32, offset: 32)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3367, file: !3361, line: 364, baseType: !380, size: 64, offset: 64)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3367, file: !3361, line: 367, baseType: !380, size: 64, offset: 128)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3367, file: !3361, line: 370, baseType: !380, size: 64, offset: 192)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3367, file: !3361, line: 373, baseType: !5, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3367, file: !3361, line: 376, baseType: !5, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3367, file: !3361, line: 391, baseType: !5, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3367, file: !3361, line: 394, baseType: !5, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3367, file: !3361, line: 397, baseType: !3379, size: 32768, offset: 512)
!3379 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3361, line: 348, size: 32768, elements: !3380)
!3380 = !{!3381, !3396, !3431, !3508, !3521}
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3379, file: !3361, line: 349, baseType: !3382, size: 896)
!3382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3361, line: 12, size: 896, elements: !3383)
!3383 = !{!3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3395}
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3382, file: !3361, line: 13, baseType: !322, size: 32)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3382, file: !3361, line: 14, baseType: !322, size: 32, offset: 32)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3382, file: !3361, line: 15, baseType: !322, size: 32, offset: 64)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3382, file: !3361, line: 16, baseType: !322, size: 32, offset: 96)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3382, file: !3361, line: 17, baseType: !322, size: 32, offset: 128)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3382, file: !3361, line: 18, baseType: !322, size: 32, offset: 160)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3382, file: !3361, line: 19, baseType: !322, size: 32, offset: 192)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3382, file: !3361, line: 22, baseType: !3392, size: 640, offset: 224)
!3392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, size: 640, elements: !3393)
!3393 = !{!3394}
!3394 = !DISubrange(count: 20)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3382, file: !3361, line: 25, baseType: !322, size: 32, offset: 864)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3379, file: !3361, line: 350, baseType: !3397, size: 4096, align: 128)
!3397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3361, line: 34, size: 4096, align: 128, elements: !3398)
!3398 = !{!3399, !3400, !3401, !3402, !3403, !3418, !3419, !3420, !3422, !3424, !3426}
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3397, file: !3361, line: 35, baseType: !190, size: 16)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3397, file: !3361, line: 36, baseType: !190, size: 16, offset: 16)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3397, file: !3361, line: 37, baseType: !190, size: 16, offset: 32)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3397, file: !3361, line: 38, baseType: !190, size: 16, offset: 48)
!3403 = !DIDerivedType(tag: DW_TAG_member, scope: !3397, file: !3361, line: 39, baseType: !3404, size: 128, offset: 64)
!3404 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3397, file: !3361, line: 39, size: 128, elements: !3405)
!3405 = !{!3406, !3411}
!3406 = !DIDerivedType(tag: DW_TAG_member, scope: !3404, file: !3361, line: 40, baseType: !3407, size: 128)
!3407 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3404, file: !3361, line: 40, size: 128, elements: !3408)
!3408 = !{!3409, !3410}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3407, file: !3361, line: 41, baseType: !380, size: 64)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3407, file: !3361, line: 42, baseType: !380, size: 64, offset: 64)
!3411 = !DIDerivedType(tag: DW_TAG_member, scope: !3404, file: !3361, line: 44, baseType: !3412, size: 128)
!3412 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3404, file: !3361, line: 44, size: 128, elements: !3413)
!3413 = !{!3414, !3415, !3416, !3417}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3412, file: !3361, line: 45, baseType: !322, size: 32)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3412, file: !3361, line: 46, baseType: !322, size: 32, offset: 32)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3412, file: !3361, line: 47, baseType: !322, size: 32, offset: 64)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3412, file: !3361, line: 48, baseType: !322, size: 32, offset: 96)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3397, file: !3361, line: 51, baseType: !322, size: 32, offset: 192)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3397, file: !3361, line: 52, baseType: !322, size: 32, offset: 224)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3397, file: !3361, line: 55, baseType: !3421, size: 1024, offset: 256)
!3421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, size: 1024, elements: !1657)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3397, file: !3361, line: 58, baseType: !3423, size: 2048, offset: 1280)
!3423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, size: 2048, elements: !2965)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3397, file: !3361, line: 60, baseType: !3425, size: 384, offset: 3328)
!3425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, size: 384, elements: !202)
!3426 = !DIDerivedType(tag: DW_TAG_member, scope: !3397, file: !3361, line: 62, baseType: !3427, size: 384, offset: 3712)
!3427 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3397, file: !3361, line: 62, size: 384, elements: !3428)
!3428 = !{!3429, !3430}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3427, file: !3361, line: 63, baseType: !3425, size: 384)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3427, file: !3361, line: 64, baseType: !3425, size: 384)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3379, file: !3361, line: 351, baseType: !3432, size: 1088)
!3432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3361, line: 79, size: 1088, elements: !3433)
!3433 = !{!3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3507}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3432, file: !3361, line: 80, baseType: !322, size: 32)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3432, file: !3361, line: 81, baseType: !322, size: 32, offset: 32)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3432, file: !3361, line: 82, baseType: !322, size: 32, offset: 64)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3432, file: !3361, line: 83, baseType: !322, size: 32, offset: 96)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3432, file: !3361, line: 84, baseType: !322, size: 32, offset: 128)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3432, file: !3361, line: 85, baseType: !322, size: 32, offset: 160)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3432, file: !3361, line: 86, baseType: !322, size: 32, offset: 192)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3432, file: !3361, line: 88, baseType: !3392, size: 640, offset: 224)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3432, file: !3361, line: 89, baseType: !180, size: 8, offset: 864)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3432, file: !3361, line: 90, baseType: !180, size: 8, offset: 872)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3432, file: !3361, line: 91, baseType: !180, size: 8, offset: 880)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3432, file: !3361, line: 92, baseType: !180, size: 8, offset: 888)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3432, file: !3361, line: 93, baseType: !180, size: 8, offset: 896)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3432, file: !3361, line: 94, baseType: !180, size: 8, offset: 904)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3432, file: !3361, line: 95, baseType: !3449, size: 64, offset: 960)
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3450, size: 64)
!3450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3451, line: 11, size: 128, elements: !3452)
!3451 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3452 = !{!3453, !3454}
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3450, file: !3451, line: 12, baseType: !144, size: 64)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3450, file: !3451, line: 13, baseType: !3455, size: 64, offset: 64)
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3457, line: 103, size: 1344, elements: !3458)
!3457 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3458 = !{!3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3487, !3488, !3489}
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3456, file: !3457, line: 109, baseType: !107, size: 64)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3456, file: !3457, line: 110, baseType: !107, size: 64, offset: 64)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3456, file: !3457, line: 111, baseType: !107, size: 64, offset: 128)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3456, file: !3457, line: 112, baseType: !107, size: 64, offset: 192)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3456, file: !3457, line: 113, baseType: !107, size: 64, offset: 256)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3456, file: !3457, line: 114, baseType: !107, size: 64, offset: 320)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3456, file: !3457, line: 117, baseType: !107, size: 64, offset: 384)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3456, file: !3457, line: 118, baseType: !107, size: 64, offset: 448)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3456, file: !3457, line: 119, baseType: !107, size: 64, offset: 512)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3456, file: !3457, line: 120, baseType: !107, size: 64, offset: 576)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3456, file: !3457, line: 121, baseType: !107, size: 64, offset: 640)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3456, file: !3457, line: 122, baseType: !107, size: 64, offset: 704)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3456, file: !3457, line: 123, baseType: !107, size: 64, offset: 768)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3456, file: !3457, line: 124, baseType: !107, size: 64, offset: 832)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3456, file: !3457, line: 125, baseType: !107, size: 64, offset: 896)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3456, file: !3457, line: 139, baseType: !107, size: 64, offset: 960)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3456, file: !3457, line: 142, baseType: !107, size: 64, offset: 1024)
!3476 = !DIDerivedType(tag: DW_TAG_member, scope: !3456, file: !3457, line: 144, baseType: !3477, size: 64, offset: 1088)
!3477 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3456, file: !3457, line: 144, size: 64, elements: !3478)
!3478 = !{!3479, !3480, !3481}
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3477, file: !3457, line: 146, baseType: !190, size: 16)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3477, file: !3457, line: 148, baseType: !380, size: 64)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3477, file: !3457, line: 150, baseType: !3482, size: 64)
!3482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3457, line: 59, size: 64, elements: !3483)
!3483 = !{!3484, !3485, !3486}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3482, file: !3457, line: 61, baseType: !380, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3482, file: !3457, line: 63, baseType: !380, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3482, file: !3457, line: 65, baseType: !380, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3456, file: !3457, line: 153, baseType: !107, size: 64, offset: 1152)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3456, file: !3457, line: 154, baseType: !107, size: 64, offset: 1216)
!3489 = !DIDerivedType(tag: DW_TAG_member, scope: !3456, file: !3457, line: 156, baseType: !3490, size: 64, offset: 1280)
!3490 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3456, file: !3457, line: 156, size: 64, elements: !3491)
!3491 = !{!3492, !3493, !3494}
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3490, file: !3457, line: 158, baseType: !190, size: 16)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3490, file: !3457, line: 160, baseType: !380, size: 64)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3490, file: !3457, line: 162, baseType: !3495, size: 64)
!3495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3457, line: 69, size: 64, elements: !3496)
!3496 = !{!3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506}
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3495, file: !3457, line: 71, baseType: !380, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3495, file: !3457, line: 73, baseType: !380, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3495, file: !3457, line: 75, baseType: !380, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3495, file: !3457, line: 77, baseType: !380, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3495, file: !3457, line: 80, baseType: !380, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3495, file: !3457, line: 83, baseType: !380, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3495, file: !3457, line: 86, baseType: !380, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3495, file: !3457, line: 88, baseType: !380, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3495, file: !3457, line: 93, baseType: !380, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3495, file: !3457, line: 100, baseType: !380, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3432, file: !3361, line: 96, baseType: !322, size: 32, offset: 1024)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3379, file: !3361, line: 352, baseType: !3509, size: 4608, align: 512)
!3509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3361, line: 333, size: 4608, align: 512, elements: !3510)
!3510 = !{!3511, !3512, !3519}
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3509, file: !3361, line: 334, baseType: !3397, size: 4096, align: 128)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3509, file: !3361, line: 335, baseType: !3513, size: 512, offset: 4096)
!3513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3361, line: 312, size: 512, elements: !3514)
!3514 = !{!3515, !3516, !3517}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3513, file: !3361, line: 313, baseType: !380, size: 64)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3513, file: !3361, line: 314, baseType: !380, size: 64, offset: 64)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3513, file: !3361, line: 315, baseType: !3518, size: 384, offset: 128)
!3518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, size: 384, elements: !218)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3509, file: !3361, line: 336, baseType: !3520, offset: 4608)
!3520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, elements: !748)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3379, file: !3361, line: 353, baseType: !3522, size: 32768)
!3522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 32768, elements: !3523)
!3523 = !{!3524}
!3524 = !DISubrange(count: 4096)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3360, file: !3361, line: 484, baseType: !3366, size: 64, offset: 192)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3360, file: !3361, line: 491, baseType: !3527, size: 128, offset: 256)
!3527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3361, line: 404, size: 128, elements: !3528)
!3528 = !{!3529, !3530, !3531}
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3527, file: !3361, line: 424, baseType: !380, size: 64)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3527, file: !3361, line: 432, baseType: !5, size: 32, offset: 64)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3527, file: !3361, line: 440, baseType: !5, size: 32, offset: 96)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3360, file: !3361, line: 498, baseType: !3527, size: 128, offset: 384)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3360, file: !3361, line: 508, baseType: !3367, size: 33280, align: 512, offset: 512)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "kswapd_order", scope: !130, file: !73, line: 1321, baseType: !106, size: 32, offset: 106368)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "kswapd_highest_zoneidx", scope: !130, file: !73, line: 1322, baseType: !72, size: 32, offset: 106400)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "kswapd_failures", scope: !130, file: !73, line: 1324, baseType: !106, size: 32, offset: 106432)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "kcompactd_max_order", scope: !130, file: !73, line: 1327, baseType: !106, size: 32, offset: 106464)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "kcompactd_highest_zoneidx", scope: !130, file: !73, line: 1328, baseType: !72, size: 32, offset: 106496)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "kcompactd_wait", scope: !130, file: !73, line: 1329, baseType: !299, size: 192, offset: 106560)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "kcompactd", scope: !130, file: !73, line: 1330, baseType: !311, size: 64, offset: 106752)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "proactive_compact_trigger", scope: !130, file: !73, line: 1331, baseType: !272, size: 8, offset: 106816)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "totalreserve_pages", scope: !130, file: !73, line: 1337, baseType: !107, size: 64, offset: 106880)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "min_unmapped_pages", scope: !130, file: !73, line: 1343, baseType: !107, size: 64, offset: 106944)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "min_slab_pages", scope: !130, file: !73, line: 1344, baseType: !107, size: 64, offset: 107008)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "_pad1_", scope: !130, file: !73, line: 1348, baseType: !241, align: 512, offset: 107520)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "__lruvec", scope: !130, file: !73, line: 1384, baseType: !3547, size: 1088, offset: 107520)
!3547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lruvec", file: !73, line: 620, size: 1088, elements: !3548)
!3548 = !{!3549, !3553, !3554, !3555, !3556, !3557, !3558}
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "lists", scope: !3547, file: !73, line: 621, baseType: !3550, size: 640)
!3550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 640, elements: !3551)
!3551 = !{!3552}
!3552 = !DISubrange(count: 5)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "lru_lock", scope: !3547, file: !73, line: 623, baseType: !152, size: 32, offset: 640)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "anon_cost", scope: !3547, file: !73, line: 629, baseType: !107, size: 64, offset: 704)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "file_cost", scope: !3547, file: !73, line: 630, baseType: !107, size: 64, offset: 768)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "nonresident_age", scope: !3547, file: !73, line: 632, baseType: !224, size: 64, offset: 832)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "refaults", scope: !3547, file: !73, line: 634, baseType: !263, size: 128, offset: 896)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3547, file: !73, line: 636, baseType: !107, size: 64, offset: 1024)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !130, file: !73, line: 1386, baseType: !107, size: 64, offset: 108608)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "_pad2_", scope: !130, file: !73, line: 1395, baseType: !241, align: 512, offset: 109056)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "per_cpu_nodestats", scope: !130, file: !73, line: 1398, baseType: !3562, size: 64, offset: 109056)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "per_cpu_nodestat", file: !73, line: 713, size: 336, elements: !3564)
!3564 = !{!3565, !3566}
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "stat_threshold", scope: !3563, file: !73, line: 714, baseType: !210, size: 8)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "vm_node_stat_diff", scope: !3563, file: !73, line: 715, baseType: !3567, size: 328, offset: 8)
!3567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 328, elements: !3568)
!3568 = !{!3569}
!3569 = !DISubrange(count: 41)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "vm_stat", scope: !130, file: !73, line: 1399, baseType: !3571, size: 2624, offset: 109120)
!3571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 2624, elements: !3568)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "memtier", scope: !130, file: !73, line: 1401, baseType: !3573, size: 64, offset: 111744)
!3573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3574, size: 64)
!3574 = !DICompositeType(tag: DW_TAG_structure_type, name: "memory_tier", file: !73, line: 1401, flags: DIFlagFwdDecl)
!3575 = !DILocation(line: 15, column: 9, scope: !126)
!3576 = !DILocation(line: 15, column: 2, scope: !126)
!3577 = distinct !DISubprogram(name: "__first_node", scope: !81, file: !81, line: 264, type: !3578, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3582)
!3578 = !DISubroutineType(types: !3579)
!3579 = !{!5, !3580}
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3581, size: 64)
!3581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3124)
!3582 = !{!3583, !3584, !3586}
!3583 = !DILocalVariable(name: "srcp", arg: 1, scope: !3577, file: !81, line: 264, type: !3580)
!3584 = !DILocalVariable(name: "__UNIQUE_ID___x83", scope: !3585, file: !81, line: 266, type: !5)
!3585 = distinct !DILexicalBlock(scope: !3577, file: !81, line: 266, column: 9)
!3586 = !DILocalVariable(name: "__UNIQUE_ID___y84", scope: !3585, file: !81, line: 266, type: !5)
!3587 = !DILocation(line: 264, column: 59, scope: !3577)
!3588 = !DILocation(line: 266, column: 9, scope: !3585)
!3589 = !DILocation(line: 266, column: 9, scope: !3577)
!3590 = !DILocation(line: 266, column: 2, scope: !3577)
!3591 = distinct !DISubprogram(name: "next_online_pgdat", scope: !1, file: !1, line: 18, type: !3592, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3594)
!3592 = !DISubroutineType(types: !3593)
!3593 = !{!129, !129}
!3594 = !{!3595, !3596}
!3595 = !DILocalVariable(name: "pgdat", arg: 1, scope: !3591, file: !1, line: 18, type: !129)
!3596 = !DILocalVariable(name: "nid", scope: !3591, file: !1, line: 20, type: !106)
!3597 = !DILocation(line: 18, column: 59, scope: !3591)
!3598 = !DILocation(line: 20, column: 2, scope: !3591)
!3599 = !DILocation(line: 20, column: 6, scope: !3591)
!3600 = !DILocation(line: 20, column: 29, scope: !3591)
!3601 = !DILocation(line: 20, column: 36, scope: !3591)
!3602 = !DILocation(line: 20, column: 12, scope: !3591)
!3603 = !DILocation(line: 22, column: 6, scope: !3604)
!3604 = distinct !DILexicalBlock(scope: !3591, file: !1, line: 22, column: 6)
!3605 = !DILocation(line: 22, column: 10, scope: !3604)
!3606 = !DILocation(line: 22, column: 6, scope: !3591)
!3607 = !DILocation(line: 23, column: 3, scope: !3604)
!3608 = !DILocation(line: 24, column: 9, scope: !3591)
!3609 = !DILocation(line: 24, column: 2, scope: !3591)
!3610 = !DILocation(line: 25, column: 1, scope: !3591)
!3611 = distinct !DISubprogram(name: "next_online_node", scope: !81, file: !81, line: 446, type: !3612, scopeLine: 447, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3614)
!3612 = !DISubroutineType(types: !3613)
!3613 = !{!5, !106}
!3614 = !{!3615}
!3615 = !DILocalVariable(name: "nid", arg: 1, scope: !3611, file: !81, line: 446, type: !106)
!3616 = !DILocation(line: 446, column: 49, scope: !3611)
!3617 = !DILocation(line: 448, column: 9, scope: !3611)
!3618 = !DILocation(line: 448, column: 2, scope: !3611)
!3619 = distinct !DISubprogram(name: "next_zone", scope: !1, file: !1, line: 30, type: !3620, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3622)
!3620 = !DISubroutineType(types: !3621)
!3621 = !{!289, !289}
!3622 = !{!3623, !3624}
!3623 = !DILocalVariable(name: "zone", arg: 1, scope: !3619, file: !1, line: 30, type: !289)
!3624 = !DILocalVariable(name: "pgdat", scope: !3619, file: !1, line: 32, type: !3625)
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3626, size: 64)
!3626 = !DIDerivedType(tag: DW_TAG_typedef, name: "pg_data_t", file: !73, line: 1406, baseType: !130)
!3627 = !DILocation(line: 30, column: 37, scope: !3619)
!3628 = !DILocation(line: 32, column: 2, scope: !3619)
!3629 = !DILocation(line: 32, column: 13, scope: !3619)
!3630 = !DILocation(line: 32, column: 21, scope: !3619)
!3631 = !DILocation(line: 32, column: 27, scope: !3619)
!3632 = !DILocation(line: 34, column: 6, scope: !3633)
!3633 = distinct !DILexicalBlock(scope: !3619, file: !1, line: 34, column: 6)
!3634 = !DILocation(line: 34, column: 13, scope: !3633)
!3635 = !DILocation(line: 34, column: 20, scope: !3633)
!3636 = !DILocation(line: 34, column: 31, scope: !3633)
!3637 = !DILocation(line: 34, column: 46, scope: !3633)
!3638 = !DILocation(line: 34, column: 11, scope: !3633)
!3639 = !DILocation(line: 34, column: 6, scope: !3619)
!3640 = !DILocation(line: 35, column: 7, scope: !3633)
!3641 = !DILocation(line: 35, column: 3, scope: !3633)
!3642 = !DILocation(line: 37, column: 29, scope: !3643)
!3643 = distinct !DILexicalBlock(scope: !3633, file: !1, line: 36, column: 7)
!3644 = !DILocation(line: 37, column: 11, scope: !3643)
!3645 = !DILocation(line: 37, column: 9, scope: !3643)
!3646 = !DILocation(line: 38, column: 7, scope: !3647)
!3647 = distinct !DILexicalBlock(scope: !3643, file: !1, line: 38, column: 7)
!3648 = !DILocation(line: 38, column: 7, scope: !3643)
!3649 = !DILocation(line: 39, column: 11, scope: !3647)
!3650 = !DILocation(line: 39, column: 18, scope: !3647)
!3651 = !DILocation(line: 39, column: 9, scope: !3647)
!3652 = !DILocation(line: 39, column: 4, scope: !3647)
!3653 = !DILocation(line: 41, column: 9, scope: !3647)
!3654 = !DILocation(line: 43, column: 9, scope: !3619)
!3655 = !DILocation(line: 44, column: 1, scope: !3619)
!3656 = !DILocation(line: 43, column: 2, scope: !3619)
!3657 = distinct !DISubprogram(name: "__next_zones_zonelist", scope: !1, file: !1, line: 56, type: !3658, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3662)
!3658 = !DISubroutineType(types: !3659)
!3659 = !{!3660, !3660, !72, !3661}
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3124, size: 64)
!3662 = !{!3663, !3664, !3665}
!3663 = !DILocalVariable(name: "z", arg: 1, scope: !3657, file: !1, line: 56, type: !3660)
!3664 = !DILocalVariable(name: "highest_zoneidx", arg: 2, scope: !3657, file: !1, line: 57, type: !72)
!3665 = !DILocalVariable(name: "nodes", arg: 3, scope: !3657, file: !1, line: 58, type: !3661)
!3666 = !DILocation(line: 56, column: 55, scope: !3657)
!3667 = !DILocation(line: 57, column: 21, scope: !3657)
!3668 = !DILocation(line: 58, column: 18, scope: !3657)
!3669 = !DILocation(line: 64, column: 6, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !3657, file: !1, line: 64, column: 6)
!3671 = !DILocation(line: 64, column: 6, scope: !3657)
!3672 = !DILocation(line: 65, column: 3, scope: !3670)
!3673 = !DILocation(line: 65, column: 28, scope: !3670)
!3674 = !DILocation(line: 65, column: 10, scope: !3670)
!3675 = !DILocation(line: 65, column: 33, scope: !3670)
!3676 = !DILocation(line: 65, column: 31, scope: !3670)
!3677 = !DILocation(line: 66, column: 5, scope: !3670)
!3678 = distinct !{!3678, !3672, !3677, !3679, !3680}
!3679 = !{!"llvm.loop.mustprogress"}
!3680 = !{!"llvm.loop.unroll.disable"}
!3681 = !DILocation(line: 68, column: 3, scope: !3670)
!3682 = !DILocation(line: 68, column: 28, scope: !3670)
!3683 = !DILocation(line: 68, column: 10, scope: !3670)
!3684 = !DILocation(line: 68, column: 33, scope: !3670)
!3685 = !DILocation(line: 68, column: 31, scope: !3670)
!3686 = !DILocation(line: 68, column: 49, scope: !3670)
!3687 = !DILocation(line: 69, column: 6, scope: !3670)
!3688 = !DILocation(line: 69, column: 9, scope: !3670)
!3689 = !DILocation(line: 69, column: 14, scope: !3670)
!3690 = !DILocation(line: 69, column: 35, scope: !3670)
!3691 = !DILocation(line: 69, column: 38, scope: !3670)
!3692 = !DILocation(line: 69, column: 18, scope: !3670)
!3693 = !DILocation(line: 69, column: 17, scope: !3670)
!3694 = !DILocation(line: 0, scope: !3670)
!3695 = !DILocation(line: 70, column: 5, scope: !3670)
!3696 = distinct !{!3696, !3681, !3695, !3679, !3680}
!3697 = !DILocation(line: 72, column: 9, scope: !3657)
!3698 = !DILocation(line: 72, column: 2, scope: !3657)
!3699 = distinct !DISubprogram(name: "zonelist_zone_idx", scope: !73, file: !73, line: 1599, type: !3700, scopeLine: 1600, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3702)
!3700 = !DISubroutineType(types: !3701)
!3701 = !{!106, !3660}
!3702 = !{!3703}
!3703 = !DILocalVariable(name: "zoneref", arg: 1, scope: !3699, file: !73, line: 1599, type: !3660)
!3704 = !DILocation(line: 1599, column: 53, scope: !3699)
!3705 = !DILocation(line: 1601, column: 9, scope: !3699)
!3706 = !DILocation(line: 1601, column: 18, scope: !3699)
!3707 = !DILocation(line: 1601, column: 2, scope: !3699)
!3708 = distinct !DISubprogram(name: "zref_in_nodemask", scope: !1, file: !1, line: 46, type: !3709, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3711)
!3709 = !DISubroutineType(types: !3710)
!3710 = !{!106, !3660, !3661}
!3711 = !{!3712, !3713}
!3712 = !DILocalVariable(name: "zref", arg: 1, scope: !3708, file: !1, line: 46, type: !3660)
!3713 = !DILocalVariable(name: "nodes", arg: 2, scope: !3708, file: !1, line: 46, type: !3661)
!3714 = !DILocation(line: 46, column: 52, scope: !3708)
!3715 = !DILocation(line: 46, column: 70, scope: !3708)
!3716 = !DILocation(line: 49, column: 9, scope: !3708)
!3717 = !DILocation(line: 49, column: 2, scope: !3708)
!3718 = distinct !DISubprogram(name: "lruvec_init", scope: !1, file: !1, line: 75, type: !3719, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3722)
!3719 = !DISubroutineType(types: !3720)
!3720 = !{null, !3721}
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3547, size: 64)
!3722 = !{!3723, !3724}
!3723 = !DILocalVariable(name: "lruvec", arg: 1, scope: !3718, file: !1, line: 75, type: !3721)
!3724 = !DILocalVariable(name: "lru", scope: !3718, file: !1, line: 77, type: !91)
!3725 = !DILocation(line: 75, column: 33, scope: !3718)
!3726 = !DILocation(line: 77, column: 2, scope: !3718)
!3727 = !DILocation(line: 77, column: 16, scope: !3718)
!3728 = !DILocation(line: 79, column: 9, scope: !3718)
!3729 = !DILocation(line: 79, column: 2, scope: !3718)
!3730 = !DILocation(line: 80, column: 2, scope: !3718)
!3731 = !DILocation(line: 80, column: 2, scope: !3732)
!3732 = distinct !DILexicalBlock(scope: !3718, file: !1, line: 80, column: 2)
!3733 = !DILocation(line: 82, column: 2, scope: !3734)
!3734 = distinct !DILexicalBlock(scope: !3718, file: !1, line: 82, column: 2)
!3735 = !DILocation(line: 82, column: 2, scope: !3736)
!3736 = distinct !DILexicalBlock(scope: !3734, file: !1, line: 82, column: 2)
!3737 = !DILocation(line: 83, column: 19, scope: !3736)
!3738 = !DILocation(line: 83, column: 27, scope: !3736)
!3739 = !DILocation(line: 83, column: 33, scope: !3736)
!3740 = !DILocation(line: 83, column: 3, scope: !3736)
!3741 = distinct !{!3741, !3733, !3742, !3679, !3680}
!3742 = !DILocation(line: 83, column: 37, scope: !3734)
!3743 = !DILocation(line: 90, column: 12, scope: !3718)
!3744 = !DILocation(line: 90, column: 20, scope: !3718)
!3745 = !DILocation(line: 90, column: 2, scope: !3718)
!3746 = !DILocation(line: 92, column: 22, scope: !3718)
!3747 = !DILocation(line: 92, column: 2, scope: !3718)
!3748 = !DILocation(line: 93, column: 1, scope: !3718)
!3749 = distinct !DISubprogram(name: "spinlock_check", scope: !3750, file: !3750, line: 324, type: !3751, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3754)
!3750 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!3751 = !DISubroutineType(types: !3752)
!3752 = !{!3753, !2076}
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!3754 = !{!3755}
!3755 = !DILocalVariable(name: "lock", arg: 1, scope: !3749, file: !3750, line: 324, type: !2076)
!3756 = !DILocation(line: 324, column: 67, scope: !3749)
!3757 = !DILocation(line: 326, column: 10, scope: !3749)
!3758 = !DILocation(line: 326, column: 16, scope: !3749)
!3759 = !DILocation(line: 326, column: 2, scope: !3749)
!3760 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !3761, file: !3761, line: 35, type: !3762, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3764)
!3761 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!3762 = !DISubroutineType(types: !3763)
!3763 = !{null, !111}
!3764 = !{!3765}
!3765 = !DILocalVariable(name: "list", arg: 1, scope: !3760, file: !3761, line: 35, type: !111)
!3766 = !DILocation(line: 35, column: 53, scope: !3760)
!3767 = !DILocation(line: 37, column: 2, scope: !3760)
!3768 = !DILocation(line: 37, column: 2, scope: !3769)
!3769 = distinct !DILexicalBlock(scope: !3760, file: !3761, line: 37, column: 2)
!3770 = !DILocation(line: 37, column: 2, scope: !3771)
!3771 = distinct !DILexicalBlock(scope: !3769, file: !3761, line: 37, column: 2)
!3772 = !DILocation(line: 37, column: 2, scope: !3773)
!3773 = distinct !DILexicalBlock(scope: !3769, file: !3761, line: 37, column: 2)
!3774 = !DILocation(line: 38, column: 2, scope: !3760)
!3775 = !DILocation(line: 38, column: 2, scope: !3776)
!3776 = distinct !DILexicalBlock(scope: !3760, file: !3761, line: 38, column: 2)
!3777 = !DILocation(line: 38, column: 2, scope: !3778)
!3778 = distinct !DILexicalBlock(scope: !3776, file: !3761, line: 38, column: 2)
!3779 = !DILocation(line: 38, column: 2, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3776, file: !3761, line: 38, column: 2)
!3781 = !DILocation(line: 39, column: 1, scope: !3760)
!3782 = distinct !DISubprogram(name: "list_del", scope: !3761, file: !3761, line: 227, type: !3762, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3783)
!3783 = !{!3784}
!3784 = !DILocalVariable(name: "entry", arg: 1, scope: !3782, file: !3761, line: 227, type: !111)
!3785 = !DILocation(line: 227, column: 47, scope: !3782)
!3786 = !DILocation(line: 229, column: 19, scope: !3782)
!3787 = !DILocation(line: 229, column: 2, scope: !3782)
!3788 = !DILocation(line: 230, column: 2, scope: !3782)
!3789 = !DILocation(line: 230, column: 9, scope: !3782)
!3790 = !DILocation(line: 230, column: 14, scope: !3782)
!3791 = !DILocation(line: 231, column: 2, scope: !3782)
!3792 = !DILocation(line: 231, column: 9, scope: !3782)
!3793 = !DILocation(line: 231, column: 14, scope: !3782)
!3794 = !DILocation(line: 232, column: 1, scope: !3782)
!3795 = distinct !DISubprogram(name: "lru_gen_init_lruvec", scope: !73, file: !73, line: 582, type: !3719, scopeLine: 583, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3796)
!3796 = !{!3797}
!3797 = !DILocalVariable(name: "lruvec", arg: 1, scope: !3795, file: !73, line: 582, type: !3721)
!3798 = !DILocation(line: 582, column: 55, scope: !3795)
!3799 = !DILocation(line: 584, column: 1, scope: !3795)
!3800 = distinct !DISubprogram(name: "find_first_bit", scope: !3801, file: !3801, line: 200, type: !3802, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3805)
!3801 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!3802 = !DISubroutineType(types: !3803)
!3803 = !{!107, !3804, !107}
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!3805 = !{!3806, !3807, !3808}
!3806 = !DILocalVariable(name: "addr", arg: 1, scope: !3800, file: !3801, line: 200, type: !3804)
!3807 = !DILocalVariable(name: "size", arg: 2, scope: !3800, file: !3801, line: 200, type: !107)
!3808 = !DILocalVariable(name: "val", scope: !3809, file: !3801, line: 203, type: !107)
!3809 = distinct !DILexicalBlock(scope: !3810, file: !3801, line: 202, column: 31)
!3810 = distinct !DILexicalBlock(scope: !3800, file: !3801, line: 202, column: 6)
!3811 = !DILocation(line: 200, column: 51, scope: !3800)
!3812 = !DILocation(line: 200, column: 71, scope: !3800)
!3813 = !DILocation(line: 202, column: 6, scope: !3810)
!3814 = !DILocation(line: 202, column: 6, scope: !3800)
!3815 = !DILocation(line: 203, column: 3, scope: !3809)
!3816 = !DILocation(line: 203, column: 17, scope: !3809)
!3817 = !DILocation(line: 203, column: 24, scope: !3809)
!3818 = !DILocation(line: 203, column: 23, scope: !3809)
!3819 = !DILocation(line: 203, column: 31, scope: !3809)
!3820 = !DILocation(line: 203, column: 29, scope: !3809)
!3821 = !DILocation(line: 205, column: 10, scope: !3809)
!3822 = !DILocation(line: 205, column: 16, scope: !3809)
!3823 = !DILocation(line: 205, column: 29, scope: !3809)
!3824 = !DILocation(line: 205, column: 3, scope: !3809)
!3825 = !DILocation(line: 206, column: 2, scope: !3810)
!3826 = !DILocation(line: 208, column: 25, scope: !3800)
!3827 = !DILocation(line: 208, column: 31, scope: !3800)
!3828 = !DILocation(line: 208, column: 9, scope: !3800)
!3829 = !DILocation(line: 208, column: 2, scope: !3800)
!3830 = !DILocation(line: 209, column: 1, scope: !3800)
!3831 = distinct !DISubprogram(name: "variable__ffs", scope: !3832, file: !3832, line: 250, type: !3833, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3835)
!3832 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!3833 = !DISubroutineType(types: !3834)
!3834 = !{!107, !107}
!3835 = !{!3836}
!3836 = !DILocalVariable(name: "word", arg: 1, scope: !3831, file: !3832, line: 250, type: !107)
!3837 = !DILocation(line: 250, column: 66, scope: !3831)
!3838 = !DILocation(line: 254, column: 11, scope: !3831)
!3839 = !DILocation(line: 252, column: 2, scope: !3831)
!3840 = !{i64 802064}
!3841 = !DILocation(line: 255, column: 9, scope: !3831)
!3842 = !DILocation(line: 255, column: 2, scope: !3831)
!3843 = !DISubprogram(name: "_find_first_bit", scope: !3801, file: !3801, line: 21, type: !3802, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3844 = distinct !DISubprogram(name: "__next_node", scope: !81, file: !81, line: 270, type: !3845, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3847)
!3845 = !DISubroutineType(types: !3846)
!3846 = !{!5, !106, !3580}
!3847 = !{!3848, !3849, !3850, !3852}
!3848 = !DILocalVariable(name: "n", arg: 1, scope: !3844, file: !81, line: 270, type: !106)
!3849 = !DILocalVariable(name: "srcp", arg: 2, scope: !3844, file: !81, line: 270, type: !3580)
!3850 = !DILocalVariable(name: "__UNIQUE_ID___x85", scope: !3851, file: !81, line: 272, type: !5)
!3851 = distinct !DILexicalBlock(scope: !3844, file: !81, line: 272, column: 9)
!3852 = !DILocalVariable(name: "__UNIQUE_ID___y86", scope: !3851, file: !81, line: 272, type: !5)
!3853 = !DILocation(line: 270, column: 44, scope: !3844)
!3854 = !DILocation(line: 270, column: 65, scope: !3844)
!3855 = !DILocation(line: 272, column: 9, scope: !3851)
!3856 = !DILocation(line: 272, column: 9, scope: !3844)
!3857 = !DILocation(line: 272, column: 2, scope: !3844)
!3858 = distinct !DISubprogram(name: "find_next_bit", scope: !3801, file: !3801, line: 54, type: !3859, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3861)
!3859 = !DISubroutineType(types: !3860)
!3860 = !{!107, !3804, !107, !107}
!3861 = !{!3862, !3863, !3864, !3865}
!3862 = !DILocalVariable(name: "addr", arg: 1, scope: !3858, file: !3801, line: 54, type: !3804)
!3863 = !DILocalVariable(name: "size", arg: 2, scope: !3858, file: !3801, line: 54, type: !107)
!3864 = !DILocalVariable(name: "offset", arg: 3, scope: !3858, file: !3801, line: 55, type: !107)
!3865 = !DILocalVariable(name: "val", scope: !3866, file: !3801, line: 58, type: !107)
!3866 = distinct !DILexicalBlock(scope: !3867, file: !3801, line: 57, column: 31)
!3867 = distinct !DILexicalBlock(scope: !3858, file: !3801, line: 57, column: 6)
!3868 = !DILocation(line: 54, column: 50, scope: !3858)
!3869 = !DILocation(line: 54, column: 70, scope: !3858)
!3870 = !DILocation(line: 55, column: 22, scope: !3858)
!3871 = !DILocation(line: 57, column: 6, scope: !3867)
!3872 = !DILocation(line: 57, column: 6, scope: !3858)
!3873 = !DILocation(line: 58, column: 3, scope: !3866)
!3874 = !DILocation(line: 58, column: 17, scope: !3866)
!3875 = !DILocation(line: 60, column: 7, scope: !3876)
!3876 = distinct !DILexicalBlock(scope: !3866, file: !3801, line: 60, column: 7)
!3877 = !DILocation(line: 60, column: 7, scope: !3866)
!3878 = !DILocation(line: 61, column: 11, scope: !3876)
!3879 = !DILocation(line: 61, column: 4, scope: !3876)
!3880 = !DILocation(line: 63, column: 10, scope: !3866)
!3881 = !DILocation(line: 63, column: 9, scope: !3866)
!3882 = !DILocation(line: 63, column: 17, scope: !3866)
!3883 = !DILocation(line: 63, column: 15, scope: !3866)
!3884 = !DILocation(line: 63, column: 7, scope: !3866)
!3885 = !DILocation(line: 64, column: 10, scope: !3866)
!3886 = !DILocation(line: 64, column: 16, scope: !3866)
!3887 = !DILocation(line: 64, column: 29, scope: !3866)
!3888 = !DILocation(line: 64, column: 3, scope: !3866)
!3889 = !DILocation(line: 65, column: 2, scope: !3867)
!3890 = !DILocation(line: 67, column: 24, scope: !3858)
!3891 = !DILocation(line: 67, column: 30, scope: !3858)
!3892 = !DILocation(line: 67, column: 36, scope: !3858)
!3893 = !DILocation(line: 67, column: 9, scope: !3858)
!3894 = !DILocation(line: 67, column: 2, scope: !3858)
!3895 = !DILocation(line: 68, column: 1, scope: !3858)
!3896 = !DISubprogram(name: "_find_next_bit", scope: !3801, file: !3801, line: 11, type: !3859, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3897 = distinct !DISubprogram(name: "_test_bit", scope: !3898, file: !3898, line: 139, type: !3899, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3904)
!3898 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!3899 = !DISubroutineType(types: !3900)
!3900 = !{!272, !107, !3901}
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3903)
!3903 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !107)
!3904 = !{!3905, !3906}
!3905 = !DILocalVariable(name: "nr", arg: 1, scope: !3897, file: !3898, line: 139, type: !107)
!3906 = !DILocalVariable(name: "addr", arg: 2, scope: !3897, file: !3898, line: 139, type: !3901)
!3907 = !DILocation(line: 139, column: 25, scope: !3897)
!3908 = !DILocation(line: 139, column: 59, scope: !3897)
!3909 = !DILocation(line: 141, column: 25, scope: !3897)
!3910 = !DILocation(line: 141, column: 32, scope: !3897)
!3911 = !DILocation(line: 141, column: 30, scope: !3897)
!3912 = !DILocation(line: 141, column: 2, scope: !3897)
!3913 = !DILocation(line: 142, column: 23, scope: !3897)
!3914 = !DILocation(line: 142, column: 27, scope: !3897)
!3915 = !DILocation(line: 142, column: 9, scope: !3897)
!3916 = !DILocation(line: 142, column: 2, scope: !3897)
!3917 = distinct !DISubprogram(name: "zonelist_node_idx", scope: !73, file: !73, line: 1604, type: !3700, scopeLine: 1605, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3918)
!3918 = !{!3919}
!3919 = !DILocalVariable(name: "zoneref", arg: 1, scope: !3917, file: !73, line: 1604, type: !3660)
!3920 = !DILocation(line: 1604, column: 53, scope: !3917)
!3921 = !DILocation(line: 1606, column: 21, scope: !3917)
!3922 = !DILocation(line: 1606, column: 30, scope: !3917)
!3923 = !DILocation(line: 1606, column: 9, scope: !3917)
!3924 = !DILocation(line: 1606, column: 2, scope: !3917)
!3925 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !3926, file: !3926, line: 66, type: !3927, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3932)
!3926 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!3927 = !DISubroutineType(types: !3928)
!3928 = !{null, !3929, !1178}
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3930, size: 64)
!3930 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3931)
!3931 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!3932 = !{!3933, !3934}
!3933 = !DILocalVariable(name: "v", arg: 1, scope: !3925, file: !3926, line: 66, type: !3929)
!3934 = !DILocalVariable(name: "size", arg: 2, scope: !3925, file: !3926, line: 66, type: !1178)
!3935 = !DILocation(line: 66, column: 73, scope: !3925)
!3936 = !DILocation(line: 66, column: 83, scope: !3925)
!3937 = !DILocation(line: 68, column: 19, scope: !3925)
!3938 = !DILocation(line: 68, column: 22, scope: !3925)
!3939 = !DILocation(line: 68, column: 2, scope: !3925)
!3940 = !DILocation(line: 69, column: 2, scope: !3925)
!3941 = !DILocation(line: 70, column: 1, scope: !3925)
!3942 = distinct !DISubprogram(name: "arch_test_bit", scope: !3832, file: !3832, line: 237, type: !3899, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3943)
!3943 = !{!3944, !3945}
!3944 = !DILocalVariable(name: "nr", arg: 1, scope: !3942, file: !3832, line: 237, type: !107)
!3945 = !DILocalVariable(name: "addr", arg: 2, scope: !3942, file: !3832, line: 237, type: !3901)
!3946 = !DILocation(line: 237, column: 29, scope: !3942)
!3947 = !DILocation(line: 237, column: 63, scope: !3942)
!3948 = !DILocation(line: 239, column: 30, scope: !3942)
!3949 = !DILocation(line: 239, column: 9, scope: !3942)
!3950 = !DILocation(line: 239, column: 54, scope: !3942)
!3951 = !DILocation(line: 239, column: 58, scope: !3942)
!3952 = !DILocation(line: 239, column: 36, scope: !3942)
!3953 = !DILocation(line: 240, column: 26, scope: !3942)
!3954 = !DILocation(line: 240, column: 30, scope: !3942)
!3955 = !DILocation(line: 240, column: 8, scope: !3942)
!3956 = !DILocation(line: 239, column: 2, scope: !3942)
!3957 = distinct !DISubprogram(name: "kasan_check_read", scope: !3958, file: !3958, line: 40, type: !3959, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3961)
!3958 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!3959 = !DISubroutineType(types: !3960)
!3960 = !{!272, !3929, !5}
!3961 = !{!3962, !3963}
!3962 = !DILocalVariable(name: "p", arg: 1, scope: !3957, file: !3958, line: 40, type: !3929)
!3963 = !DILocalVariable(name: "size", arg: 2, scope: !3957, file: !3958, line: 40, type: !5)
!3964 = !DILocation(line: 40, column: 58, scope: !3957)
!3965 = !DILocation(line: 40, column: 74, scope: !3957)
!3966 = !DILocation(line: 42, column: 2, scope: !3957)
!3967 = distinct !DISubprogram(name: "kcsan_check_access", scope: !3968, file: !3968, line: 229, type: !3969, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3971)
!3968 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!3969 = !DISubroutineType(types: !3970)
!3970 = !{null, !3929, !1178, !106}
!3971 = !{!3972, !3973, !3974}
!3972 = !DILocalVariable(name: "ptr", arg: 1, scope: !3967, file: !3968, line: 229, type: !3929)
!3973 = !DILocalVariable(name: "size", arg: 2, scope: !3967, file: !3968, line: 229, type: !1178)
!3974 = !DILocalVariable(name: "type", arg: 3, scope: !3967, file: !3968, line: 230, type: !106)
!3975 = !DILocation(line: 229, column: 60, scope: !3967)
!3976 = !DILocation(line: 229, column: 72, scope: !3967)
!3977 = !DILocation(line: 230, column: 15, scope: !3967)
!3978 = !DILocation(line: 230, column: 23, scope: !3967)
!3979 = distinct !DISubprogram(name: "constant_test_bit", scope: !3832, file: !3832, line: 204, type: !3980, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3982)
!3980 = !DISubroutineType(types: !3981)
!3981 = !{!272, !144, !3901}
!3982 = !{!3983, !3984}
!3983 = !DILocalVariable(name: "nr", arg: 1, scope: !3979, file: !3832, line: 204, type: !144)
!3984 = !DILocalVariable(name: "addr", arg: 2, scope: !3979, file: !3832, line: 204, type: !3901)
!3985 = !DILocation(line: 204, column: 52, scope: !3979)
!3986 = !DILocation(line: 204, column: 86, scope: !3979)
!3987 = !DILocation(line: 206, column: 19, scope: !3979)
!3988 = !DILocation(line: 206, column: 22, scope: !3979)
!3989 = !DILocation(line: 206, column: 15, scope: !3979)
!3990 = !DILocation(line: 207, column: 4, scope: !3979)
!3991 = !DILocation(line: 207, column: 9, scope: !3979)
!3992 = !DILocation(line: 207, column: 12, scope: !3979)
!3993 = !DILocation(line: 206, column: 44, scope: !3979)
!3994 = !DILocation(line: 207, column: 37, scope: !3979)
!3995 = !DILocation(line: 206, column: 2, scope: !3979)
!3996 = distinct !DISubprogram(name: "variable_test_bit", scope: !3832, file: !3832, line: 224, type: !3980, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3997)
!3997 = !{!3998, !3999, !4000}
!3998 = !DILocalVariable(name: "nr", arg: 1, scope: !3996, file: !3832, line: 224, type: !144)
!3999 = !DILocalVariable(name: "addr", arg: 2, scope: !3996, file: !3832, line: 224, type: !3901)
!4000 = !DILocalVariable(name: "oldbit", scope: !3996, file: !3832, line: 226, type: !272)
!4001 = !DILocation(line: 224, column: 52, scope: !3996)
!4002 = !DILocation(line: 224, column: 86, scope: !3996)
!4003 = !DILocation(line: 226, column: 2, scope: !3996)
!4004 = !DILocation(line: 226, column: 7, scope: !3996)
!4005 = !DILocation(line: 231, column: 33, scope: !3996)
!4006 = !DILocation(line: 231, column: 46, scope: !3996)
!4007 = !DILocation(line: 228, column: 2, scope: !3996)
!4008 = !{i64 2148304142, i64 2148304216}
!4009 = !DILocation(line: 233, column: 9, scope: !3996)
!4010 = !{i8 0, i8 2}
!4011 = !DILocation(line: 234, column: 1, scope: !3996)
!4012 = !DILocation(line: 233, column: 2, scope: !3996)
!4013 = distinct !DISubprogram(name: "zone_to_nid", scope: !73, file: !73, line: 1496, type: !4014, scopeLine: 1497, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4016)
!4014 = !DISubroutineType(types: !4015)
!4015 = !{!106, !289}
!4016 = !{!4017}
!4017 = !DILocalVariable(name: "zone", arg: 1, scope: !4013, file: !73, line: 1496, type: !289)
!4018 = !DILocation(line: 1496, column: 44, scope: !4013)
!4019 = !DILocation(line: 1498, column: 9, scope: !4013)
!4020 = !DILocation(line: 1498, column: 15, scope: !4013)
!4021 = !DILocation(line: 1498, column: 2, scope: !4013)
!4022 = distinct !DISubprogram(name: "__list_del_entry", scope: !3761, file: !3761, line: 213, type: !3762, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4023)
!4023 = !{!4024}
!4024 = !DILocalVariable(name: "entry", arg: 1, scope: !4022, file: !3761, line: 213, type: !111)
!4025 = !DILocation(line: 213, column: 55, scope: !4022)
!4026 = !DILocation(line: 215, column: 30, scope: !4027)
!4027 = distinct !DILexicalBlock(scope: !4022, file: !3761, line: 215, column: 6)
!4028 = !DILocation(line: 215, column: 7, scope: !4027)
!4029 = !DILocation(line: 215, column: 6, scope: !4022)
!4030 = !DILocation(line: 216, column: 3, scope: !4027)
!4031 = !DILocation(line: 218, column: 13, scope: !4022)
!4032 = !DILocation(line: 218, column: 20, scope: !4022)
!4033 = !DILocation(line: 218, column: 26, scope: !4022)
!4034 = !DILocation(line: 218, column: 33, scope: !4022)
!4035 = !DILocation(line: 218, column: 2, scope: !4022)
!4036 = !DILocation(line: 219, column: 1, scope: !4022)
!4037 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !3761, file: !3761, line: 134, type: !4038, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4040)
!4038 = !DISubroutineType(types: !4039)
!4039 = !{!272, !111}
!4040 = !{!4041}
!4041 = !DILocalVariable(name: "entry", arg: 1, scope: !4037, file: !3761, line: 134, type: !111)
!4042 = !DILocation(line: 134, column: 61, scope: !4037)
!4043 = !DILocation(line: 136, column: 2, scope: !4037)
!4044 = distinct !DISubprogram(name: "__list_del", scope: !3761, file: !3761, line: 193, type: !4045, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4047)
!4045 = !DISubroutineType(types: !4046)
!4046 = !{null, !111, !111}
!4047 = !{!4048, !4049}
!4048 = !DILocalVariable(name: "prev", arg: 1, scope: !4044, file: !3761, line: 193, type: !111)
!4049 = !DILocalVariable(name: "next", arg: 2, scope: !4044, file: !3761, line: 193, type: !111)
!4050 = !DILocation(line: 193, column: 50, scope: !4044)
!4051 = !DILocation(line: 193, column: 75, scope: !4044)
!4052 = !DILocation(line: 195, column: 15, scope: !4044)
!4053 = !DILocation(line: 195, column: 2, scope: !4044)
!4054 = !DILocation(line: 195, column: 8, scope: !4044)
!4055 = !DILocation(line: 195, column: 13, scope: !4044)
!4056 = !DILocation(line: 196, column: 2, scope: !4044)
!4057 = !DILocation(line: 196, column: 2, scope: !4058)
!4058 = distinct !DILexicalBlock(scope: !4044, file: !3761, line: 196, column: 2)
!4059 = !DILocation(line: 196, column: 2, scope: !4060)
!4060 = distinct !DILexicalBlock(scope: !4058, file: !3761, line: 196, column: 2)
!4061 = !DILocation(line: 196, column: 2, scope: !4062)
!4062 = distinct !DILexicalBlock(scope: !4058, file: !3761, line: 196, column: 2)
!4063 = !DILocation(line: 197, column: 1, scope: !4044)
