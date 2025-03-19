; ModuleID = 'fs/pnode.c'
source_filename = "fs/pnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mount = type { %struct.hlist_node, ptr, ptr, %struct.vfsmount, %union.anon.13, ptr, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, %union.anon.14, %struct.list_head, ptr, i32, i32, i32, i32, %struct.hlist_head, %struct.hlist_head }
%struct.hlist_node = type { ptr, ptr }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.14 = type { %struct.hlist_node }
%struct.list_head = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.mountpoint = type { %struct.hlist_node, ptr, %struct.hlist_head, i32 }
%struct.mnt_namespace = type { %struct.ns_common, ptr, %struct.list_head, %struct.spinlock, ptr, ptr, i64, %struct.wait_queue_head, i64, i32, i32 }
%struct.ns_common = type { %struct.atomic64_t, ptr, i32, %struct.refcount_struct }
%struct.atomic64_t = type { i64 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }

@last_dest = internal global ptr null, align 8, !dbg !0
@first_source = internal global ptr null, align 8, !dbg !3352
@last_source = internal global ptr null, align 8, !dbg !3354
@list = internal global ptr null, align 8, !dbg !3358
@dest_master = internal global ptr null, align 8, !dbg !3356
@mount_lock = external dso_local global %struct.seqlock_t, align 4
@.str = private unnamed_addr constant [11 x i8] c"fs/pnode.c\00", align 1, !dbg !3347

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @get_dominating_id(ptr noundef %mnt, ptr noundef %root) #0 align 16 !dbg !3369 {
entry:
  %retval = alloca i32, align 4
  %mnt.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %m = alloca ptr, align 8
  %d = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mnt, ptr %mnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mnt.addr, metadata !3373, metadata !DIExpression()), !dbg !3380
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !3374, metadata !DIExpression()), !dbg !3381
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #7, !dbg !3382
  call void @llvm.dbg.declare(metadata ptr %m, metadata !3375, metadata !DIExpression()), !dbg !3383
  %0 = load ptr, ptr %mnt.addr, align 8, !dbg !3384
  %mnt_master = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 15, !dbg !3385
  %1 = load ptr, ptr %mnt_master, align 8, !dbg !3385
  store ptr %1, ptr %m, align 8, !dbg !3386
  br label %for.cond, !dbg !3387

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %m, align 8, !dbg !3388
  %cmp = icmp ne ptr %2, null, !dbg !3389
  br i1 %cmp, label %for.body, label %for.end, !dbg !3390

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #7, !dbg !3391
  call void @llvm.dbg.declare(metadata ptr %d, metadata !3376, metadata !DIExpression()), !dbg !3392
  %3 = load ptr, ptr %m, align 8, !dbg !3393
  %4 = load ptr, ptr %mnt.addr, align 8, !dbg !3394
  %mnt_ns = getelementptr inbounds %struct.mount, ptr %4, i32 0, i32 16, !dbg !3395
  %5 = load ptr, ptr %mnt_ns, align 8, !dbg !3395
  %6 = load ptr, ptr %root.addr, align 8, !dbg !3396
  %call = call ptr @get_peer_under_root(ptr noundef %3, ptr noundef %5, ptr noundef %6) #8, !dbg !3397
  store ptr %call, ptr %d, align 8, !dbg !3392
  %7 = load ptr, ptr %d, align 8, !dbg !3398
  %tobool = icmp ne ptr %7, null, !dbg !3398
  br i1 %tobool, label %if.then, label %if.end, !dbg !3400

if.then:                                          ; preds = %for.body
  %8 = load ptr, ptr %d, align 8, !dbg !3401
  %mnt_group_id = getelementptr inbounds %struct.mount, ptr %8, i32 0, i32 23, !dbg !3402
  %9 = load i32, ptr %mnt_group_id, align 8, !dbg !3402
  store i32 %9, ptr %retval, align 4, !dbg !3403
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3403

if.end:                                           ; preds = %for.body
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3404
  br label %cleanup, !dbg !3404

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #7, !dbg !3404
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup2 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !3405

for.inc:                                          ; preds = %cleanup.cont
  %10 = load ptr, ptr %m, align 8, !dbg !3406
  %mnt_master1 = getelementptr inbounds %struct.mount, ptr %10, i32 0, i32 15, !dbg !3407
  %11 = load ptr, ptr %mnt_master1, align 8, !dbg !3407
  store ptr %11, ptr %m, align 8, !dbg !3408
  br label %for.cond, !dbg !3409, !llvm.loop !3410

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !3414
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup2, !dbg !3414

cleanup2:                                         ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #7, !dbg !3415
  %12 = load i32, ptr %retval, align 4, !dbg !3415
  ret i32 %12, !dbg !3415
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_peer_under_root(ptr noundef %mnt, ptr noundef %ns, ptr noundef %root) #0 align 16 !dbg !3416 {
entry:
  %retval = alloca ptr, align 8
  %mnt.addr = alloca ptr, align 8
  %ns.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %m = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mnt, ptr %mnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mnt.addr, metadata !3420, metadata !DIExpression()), !dbg !3424
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !3421, metadata !DIExpression()), !dbg !3425
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !3422, metadata !DIExpression()), !dbg !3426
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #7, !dbg !3427
  call void @llvm.dbg.declare(metadata ptr %m, metadata !3423, metadata !DIExpression()), !dbg !3428
  %0 = load ptr, ptr %mnt.addr, align 8, !dbg !3429
  store ptr %0, ptr %m, align 8, !dbg !3428
  br label %do.body, !dbg !3430

do.body:                                          ; preds = %do.cond, %entry
  %1 = load ptr, ptr %m, align 8, !dbg !3431
  %mnt_ns = getelementptr inbounds %struct.mount, ptr %1, i32 0, i32 16, !dbg !3434
  %2 = load ptr, ptr %mnt_ns, align 8, !dbg !3434
  %3 = load ptr, ptr %ns.addr, align 8, !dbg !3435
  %cmp = icmp eq ptr %2, %3, !dbg !3436
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !3437

land.lhs.true:                                    ; preds = %do.body
  %4 = load ptr, ptr %m, align 8, !dbg !3438
  %5 = load ptr, ptr %m, align 8, !dbg !3439
  %mnt1 = getelementptr inbounds %struct.mount, ptr %5, i32 0, i32 3, !dbg !3440
  %mnt_root = getelementptr inbounds %struct.vfsmount, ptr %mnt1, i32 0, i32 0, !dbg !3441
  %6 = load ptr, ptr %mnt_root, align 8, !dbg !3441
  %7 = load ptr, ptr %root.addr, align 8, !dbg !3442
  %call = call zeroext i1 @is_path_reachable(ptr noundef %4, ptr noundef %6, ptr noundef %7) #8, !dbg !3443
  br i1 %call, label %if.then, label %if.end, !dbg !3444

if.then:                                          ; preds = %land.lhs.true
  %8 = load ptr, ptr %m, align 8, !dbg !3445
  store ptr %8, ptr %retval, align 8, !dbg !3446
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3446

if.end:                                           ; preds = %land.lhs.true, %do.body
  %9 = load ptr, ptr %m, align 8, !dbg !3447
  %call2 = call ptr @next_peer(ptr noundef %9) #8, !dbg !3448
  store ptr %call2, ptr %m, align 8, !dbg !3449
  br label %do.cond, !dbg !3450

do.cond:                                          ; preds = %if.end
  %10 = load ptr, ptr %m, align 8, !dbg !3451
  %11 = load ptr, ptr %mnt.addr, align 8, !dbg !3452
  %cmp3 = icmp ne ptr %10, %11, !dbg !3453
  br i1 %cmp3, label %do.body, label %do.end, !dbg !3450, !llvm.loop !3454

do.end:                                           ; preds = %do.cond
  store ptr null, ptr %retval, align 8, !dbg !3456
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3456

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #7, !dbg !3457
  %12 = load ptr, ptr %retval, align 8, !dbg !3457
  ret ptr %12, !dbg !3457
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @change_mnt_propagation(ptr noundef %mnt, i32 noundef %type) #0 align 16 !dbg !3458 {
entry:
  %mnt.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  store ptr %mnt, ptr %mnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mnt.addr, metadata !3462, metadata !DIExpression()), !dbg !3464
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !3463, metadata !DIExpression()), !dbg !3465
  %0 = load i32, ptr %type.addr, align 4, !dbg !3466
  %cmp = icmp eq i32 %0, 1048576, !dbg !3468
  br i1 %cmp, label %if.then, label %if.end, !dbg !3469

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %mnt.addr, align 8, !dbg !3470
  call void @set_mnt_shared(ptr noundef %1) #8, !dbg !3472
  br label %if.end9, !dbg !3473

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %mnt.addr, align 8, !dbg !3474
  %call = call i32 @do_make_slave(ptr noundef %2) #8, !dbg !3475
  %3 = load i32, ptr %type.addr, align 4, !dbg !3476
  %cmp1 = icmp ne i32 %3, 524288, !dbg !3478
  br i1 %cmp1, label %if.then2, label %if.end9, !dbg !3479

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %mnt.addr, align 8, !dbg !3480
  %mnt_slave = getelementptr inbounds %struct.mount, ptr %4, i32 0, i32 14, !dbg !3482
  call void @list_del_init(ptr noundef %mnt_slave) #8, !dbg !3483
  %5 = load ptr, ptr %mnt.addr, align 8, !dbg !3484
  %mnt_master = getelementptr inbounds %struct.mount, ptr %5, i32 0, i32 15, !dbg !3485
  store ptr null, ptr %mnt_master, align 8, !dbg !3486
  %6 = load i32, ptr %type.addr, align 4, !dbg !3487
  %cmp3 = icmp eq i32 %6, 131072, !dbg !3489
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !3490

if.then4:                                         ; preds = %if.then2
  %7 = load ptr, ptr %mnt.addr, align 8, !dbg !3491
  %mnt5 = getelementptr inbounds %struct.mount, ptr %7, i32 0, i32 3, !dbg !3492
  %mnt_flags = getelementptr inbounds %struct.vfsmount, ptr %mnt5, i32 0, i32 2, !dbg !3493
  %8 = load i32, ptr %mnt_flags, align 8, !dbg !3494
  %or = or i32 %8, 8192, !dbg !3494
  store i32 %or, ptr %mnt_flags, align 8, !dbg !3494
  br label %if.end8, !dbg !3491

if.else:                                          ; preds = %if.then2
  %9 = load ptr, ptr %mnt.addr, align 8, !dbg !3495
  %mnt6 = getelementptr inbounds %struct.mount, ptr %9, i32 0, i32 3, !dbg !3496
  %mnt_flags7 = getelementptr inbounds %struct.vfsmount, ptr %mnt6, i32 0, i32 2, !dbg !3497
  %10 = load i32, ptr %mnt_flags7, align 8, !dbg !3498
  %and = and i32 %10, -8193, !dbg !3498
  store i32 %and, ptr %mnt_flags7, align 8, !dbg !3498
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then4
  br label %if.end9, !dbg !3499

if.end9:                                          ; preds = %if.then, %if.end8, %if.end
  ret void, !dbg !3500
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_mnt_shared(ptr noundef %mnt) #3 align 16 !dbg !3501 {
entry:
  %mnt.addr = alloca ptr, align 8
  store ptr %mnt, ptr %mnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mnt.addr, metadata !3506, metadata !DIExpression()), !dbg !3507
  %0 = load ptr, ptr %mnt.addr, align 8, !dbg !3508
  %mnt1 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 3, !dbg !3509
  %mnt_flags = getelementptr inbounds %struct.vfsmount, ptr %mnt1, i32 0, i32 2, !dbg !3510
  %1 = load i32, ptr %mnt_flags, align 8, !dbg !3511
  %and = and i32 %1, -8193, !dbg !3511
  store i32 %and, ptr %mnt_flags, align 8, !dbg !3511
  %2 = load ptr, ptr %mnt.addr, align 8, !dbg !3512
  %mnt2 = getelementptr inbounds %struct.mount, ptr %2, i32 0, i32 3, !dbg !3513
  %mnt_flags3 = getelementptr inbounds %struct.vfsmount, ptr %mnt2, i32 0, i32 2, !dbg !3514
  %3 = load i32, ptr %mnt_flags3, align 8, !dbg !3515
  %or = or i32 %3, 4096, !dbg !3515
  store i32 %or, ptr %mnt_flags3, align 8, !dbg !3515
  ret void, !dbg !3516
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @do_make_slave(ptr noundef %mnt) #0 align 16 !dbg !3517 {
entry:
  %retval = alloca i32, align 4
  %mnt.addr = alloca ptr, align 8
  %master = alloca ptr, align 8
  %slave_mnt = alloca ptr, align 8
  %p = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %m = alloca ptr, align 8
  %__mptr26 = alloca ptr, align 8
  %tmp29 = alloca ptr, align 8
  %__mptr39 = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  store ptr %mnt, ptr %mnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mnt.addr, metadata !3521, metadata !DIExpression()), !dbg !3540
  call void @llvm.lifetime.start.p0(i64 8, ptr %master) #7, !dbg !3541
  call void @llvm.dbg.declare(metadata ptr %master, metadata !3522, metadata !DIExpression()), !dbg !3542
  call void @llvm.lifetime.start.p0(i64 8, ptr %slave_mnt) #7, !dbg !3541
  call void @llvm.dbg.declare(metadata ptr %slave_mnt, metadata !3523, metadata !DIExpression()), !dbg !3543
  %0 = load ptr, ptr %mnt.addr, align 8, !dbg !3544
  %mnt_share = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 12, !dbg !3545
  %call = call i32 @list_empty(ptr noundef %mnt_share) #8, !dbg !3546
  %tobool = icmp ne i32 %call, 0, !dbg !3546
  br i1 %tobool, label %if.then, label %if.else, !dbg !3547

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %mnt.addr, align 8, !dbg !3548
  %mnt1 = getelementptr inbounds %struct.mount, ptr %1, i32 0, i32 3, !dbg !3548
  %mnt_flags = getelementptr inbounds %struct.vfsmount, ptr %mnt1, i32 0, i32 2, !dbg !3548
  %2 = load i32, ptr %mnt_flags, align 8, !dbg !3548
  %and = and i32 %2, 4096, !dbg !3548
  %tobool2 = icmp ne i32 %and, 0, !dbg !3548
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !3550

if.then3:                                         ; preds = %if.then
  %3 = load ptr, ptr %mnt.addr, align 8, !dbg !3551
  call void @mnt_release_group_id(ptr noundef %3) #8, !dbg !3553
  %4 = load ptr, ptr %mnt.addr, align 8, !dbg !3554
  %mnt4 = getelementptr inbounds %struct.mount, ptr %4, i32 0, i32 3, !dbg !3554
  %mnt_flags5 = getelementptr inbounds %struct.vfsmount, ptr %mnt4, i32 0, i32 2, !dbg !3554
  %5 = load i32, ptr %mnt_flags5, align 8, !dbg !3554
  %and6 = and i32 %5, -4097, !dbg !3554
  store i32 %and6, ptr %mnt_flags5, align 8, !dbg !3554
  br label %if.end, !dbg !3555

if.end:                                           ; preds = %if.then3, %if.then
  %6 = load ptr, ptr %mnt.addr, align 8, !dbg !3556
  %mnt_master = getelementptr inbounds %struct.mount, ptr %6, i32 0, i32 15, !dbg !3557
  %7 = load ptr, ptr %mnt_master, align 8, !dbg !3557
  store ptr %7, ptr %master, align 8, !dbg !3558
  %8 = load ptr, ptr %master, align 8, !dbg !3559
  %tobool7 = icmp ne ptr %8, null, !dbg !3559
  br i1 %tobool7, label %if.end12, label %if.then8, !dbg !3560

if.then8:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #7, !dbg !3561
  call void @llvm.dbg.declare(metadata ptr %p, metadata !3524, metadata !DIExpression()), !dbg !3562
  %9 = load ptr, ptr %mnt.addr, align 8, !dbg !3563
  %mnt_slave_list = getelementptr inbounds %struct.mount, ptr %9, i32 0, i32 13, !dbg !3564
  store ptr %mnt_slave_list, ptr %p, align 8, !dbg !3562
  br label %while.cond, !dbg !3565

while.cond:                                       ; preds = %while.body, %if.then8
  %10 = load ptr, ptr %p, align 8, !dbg !3566
  %call9 = call i32 @list_empty(ptr noundef %10) #8, !dbg !3567
  %tobool10 = icmp ne i32 %call9, 0, !dbg !3568
  %lnot = xor i1 %tobool10, true, !dbg !3568
  br i1 %lnot, label %while.body, label %while.end, !dbg !3565

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #7, !dbg !3569
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3529, metadata !DIExpression()), !dbg !3569
  %11 = load ptr, ptr %p, align 8, !dbg !3569
  %next = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 0, !dbg !3569
  %12 = load ptr, ptr %next, align 8, !dbg !3569
  store ptr %12, ptr %__mptr, align 8, !dbg !3569
  %13 = load ptr, ptr %__mptr, align 8, !dbg !3569
  %add.ptr = getelementptr i8, ptr %13, i64 -208, !dbg !3569
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3569
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #7, !dbg !3570
  %14 = load ptr, ptr %tmp, align 8, !dbg !3569
  store ptr %14, ptr %slave_mnt, align 8, !dbg !3571
  %15 = load ptr, ptr %slave_mnt, align 8, !dbg !3572
  %mnt_slave = getelementptr inbounds %struct.mount, ptr %15, i32 0, i32 14, !dbg !3573
  call void @list_del_init(ptr noundef %mnt_slave) #8, !dbg !3574
  %16 = load ptr, ptr %slave_mnt, align 8, !dbg !3575
  %mnt_master11 = getelementptr inbounds %struct.mount, ptr %16, i32 0, i32 15, !dbg !3576
  store ptr null, ptr %mnt_master11, align 8, !dbg !3577
  br label %while.cond, !dbg !3565, !llvm.loop !3578

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4, !dbg !3580
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #7, !dbg !3581
  br label %cleanup

if.end12:                                         ; preds = %if.end
  br label %if.end25, !dbg !3582

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #7, !dbg !3583
  call void @llvm.dbg.declare(metadata ptr %m, metadata !3532, metadata !DIExpression()), !dbg !3584
  %17 = load ptr, ptr %mnt.addr, align 8, !dbg !3585
  %call13 = call ptr @next_peer(ptr noundef %17) #8, !dbg !3587
  store ptr %call13, ptr %master, align 8, !dbg !3588
  store ptr %call13, ptr %m, align 8, !dbg !3589
  br label %for.cond, !dbg !3590

for.cond:                                         ; preds = %for.inc, %if.else
  %18 = load ptr, ptr %m, align 8, !dbg !3591
  %19 = load ptr, ptr %mnt.addr, align 8, !dbg !3593
  %cmp = icmp ne ptr %18, %19, !dbg !3594
  br i1 %cmp, label %for.body, label %for.end, !dbg !3595

for.body:                                         ; preds = %for.cond
  %20 = load ptr, ptr %m, align 8, !dbg !3596
  %mnt14 = getelementptr inbounds %struct.mount, ptr %20, i32 0, i32 3, !dbg !3599
  %mnt_root = getelementptr inbounds %struct.vfsmount, ptr %mnt14, i32 0, i32 0, !dbg !3600
  %21 = load ptr, ptr %mnt_root, align 8, !dbg !3600
  %22 = load ptr, ptr %mnt.addr, align 8, !dbg !3601
  %mnt15 = getelementptr inbounds %struct.mount, ptr %22, i32 0, i32 3, !dbg !3602
  %mnt_root16 = getelementptr inbounds %struct.vfsmount, ptr %mnt15, i32 0, i32 0, !dbg !3603
  %23 = load ptr, ptr %mnt_root16, align 8, !dbg !3603
  %cmp17 = icmp eq ptr %21, %23, !dbg !3604
  br i1 %cmp17, label %if.then18, label %if.end19, !dbg !3605

if.then18:                                        ; preds = %for.body
  %24 = load ptr, ptr %m, align 8, !dbg !3606
  store ptr %24, ptr %master, align 8, !dbg !3608
  br label %for.end, !dbg !3609

if.end19:                                         ; preds = %for.body
  br label %for.inc, !dbg !3610

for.inc:                                          ; preds = %if.end19
  %25 = load ptr, ptr %m, align 8, !dbg !3611
  %call20 = call ptr @next_peer(ptr noundef %25) #8, !dbg !3612
  store ptr %call20, ptr %m, align 8, !dbg !3613
  br label %for.cond, !dbg !3614, !llvm.loop !3615

for.end:                                          ; preds = %if.then18, %for.cond
  %26 = load ptr, ptr %mnt.addr, align 8, !dbg !3617
  %mnt_share21 = getelementptr inbounds %struct.mount, ptr %26, i32 0, i32 12, !dbg !3618
  call void @list_del_init(ptr noundef %mnt_share21) #8, !dbg !3619
  %27 = load ptr, ptr %mnt.addr, align 8, !dbg !3620
  %mnt_group_id = getelementptr inbounds %struct.mount, ptr %27, i32 0, i32 23, !dbg !3621
  store i32 0, ptr %mnt_group_id, align 8, !dbg !3622
  %28 = load ptr, ptr %mnt.addr, align 8, !dbg !3623
  %mnt22 = getelementptr inbounds %struct.mount, ptr %28, i32 0, i32 3, !dbg !3623
  %mnt_flags23 = getelementptr inbounds %struct.vfsmount, ptr %mnt22, i32 0, i32 2, !dbg !3623
  %29 = load i32, ptr %mnt_flags23, align 8, !dbg !3623
  %and24 = and i32 %29, -4097, !dbg !3623
  store i32 %and24, ptr %mnt_flags23, align 8, !dbg !3623
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #7, !dbg !3624
  br label %if.end25

if.end25:                                         ; preds = %for.end, %if.end12
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr26) #7, !dbg !3625
  call void @llvm.dbg.declare(metadata ptr %__mptr26, metadata !3534, metadata !DIExpression()), !dbg !3625
  %30 = load ptr, ptr %mnt.addr, align 8, !dbg !3625
  %mnt_slave_list27 = getelementptr inbounds %struct.mount, ptr %30, i32 0, i32 13, !dbg !3625
  %next28 = getelementptr inbounds %struct.list_head, ptr %mnt_slave_list27, i32 0, i32 0, !dbg !3625
  %31 = load ptr, ptr %next28, align 8, !dbg !3625
  store ptr %31, ptr %__mptr26, align 8, !dbg !3625
  %32 = load ptr, ptr %__mptr26, align 8, !dbg !3625
  %add.ptr30 = getelementptr i8, ptr %32, i64 -208, !dbg !3625
  store ptr %add.ptr30, ptr %tmp29, align 8, !dbg !3625
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr26) #7, !dbg !3626
  %33 = load ptr, ptr %tmp29, align 8, !dbg !3625
  store ptr %33, ptr %slave_mnt, align 8, !dbg !3626
  br label %for.cond31, !dbg !3626

for.cond31:                                       ; preds = %for.inc38, %if.end25
  %34 = load ptr, ptr %slave_mnt, align 8, !dbg !3627
  %mnt_slave32 = getelementptr inbounds %struct.mount, ptr %34, i32 0, i32 14, !dbg !3627
  %35 = load ptr, ptr %mnt.addr, align 8, !dbg !3627
  %mnt_slave_list33 = getelementptr inbounds %struct.mount, ptr %35, i32 0, i32 13, !dbg !3627
  %cmp34 = icmp eq ptr %mnt_slave32, %mnt_slave_list33, !dbg !3627
  %lnot35 = xor i1 %cmp34, true, !dbg !3627
  br i1 %lnot35, label %for.body36, label %for.end44, !dbg !3626

for.body36:                                       ; preds = %for.cond31
  %36 = load ptr, ptr %master, align 8, !dbg !3628
  %37 = load ptr, ptr %slave_mnt, align 8, !dbg !3629
  %mnt_master37 = getelementptr inbounds %struct.mount, ptr %37, i32 0, i32 15, !dbg !3630
  store ptr %36, ptr %mnt_master37, align 8, !dbg !3631
  br label %for.inc38, !dbg !3629

for.inc38:                                        ; preds = %for.body36
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr39) #7, !dbg !3632
  call void @llvm.dbg.declare(metadata ptr %__mptr39, metadata !3537, metadata !DIExpression()), !dbg !3632
  %38 = load ptr, ptr %slave_mnt, align 8, !dbg !3632
  %mnt_slave40 = getelementptr inbounds %struct.mount, ptr %38, i32 0, i32 14, !dbg !3632
  %next41 = getelementptr inbounds %struct.list_head, ptr %mnt_slave40, i32 0, i32 0, !dbg !3632
  %39 = load ptr, ptr %next41, align 8, !dbg !3632
  store ptr %39, ptr %__mptr39, align 8, !dbg !3632
  %40 = load ptr, ptr %__mptr39, align 8, !dbg !3632
  %add.ptr43 = getelementptr i8, ptr %40, i64 -208, !dbg !3632
  store ptr %add.ptr43, ptr %tmp42, align 8, !dbg !3632
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr39) #7, !dbg !3627
  %41 = load ptr, ptr %tmp42, align 8, !dbg !3632
  store ptr %41, ptr %slave_mnt, align 8, !dbg !3627
  br label %for.cond31, !dbg !3627, !llvm.loop !3633

for.end44:                                        ; preds = %for.cond31
  %42 = load ptr, ptr %mnt.addr, align 8, !dbg !3635
  %mnt_slave45 = getelementptr inbounds %struct.mount, ptr %42, i32 0, i32 14, !dbg !3636
  %43 = load ptr, ptr %master, align 8, !dbg !3637
  %mnt_slave_list46 = getelementptr inbounds %struct.mount, ptr %43, i32 0, i32 13, !dbg !3638
  call void @list_move(ptr noundef %mnt_slave45, ptr noundef %mnt_slave_list46) #8, !dbg !3639
  %44 = load ptr, ptr %mnt.addr, align 8, !dbg !3640
  %mnt_slave_list47 = getelementptr inbounds %struct.mount, ptr %44, i32 0, i32 13, !dbg !3641
  %45 = load ptr, ptr %master, align 8, !dbg !3642
  %mnt_slave_list48 = getelementptr inbounds %struct.mount, ptr %45, i32 0, i32 13, !dbg !3643
  %prev = getelementptr inbounds %struct.list_head, ptr %mnt_slave_list48, i32 0, i32 1, !dbg !3644
  %46 = load ptr, ptr %prev, align 8, !dbg !3644
  call void @list_splice(ptr noundef %mnt_slave_list47, ptr noundef %46) #8, !dbg !3645
  %47 = load ptr, ptr %mnt.addr, align 8, !dbg !3646
  %mnt_slave_list49 = getelementptr inbounds %struct.mount, ptr %47, i32 0, i32 13, !dbg !3647
  call void @INIT_LIST_HEAD(ptr noundef %mnt_slave_list49) #8, !dbg !3648
  %48 = load ptr, ptr %master, align 8, !dbg !3649
  %49 = load ptr, ptr %mnt.addr, align 8, !dbg !3650
  %mnt_master50 = getelementptr inbounds %struct.mount, ptr %49, i32 0, i32 15, !dbg !3651
  store ptr %48, ptr %mnt_master50, align 8, !dbg !3652
  store i32 0, ptr %retval, align 4, !dbg !3653
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3653

cleanup:                                          ; preds = %for.end44, %while.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %slave_mnt) #7, !dbg !3654
  call void @llvm.lifetime.end.p0(i64 8, ptr %master) #7, !dbg !3654
  %50 = load i32, ptr %retval, align 4, !dbg !3654
  ret i32 %50, !dbg !3654
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del_init(ptr noundef %entry1) #3 align 16 !dbg !3655 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !3660, metadata !DIExpression()), !dbg !3661
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !3662
  call void @__list_del_entry(ptr noundef %0) #8, !dbg !3663
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !3664
  call void @INIT_LIST_HEAD(ptr noundef %1) #8, !dbg !3665
  ret void, !dbg !3666
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @propagate_mnt(ptr noundef %dest_mnt, ptr noundef %dest_mp, ptr noundef %source_mnt, ptr noundef %tree_list) #0 align 16 !dbg !3667 {
entry:
  %dest_mnt.addr = alloca ptr, align 8
  %dest_mp.addr = alloca ptr, align 8
  %source_mnt.addr = alloca ptr, align 8
  %tree_list.addr = alloca ptr, align 8
  %m = alloca ptr, align 8
  %n = alloca ptr, align 8
  %ret = alloca i32, align 4
  %____ptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp17 = alloca ptr, align 8
  %____ptr28 = alloca ptr, align 8
  %tmp29 = alloca ptr, align 8
  %__mptr32 = alloca ptr, align 8
  %tmp33 = alloca ptr, align 8
  store ptr %dest_mnt, ptr %dest_mnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest_mnt.addr, metadata !3671, metadata !DIExpression()), !dbg !3689
  store ptr %dest_mp, ptr %dest_mp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest_mp.addr, metadata !3672, metadata !DIExpression()), !dbg !3690
  store ptr %source_mnt, ptr %source_mnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %source_mnt.addr, metadata !3673, metadata !DIExpression()), !dbg !3691
  store ptr %tree_list, ptr %tree_list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tree_list.addr, metadata !3674, metadata !DIExpression()), !dbg !3692
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #7, !dbg !3693
  call void @llvm.dbg.declare(metadata ptr %m, metadata !3675, metadata !DIExpression()), !dbg !3694
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #7, !dbg !3693
  call void @llvm.dbg.declare(metadata ptr %n, metadata !3676, metadata !DIExpression()), !dbg !3695
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7, !dbg !3696
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3677, metadata !DIExpression()), !dbg !3697
  store i32 0, ptr %ret, align 4, !dbg !3697
  %0 = load ptr, ptr %dest_mnt.addr, align 8, !dbg !3698
  store ptr %0, ptr @last_dest, align 8, !dbg !3699
  %1 = load ptr, ptr %source_mnt.addr, align 8, !dbg !3700
  store ptr %1, ptr @first_source, align 8, !dbg !3701
  %2 = load ptr, ptr %source_mnt.addr, align 8, !dbg !3702
  store ptr %2, ptr @last_source, align 8, !dbg !3703
  %3 = load ptr, ptr %tree_list.addr, align 8, !dbg !3704
  store ptr %3, ptr @list, align 8, !dbg !3705
  %4 = load ptr, ptr %dest_mnt.addr, align 8, !dbg !3706
  %mnt_master = getelementptr inbounds %struct.mount, ptr %4, i32 0, i32 15, !dbg !3707
  %5 = load ptr, ptr %mnt_master, align 8, !dbg !3707
  store ptr %5, ptr @dest_master, align 8, !dbg !3708
  %6 = load ptr, ptr %dest_mnt.addr, align 8, !dbg !3709
  %call = call ptr @next_peer(ptr noundef %6) #8, !dbg !3711
  store ptr %call, ptr %n, align 8, !dbg !3712
  br label %for.cond, !dbg !3713

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load ptr, ptr %n, align 8, !dbg !3714
  %8 = load ptr, ptr %dest_mnt.addr, align 8, !dbg !3716
  %cmp = icmp ne ptr %7, %8, !dbg !3717
  br i1 %cmp, label %for.body, label %for.end, !dbg !3718

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %n, align 8, !dbg !3719
  %10 = load ptr, ptr %dest_mp.addr, align 8, !dbg !3721
  %call1 = call i32 @propagate_one(ptr noundef %9, ptr noundef %10) #8, !dbg !3722
  store i32 %call1, ptr %ret, align 4, !dbg !3723
  %11 = load i32, ptr %ret, align 4, !dbg !3724
  %tobool = icmp ne i32 %11, 0, !dbg !3724
  br i1 %tobool, label %if.then, label %if.end, !dbg !3726

if.then:                                          ; preds = %for.body
  br label %out, !dbg !3727

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !3728

for.inc:                                          ; preds = %if.end
  %12 = load ptr, ptr %n, align 8, !dbg !3729
  %call2 = call ptr @next_peer(ptr noundef %12) #8, !dbg !3730
  store ptr %call2, ptr %n, align 8, !dbg !3731
  br label %for.cond, !dbg !3732, !llvm.loop !3733

for.end:                                          ; preds = %for.cond
  %13 = load ptr, ptr %dest_mnt.addr, align 8, !dbg !3735
  %14 = load ptr, ptr %dest_mnt.addr, align 8, !dbg !3737
  %call3 = call ptr @next_group(ptr noundef %13, ptr noundef %14) #8, !dbg !3738
  store ptr %call3, ptr %m, align 8, !dbg !3739
  br label %for.cond4, !dbg !3740

for.cond4:                                        ; preds = %for.inc13, %for.end
  %15 = load ptr, ptr %m, align 8, !dbg !3741
  %tobool5 = icmp ne ptr %15, null, !dbg !3743
  br i1 %tobool5, label %for.body6, label %for.end15, !dbg !3743

for.body6:                                        ; preds = %for.cond4
  %16 = load ptr, ptr %m, align 8, !dbg !3744
  store ptr %16, ptr %n, align 8, !dbg !3746
  br label %do.body, !dbg !3747

do.body:                                          ; preds = %do.cond, %for.body6
  %17 = load ptr, ptr %n, align 8, !dbg !3748
  %18 = load ptr, ptr %dest_mp.addr, align 8, !dbg !3750
  %call7 = call i32 @propagate_one(ptr noundef %17, ptr noundef %18) #8, !dbg !3751
  store i32 %call7, ptr %ret, align 4, !dbg !3752
  %19 = load i32, ptr %ret, align 4, !dbg !3753
  %tobool8 = icmp ne i32 %19, 0, !dbg !3753
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !3755

if.then9:                                         ; preds = %do.body
  br label %out, !dbg !3756

if.end10:                                         ; preds = %do.body
  %20 = load ptr, ptr %n, align 8, !dbg !3757
  %call11 = call ptr @next_peer(ptr noundef %20) #8, !dbg !3758
  store ptr %call11, ptr %n, align 8, !dbg !3759
  br label %do.cond, !dbg !3760

do.cond:                                          ; preds = %if.end10
  %21 = load ptr, ptr %n, align 8, !dbg !3761
  %22 = load ptr, ptr %m, align 8, !dbg !3762
  %cmp12 = icmp ne ptr %21, %22, !dbg !3763
  br i1 %cmp12, label %do.body, label %do.end, !dbg !3760, !llvm.loop !3764

do.end:                                           ; preds = %do.cond
  br label %for.inc13, !dbg !3766

for.inc13:                                        ; preds = %do.end
  %23 = load ptr, ptr %m, align 8, !dbg !3767
  %24 = load ptr, ptr %dest_mnt.addr, align 8, !dbg !3768
  %call14 = call ptr @next_group(ptr noundef %23, ptr noundef %24) #8, !dbg !3769
  store ptr %call14, ptr %m, align 8, !dbg !3770
  br label %for.cond4, !dbg !3771, !llvm.loop !3772

for.end15:                                        ; preds = %for.cond4
  br label %out, !dbg !3773

out:                                              ; preds = %for.end15, %if.then9, %if.then
  call void @llvm.dbg.label(metadata !3678), !dbg !3774
  call void @read_seqlock_excl(ptr noundef @mount_lock) #8, !dbg !3775
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr) #7, !dbg !3776
  call void @llvm.dbg.declare(metadata ptr %____ptr, metadata !3679, metadata !DIExpression()), !dbg !3776
  %25 = load ptr, ptr %tree_list.addr, align 8, !dbg !3776
  %first = getelementptr inbounds %struct.hlist_head, ptr %25, i32 0, i32 0, !dbg !3776
  %26 = load ptr, ptr %first, align 8, !dbg !3776
  store ptr %26, ptr %____ptr, align 8, !dbg !3776
  %27 = load ptr, ptr %____ptr, align 8, !dbg !3776
  %tobool16 = icmp ne ptr %27, null, !dbg !3776
  br i1 %tobool16, label %cond.true, label %cond.false, !dbg !3776

cond.true:                                        ; preds = %out
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #7, !dbg !3777
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3682, metadata !DIExpression()), !dbg !3777
  %28 = load ptr, ptr %____ptr, align 8, !dbg !3777
  store ptr %28, ptr %__mptr, align 8, !dbg !3777
  %29 = load ptr, ptr %__mptr, align 8, !dbg !3777
  %add.ptr = getelementptr i8, ptr %29, i64 0, !dbg !3777
  store ptr %add.ptr, ptr %tmp17, align 8, !dbg !3777
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #7, !dbg !3776
  %30 = load ptr, ptr %tmp17, align 8, !dbg !3777
  br label %cond.end, !dbg !3776

cond.false:                                       ; preds = %out
  br label %cond.end, !dbg !3776

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %30, %cond.true ], [ null, %cond.false ], !dbg !3776
  store ptr %cond, ptr %tmp, align 8, !dbg !3776
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr) #7, !dbg !3778
  %31 = load ptr, ptr %tmp, align 8, !dbg !3776
  store ptr %31, ptr %n, align 8, !dbg !3778
  br label %for.cond18, !dbg !3778

for.cond18:                                       ; preds = %cond.end36, %cond.end
  %32 = load ptr, ptr %n, align 8, !dbg !3779
  %tobool19 = icmp ne ptr %32, null, !dbg !3778
  br i1 %tobool19, label %for.body20, label %for.end38, !dbg !3778

for.body20:                                       ; preds = %for.cond18
  %33 = load ptr, ptr %n, align 8, !dbg !3780
  %mnt_parent = getelementptr inbounds %struct.mount, ptr %33, i32 0, i32 1, !dbg !3782
  %34 = load ptr, ptr %mnt_parent, align 8, !dbg !3782
  store ptr %34, ptr %m, align 8, !dbg !3783
  %35 = load ptr, ptr %m, align 8, !dbg !3784
  %mnt_master21 = getelementptr inbounds %struct.mount, ptr %35, i32 0, i32 15, !dbg !3786
  %36 = load ptr, ptr %mnt_master21, align 8, !dbg !3786
  %37 = load ptr, ptr %dest_mnt.addr, align 8, !dbg !3787
  %mnt_master22 = getelementptr inbounds %struct.mount, ptr %37, i32 0, i32 15, !dbg !3788
  %38 = load ptr, ptr %mnt_master22, align 8, !dbg !3788
  %cmp23 = icmp ne ptr %36, %38, !dbg !3789
  br i1 %cmp23, label %if.then24, label %if.end26, !dbg !3790

if.then24:                                        ; preds = %for.body20
  %39 = load ptr, ptr %m, align 8, !dbg !3791
  %mnt_master25 = getelementptr inbounds %struct.mount, ptr %39, i32 0, i32 15, !dbg !3791
  %40 = load ptr, ptr %mnt_master25, align 8, !dbg !3791
  %mnt = getelementptr inbounds %struct.mount, ptr %40, i32 0, i32 3, !dbg !3791
  %mnt_flags = getelementptr inbounds %struct.vfsmount, ptr %mnt, i32 0, i32 2, !dbg !3791
  %41 = load i32, ptr %mnt_flags, align 8, !dbg !3791
  %and = and i32 %41, -67108865, !dbg !3791
  store i32 %and, ptr %mnt_flags, align 8, !dbg !3791
  br label %if.end26, !dbg !3791

if.end26:                                         ; preds = %if.then24, %for.body20
  br label %for.inc27, !dbg !3792

for.inc27:                                        ; preds = %if.end26
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr28) #7, !dbg !3793
  call void @llvm.dbg.declare(metadata ptr %____ptr28, metadata !3684, metadata !DIExpression()), !dbg !3793
  %42 = load ptr, ptr %n, align 8, !dbg !3793
  %mnt_hash = getelementptr inbounds %struct.mount, ptr %42, i32 0, i32 0, !dbg !3793
  %next = getelementptr inbounds %struct.hlist_node, ptr %mnt_hash, i32 0, i32 0, !dbg !3793
  %43 = load ptr, ptr %next, align 8, !dbg !3793
  store ptr %43, ptr %____ptr28, align 8, !dbg !3793
  %44 = load ptr, ptr %____ptr28, align 8, !dbg !3793
  %tobool30 = icmp ne ptr %44, null, !dbg !3793
  br i1 %tobool30, label %cond.true31, label %cond.false35, !dbg !3793

cond.true31:                                      ; preds = %for.inc27
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr32) #7, !dbg !3794
  call void @llvm.dbg.declare(metadata ptr %__mptr32, metadata !3687, metadata !DIExpression()), !dbg !3794
  %45 = load ptr, ptr %____ptr28, align 8, !dbg !3794
  store ptr %45, ptr %__mptr32, align 8, !dbg !3794
  %46 = load ptr, ptr %__mptr32, align 8, !dbg !3794
  %add.ptr34 = getelementptr i8, ptr %46, i64 0, !dbg !3794
  store ptr %add.ptr34, ptr %tmp33, align 8, !dbg !3794
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr32) #7, !dbg !3793
  %47 = load ptr, ptr %tmp33, align 8, !dbg !3794
  br label %cond.end36, !dbg !3793

cond.false35:                                     ; preds = %for.inc27
  br label %cond.end36, !dbg !3793

cond.end36:                                       ; preds = %cond.false35, %cond.true31
  %cond37 = phi ptr [ %47, %cond.true31 ], [ null, %cond.false35 ], !dbg !3793
  store ptr %cond37, ptr %tmp29, align 8, !dbg !3793
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr28) #7, !dbg !3779
  %48 = load ptr, ptr %tmp29, align 8, !dbg !3793
  store ptr %48, ptr %n, align 8, !dbg !3779
  br label %for.cond18, !dbg !3779, !llvm.loop !3795

for.end38:                                        ; preds = %for.cond18
  call void @read_sequnlock_excl(ptr noundef @mount_lock) #8, !dbg !3797
  %49 = load i32, ptr %ret, align 4, !dbg !3798
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7, !dbg !3799
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #7, !dbg !3799
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #7, !dbg !3799
  ret i32 %49, !dbg !3800
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @next_peer(ptr noundef %p) #3 align 16 !dbg !3801 {
entry:
  %p.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3805, metadata !DIExpression()), !dbg !3808
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #7, !dbg !3809
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3806, metadata !DIExpression()), !dbg !3809
  %0 = load ptr, ptr %p.addr, align 8, !dbg !3809
  %mnt_share = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 12, !dbg !3809
  %next = getelementptr inbounds %struct.list_head, ptr %mnt_share, i32 0, i32 0, !dbg !3809
  %1 = load ptr, ptr %next, align 8, !dbg !3809
  store ptr %1, ptr %__mptr, align 8, !dbg !3809
  %2 = load ptr, ptr %__mptr, align 8, !dbg !3809
  %add.ptr = getelementptr i8, ptr %2, i64 -176, !dbg !3809
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3809
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #7, !dbg !3810
  %3 = load ptr, ptr %tmp, align 8, !dbg !3809
  ret ptr %3, !dbg !3811
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @propagate_one(ptr noundef %m, ptr noundef %dest_mp) #0 align 16 !dbg !3812 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca ptr, align 8
  %dest_mp.addr = alloca ptr, align 8
  %child = alloca ptr, align 8
  %type = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %n = alloca ptr, align 8
  %p = alloca ptr, align 8
  %done = alloca i8, align 1
  %parent = alloca ptr, align 8
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !3816, metadata !DIExpression()), !dbg !3827
  store ptr %dest_mp, ptr %dest_mp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest_mp.addr, metadata !3817, metadata !DIExpression()), !dbg !3828
  call void @llvm.lifetime.start.p0(i64 8, ptr %child) #7, !dbg !3829
  call void @llvm.dbg.declare(metadata ptr %child, metadata !3818, metadata !DIExpression()), !dbg !3830
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #7, !dbg !3831
  call void @llvm.dbg.declare(metadata ptr %type, metadata !3819, metadata !DIExpression()), !dbg !3832
  %0 = load ptr, ptr %m.addr, align 8, !dbg !3833
  %mnt_ns = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 16, !dbg !3833
  %1 = load ptr, ptr %mnt_ns, align 8, !dbg !3833
  %tobool = icmp ne ptr %1, null, !dbg !3833
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3833

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %m.addr, align 8, !dbg !3833
  %mnt_ns1 = getelementptr inbounds %struct.mount, ptr %2, i32 0, i32 16, !dbg !3833
  %3 = load ptr, ptr %mnt_ns1, align 8, !dbg !3833
  %call = call zeroext i1 @is_anon_ns(ptr noundef %3) #8, !dbg !3833
  br i1 %call, label %if.then, label %if.end, !dbg !3835

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4, !dbg !3836
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup48, !dbg !3836

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %dest_mp.addr, align 8, !dbg !3837
  %m_dentry = getelementptr inbounds %struct.mountpoint, ptr %4, i32 0, i32 1, !dbg !3839
  %5 = load ptr, ptr %m_dentry, align 8, !dbg !3839
  %6 = load ptr, ptr %m.addr, align 8, !dbg !3840
  %mnt = getelementptr inbounds %struct.mount, ptr %6, i32 0, i32 3, !dbg !3841
  %mnt_root = getelementptr inbounds %struct.vfsmount, ptr %mnt, i32 0, i32 0, !dbg !3842
  %7 = load ptr, ptr %mnt_root, align 8, !dbg !3842
  %call2 = call zeroext i1 @is_subdir(ptr noundef %5, ptr noundef %7) #8, !dbg !3843
  br i1 %call2, label %if.end4, label %if.then3, !dbg !3844

if.then3:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !3845
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup48, !dbg !3845

if.end4:                                          ; preds = %if.end
  %8 = load ptr, ptr %m.addr, align 8, !dbg !3846
  %9 = load ptr, ptr @last_dest, align 8, !dbg !3847
  %call5 = call zeroext i1 @peers(ptr noundef %8, ptr noundef %9) #8, !dbg !3848
  br i1 %call5, label %if.then6, label %if.else, !dbg !3849

if.then6:                                         ; preds = %if.end4
  store i32 8, ptr %type, align 4, !dbg !3850
  br label %if.end29, !dbg !3852

if.else:                                          ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #7, !dbg !3853
  call void @llvm.dbg.declare(metadata ptr %n, metadata !3820, metadata !DIExpression()), !dbg !3854
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #7, !dbg !3853
  call void @llvm.dbg.declare(metadata ptr %p, metadata !3823, metadata !DIExpression()), !dbg !3855
  call void @llvm.lifetime.start.p0(i64 1, ptr %done) #7, !dbg !3856
  call void @llvm.dbg.declare(metadata ptr %done, metadata !3824, metadata !DIExpression()), !dbg !3857
  %10 = load ptr, ptr %m.addr, align 8, !dbg !3858
  store ptr %10, ptr %n, align 8, !dbg !3860
  br label %for.cond, !dbg !3861

for.cond:                                         ; preds = %for.inc, %if.else
  %11 = load ptr, ptr %n, align 8, !dbg !3862
  %mnt_master = getelementptr inbounds %struct.mount, ptr %11, i32 0, i32 15, !dbg !3865
  %12 = load ptr, ptr %mnt_master, align 8, !dbg !3865
  store ptr %12, ptr %p, align 8, !dbg !3866
  %13 = load ptr, ptr %p, align 8, !dbg !3867
  %14 = load ptr, ptr @dest_master, align 8, !dbg !3869
  %cmp = icmp eq ptr %13, %14, !dbg !3870
  br i1 %cmp, label %if.then10, label %lor.lhs.false7, !dbg !3871

lor.lhs.false7:                                   ; preds = %for.cond
  %15 = load ptr, ptr %p, align 8, !dbg !3872
  %mnt8 = getelementptr inbounds %struct.mount, ptr %15, i32 0, i32 3, !dbg !3872
  %mnt_flags = getelementptr inbounds %struct.vfsmount, ptr %mnt8, i32 0, i32 2, !dbg !3872
  %16 = load i32, ptr %mnt_flags, align 8, !dbg !3872
  %and = and i32 %16, 67108864, !dbg !3872
  %tobool9 = icmp ne i32 %and, 0, !dbg !3872
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !3873

if.then10:                                        ; preds = %lor.lhs.false7, %for.cond
  br label %for.end, !dbg !3874

if.end11:                                         ; preds = %lor.lhs.false7
  br label %for.inc, !dbg !3875

for.inc:                                          ; preds = %if.end11
  %17 = load ptr, ptr %p, align 8, !dbg !3876
  store ptr %17, ptr %n, align 8, !dbg !3877
  br label %for.cond, !dbg !3878, !llvm.loop !3879

for.end:                                          ; preds = %if.then10
  br label %do.body, !dbg !3882

do.body:                                          ; preds = %do.cond, %for.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #7, !dbg !3883
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !3825, metadata !DIExpression()), !dbg !3884
  %18 = load ptr, ptr @last_source, align 8, !dbg !3885
  %mnt_parent = getelementptr inbounds %struct.mount, ptr %18, i32 0, i32 1, !dbg !3886
  %19 = load ptr, ptr %mnt_parent, align 8, !dbg !3886
  store ptr %19, ptr %parent, align 8, !dbg !3884
  %20 = load ptr, ptr @last_source, align 8, !dbg !3887
  %21 = load ptr, ptr @first_source, align 8, !dbg !3889
  %call12 = call zeroext i1 @peers(ptr noundef %20, ptr noundef %21) #8, !dbg !3890
  br i1 %call12, label %if.then13, label %if.end14, !dbg !3891

if.then13:                                        ; preds = %do.body
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3892

if.end14:                                         ; preds = %do.body
  %22 = load ptr, ptr %parent, align 8, !dbg !3893
  %mnt_master15 = getelementptr inbounds %struct.mount, ptr %22, i32 0, i32 15, !dbg !3894
  %23 = load ptr, ptr %mnt_master15, align 8, !dbg !3894
  %24 = load ptr, ptr %p, align 8, !dbg !3895
  %cmp16 = icmp eq ptr %23, %24, !dbg !3896
  %frombool = zext i1 %cmp16 to i8, !dbg !3897
  store i8 %frombool, ptr %done, align 1, !dbg !3897
  %25 = load i8, ptr %done, align 1, !dbg !3898, !range !3900, !noundef !696
  %tobool17 = trunc i8 %25 to i1, !dbg !3898
  br i1 %tobool17, label %land.lhs.true, label %if.end20, !dbg !3901

land.lhs.true:                                    ; preds = %if.end14
  %26 = load ptr, ptr %n, align 8, !dbg !3902
  %27 = load ptr, ptr %parent, align 8, !dbg !3903
  %call18 = call zeroext i1 @peers(ptr noundef %26, ptr noundef %27) #8, !dbg !3904
  br i1 %call18, label %if.then19, label %if.end20, !dbg !3905

if.then19:                                        ; preds = %land.lhs.true
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3906

if.end20:                                         ; preds = %land.lhs.true, %if.end14
  %28 = load ptr, ptr @last_source, align 8, !dbg !3907
  %mnt_master21 = getelementptr inbounds %struct.mount, ptr %28, i32 0, i32 15, !dbg !3908
  %29 = load ptr, ptr %mnt_master21, align 8, !dbg !3908
  store ptr %29, ptr @last_source, align 8, !dbg !3909
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3910
  br label %cleanup, !dbg !3910

cleanup:                                          ; preds = %if.end20, %if.then19, %if.then13
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #7, !dbg !3910
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 5, label %do.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond, !dbg !3911

do.cond:                                          ; preds = %cleanup.cont
  %30 = load i8, ptr %done, align 1, !dbg !3912, !range !3900, !noundef !696
  %tobool22 = trunc i8 %30 to i1, !dbg !3912
  %lnot = xor i1 %tobool22, true, !dbg !3913
  br i1 %lnot, label %do.body, label %do.end, !dbg !3911, !llvm.loop !3914

do.end:                                           ; preds = %do.cond, %cleanup
  store i32 2, ptr %type, align 4, !dbg !3916
  %31 = load ptr, ptr %m.addr, align 8, !dbg !3917
  %mnt23 = getelementptr inbounds %struct.mount, ptr %31, i32 0, i32 3, !dbg !3917
  %mnt_flags24 = getelementptr inbounds %struct.vfsmount, ptr %mnt23, i32 0, i32 2, !dbg !3917
  %32 = load i32, ptr %mnt_flags24, align 8, !dbg !3917
  %and25 = and i32 %32, 4096, !dbg !3917
  %tobool26 = icmp ne i32 %and25, 0, !dbg !3917
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !3919

if.then27:                                        ; preds = %do.end
  %33 = load i32, ptr %type, align 4, !dbg !3920
  %or = or i32 %33, 8, !dbg !3920
  store i32 %or, ptr %type, align 4, !dbg !3920
  br label %if.end28, !dbg !3921

if.end28:                                         ; preds = %if.then27, %do.end
  call void @llvm.lifetime.end.p0(i64 1, ptr %done) #7, !dbg !3922
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #7, !dbg !3922
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #7, !dbg !3922
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.then6
  %34 = load ptr, ptr @last_source, align 8, !dbg !3923
  %35 = load ptr, ptr @last_source, align 8, !dbg !3924
  %mnt30 = getelementptr inbounds %struct.mount, ptr %35, i32 0, i32 3, !dbg !3925
  %mnt_root31 = getelementptr inbounds %struct.vfsmount, ptr %mnt30, i32 0, i32 0, !dbg !3926
  %36 = load ptr, ptr %mnt_root31, align 8, !dbg !3926
  %37 = load i32, ptr %type, align 4, !dbg !3927
  %call32 = call ptr @copy_tree(ptr noundef %34, ptr noundef %36, i32 noundef %37) #8, !dbg !3928
  store ptr %call32, ptr %child, align 8, !dbg !3929
  %38 = load ptr, ptr %child, align 8, !dbg !3930
  %call33 = call zeroext i1 @IS_ERR(ptr noundef %38) #8, !dbg !3932
  br i1 %call33, label %if.then34, label %if.end36, !dbg !3933

if.then34:                                        ; preds = %if.end29
  %39 = load ptr, ptr %child, align 8, !dbg !3934
  %call35 = call i64 @PTR_ERR(ptr noundef %39) #8, !dbg !3935
  %conv = trunc i64 %call35 to i32, !dbg !3935
  store i32 %conv, ptr %retval, align 4, !dbg !3936
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup48, !dbg !3936

if.end36:                                         ; preds = %if.end29
  call void @read_seqlock_excl(ptr noundef @mount_lock) #8, !dbg !3937
  %40 = load ptr, ptr %m.addr, align 8, !dbg !3938
  %41 = load ptr, ptr %dest_mp.addr, align 8, !dbg !3939
  %42 = load ptr, ptr %child, align 8, !dbg !3940
  call void @mnt_set_mountpoint(ptr noundef %40, ptr noundef %41, ptr noundef %42) #8, !dbg !3941
  %43 = load ptr, ptr %m.addr, align 8, !dbg !3942
  %mnt_master37 = getelementptr inbounds %struct.mount, ptr %43, i32 0, i32 15, !dbg !3944
  %44 = load ptr, ptr %mnt_master37, align 8, !dbg !3944
  %45 = load ptr, ptr @dest_master, align 8, !dbg !3945
  %cmp38 = icmp ne ptr %44, %45, !dbg !3946
  br i1 %cmp38, label %if.then40, label %if.end45, !dbg !3947

if.then40:                                        ; preds = %if.end36
  %46 = load ptr, ptr %m.addr, align 8, !dbg !3948
  %mnt_master41 = getelementptr inbounds %struct.mount, ptr %46, i32 0, i32 15, !dbg !3948
  %47 = load ptr, ptr %mnt_master41, align 8, !dbg !3948
  %mnt42 = getelementptr inbounds %struct.mount, ptr %47, i32 0, i32 3, !dbg !3948
  %mnt_flags43 = getelementptr inbounds %struct.vfsmount, ptr %mnt42, i32 0, i32 2, !dbg !3948
  %48 = load i32, ptr %mnt_flags43, align 8, !dbg !3948
  %or44 = or i32 %48, 67108864, !dbg !3948
  store i32 %or44, ptr %mnt_flags43, align 8, !dbg !3948
  br label %if.end45, !dbg !3948

if.end45:                                         ; preds = %if.then40, %if.end36
  call void @read_sequnlock_excl(ptr noundef @mount_lock) #8, !dbg !3949
  %49 = load ptr, ptr %m.addr, align 8, !dbg !3950
  store ptr %49, ptr @last_dest, align 8, !dbg !3951
  %50 = load ptr, ptr %child, align 8, !dbg !3952
  store ptr %50, ptr @last_source, align 8, !dbg !3953
  %51 = load ptr, ptr %child, align 8, !dbg !3954
  %mnt_hash = getelementptr inbounds %struct.mount, ptr %51, i32 0, i32 0, !dbg !3955
  %52 = load ptr, ptr @list, align 8, !dbg !3956
  call void @hlist_add_head(ptr noundef %mnt_hash, ptr noundef %52) #8, !dbg !3957
  %53 = load ptr, ptr %m.addr, align 8, !dbg !3958
  %mnt_ns46 = getelementptr inbounds %struct.mount, ptr %53, i32 0, i32 16, !dbg !3959
  %54 = load ptr, ptr %mnt_ns46, align 8, !dbg !3959
  %55 = load ptr, ptr %child, align 8, !dbg !3960
  %call47 = call i32 @count_mounts(ptr noundef %54, ptr noundef %55) #8, !dbg !3961
  store i32 %call47, ptr %retval, align 4, !dbg !3962
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup48, !dbg !3962

cleanup48:                                        ; preds = %if.end45, %if.then34, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #7, !dbg !3963
  call void @llvm.lifetime.end.p0(i64 8, ptr %child) #7, !dbg !3963
  %56 = load i32, ptr %retval, align 4, !dbg !3963
  ret i32 %56, !dbg !3963

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @next_group(ptr noundef %m, ptr noundef %origin) #0 align 16 !dbg !3964 {
entry:
  %retval = alloca ptr, align 8
  %m.addr = alloca ptr, align 8
  %origin.addr = alloca ptr, align 8
  %next = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %master = alloca ptr, align 8
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !3968, metadata !DIExpression()), !dbg !3975
  store ptr %origin, ptr %origin.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %origin.addr, metadata !3969, metadata !DIExpression()), !dbg !3976
  br label %while.body, !dbg !3977

while.body:                                       ; preds = %entry, %if.end46
  br label %while.body2, !dbg !3978

while.body2:                                      ; preds = %while.body, %cleanup.cont
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #7, !dbg !3979
  call void @llvm.dbg.declare(metadata ptr %next, metadata !3970, metadata !DIExpression()), !dbg !3980
  %0 = load ptr, ptr %m.addr, align 8, !dbg !3981
  %mnt_ns = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 16, !dbg !3981
  %1 = load ptr, ptr %mnt_ns, align 8, !dbg !3981
  %tobool = icmp ne ptr %1, null, !dbg !3981
  br i1 %tobool, label %lor.lhs.false, label %if.end, !dbg !3981

lor.lhs.false:                                    ; preds = %while.body2
  %2 = load ptr, ptr %m.addr, align 8, !dbg !3981
  %mnt_ns3 = getelementptr inbounds %struct.mount, ptr %2, i32 0, i32 16, !dbg !3981
  %3 = load ptr, ptr %mnt_ns3, align 8, !dbg !3981
  %call = call zeroext i1 @is_anon_ns(ptr noundef %3) #8, !dbg !3981
  br i1 %call, label %if.end, label %land.lhs.true, !dbg !3983

land.lhs.true:                                    ; preds = %lor.lhs.false
  %4 = load ptr, ptr %m.addr, align 8, !dbg !3984
  %mnt_slave_list = getelementptr inbounds %struct.mount, ptr %4, i32 0, i32 13, !dbg !3985
  %call4 = call i32 @list_empty(ptr noundef %mnt_slave_list) #8, !dbg !3986
  %tobool5 = icmp ne i32 %call4, 0, !dbg !3986
  br i1 %tobool5, label %if.end, label %if.then, !dbg !3987

if.then:                                          ; preds = %land.lhs.true
  %5 = load ptr, ptr %m.addr, align 8, !dbg !3988
  %call6 = call ptr @first_slave(ptr noundef %5) #8, !dbg !3989
  store ptr %call6, ptr %retval, align 8, !dbg !3990
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3990

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false, %while.body2
  %6 = load ptr, ptr %m.addr, align 8, !dbg !3991
  %call7 = call ptr @next_peer(ptr noundef %6) #8, !dbg !3992
  store ptr %call7, ptr %next, align 8, !dbg !3993
  %7 = load ptr, ptr %m.addr, align 8, !dbg !3994
  %mnt_group_id = getelementptr inbounds %struct.mount, ptr %7, i32 0, i32 23, !dbg !3996
  %8 = load i32, ptr %mnt_group_id, align 8, !dbg !3996
  %9 = load ptr, ptr %origin.addr, align 8, !dbg !3997
  %mnt_group_id8 = getelementptr inbounds %struct.mount, ptr %9, i32 0, i32 23, !dbg !3998
  %10 = load i32, ptr %mnt_group_id8, align 8, !dbg !3998
  %cmp = icmp eq i32 %8, %10, !dbg !3999
  br i1 %cmp, label %if.then9, label %if.else, !dbg !4000

if.then9:                                         ; preds = %if.end
  %11 = load ptr, ptr %next, align 8, !dbg !4001
  %12 = load ptr, ptr %origin.addr, align 8, !dbg !4004
  %cmp10 = icmp eq ptr %11, %12, !dbg !4005
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !4006

if.then11:                                        ; preds = %if.then9
  store ptr null, ptr %retval, align 8, !dbg !4007
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4007

if.end12:                                         ; preds = %if.then9
  br label %if.end18, !dbg !4008

if.else:                                          ; preds = %if.end
  %13 = load ptr, ptr %m.addr, align 8, !dbg !4009
  %mnt_slave = getelementptr inbounds %struct.mount, ptr %13, i32 0, i32 14, !dbg !4011
  %next13 = getelementptr inbounds %struct.list_head, ptr %mnt_slave, i32 0, i32 0, !dbg !4012
  %14 = load ptr, ptr %next13, align 8, !dbg !4012
  %15 = load ptr, ptr %next, align 8, !dbg !4013
  %mnt_slave14 = getelementptr inbounds %struct.mount, ptr %15, i32 0, i32 14, !dbg !4014
  %cmp15 = icmp ne ptr %14, %mnt_slave14, !dbg !4015
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !4016

if.then16:                                        ; preds = %if.else
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4017

if.end17:                                         ; preds = %if.else
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.end12
  %16 = load ptr, ptr %next, align 8, !dbg !4018
  store ptr %16, ptr %m.addr, align 8, !dbg !4019
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4020
  br label %cleanup, !dbg !4020

cleanup:                                          ; preds = %if.end18, %if.then16, %if.then11, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #7, !dbg !4020
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
    i32 5, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.body2, !dbg !3978, !llvm.loop !4021

while.end:                                        ; preds = %cleanup
  br label %while.body20, !dbg !4022

while.body20:                                     ; preds = %while.end, %cleanup.cont42
  call void @llvm.lifetime.start.p0(i64 8, ptr %master) #7, !dbg !4023
  call void @llvm.dbg.declare(metadata ptr %master, metadata !3973, metadata !DIExpression()), !dbg !4024
  %17 = load ptr, ptr %m.addr, align 8, !dbg !4025
  %mnt_master = getelementptr inbounds %struct.mount, ptr %17, i32 0, i32 15, !dbg !4026
  %18 = load ptr, ptr %mnt_master, align 8, !dbg !4026
  store ptr %18, ptr %master, align 8, !dbg !4024
  %19 = load ptr, ptr %m.addr, align 8, !dbg !4027
  %mnt_slave21 = getelementptr inbounds %struct.mount, ptr %19, i32 0, i32 14, !dbg !4029
  %next22 = getelementptr inbounds %struct.list_head, ptr %mnt_slave21, i32 0, i32 0, !dbg !4030
  %20 = load ptr, ptr %next22, align 8, !dbg !4030
  %21 = load ptr, ptr %master, align 8, !dbg !4031
  %mnt_slave_list23 = getelementptr inbounds %struct.mount, ptr %21, i32 0, i32 13, !dbg !4032
  %cmp24 = icmp ne ptr %20, %mnt_slave_list23, !dbg !4033
  br i1 %cmp24, label %if.then25, label %if.end27, !dbg !4034

if.then25:                                        ; preds = %while.body20
  %22 = load ptr, ptr %m.addr, align 8, !dbg !4035
  %call26 = call ptr @next_slave(ptr noundef %22) #8, !dbg !4036
  store ptr %call26, ptr %retval, align 8, !dbg !4037
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup40, !dbg !4037

if.end27:                                         ; preds = %while.body20
  %23 = load ptr, ptr %master, align 8, !dbg !4038
  %call28 = call ptr @next_peer(ptr noundef %23) #8, !dbg !4039
  store ptr %call28, ptr %m.addr, align 8, !dbg !4040
  %24 = load ptr, ptr %master, align 8, !dbg !4041
  %mnt_group_id29 = getelementptr inbounds %struct.mount, ptr %24, i32 0, i32 23, !dbg !4043
  %25 = load i32, ptr %mnt_group_id29, align 8, !dbg !4043
  %26 = load ptr, ptr %origin.addr, align 8, !dbg !4044
  %mnt_group_id30 = getelementptr inbounds %struct.mount, ptr %26, i32 0, i32 23, !dbg !4045
  %27 = load i32, ptr %mnt_group_id30, align 8, !dbg !4045
  %cmp31 = icmp eq i32 %25, %27, !dbg !4046
  br i1 %cmp31, label %if.then32, label %if.end33, !dbg !4047

if.then32:                                        ; preds = %if.end27
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup40, !dbg !4048

if.end33:                                         ; preds = %if.end27
  %28 = load ptr, ptr %master, align 8, !dbg !4049
  %mnt_slave34 = getelementptr inbounds %struct.mount, ptr %28, i32 0, i32 14, !dbg !4051
  %next35 = getelementptr inbounds %struct.list_head, ptr %mnt_slave34, i32 0, i32 0, !dbg !4052
  %29 = load ptr, ptr %next35, align 8, !dbg !4052
  %30 = load ptr, ptr %m.addr, align 8, !dbg !4053
  %mnt_slave36 = getelementptr inbounds %struct.mount, ptr %30, i32 0, i32 14, !dbg !4054
  %cmp37 = icmp eq ptr %29, %mnt_slave36, !dbg !4055
  br i1 %cmp37, label %if.then38, label %if.end39, !dbg !4056

if.then38:                                        ; preds = %if.end33
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup40, !dbg !4057

if.end39:                                         ; preds = %if.end33
  %31 = load ptr, ptr %master, align 8, !dbg !4058
  store ptr %31, ptr %m.addr, align 8, !dbg !4059
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4060
  br label %cleanup40, !dbg !4060

cleanup40:                                        ; preds = %if.end39, %if.then38, %if.then32, %if.then25
  call void @llvm.lifetime.end.p0(i64 8, ptr %master) #7, !dbg !4060
  %cleanup.dest41 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest41, label %unreachable [
    i32 0, label %cleanup.cont42
    i32 1, label %return
    i32 7, label %while.end43
  ]

cleanup.cont42:                                   ; preds = %cleanup40
  br label %while.body20, !dbg !4022, !llvm.loop !4061

while.end43:                                      ; preds = %cleanup40
  %32 = load ptr, ptr %m.addr, align 8, !dbg !4062
  %33 = load ptr, ptr %origin.addr, align 8, !dbg !4064
  %cmp44 = icmp eq ptr %32, %33, !dbg !4065
  br i1 %cmp44, label %if.then45, label %if.end46, !dbg !4066

if.then45:                                        ; preds = %while.end43
  store ptr null, ptr %retval, align 8, !dbg !4067
  br label %return, !dbg !4067

if.end46:                                         ; preds = %while.end43
  br label %while.body, !dbg !3977, !llvm.loop !4068

return:                                           ; preds = %if.then45, %cleanup40, %cleanup
  %34 = load ptr, ptr %retval, align 8, !dbg !4070
  ret ptr %34, !dbg !4070

unreachable:                                      ; preds = %cleanup40, %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @read_seqlock_excl(ptr noundef %sl) #3 align 16 !dbg !4071 {
entry:
  %sl.addr = alloca ptr, align 8
  store ptr %sl, ptr %sl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sl.addr, metadata !4076, metadata !DIExpression()), !dbg !4077
  %0 = load ptr, ptr %sl.addr, align 8, !dbg !4078
  %lock = getelementptr inbounds %struct.seqlock_t, ptr %0, i32 0, i32 1, !dbg !4079
  call void @spin_lock(ptr noundef %lock) #8, !dbg !4080
  ret void, !dbg !4081
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @read_sequnlock_excl(ptr noundef %sl) #3 align 16 !dbg !4082 {
entry:
  %sl.addr = alloca ptr, align 8
  store ptr %sl, ptr %sl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sl.addr, metadata !4084, metadata !DIExpression()), !dbg !4085
  %0 = load ptr, ptr %sl.addr, align 8, !dbg !4086
  %lock = getelementptr inbounds %struct.seqlock_t, ptr %0, i32 0, i32 1, !dbg !4087
  call void @spin_unlock(ptr noundef %lock) #8, !dbg !4088
  ret void, !dbg !4089
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @propagation_would_overmount(ptr noundef %from, ptr noundef %to, ptr noundef %mp) #0 align 16 !dbg !4090 {
entry:
  %retval = alloca i1, align 1
  %from.addr = alloca ptr, align 8
  %to.addr = alloca ptr, align 8
  %mp.addr = alloca ptr, align 8
  %m = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !4098, metadata !DIExpression()), !dbg !4103
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !4099, metadata !DIExpression()), !dbg !4104
  store ptr %mp, ptr %mp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mp.addr, metadata !4100, metadata !DIExpression()), !dbg !4105
  %0 = load ptr, ptr %from.addr, align 8, !dbg !4106
  %mnt = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 3, !dbg !4106
  %mnt_flags = getelementptr inbounds %struct.vfsmount, ptr %mnt, i32 0, i32 2, !dbg !4106
  %1 = load i32, ptr %mnt_flags, align 8, !dbg !4106
  %and = and i32 %1, 4096, !dbg !4106
  %tobool = icmp ne i32 %and, 0, !dbg !4106
  br i1 %tobool, label %if.end, label %if.then, !dbg !4108

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !4109
  br label %return, !dbg !4109

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !4110
  %mnt_ns = getelementptr inbounds %struct.mount, ptr %2, i32 0, i32 16, !dbg !4110
  %3 = load ptr, ptr %mnt_ns, align 8, !dbg !4110
  %tobool1 = icmp ne ptr %3, null, !dbg !4110
  br i1 %tobool1, label %lor.lhs.false, label %if.then3, !dbg !4110

lor.lhs.false:                                    ; preds = %if.end
  %4 = load ptr, ptr %to.addr, align 8, !dbg !4110
  %mnt_ns2 = getelementptr inbounds %struct.mount, ptr %4, i32 0, i32 16, !dbg !4110
  %5 = load ptr, ptr %mnt_ns2, align 8, !dbg !4110
  %call = call zeroext i1 @is_anon_ns(ptr noundef %5) #8, !dbg !4110
  br i1 %call, label %if.then3, label %if.end4, !dbg !4112

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  store i1 false, ptr %retval, align 1, !dbg !4113
  br label %return, !dbg !4113

if.end4:                                          ; preds = %lor.lhs.false
  %6 = load ptr, ptr %to.addr, align 8, !dbg !4114
  %mnt5 = getelementptr inbounds %struct.mount, ptr %6, i32 0, i32 3, !dbg !4116
  %mnt_root = getelementptr inbounds %struct.vfsmount, ptr %mnt5, i32 0, i32 0, !dbg !4117
  %7 = load ptr, ptr %mnt_root, align 8, !dbg !4117
  %8 = load ptr, ptr %mp.addr, align 8, !dbg !4118
  %m_dentry = getelementptr inbounds %struct.mountpoint, ptr %8, i32 0, i32 1, !dbg !4119
  %9 = load ptr, ptr %m_dentry, align 8, !dbg !4119
  %cmp = icmp ne ptr %7, %9, !dbg !4120
  br i1 %cmp, label %if.then6, label %if.end7, !dbg !4121

if.then6:                                         ; preds = %if.end4
  store i1 false, ptr %retval, align 1, !dbg !4122
  br label %return, !dbg !4122

if.end7:                                          ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #7, !dbg !4123
  call void @llvm.dbg.declare(metadata ptr %m, metadata !4101, metadata !DIExpression()), !dbg !4124
  %10 = load ptr, ptr %to.addr, align 8, !dbg !4125
  store ptr %10, ptr %m, align 8, !dbg !4124
  br label %for.cond, !dbg !4123

for.cond:                                         ; preds = %for.inc, %if.end7
  %11 = load ptr, ptr %m, align 8, !dbg !4126
  %tobool8 = icmp ne ptr %11, null, !dbg !4128
  br i1 %tobool8, label %for.body, label %for.cond.cleanup, !dbg !4128

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4128

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %from.addr, align 8, !dbg !4129
  %13 = load ptr, ptr %m, align 8, !dbg !4132
  %call9 = call zeroext i1 @peers(ptr noundef %12, ptr noundef %13) #8, !dbg !4133
  br i1 %call9, label %if.then10, label %if.end11, !dbg !4134

if.then10:                                        ; preds = %for.body
  store i1 true, ptr %retval, align 1, !dbg !4135
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4135

if.end11:                                         ; preds = %for.body
  br label %for.inc, !dbg !4136

for.inc:                                          ; preds = %if.end11
  %14 = load ptr, ptr %m, align 8, !dbg !4137
  %mnt_master = getelementptr inbounds %struct.mount, ptr %14, i32 0, i32 15, !dbg !4138
  %15 = load ptr, ptr %mnt_master, align 8, !dbg !4138
  store ptr %15, ptr %m, align 8, !dbg !4139
  br label %for.cond, !dbg !4140, !llvm.loop !4141

cleanup:                                          ; preds = %if.then10, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #7, !dbg !4140
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup
  store i1 false, ptr %retval, align 1, !dbg !4143
  br label %return, !dbg !4143

return:                                           ; preds = %for.end, %cleanup, %if.then6, %if.then3, %if.then
  %16 = load i1, ptr %retval, align 1, !dbg !4144
  ret i1 %16, !dbg !4144

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @is_anon_ns(ptr noundef %ns) #3 align 16 !dbg !4145 {
entry:
  %ns.addr = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !4149, metadata !DIExpression()), !dbg !4150
  %0 = load ptr, ptr %ns.addr, align 8, !dbg !4151
  %seq = getelementptr inbounds %struct.mnt_namespace, ptr %0, i32 0, i32 6, !dbg !4152
  %1 = load i64, ptr %seq, align 8, !dbg !4152
  %cmp = icmp eq i64 %1, 0, !dbg !4153
  ret i1 %cmp, !dbg !4154
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @peers(ptr noundef %m1, ptr noundef %m2) #3 align 16 !dbg !4155 {
entry:
  %m1.addr = alloca ptr, align 8
  %m2.addr = alloca ptr, align 8
  store ptr %m1, ptr %m1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m1.addr, metadata !4159, metadata !DIExpression()), !dbg !4161
  store ptr %m2, ptr %m2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m2.addr, metadata !4160, metadata !DIExpression()), !dbg !4162
  %0 = load ptr, ptr %m1.addr, align 8, !dbg !4163
  %mnt_group_id = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 23, !dbg !4164
  %1 = load i32, ptr %mnt_group_id, align 8, !dbg !4164
  %2 = load ptr, ptr %m2.addr, align 8, !dbg !4165
  %mnt_group_id1 = getelementptr inbounds %struct.mount, ptr %2, i32 0, i32 23, !dbg !4166
  %3 = load i32, ptr %mnt_group_id1, align 8, !dbg !4166
  %cmp = icmp eq i32 %1, %3, !dbg !4167
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4168

land.rhs:                                         ; preds = %entry
  %4 = load ptr, ptr %m1.addr, align 8, !dbg !4169
  %mnt_group_id2 = getelementptr inbounds %struct.mount, ptr %4, i32 0, i32 23, !dbg !4170
  %5 = load i32, ptr %mnt_group_id2, align 8, !dbg !4170
  %tobool = icmp ne i32 %5, 0, !dbg !4168
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ], !dbg !4171
  ret i1 %6, !dbg !4172
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @propagate_mount_busy(ptr noundef %mnt, i32 noundef %refcnt) #0 align 16 !dbg !4173 {
entry:
  %retval = alloca i32, align 4
  %mnt.addr = alloca ptr, align 8
  %refcnt.addr = alloca i32, align 4
  %m = alloca ptr, align 8
  %child = alloca ptr, align 8
  %topper = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %count = alloca i32, align 4
  store ptr %mnt, ptr %mnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mnt.addr, metadata !4177, metadata !DIExpression()), !dbg !4187
  store i32 %refcnt, ptr %refcnt.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %refcnt.addr, metadata !4178, metadata !DIExpression()), !dbg !4188
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #7, !dbg !4189
  call void @llvm.dbg.declare(metadata ptr %m, metadata !4179, metadata !DIExpression()), !dbg !4190
  call void @llvm.lifetime.start.p0(i64 8, ptr %child) #7, !dbg !4189
  call void @llvm.dbg.declare(metadata ptr %child, metadata !4180, metadata !DIExpression()), !dbg !4191
  call void @llvm.lifetime.start.p0(i64 8, ptr %topper) #7, !dbg !4189
  call void @llvm.dbg.declare(metadata ptr %topper, metadata !4181, metadata !DIExpression()), !dbg !4192
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #7, !dbg !4193
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !4182, metadata !DIExpression()), !dbg !4194
  %0 = load ptr, ptr %mnt.addr, align 8, !dbg !4195
  %mnt_parent = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 1, !dbg !4196
  %1 = load ptr, ptr %mnt_parent, align 8, !dbg !4196
  store ptr %1, ptr %parent, align 8, !dbg !4194
  %2 = load ptr, ptr %mnt.addr, align 8, !dbg !4197
  %3 = load ptr, ptr %parent, align 8, !dbg !4199
  %cmp = icmp eq ptr %2, %3, !dbg !4200
  br i1 %cmp, label %if.then, label %if.end, !dbg !4201

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %mnt.addr, align 8, !dbg !4202
  %5 = load i32, ptr %refcnt.addr, align 4, !dbg !4203
  %call = call i32 @do_refcount_check(ptr noundef %4, i32 noundef %5) #8, !dbg !4204
  store i32 %call, ptr %retval, align 4, !dbg !4205
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup27, !dbg !4205

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %mnt.addr, align 8, !dbg !4206
  %mnt_mounts = getelementptr inbounds %struct.mount, ptr %6, i32 0, i32 6, !dbg !4208
  %call1 = call i32 @list_empty(ptr noundef %mnt_mounts) #8, !dbg !4209
  %tobool = icmp ne i32 %call1, 0, !dbg !4209
  br i1 %tobool, label %lor.lhs.false, label %if.then4, !dbg !4210

lor.lhs.false:                                    ; preds = %if.end
  %7 = load ptr, ptr %mnt.addr, align 8, !dbg !4211
  %8 = load i32, ptr %refcnt.addr, align 4, !dbg !4212
  %call2 = call i32 @do_refcount_check(ptr noundef %7, i32 noundef %8) #8, !dbg !4213
  %tobool3 = icmp ne i32 %call2, 0, !dbg !4213
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4214

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  store i32 1, ptr %retval, align 4, !dbg !4215
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup27, !dbg !4215

if.end5:                                          ; preds = %lor.lhs.false
  %9 = load ptr, ptr %parent, align 8, !dbg !4216
  %10 = load ptr, ptr %parent, align 8, !dbg !4217
  %call6 = call ptr @propagation_next(ptr noundef %9, ptr noundef %10) #8, !dbg !4218
  store ptr %call6, ptr %m, align 8, !dbg !4219
  br label %for.cond, !dbg !4220

for.cond:                                         ; preds = %for.inc, %if.end5
  %11 = load ptr, ptr %m, align 8, !dbg !4221
  %tobool7 = icmp ne ptr %11, null, !dbg !4222
  br i1 %tobool7, label %for.body, label %for.end, !dbg !4222

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #7, !dbg !4223
  call void @llvm.dbg.declare(metadata ptr %count, metadata !4183, metadata !DIExpression()), !dbg !4224
  store i32 1, ptr %count, align 4, !dbg !4224
  %12 = load ptr, ptr %m, align 8, !dbg !4225
  %mnt8 = getelementptr inbounds %struct.mount, ptr %12, i32 0, i32 3, !dbg !4226
  %13 = load ptr, ptr %mnt.addr, align 8, !dbg !4227
  %mnt_mountpoint = getelementptr inbounds %struct.mount, ptr %13, i32 0, i32 2, !dbg !4228
  %14 = load ptr, ptr %mnt_mountpoint, align 8, !dbg !4228
  %call9 = call ptr @__lookup_mnt(ptr noundef %mnt8, ptr noundef %14) #8, !dbg !4229
  store ptr %call9, ptr %child, align 8, !dbg !4230
  %15 = load ptr, ptr %child, align 8, !dbg !4231
  %tobool10 = icmp ne ptr %15, null, !dbg !4231
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !4233

if.then11:                                        ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4234

if.end12:                                         ; preds = %for.body
  %16 = load ptr, ptr %child, align 8, !dbg !4235
  %call13 = call ptr @find_topper(ptr noundef %16) #8, !dbg !4236
  store ptr %call13, ptr %topper, align 8, !dbg !4237
  %17 = load ptr, ptr %topper, align 8, !dbg !4238
  %tobool14 = icmp ne ptr %17, null, !dbg !4238
  br i1 %tobool14, label %if.then15, label %if.else, !dbg !4240

if.then15:                                        ; preds = %if.end12
  %18 = load i32, ptr %count, align 4, !dbg !4241
  %add = add i32 %18, 1, !dbg !4241
  store i32 %add, ptr %count, align 4, !dbg !4241
  br label %if.end21, !dbg !4242

if.else:                                          ; preds = %if.end12
  %19 = load ptr, ptr %child, align 8, !dbg !4243
  %mnt_mounts16 = getelementptr inbounds %struct.mount, ptr %19, i32 0, i32 6, !dbg !4245
  %call17 = call i32 @list_empty(ptr noundef %mnt_mounts16) #8, !dbg !4246
  %tobool18 = icmp ne i32 %call17, 0, !dbg !4246
  br i1 %tobool18, label %if.end20, label %if.then19, !dbg !4247

if.then19:                                        ; preds = %if.else
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4248

if.end20:                                         ; preds = %if.else
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.then15
  %20 = load ptr, ptr %child, align 8, !dbg !4249
  %21 = load i32, ptr %count, align 4, !dbg !4251
  %call22 = call i32 @do_refcount_check(ptr noundef %20, i32 noundef %21) #8, !dbg !4252
  %tobool23 = icmp ne i32 %call22, 0, !dbg !4252
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !4253

if.then24:                                        ; preds = %if.end21
  store i32 1, ptr %retval, align 4, !dbg !4254
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4254

if.end25:                                         ; preds = %if.end21
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4255
  br label %cleanup, !dbg !4255

cleanup:                                          ; preds = %if.end25, %if.then24, %if.then19, %if.then11
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #7, !dbg !4255
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup27 [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !4256

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %22 = load ptr, ptr %m, align 8, !dbg !4257
  %23 = load ptr, ptr %parent, align 8, !dbg !4258
  %call26 = call ptr @propagation_next(ptr noundef %22, ptr noundef %23) #8, !dbg !4259
  store ptr %call26, ptr %m, align 8, !dbg !4260
  br label %for.cond, !dbg !4261, !llvm.loop !4262

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !4264
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup27, !dbg !4264

cleanup27:                                        ; preds = %for.end, %cleanup, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #7, !dbg !4265
  call void @llvm.lifetime.end.p0(i64 8, ptr %topper) #7, !dbg !4265
  call void @llvm.lifetime.end.p0(i64 8, ptr %child) #7, !dbg !4265
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #7, !dbg !4265
  %24 = load i32, ptr %retval, align 4, !dbg !4265
  ret i32 %24, !dbg !4265
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @do_refcount_check(ptr noundef %mnt, i32 noundef %count) #3 align 16 !dbg !4266 {
entry:
  %mnt.addr = alloca ptr, align 8
  %count.addr = alloca i32, align 4
  store ptr %mnt, ptr %mnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mnt.addr, metadata !4268, metadata !DIExpression()), !dbg !4270
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !4269, metadata !DIExpression()), !dbg !4271
  %0 = load ptr, ptr %mnt.addr, align 8, !dbg !4272
  %call = call i32 @mnt_get_count(ptr noundef %0) #8, !dbg !4273
  %1 = load i32, ptr %count.addr, align 4, !dbg !4274
  %cmp = icmp sgt i32 %call, %1, !dbg !4275
  %conv = zext i1 %cmp to i32, !dbg !4275
  ret i32 %conv, !dbg !4276
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #3 align 16 !dbg !4277 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !4283, metadata !DIExpression()), !dbg !4284
  br label %do.body, !dbg !4285

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4287

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !4285
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !4285
  %1 = load volatile ptr, ptr %next, align 8, !dbg !4285
  store ptr %1, ptr %tmp, align 8, !dbg !4287
  %2 = load ptr, ptr %tmp, align 8, !dbg !4285
  %3 = load ptr, ptr %head.addr, align 8, !dbg !4289
  %cmp = icmp eq ptr %2, %3, !dbg !4290
  %conv = zext i1 %cmp to i32, !dbg !4290
  ret i32 %conv, !dbg !4291
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @propagation_next(ptr noundef %m, ptr noundef %origin) #0 align 16 !dbg !4292 {
entry:
  %retval = alloca ptr, align 8
  %m.addr = alloca ptr, align 8
  %origin.addr = alloca ptr, align 8
  %master = alloca ptr, align 8
  %next = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !4294, metadata !DIExpression()), !dbg !4301
  store ptr %origin, ptr %origin.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %origin.addr, metadata !4295, metadata !DIExpression()), !dbg !4302
  %0 = load ptr, ptr %m.addr, align 8, !dbg !4303
  %mnt_ns = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 16, !dbg !4303
  %1 = load ptr, ptr %mnt_ns, align 8, !dbg !4303
  %tobool = icmp ne ptr %1, null, !dbg !4303
  br i1 %tobool, label %lor.lhs.false, label %if.end, !dbg !4303

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %m.addr, align 8, !dbg !4303
  %mnt_ns1 = getelementptr inbounds %struct.mount, ptr %2, i32 0, i32 16, !dbg !4303
  %3 = load ptr, ptr %mnt_ns1, align 8, !dbg !4303
  %call = call zeroext i1 @is_anon_ns(ptr noundef %3) #8, !dbg !4303
  br i1 %call, label %if.end, label %land.lhs.true, !dbg !4305

land.lhs.true:                                    ; preds = %lor.lhs.false
  %4 = load ptr, ptr %m.addr, align 8, !dbg !4306
  %mnt_slave_list = getelementptr inbounds %struct.mount, ptr %4, i32 0, i32 13, !dbg !4307
  %call2 = call i32 @list_empty(ptr noundef %mnt_slave_list) #8, !dbg !4308
  %tobool3 = icmp ne i32 %call2, 0, !dbg !4308
  br i1 %tobool3, label %if.end, label %if.then, !dbg !4309

if.then:                                          ; preds = %land.lhs.true
  %5 = load ptr, ptr %m.addr, align 8, !dbg !4310
  %call4 = call ptr @first_slave(ptr noundef %5) #8, !dbg !4311
  store ptr %call4, ptr %retval, align 8, !dbg !4312
  br label %return, !dbg !4312

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false, %entry
  br label %while.body, !dbg !4313

while.body:                                       ; preds = %if.end, %cleanup.cont
  call void @llvm.lifetime.start.p0(i64 8, ptr %master) #7, !dbg !4314
  call void @llvm.dbg.declare(metadata ptr %master, metadata !4296, metadata !DIExpression()), !dbg !4315
  %6 = load ptr, ptr %m.addr, align 8, !dbg !4316
  %mnt_master = getelementptr inbounds %struct.mount, ptr %6, i32 0, i32 15, !dbg !4317
  %7 = load ptr, ptr %mnt_master, align 8, !dbg !4317
  store ptr %7, ptr %master, align 8, !dbg !4315
  %8 = load ptr, ptr %master, align 8, !dbg !4318
  %9 = load ptr, ptr %origin.addr, align 8, !dbg !4319
  %mnt_master5 = getelementptr inbounds %struct.mount, ptr %9, i32 0, i32 15, !dbg !4320
  %10 = load ptr, ptr %mnt_master5, align 8, !dbg !4320
  %cmp = icmp eq ptr %8, %10, !dbg !4321
  br i1 %cmp, label %if.then6, label %if.else, !dbg !4322

if.then6:                                         ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #7, !dbg !4323
  call void @llvm.dbg.declare(metadata ptr %next, metadata !4298, metadata !DIExpression()), !dbg !4324
  %11 = load ptr, ptr %m.addr, align 8, !dbg !4325
  %call7 = call ptr @next_peer(ptr noundef %11) #8, !dbg !4326
  store ptr %call7, ptr %next, align 8, !dbg !4324
  %12 = load ptr, ptr %next, align 8, !dbg !4327
  %13 = load ptr, ptr %origin.addr, align 8, !dbg !4328
  %cmp8 = icmp eq ptr %12, %13, !dbg !4329
  br i1 %cmp8, label %cond.true, label %cond.false, !dbg !4330

cond.true:                                        ; preds = %if.then6
  br label %cond.end, !dbg !4330

cond.false:                                       ; preds = %if.then6
  %14 = load ptr, ptr %next, align 8, !dbg !4331
  br label %cond.end, !dbg !4330

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ null, %cond.true ], [ %14, %cond.false ], !dbg !4330
  store ptr %cond, ptr %retval, align 8, !dbg !4332
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #7, !dbg !4333
  br label %cleanup

if.else:                                          ; preds = %while.body
  %15 = load ptr, ptr %m.addr, align 8, !dbg !4334
  %mnt_slave = getelementptr inbounds %struct.mount, ptr %15, i32 0, i32 14, !dbg !4336
  %next9 = getelementptr inbounds %struct.list_head, ptr %mnt_slave, i32 0, i32 0, !dbg !4337
  %16 = load ptr, ptr %next9, align 8, !dbg !4337
  %17 = load ptr, ptr %master, align 8, !dbg !4338
  %mnt_slave_list10 = getelementptr inbounds %struct.mount, ptr %17, i32 0, i32 13, !dbg !4339
  %cmp11 = icmp ne ptr %16, %mnt_slave_list10, !dbg !4340
  br i1 %cmp11, label %if.then12, label %if.end14, !dbg !4341

if.then12:                                        ; preds = %if.else
  %18 = load ptr, ptr %m.addr, align 8, !dbg !4342
  %call13 = call ptr @next_slave(ptr noundef %18) #8, !dbg !4343
  store ptr %call13, ptr %retval, align 8, !dbg !4344
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4344

if.end14:                                         ; preds = %if.else
  br label %if.end15

if.end15:                                         ; preds = %if.end14
  %19 = load ptr, ptr %master, align 8, !dbg !4345
  store ptr %19, ptr %m.addr, align 8, !dbg !4346
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4347
  br label %cleanup, !dbg !4347

cleanup:                                          ; preds = %if.end15, %if.then12, %cond.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %master) #7, !dbg !4347
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.body, !dbg !4313, !llvm.loop !4348

return:                                           ; preds = %cleanup, %if.then
  %20 = load ptr, ptr %retval, align 8, !dbg !4349
  ret ptr %20, !dbg !4349

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4350 dso_local ptr @__lookup_mnt(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @find_topper(ptr noundef %mnt) #0 align 16 !dbg !4353 {
entry:
  %retval = alloca ptr, align 8
  %mnt.addr = alloca ptr, align 8
  %child = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %mnt, ptr %mnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mnt.addr, metadata !4355, metadata !DIExpression()), !dbg !4359
  call void @llvm.lifetime.start.p0(i64 8, ptr %child) #7, !dbg !4360
  call void @llvm.dbg.declare(metadata ptr %child, metadata !4356, metadata !DIExpression()), !dbg !4361
  %0 = load ptr, ptr %mnt.addr, align 8, !dbg !4362
  %mnt_mounts = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 6, !dbg !4364
  %call = call i32 @list_is_singular(ptr noundef %mnt_mounts) #8, !dbg !4365
  %tobool = icmp ne i32 %call, 0, !dbg !4365
  br i1 %tobool, label %if.end, label %if.then, !dbg !4366

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !4367
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4367

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #7, !dbg !4368
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4357, metadata !DIExpression()), !dbg !4368
  %1 = load ptr, ptr %mnt.addr, align 8, !dbg !4368
  %mnt_mounts1 = getelementptr inbounds %struct.mount, ptr %1, i32 0, i32 6, !dbg !4368
  %next = getelementptr inbounds %struct.list_head, ptr %mnt_mounts1, i32 0, i32 0, !dbg !4368
  %2 = load ptr, ptr %next, align 8, !dbg !4368
  store ptr %2, ptr %__mptr, align 8, !dbg !4368
  %3 = load ptr, ptr %__mptr, align 8, !dbg !4368
  %add.ptr = getelementptr i8, ptr %3, i64 -104, !dbg !4368
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4368
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #7, !dbg !4369
  %4 = load ptr, ptr %tmp, align 8, !dbg !4368
  store ptr %4, ptr %child, align 8, !dbg !4370
  %5 = load ptr, ptr %child, align 8, !dbg !4371
  %mnt_mountpoint = getelementptr inbounds %struct.mount, ptr %5, i32 0, i32 2, !dbg !4373
  %6 = load ptr, ptr %mnt_mountpoint, align 8, !dbg !4373
  %7 = load ptr, ptr %mnt.addr, align 8, !dbg !4374
  %mnt2 = getelementptr inbounds %struct.mount, ptr %7, i32 0, i32 3, !dbg !4375
  %mnt_root = getelementptr inbounds %struct.vfsmount, ptr %mnt2, i32 0, i32 0, !dbg !4376
  %8 = load ptr, ptr %mnt_root, align 8, !dbg !4376
  %cmp = icmp ne ptr %6, %8, !dbg !4377
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !4378

if.then3:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !4379
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4379

if.end4:                                          ; preds = %if.end
  %9 = load ptr, ptr %child, align 8, !dbg !4380
  store ptr %9, ptr %retval, align 8, !dbg !4381
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4381

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %child) #7, !dbg !4382
  %10 = load ptr, ptr %retval, align 8, !dbg !4382
  ret ptr %10, !dbg !4382
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @propagate_mount_unlock(ptr noundef %mnt) #0 align 16 !dbg !4383 {
entry:
  %mnt.addr = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %m = alloca ptr, align 8
  %child = alloca ptr, align 8
  store ptr %mnt, ptr %mnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mnt.addr, metadata !4385, metadata !DIExpression()), !dbg !4389
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #7, !dbg !4390
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !4386, metadata !DIExpression()), !dbg !4391
  %0 = load ptr, ptr %mnt.addr, align 8, !dbg !4392
  %mnt_parent = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 1, !dbg !4393
  %1 = load ptr, ptr %mnt_parent, align 8, !dbg !4393
  store ptr %1, ptr %parent, align 8, !dbg !4391
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #7, !dbg !4394
  call void @llvm.dbg.declare(metadata ptr %m, metadata !4387, metadata !DIExpression()), !dbg !4395
  call void @llvm.lifetime.start.p0(i64 8, ptr %child) #7, !dbg !4394
  call void @llvm.dbg.declare(metadata ptr %child, metadata !4388, metadata !DIExpression()), !dbg !4396
  br label %do.body, !dbg !4397

do.body:                                          ; preds = %entry
  %2 = load ptr, ptr %parent, align 8, !dbg !4398
  %3 = load ptr, ptr %mnt.addr, align 8, !dbg !4398
  %cmp = icmp eq ptr %2, %3, !dbg !4398
  %lnot = xor i1 %cmp, true, !dbg !4398
  %lnot1 = xor i1 %lnot, true, !dbg !4398
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4398
  %conv = sext i32 %lnot.ext to i64, !dbg !4398
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4398
  %tobool = icmp ne i64 %expval, 0, !dbg !4398
  br i1 %tobool, label %if.then, label %if.end, !dbg !4401

if.then:                                          ; preds = %do.body
  br label %do.body2, !dbg !4398

do.body2:                                         ; preds = %if.then
  br label %do.body3, !dbg !4402

do.body3:                                         ; preds = %do.body2
  br label %do.cond, !dbg !4404

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !4404

do.end:                                           ; preds = %do.cond
  br label %do.body4, !dbg !4402

do.body4:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 455, i32 0, i64 12) #7, !dbg !4406, !srcloc !4408
  br label %do.cond5, !dbg !4406

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !4406

do.end6:                                          ; preds = %do.cond5
  unreachable, !dbg !4402

do.cond7:                                         ; No predecessors!
  br label %do.end8, !dbg !4402

do.end8:                                          ; preds = %do.cond7
  br label %if.end, !dbg !4402

if.end:                                           ; preds = %do.end8, %do.body
  br label %do.cond9, !dbg !4401

do.cond9:                                         ; preds = %if.end
  br label %do.end10, !dbg !4401

do.end10:                                         ; preds = %do.cond9
  %4 = load ptr, ptr %parent, align 8, !dbg !4409
  %5 = load ptr, ptr %parent, align 8, !dbg !4411
  %call = call ptr @propagation_next(ptr noundef %4, ptr noundef %5) #8, !dbg !4412
  store ptr %call, ptr %m, align 8, !dbg !4413
  br label %for.cond, !dbg !4414

for.cond:                                         ; preds = %for.inc, %do.end10
  %6 = load ptr, ptr %m, align 8, !dbg !4415
  %tobool11 = icmp ne ptr %6, null, !dbg !4417
  br i1 %tobool11, label %for.body, label %for.end, !dbg !4417

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %m, align 8, !dbg !4418
  %mnt12 = getelementptr inbounds %struct.mount, ptr %7, i32 0, i32 3, !dbg !4420
  %8 = load ptr, ptr %mnt.addr, align 8, !dbg !4421
  %mnt_mountpoint = getelementptr inbounds %struct.mount, ptr %8, i32 0, i32 2, !dbg !4422
  %9 = load ptr, ptr %mnt_mountpoint, align 8, !dbg !4422
  %call13 = call ptr @__lookup_mnt(ptr noundef %mnt12, ptr noundef %9) #8, !dbg !4423
  store ptr %call13, ptr %child, align 8, !dbg !4424
  %10 = load ptr, ptr %child, align 8, !dbg !4425
  %tobool14 = icmp ne ptr %10, null, !dbg !4425
  br i1 %tobool14, label %if.then15, label %if.end17, !dbg !4427

if.then15:                                        ; preds = %for.body
  %11 = load ptr, ptr %child, align 8, !dbg !4428
  %mnt16 = getelementptr inbounds %struct.mount, ptr %11, i32 0, i32 3, !dbg !4429
  %mnt_flags = getelementptr inbounds %struct.vfsmount, ptr %mnt16, i32 0, i32 2, !dbg !4430
  %12 = load i32, ptr %mnt_flags, align 8, !dbg !4431
  %and = and i32 %12, -8388609, !dbg !4431
  store i32 %and, ptr %mnt_flags, align 8, !dbg !4431
  br label %if.end17, !dbg !4428

if.end17:                                         ; preds = %if.then15, %for.body
  br label %for.inc, !dbg !4432

for.inc:                                          ; preds = %if.end17
  %13 = load ptr, ptr %m, align 8, !dbg !4433
  %14 = load ptr, ptr %parent, align 8, !dbg !4434
  %call18 = call ptr @propagation_next(ptr noundef %13, ptr noundef %14) #8, !dbg !4435
  store ptr %call18, ptr %m, align 8, !dbg !4436
  br label %for.cond, !dbg !4437, !llvm.loop !4438

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %child) #7, !dbg !4440
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #7, !dbg !4440
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #7, !dbg !4440
  ret void, !dbg !4440
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @propagate_umount(ptr noundef %list) #0 align 16 !dbg !4441 {
entry:
  %list.addr = alloca ptr, align 8
  %mnt = alloca ptr, align 8
  %to_restore = alloca %struct.list_head, align 8
  %to_umount = alloca %struct.list_head, align 8
  %visited = alloca %struct.list_head, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %m = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %child = alloca ptr, align 8
  %__mptr40 = alloca ptr, align 8
  %tmp43 = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !4445, metadata !DIExpression()), !dbg !4463
  call void @llvm.lifetime.start.p0(i64 8, ptr %mnt) #7, !dbg !4464
  call void @llvm.dbg.declare(metadata ptr %mnt, metadata !4446, metadata !DIExpression()), !dbg !4465
  call void @llvm.lifetime.start.p0(i64 16, ptr %to_restore) #7, !dbg !4466
  call void @llvm.dbg.declare(metadata ptr %to_restore, metadata !4447, metadata !DIExpression()), !dbg !4466
  %next = getelementptr inbounds %struct.list_head, ptr %to_restore, i32 0, i32 0, !dbg !4466
  store ptr %to_restore, ptr %next, align 8, !dbg !4466
  %prev = getelementptr inbounds %struct.list_head, ptr %to_restore, i32 0, i32 1, !dbg !4466
  store ptr %to_restore, ptr %prev, align 8, !dbg !4466
  call void @llvm.lifetime.start.p0(i64 16, ptr %to_umount) #7, !dbg !4467
  call void @llvm.dbg.declare(metadata ptr %to_umount, metadata !4448, metadata !DIExpression()), !dbg !4467
  %next1 = getelementptr inbounds %struct.list_head, ptr %to_umount, i32 0, i32 0, !dbg !4467
  store ptr %to_umount, ptr %next1, align 8, !dbg !4467
  %prev2 = getelementptr inbounds %struct.list_head, ptr %to_umount, i32 0, i32 1, !dbg !4467
  store ptr %to_umount, ptr %prev2, align 8, !dbg !4467
  call void @llvm.lifetime.start.p0(i64 16, ptr %visited) #7, !dbg !4468
  call void @llvm.dbg.declare(metadata ptr %visited, metadata !4449, metadata !DIExpression()), !dbg !4468
  %next3 = getelementptr inbounds %struct.list_head, ptr %visited, i32 0, i32 0, !dbg !4468
  store ptr %visited, ptr %next3, align 8, !dbg !4468
  %prev4 = getelementptr inbounds %struct.list_head, ptr %visited, i32 0, i32 1, !dbg !4468
  store ptr %visited, ptr %prev4, align 8, !dbg !4468
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #7, !dbg !4469
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4450, metadata !DIExpression()), !dbg !4469
  %0 = load ptr, ptr %list.addr, align 8, !dbg !4469
  %prev5 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1, !dbg !4469
  %1 = load ptr, ptr %prev5, align 8, !dbg !4469
  store ptr %1, ptr %__mptr, align 8, !dbg !4469
  %2 = load ptr, ptr %__mptr, align 8, !dbg !4469
  %add.ptr = getelementptr i8, ptr %2, i64 -144, !dbg !4469
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4469
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #7, !dbg !4470
  %3 = load ptr, ptr %tmp, align 8, !dbg !4469
  store ptr %3, ptr %mnt, align 8, !dbg !4470
  br label %for.cond, !dbg !4470

for.cond:                                         ; preds = %for.inc39, %entry
  %4 = load ptr, ptr %mnt, align 8, !dbg !4471
  %mnt_list = getelementptr inbounds %struct.mount, ptr %4, i32 0, i32 10, !dbg !4471
  %5 = load ptr, ptr %list.addr, align 8, !dbg !4471
  %cmp = icmp eq ptr %mnt_list, %5, !dbg !4471
  %lnot = xor i1 %cmp, true, !dbg !4471
  br i1 %lnot, label %for.body, label %for.end45, !dbg !4470

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #7, !dbg !4472
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !4453, metadata !DIExpression()), !dbg !4473
  %6 = load ptr, ptr %mnt, align 8, !dbg !4474
  %mnt_parent = getelementptr inbounds %struct.mount, ptr %6, i32 0, i32 1, !dbg !4475
  %7 = load ptr, ptr %mnt_parent, align 8, !dbg !4475
  store ptr %7, ptr %parent, align 8, !dbg !4473
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #7, !dbg !4476
  call void @llvm.dbg.declare(metadata ptr %m, metadata !4456, metadata !DIExpression()), !dbg !4477
  %8 = load ptr, ptr %mnt, align 8, !dbg !4478
  %mnt_umounting = getelementptr inbounds %struct.mount, ptr %8, i32 0, i32 19, !dbg !4480
  %call = call i32 @list_empty(ptr noundef %mnt_umounting) #8, !dbg !4481
  %tobool = icmp ne i32 %call, 0, !dbg !4481
  br i1 %tobool, label %if.end, label %if.then, !dbg !4482

if.then:                                          ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup35, !dbg !4483

if.end:                                           ; preds = %for.body
  %9 = load ptr, ptr %mnt, align 8, !dbg !4484
  %mnt_umounting6 = getelementptr inbounds %struct.mount, ptr %9, i32 0, i32 19, !dbg !4485
  call void @list_add_tail(ptr noundef %mnt_umounting6, ptr noundef %visited) #8, !dbg !4486
  %10 = load ptr, ptr %parent, align 8, !dbg !4487
  %11 = load ptr, ptr %parent, align 8, !dbg !4488
  %call7 = call ptr @propagation_next(ptr noundef %10, ptr noundef %11) #8, !dbg !4489
  store ptr %call7, ptr %m, align 8, !dbg !4490
  br label %for.cond8, !dbg !4491

for.cond8:                                        ; preds = %for.inc, %if.end
  %12 = load ptr, ptr %m, align 8, !dbg !4492
  %tobool9 = icmp ne ptr %12, null, !dbg !4493
  br i1 %tobool9, label %for.body10, label %for.end, !dbg !4493

for.body10:                                       ; preds = %for.cond8
  call void @llvm.lifetime.start.p0(i64 8, ptr %child) #7, !dbg !4494
  call void @llvm.dbg.declare(metadata ptr %child, metadata !4457, metadata !DIExpression()), !dbg !4495
  %13 = load ptr, ptr %m, align 8, !dbg !4496
  %mnt11 = getelementptr inbounds %struct.mount, ptr %13, i32 0, i32 3, !dbg !4497
  %14 = load ptr, ptr %mnt, align 8, !dbg !4498
  %mnt_mountpoint = getelementptr inbounds %struct.mount, ptr %14, i32 0, i32 2, !dbg !4499
  %15 = load ptr, ptr %mnt_mountpoint, align 8, !dbg !4499
  %call12 = call ptr @__lookup_mnt(ptr noundef %mnt11, ptr noundef %15) #8, !dbg !4500
  store ptr %call12, ptr %child, align 8, !dbg !4495
  %16 = load ptr, ptr %child, align 8, !dbg !4501
  %tobool13 = icmp ne ptr %16, null, !dbg !4501
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !4503

if.then14:                                        ; preds = %for.body10
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4504

if.end15:                                         ; preds = %for.body10
  %17 = load ptr, ptr %child, align 8, !dbg !4505
  %mnt_umounting16 = getelementptr inbounds %struct.mount, ptr %17, i32 0, i32 19, !dbg !4507
  %call17 = call i32 @list_empty(ptr noundef %mnt_umounting16) #8, !dbg !4508
  %tobool18 = icmp ne i32 %call17, 0, !dbg !4508
  br i1 %tobool18, label %if.else, label %if.then19, !dbg !4509

if.then19:                                        ; preds = %if.end15
  %18 = load ptr, ptr %m, align 8, !dbg !4510
  %19 = load ptr, ptr %parent, align 8, !dbg !4512
  %call20 = call ptr @skip_propagation_subtree(ptr noundef %18, ptr noundef %19) #8, !dbg !4513
  store ptr %call20, ptr %m, align 8, !dbg !4514
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4515

if.else:                                          ; preds = %if.end15
  %20 = load ptr, ptr %child, align 8, !dbg !4516
  %mnt21 = getelementptr inbounds %struct.mount, ptr %20, i32 0, i32 3, !dbg !4518
  %mnt_flags = getelementptr inbounds %struct.vfsmount, ptr %mnt21, i32 0, i32 2, !dbg !4519
  %21 = load i32, ptr %mnt_flags, align 8, !dbg !4519
  %and = and i32 %21, 134217728, !dbg !4520
  %tobool22 = icmp ne i32 %and, 0, !dbg !4520
  br i1 %tobool22, label %if.then23, label %if.end25, !dbg !4521

if.then23:                                        ; preds = %if.else
  %22 = load ptr, ptr %child, align 8, !dbg !4522
  %mnt_umounting24 = getelementptr inbounds %struct.mount, ptr %22, i32 0, i32 19, !dbg !4524
  call void @list_add_tail(ptr noundef %mnt_umounting24, ptr noundef %visited) #8, !dbg !4525
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4526

if.end25:                                         ; preds = %if.else
  br label %if.end26

if.end26:                                         ; preds = %if.end25
  br label %while.cond, !dbg !4527

while.cond:                                       ; preds = %if.end33, %if.end26
  %23 = load ptr, ptr %child, align 8, !dbg !4528
  %call27 = call zeroext i1 @__propagate_umount(ptr noundef %23, ptr noundef %to_umount, ptr noundef %to_restore) #8, !dbg !4529
  br i1 %call27, label %while.body, label %while.end, !dbg !4527

while.body:                                       ; preds = %while.cond
  %24 = load ptr, ptr %child, align 8, !dbg !4530
  %mnt_parent28 = getelementptr inbounds %struct.mount, ptr %24, i32 0, i32 1, !dbg !4532
  %25 = load ptr, ptr %mnt_parent28, align 8, !dbg !4532
  store ptr %25, ptr %child, align 8, !dbg !4533
  %26 = load ptr, ptr %child, align 8, !dbg !4534
  %mnt_umounting29 = getelementptr inbounds %struct.mount, ptr %26, i32 0, i32 19, !dbg !4536
  %call30 = call i32 @list_empty(ptr noundef %mnt_umounting29) #8, !dbg !4537
  %tobool31 = icmp ne i32 %call30, 0, !dbg !4537
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !4538

if.then32:                                        ; preds = %while.body
  br label %while.end, !dbg !4539

if.end33:                                         ; preds = %while.body
  br label %while.cond, !dbg !4527, !llvm.loop !4540

while.end:                                        ; preds = %if.then32, %while.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4542
  br label %cleanup, !dbg !4542

cleanup:                                          ; preds = %while.end, %if.then23, %if.then19, %if.then14
  call void @llvm.lifetime.end.p0(i64 8, ptr %child) #7, !dbg !4542
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 7, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !4543

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %27 = load ptr, ptr %m, align 8, !dbg !4544
  %28 = load ptr, ptr %parent, align 8, !dbg !4545
  %call34 = call ptr @propagation_next(ptr noundef %27, ptr noundef %28) #8, !dbg !4546
  store ptr %call34, ptr %m, align 8, !dbg !4547
  br label %for.cond8, !dbg !4548, !llvm.loop !4549

for.end:                                          ; preds = %for.cond8
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4551
  br label %cleanup35, !dbg !4551

cleanup35:                                        ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #7, !dbg !4551
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #7, !dbg !4551
  %cleanup.dest37 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest37, label %unreachable [
    i32 0, label %cleanup.cont38
    i32 4, label %for.inc39
  ]

cleanup.cont38:                                   ; preds = %cleanup35
  br label %for.inc39, !dbg !4552

for.inc39:                                        ; preds = %cleanup.cont38, %cleanup35
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr40) #7, !dbg !4553
  call void @llvm.dbg.declare(metadata ptr %__mptr40, metadata !4461, metadata !DIExpression()), !dbg !4553
  %29 = load ptr, ptr %mnt, align 8, !dbg !4553
  %mnt_list41 = getelementptr inbounds %struct.mount, ptr %29, i32 0, i32 10, !dbg !4553
  %prev42 = getelementptr inbounds %struct.list_head, ptr %mnt_list41, i32 0, i32 1, !dbg !4553
  %30 = load ptr, ptr %prev42, align 8, !dbg !4553
  store ptr %30, ptr %__mptr40, align 8, !dbg !4553
  %31 = load ptr, ptr %__mptr40, align 8, !dbg !4553
  %add.ptr44 = getelementptr i8, ptr %31, i64 -144, !dbg !4553
  store ptr %add.ptr44, ptr %tmp43, align 8, !dbg !4553
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr40) #7, !dbg !4471
  %32 = load ptr, ptr %tmp43, align 8, !dbg !4553
  store ptr %32, ptr %mnt, align 8, !dbg !4471
  br label %for.cond, !dbg !4471, !llvm.loop !4554

for.end45:                                        ; preds = %for.cond
  call void @umount_list(ptr noundef %to_umount, ptr noundef %to_restore) #8, !dbg !4556
  call void @restore_mounts(ptr noundef %to_restore) #8, !dbg !4557
  call void @cleanup_umount_visitations(ptr noundef %visited) #8, !dbg !4558
  %33 = load ptr, ptr %list.addr, align 8, !dbg !4559
  call void @list_splice_tail(ptr noundef %to_umount, ptr noundef %33) #8, !dbg !4560
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr %visited) #7, !dbg !4561
  call void @llvm.lifetime.end.p0(i64 16, ptr %to_umount) #7, !dbg !4561
  call void @llvm.lifetime.end.p0(i64 16, ptr %to_restore) #7, !dbg !4561
  call void @llvm.lifetime.end.p0(i64 8, ptr %mnt) #7, !dbg !4561
  ret i32 0, !dbg !4562

unreachable:                                      ; preds = %cleanup35, %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #3 align 16 !dbg !4563 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !4567, metadata !DIExpression()), !dbg !4569
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !4568, metadata !DIExpression()), !dbg !4570
  %0 = load ptr, ptr %new.addr, align 8, !dbg !4571
  %1 = load ptr, ptr %head.addr, align 8, !dbg !4572
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !4573
  %2 = load ptr, ptr %prev, align 8, !dbg !4573
  %3 = load ptr, ptr %head.addr, align 8, !dbg !4574
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #8, !dbg !4575
  ret void, !dbg !4576
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @skip_propagation_subtree(ptr noundef %m, ptr noundef %origin) #0 align 16 !dbg !4577 {
entry:
  %m.addr = alloca ptr, align 8
  %origin.addr = alloca ptr, align 8
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !4579, metadata !DIExpression()), !dbg !4581
  store ptr %origin, ptr %origin.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %origin.addr, metadata !4580, metadata !DIExpression()), !dbg !4582
  %0 = load ptr, ptr %m.addr, align 8, !dbg !4583
  %mnt_ns = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 16, !dbg !4583
  %1 = load ptr, ptr %mnt_ns, align 8, !dbg !4583
  %tobool = icmp ne ptr %1, null, !dbg !4583
  br i1 %tobool, label %lor.lhs.false, label %if.end, !dbg !4583

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %m.addr, align 8, !dbg !4583
  %mnt_ns1 = getelementptr inbounds %struct.mount, ptr %2, i32 0, i32 16, !dbg !4583
  %3 = load ptr, ptr %mnt_ns1, align 8, !dbg !4583
  %call = call zeroext i1 @is_anon_ns(ptr noundef %3) #8, !dbg !4583
  br i1 %call, label %if.end, label %land.lhs.true, !dbg !4585

land.lhs.true:                                    ; preds = %lor.lhs.false
  %4 = load ptr, ptr %m.addr, align 8, !dbg !4586
  %mnt_slave_list = getelementptr inbounds %struct.mount, ptr %4, i32 0, i32 13, !dbg !4587
  %call2 = call i32 @list_empty(ptr noundef %mnt_slave_list) #8, !dbg !4588
  %tobool3 = icmp ne i32 %call2, 0, !dbg !4588
  br i1 %tobool3, label %if.end, label %if.then, !dbg !4589

if.then:                                          ; preds = %land.lhs.true
  %5 = load ptr, ptr %m.addr, align 8, !dbg !4590
  %call4 = call ptr @last_slave(ptr noundef %5) #8, !dbg !4591
  store ptr %call4, ptr %m.addr, align 8, !dbg !4592
  br label %if.end, !dbg !4593

if.end:                                           ; preds = %if.then, %land.lhs.true, %lor.lhs.false, %entry
  %6 = load ptr, ptr %m.addr, align 8, !dbg !4594
  ret ptr %6, !dbg !4595
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__propagate_umount(ptr noundef %mnt, ptr noundef %to_umount, ptr noundef %to_restore) #0 align 16 !dbg !4596 {
entry:
  %mnt.addr = alloca ptr, align 8
  %to_umount.addr = alloca ptr, align 8
  %to_restore.addr = alloca ptr, align 8
  %progress = alloca i8, align 1
  %child = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr14 = alloca ptr, align 8
  %tmp17 = alloca ptr, align 8
  store ptr %mnt, ptr %mnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mnt.addr, metadata !4600, metadata !DIExpression()), !dbg !4615
  store ptr %to_umount, ptr %to_umount.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to_umount.addr, metadata !4601, metadata !DIExpression()), !dbg !4616
  store ptr %to_restore, ptr %to_restore.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to_restore.addr, metadata !4602, metadata !DIExpression()), !dbg !4617
  call void @llvm.lifetime.start.p0(i64 1, ptr %progress) #7, !dbg !4618
  call void @llvm.dbg.declare(metadata ptr %progress, metadata !4603, metadata !DIExpression()), !dbg !4619
  store i8 0, ptr %progress, align 1, !dbg !4619
  call void @llvm.lifetime.start.p0(i64 8, ptr %child) #7, !dbg !4620
  call void @llvm.dbg.declare(metadata ptr %child, metadata !4604, metadata !DIExpression()), !dbg !4621
  %0 = load ptr, ptr %mnt.addr, align 8, !dbg !4622
  %mnt1 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 3, !dbg !4624
  %mnt_flags = getelementptr inbounds %struct.vfsmount, ptr %mnt1, i32 0, i32 2, !dbg !4625
  %1 = load i32, ptr %mnt_flags, align 8, !dbg !4625
  %and = and i32 %1, 201326592, !dbg !4626
  %tobool = icmp ne i32 %and, 0, !dbg !4626
  br i1 %tobool, label %if.then, label %if.end, !dbg !4627

if.then:                                          ; preds = %entry
  br label %out, !dbg !4628

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #7, !dbg !4629
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4605, metadata !DIExpression()), !dbg !4629
  %2 = load ptr, ptr %mnt.addr, align 8, !dbg !4629
  %mnt_mounts = getelementptr inbounds %struct.mount, ptr %2, i32 0, i32 6, !dbg !4629
  %next = getelementptr inbounds %struct.list_head, ptr %mnt_mounts, i32 0, i32 0, !dbg !4629
  %3 = load ptr, ptr %next, align 8, !dbg !4629
  store ptr %3, ptr %__mptr, align 8, !dbg !4629
  %4 = load ptr, ptr %__mptr, align 8, !dbg !4629
  %add.ptr = getelementptr i8, ptr %4, i64 -104, !dbg !4629
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4629
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #7, !dbg !4630
  %5 = load ptr, ptr %tmp, align 8, !dbg !4629
  store ptr %5, ptr %child, align 8, !dbg !4630
  br label %for.cond, !dbg !4630

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load ptr, ptr %child, align 8, !dbg !4631
  %mnt_child = getelementptr inbounds %struct.mount, ptr %6, i32 0, i32 7, !dbg !4631
  %7 = load ptr, ptr %mnt.addr, align 8, !dbg !4631
  %mnt_mounts2 = getelementptr inbounds %struct.mount, ptr %7, i32 0, i32 6, !dbg !4631
  %cmp = icmp eq ptr %mnt_child, %mnt_mounts2, !dbg !4631
  %lnot = xor i1 %cmp, true, !dbg !4631
  br i1 %lnot, label %for.body, label %for.end, !dbg !4630

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %child, align 8, !dbg !4632
  %mnt_mountpoint = getelementptr inbounds %struct.mount, ptr %8, i32 0, i32 2, !dbg !4635
  %9 = load ptr, ptr %mnt_mountpoint, align 8, !dbg !4635
  %10 = load ptr, ptr %mnt.addr, align 8, !dbg !4636
  %mnt3 = getelementptr inbounds %struct.mount, ptr %10, i32 0, i32 3, !dbg !4637
  %mnt_root = getelementptr inbounds %struct.vfsmount, ptr %mnt3, i32 0, i32 0, !dbg !4638
  %11 = load ptr, ptr %mnt_root, align 8, !dbg !4638
  %cmp4 = icmp eq ptr %9, %11, !dbg !4639
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !4640

if.then5:                                         ; preds = %for.body
  br label %for.inc, !dbg !4641

if.end6:                                          ; preds = %for.body
  %12 = load ptr, ptr %child, align 8, !dbg !4642
  %mnt_umounting = getelementptr inbounds %struct.mount, ptr %12, i32 0, i32 19, !dbg !4644
  %call = call i32 @list_empty(ptr noundef %mnt_umounting) #8, !dbg !4645
  %tobool7 = icmp ne i32 %call, 0, !dbg !4645
  br i1 %tobool7, label %if.end13, label %land.lhs.true, !dbg !4646

land.lhs.true:                                    ; preds = %if.end6
  %13 = load ptr, ptr %child, align 8, !dbg !4647
  %mnt8 = getelementptr inbounds %struct.mount, ptr %13, i32 0, i32 3, !dbg !4647
  %mnt_flags9 = getelementptr inbounds %struct.vfsmount, ptr %mnt8, i32 0, i32 2, !dbg !4647
  %14 = load i32, ptr %mnt_flags9, align 8, !dbg !4647
  %and10 = and i32 %14, 67108864, !dbg !4647
  %tobool11 = icmp ne i32 %and10, 0, !dbg !4647
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !4648

if.then12:                                        ; preds = %land.lhs.true
  br label %for.inc, !dbg !4649

if.end13:                                         ; preds = %land.lhs.true, %if.end6
  br label %children, !dbg !4650

for.inc:                                          ; preds = %if.then12, %if.then5
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr14) #7, !dbg !4651
  call void @llvm.dbg.declare(metadata ptr %__mptr14, metadata !4608, metadata !DIExpression()), !dbg !4651
  %15 = load ptr, ptr %child, align 8, !dbg !4651
  %mnt_child15 = getelementptr inbounds %struct.mount, ptr %15, i32 0, i32 7, !dbg !4651
  %next16 = getelementptr inbounds %struct.list_head, ptr %mnt_child15, i32 0, i32 0, !dbg !4651
  %16 = load ptr, ptr %next16, align 8, !dbg !4651
  store ptr %16, ptr %__mptr14, align 8, !dbg !4651
  %17 = load ptr, ptr %__mptr14, align 8, !dbg !4651
  %add.ptr18 = getelementptr i8, ptr %17, i64 -104, !dbg !4651
  store ptr %add.ptr18, ptr %tmp17, align 8, !dbg !4651
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr14) #7, !dbg !4631
  %18 = load ptr, ptr %tmp17, align 8, !dbg !4651
  store ptr %18, ptr %child, align 8, !dbg !4631
  br label %for.cond, !dbg !4631, !llvm.loop !4652

for.end:                                          ; preds = %for.cond
  %19 = load ptr, ptr %mnt.addr, align 8, !dbg !4654
  %mnt19 = getelementptr inbounds %struct.mount, ptr %19, i32 0, i32 3, !dbg !4654
  %mnt_flags20 = getelementptr inbounds %struct.vfsmount, ptr %mnt19, i32 0, i32 2, !dbg !4654
  %20 = load i32, ptr %mnt_flags20, align 8, !dbg !4654
  %or = or i32 %20, 67108864, !dbg !4654
  store i32 %or, ptr %mnt_flags20, align 8, !dbg !4654
  store i8 1, ptr %progress, align 1, !dbg !4655
  %21 = load ptr, ptr %mnt.addr, align 8, !dbg !4656
  %mnt21 = getelementptr inbounds %struct.mount, ptr %21, i32 0, i32 3, !dbg !4656
  %mnt_flags22 = getelementptr inbounds %struct.vfsmount, ptr %mnt21, i32 0, i32 2, !dbg !4656
  %22 = load i32, ptr %mnt_flags22, align 8, !dbg !4656
  %and23 = and i32 %22, 8388608, !dbg !4656
  %tobool24 = icmp ne i32 %and23, 0, !dbg !4656
  br i1 %tobool24, label %if.else, label %if.then25, !dbg !4657

if.then25:                                        ; preds = %for.end
  %23 = load ptr, ptr %mnt.addr, align 8, !dbg !4658
  %24 = load ptr, ptr %to_umount.addr, align 8, !dbg !4660
  call void @umount_one(ptr noundef %23, ptr noundef %24) #8, !dbg !4661
  br label %if.end27, !dbg !4662

if.else:                                          ; preds = %for.end
  br label %children, !dbg !4663

children:                                         ; preds = %if.else, %if.end13
  call void @llvm.dbg.label(metadata !4611), !dbg !4664
  %25 = load ptr, ptr %mnt.addr, align 8, !dbg !4665
  %mnt_umounting26 = getelementptr inbounds %struct.mount, ptr %25, i32 0, i32 19, !dbg !4666
  %26 = load ptr, ptr %to_restore.addr, align 8, !dbg !4667
  call void @list_move_tail(ptr noundef %mnt_umounting26, ptr noundef %26) #8, !dbg !4668
  br label %if.end27

if.end27:                                         ; preds = %children, %if.then25
  br label %out, !dbg !4656

out:                                              ; preds = %if.end27, %if.then
  call void @llvm.dbg.label(metadata !4614), !dbg !4669
  %27 = load i8, ptr %progress, align 1, !dbg !4670, !range !3900, !noundef !696
  %tobool28 = trunc i8 %27 to i1, !dbg !4670
  call void @llvm.lifetime.end.p0(i64 8, ptr %child) #7, !dbg !4671
  call void @llvm.lifetime.end.p0(i64 1, ptr %progress) #7, !dbg !4671
  ret i1 %tobool28, !dbg !4672
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @umount_list(ptr noundef %to_umount, ptr noundef %to_restore) #0 align 16 !dbg !4673 {
entry:
  %to_umount.addr = alloca ptr, align 8
  %to_restore.addr = alloca ptr, align 8
  %mnt = alloca ptr, align 8
  %child = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %__mptr2 = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  %__mptr6 = alloca ptr, align 8
  %tmp8 = alloca ptr, align 8
  %__mptr18 = alloca ptr, align 8
  %tmp21 = alloca ptr, align 8
  %__mptr24 = alloca ptr, align 8
  %tmp27 = alloca ptr, align 8
  store ptr %to_umount, ptr %to_umount.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to_umount.addr, metadata !4675, metadata !DIExpression()), !dbg !4695
  store ptr %to_restore, ptr %to_restore.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to_restore.addr, metadata !4676, metadata !DIExpression()), !dbg !4696
  call void @llvm.lifetime.start.p0(i64 8, ptr %mnt) #7, !dbg !4697
  call void @llvm.dbg.declare(metadata ptr %mnt, metadata !4677, metadata !DIExpression()), !dbg !4698
  call void @llvm.lifetime.start.p0(i64 8, ptr %child) #7, !dbg !4697
  call void @llvm.dbg.declare(metadata ptr %child, metadata !4678, metadata !DIExpression()), !dbg !4699
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #7, !dbg !4697
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !4679, metadata !DIExpression()), !dbg !4700
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #7, !dbg !4701
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4680, metadata !DIExpression()), !dbg !4701
  %0 = load ptr, ptr %to_umount.addr, align 8, !dbg !4701
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !4701
  %1 = load ptr, ptr %next, align 8, !dbg !4701
  store ptr %1, ptr %__mptr, align 8, !dbg !4701
  %2 = load ptr, ptr %__mptr, align 8, !dbg !4701
  %add.ptr = getelementptr i8, ptr %2, i64 -144, !dbg !4701
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !4701
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #7, !dbg !4702
  %3 = load ptr, ptr %tmp1, align 8, !dbg !4701
  store ptr %3, ptr %mnt, align 8, !dbg !4702
  br label %for.cond, !dbg !4702

for.cond:                                         ; preds = %for.inc23, %entry
  %4 = load ptr, ptr %mnt, align 8, !dbg !4703
  %mnt_list = getelementptr inbounds %struct.mount, ptr %4, i32 0, i32 10, !dbg !4703
  %5 = load ptr, ptr %to_umount.addr, align 8, !dbg !4703
  %cmp = icmp eq ptr %mnt_list, %5, !dbg !4703
  %lnot = xor i1 %cmp, true, !dbg !4703
  br i1 %lnot, label %for.body, label %for.end29, !dbg !4702

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr2) #7, !dbg !4704
  call void @llvm.dbg.declare(metadata ptr %__mptr2, metadata !4683, metadata !DIExpression()), !dbg !4704
  %6 = load ptr, ptr %mnt, align 8, !dbg !4704
  %mnt_mounts = getelementptr inbounds %struct.mount, ptr %6, i32 0, i32 6, !dbg !4704
  %next3 = getelementptr inbounds %struct.list_head, ptr %mnt_mounts, i32 0, i32 0, !dbg !4704
  %7 = load ptr, ptr %next3, align 8, !dbg !4704
  store ptr %7, ptr %__mptr2, align 8, !dbg !4704
  %8 = load ptr, ptr %__mptr2, align 8, !dbg !4704
  %add.ptr5 = getelementptr i8, ptr %8, i64 -104, !dbg !4704
  store ptr %add.ptr5, ptr %tmp4, align 8, !dbg !4704
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr2) #7, !dbg !4705
  %9 = load ptr, ptr %tmp4, align 8, !dbg !4704
  store ptr %9, ptr %child, align 8, !dbg !4705
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr6) #7, !dbg !4706
  call void @llvm.dbg.declare(metadata ptr %__mptr6, metadata !4688, metadata !DIExpression()), !dbg !4706
  %10 = load ptr, ptr %child, align 8, !dbg !4706
  %mnt_child = getelementptr inbounds %struct.mount, ptr %10, i32 0, i32 7, !dbg !4706
  %next7 = getelementptr inbounds %struct.list_head, ptr %mnt_child, i32 0, i32 0, !dbg !4706
  %11 = load ptr, ptr %next7, align 8, !dbg !4706
  store ptr %11, ptr %__mptr6, align 8, !dbg !4706
  %12 = load ptr, ptr %__mptr6, align 8, !dbg !4706
  %add.ptr9 = getelementptr i8, ptr %12, i64 -104, !dbg !4706
  store ptr %add.ptr9, ptr %tmp8, align 8, !dbg !4706
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr6) #7, !dbg !4705
  %13 = load ptr, ptr %tmp8, align 8, !dbg !4706
  store ptr %13, ptr %tmp, align 8, !dbg !4705
  br label %for.cond10, !dbg !4705

for.cond10:                                       ; preds = %for.inc, %for.body
  %14 = load ptr, ptr %child, align 8, !dbg !4707
  %mnt_child11 = getelementptr inbounds %struct.mount, ptr %14, i32 0, i32 7, !dbg !4707
  %15 = load ptr, ptr %mnt, align 8, !dbg !4707
  %mnt_mounts12 = getelementptr inbounds %struct.mount, ptr %15, i32 0, i32 6, !dbg !4707
  %cmp13 = icmp eq ptr %mnt_child11, %mnt_mounts12, !dbg !4707
  %lnot14 = xor i1 %cmp13, true, !dbg !4707
  br i1 %lnot14, label %for.body15, label %for.end, !dbg !4705

for.body15:                                       ; preds = %for.cond10
  %16 = load ptr, ptr %child, align 8, !dbg !4708
  %mnt_mountpoint = getelementptr inbounds %struct.mount, ptr %16, i32 0, i32 2, !dbg !4711
  %17 = load ptr, ptr %mnt_mountpoint, align 8, !dbg !4711
  %18 = load ptr, ptr %mnt, align 8, !dbg !4712
  %mnt16 = getelementptr inbounds %struct.mount, ptr %18, i32 0, i32 3, !dbg !4713
  %mnt_root = getelementptr inbounds %struct.vfsmount, ptr %mnt16, i32 0, i32 0, !dbg !4714
  %19 = load ptr, ptr %mnt_root, align 8, !dbg !4714
  %cmp17 = icmp eq ptr %17, %19, !dbg !4715
  br i1 %cmp17, label %if.then, label %if.else, !dbg !4716

if.then:                                          ; preds = %for.body15
  %20 = load ptr, ptr %child, align 8, !dbg !4717
  %mnt_umounting = getelementptr inbounds %struct.mount, ptr %20, i32 0, i32 19, !dbg !4718
  %21 = load ptr, ptr %to_restore.addr, align 8, !dbg !4719
  call void @list_move_tail(ptr noundef %mnt_umounting, ptr noundef %21) #8, !dbg !4720
  br label %if.end, !dbg !4720

if.else:                                          ; preds = %for.body15
  %22 = load ptr, ptr %child, align 8, !dbg !4721
  %23 = load ptr, ptr %to_umount.addr, align 8, !dbg !4722
  call void @umount_one(ptr noundef %22, ptr noundef %23) #8, !dbg !4723
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc, !dbg !4724

for.inc:                                          ; preds = %if.end
  %24 = load ptr, ptr %tmp, align 8, !dbg !4707
  store ptr %24, ptr %child, align 8, !dbg !4707
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr18) #7, !dbg !4725
  call void @llvm.dbg.declare(metadata ptr %__mptr18, metadata !4690, metadata !DIExpression()), !dbg !4725
  %25 = load ptr, ptr %tmp, align 8, !dbg !4725
  %mnt_child19 = getelementptr inbounds %struct.mount, ptr %25, i32 0, i32 7, !dbg !4725
  %next20 = getelementptr inbounds %struct.list_head, ptr %mnt_child19, i32 0, i32 0, !dbg !4725
  %26 = load ptr, ptr %next20, align 8, !dbg !4725
  store ptr %26, ptr %__mptr18, align 8, !dbg !4725
  %27 = load ptr, ptr %__mptr18, align 8, !dbg !4725
  %add.ptr22 = getelementptr i8, ptr %27, i64 -104, !dbg !4725
  store ptr %add.ptr22, ptr %tmp21, align 8, !dbg !4725
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr18) #7, !dbg !4707
  %28 = load ptr, ptr %tmp21, align 8, !dbg !4725
  store ptr %28, ptr %tmp, align 8, !dbg !4707
  br label %for.cond10, !dbg !4707, !llvm.loop !4726

for.end:                                          ; preds = %for.cond10
  br label %for.inc23, !dbg !4728

for.inc23:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr24) #7, !dbg !4729
  call void @llvm.dbg.declare(metadata ptr %__mptr24, metadata !4693, metadata !DIExpression()), !dbg !4729
  %29 = load ptr, ptr %mnt, align 8, !dbg !4729
  %mnt_list25 = getelementptr inbounds %struct.mount, ptr %29, i32 0, i32 10, !dbg !4729
  %next26 = getelementptr inbounds %struct.list_head, ptr %mnt_list25, i32 0, i32 0, !dbg !4729
  %30 = load ptr, ptr %next26, align 8, !dbg !4729
  store ptr %30, ptr %__mptr24, align 8, !dbg !4729
  %31 = load ptr, ptr %__mptr24, align 8, !dbg !4729
  %add.ptr28 = getelementptr i8, ptr %31, i64 -144, !dbg !4729
  store ptr %add.ptr28, ptr %tmp27, align 8, !dbg !4729
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr24) #7, !dbg !4703
  %32 = load ptr, ptr %tmp27, align 8, !dbg !4729
  store ptr %32, ptr %mnt, align 8, !dbg !4703
  br label %for.cond, !dbg !4703, !llvm.loop !4730

for.end29:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #7, !dbg !4732
  call void @llvm.lifetime.end.p0(i64 8, ptr %child) #7, !dbg !4732
  call void @llvm.lifetime.end.p0(i64 8, ptr %mnt) #7, !dbg !4732
  ret void, !dbg !4732
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @restore_mounts(ptr noundef %to_restore) #0 align 16 !dbg !4733 {
entry:
  %to_restore.addr = alloca ptr, align 8
  %mnt = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %mp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %to_restore, ptr %to_restore.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to_restore.addr, metadata !4735, metadata !DIExpression()), !dbg !4742
  br label %while.cond, !dbg !4743

while.cond:                                       ; preds = %if.end, %entry
  %0 = load ptr, ptr %to_restore.addr, align 8, !dbg !4744
  %call = call i32 @list_empty(ptr noundef %0) #8, !dbg !4745
  %tobool = icmp ne i32 %call, 0, !dbg !4746
  %lnot = xor i1 %tobool, true, !dbg !4746
  br i1 %lnot, label %while.body, label %while.end11, !dbg !4743

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %mnt) #7, !dbg !4747
  call void @llvm.dbg.declare(metadata ptr %mnt, metadata !4736, metadata !DIExpression()), !dbg !4748
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #7, !dbg !4747
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !4738, metadata !DIExpression()), !dbg !4749
  call void @llvm.lifetime.start.p0(i64 8, ptr %mp) #7, !dbg !4750
  call void @llvm.dbg.declare(metadata ptr %mp, metadata !4739, metadata !DIExpression()), !dbg !4751
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #7, !dbg !4752
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4740, metadata !DIExpression()), !dbg !4752
  %1 = load ptr, ptr %to_restore.addr, align 8, !dbg !4752
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !4752
  %2 = load ptr, ptr %next, align 8, !dbg !4752
  store ptr %2, ptr %__mptr, align 8, !dbg !4752
  %3 = load ptr, ptr %__mptr, align 8, !dbg !4752
  %add.ptr = getelementptr i8, ptr %3, i64 -264, !dbg !4752
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4752
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #7, !dbg !4753
  %4 = load ptr, ptr %tmp, align 8, !dbg !4752
  store ptr %4, ptr %mnt, align 8, !dbg !4754
  %5 = load ptr, ptr %mnt, align 8, !dbg !4755
  %mnt1 = getelementptr inbounds %struct.mount, ptr %5, i32 0, i32 3, !dbg !4755
  %mnt_flags = getelementptr inbounds %struct.vfsmount, ptr %mnt1, i32 0, i32 2, !dbg !4755
  %6 = load i32, ptr %mnt_flags, align 8, !dbg !4755
  %and = and i32 %6, -67108865, !dbg !4755
  store i32 %and, ptr %mnt_flags, align 8, !dbg !4755
  %7 = load ptr, ptr %mnt, align 8, !dbg !4756
  %mnt_umounting = getelementptr inbounds %struct.mount, ptr %7, i32 0, i32 19, !dbg !4757
  call void @list_del_init(ptr noundef %mnt_umounting) #8, !dbg !4758
  %8 = load ptr, ptr %mnt, align 8, !dbg !4759
  %mnt_mp = getelementptr inbounds %struct.mount, ptr %8, i32 0, i32 17, !dbg !4760
  %9 = load ptr, ptr %mnt_mp, align 8, !dbg !4760
  store ptr %9, ptr %mp, align 8, !dbg !4761
  %10 = load ptr, ptr %mnt, align 8, !dbg !4762
  %mnt_parent = getelementptr inbounds %struct.mount, ptr %10, i32 0, i32 1, !dbg !4763
  %11 = load ptr, ptr %mnt_parent, align 8, !dbg !4763
  store ptr %11, ptr %parent, align 8, !dbg !4764
  br label %while.cond2, !dbg !4765

while.cond2:                                      ; preds = %while.body7, %while.body
  %12 = load ptr, ptr %parent, align 8, !dbg !4766
  %mnt3 = getelementptr inbounds %struct.mount, ptr %12, i32 0, i32 3, !dbg !4767
  %mnt_flags4 = getelementptr inbounds %struct.vfsmount, ptr %mnt3, i32 0, i32 2, !dbg !4768
  %13 = load i32, ptr %mnt_flags4, align 8, !dbg !4768
  %and5 = and i32 %13, 134217728, !dbg !4769
  %tobool6 = icmp ne i32 %and5, 0, !dbg !4765
  br i1 %tobool6, label %while.body7, label %while.end, !dbg !4765

while.body7:                                      ; preds = %while.cond2
  %14 = load ptr, ptr %parent, align 8, !dbg !4770
  %mnt_mp8 = getelementptr inbounds %struct.mount, ptr %14, i32 0, i32 17, !dbg !4772
  %15 = load ptr, ptr %mnt_mp8, align 8, !dbg !4772
  store ptr %15, ptr %mp, align 8, !dbg !4773
  %16 = load ptr, ptr %parent, align 8, !dbg !4774
  %mnt_parent9 = getelementptr inbounds %struct.mount, ptr %16, i32 0, i32 1, !dbg !4775
  %17 = load ptr, ptr %mnt_parent9, align 8, !dbg !4775
  store ptr %17, ptr %parent, align 8, !dbg !4776
  br label %while.cond2, !dbg !4765, !llvm.loop !4777

while.end:                                        ; preds = %while.cond2
  %18 = load ptr, ptr %parent, align 8, !dbg !4779
  %19 = load ptr, ptr %mnt, align 8, !dbg !4781
  %mnt_parent10 = getelementptr inbounds %struct.mount, ptr %19, i32 0, i32 1, !dbg !4782
  %20 = load ptr, ptr %mnt_parent10, align 8, !dbg !4782
  %cmp = icmp ne ptr %18, %20, !dbg !4783
  br i1 %cmp, label %if.then, label %if.end, !dbg !4784

if.then:                                          ; preds = %while.end
  %21 = load ptr, ptr %parent, align 8, !dbg !4785
  %22 = load ptr, ptr %mp, align 8, !dbg !4786
  %23 = load ptr, ptr %mnt, align 8, !dbg !4787
  call void @mnt_change_mountpoint(ptr noundef %21, ptr noundef %22, ptr noundef %23) #8, !dbg !4788
  br label %if.end, !dbg !4788

if.end:                                           ; preds = %if.then, %while.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %mp) #7, !dbg !4789
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #7, !dbg !4789
  call void @llvm.lifetime.end.p0(i64 8, ptr %mnt) #7, !dbg !4789
  br label %while.cond, !dbg !4743, !llvm.loop !4790

while.end11:                                      ; preds = %while.cond
  ret void, !dbg !4791
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cleanup_umount_visitations(ptr noundef %visited) #0 align 16 !dbg !4792 {
entry:
  %visited.addr = alloca ptr, align 8
  %mnt = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %visited, ptr %visited.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %visited.addr, metadata !4794, metadata !DIExpression()), !dbg !4799
  br label %while.cond, !dbg !4800

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %visited.addr, align 8, !dbg !4801
  %call = call i32 @list_empty(ptr noundef %0) #8, !dbg !4802
  %tobool = icmp ne i32 %call, 0, !dbg !4803
  %lnot = xor i1 %tobool, true, !dbg !4803
  br i1 %lnot, label %while.body, label %while.end, !dbg !4800

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %mnt) #7, !dbg !4804
  call void @llvm.dbg.declare(metadata ptr %mnt, metadata !4795, metadata !DIExpression()), !dbg !4805
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #7, !dbg !4806
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4797, metadata !DIExpression()), !dbg !4806
  %1 = load ptr, ptr %visited.addr, align 8, !dbg !4806
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !4806
  %2 = load ptr, ptr %next, align 8, !dbg !4806
  store ptr %2, ptr %__mptr, align 8, !dbg !4806
  %3 = load ptr, ptr %__mptr, align 8, !dbg !4806
  %add.ptr = getelementptr i8, ptr %3, i64 -264, !dbg !4806
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4806
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #7, !dbg !4807
  %4 = load ptr, ptr %tmp, align 8, !dbg !4806
  store ptr %4, ptr %mnt, align 8, !dbg !4805
  %5 = load ptr, ptr %mnt, align 8, !dbg !4808
  %mnt_umounting = getelementptr inbounds %struct.mount, ptr %5, i32 0, i32 19, !dbg !4809
  call void @list_del_init(ptr noundef %mnt_umounting) #8, !dbg !4810
  call void @llvm.lifetime.end.p0(i64 8, ptr %mnt) #7, !dbg !4811
  br label %while.cond, !dbg !4800, !llvm.loop !4812

while.end:                                        ; preds = %while.cond
  ret void, !dbg !4813
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_splice_tail(ptr noundef %list, ptr noundef %head) #3 align 16 !dbg !4814 {
entry:
  %list.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !4816, metadata !DIExpression()), !dbg !4818
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !4817, metadata !DIExpression()), !dbg !4819
  %0 = load ptr, ptr %list.addr, align 8, !dbg !4820
  %call = call i32 @list_empty(ptr noundef %0) #8, !dbg !4822
  %tobool = icmp ne i32 %call, 0, !dbg !4822
  br i1 %tobool, label %if.end, label %if.then, !dbg !4823

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %list.addr, align 8, !dbg !4824
  %2 = load ptr, ptr %head.addr, align 8, !dbg !4825
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !4826
  %3 = load ptr, ptr %prev, align 8, !dbg !4826
  %4 = load ptr, ptr %head.addr, align 8, !dbg !4827
  call void @__list_splice(ptr noundef %1, ptr noundef %3, ptr noundef %4) #8, !dbg !4828
  br label %if.end, !dbg !4828

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4829
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4830 dso_local zeroext i1 @is_path_reachable(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4833 dso_local void @mnt_release_group_id(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_move(ptr noundef %list, ptr noundef %head) #3 align 16 !dbg !4834 {
entry:
  %list.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !4836, metadata !DIExpression()), !dbg !4838
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !4837, metadata !DIExpression()), !dbg !4839
  %0 = load ptr, ptr %list.addr, align 8, !dbg !4840
  call void @__list_del_entry(ptr noundef %0) #8, !dbg !4841
  %1 = load ptr, ptr %list.addr, align 8, !dbg !4842
  %2 = load ptr, ptr %head.addr, align 8, !dbg !4843
  call void @list_add(ptr noundef %1, ptr noundef %2) #8, !dbg !4844
  ret void, !dbg !4845
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_splice(ptr noundef %list, ptr noundef %head) #3 align 16 !dbg !4846 {
entry:
  %list.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !4850, metadata !DIExpression()), !dbg !4852
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !4851, metadata !DIExpression()), !dbg !4853
  %0 = load ptr, ptr %list.addr, align 8, !dbg !4854
  %call = call i32 @list_empty(ptr noundef %0) #8, !dbg !4856
  %tobool = icmp ne i32 %call, 0, !dbg !4856
  br i1 %tobool, label %if.end, label %if.then, !dbg !4857

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %list.addr, align 8, !dbg !4858
  %2 = load ptr, ptr %head.addr, align 8, !dbg !4859
  %3 = load ptr, ptr %head.addr, align 8, !dbg !4860
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !4861
  %4 = load ptr, ptr %next, align 8, !dbg !4861
  call void @__list_splice(ptr noundef %1, ptr noundef %2, ptr noundef %4) #8, !dbg !4862
  br label %if.end, !dbg !4862

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4863
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #3 align 16 !dbg !4864 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !4866, metadata !DIExpression()), !dbg !4867
  br label %do.body, !dbg !4868

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4869

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !4871

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !4869

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !4873
  %1 = load ptr, ptr %list.addr, align 8, !dbg !4873
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !4873
  store volatile ptr %0, ptr %next, align 8, !dbg !4873
  br label %do.end3, !dbg !4873

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !4869

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !4875

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !4876

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !4878

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !4876

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !4880
  %3 = load ptr, ptr %list.addr, align 8, !dbg !4880
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !4880
  store volatile ptr %2, ptr %prev, align 8, !dbg !4880
  br label %do.end9, !dbg !4880

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !4876

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !4882
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #3 align 16 !dbg !4883 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !4885, metadata !DIExpression()), !dbg !4886
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !4887
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #8, !dbg !4889
  br i1 %call, label %if.end, label %if.then, !dbg !4890

if.then:                                          ; preds = %entry
  br label %return, !dbg !4891

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !4892
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !4893
  %2 = load ptr, ptr %prev, align 8, !dbg !4893
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !4894
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !4895
  %4 = load ptr, ptr %next, align 8, !dbg !4895
  call void @__list_del(ptr noundef %2, ptr noundef %4) #8, !dbg !4896
  br label %return, !dbg !4897

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !4897
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add(ptr noundef %new, ptr noundef %head) #3 align 16 !dbg !4898 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !4900, metadata !DIExpression()), !dbg !4902
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !4901, metadata !DIExpression()), !dbg !4903
  %0 = load ptr, ptr %new.addr, align 8, !dbg !4904
  %1 = load ptr, ptr %head.addr, align 8, !dbg !4905
  %2 = load ptr, ptr %head.addr, align 8, !dbg !4906
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !4907
  %3 = load ptr, ptr %next, align 8, !dbg !4907
  call void @__list_add(ptr noundef %0, ptr noundef %1, ptr noundef %3) #8, !dbg !4908
  ret void, !dbg !4909
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #3 align 16 !dbg !4910 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !4914, metadata !DIExpression()), !dbg !4915
  ret i1 true, !dbg !4916
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !4917 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !4919, metadata !DIExpression()), !dbg !4921
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !4920, metadata !DIExpression()), !dbg !4922
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !4923
  %1 = load ptr, ptr %next.addr, align 8, !dbg !4924
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !4925
  store ptr %0, ptr %prev1, align 8, !dbg !4926
  br label %do.body, !dbg !4927

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !4928

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !4930

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !4928

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !4932
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !4932
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !4932
  store volatile ptr %2, ptr %next4, align 8, !dbg !4932
  br label %do.end5, !dbg !4932

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !4928

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !4934
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !4935 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !4939, metadata !DIExpression()), !dbg !4942
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !4940, metadata !DIExpression()), !dbg !4943
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !4941, metadata !DIExpression()), !dbg !4944
  %0 = load ptr, ptr %new.addr, align 8, !dbg !4945
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !4947
  %2 = load ptr, ptr %next.addr, align 8, !dbg !4948
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #8, !dbg !4949
  br i1 %call, label %if.end, label %if.then, !dbg !4950

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !4951

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !4952
  %4 = load ptr, ptr %next.addr, align 8, !dbg !4953
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !4954
  store ptr %3, ptr %prev1, align 8, !dbg !4955
  %5 = load ptr, ptr %next.addr, align 8, !dbg !4956
  %6 = load ptr, ptr %new.addr, align 8, !dbg !4957
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !4958
  store ptr %5, ptr %next2, align 8, !dbg !4959
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !4960
  %8 = load ptr, ptr %new.addr, align 8, !dbg !4961
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !4962
  store ptr %7, ptr %prev3, align 8, !dbg !4963
  br label %do.body, !dbg !4964

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !4965

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !4967

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !4965

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !4969
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !4969
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !4969
  store volatile ptr %9, ptr %next6, align 8, !dbg !4969
  br label %do.end7, !dbg !4969

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !4965

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !4971
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !4972 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !4976, metadata !DIExpression()), !dbg !4979
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !4977, metadata !DIExpression()), !dbg !4980
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !4978, metadata !DIExpression()), !dbg !4981
  ret i1 true, !dbg !4982
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_splice(ptr noundef %list, ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !4983 {
entry:
  %list.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  %first = alloca ptr, align 8
  %last = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !4987, metadata !DIExpression()), !dbg !4992
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !4988, metadata !DIExpression()), !dbg !4993
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !4989, metadata !DIExpression()), !dbg !4994
  call void @llvm.lifetime.start.p0(i64 8, ptr %first) #7, !dbg !4995
  call void @llvm.dbg.declare(metadata ptr %first, metadata !4990, metadata !DIExpression()), !dbg !4996
  %0 = load ptr, ptr %list.addr, align 8, !dbg !4997
  %next1 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !4998
  %1 = load ptr, ptr %next1, align 8, !dbg !4998
  store ptr %1, ptr %first, align 8, !dbg !4996
  call void @llvm.lifetime.start.p0(i64 8, ptr %last) #7, !dbg !4999
  call void @llvm.dbg.declare(metadata ptr %last, metadata !4991, metadata !DIExpression()), !dbg !5000
  %2 = load ptr, ptr %list.addr, align 8, !dbg !5001
  %prev2 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !5002
  %3 = load ptr, ptr %prev2, align 8, !dbg !5002
  store ptr %3, ptr %last, align 8, !dbg !5000
  %4 = load ptr, ptr %prev.addr, align 8, !dbg !5003
  %5 = load ptr, ptr %first, align 8, !dbg !5004
  %prev3 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1, !dbg !5005
  store ptr %4, ptr %prev3, align 8, !dbg !5006
  %6 = load ptr, ptr %first, align 8, !dbg !5007
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !5008
  %next4 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 0, !dbg !5009
  store ptr %6, ptr %next4, align 8, !dbg !5010
  %8 = load ptr, ptr %next.addr, align 8, !dbg !5011
  %9 = load ptr, ptr %last, align 8, !dbg !5012
  %next5 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 0, !dbg !5013
  store ptr %8, ptr %next5, align 8, !dbg !5014
  %10 = load ptr, ptr %last, align 8, !dbg !5015
  %11 = load ptr, ptr %next.addr, align 8, !dbg !5016
  %prev6 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1, !dbg !5017
  store ptr %10, ptr %prev6, align 8, !dbg !5018
  call void @llvm.lifetime.end.p0(i64 8, ptr %last) #7, !dbg !5019
  call void @llvm.lifetime.end.p0(i64 8, ptr %first) #7, !dbg !5019
  ret void, !dbg !5019
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5020 dso_local zeroext i1 @is_subdir(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5023 dso_local ptr @copy_tree(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #3 align 16 !dbg !5026 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5033, metadata !DIExpression()), !dbg !5034
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5035
  %1 = ptrtoint ptr %0 to i64, !dbg !5035
  %2 = inttoptr i64 %1 to ptr, !dbg !5035
  %3 = ptrtoint ptr %2 to i64, !dbg !5035
  %cmp = icmp uge i64 %3, -4095, !dbg !5035
  %lnot = xor i1 %cmp, true, !dbg !5035
  %lnot1 = xor i1 %lnot, true, !dbg !5035
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5035
  %conv = sext i32 %lnot.ext to i64, !dbg !5035
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5035
  %tobool = icmp ne i64 %expval, 0, !dbg !5035
  ret i1 %tobool, !dbg !5036
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #3 align 16 !dbg !5037 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5041, metadata !DIExpression()), !dbg !5042
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5043
  %1 = ptrtoint ptr %0 to i64, !dbg !5044
  ret i64 %1, !dbg !5045
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5046 dso_local void @mnt_set_mountpoint(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hlist_add_head(ptr noundef %n, ptr noundef %h) #3 align 16 !dbg !5049 {
entry:
  %n.addr = alloca ptr, align 8
  %h.addr = alloca ptr, align 8
  %first = alloca ptr, align 8
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5053, metadata !DIExpression()), !dbg !5056
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !5054, metadata !DIExpression()), !dbg !5057
  call void @llvm.lifetime.start.p0(i64 8, ptr %first) #7, !dbg !5058
  call void @llvm.dbg.declare(metadata ptr %first, metadata !5055, metadata !DIExpression()), !dbg !5059
  %0 = load ptr, ptr %h.addr, align 8, !dbg !5060
  %first1 = getelementptr inbounds %struct.hlist_head, ptr %0, i32 0, i32 0, !dbg !5061
  %1 = load ptr, ptr %first1, align 8, !dbg !5061
  store ptr %1, ptr %first, align 8, !dbg !5059
  br label %do.body, !dbg !5062

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !5063

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !5065

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !5065

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !5063

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %first, align 8, !dbg !5067
  %3 = load ptr, ptr %n.addr, align 8, !dbg !5067
  %next = getelementptr inbounds %struct.hlist_node, ptr %3, i32 0, i32 0, !dbg !5067
  store volatile ptr %2, ptr %next, align 8, !dbg !5067
  br label %do.cond4, !dbg !5067

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !5067

do.end5:                                          ; preds = %do.cond4
  br label %do.cond6, !dbg !5063

do.cond6:                                         ; preds = %do.end5
  br label %do.end7, !dbg !5063

do.end7:                                          ; preds = %do.cond6
  %4 = load ptr, ptr %first, align 8, !dbg !5069
  %tobool = icmp ne ptr %4, null, !dbg !5069
  br i1 %tobool, label %if.then, label %if.end, !dbg !5071

if.then:                                          ; preds = %do.end7
  br label %do.body8, !dbg !5072

do.body8:                                         ; preds = %if.then
  br label %do.body9, !dbg !5073

do.body9:                                         ; preds = %do.body8
  br label %do.cond10, !dbg !5075

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !5075

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !5073

do.body12:                                        ; preds = %do.end11
  %5 = load ptr, ptr %n.addr, align 8, !dbg !5077
  %next13 = getelementptr inbounds %struct.hlist_node, ptr %5, i32 0, i32 0, !dbg !5077
  %6 = load ptr, ptr %first, align 8, !dbg !5077
  %pprev = getelementptr inbounds %struct.hlist_node, ptr %6, i32 0, i32 1, !dbg !5077
  store volatile ptr %next13, ptr %pprev, align 8, !dbg !5077
  br label %do.cond14, !dbg !5077

do.cond14:                                        ; preds = %do.body12
  br label %do.end15, !dbg !5077

do.end15:                                         ; preds = %do.cond14
  br label %do.cond16, !dbg !5073

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !5073

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !5073

if.end:                                           ; preds = %do.end17, %do.end7
  br label %do.body18, !dbg !5079

do.body18:                                        ; preds = %if.end
  br label %do.body19, !dbg !5080

do.body19:                                        ; preds = %do.body18
  br label %do.cond20, !dbg !5082

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !5082

do.end21:                                         ; preds = %do.cond20
  br label %do.body22, !dbg !5080

do.body22:                                        ; preds = %do.end21
  %7 = load ptr, ptr %n.addr, align 8, !dbg !5084
  %8 = load ptr, ptr %h.addr, align 8, !dbg !5084
  %first23 = getelementptr inbounds %struct.hlist_head, ptr %8, i32 0, i32 0, !dbg !5084
  store volatile ptr %7, ptr %first23, align 8, !dbg !5084
  br label %do.cond24, !dbg !5084

do.cond24:                                        ; preds = %do.body22
  br label %do.end25, !dbg !5084

do.end25:                                         ; preds = %do.cond24
  br label %do.cond26, !dbg !5080

do.cond26:                                        ; preds = %do.end25
  br label %do.end27, !dbg !5080

do.end27:                                         ; preds = %do.cond26
  br label %do.body28, !dbg !5086

do.body28:                                        ; preds = %do.end27
  br label %do.body29, !dbg !5087

do.body29:                                        ; preds = %do.body28
  br label %do.cond30, !dbg !5089

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !5089

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !5087

do.body32:                                        ; preds = %do.end31
  %9 = load ptr, ptr %h.addr, align 8, !dbg !5091
  %first33 = getelementptr inbounds %struct.hlist_head, ptr %9, i32 0, i32 0, !dbg !5091
  %10 = load ptr, ptr %n.addr, align 8, !dbg !5091
  %pprev34 = getelementptr inbounds %struct.hlist_node, ptr %10, i32 0, i32 1, !dbg !5091
  store volatile ptr %first33, ptr %pprev34, align 8, !dbg !5091
  br label %do.cond35, !dbg !5091

do.cond35:                                        ; preds = %do.body32
  br label %do.end36, !dbg !5091

do.end36:                                         ; preds = %do.cond35
  br label %do.cond37, !dbg !5087

do.cond37:                                        ; preds = %do.end36
  br label %do.end38, !dbg !5087

do.end38:                                         ; preds = %do.cond37
  call void @llvm.lifetime.end.p0(i64 8, ptr %first) #7, !dbg !5093
  ret void, !dbg !5093
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5094 dso_local i32 @count_mounts(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @first_slave(ptr noundef %p) #3 align 16 !dbg !5097 {
entry:
  %p.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5099, metadata !DIExpression()), !dbg !5102
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #7, !dbg !5103
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5100, metadata !DIExpression()), !dbg !5103
  %0 = load ptr, ptr %p.addr, align 8, !dbg !5103
  %mnt_slave_list = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 13, !dbg !5103
  %next = getelementptr inbounds %struct.list_head, ptr %mnt_slave_list, i32 0, i32 0, !dbg !5103
  %1 = load ptr, ptr %next, align 8, !dbg !5103
  store ptr %1, ptr %__mptr, align 8, !dbg !5103
  %2 = load ptr, ptr %__mptr, align 8, !dbg !5103
  %add.ptr = getelementptr i8, ptr %2, i64 -208, !dbg !5103
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5103
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #7, !dbg !5104
  %3 = load ptr, ptr %tmp, align 8, !dbg !5103
  ret ptr %3, !dbg !5105
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @next_slave(ptr noundef %p) #3 align 16 !dbg !5106 {
entry:
  %p.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5108, metadata !DIExpression()), !dbg !5111
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #7, !dbg !5112
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5109, metadata !DIExpression()), !dbg !5112
  %0 = load ptr, ptr %p.addr, align 8, !dbg !5112
  %mnt_slave = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 14, !dbg !5112
  %next = getelementptr inbounds %struct.list_head, ptr %mnt_slave, i32 0, i32 0, !dbg !5112
  %1 = load ptr, ptr %next, align 8, !dbg !5112
  store ptr %1, ptr %__mptr, align 8, !dbg !5112
  %2 = load ptr, ptr %__mptr, align 8, !dbg !5112
  %add.ptr = getelementptr i8, ptr %2, i64 -208, !dbg !5112
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5112
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #7, !dbg !5113
  %3 = load ptr, ptr %tmp, align 8, !dbg !5112
  ret ptr %3, !dbg !5114
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #6 align 16 !dbg !5115 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5121, metadata !DIExpression()), !dbg !5122
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5123
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5123
  call void @_raw_spin_lock(ptr noundef %1) #8, !dbg !5123
  ret void, !dbg !5124
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5125 dso_local void @_raw_spin_lock(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #6 align 16 !dbg !5130 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5132, metadata !DIExpression()), !dbg !5133
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5134
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5134
  call void @_raw_spin_unlock(ptr noundef %1) #8, !dbg !5134
  ret void, !dbg !5135
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5136 dso_local void @_raw_spin_unlock(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5137 dso_local i32 @mnt_get_count(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_is_singular(ptr noundef %head) #3 align 16 !dbg !5138 {
entry:
  %head.addr = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5140, metadata !DIExpression()), !dbg !5141
  %0 = load ptr, ptr %head.addr, align 8, !dbg !5142
  %call = call i32 @list_empty(ptr noundef %0) #8, !dbg !5143
  %tobool = icmp ne i32 %call, 0, !dbg !5143
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !5144

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %head.addr, align 8, !dbg !5145
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !5146
  %2 = load ptr, ptr %next, align 8, !dbg !5146
  %3 = load ptr, ptr %head.addr, align 8, !dbg !5147
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !5148
  %4 = load ptr, ptr %prev, align 8, !dbg !5148
  %cmp = icmp eq ptr %2, %4, !dbg !5149
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ], !dbg !5150
  %land.ext = zext i1 %5 to i32, !dbg !5144
  ret i32 %land.ext, !dbg !5151
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @last_slave(ptr noundef %p) #3 align 16 !dbg !5152 {
entry:
  %p.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5154, metadata !DIExpression()), !dbg !5157
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #7, !dbg !5158
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5155, metadata !DIExpression()), !dbg !5158
  %0 = load ptr, ptr %p.addr, align 8, !dbg !5158
  %mnt_slave_list = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 13, !dbg !5158
  %prev = getelementptr inbounds %struct.list_head, ptr %mnt_slave_list, i32 0, i32 1, !dbg !5158
  %1 = load ptr, ptr %prev, align 8, !dbg !5158
  store ptr %1, ptr %__mptr, align 8, !dbg !5158
  %2 = load ptr, ptr %__mptr, align 8, !dbg !5158
  %add.ptr = getelementptr i8, ptr %2, i64 -208, !dbg !5158
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5158
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #7, !dbg !5159
  %3 = load ptr, ptr %tmp, align 8, !dbg !5158
  ret ptr %3, !dbg !5160
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @umount_one(ptr noundef %mnt, ptr noundef %to_umount) #0 align 16 !dbg !5161 {
entry:
  %mnt.addr = alloca ptr, align 8
  %to_umount.addr = alloca ptr, align 8
  store ptr %mnt, ptr %mnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mnt.addr, metadata !5165, metadata !DIExpression()), !dbg !5167
  store ptr %to_umount, ptr %to_umount.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to_umount.addr, metadata !5166, metadata !DIExpression()), !dbg !5168
  %0 = load ptr, ptr %mnt.addr, align 8, !dbg !5169
  %mnt1 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 3, !dbg !5169
  %mnt_flags = getelementptr inbounds %struct.vfsmount, ptr %mnt1, i32 0, i32 2, !dbg !5169
  %1 = load i32, ptr %mnt_flags, align 8, !dbg !5169
  %and = and i32 %1, -67108865, !dbg !5169
  store i32 %and, ptr %mnt_flags, align 8, !dbg !5169
  %2 = load ptr, ptr %mnt.addr, align 8, !dbg !5170
  %mnt2 = getelementptr inbounds %struct.mount, ptr %2, i32 0, i32 3, !dbg !5171
  %mnt_flags3 = getelementptr inbounds %struct.vfsmount, ptr %mnt2, i32 0, i32 2, !dbg !5172
  %3 = load i32, ptr %mnt_flags3, align 8, !dbg !5173
  %or = or i32 %3, 134217728, !dbg !5173
  store i32 %or, ptr %mnt_flags3, align 8, !dbg !5173
  %4 = load ptr, ptr %mnt.addr, align 8, !dbg !5174
  %mnt_child = getelementptr inbounds %struct.mount, ptr %4, i32 0, i32 7, !dbg !5175
  call void @list_del_init(ptr noundef %mnt_child) #8, !dbg !5176
  %5 = load ptr, ptr %mnt.addr, align 8, !dbg !5177
  %mnt_umounting = getelementptr inbounds %struct.mount, ptr %5, i32 0, i32 19, !dbg !5178
  call void @list_del_init(ptr noundef %mnt_umounting) #8, !dbg !5179
  %6 = load ptr, ptr %mnt.addr, align 8, !dbg !5180
  %mnt_list = getelementptr inbounds %struct.mount, ptr %6, i32 0, i32 10, !dbg !5181
  %7 = load ptr, ptr %to_umount.addr, align 8, !dbg !5182
  call void @list_move_tail(ptr noundef %mnt_list, ptr noundef %7) #8, !dbg !5183
  ret void, !dbg !5184
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_move_tail(ptr noundef %list, ptr noundef %head) #3 align 16 !dbg !5185 {
entry:
  %list.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !5187, metadata !DIExpression()), !dbg !5189
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5188, metadata !DIExpression()), !dbg !5190
  %0 = load ptr, ptr %list.addr, align 8, !dbg !5191
  call void @__list_del_entry(ptr noundef %0) #8, !dbg !5192
  %1 = load ptr, ptr %list.addr, align 8, !dbg !5193
  %2 = load ptr, ptr %head.addr, align 8, !dbg !5194
  call void @list_add_tail(ptr noundef %1, ptr noundef %2) #8, !dbg !5195
  ret void, !dbg !5196
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5197 dso_local void @mnt_change_mountpoint(ptr noundef, ptr noundef, ptr noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367}
!llvm.ident = !{!3368}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "last_dest", scope: !2, file: !3, line: 216, type: !57, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/.pnode.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/pnode\22 -D KBUILD_BASENAME=\22pnode\22 -D KBUILD_MODNAME=\22pnode\22 -D __KBUILD_MODNAME=kmod_pnode -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/pnode.ll fs/pnode.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !55, globals: !3346, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fs/pnode.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1b5431cc01b7b46a635ddc5d8498d8ba")
!4 = !{!5, !14, !19, !25, !30, !36, !43, !50}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !6, line: 9, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!10 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!11 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!12 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!13 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !15, line: 2052, baseType: !7, size: 32, elements: !16)
!15 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!16 = !{!17, !18}
!17 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!18 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !20, line: 54, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!21 = !{!22, !23, !24}
!22 = !DIEnumerator(name: "USRQUOTA", value: 0)
!23 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!24 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !26, line: 65, baseType: !7, size: 32, elements: !27)
!26 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!27 = !{!28, !29}
!28 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!29 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !31, line: 16, baseType: !7, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!32 = !{!33, !34, !35}
!33 = !DIEnumerator(name: "TT_NONE", value: 0)
!34 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!35 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !37, line: 15, baseType: !7, size: 32, elements: !38)
!37 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!38 = !{!39, !40, !41, !42}
!39 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!40 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!41 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!42 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !44, line: 51, baseType: !7, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!45 = !{!46, !47, !48, !49}
!46 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!47 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!48 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!49 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !51, line: 10, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!52 = !{!53, !54}
!53 = !DIEnumerator(name: "false", value: 0)
!54 = !DIEnumerator(name: "true", value: 1)
!55 = !{!56, !57, !3338, !473, !268, !3340, !3342, !3344}
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mount", file: !59, line: 39, size: 2560, elements: !60)
!59 = !DIFile(filename: "fs/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b4a5eb1a988fb7c9469e00ad2dc4ac71")
!60 = !{!61, !69, !70, !3294, !3295, !3300, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3325, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_hash", scope: !58, file: !59, line: 40, baseType: !62, size: 128)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !63, line: 198, size: 128, elements: !64)
!63 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!64 = !{!65, !67}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !62, file: !63, line: 199, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !62, file: !63, line: 199, baseType: !68, size: 64, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_parent", scope: !58, file: !59, line: 41, baseType: !57, size: 64, offset: 128)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_mountpoint", scope: !58, file: !59, line: 42, baseType: !71, size: 64, offset: 192)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !73, line: 82, size: 1536, elements: !74)
!73 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!74 = !{!75, !76, !86, !94, !95, !118, !3262, !3264, !3277, !3278, !3279, !3280, !3281, !3286, !3287, !3288}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !72, file: !73, line: 84, baseType: !7, size: 32)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !72, file: !73, line: 85, baseType: !77, size: 32, offset: 32)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !78, line: 275, baseType: !79)
!78 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !78, line: 275, size: 32, elements: !80)
!80 = !{!81}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !79, file: !78, line: 275, baseType: !82, size: 32)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !78, line: 69, baseType: !83)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !78, line: 64, size: 32, elements: !84)
!84 = !{!85}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !83, file: !78, line: 65, baseType: !7, size: 32)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !72, file: !73, line: 86, baseType: !87, size: 128, offset: 64)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !88, line: 38, size: 128, elements: !89)
!88 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!89 = !{!90, !92}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !87, file: !88, line: 39, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !87, file: !88, line: 39, baseType: !93, size: 64, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !72, file: !73, line: 87, baseType: !71, size: 64, offset: 192)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !72, file: !73, line: 88, baseType: !96, size: 128, offset: 256)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !73, line: 49, size: 128, elements: !97)
!97 = !{!98, !114}
!98 = !DIDerivedType(tag: DW_TAG_member, scope: !96, file: !73, line: 50, baseType: !99, size: 64)
!99 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !96, file: !73, line: 50, size: 64, elements: !100)
!100 = !{!101, !110}
!101 = !DIDerivedType(tag: DW_TAG_member, scope: !99, file: !73, line: 51, baseType: !102, size: 64)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !99, file: !73, line: 51, size: 64, elements: !103)
!103 = !{!104, !109}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !102, file: !73, line: 52, baseType: !105, size: 32)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !106, line: 21, baseType: !107)
!106 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !108, line: 27, baseType: !7)
!108 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!109 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !102, file: !73, line: 52, baseType: !105, size: 32, offset: 32)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !99, file: !73, line: 54, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !106, line: 23, baseType: !112)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !108, line: 31, baseType: !113)
!113 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !96, file: !73, line: 56, baseType: !115, size: 64, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!117 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !72, file: !73, line: 89, baseType: !119, size: 64, offset: 384)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !15, line: 641, size: 4800, elements: !121)
!121 = !{!122, !125, !126, !135, !141, !148, !149, !152, !153, !3200, !3201, !3202, !3203, !3204, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3228, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3244, !3247, !3248, !3249, !3258, !3259, !3260, !3261}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !120, file: !15, line: 642, baseType: !123, size: 16)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !63, line: 24, baseType: !124)
!124 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !120, file: !15, line: 643, baseType: !124, size: 16, offset: 16)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !120, file: !15, line: 644, baseType: !127, size: 32, offset: 32)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !128, line: 23, baseType: !129)
!128 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !128, line: 21, size: 32, elements: !130)
!130 = !{!131}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !129, file: !128, line: 22, baseType: !132, size: 32)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !63, line: 37, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !134, line: 49, baseType: !7)
!134 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!135 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !120, file: !15, line: 645, baseType: !136, size: 128, offset: 64)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !63, line: 190, size: 128, elements: !137)
!137 = !{!138, !140}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !136, file: !63, line: 191, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !136, file: !63, line: 191, baseType: !139, size: 64, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !120, file: !15, line: 646, baseType: !142, size: 32, offset: 192)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !128, line: 28, baseType: !143)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !128, line: 26, size: 32, elements: !144)
!144 = !{!145}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !143, file: !128, line: 27, baseType: !146, size: 32)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !63, line: 38, baseType: !147)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !134, line: 50, baseType: !7)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !120, file: !15, line: 647, baseType: !7, size: 32, offset: 224)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !120, file: !15, line: 650, baseType: !150, size: 64, offset: 256)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !15, line: 607, flags: DIFlagFwdDecl)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !120, file: !15, line: 651, baseType: !150, size: 64, offset: 320)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !120, file: !15, line: 654, baseType: !154, size: 64, offset: 384)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !15, line: 1966, size: 2048, align: 512, elements: !157)
!157 = !{!158, !162, !178, !186, !192, !197, !201, !205, !209, !213, !217, !218, !224, !228, !3122, !3151, !3155, !3161, !3165, !3169, !3173, !3177, !3181, !3187, !3191}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !156, file: !15, line: 1967, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DISubroutineType(types: !161)
!161 = !{!71, !119, !71, !7}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !156, file: !15, line: 1968, baseType: !163, size: 64, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DISubroutineType(types: !165)
!165 = !{!166, !71, !119, !169}
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!168 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !171, line: 10, size: 128, elements: !172)
!171 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!172 = !{!173, !177}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !170, file: !171, line: 11, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DISubroutineType(types: !176)
!176 = !{null, !56}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !170, file: !171, line: 12, baseType: !56, size: 64, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !156, file: !15, line: 1969, baseType: !179, size: 64, offset: 128)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DISubroutineType(types: !181)
!181 = !{!182, !183, !119, !182}
!182 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !185, line: 19, flags: DIFlagFwdDecl)
!185 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!186 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !156, file: !15, line: 1970, baseType: !187, size: 64, offset: 192)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{!150, !119, !182, !190}
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !63, line: 35, baseType: !191)
!191 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !156, file: !15, line: 1972, baseType: !193, size: 64, offset: 256)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DISubroutineType(types: !195)
!195 = !{!182, !71, !196, !182}
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !156, file: !15, line: 1974, baseType: !198, size: 64, offset: 320)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{!182, !183, !119, !71, !123, !190}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !156, file: !15, line: 1976, baseType: !202, size: 64, offset: 384)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{!182, !71, !119, !71}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !156, file: !15, line: 1977, baseType: !206, size: 64, offset: 448)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{!182, !119, !71}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !156, file: !15, line: 1978, baseType: !210, size: 64, offset: 512)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!182, !183, !119, !71, !166}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !156, file: !15, line: 1980, baseType: !214, size: 64, offset: 576)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{!182, !183, !119, !71, !123}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !156, file: !15, line: 1982, baseType: !206, size: 64, offset: 640)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !156, file: !15, line: 1983, baseType: !219, size: 64, offset: 704)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{!182, !183, !119, !71, !123, !222}
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !63, line: 21, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !63, line: 18, baseType: !105)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !156, file: !15, line: 1985, baseType: !225, size: 64, offset: 768)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DISubroutineType(types: !227)
!227 = !{!182, !183, !119, !71, !119, !71, !7}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !156, file: !15, line: 1987, baseType: !229, size: 64, offset: 832)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{!182, !183, !71, !232}
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !15, line: 226, size: 640, elements: !234)
!234 = !{!235, !236, !237, !247, !256, !260, !269, !270, !271}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !233, file: !15, line: 227, baseType: !7, size: 32)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !233, file: !15, line: 228, baseType: !123, size: 16, offset: 32)
!237 = !DIDerivedType(tag: DW_TAG_member, scope: !233, file: !15, line: 241, baseType: !238, size: 32, offset: 64)
!238 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !233, file: !15, line: 241, size: 32, elements: !239)
!239 = !{!240, !241}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !238, file: !15, line: 242, baseType: !127, size: 32)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !238, file: !15, line: 243, baseType: !242, size: 32)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !243, line: 16, baseType: !244)
!243 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !243, line: 14, size: 32, elements: !245)
!245 = !{!246}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !244, file: !243, line: 15, baseType: !132, size: 32)
!247 = !DIDerivedType(tag: DW_TAG_member, scope: !233, file: !15, line: 245, baseType: !248, size: 32, offset: 96)
!248 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !233, file: !15, line: 245, size: 32, elements: !249)
!249 = !{!250, !251}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !248, file: !15, line: 246, baseType: !142, size: 32)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !248, file: !15, line: 247, baseType: !252, size: 32)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !243, line: 20, baseType: !253)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !243, line: 18, size: 32, elements: !254)
!254 = !{!255}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !253, file: !243, line: 19, baseType: !146, size: 32)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !233, file: !15, line: 249, baseType: !257, size: 64, offset: 128)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !63, line: 52, baseType: !258)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !134, line: 88, baseType: !259)
!259 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !233, file: !15, line: 250, baseType: !261, size: 128, offset: 192)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !262, line: 13, size: 128, elements: !263)
!262 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!263 = !{!264, !267}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !261, file: !262, line: 14, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !262, line: 8, baseType: !266)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !108, line: 30, baseType: !259)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !261, file: !262, line: 15, baseType: !268, size: 64, offset: 64)
!268 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !233, file: !15, line: 251, baseType: !261, size: 128, offset: 320)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !233, file: !15, line: 252, baseType: !261, size: 128, offset: 448)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !233, file: !15, line: 259, baseType: !272, size: 64, offset: 576)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !15, line: 994, size: 1856, align: 64, elements: !274)
!274 = !{!275, !294, !333, !335, !343, !356, !357, !358, !426, !636, !645, !2923, !2924, !3114, !3115, !3116, !3117, !3119, !3120, !3121}
!275 = !DIDerivedType(tag: DW_TAG_member, scope: !273, file: !15, line: 995, baseType: !276, size: 128)
!276 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !273, file: !15, line: 995, size: 128, elements: !277)
!277 = !{!278, !284, !293}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !276, file: !15, line: 996, baseType: !279, size: 64)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !280, line: 60, size: 64, elements: !281)
!280 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!281 = !{!282}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !279, file: !280, line: 61, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !276, file: !15, line: 997, baseType: !285, size: 128, align: 64)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !63, line: 232, size: 128, align: 64, elements: !286)
!286 = !{!287, !289}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !285, file: !63, line: 233, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !285, file: !63, line: 234, baseType: !290, size: 64, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DISubroutineType(types: !292)
!292 = !{null, !288}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !276, file: !15, line: 998, baseType: !7, size: 32)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !273, file: !15, line: 1005, baseType: !295, size: 32, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !296, line: 29, baseType: !297)
!296 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !296, line: 17, size: 32, elements: !298)
!298 = !{!299}
!299 = !DIDerivedType(tag: DW_TAG_member, scope: !297, file: !296, line: 18, baseType: !300, size: 32)
!300 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !297, file: !296, line: 18, size: 32, elements: !301)
!301 = !{!302}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !300, file: !296, line: 19, baseType: !303, size: 32)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !304, line: 14, size: 32, elements: !305)
!304 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!305 = !{!306}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !303, file: !304, line: 15, baseType: !307, size: 32)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !308, line: 44, baseType: !309)
!308 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !308, line: 14, size: 32, elements: !310)
!310 = !{!311}
!311 = !DIDerivedType(tag: DW_TAG_member, scope: !309, file: !308, line: 15, baseType: !312, size: 32)
!312 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !309, file: !308, line: 15, size: 32, elements: !313)
!313 = !{!314, !319, !326}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !312, file: !308, line: 16, baseType: !315, size: 32)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !63, line: 174, baseType: !316)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !63, line: 172, size: 32, elements: !317)
!317 = !{!318}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !316, file: !63, line: 173, baseType: !182, size: 32)
!319 = !DIDerivedType(tag: DW_TAG_member, scope: !312, file: !308, line: 24, baseType: !320, size: 16)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !312, file: !308, line: 24, size: 16, elements: !321)
!321 = !{!322, !325}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !320, file: !308, line: 25, baseType: !323, size: 8)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !106, line: 17, baseType: !324)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !108, line: 21, baseType: !117)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !320, file: !308, line: 26, baseType: !323, size: 8, offset: 8)
!326 = !DIDerivedType(tag: DW_TAG_member, scope: !312, file: !308, line: 28, baseType: !327, size: 32)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !312, file: !308, line: 28, size: 32, elements: !328)
!328 = !{!329, !332}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !327, file: !308, line: 29, baseType: !330, size: 16)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !106, line: 19, baseType: !331)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !108, line: 24, baseType: !124)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !327, file: !308, line: 30, baseType: !330, size: 16, offset: 16)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !273, file: !15, line: 1006, baseType: !334, size: 32, offset: 160)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !63, line: 156, baseType: !7)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !273, file: !15, line: 1007, baseType: !336, size: 64, offset: 192)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !337, line: 13, baseType: !338)
!337 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !63, line: 181, baseType: !339)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !63, line: 179, size: 64, elements: !340)
!340 = !{!341}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !339, file: !63, line: 180, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !106, line: 22, baseType: !266)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !273, file: !15, line: 1008, baseType: !344, size: 256, offset: 256)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !345, line: 66, size: 256, elements: !346)
!345 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!346 = !{!347, !348, !350, !355}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !344, file: !345, line: 67, baseType: !336, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !344, file: !345, line: 68, baseType: !349, size: 32, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !304, line: 23, baseType: !303)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !344, file: !345, line: 70, baseType: !351, size: 32, offset: 96)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !352, line: 15, size: 32, elements: !353)
!352 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!353 = !{!354}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !351, file: !352, line: 20, baseType: !315, size: 32)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !344, file: !345, line: 72, baseType: !136, size: 128, offset: 128)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !273, file: !15, line: 1009, baseType: !257, size: 64, offset: 512)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !273, file: !15, line: 1010, baseType: !7, size: 32, offset: 576)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !273, file: !15, line: 1011, baseType: !359, size: 256, offset: 640)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !15, line: 948, size: 256, elements: !360)
!360 = !{!361, !384, !422, !423, !424, !425}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !359, file: !15, line: 949, baseType: !362, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !363, line: 34, baseType: !364)
!363 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !363, line: 25, size: 64, elements: !365)
!365 = !{!366}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !364, file: !363, line: 26, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !368, line: 27, baseType: !369)
!368 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !368, line: 13, size: 64, elements: !370)
!370 = !{!371, !383}
!371 = !DIDerivedType(tag: DW_TAG_member, scope: !369, file: !368, line: 14, baseType: !372, size: 32)
!372 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !369, file: !368, line: 14, size: 32, elements: !373)
!373 = !{!374, !375}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !372, file: !368, line: 15, baseType: !315, size: 32)
!375 = !DIDerivedType(tag: DW_TAG_member, scope: !372, file: !368, line: 16, baseType: !376, size: 32)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !372, file: !368, line: 16, size: 32, elements: !377)
!377 = !{!378, !379}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !376, file: !368, line: 18, baseType: !323, size: 8)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !376, file: !368, line: 19, baseType: !380, size: 24, offset: 8)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 24, elements: !381)
!381 = !{!382}
!382 = !DISubrange(count: 3)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !369, file: !368, line: 26, baseType: !307, size: 32, offset: 32)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !359, file: !15, line: 950, baseType: !385, size: 64, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !6, line: 59, size: 768, elements: !387)
!387 = !{!388, !394, !395, !396, !403, !404, !411, !412}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !386, file: !6, line: 61, baseType: !389, size: 32)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !390, line: 113, baseType: !391)
!390 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !390, line: 111, size: 32, elements: !392)
!392 = !{!393}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !391, file: !390, line: 112, baseType: !315, size: 32)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !386, file: !6, line: 62, baseType: !7, size: 32, offset: 32)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !386, file: !6, line: 63, baseType: !295, size: 32, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !386, file: !6, line: 65, baseType: !397, size: 256, offset: 128)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 256, elements: !401)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !63, line: 194, size: 64, elements: !399)
!399 = !{!400}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !398, file: !63, line: 195, baseType: !66, size: 64)
!401 = !{!402}
!402 = !DISubrange(count: 4)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !386, file: !6, line: 66, baseType: !398, size: 64, offset: 384)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !386, file: !6, line: 68, baseType: !405, size: 192, offset: 448)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !406, line: 41, baseType: !407)
!406 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !406, line: 37, size: 192, elements: !408)
!408 = !{!409, !410}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !407, file: !406, line: 38, baseType: !295, size: 32)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !407, file: !406, line: 39, baseType: !136, size: 128, offset: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !386, file: !6, line: 69, baseType: !285, size: 128, align: 64, offset: 640)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !386, file: !6, line: 70, baseType: !413, offset: 768)
!413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !414, elements: !420)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !6, line: 54, size: 128, elements: !415)
!415 = !{!416, !417}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !414, file: !6, line: 55, baseType: !182, size: 32)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !414, file: !6, line: 56, baseType: !418, size: 64, offset: 64)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !6, line: 56, flags: DIFlagFwdDecl)
!420 = !{!421}
!421 = !DISubrange(count: -1)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !359, file: !15, line: 951, baseType: !5, size: 32, offset: 128)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !359, file: !15, line: 952, baseType: !127, size: 32, offset: 160)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !359, file: !15, line: 952, baseType: !127, size: 32, offset: 192)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !359, file: !15, line: 953, baseType: !182, size: 32, offset: 224)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !273, file: !15, line: 1012, baseType: !427, size: 64, offset: 896)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !429)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !430, line: 110, size: 1472, elements: !431)
!430 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!431 = !{!432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !448, !449, !450, !451, !452, !453, !580, !581, !582, !583, !584, !615, !619, !623, !631}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !429, file: !430, line: 111, baseType: !336, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !429, file: !430, line: 112, baseType: !127, size: 32, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !429, file: !430, line: 113, baseType: !142, size: 32, offset: 96)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !429, file: !430, line: 114, baseType: !127, size: 32, offset: 128)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !429, file: !430, line: 115, baseType: !142, size: 32, offset: 160)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !429, file: !430, line: 116, baseType: !127, size: 32, offset: 192)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !429, file: !430, line: 117, baseType: !142, size: 32, offset: 224)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !429, file: !430, line: 118, baseType: !127, size: 32, offset: 256)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !429, file: !430, line: 119, baseType: !142, size: 32, offset: 288)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !429, file: !430, line: 120, baseType: !7, size: 32, offset: 320)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !429, file: !430, line: 121, baseType: !443, size: 64, offset: 384)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !444, line: 24, baseType: !445)
!444 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !444, line: 24, size: 64, elements: !446)
!446 = !{!447}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !445, file: !444, line: 24, baseType: !111, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !429, file: !430, line: 122, baseType: !443, size: 64, offset: 448)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !429, file: !430, line: 123, baseType: !443, size: 64, offset: 512)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !429, file: !430, line: 124, baseType: !443, size: 64, offset: 576)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !429, file: !430, line: 125, baseType: !443, size: 64, offset: 640)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !429, file: !430, line: 127, baseType: !117, size: 8, offset: 704)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !429, file: !430, line: 129, baseType: !454, size: 64, offset: 768)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !456, line: 195, size: 1728, elements: !457)
!456 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!457 = !{!458, !459, !464, !477, !486, !489, !490, !495, !496, !497, !498, !501, !502, !503, !505, !506, !544, !565}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !455, file: !456, line: 196, baseType: !389, size: 32)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !455, file: !456, line: 197, baseType: !460, size: 32, offset: 32)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !456, line: 28, baseType: !461)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !63, line: 104, baseType: !462)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !106, line: 20, baseType: !463)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !108, line: 26, baseType: !182)
!464 = !DIDerivedType(tag: DW_TAG_member, scope: !455, file: !456, line: 198, baseType: !465, size: 192, offset: 64)
!465 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !455, file: !456, line: 198, size: 192, elements: !466)
!466 = !{!467, !468}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !465, file: !456, line: 199, baseType: !136, size: 128)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !465, file: !456, line: 200, baseType: !469, size: 192, align: 64)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !470, line: 5, size: 192, align: 64, elements: !471)
!470 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!471 = !{!472, !474, !476}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !469, file: !470, line: 6, baseType: !473, size: 64)
!473 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !469, file: !470, line: 7, baseType: !475, size: 64, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !469, file: !470, line: 8, baseType: !475, size: 64, offset: 128)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !455, file: !456, line: 205, baseType: !478, size: 320, offset: 256)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !479, line: 48, size: 320, elements: !480)
!479 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!480 = !{!481, !482, !483, !484, !485}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !478, file: !479, line: 49, baseType: !336, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !478, file: !479, line: 55, baseType: !336, size: 64, offset: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !478, file: !479, line: 57, baseType: !351, size: 32, offset: 128)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !478, file: !479, line: 59, baseType: !349, size: 32, offset: 160)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !478, file: !479, line: 60, baseType: !136, size: 128, offset: 192)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !455, file: !456, line: 206, baseType: !487, size: 64, offset: 576)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !456, line: 206, flags: DIFlagFwdDecl)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !455, file: !456, line: 207, baseType: !56, size: 64, offset: 640)
!490 = !DIDerivedType(tag: DW_TAG_member, scope: !455, file: !456, line: 208, baseType: !491, size: 64, offset: 704)
!491 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !455, file: !456, line: 208, size: 64, elements: !492)
!492 = !{!493, !494}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !491, file: !456, line: 209, baseType: !265, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !491, file: !456, line: 210, baseType: !265, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !455, file: !456, line: 212, baseType: !265, size: 64, offset: 768)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !455, file: !456, line: 213, baseType: !127, size: 32, offset: 832)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !455, file: !456, line: 214, baseType: !142, size: 32, offset: 864)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !455, file: !456, line: 215, baseType: !499, size: 32, offset: 896)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !456, line: 31, baseType: !500)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !63, line: 110, baseType: !105)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !455, file: !456, line: 216, baseType: !124, size: 16, offset: 928)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !455, file: !456, line: 217, baseType: !124, size: 16, offset: 944)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !455, file: !456, line: 221, baseType: !504, size: 16, offset: 960)
!504 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !455, file: !456, line: 228, baseType: !473, size: 64, offset: 1024)
!506 = !DIDerivedType(tag: DW_TAG_member, scope: !455, file: !456, line: 245, baseType: !507, size: 320, offset: 1088)
!507 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !455, file: !456, line: 245, size: 320, elements: !508)
!508 = !{!509, !536}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !507, file: !456, line: 246, baseType: !510, size: 320)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !456, line: 114, size: 320, elements: !511)
!511 = !{!512, !513, !525, !528, !535}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !510, file: !456, line: 116, baseType: !473, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, scope: !510, file: !456, line: 117, baseType: !514, size: 64, offset: 64)
!514 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !510, file: !456, line: 117, size: 64, elements: !515)
!515 = !{!516, !524}
!516 = !DIDerivedType(tag: DW_TAG_member, scope: !514, file: !456, line: 118, baseType: !517, size: 64)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !514, file: !456, line: 118, size: 64, elements: !518)
!518 = !{!519, !520}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !517, file: !456, line: 120, baseType: !330, size: 16)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !517, file: !456, line: 121, baseType: !521, size: 48, offset: 16)
!521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 48, elements: !522)
!522 = !{!523}
!523 = !DISubrange(count: 6)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !514, file: !456, line: 127, baseType: !473, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !510, file: !456, line: 129, baseType: !526, size: 64, offset: 128)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !456, line: 102, flags: DIFlagFwdDecl)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !510, file: !456, line: 130, baseType: !529, size: 64, offset: 192)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !456, line: 108, size: 192, elements: !531)
!531 = !{!532, !533, !534}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !530, file: !456, line: 109, baseType: !285, size: 128, align: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !530, file: !456, line: 110, baseType: !389, size: 32, offset: 128)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !530, file: !456, line: 111, baseType: !190, size: 8, offset: 160)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !510, file: !456, line: 131, baseType: !166, size: 64, offset: 256)
!536 = !DIDerivedType(tag: DW_TAG_member, scope: !507, file: !456, line: 247, baseType: !537, size: 320)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !507, file: !456, line: 247, size: 320, elements: !538)
!538 = !{!539, !540, !541, !542, !543}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !537, file: !456, line: 248, baseType: !473, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !537, file: !456, line: 249, baseType: !473, size: 64, offset: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !537, file: !456, line: 250, baseType: !526, size: 64, offset: 128)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !537, file: !456, line: 251, baseType: !529, size: 64, offset: 192)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !537, file: !456, line: 252, baseType: !196, size: 64, offset: 256)
!544 = !DIDerivedType(tag: DW_TAG_member, scope: !455, file: !456, line: 260, baseType: !545, size: 256, offset: 1408)
!545 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !455, file: !456, line: 260, size: 256, elements: !546)
!546 = !{!547, !553}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !545, file: !456, line: 261, baseType: !548, size: 256)
!548 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !456, line: 134, size: 256, elements: !549)
!549 = !{!550, !551}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !548, file: !456, line: 135, baseType: !56, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !548, file: !456, line: 136, baseType: !552, size: 256)
!552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 256, elements: !401)
!553 = !DIDerivedType(tag: DW_TAG_member, scope: !545, file: !456, line: 262, baseType: !554, size: 256)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !545, file: !456, line: 262, size: 256, elements: !555)
!555 = !{!556, !557}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !554, file: !456, line: 264, baseType: !136, size: 128)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !554, file: !456, line: 265, baseType: !558, size: 128, offset: 128)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !559, line: 22, size: 128, elements: !560)
!559 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!560 = !{!561, !564}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !558, file: !559, line: 23, baseType: !562, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !559, line: 23, flags: DIFlagFwdDecl)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !558, file: !559, line: 24, baseType: !473, size: 64, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !455, file: !456, line: 280, baseType: !566, size: 64, offset: 1664)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !456, line: 176, size: 192, elements: !568)
!568 = !{!569, !578, !579}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !567, file: !456, line: 177, baseType: !570, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !456, line: 171, baseType: !571)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{!182, !454, !574, !576, !454}
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !527)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !548)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !567, file: !456, line: 178, baseType: !454, size: 64, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !567, file: !456, line: 179, baseType: !526, size: 64, offset: 128)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !429, file: !430, line: 130, baseType: !454, size: 64, offset: 832)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !429, file: !430, line: 131, baseType: !454, size: 64, offset: 896)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !429, file: !430, line: 132, baseType: !454, size: 64, offset: 960)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !429, file: !430, line: 135, baseType: !56, size: 64, offset: 1024)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !429, file: !430, line: 137, baseType: !585, size: 64, offset: 1088)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !587, line: 14, size: 1088, elements: !588)
!587 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!588 = !{!589, !590, !599, !600, !601, !602, !603, !604}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !586, file: !587, line: 15, baseType: !389, size: 32)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !586, file: !587, line: 17, baseType: !591, size: 320, offset: 64)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !592, line: 22, size: 320, elements: !593)
!592 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!593 = !{!594, !595, !596, !597}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !591, file: !592, line: 23, baseType: !349, size: 32)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !591, file: !592, line: 24, baseType: !342, size: 64, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !591, file: !592, line: 26, baseType: !136, size: 128, offset: 128)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !591, file: !592, line: 28, baseType: !598, size: 64, offset: 256)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !586, file: !587, line: 19, baseType: !473, size: 64, offset: 384)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !586, file: !587, line: 20, baseType: !336, size: 64, offset: 448)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !586, file: !587, line: 23, baseType: !62, size: 128, offset: 512)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !586, file: !587, line: 24, baseType: !127, size: 32, offset: 640)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !586, file: !587, line: 29, baseType: !336, size: 64, offset: 704)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !586, file: !587, line: 36, baseType: !605, size: 320, offset: 768)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !606, line: 15, size: 320, elements: !607)
!606 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!607 = !{!608, !609, !610, !611, !612, !613, !614}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !605, file: !606, line: 16, baseType: !349, size: 32)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !605, file: !606, line: 18, baseType: !182, size: 32, offset: 32)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !605, file: !606, line: 19, baseType: !182, size: 32, offset: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !605, file: !606, line: 20, baseType: !182, size: 32, offset: 96)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !605, file: !606, line: 21, baseType: !182, size: 32, offset: 128)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !605, file: !606, line: 22, baseType: !473, size: 64, offset: 192)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !605, file: !606, line: 23, baseType: !473, size: 64, offset: 256)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !429, file: !430, line: 138, baseType: !616, size: 64, offset: 1152)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !618, line: 8, flags: DIFlagFwdDecl)
!618 = !DIFile(filename: "./include/linux/mnt_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "15c2c890187f55d35ae90dcc758625f0")
!619 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !429, file: !430, line: 139, baseType: !620, size: 64, offset: 1216)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !622, line: 16, flags: DIFlagFwdDecl)
!622 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!623 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !429, file: !430, line: 140, baseType: !624, size: 64, offset: 1280)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !430, line: 25, size: 64, elements: !626)
!626 = !{!627, !628, !629}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !625, file: !430, line: 26, baseType: !315, size: 32)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !625, file: !430, line: 27, baseType: !182, size: 32, offset: 32)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !625, file: !430, line: 28, baseType: !630, offset: 64)
!630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, elements: !420)
!631 = !DIDerivedType(tag: DW_TAG_member, scope: !429, file: !430, line: 142, baseType: !632, size: 128, offset: 1344)
!632 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !429, file: !430, line: 142, size: 128, elements: !633)
!633 = !{!634, !635}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !632, file: !430, line: 143, baseType: !182, size: 32)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !632, file: !430, line: 144, baseType: !285, size: 128, align: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !273, file: !15, line: 1013, baseType: !637, size: 256, offset: 960)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !15, line: 970, size: 256, elements: !638)
!638 = !{!639, !640, !641, !642, !643, !644}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !637, file: !15, line: 971, baseType: !473, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !637, file: !15, line: 972, baseType: !7, size: 32, offset: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !637, file: !15, line: 973, baseType: !7, size: 32, offset: 96)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !637, file: !15, line: 974, baseType: !7, size: 32, offset: 128)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !637, file: !15, line: 975, baseType: !7, size: 32, offset: 160)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !637, file: !15, line: 976, baseType: !257, size: 64, offset: 192)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !273, file: !15, line: 1014, baseType: !646, size: 128, offset: 1216)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !647, line: 8, size: 128, elements: !648)
!647 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!648 = !{!649, !2922}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !646, file: !647, line: 9, baseType: !650, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !185, line: 70, size: 256, elements: !652)
!652 = !{!653, !654, !2920, !2921}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !651, file: !185, line: 71, baseType: !71, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !651, file: !185, line: 72, baseType: !655, size: 64, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !15, line: 1190, size: 10752, elements: !657)
!657 = !{!658, !659, !660, !661, !662, !663, !705, !886, !926, !1011, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1028, !1032, !1033, !1036, !1039, !1042, !1045, !1046, !1047, !1088, !2793, !2794, !2795, !2796, !2797, !2798, !2801, !2803, !2810, !2811, !2812, !2813, !2872, !2887, !2888, !2889, !2890, !2891, !2894, !2895, !2896, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !656, file: !15, line: 1191, baseType: !136, size: 128)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !656, file: !15, line: 1192, baseType: !222, size: 32, offset: 128)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !656, file: !15, line: 1193, baseType: !117, size: 8, offset: 160)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !656, file: !15, line: 1194, baseType: !473, size: 64, offset: 192)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !656, file: !15, line: 1195, baseType: !257, size: 64, offset: 256)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !656, file: !15, line: 1196, baseType: !664, size: 64, offset: 320)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !15, line: 2366, size: 576, elements: !666)
!666 = !{!667, !668, !669, !675, !679, !683, !687, !691, !692, !693, !697, !698, !699, !701, !702, !703, !704}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !665, file: !15, line: 2367, baseType: !166, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !665, file: !15, line: 2368, baseType: !182, size: 32, offset: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !665, file: !15, line: 2376, baseType: !670, size: 64, offset: 128)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DISubroutineType(types: !672)
!672 = !{!182, !673}
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !185, line: 21, flags: DIFlagFwdDecl)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !665, file: !15, line: 2377, baseType: !676, size: 64, offset: 192)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !678)
!678 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !15, line: 75, flags: DIFlagFwdDecl)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !665, file: !15, line: 2378, baseType: !680, size: 64, offset: 256)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DISubroutineType(types: !682)
!682 = !{!71, !664, !182, !166, !56}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !665, file: !15, line: 2380, baseType: !684, size: 64, offset: 320)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DISubroutineType(types: !686)
!686 = !{null, !655}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !665, file: !15, line: 2381, baseType: !688, size: 64, offset: 384)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !690, line: 103, flags: DIFlagFwdDecl)
!690 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec86911224c4b764298f6e976616738c")
!691 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !665, file: !15, line: 2382, baseType: !664, size: 64, offset: 448)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !665, file: !15, line: 2383, baseType: !398, size: 64, offset: 512)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !665, file: !15, line: 2385, baseType: !694, offset: 576)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !695, line: 206, elements: !696)
!695 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!696 = !{}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !665, file: !15, line: 2386, baseType: !694, offset: 576)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !665, file: !15, line: 2387, baseType: !694, offset: 576)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !665, file: !15, line: 2388, baseType: !700, offset: 576)
!700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !694, elements: !381)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !665, file: !15, line: 2390, baseType: !694, offset: 576)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !665, file: !15, line: 2391, baseType: !694, offset: 576)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !665, file: !15, line: 2392, baseType: !694, offset: 576)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !665, file: !15, line: 2393, baseType: !694, offset: 576)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !656, file: !15, line: 1197, baseType: !706, size: 64, offset: 384)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !708)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !15, line: 2057, size: 1664, elements: !709)
!709 = !{!710, !714, !718, !719, !723, !729, !733, !734, !735, !739, !743, !747, !748, !749, !755, !760, !761, !807, !808, !809, !810, !817, !821, !868, !884, !885}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !708, file: !15, line: 2058, baseType: !711, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DISubroutineType(types: !713)
!713 = !{!119, !655}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !708, file: !15, line: 2059, baseType: !715, size: 64, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DISubroutineType(types: !717)
!717 = !{null, !119}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !708, file: !15, line: 2060, baseType: !715, size: 64, offset: 128)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !708, file: !15, line: 2062, baseType: !720, size: 64, offset: 192)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DISubroutineType(types: !722)
!722 = !{null, !119, !182}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !708, file: !15, line: 2063, baseType: !724, size: 64, offset: 256)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DISubroutineType(types: !726)
!726 = !{!182, !119, !727}
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !15, line: 309, flags: DIFlagFwdDecl)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !708, file: !15, line: 2064, baseType: !730, size: 64, offset: 320)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DISubroutineType(types: !732)
!732 = !{!182, !119}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !708, file: !15, line: 2065, baseType: !715, size: 64, offset: 384)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !708, file: !15, line: 2066, baseType: !684, size: 64, offset: 448)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !708, file: !15, line: 2067, baseType: !736, size: 64, offset: 512)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DISubroutineType(types: !738)
!738 = !{!182, !655, !182}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !708, file: !15, line: 2068, baseType: !740, size: 64, offset: 576)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DISubroutineType(types: !742)
!742 = !{!182, !655, !14}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !708, file: !15, line: 2069, baseType: !744, size: 64, offset: 640)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DISubroutineType(types: !746)
!746 = !{!182, !655}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !708, file: !15, line: 2070, baseType: !740, size: 64, offset: 704)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !708, file: !15, line: 2071, baseType: !744, size: 64, offset: 768)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !708, file: !15, line: 2072, baseType: !750, size: 64, offset: 832)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DISubroutineType(types: !752)
!752 = !{!182, !71, !753}
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !15, line: 62, flags: DIFlagFwdDecl)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !708, file: !15, line: 2073, baseType: !756, size: 64, offset: 896)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{!182, !655, !759, !196}
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !708, file: !15, line: 2074, baseType: !684, size: 64, offset: 960)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !708, file: !15, line: 2076, baseType: !762, size: 64, offset: 1024)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DISubroutineType(types: !764)
!764 = !{!182, !765, !71}
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !767, line: 17, size: 960, elements: !768)
!767 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!768 = !{!769, !770, !774, !775, !776, !777, !778, !779, !780, !802, !803, !806}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !766, file: !767, line: 18, baseType: !196, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !766, file: !767, line: 19, baseType: !771, size: 64, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !63, line: 61, baseType: !772)
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !134, line: 72, baseType: !773)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !134, line: 16, baseType: !473)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !766, file: !767, line: 20, baseType: !771, size: 64, offset: 128)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !766, file: !767, line: 21, baseType: !771, size: 64, offset: 192)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !766, file: !767, line: 22, baseType: !771, size: 64, offset: 256)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !766, file: !767, line: 23, baseType: !257, size: 64, offset: 320)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !766, file: !767, line: 24, baseType: !257, size: 64, offset: 384)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !766, file: !767, line: 25, baseType: !344, size: 256, offset: 448)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !766, file: !767, line: 26, baseType: !781, size: 64, offset: 704)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !783)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !767, line: 32, size: 256, elements: !784)
!784 = !{!785, !790, !794, !798}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !783, file: !767, line: 33, baseType: !786, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DISubroutineType(types: !788)
!788 = !{!56, !765, !789}
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !783, file: !767, line: 34, baseType: !791, size: 64, offset: 64)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DISubroutineType(types: !793)
!793 = !{null, !765, !56}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !783, file: !767, line: 35, baseType: !795, size: 64, offset: 128)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DISubroutineType(types: !797)
!797 = !{!56, !765, !56, !789}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !783, file: !767, line: 36, baseType: !799, size: 64, offset: 192)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DISubroutineType(types: !801)
!801 = !{!182, !765, !56}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !766, file: !767, line: 27, baseType: !182, size: 32, offset: 768)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !766, file: !767, line: 28, baseType: !804, size: 64, offset: 832)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !273)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !766, file: !767, line: 29, baseType: !56, size: 64, offset: 896)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !708, file: !15, line: 2077, baseType: !762, size: 64, offset: 1088)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !708, file: !15, line: 2078, baseType: !762, size: 64, offset: 1152)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !708, file: !15, line: 2079, baseType: !762, size: 64, offset: 1216)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !708, file: !15, line: 2081, baseType: !811, size: 64, offset: 1280)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DISubroutineType(types: !813)
!813 = !{!814, !655, !182, !196, !771, !257}
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !63, line: 66, baseType: !815)
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !134, line: 73, baseType: !816)
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !134, line: 15, baseType: !268)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !708, file: !15, line: 2082, baseType: !818, size: 64, offset: 1344)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DISubroutineType(types: !820)
!820 = !{!814, !655, !182, !166, !771, !257}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !708, file: !15, line: 2083, baseType: !822, size: 64, offset: 1408)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DISubroutineType(types: !824)
!824 = !{!825, !119}
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !20, line: 296, size: 1664, elements: !828)
!828 = !{!829, !830, !831, !832, !833, !834, !835, !836, !837, !853, !854, !855}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !827, file: !20, line: 297, baseType: !62, size: 128)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !827, file: !20, line: 298, baseType: !136, size: 128, offset: 128)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !827, file: !20, line: 299, baseType: !136, size: 128, offset: 256)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !827, file: !20, line: 300, baseType: !136, size: 128, offset: 384)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !827, file: !20, line: 301, baseType: !344, size: 256, offset: 512)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !827, file: !20, line: 302, baseType: !295, size: 32, offset: 768)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !827, file: !20, line: 303, baseType: !315, size: 32, offset: 800)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !827, file: !20, line: 304, baseType: !655, size: 64, offset: 832)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !827, file: !20, line: 305, baseType: !838, size: 64, offset: 896)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !20, line: 68, size: 64, elements: !839)
!839 = !{!840, !852}
!840 = !DIDerivedType(tag: DW_TAG_member, scope: !838, file: !20, line: 69, baseType: !841, size: 32)
!841 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !838, file: !20, line: 69, size: 32, elements: !842)
!842 = !{!843, !844, !845}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !841, file: !20, line: 70, baseType: !127, size: 32)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !841, file: !20, line: 71, baseType: !142, size: 32)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !841, file: !20, line: 72, baseType: !846, size: 32)
!846 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !847, line: 24, baseType: !848)
!847 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !847, line: 22, size: 32, elements: !849)
!849 = !{!850}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !848, file: !847, line: 23, baseType: !851, size: 32)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !847, line: 20, baseType: !133)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !838, file: !20, line: 74, baseType: !19, size: 32, offset: 32)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !827, file: !20, line: 306, baseType: !257, size: 64, offset: 960)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !827, file: !20, line: 307, baseType: !473, size: 64, offset: 1024)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !827, file: !20, line: 308, baseType: !856, size: 576, offset: 1088)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !20, line: 205, size: 576, elements: !857)
!857 = !{!858, !860, !861, !862, !863, !864, !865, !866, !867}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !856, file: !20, line: 206, baseType: !859, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !20, line: 66, baseType: !259)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !856, file: !20, line: 207, baseType: !859, size: 64, offset: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !856, file: !20, line: 208, baseType: !859, size: 64, offset: 128)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !856, file: !20, line: 209, baseType: !859, size: 64, offset: 192)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !856, file: !20, line: 210, baseType: !859, size: 64, offset: 256)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !856, file: !20, line: 211, baseType: !859, size: 64, offset: 320)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !856, file: !20, line: 212, baseType: !859, size: 64, offset: 384)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !856, file: !20, line: 213, baseType: !265, size: 64, offset: 448)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !856, file: !20, line: 214, baseType: !265, size: 64, offset: 512)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !708, file: !15, line: 2085, baseType: !869, size: 64, offset: 1472)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DISubroutineType(types: !871)
!871 = !{!268, !655, !872}
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !874, line: 15, size: 256, elements: !875)
!874 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!875 = !{!876, !878, !879, !880, !881}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !873, file: !874, line: 16, baseType: !877, size: 32)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !63, line: 154, baseType: !7)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !873, file: !874, line: 19, baseType: !182, size: 32, offset: 32)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !873, file: !874, line: 26, baseType: !473, size: 64, offset: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !873, file: !874, line: 33, baseType: !473, size: 64, offset: 128)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !873, file: !874, line: 36, baseType: !882, size: 64, offset: 192)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !874, line: 36, flags: DIFlagFwdDecl)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !708, file: !15, line: 2087, baseType: !869, size: 64, offset: 1536)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !708, file: !15, line: 2089, baseType: !684, size: 64, offset: 1600)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !656, file: !15, line: 1198, baseType: !887, size: 64, offset: 448)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !889)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !20, line: 324, size: 704, elements: !890)
!890 = !{!891, !895, !899, !903, !904, !905, !906, !907, !912, !917, !921}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !889, file: !20, line: 325, baseType: !892, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DISubroutineType(types: !894)
!894 = !{!182, !826}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !889, file: !20, line: 326, baseType: !896, size: 64, offset: 64)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DISubroutineType(types: !898)
!898 = !{!826, !655, !182}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !889, file: !20, line: 327, baseType: !900, size: 64, offset: 128)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DISubroutineType(types: !902)
!902 = !{null, !826}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !889, file: !20, line: 328, baseType: !892, size: 64, offset: 192)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !889, file: !20, line: 329, baseType: !892, size: 64, offset: 256)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !889, file: !20, line: 330, baseType: !892, size: 64, offset: 320)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !889, file: !20, line: 331, baseType: !736, size: 64, offset: 384)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !889, file: !20, line: 334, baseType: !908, size: 64, offset: 448)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DISubroutineType(types: !910)
!910 = !{!911, !119}
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !889, file: !20, line: 335, baseType: !913, size: 64, offset: 512)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DISubroutineType(types: !915)
!915 = !{!182, !119, !916}
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !889, file: !20, line: 337, baseType: !918, size: 64, offset: 576)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DISubroutineType(types: !920)
!920 = !{!182, !119, !911}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !889, file: !20, line: 339, baseType: !922, size: 64, offset: 640)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DISubroutineType(types: !924)
!924 = !{!182, !655, !925}
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !656, file: !15, line: 1199, baseType: !927, size: 64, offset: 512)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !929)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !20, line: 430, size: 704, elements: !930)
!930 = !{!931, !937, !938, !942, !943, !944, !959, !982, !986, !987, !1010}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !929, file: !20, line: 431, baseType: !932, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DISubroutineType(types: !934)
!934 = !{!182, !655, !182, !182, !935}
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !646)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !929, file: !20, line: 432, baseType: !736, size: 64, offset: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !929, file: !20, line: 433, baseType: !939, size: 64, offset: 128)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DISubroutineType(types: !941)
!941 = !{!182, !655, !7}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !929, file: !20, line: 434, baseType: !939, size: 64, offset: 192)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !929, file: !20, line: 435, baseType: !736, size: 64, offset: 256)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !929, file: !20, line: 436, baseType: !945, size: 64, offset: 320)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DISubroutineType(types: !947)
!947 = !{!182, !655, !182, !948}
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !20, line: 417, size: 256, elements: !950)
!950 = !{!951, !952, !953, !954, !955, !956, !957, !958}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !949, file: !20, line: 418, baseType: !182, size: 32)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !949, file: !20, line: 419, baseType: !7, size: 32, offset: 32)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !949, file: !20, line: 420, baseType: !7, size: 32, offset: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !949, file: !20, line: 422, baseType: !7, size: 32, offset: 96)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !949, file: !20, line: 423, baseType: !7, size: 32, offset: 128)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !949, file: !20, line: 424, baseType: !7, size: 32, offset: 160)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !949, file: !20, line: 425, baseType: !7, size: 32, offset: 192)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !949, file: !20, line: 426, baseType: !7, size: 32, offset: 224)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !929, file: !20, line: 437, baseType: !960, size: 64, offset: 384)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DISubroutineType(types: !962)
!962 = !{!182, !655, !838, !963}
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !20, line: 345, size: 960, elements: !965)
!965 = !{!966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !964, file: !20, line: 346, baseType: !182, size: 32)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !964, file: !20, line: 347, baseType: !111, size: 64, offset: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !964, file: !20, line: 348, baseType: !111, size: 64, offset: 128)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !964, file: !20, line: 349, baseType: !111, size: 64, offset: 192)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !964, file: !20, line: 350, baseType: !111, size: 64, offset: 256)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !964, file: !20, line: 351, baseType: !111, size: 64, offset: 320)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !964, file: !20, line: 352, baseType: !111, size: 64, offset: 384)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !964, file: !20, line: 353, baseType: !342, size: 64, offset: 448)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !964, file: !20, line: 355, baseType: !342, size: 64, offset: 512)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !964, file: !20, line: 356, baseType: !182, size: 32, offset: 576)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !964, file: !20, line: 357, baseType: !182, size: 32, offset: 608)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !964, file: !20, line: 358, baseType: !111, size: 64, offset: 640)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !964, file: !20, line: 359, baseType: !111, size: 64, offset: 704)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !964, file: !20, line: 360, baseType: !111, size: 64, offset: 768)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !964, file: !20, line: 361, baseType: !342, size: 64, offset: 832)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !964, file: !20, line: 362, baseType: !182, size: 32, offset: 896)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !929, file: !20, line: 438, baseType: !983, size: 64, offset: 448)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DISubroutineType(types: !985)
!985 = !{!182, !655, !925, !963}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !929, file: !20, line: 440, baseType: !960, size: 64, offset: 512)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !929, file: !20, line: 441, baseType: !988, size: 64, offset: 576)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DISubroutineType(types: !990)
!990 = !{!182, !655, !991}
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !20, line: 411, size: 1408, elements: !993)
!993 = !{!994, !995}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !992, file: !20, line: 412, baseType: !7, size: 32)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !992, file: !20, line: 413, baseType: !996, size: 1344, offset: 64)
!996 = !DICompositeType(tag: DW_TAG_array_type, baseType: !997, size: 1344, elements: !381)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !20, line: 397, size: 448, elements: !998)
!998 = !{!999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1009}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !997, file: !20, line: 398, baseType: !7, size: 32)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !997, file: !20, line: 399, baseType: !7, size: 32, offset: 32)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !997, file: !20, line: 401, baseType: !7, size: 32, offset: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !997, file: !20, line: 402, baseType: !7, size: 32, offset: 96)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !997, file: !20, line: 403, baseType: !7, size: 32, offset: 128)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !997, file: !20, line: 404, baseType: !7, size: 32, offset: 160)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !997, file: !20, line: 405, baseType: !7, size: 32, offset: 192)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !997, file: !20, line: 406, baseType: !113, size: 64, offset: 256)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !997, file: !20, line: 407, baseType: !1008, size: 64, offset: 320)
!1008 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !63, line: 132, baseType: !111)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !997, file: !20, line: 408, baseType: !1008, size: 64, offset: 384)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !929, file: !20, line: 442, baseType: !939, size: 64, offset: 640)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !656, file: !15, line: 1200, baseType: !1012, size: 64, offset: 576)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1014)
!1014 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !15, line: 54, flags: DIFlagFwdDecl)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !656, file: !15, line: 1201, baseType: !473, size: 64, offset: 640)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !656, file: !15, line: 1202, baseType: !473, size: 64, offset: 704)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !656, file: !15, line: 1203, baseType: !473, size: 64, offset: 768)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !656, file: !15, line: 1204, baseType: !71, size: 64, offset: 832)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !656, file: !15, line: 1205, baseType: !478, size: 320, offset: 896)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !656, file: !15, line: 1206, baseType: !182, size: 32, offset: 1216)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !656, file: !15, line: 1207, baseType: !315, size: 32, offset: 1248)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !656, file: !15, line: 1209, baseType: !56, size: 64, offset: 1280)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !656, file: !15, line: 1211, baseType: !1024, size: 64, offset: 1344)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1027)
!1027 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !15, line: 1211, flags: DIFlagFwdDecl)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !656, file: !15, line: 1223, baseType: !1029, size: 64, offset: 1408)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !88, line: 34, size: 64, elements: !1030)
!1030 = !{!1031}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1029, file: !88, line: 35, baseType: !91, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !656, file: !15, line: 1224, baseType: !136, size: 128, offset: 1472)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !656, file: !15, line: 1225, baseType: !1034, size: 64, offset: 1600)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !15, line: 1225, flags: DIFlagFwdDecl)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !656, file: !15, line: 1226, baseType: !1037, size: 64, offset: 1664)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !15, line: 1226, flags: DIFlagFwdDecl)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !656, file: !15, line: 1227, baseType: !1040, size: 64, offset: 1728)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !15, line: 50, flags: DIFlagFwdDecl)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !656, file: !15, line: 1228, baseType: !1043, size: 64, offset: 1792)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !15, line: 1228, flags: DIFlagFwdDecl)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !656, file: !15, line: 1229, baseType: !62, size: 128, offset: 1856)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !656, file: !15, line: 1230, baseType: !7, size: 32, offset: 1984)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !656, file: !15, line: 1231, baseType: !1048, size: 2496, offset: 2048)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !20, line: 521, size: 2496, elements: !1049)
!1049 = !{!1050, !1051, !1052, !1054, !1086}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1048, file: !20, line: 522, baseType: !7, size: 32)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1048, file: !20, line: 523, baseType: !478, size: 320, offset: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1048, file: !20, line: 524, baseType: !1053, size: 192, offset: 384)
!1053 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 192, elements: !381)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1048, file: !20, line: 525, baseType: !1055, size: 1728, offset: 576)
!1055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1056, size: 1728, elements: !381)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !20, line: 222, size: 576, elements: !1057)
!1057 = !{!1058, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1056, file: !20, line: 223, baseType: !1059, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !20, line: 445, size: 256, elements: !1061)
!1061 = !{!1062, !1063, !1076, !1077}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1060, file: !20, line: 446, baseType: !182, size: 32)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1060, file: !20, line: 447, baseType: !1064, size: 64, offset: 64)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1066)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !20, line: 312, size: 512, elements: !1067)
!1067 = !{!1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1066, file: !20, line: 313, baseType: !736, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1066, file: !20, line: 314, baseType: !736, size: 64, offset: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1066, file: !20, line: 315, baseType: !736, size: 64, offset: 128)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1066, file: !20, line: 316, baseType: !736, size: 64, offset: 192)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1066, file: !20, line: 317, baseType: !892, size: 64, offset: 256)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1066, file: !20, line: 318, baseType: !892, size: 64, offset: 320)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1066, file: !20, line: 319, baseType: !892, size: 64, offset: 384)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1066, file: !20, line: 320, baseType: !922, size: 64, offset: 448)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1060, file: !20, line: 448, baseType: !688, size: 64, offset: 128)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1060, file: !20, line: 449, baseType: !1059, size: 64, offset: 192)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1056, file: !20, line: 224, baseType: !182, size: 32, offset: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1056, file: !20, line: 226, baseType: !136, size: 128, offset: 128)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1056, file: !20, line: 227, baseType: !473, size: 64, offset: 256)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1056, file: !20, line: 228, baseType: !7, size: 32, offset: 320)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1056, file: !20, line: 229, baseType: !7, size: 32, offset: 352)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1056, file: !20, line: 230, baseType: !859, size: 64, offset: 384)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1056, file: !20, line: 231, baseType: !859, size: 64, offset: 448)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1056, file: !20, line: 232, baseType: !56, size: 64, offset: 512)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1048, file: !20, line: 526, baseType: !1087, size: 192, offset: 2304)
!1087 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1064, size: 192, elements: !381)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !656, file: !15, line: 1233, baseType: !1089, size: 2368, offset: 4544)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !15, line: 1184, size: 2368, elements: !1090)
!1090 = !{!1091, !1092, !1093}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1089, file: !15, line: 1185, baseType: !124, size: 16)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1089, file: !15, line: 1186, baseType: !124, size: 16, offset: 16)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1089, file: !15, line: 1187, baseType: !1094, size: 2304, offset: 64)
!1094 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1095, size: 2304, elements: !381)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1096, line: 12, size: 768, elements: !1097)
!1096 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1097 = !{!1098, !1106, !1108, !2791, !2792}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1095, file: !1096, line: 13, baseType: !1099, size: 384)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1100, line: 17, size: 384, elements: !1101)
!1100 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1101 = !{!1102, !1103, !1104, !1105}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1099, file: !1100, line: 18, baseType: !182, size: 32)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1099, file: !1100, line: 19, baseType: !182, size: 32, offset: 32)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1099, file: !1100, line: 20, baseType: !405, size: 192, offset: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1099, file: !1100, line: 22, baseType: !285, size: 128, align: 64, offset: 256)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1095, file: !1096, line: 14, baseType: !1107, size: 64, offset: 384)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1095, file: !1096, line: 15, baseType: !1109, size: 64, offset: 448)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1110, line: 16, size: 64, elements: !1111)
!1110 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1111 = !{!1112}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1109, file: !1110, line: 17, baseType: !1113, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1115, line: 746, size: 58368, elements: !1116)
!1115 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1116 = !{!1117, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1197, !1208, !1303, !1307, !1310, !1341, !1342, !1343, !1344, !1355, !1357, !1358, !1359, !1360, !1361, !1362, !1373, !1374, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1391, !1392, !1399, !1400, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1630, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1645, !1646, !1647, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1689, !1695, !1696, !1697, !1698, !1699, !1703, !1706, !1713, !1718, !1721, !1724, !1727, !1775, !1915, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1957, !1958, !1959, !1968, !1976, !1977, !1978, !1979, !1980, !1985, !1986, !1987, !1990, !1991, !1994, !1997, !2000, !2008, !2011, !2012, !2098, !2099, !2100, !2101, !2102, !2108, !2109, !2110, !2111, !2114, !2115, !2118, !2121, !2122, !2125, !2126, !2127, !2130, !2131, !2132, !2135, !2136, !2137, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2169, !2172, !2447, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2459, !2531, !2533, !2534, !2535, !2536, !2537, !2549, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2566, !2567, !2568}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1114, file: !1115, line: 752, baseType: !1118, size: 192)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1119, line: 56, size: 192, elements: !1120)
!1119 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1120 = !{!1121, !1122, !1123, !1124}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1118, file: !1119, line: 57, baseType: !473, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1118, file: !1119, line: 58, baseType: !473, size: 64, offset: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1118, file: !1119, line: 59, baseType: !105, size: 32, offset: 128)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1118, file: !1119, line: 61, baseType: !105, size: 32, offset: 160)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1114, file: !1115, line: 754, baseType: !7, size: 32, offset: 192)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1114, file: !1115, line: 767, baseType: !56, size: 64, offset: 256)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1114, file: !1115, line: 768, baseType: !389, size: 32, offset: 320)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1114, file: !1115, line: 770, baseType: !7, size: 32, offset: 352)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1114, file: !1115, line: 771, baseType: !7, size: 32, offset: 384)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1114, file: !1115, line: 774, baseType: !182, size: 32, offset: 416)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1114, file: !1115, line: 775, baseType: !1132, size: 128, offset: 448)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1133, line: 58, size: 128, elements: !1134)
!1133 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1134 = !{!1135, !1136, !1141, !1142}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1132, file: !1133, line: 59, baseType: !279, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, scope: !1132, file: !1133, line: 60, baseType: !1137, size: 32, offset: 64)
!1137 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1132, file: !1133, line: 60, size: 32, elements: !1138)
!1138 = !{!1139, !1140}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1137, file: !1133, line: 61, baseType: !7, size: 32)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1137, file: !1133, line: 62, baseType: !315, size: 32)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1132, file: !1133, line: 65, baseType: !330, size: 16, offset: 96)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1132, file: !1133, line: 65, baseType: !330, size: 16, offset: 112)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1114, file: !1115, line: 776, baseType: !7, size: 32, offset: 576)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1114, file: !1115, line: 777, baseType: !473, size: 64, offset: 640)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1114, file: !1115, line: 778, baseType: !1113, size: 64, offset: 704)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1114, file: !1115, line: 787, baseType: !182, size: 32, offset: 768)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1114, file: !1115, line: 788, baseType: !182, size: 32, offset: 800)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1114, file: !1115, line: 790, baseType: !182, size: 32, offset: 832)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1114, file: !1115, line: 792, baseType: !182, size: 32, offset: 864)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1114, file: !1115, line: 793, baseType: !182, size: 32, offset: 896)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1114, file: !1115, line: 794, baseType: !182, size: 32, offset: 928)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1114, file: !1115, line: 795, baseType: !7, size: 32, offset: 960)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1114, file: !1115, line: 797, baseType: !1154, size: 2048, offset: 1024)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1115, line: 551, size: 2048, elements: !1155)
!1155 = !{!1156, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1176, !1179, !1180, !1181}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1154, file: !1115, line: 553, baseType: !1157, size: 128)
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1115, line: 411, size: 128, elements: !1158)
!1158 = !{!1159, !1160}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1157, file: !1115, line: 412, baseType: !473, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1157, file: !1115, line: 413, baseType: !105, size: 32, offset: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1154, file: !1115, line: 554, baseType: !469, size: 192, align: 64, offset: 128)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1154, file: !1115, line: 555, baseType: !111, size: 64, offset: 320)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1154, file: !1115, line: 556, baseType: !111, size: 64, offset: 384)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1154, file: !1115, line: 558, baseType: !136, size: 128, offset: 448)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1154, file: !1115, line: 559, baseType: !7, size: 32, offset: 576)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1154, file: !1115, line: 561, baseType: !111, size: 64, offset: 640)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1154, file: !1115, line: 562, baseType: !111, size: 64, offset: 704)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1154, file: !1115, line: 563, baseType: !111, size: 64, offset: 768)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1154, file: !1115, line: 564, baseType: !111, size: 64, offset: 832)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1154, file: !1115, line: 565, baseType: !342, size: 64, offset: 896)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1154, file: !1115, line: 566, baseType: !111, size: 64, offset: 960)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1154, file: !1115, line: 568, baseType: !111, size: 64, offset: 1024)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1154, file: !1115, line: 571, baseType: !182, size: 32, offset: 1088)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1154, file: !1115, line: 572, baseType: !1175, size: 64, offset: 1152)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1154, file: !1115, line: 574, baseType: !1177, size: 64, offset: 1216)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1115, line: 49, flags: DIFlagFwdDecl)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1154, file: !1115, line: 576, baseType: !1177, size: 64, offset: 1280)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1154, file: !1115, line: 578, baseType: !473, size: 64, offset: 1344)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1154, file: !1115, line: 588, baseType: !1182, size: 512, align: 512, offset: 1536)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1115, line: 497, size: 512, align: 512, elements: !1183)
!1183 = !{!1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1182, file: !1115, line: 498, baseType: !111, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1182, file: !1115, line: 499, baseType: !111, size: 64, offset: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1182, file: !1115, line: 500, baseType: !111, size: 64, offset: 128)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1182, file: !1115, line: 501, baseType: !105, size: 32, offset: 192)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1182, file: !1115, line: 502, baseType: !105, size: 32, offset: 224)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1182, file: !1115, line: 503, baseType: !473, size: 64, offset: 256)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1182, file: !1115, line: 504, baseType: !473, size: 64, offset: 320)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1182, file: !1115, line: 505, baseType: !473, size: 64, offset: 384)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1182, file: !1115, line: 506, baseType: !1193, size: 64, align: 64, offset: 448)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1115, line: 445, size: 64, align: 64, elements: !1194)
!1194 = !{!1195, !1196}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1193, file: !1115, line: 446, baseType: !7, size: 32)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1193, file: !1115, line: 447, baseType: !7, size: 32, offset: 32)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1114, file: !1115, line: 798, baseType: !1198, size: 384, offset: 3072)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1115, line: 592, size: 384, elements: !1199)
!1199 = !{!1200, !1201, !1202, !1203, !1204, !1205, !1206}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1198, file: !1115, line: 593, baseType: !136, size: 128)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1198, file: !1115, line: 594, baseType: !473, size: 64, offset: 128)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1198, file: !1115, line: 595, baseType: !473, size: 64, offset: 192)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1198, file: !1115, line: 596, baseType: !7, size: 32, offset: 256)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1198, file: !1115, line: 597, baseType: !124, size: 16, offset: 288)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1198, file: !1115, line: 598, baseType: !124, size: 16, offset: 304)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1198, file: !1115, line: 600, baseType: !1207, size: 64, offset: 320)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1114, file: !1115, line: 799, baseType: !1209, size: 1792, offset: 3456)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1115, line: 610, size: 1792, elements: !1210)
!1210 = !{!1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1300, !1301}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1209, file: !1115, line: 611, baseType: !469, size: 192, align: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1209, file: !1115, line: 618, baseType: !111, size: 64, offset: 192)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1209, file: !1115, line: 619, baseType: !111, size: 64, offset: 256)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1209, file: !1115, line: 620, baseType: !111, size: 64, offset: 320)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1209, file: !1115, line: 621, baseType: !111, size: 64, offset: 384)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1209, file: !1115, line: 622, baseType: !111, size: 64, offset: 448)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1209, file: !1115, line: 629, baseType: !342, size: 64, offset: 512)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1209, file: !1115, line: 630, baseType: !111, size: 64, offset: 576)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1209, file: !1115, line: 631, baseType: !7, size: 32, offset: 640)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1209, file: !1115, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1209, file: !1115, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1209, file: !1115, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1209, file: !1115, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1209, file: !1115, line: 662, baseType: !1225, size: 512, offset: 704)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !26, line: 118, size: 512, elements: !1226)
!1226 = !{!1227, !1235, !1236, !1241, !1296, !1297, !1298, !1299}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1225, file: !26, line: 119, baseType: !1228, size: 256)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1229, line: 9, size: 256, elements: !1230)
!1229 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1230 = !{!1231, !1232}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1228, file: !1229, line: 10, baseType: !469, size: 192, align: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1228, file: !1229, line: 11, baseType: !1233, size: 64, offset: 192)
!1233 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1234, line: 29, baseType: !342)
!1234 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1225, file: !26, line: 120, baseType: !1233, size: 64, offset: 256)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1225, file: !26, line: 121, baseType: !1237, size: 64, offset: 320)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{!25, !1240}
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1225, file: !26, line: 122, baseType: !1242, size: 64, offset: 384)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !26, line: 159, size: 512, align: 512, elements: !1244)
!1244 = !{!1245, !1270, !1271, !1274, !1279, !1280, !1291, !1295}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1243, file: !26, line: 160, baseType: !1246, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !26, line: 215, size: 4608, align: 512, elements: !1248)
!1248 = !{!1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1247, file: !26, line: 216, baseType: !349, size: 32)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1247, file: !26, line: 217, baseType: !7, size: 32, offset: 32)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1247, file: !26, line: 218, baseType: !7, size: 32, offset: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1247, file: !26, line: 219, baseType: !7, size: 32, offset: 96)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1247, file: !26, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1247, file: !26, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1247, file: !26, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1247, file: !26, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1247, file: !26, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1247, file: !26, line: 226, baseType: !7, size: 32, offset: 160)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1247, file: !26, line: 227, baseType: !124, size: 16, offset: 192)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1247, file: !26, line: 228, baseType: !124, size: 16, offset: 208)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1247, file: !26, line: 229, baseType: !7, size: 32, offset: 224)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1247, file: !26, line: 235, baseType: !1233, size: 64, offset: 256)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1247, file: !26, line: 236, baseType: !1240, size: 64, offset: 320)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1247, file: !26, line: 237, baseType: !1233, size: 64, offset: 384)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1247, file: !26, line: 238, baseType: !1240, size: 64, offset: 448)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1247, file: !26, line: 239, baseType: !1267, size: 4096, align: 512, offset: 512)
!1267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1243, size: 4096, align: 512, elements: !1268)
!1268 = !{!1269}
!1269 = !DISubrange(count: 8)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1243, file: !26, line: 161, baseType: !7, size: 32, offset: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1243, file: !26, line: 162, baseType: !1272, size: 32, offset: 96)
!1272 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !63, line: 32, baseType: !1273)
!1273 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !134, line: 96, baseType: !182)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1243, file: !26, line: 163, baseType: !1275, size: 32, offset: 128)
!1275 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !78, line: 274, baseType: !1276)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !78, line: 274, size: 32, elements: !1277)
!1277 = !{!1278}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1276, file: !78, line: 274, baseType: !82, size: 32)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1243, file: !26, line: 164, baseType: !1240, size: 64, offset: 192)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1243, file: !26, line: 165, baseType: !1281, size: 128, offset: 256)
!1281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1229, line: 14, size: 128, elements: !1282)
!1282 = !{!1283}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1281, file: !1229, line: 15, baseType: !1284, size: 128)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !470, line: 26, size: 128, elements: !1285)
!1285 = !{!1286, !1290}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1284, file: !470, line: 27, baseType: !1287, size: 64)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !470, line: 12, size: 64, elements: !1288)
!1288 = !{!1289}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1287, file: !470, line: 13, baseType: !475, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1284, file: !470, line: 28, baseType: !475, size: 64, offset: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1243, file: !26, line: 166, baseType: !1292, size: 64, offset: 384)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DISubroutineType(types: !1294)
!1294 = !{!1233}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1243, file: !26, line: 167, baseType: !1233, size: 64, offset: 448)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1225, file: !26, line: 123, baseType: !323, size: 8, offset: 448)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1225, file: !26, line: 124, baseType: !323, size: 8, offset: 456)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1225, file: !26, line: 125, baseType: !323, size: 8, offset: 464)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1225, file: !26, line: 126, baseType: !323, size: 8, offset: 472)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1209, file: !1115, line: 671, baseType: !1225, size: 512, offset: 1216)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1209, file: !1115, line: 679, baseType: !1302, size: 64, offset: 1728)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1114, file: !1115, line: 800, baseType: !1304, size: 64, offset: 5248)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1306)
!1306 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1115, line: 800, flags: DIFlagFwdDecl)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1114, file: !1115, line: 809, baseType: !1308, size: 64, offset: 5312)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1115, line: 70, flags: DIFlagFwdDecl)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1114, file: !1115, line: 825, baseType: !1311, size: 2048, align: 512, offset: 5632)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1115, line: 509, size: 2048, align: 512, elements: !1312)
!1312 = !{!1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1311, file: !1115, line: 511, baseType: !111, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1311, file: !1115, line: 512, baseType: !111, size: 64, offset: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1311, file: !1115, line: 513, baseType: !111, size: 64, offset: 128)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1311, file: !1115, line: 514, baseType: !111, size: 64, offset: 192)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1311, file: !1115, line: 515, baseType: !111, size: 64, offset: 256)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1311, file: !1115, line: 516, baseType: !111, size: 64, offset: 320)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1311, file: !1115, line: 518, baseType: !111, size: 64, offset: 384)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1311, file: !1115, line: 519, baseType: !111, size: 64, offset: 448)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1311, file: !1115, line: 520, baseType: !342, size: 64, offset: 512)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1311, file: !1115, line: 522, baseType: !111, size: 64, offset: 576)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1311, file: !1115, line: 523, baseType: !111, size: 64, offset: 640)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1311, file: !1115, line: 524, baseType: !342, size: 64, offset: 704)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1311, file: !1115, line: 526, baseType: !342, size: 64, offset: 768)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1311, file: !1115, line: 527, baseType: !111, size: 64, offset: 832)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1311, file: !1115, line: 529, baseType: !111, size: 64, offset: 896)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1311, file: !1115, line: 530, baseType: !111, size: 64, offset: 960)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1311, file: !1115, line: 531, baseType: !111, size: 64, offset: 1024)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1311, file: !1115, line: 532, baseType: !111, size: 64, offset: 1088)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1311, file: !1115, line: 533, baseType: !111, size: 64, offset: 1152)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1311, file: !1115, line: 535, baseType: !111, size: 64, offset: 1216)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1311, file: !1115, line: 536, baseType: !111, size: 64, offset: 1280)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1311, file: !1115, line: 537, baseType: !111, size: 64, offset: 1344)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1311, file: !1115, line: 538, baseType: !111, size: 64, offset: 1408)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1311, file: !1115, line: 539, baseType: !111, size: 64, offset: 1472)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1311, file: !1115, line: 540, baseType: !111, size: 64, offset: 1536)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1311, file: !1115, line: 541, baseType: !111, size: 64, offset: 1600)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1311, file: !1115, line: 542, baseType: !111, size: 64, offset: 1664)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1311, file: !1115, line: 543, baseType: !111, size: 64, offset: 1728)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1114, file: !1115, line: 833, baseType: !7, size: 32, offset: 7680)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1114, file: !1115, line: 836, baseType: !7, size: 32, offset: 7712)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1114, file: !1115, line: 837, baseType: !182, size: 32, offset: 7744)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1114, file: !1115, line: 838, baseType: !1345, size: 64, offset: 7808)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1347)
!1347 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1348, line: 19, baseType: !1349)
!1348 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1348, line: 19, size: 64, elements: !1350)
!1350 = !{!1351}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1349, file: !1348, line: 19, baseType: !1352, size: 64)
!1352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !473, size: 64, elements: !1353)
!1353 = !{!1354}
!1354 = !DISubrange(count: 1)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1114, file: !1115, line: 839, baseType: !1356, size: 64, offset: 7872)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1114, file: !1115, line: 840, baseType: !1347, size: 64, offset: 7936)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1114, file: !1115, line: 841, baseType: !56, size: 64, offset: 8000)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1114, file: !1115, line: 843, baseType: !124, size: 16, offset: 8064)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1114, file: !1115, line: 845, baseType: !124, size: 16, offset: 8080)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1114, file: !1115, line: 848, baseType: !182, size: 32, offset: 8096)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1114, file: !1115, line: 849, baseType: !1363, size: 32, offset: 8128)
!1363 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1115, line: 718, size: 32, elements: !1364)
!1364 = !{!1365, !1372}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1363, file: !1115, line: 724, baseType: !1366, size: 32)
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1363, file: !1115, line: 719, size: 32, elements: !1367)
!1367 = !{!1368, !1369, !1370, !1371}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1366, file: !1115, line: 720, baseType: !323, size: 8)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1366, file: !1115, line: 721, baseType: !323, size: 8, offset: 8)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1366, file: !1115, line: 722, baseType: !323, size: 8, offset: 16)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1366, file: !1115, line: 723, baseType: !323, size: 8, offset: 24)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1363, file: !1115, line: 725, baseType: !105, size: 32)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1114, file: !1115, line: 850, baseType: !136, size: 128, offset: 8192)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1114, file: !1115, line: 851, baseType: !1375, size: 64, offset: 8320)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1115, line: 60, flags: DIFlagFwdDecl)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1114, file: !1115, line: 855, baseType: !473, size: 64, offset: 8384)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1114, file: !1115, line: 856, baseType: !323, size: 8, offset: 8448)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1114, file: !1115, line: 857, baseType: !323, size: 8, offset: 8456)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1114, file: !1115, line: 858, baseType: !182, size: 32, offset: 8480)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1114, file: !1115, line: 859, baseType: !136, size: 128, offset: 8512)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1114, file: !1115, line: 860, baseType: !182, size: 32, offset: 8640)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1114, file: !1115, line: 861, baseType: !136, size: 128, offset: 8704)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1114, file: !1115, line: 873, baseType: !1385, size: 256, offset: 8832)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1115, line: 376, size: 256, elements: !1386)
!1386 = !{!1387, !1388, !1389, !1390}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1385, file: !1115, line: 381, baseType: !473, size: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1385, file: !1115, line: 384, baseType: !113, size: 64, offset: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1385, file: !1115, line: 389, baseType: !113, size: 64, offset: 128)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1385, file: !1115, line: 392, baseType: !113, size: 64, offset: 192)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1114, file: !1115, line: 875, baseType: !136, size: 128, offset: 9088)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1114, file: !1115, line: 877, baseType: !1393, size: 320, offset: 9216)
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1394, line: 86, size: 320, elements: !1395)
!1394 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1395 = !{!1396, !1397, !1398}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1393, file: !1394, line: 87, baseType: !182, size: 32)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1393, file: !1394, line: 88, baseType: !136, size: 128, offset: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1393, file: !1394, line: 89, baseType: !136, size: 128, offset: 192)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1114, file: !1115, line: 878, baseType: !469, size: 192, align: 64, offset: 9536)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1114, file: !1115, line: 881, baseType: !1401, size: 64, offset: 9728)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1403, line: 733, size: 10240, elements: !1404)
!1403 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!1404 = !{!1405, !1544}
!1405 = !DIDerivedType(tag: DW_TAG_member, scope: !1402, file: !1403, line: 734, baseType: !1406, size: 10240)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1402, file: !1403, line: 734, size: 10240, elements: !1407)
!1407 = !{!1408, !1412, !1425, !1429, !1430, !1431, !1432, !1433, !1434, !1443, !1444, !1445, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1484, !1486, !1489, !1513, !1514, !1515, !1518, !1519, !1520, !1523, !1524, !1525, !1531, !1532}
!1408 = !DIDerivedType(tag: DW_TAG_member, scope: !1406, file: !1403, line: 739, baseType: !1409, size: 512, align: 512)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1406, file: !1403, line: 739, size: 512, align: 512, elements: !1410)
!1410 = !{!1411}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1409, file: !1403, line: 747, baseType: !315, size: 32)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1406, file: !1403, line: 750, baseType: !1413, size: 128, offset: 512)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1414, line: 218, size: 128, elements: !1415)
!1414 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1415 = !{!1416, !1423, !1424}
!1416 = !DIDerivedType(tag: DW_TAG_member, scope: !1413, file: !1414, line: 219, baseType: !1417, size: 32)
!1417 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1413, file: !1414, line: 219, size: 32, elements: !1418)
!1418 = !{!1419, !1420}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1417, file: !1414, line: 220, baseType: !295, size: 32)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1417, file: !1414, line: 221, baseType: !1421)
!1421 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1414, line: 197, baseType: !1422)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1414, line: 197, elements: !696)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1413, file: !1414, line: 223, baseType: !7, size: 32, offset: 32)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1413, file: !1414, line: 224, baseType: !56, size: 64, offset: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1406, file: !1403, line: 752, baseType: !1426, size: 64, offset: 640)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = !DISubroutineType(types: !1428)
!1428 = !{!473, !272, !473, !473, !473, !473}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1406, file: !1403, line: 756, baseType: !473, size: 64, offset: 704)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1406, file: !1403, line: 757, baseType: !473, size: 64, offset: 768)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1406, file: !1403, line: 760, baseType: !473, size: 64, offset: 832)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1406, file: !1403, line: 761, baseType: !473, size: 64, offset: 896)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1406, file: !1403, line: 763, baseType: !473, size: 64, offset: 960)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1406, file: !1403, line: 764, baseType: !1435, size: 64, offset: 1024)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1437, line: 299, baseType: !1438)
!1437 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1437, line: 299, size: 64, elements: !1439)
!1439 = !{!1440}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1438, file: !1437, line: 299, baseType: !1441, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1442, line: 18, baseType: !473)
!1442 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1406, file: !1403, line: 773, baseType: !315, size: 32, offset: 1088)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1406, file: !1403, line: 785, baseType: !315, size: 32, offset: 1120)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1406, file: !1403, line: 795, baseType: !1446, size: 64, offset: 1152)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !1403, line: 726, size: 128, elements: !1448)
!1448 = !{!1449, !1450}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1447, file: !1403, line: 727, baseType: !111, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1447, file: !1403, line: 728, baseType: !182, size: 32, offset: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1406, file: !1403, line: 801, baseType: !473, size: 64, offset: 1216)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1406, file: !1403, line: 804, baseType: !336, size: 64, offset: 1280)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1406, file: !1403, line: 806, baseType: !182, size: 32, offset: 1344)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1406, file: !1403, line: 808, baseType: !295, size: 32, offset: 1376)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1406, file: !1403, line: 823, baseType: !478, size: 320, offset: 1408)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1406, file: !1403, line: 825, baseType: !136, size: 128, offset: 1728)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1406, file: !1403, line: 845, baseType: !182, size: 32, offset: 1856)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1406, file: !1403, line: 849, baseType: !473, size: 64, offset: 1920)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1406, file: !1403, line: 850, baseType: !473, size: 64, offset: 1984)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1406, file: !1403, line: 852, baseType: !473, size: 64, offset: 2048)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1406, file: !1403, line: 853, baseType: !473, size: 64, offset: 2112)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1406, file: !1403, line: 854, baseType: !338, size: 64, offset: 2176)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1406, file: !1403, line: 855, baseType: !473, size: 64, offset: 2240)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1406, file: !1403, line: 856, baseType: !473, size: 64, offset: 2304)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1406, file: !1403, line: 857, baseType: !473, size: 64, offset: 2368)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1406, file: !1403, line: 858, baseType: !473, size: 64, offset: 2432)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1406, file: !1403, line: 865, baseType: !82, size: 32, offset: 2496)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1406, file: !1403, line: 867, baseType: !295, size: 32, offset: 2528)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1406, file: !1403, line: 869, baseType: !473, size: 64, offset: 2560)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1406, file: !1403, line: 869, baseType: !473, size: 64, offset: 2624)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1406, file: !1403, line: 869, baseType: !473, size: 64, offset: 2688)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1406, file: !1403, line: 869, baseType: !473, size: 64, offset: 2752)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1406, file: !1403, line: 870, baseType: !473, size: 64, offset: 2816)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1406, file: !1403, line: 870, baseType: !473, size: 64, offset: 2880)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1406, file: !1403, line: 870, baseType: !473, size: 64, offset: 2944)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1406, file: !1403, line: 871, baseType: !473, size: 64, offset: 3008)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1406, file: !1403, line: 871, baseType: !473, size: 64, offset: 3072)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1406, file: !1403, line: 871, baseType: !473, size: 64, offset: 3136)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1406, file: !1403, line: 871, baseType: !473, size: 64, offset: 3200)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1406, file: !1403, line: 873, baseType: !1481, size: 3328, offset: 3264)
!1481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !473, size: 3328, elements: !1482)
!1482 = !{!1483}
!1483 = !DISubrange(count: 52)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1406, file: !1403, line: 875, baseType: !1485, size: 1280, offset: 6592)
!1485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !591, size: 1280, elements: !401)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1406, file: !1403, line: 877, baseType: !1487, size: 64, offset: 7872)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1403, line: 877, flags: DIFlagFwdDecl)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1406, file: !1403, line: 880, baseType: !1490, size: 1088, offset: 7936)
!1490 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1491, line: 72, baseType: !1492)
!1491 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1491, line: 23, size: 1088, elements: !1493)
!1493 = !{!1494, !1495, !1496, !1497, !1498, !1501, !1502, !1503, !1504, !1508, !1509, !1510}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1492, file: !1491, line: 28, baseType: !111, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1492, file: !1491, line: 38, baseType: !338, size: 64, offset: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1492, file: !1491, line: 40, baseType: !473, size: 64, offset: 128)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1492, file: !1491, line: 43, baseType: !478, size: 320, offset: 192)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1492, file: !1491, line: 44, baseType: !1499, size: 64, offset: 512)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1491, line: 44, flags: DIFlagFwdDecl)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1492, file: !1491, line: 48, baseType: !473, size: 64, offset: 576)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1492, file: !1491, line: 59, baseType: !344, size: 256, offset: 640)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1492, file: !1491, line: 60, baseType: !56, size: 64, offset: 896)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1492, file: !1491, line: 61, baseType: !1505, size: 64, offset: 960)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1507)
!1507 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1491, line: 61, flags: DIFlagFwdDecl)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1492, file: !1491, line: 63, baseType: !315, size: 32, offset: 1024)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1492, file: !1491, line: 69, baseType: !330, size: 16, offset: 1056)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1492, file: !1491, line: 70, baseType: !1511, size: 16, offset: 1072)
!1511 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !106, line: 18, baseType: !1512)
!1512 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !108, line: 23, baseType: !504)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1406, file: !1403, line: 882, baseType: !473, size: 64, offset: 9024)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1406, file: !1403, line: 885, baseType: !295, size: 32, offset: 9088)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1406, file: !1403, line: 886, baseType: !1516, size: 64, offset: 9152)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1403, line: 732, flags: DIFlagFwdDecl)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1406, file: !1403, line: 901, baseType: !616, size: 64, offset: 9216)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1406, file: !1403, line: 904, baseType: !272, size: 64, offset: 9280)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1406, file: !1403, line: 906, baseType: !1521, size: 64, offset: 9344)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1403, line: 906, flags: DIFlagFwdDecl)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1406, file: !1403, line: 930, baseType: !315, size: 32, offset: 9408)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1406, file: !1403, line: 933, baseType: !315, size: 32, offset: 9440)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1406, file: !1403, line: 935, baseType: !1526, size: 64, offset: 9472)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !44, line: 103, size: 64, elements: !1527)
!1527 = !{!1528}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1526, file: !44, line: 104, baseType: !1529, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !44, line: 101, flags: DIFlagFwdDecl)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1406, file: !1403, line: 940, baseType: !336, size: 64, offset: 9536)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1406, file: !1403, line: 942, baseType: !1533, size: 256, offset: 9600)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1534, line: 98, size: 256, elements: !1535)
!1534 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1535 = !{!1536, !1537, !1538}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1533, file: !1534, line: 99, baseType: !336, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1533, file: !1534, line: 100, baseType: !136, size: 128, offset: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1533, file: !1534, line: 101, baseType: !1539, size: 64, offset: 192)
!1539 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1534, line: 21, baseType: !1540)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DISubroutineType(types: !1542)
!1542 = !{null, !1543}
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1402, file: !1403, line: 986, baseType: !1545, offset: 10240)
!1545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !473, elements: !420)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1114, file: !1115, line: 882, baseType: !1401, size: 64, offset: 9792)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1114, file: !1115, line: 884, baseType: !182, size: 32, offset: 9856)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1114, file: !1115, line: 885, baseType: !182, size: 32, offset: 9888)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1114, file: !1115, line: 886, baseType: !182, size: 32, offset: 9920)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1114, file: !1115, line: 888, baseType: !182, size: 32, offset: 9952)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1114, file: !1115, line: 890, baseType: !473, size: 64, offset: 9984)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1114, file: !1115, line: 893, baseType: !7, size: 32, offset: 10048)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1114, file: !1115, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1114, file: !1115, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1114, file: !1115, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1114, file: !1115, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1114, file: !1115, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1114, file: !1115, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1114, file: !1115, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1114, file: !1115, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1114, file: !1115, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1114, file: !1115, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1114, file: !1115, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1114, file: !1115, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1114, file: !1115, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1114, file: !1115, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1114, file: !1115, line: 969, baseType: !473, size: 64, offset: 10176)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1114, file: !1115, line: 971, baseType: !1569, size: 448, offset: 10240)
!1569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !31, line: 25, size: 448, elements: !1570)
!1570 = !{!1571, !1572, !1577}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1569, file: !31, line: 26, baseType: !473, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1569, file: !31, line: 27, baseType: !1573, size: 64, offset: 64)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DISubroutineType(types: !1575)
!1575 = !{!268, !1576}
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, scope: !1569, file: !31, line: 28, baseType: !1578, size: 320, offset: 128)
!1578 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1569, file: !31, line: 28, size: 320, elements: !1579)
!1579 = !{!1580, !1590, !1615}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1578, file: !31, line: 37, baseType: !1581, size: 320)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1578, file: !31, line: 30, size: 320, elements: !1582)
!1582 = !{!1583, !1585, !1586, !1587, !1588, !1589}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1581, file: !31, line: 31, baseType: !1584, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1581, file: !31, line: 32, baseType: !105, size: 32, offset: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1581, file: !31, line: 33, baseType: !105, size: 32, offset: 96)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1581, file: !31, line: 34, baseType: !105, size: 32, offset: 128)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1581, file: !31, line: 35, baseType: !111, size: 64, offset: 192)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1581, file: !31, line: 36, baseType: !1584, size: 64, offset: 256)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1578, file: !31, line: 47, baseType: !1591, size: 192)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1578, file: !31, line: 39, size: 192, elements: !1592)
!1592 = !{!1593, !1594, !1595, !1614}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1591, file: !31, line: 40, baseType: !1272, size: 32)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1591, file: !31, line: 41, baseType: !30, size: 32, offset: 32)
!1595 = !DIDerivedType(tag: DW_TAG_member, scope: !1591, file: !31, line: 42, baseType: !1596, size: 64, offset: 64)
!1596 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1591, file: !31, line: 42, size: 64, elements: !1597)
!1597 = !{!1598, !1606}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1596, file: !31, line: 43, baseType: !1599, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1601, line: 7, size: 128, elements: !1602)
!1601 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1602 = !{!1603, !1605}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1600, file: !1601, line: 8, baseType: !1604, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !134, line: 93, baseType: !259)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1600, file: !1601, line: 9, baseType: !259, size: 64, offset: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1596, file: !31, line: 44, baseType: !1607, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1609, line: 7, size: 64, elements: !1610)
!1609 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1610 = !{!1611, !1613}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1608, file: !1609, line: 8, baseType: !1612, size: 32)
!1612 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1609, line: 5, baseType: !462)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1608, file: !1609, line: 9, baseType: !462, size: 32, offset: 32)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1591, file: !31, line: 46, baseType: !111, size: 64, offset: 128)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1578, file: !31, line: 55, baseType: !1616, size: 256)
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1578, file: !31, line: 49, size: 256, elements: !1617)
!1617 = !{!1618, !1626, !1627, !1628, !1629}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1616, file: !31, line: 50, baseType: !1619, size: 64)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1621, line: 36, size: 64, elements: !1622)
!1621 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!1622 = !{!1623, !1624, !1625}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1620, file: !1621, line: 37, baseType: !182, size: 32)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1620, file: !1621, line: 38, baseType: !504, size: 16, offset: 32)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1620, file: !1621, line: 39, baseType: !504, size: 16, offset: 48)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1616, file: !31, line: 51, baseType: !182, size: 32, offset: 64)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1616, file: !31, line: 52, baseType: !182, size: 32, offset: 96)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1616, file: !31, line: 53, baseType: !473, size: 64, offset: 128)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1616, file: !31, line: 54, baseType: !473, size: 64, offset: 192)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1114, file: !1115, line: 973, baseType: !1631, size: 32, offset: 10688)
!1631 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !63, line: 27, baseType: !1632)
!1632 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !134, line: 28, baseType: !182)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1114, file: !1115, line: 974, baseType: !1631, size: 32, offset: 10720)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1114, file: !1115, line: 978, baseType: !473, size: 64, offset: 10752)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1114, file: !1115, line: 987, baseType: !1113, size: 64, offset: 10816)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1114, file: !1115, line: 990, baseType: !1113, size: 64, offset: 10880)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1114, file: !1115, line: 995, baseType: !136, size: 128, offset: 10944)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1114, file: !1115, line: 996, baseType: !136, size: 128, offset: 11072)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1114, file: !1115, line: 997, baseType: !1113, size: 64, offset: 11200)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1114, file: !1115, line: 1005, baseType: !136, size: 128, offset: 11264)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1114, file: !1115, line: 1006, baseType: !136, size: 128, offset: 11392)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1114, file: !1115, line: 1009, baseType: !385, size: 64, offset: 11520)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1114, file: !1115, line: 1010, baseType: !1644, size: 512, offset: 11584)
!1644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 512, elements: !401)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1114, file: !1115, line: 1011, baseType: !136, size: 128, offset: 12096)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1114, file: !1115, line: 1012, baseType: !136, size: 128, offset: 12224)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1114, file: !1115, line: 1014, baseType: !1648, size: 64, offset: 12352)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1650, line: 26, size: 256, elements: !1651)
!1650 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1651 = !{!1652, !1653}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1649, file: !1650, line: 27, baseType: !7, size: 32)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1649, file: !1650, line: 28, baseType: !1654, size: 192, offset: 64)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1655, line: 43, size: 192, elements: !1656)
!1655 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1656 = !{!1657, !1658}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1654, file: !1655, line: 44, baseType: !349, size: 32)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1654, file: !1655, line: 45, baseType: !136, size: 128, offset: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1114, file: !1115, line: 1017, baseType: !759, size: 64, offset: 12416)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1114, file: !1115, line: 1020, baseType: !759, size: 64, offset: 12480)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1114, file: !1115, line: 1023, baseType: !56, size: 64, offset: 12544)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1114, file: !1115, line: 1025, baseType: !111, size: 64, offset: 12608)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1114, file: !1115, line: 1026, baseType: !111, size: 64, offset: 12672)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1114, file: !1115, line: 1031, baseType: !111, size: 64, offset: 12736)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1114, file: !1115, line: 1032, baseType: !1666, size: 192, offset: 12800)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1115, line: 324, size: 192, elements: !1667)
!1667 = !{!1668, !1669, !1670}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1666, file: !1115, line: 326, baseType: !111, size: 64)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1666, file: !1115, line: 327, baseType: !111, size: 64, offset: 64)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1666, file: !1115, line: 328, baseType: !349, size: 32, offset: 128)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1114, file: !1115, line: 1041, baseType: !473, size: 64, offset: 12992)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1114, file: !1115, line: 1042, baseType: !473, size: 64, offset: 13056)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1114, file: !1115, line: 1045, baseType: !111, size: 64, offset: 13120)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1114, file: !1115, line: 1048, baseType: !111, size: 64, offset: 13184)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1114, file: !1115, line: 1051, baseType: !473, size: 64, offset: 13248)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1114, file: !1115, line: 1052, baseType: !473, size: 64, offset: 13312)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1114, file: !1115, line: 1055, baseType: !1678, size: 640, offset: 13376)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1679, line: 132, size: 640, elements: !1680)
!1679 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1680 = !{!1681, !1687, !1688}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1678, file: !1679, line: 133, baseType: !1682, size: 576)
!1682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1683, size: 576, elements: !381)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1679, line: 117, size: 192, elements: !1684)
!1684 = !{!1685, !1686}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1683, file: !1679, line: 118, baseType: !111, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1683, file: !1679, line: 119, baseType: !1281, size: 128, offset: 64)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1678, file: !1679, line: 134, baseType: !7, size: 32, offset: 576)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1678, file: !1679, line: 135, baseType: !7, size: 32, offset: 608)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1114, file: !1115, line: 1058, baseType: !1690, size: 448, offset: 14016)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1679, line: 144, size: 448, elements: !1691)
!1691 = !{!1692, !1693, !1694}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1690, file: !1679, line: 145, baseType: !285, size: 128, align: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1690, file: !1679, line: 146, baseType: !344, size: 256, offset: 128)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1690, file: !1679, line: 147, baseType: !7, size: 32, offset: 384)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1114, file: !1115, line: 1064, baseType: !427, size: 64, offset: 14464)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1114, file: !1115, line: 1067, baseType: !427, size: 64, offset: 14528)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1114, file: !1115, line: 1070, baseType: !427, size: 64, offset: 14592)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1114, file: !1115, line: 1074, baseType: !454, size: 64, offset: 14656)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1114, file: !1115, line: 1084, baseType: !1700, size: 128, offset: 14720)
!1700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 128, elements: !1701)
!1701 = !{!1702}
!1702 = !DISubrange(count: 16)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1114, file: !1115, line: 1086, baseType: !1704, size: 64, offset: 14848)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1115, line: 55, flags: DIFlagFwdDecl)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1114, file: !1115, line: 1089, baseType: !1707, size: 64, offset: 14912)
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1708, line: 12, size: 64, elements: !1709)
!1708 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1709 = !{!1710}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1707, file: !1708, line: 13, baseType: !1711, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1708, line: 8, flags: DIFlagFwdDecl)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1114, file: !1115, line: 1090, baseType: !1714, size: 128, offset: 14976)
!1714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1715, line: 13, size: 128, elements: !1716)
!1715 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1716 = !{!1717}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1714, file: !1715, line: 14, baseType: !136, size: 128)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1114, file: !1115, line: 1097, baseType: !1719, size: 64, offset: 15104)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !618, line: 7, flags: DIFlagFwdDecl)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1114, file: !1115, line: 1100, baseType: !1722, size: 64, offset: 15168)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1115, line: 1100, flags: DIFlagFwdDecl)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1114, file: !1115, line: 1103, baseType: !1725, size: 64, offset: 15232)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1115, line: 53, flags: DIFlagFwdDecl)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1114, file: !1115, line: 1107, baseType: !1728, size: 64, offset: 15296)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1730, line: 31, size: 576, elements: !1731)
!1730 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!1731 = !{!1732, !1733, !1736, !1739, !1764, !1765, !1768, !1771, !1772}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1729, file: !1730, line: 32, baseType: !389, size: 32)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !1729, file: !1730, line: 33, baseType: !1734, size: 64, offset: 64)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !1730, line: 9, flags: DIFlagFwdDecl)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !1729, file: !1730, line: 34, baseType: !1737, size: 64, offset: 128)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !1730, line: 10, flags: DIFlagFwdDecl)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !1729, file: !1730, line: 35, baseType: !1740, size: 64, offset: 192)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !59, line: 8, size: 960, elements: !1742)
!1742 = !{!1743, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1741, file: !59, line: 9, baseType: !1744, size: 192)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1745, line: 9, size: 192, elements: !1746)
!1745 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!1746 = !{!1747, !1748, !1752, !1753}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1744, file: !1745, line: 10, baseType: !336, size: 64)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1744, file: !1745, line: 11, baseType: !1749, size: 64, offset: 64)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1751)
!1751 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1745, line: 7, flags: DIFlagFwdDecl)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1744, file: !1745, line: 12, baseType: !7, size: 32, offset: 128)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1744, file: !1745, line: 13, baseType: !389, size: 32, offset: 160)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1741, file: !59, line: 10, baseType: !57, size: 64, offset: 192)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1741, file: !59, line: 16, baseType: !136, size: 128, offset: 256)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "ns_lock", scope: !1741, file: !59, line: 17, baseType: !295, size: 32, offset: 384)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1741, file: !59, line: 18, baseType: !616, size: 64, offset: 448)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1741, file: !59, line: 19, baseType: !620, size: 64, offset: 512)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1741, file: !59, line: 20, baseType: !111, size: 64, offset: 576)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1741, file: !59, line: 21, baseType: !405, size: 192, offset: 640)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1741, file: !59, line: 22, baseType: !111, size: 64, offset: 832)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "mounts", scope: !1741, file: !59, line: 23, baseType: !7, size: 32, offset: 896)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "pending_mounts", scope: !1741, file: !59, line: 24, baseType: !7, size: 32, offset: 928)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !1729, file: !1730, line: 36, baseType: !418, size: 64, offset: 256)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !1729, file: !1730, line: 37, baseType: !1766, size: 64, offset: 320)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !456, line: 34, flags: DIFlagFwdDecl)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !1729, file: !1730, line: 38, baseType: !1769, size: 64, offset: 384)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !1730, line: 38, flags: DIFlagFwdDecl)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !1729, file: !1730, line: 39, baseType: !1769, size: 64, offset: 448)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !1729, file: !1730, line: 40, baseType: !1773, size: 64, offset: 512)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !1730, line: 12, flags: DIFlagFwdDecl)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1114, file: !1115, line: 1110, baseType: !1776, size: 64, offset: 15360)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1778, line: 93, size: 8768, elements: !1779)
!1778 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!1779 = !{!1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1829, !1838, !1839, !1841, !1842, !1843, !1846, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1884, !1885, !1892, !1902, !1905, !1906, !1909, !1910, !1911, !1912, !1913, !1914}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1777, file: !1778, line: 94, baseType: !389, size: 32)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1777, file: !1778, line: 95, baseType: !315, size: 32, offset: 32)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1777, file: !1778, line: 96, baseType: !182, size: 32, offset: 64)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !1777, file: !1778, line: 97, baseType: !182, size: 32, offset: 96)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1777, file: !1778, line: 98, baseType: !136, size: 128, offset: 128)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1777, file: !1778, line: 100, baseType: !405, size: 192, offset: 256)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1777, file: !1778, line: 103, baseType: !1113, size: 64, offset: 448)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1777, file: !1778, line: 106, baseType: !1788, size: 192, offset: 512)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !622, line: 32, size: 192, elements: !1789)
!1789 = !{!1790, !1791}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1788, file: !622, line: 33, baseType: !136, size: 128)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1788, file: !622, line: 34, baseType: !1792, size: 64, offset: 128)
!1792 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1793, line: 25, baseType: !1794)
!1793 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1793, line: 23, size: 64, elements: !1795)
!1795 = !{!1796}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1794, file: !1793, line: 24, baseType: !1352, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1777, file: !1778, line: 109, baseType: !398, size: 64, offset: 704)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1777, file: !1778, line: 112, baseType: !182, size: 32, offset: 768)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1777, file: !1778, line: 114, baseType: !182, size: 32, offset: 800)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !1777, file: !1778, line: 115, baseType: !1113, size: 64, offset: 832)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1777, file: !1778, line: 118, baseType: !182, size: 32, offset: 896)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1777, file: !1778, line: 119, baseType: !7, size: 32, offset: 928)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1777, file: !1778, line: 121, baseType: !1804, size: 64, offset: 960)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !1778, line: 80, size: 448, elements: !1806)
!1806 = !{!1807, !1808, !1814}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1805, file: !1778, line: 81, baseType: !315, size: 32)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1805, file: !1778, line: 82, baseType: !1809, size: 128, offset: 64)
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !1778, line: 75, size: 128, elements: !1810)
!1810 = !{!1811, !1812}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1809, file: !1778, line: 76, baseType: !1113, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1809, file: !1778, line: 77, baseType: !1813, size: 64, offset: 64)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1805, file: !1778, line: 83, baseType: !1649, size: 256, offset: 192)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1777, file: !1778, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1777, file: !1778, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !1777, file: !1778, line: 138, baseType: !7, size: 32, offset: 1056)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1777, file: !1778, line: 139, baseType: !136, size: 128, offset: 1088)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1777, file: !1778, line: 142, baseType: !1225, size: 512, offset: 1216)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1777, file: !1778, line: 143, baseType: !1233, size: 64, offset: 1728)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1777, file: !1778, line: 150, baseType: !1822, size: 256, offset: 1792)
!1822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1823, size: 256, elements: !1827)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1778, line: 38, size: 128, elements: !1824)
!1824 = !{!1825, !1826}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1823, file: !1778, line: 39, baseType: !111, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1823, file: !1778, line: 40, baseType: !111, size: 64, offset: 64)
!1827 = !{!1828}
!1828 = !DISubrange(count: 2)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1777, file: !1778, line: 156, baseType: !1830, size: 192, offset: 2048)
!1830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1778, line: 66, size: 192, elements: !1831)
!1831 = !{!1832}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1830, file: !1778, line: 67, baseType: !1833, size: 192)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1778, line: 47, size: 192, elements: !1834)
!1834 = !{!1835, !1836, !1837}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1833, file: !1778, line: 48, baseType: !338, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1833, file: !1778, line: 49, baseType: !338, size: 64, offset: 64)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1833, file: !1778, line: 50, baseType: !338, size: 64, offset: 128)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1777, file: !1778, line: 160, baseType: !1678, size: 640, offset: 2240)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1777, file: !1778, line: 163, baseType: !1840, size: 256, offset: 2880)
!1840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, size: 256, elements: !401)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1777, file: !1778, line: 169, baseType: !385, size: 64, offset: 3136)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1777, file: !1778, line: 172, baseType: !182, size: 32, offset: 3200)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1777, file: !1778, line: 174, baseType: !1844, size: 64, offset: 3264)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1778, line: 174, flags: DIFlagFwdDecl)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1777, file: !1778, line: 185, baseType: !1847, size: 64, offset: 3328)
!1847 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !78, line: 860, baseType: !1848)
!1848 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !78, line: 853, size: 64, elements: !1849)
!1849 = !{!1850, !1851}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1848, file: !78, line: 858, baseType: !77, size: 32)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1848, file: !78, line: 859, baseType: !295, size: 32, offset: 32)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1777, file: !1778, line: 186, baseType: !111, size: 64, offset: 3392)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1777, file: !1778, line: 186, baseType: !111, size: 64, offset: 3456)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1777, file: !1778, line: 186, baseType: !111, size: 64, offset: 3520)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1777, file: !1778, line: 186, baseType: !111, size: 64, offset: 3584)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1777, file: !1778, line: 187, baseType: !111, size: 64, offset: 3648)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1777, file: !1778, line: 188, baseType: !111, size: 64, offset: 3712)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1777, file: !1778, line: 189, baseType: !1666, size: 192, offset: 3776)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1777, file: !1778, line: 190, baseType: !473, size: 64, offset: 3968)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1777, file: !1778, line: 190, baseType: !473, size: 64, offset: 4032)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1777, file: !1778, line: 190, baseType: !473, size: 64, offset: 4096)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1777, file: !1778, line: 190, baseType: !473, size: 64, offset: 4160)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1777, file: !1778, line: 191, baseType: !473, size: 64, offset: 4224)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1777, file: !1778, line: 191, baseType: !473, size: 64, offset: 4288)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1777, file: !1778, line: 191, baseType: !473, size: 64, offset: 4352)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1777, file: !1778, line: 191, baseType: !473, size: 64, offset: 4416)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1777, file: !1778, line: 192, baseType: !473, size: 64, offset: 4480)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1777, file: !1778, line: 192, baseType: !473, size: 64, offset: 4544)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1777, file: !1778, line: 192, baseType: !473, size: 64, offset: 4608)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1777, file: !1778, line: 192, baseType: !473, size: 64, offset: 4672)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1777, file: !1778, line: 193, baseType: !473, size: 64, offset: 4736)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1777, file: !1778, line: 193, baseType: !473, size: 64, offset: 4800)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1777, file: !1778, line: 194, baseType: !1874, size: 448, offset: 4864)
!1874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1875, line: 12, size: 448, elements: !1876)
!1875 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!1876 = !{!1877, !1878, !1879, !1880, !1881, !1882, !1883}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !1874, file: !1875, line: 15, baseType: !111, size: 64)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !1874, file: !1875, line: 17, baseType: !111, size: 64, offset: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !1874, file: !1875, line: 19, baseType: !111, size: 64, offset: 128)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !1874, file: !1875, line: 21, baseType: !111, size: 64, offset: 192)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !1874, file: !1875, line: 29, baseType: !111, size: 64, offset: 256)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !1874, file: !1875, line: 35, baseType: !111, size: 64, offset: 320)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !1874, file: !1875, line: 44, baseType: !111, size: 64, offset: 384)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1777, file: !1778, line: 202, baseType: !113, size: 64, offset: 5312)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1777, file: !1778, line: 213, baseType: !1886, size: 2048, offset: 5376)
!1886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1887, size: 2048, elements: !1701)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1888, line: 43, size: 128, elements: !1889)
!1888 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!1889 = !{!1890, !1891}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1887, file: !1888, line: 44, baseType: !773, size: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1887, file: !1888, line: 45, baseType: !773, size: 64, offset: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !1777, file: !1778, line: 216, baseType: !1893, size: 448, offset: 7424)
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !1778, line: 30, size: 448, elements: !1894)
!1894 = !{!1895, !1896, !1897, !1898, !1899, !1900, !1901}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !1893, file: !1778, line: 31, baseType: !182, size: 32)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !1893, file: !1778, line: 32, baseType: !268, size: 64, offset: 64)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !1893, file: !1778, line: 33, baseType: !473, size: 64, offset: 128)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !1893, file: !1778, line: 34, baseType: !111, size: 64, offset: 192)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !1893, file: !1778, line: 34, baseType: !111, size: 64, offset: 256)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !1893, file: !1778, line: 35, baseType: !473, size: 64, offset: 320)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !1893, file: !1778, line: 35, baseType: !473, size: 64, offset: 384)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1777, file: !1778, line: 219, baseType: !1903, size: 64, offset: 7872)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !1778, line: 219, flags: DIFlagFwdDecl)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !1777, file: !1778, line: 222, baseType: !7, size: 32, offset: 7936)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !1777, file: !1778, line: 223, baseType: !1907, size: 64, offset: 8000)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !1778, line: 223, flags: DIFlagFwdDecl)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1777, file: !1778, line: 230, baseType: !190, size: 8, offset: 8064)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1777, file: !1778, line: 231, baseType: !504, size: 16, offset: 8080)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1777, file: !1778, line: 232, baseType: !504, size: 16, offset: 8096)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1777, file: !1778, line: 234, baseType: !1401, size: 64, offset: 8128)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1777, file: !1778, line: 237, baseType: !344, size: 256, offset: 8192)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !1777, file: !1778, line: 243, baseType: !478, size: 320, offset: 8448)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1114, file: !1115, line: 1111, baseType: !1916, size: 64, offset: 15424)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1778, line: 20, size: 16640, elements: !1918)
!1918 = !{!1919, !1920, !1921, !1922}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1917, file: !1778, line: 21, baseType: !295, size: 32)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1917, file: !1778, line: 22, baseType: !389, size: 32, offset: 32)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1917, file: !1778, line: 23, baseType: !405, size: 192, offset: 64)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1917, file: !1778, line: 24, baseType: !1923, size: 16384, offset: 256)
!1923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1924, size: 16384, elements: !1944)
!1924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !622, line: 51, size: 256, elements: !1925)
!1925 = !{!1926}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1924, file: !622, line: 52, baseType: !1927, size: 256)
!1927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !622, line: 37, size: 256, elements: !1928)
!1928 = !{!1929, !1936, !1937, !1943}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1927, file: !622, line: 39, baseType: !1930, size: 64)
!1930 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1931, line: 83, baseType: !1932)
!1931 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1931, line: 82, baseType: !1934)
!1934 = !DISubroutineType(types: !1935)
!1935 = !{null, !182}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1927, file: !622, line: 40, baseType: !473, size: 64, offset: 64)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1927, file: !622, line: 46, baseType: !1938, size: 64, offset: 128)
!1938 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1931, line: 86, baseType: !1939)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1931, line: 85, baseType: !1941)
!1941 = !DISubroutineType(types: !1942)
!1942 = !{null}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1927, file: !622, line: 48, baseType: !1792, size: 64, offset: 192)
!1944 = !{!1945}
!1945 = !DISubrange(count: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1114, file: !1115, line: 1112, baseType: !1792, size: 64, offset: 15488)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1114, file: !1115, line: 1113, baseType: !1792, size: 64, offset: 15552)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1114, file: !1115, line: 1115, baseType: !1792, size: 64, offset: 15616)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1114, file: !1115, line: 1116, baseType: !1788, size: 192, offset: 15680)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1114, file: !1115, line: 1117, baseType: !473, size: 64, offset: 15872)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1114, file: !1115, line: 1118, baseType: !771, size: 64, offset: 15936)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1114, file: !1115, line: 1119, baseType: !7, size: 32, offset: 16000)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1114, file: !1115, line: 1121, baseType: !288, size: 64, offset: 16064)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1114, file: !1115, line: 1125, baseType: !1955, size: 64, offset: 16128)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1115, line: 43, flags: DIFlagFwdDecl)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1114, file: !1115, line: 1127, baseType: !127, size: 32, offset: 16192)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1114, file: !1115, line: 1128, baseType: !7, size: 32, offset: 16224)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1114, file: !1115, line: 1130, baseType: !1960, size: 128, offset: 16256)
!1960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1961, line: 37, size: 128, elements: !1962)
!1961 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!1962 = !{!1963, !1964, !1965}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1960, file: !1961, line: 38, baseType: !182, size: 32)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1960, file: !1961, line: 39, baseType: !315, size: 32, offset: 32)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1960, file: !1961, line: 40, baseType: !1966, size: 64, offset: 64)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1961, line: 24, flags: DIFlagFwdDecl)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1114, file: !1115, line: 1131, baseType: !1969, size: 256, offset: 16384)
!1969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !1970, line: 12, size: 256, elements: !1971)
!1970 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!1971 = !{!1972, !1973, !1974, !1975}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !1969, file: !1970, line: 13, baseType: !196, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1969, file: !1970, line: 14, baseType: !473, size: 64, offset: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1969, file: !1970, line: 15, baseType: !473, size: 64, offset: 128)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !1969, file: !1970, line: 16, baseType: !190, size: 8, offset: 192)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1114, file: !1115, line: 1134, baseType: !111, size: 64, offset: 16640)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1114, file: !1115, line: 1135, baseType: !111, size: 64, offset: 16704)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1114, file: !1115, line: 1138, baseType: !295, size: 32, offset: 16768)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1114, file: !1115, line: 1141, baseType: !349, size: 32, offset: 16800)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1114, file: !1115, line: 1143, baseType: !1981, size: 64, offset: 16832)
!1981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1115, line: 735, size: 64, elements: !1982)
!1982 = !{!1983}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1981, file: !1115, line: 736, baseType: !1984, size: 64)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1114, file: !1115, line: 1147, baseType: !1284, size: 128, offset: 16896)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1114, file: !1115, line: 1149, baseType: !1113, size: 64, offset: 17024)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1114, file: !1115, line: 1151, baseType: !1988, size: 64, offset: 17088)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1115, line: 1151, flags: DIFlagFwdDecl)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1114, file: !1115, line: 1188, baseType: !56, size: 64, offset: 17152)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1114, file: !1115, line: 1191, baseType: !1992, size: 64, offset: 17216)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1115, line: 44, flags: DIFlagFwdDecl)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1114, file: !1115, line: 1194, baseType: !1995, size: 64, offset: 17280)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1115, line: 45, flags: DIFlagFwdDecl)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1114, file: !1115, line: 1197, baseType: !1998, size: 64, offset: 17344)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1115, line: 61, flags: DIFlagFwdDecl)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1114, file: !1115, line: 1199, baseType: !2001, size: 64, offset: 17408)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2003, line: 99, size: 128, elements: !2004)
!2003 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2004 = !{!2005, !2006, !2007}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2002, file: !2003, line: 100, baseType: !336, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2002, file: !2003, line: 101, baseType: !315, size: 32, offset: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2002, file: !2003, line: 103, baseType: !124, size: 16, offset: 96)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1114, file: !1115, line: 1202, baseType: !2009, size: 64, offset: 17472)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1115, line: 48, flags: DIFlagFwdDecl)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1114, file: !1115, line: 1205, baseType: !473, size: 64, offset: 17536)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1114, file: !1115, line: 1206, baseType: !2013, size: 64, offset: 17600)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !622, line: 14, baseType: !2015)
!2015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !622, line: 12, size: 384, elements: !2016)
!2016 = !{!2017}
!2017 = !DIDerivedType(tag: DW_TAG_member, scope: !2015, file: !622, line: 13, baseType: !2018, size: 384)
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2015, file: !622, line: 13, size: 384, elements: !2019)
!2019 = !{!2020, !2021, !2022, !2023}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2018, file: !622, line: 13, baseType: !182, size: 32)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2018, file: !622, line: 13, baseType: !182, size: 32, offset: 32)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2018, file: !622, line: 13, baseType: !182, size: 32, offset: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2018, file: !622, line: 13, baseType: !2024, size: 256, offset: 128)
!2024 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2025, line: 37, size: 256, elements: !2026)
!2025 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2026 = !{!2027, !2032, !2045, !2051, !2060, !2087, !2092}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2024, file: !2025, line: 42, baseType: !2028, size: 64)
!2028 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2024, file: !2025, line: 39, size: 64, elements: !2029)
!2029 = !{!2030, !2031}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2028, file: !2025, line: 40, baseType: !1632, size: 32)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2028, file: !2025, line: 41, baseType: !133, size: 32, offset: 32)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2024, file: !2025, line: 50, baseType: !2033, size: 192)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2024, file: !2025, line: 45, size: 192, elements: !2034)
!2034 = !{!2035, !2037, !2038, !2044}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2033, file: !2025, line: 46, baseType: !2036, size: 32)
!2036 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !134, line: 95, baseType: !182)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2033, file: !2025, line: 47, baseType: !182, size: 32, offset: 32)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2033, file: !2025, line: 48, baseType: !2039, size: 64, offset: 64)
!2039 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2025, line: 11, baseType: !2040)
!2040 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2025, line: 8, size: 64, elements: !2041)
!2041 = !{!2042, !2043}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2040, file: !2025, line: 9, baseType: !182, size: 32)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2040, file: !2025, line: 10, baseType: !56, size: 64)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2033, file: !2025, line: 49, baseType: !182, size: 32, offset: 128)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2024, file: !2025, line: 57, baseType: !2046, size: 128)
!2046 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2024, file: !2025, line: 53, size: 128, elements: !2047)
!2047 = !{!2048, !2049, !2050}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2046, file: !2025, line: 54, baseType: !1632, size: 32)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2046, file: !2025, line: 55, baseType: !133, size: 32, offset: 32)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2046, file: !2025, line: 56, baseType: !2039, size: 64, offset: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2024, file: !2025, line: 66, baseType: !2052, size: 256)
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2024, file: !2025, line: 60, size: 256, elements: !2053)
!2053 = !{!2054, !2055, !2056, !2057, !2059}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2052, file: !2025, line: 61, baseType: !1632, size: 32)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2052, file: !2025, line: 62, baseType: !133, size: 32, offset: 32)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2052, file: !2025, line: 63, baseType: !182, size: 32, offset: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2052, file: !2025, line: 64, baseType: !2058, size: 64, offset: 128)
!2058 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !134, line: 94, baseType: !816)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2052, file: !2025, line: 65, baseType: !2058, size: 64, offset: 192)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2024, file: !2025, line: 105, baseType: !2061, size: 256)
!2061 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2024, file: !2025, line: 69, size: 256, elements: !2062)
!2062 = !{!2063, !2064}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2061, file: !2025, line: 70, baseType: !56, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_member, scope: !2061, file: !2025, line: 79, baseType: !2065, size: 192, offset: 64)
!2065 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2061, file: !2025, line: 79, size: 192, elements: !2066)
!2066 = !{!2067, !2068, !2069, !2076, !2081}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2065, file: !2025, line: 81, baseType: !182, size: 32)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2065, file: !2025, line: 86, baseType: !504, size: 16)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2065, file: !2025, line: 92, baseType: !2070, size: 192)
!2070 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2065, file: !2025, line: 88, size: 192, elements: !2071)
!2071 = !{!2072, !2074, !2075}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2070, file: !2025, line: 89, baseType: !2073, size: 64)
!2073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 64, elements: !1268)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2070, file: !2025, line: 90, baseType: !56, size: 64, offset: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2070, file: !2025, line: 91, baseType: !56, size: 64, offset: 128)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2065, file: !2025, line: 97, baseType: !2077, size: 96)
!2077 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2065, file: !2025, line: 94, size: 96, elements: !2078)
!2078 = !{!2079, !2080}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2077, file: !2025, line: 95, baseType: !2073, size: 64)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2077, file: !2025, line: 96, baseType: !107, size: 32, offset: 64)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2065, file: !2025, line: 103, baseType: !2082, size: 128)
!2082 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2065, file: !2025, line: 99, size: 128, elements: !2083)
!2083 = !{!2084, !2085, !2086}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2082, file: !2025, line: 100, baseType: !473, size: 64)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2082, file: !2025, line: 101, baseType: !107, size: 32, offset: 64)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2082, file: !2025, line: 102, baseType: !107, size: 32, offset: 96)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2024, file: !2025, line: 111, baseType: !2088, size: 128)
!2088 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2024, file: !2025, line: 108, size: 128, elements: !2089)
!2089 = !{!2090, !2091}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2088, file: !2025, line: 109, baseType: !268, size: 64)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2088, file: !2025, line: 110, baseType: !182, size: 32, offset: 64)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2024, file: !2025, line: 118, baseType: !2093, size: 128)
!2093 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2024, file: !2025, line: 114, size: 128, elements: !2094)
!2094 = !{!2095, !2096, !2097}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2093, file: !2025, line: 115, baseType: !56, size: 64)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2093, file: !2025, line: 116, baseType: !182, size: 32, offset: 64)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2093, file: !2025, line: 117, baseType: !7, size: 32, offset: 96)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1114, file: !1115, line: 1208, baseType: !1874, size: 448, offset: 17664)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1114, file: !1115, line: 1215, baseType: !111, size: 64, offset: 18112)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1114, file: !1115, line: 1217, baseType: !111, size: 64, offset: 18176)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1114, file: !1115, line: 1219, baseType: !111, size: 64, offset: 18240)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1114, file: !1115, line: 1223, baseType: !2103, size: 64, offset: 18304)
!2103 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2104, line: 99, baseType: !2105)
!2104 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2105 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2104, line: 99, size: 64, elements: !2106)
!2106 = !{!2107}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2105, file: !2104, line: 99, baseType: !1352, size: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1114, file: !1115, line: 1225, baseType: !77, size: 32, offset: 18368)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1114, file: !1115, line: 1226, baseType: !182, size: 32, offset: 18400)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1114, file: !1115, line: 1227, baseType: !182, size: 32, offset: 18432)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1114, file: !1115, line: 1231, baseType: !2112, size: 64, offset: 18496)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1115, line: 1231, flags: DIFlagFwdDecl)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1114, file: !1115, line: 1233, baseType: !136, size: 128, offset: 18560)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1114, file: !1115, line: 1240, baseType: !2116, size: 64, offset: 18688)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1115, line: 62, flags: DIFlagFwdDecl)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1114, file: !1115, line: 1242, baseType: !2119, size: 64, offset: 18752)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1115, line: 1242, flags: DIFlagFwdDecl)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1114, file: !1115, line: 1244, baseType: !136, size: 128, offset: 18816)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1114, file: !1115, line: 1245, baseType: !2123, size: 64, offset: 18944)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1115, line: 51, flags: DIFlagFwdDecl)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1114, file: !1115, line: 1246, baseType: !344, size: 256, offset: 19008)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1114, file: !1115, line: 1247, baseType: !7, size: 32, offset: 19264)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1114, file: !1115, line: 1250, baseType: !2128, size: 64, offset: 19328)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1115, line: 57, flags: DIFlagFwdDecl)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1114, file: !1115, line: 1251, baseType: !344, size: 256, offset: 19392)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1114, file: !1115, line: 1252, baseType: !136, size: 128, offset: 19648)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1114, file: !1115, line: 1259, baseType: !2133, size: 64, offset: 19776)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1403, line: 717, flags: DIFlagFwdDecl)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1114, file: !1115, line: 1260, baseType: !504, size: 16, offset: 19840)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1114, file: !1115, line: 1261, baseType: !504, size: 16, offset: 19856)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1114, file: !1115, line: 1314, baseType: !2138, size: 64, offset: 19904)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2140, line: 62, size: 256, align: 256, elements: !2141)
!2140 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2141 = !{!2142, !2143, !2144, !2145, !2146, !2147, !2148}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2139, file: !2140, line: 75, baseType: !107, size: 32)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2139, file: !2140, line: 90, baseType: !107, size: 32, offset: 32)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2139, file: !2140, line: 112, baseType: !112, size: 64, offset: 64)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2139, file: !2140, line: 132, baseType: !107, size: 32, offset: 128)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2139, file: !2140, line: 140, baseType: !107, size: 32, offset: 160)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2139, file: !2140, line: 149, baseType: !107, size: 32, offset: 192)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2139, file: !2140, line: 154, baseType: !2149, offset: 224)
!2149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, elements: !420)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1114, file: !1115, line: 1315, baseType: !105, size: 32, offset: 19968)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1114, file: !1115, line: 1316, baseType: !105, size: 32, offset: 20000)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1114, file: !1115, line: 1321, baseType: !473, size: 64, offset: 20032)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1114, file: !1115, line: 1325, baseType: !182, size: 32, offset: 20096)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1114, file: !1115, line: 1326, baseType: !182, size: 32, offset: 20128)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1114, file: !1115, line: 1327, baseType: !182, size: 32, offset: 20160)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1114, file: !1115, line: 1328, baseType: !182, size: 32, offset: 20192)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1114, file: !1115, line: 1329, baseType: !285, size: 128, align: 64, offset: 20224)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1114, file: !1115, line: 1332, baseType: !2159, size: 128, offset: 20352)
!2159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2160, line: 51, size: 128, elements: !2161)
!2160 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2161 = !{!2162, !2167, !2168}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2159, file: !2160, line: 60, baseType: !2163, size: 64)
!2163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2164, line: 7, size: 64, elements: !2165)
!2164 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2165 = !{!2166}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2163, file: !2164, line: 12, baseType: !1349, size: 64)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2159, file: !2160, line: 63, baseType: !190, size: 8, offset: 64)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2159, file: !2160, line: 70, baseType: !190, size: 8, offset: 72)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1114, file: !1115, line: 1335, baseType: !2170, size: 64, offset: 20480)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1115, line: 59, flags: DIFlagFwdDecl)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1114, file: !1115, line: 1337, baseType: !2173, size: 128, offset: 20544)
!2173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2160, line: 39, size: 128, elements: !2174)
!2174 = !{!2175, !2445, !2446}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2173, file: !2160, line: 40, baseType: !2176, size: 64)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1403, line: 74, size: 512, align: 128, elements: !2178)
!2178 = !{!2179, !2180, !2439, !2444}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2177, file: !1403, line: 75, baseType: !473, size: 64)
!2180 = !DIDerivedType(tag: DW_TAG_member, scope: !2177, file: !1403, line: 83, baseType: !2181, size: 320, offset: 64)
!2181 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2177, file: !1403, line: 83, size: 320, elements: !2182)
!2182 = !{!2183, !2413, !2427, !2431, !2438}
!2183 = !DIDerivedType(tag: DW_TAG_member, scope: !2181, file: !1403, line: 84, baseType: !2184, size: 320)
!2184 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2181, file: !1403, line: 84, size: 320, elements: !2185)
!2185 = !{!2186, !2197, !2407, !2412}
!2186 = !DIDerivedType(tag: DW_TAG_member, scope: !2184, file: !1403, line: 90, baseType: !2187, size: 128)
!2187 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2184, file: !1403, line: 90, size: 128, elements: !2188)
!2188 = !{!2189, !2190, !2195, !2196}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2187, file: !1403, line: 91, baseType: !136, size: 128)
!2190 = !DIDerivedType(tag: DW_TAG_member, scope: !2187, file: !1403, line: 94, baseType: !2191, size: 128)
!2191 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2187, file: !1403, line: 94, size: 128, elements: !2192)
!2192 = !{!2193, !2194}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2191, file: !1403, line: 96, baseType: !56, size: 64)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2191, file: !1403, line: 98, baseType: !7, size: 32, offset: 64)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2187, file: !1403, line: 102, baseType: !136, size: 128)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2187, file: !1403, line: 103, baseType: !136, size: 128)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2184, file: !1403, line: 106, baseType: !2198, size: 64, offset: 128)
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !15, line: 472, size: 1536, align: 64, elements: !2200)
!2200 = !{!2201, !2202, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2399, !2400, !2401, !2404, !2405, !2406}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !2199, file: !15, line: 473, baseType: !119, size: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !2199, file: !15, line: 474, baseType: !2203, size: 128, offset: 64)
!2203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !2204, line: 296, size: 128, elements: !2205)
!2204 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!2205 = !{!2206, !2207, !2208}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !2203, file: !2204, line: 297, baseType: !295, size: 32)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !2203, file: !2204, line: 299, baseType: !877, size: 32, offset: 32)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !2203, file: !2204, line: 300, baseType: !56, size: 64, offset: 64)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !2199, file: !15, line: 475, baseType: !478, size: 320, offset: 192)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2199, file: !15, line: 476, baseType: !877, size: 32, offset: 512)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !2199, file: !15, line: 477, baseType: !315, size: 32, offset: 544)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !2199, file: !15, line: 482, baseType: !1284, size: 128, offset: 576)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !2199, file: !15, line: 483, baseType: !473, size: 64, offset: 704)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !2199, file: !15, line: 484, baseType: !473, size: 64, offset: 768)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !2199, file: !15, line: 485, baseType: !2216, size: 64, offset: 832)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2218)
!2218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !15, line: 404, size: 1280, elements: !2219)
!2219 = !{!2220, !2224, !2294, !2298, !2302, !2308, !2314, !2318, !2323, !2327, !2331, !2335, !2363, !2367, !2371, !2375, !2380, !2384, !2391, !2395}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !2218, file: !15, line: 405, baseType: !2221, size: 64)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = !DISubroutineType(types: !2223)
!2223 = !{!182, !2176, !727}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !2218, file: !15, line: 406, baseType: !2225, size: 64, offset: 64)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = !DISubroutineType(types: !2227)
!2227 = !{!182, !272, !2228}
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !1403, line: 293, size: 1536, elements: !2230)
!2230 = !{!2231, !2261, !2275}
!2231 = !DIDerivedType(tag: DW_TAG_member, scope: !2229, file: !1403, line: 295, baseType: !2232, size: 512)
!2232 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2229, file: !1403, line: 295, size: 512, elements: !2233)
!2233 = !{!2234, !2260}
!2234 = !DIDerivedType(tag: DW_TAG_member, scope: !2232, file: !1403, line: 296, baseType: !2235, size: 448)
!2235 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2232, file: !1403, line: 296, size: 448, elements: !2236)
!2236 = !{!2237, !2238, !2247, !2248, !2249, !2258, !2259}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2235, file: !1403, line: 298, baseType: !473, size: 64)
!2238 = !DIDerivedType(tag: DW_TAG_member, scope: !2235, file: !1403, line: 299, baseType: !2239, size: 128, offset: 64)
!2239 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2235, file: !1403, line: 299, size: 128, elements: !2240)
!2240 = !{!2241, !2242}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2239, file: !1403, line: 300, baseType: !136, size: 128)
!2242 = !DIDerivedType(tag: DW_TAG_member, scope: !2239, file: !1403, line: 302, baseType: !2243, size: 128)
!2243 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2239, file: !1403, line: 302, size: 128, elements: !2244)
!2244 = !{!2245, !2246}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2243, file: !1403, line: 303, baseType: !56, size: 64)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2243, file: !1403, line: 305, baseType: !7, size: 32, offset: 64)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2235, file: !1403, line: 310, baseType: !2198, size: 64, offset: 192)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2235, file: !1403, line: 311, baseType: !473, size: 64, offset: 256)
!2249 = !DIDerivedType(tag: DW_TAG_member, scope: !2235, file: !1403, line: 312, baseType: !2250, size: 64, offset: 320)
!2250 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2235, file: !1403, line: 312, size: 64, elements: !2251)
!2251 = !{!2252, !2253}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2250, file: !1403, line: 313, baseType: !56, size: 64)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !2250, file: !1403, line: 314, baseType: !2254, size: 64)
!2254 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !1403, line: 257, baseType: !2255)
!2255 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1403, line: 255, size: 64, elements: !2256)
!2256 = !{!2257}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2255, file: !1403, line: 256, baseType: !473, size: 64)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2235, file: !1403, line: 316, baseType: !315, size: 32, offset: 384)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2235, file: !1403, line: 317, baseType: !315, size: 32, offset: 416)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2232, file: !1403, line: 323, baseType: !2177, size: 512, align: 128)
!2261 = !DIDerivedType(tag: DW_TAG_member, scope: !2229, file: !1403, line: 325, baseType: !2262, size: 512, offset: 512)
!2262 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2229, file: !1403, line: 325, size: 512, elements: !2263)
!2263 = !{!2264, !2274}
!2264 = !DIDerivedType(tag: DW_TAG_member, scope: !2262, file: !1403, line: 326, baseType: !2265, size: 320)
!2265 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2262, file: !1403, line: 326, size: 320, elements: !2266)
!2266 = !{!2267, !2268, !2269, !2270, !2271, !2272, !2273}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !2265, file: !1403, line: 327, baseType: !473, size: 64)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !2265, file: !1403, line: 328, baseType: !473, size: 64, offset: 64)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !2265, file: !1403, line: 329, baseType: !473, size: 64, offset: 128)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !2265, file: !1403, line: 331, baseType: !315, size: 32, offset: 192)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !2265, file: !1403, line: 332, baseType: !315, size: 32, offset: 224)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !2265, file: !1403, line: 333, baseType: !315, size: 32, offset: 256)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !2265, file: !1403, line: 335, baseType: !7, size: 32, offset: 288)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !2262, file: !1403, line: 339, baseType: !2177, size: 512, align: 128)
!2275 = !DIDerivedType(tag: DW_TAG_member, scope: !2229, file: !1403, line: 341, baseType: !2276, size: 512, offset: 1024)
!2276 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2229, file: !1403, line: 341, size: 512, elements: !2277)
!2277 = !{!2278, !2287, !2293}
!2278 = !DIDerivedType(tag: DW_TAG_member, scope: !2276, file: !1403, line: 342, baseType: !2279, size: 384)
!2279 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2276, file: !1403, line: 342, size: 384, elements: !2280)
!2280 = !{!2281, !2282, !2283, !2284, !2285, !2286}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !2279, file: !1403, line: 343, baseType: !473, size: 64)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !2279, file: !1403, line: 344, baseType: !473, size: 64, offset: 64)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !2279, file: !1403, line: 346, baseType: !56, size: 64, offset: 128)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !2279, file: !1403, line: 347, baseType: !56, size: 64, offset: 192)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !2279, file: !1403, line: 348, baseType: !56, size: 64, offset: 256)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !2279, file: !1403, line: 349, baseType: !56, size: 64, offset: 320)
!2287 = !DIDerivedType(tag: DW_TAG_member, scope: !2276, file: !1403, line: 352, baseType: !2288, size: 256)
!2288 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2276, file: !1403, line: 352, size: 256, elements: !2289)
!2289 = !{!2290, !2291, !2292}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !2288, file: !1403, line: 353, baseType: !473, size: 64)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !2288, file: !1403, line: 354, baseType: !473, size: 64, offset: 64)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !2288, file: !1403, line: 356, baseType: !136, size: 128, offset: 128)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !2276, file: !1403, line: 359, baseType: !2177, size: 512, align: 128)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !2218, file: !15, line: 409, baseType: !2295, size: 64, offset: 128)
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = !DISubroutineType(types: !2297)
!2297 = !{!182, !2198, !727}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !2218, file: !15, line: 412, baseType: !2299, size: 64, offset: 192)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{!190, !2198, !2228}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !2218, file: !15, line: 414, baseType: !2303, size: 64, offset: 256)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = !DISubroutineType(types: !2305)
!2305 = !{null, !2306}
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !15, line: 310, flags: DIFlagFwdDecl)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !2218, file: !15, line: 416, baseType: !2309, size: 64, offset: 320)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DISubroutineType(types: !2311)
!2311 = !{!182, !272, !2198, !257, !7, !2312, !2313}
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !2218, file: !15, line: 419, baseType: !2315, size: 64, offset: 384)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{!182, !272, !2198, !257, !7, !7, !2176, !56}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !2218, file: !15, line: 424, baseType: !2319, size: 64, offset: 448)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!2322, !2198, !2322}
!2322 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !63, line: 131, baseType: !111)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !2218, file: !15, line: 425, baseType: !2324, size: 64, offset: 512)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = !DISubroutineType(types: !2326)
!2326 = !{null, !2228, !771, !771}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !2218, file: !15, line: 426, baseType: !2328, size: 64, offset: 576)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = !DISubroutineType(types: !2330)
!2330 = !{!190, !2228, !877}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !2218, file: !15, line: 427, baseType: !2332, size: 64, offset: 640)
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = !DISubroutineType(types: !2334)
!2334 = !{null, !2228}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !2218, file: !15, line: 428, baseType: !2336, size: 64, offset: 704)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = !DISubroutineType(types: !2338)
!2338 = !{!814, !2339, !2361}
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !15, line: 373, size: 384, elements: !2341)
!2341 = !{!2342, !2343, !2344, !2348, !2349, !2350, !2351}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2340, file: !15, line: 374, baseType: !272, size: 64)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2340, file: !15, line: 375, baseType: !257, size: 64, offset: 64)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2340, file: !15, line: 376, baseType: !2345, size: 64, offset: 128)
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = !DISubroutineType(types: !2347)
!2347 = !{null, !2339, !268}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2340, file: !15, line: 377, baseType: !56, size: 64, offset: 192)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2340, file: !15, line: 378, baseType: !182, size: 32, offset: 256)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2340, file: !15, line: 379, baseType: !330, size: 16, offset: 288)
!2351 = !DIDerivedType(tag: DW_TAG_member, scope: !2340, file: !15, line: 380, baseType: !2352, size: 64, offset: 320)
!2352 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2340, file: !15, line: 380, size: 64, elements: !2353)
!2353 = !{!2354, !2357}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2352, file: !15, line: 386, baseType: !2355, size: 64)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !15, line: 386, flags: DIFlagFwdDecl)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2352, file: !15, line: 395, baseType: !2358, size: 64)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{!814, !56}
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !15, line: 69, flags: DIFlagFwdDecl)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !2218, file: !15, line: 433, baseType: !2364, size: 64, offset: 768)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = !DISubroutineType(types: !2366)
!2366 = !{!182, !2198, !2228, !2228, !36}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !2218, file: !15, line: 435, baseType: !2368, size: 64, offset: 832)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{!182, !2228}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !2218, file: !15, line: 436, baseType: !2372, size: 64, offset: 896)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{!190, !2228, !771, !771}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !2218, file: !15, line: 438, baseType: !2376, size: 64, offset: 960)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{null, !2228, !2379, !2379}
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !2218, file: !15, line: 439, baseType: !2381, size: 64, offset: 1024)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!182, !2198, !2176}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !2218, file: !15, line: 442, baseType: !2385, size: 64, offset: 1088)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{!182, !2388, !272, !2390}
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !15, line: 66, flags: DIFlagFwdDecl)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !2218, file: !15, line: 444, baseType: !2392, size: 64, offset: 1152)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = !DISubroutineType(types: !2394)
!2394 = !{null, !272}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !2218, file: !15, line: 445, baseType: !2396, size: 64, offset: 1216)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = !DISubroutineType(types: !2398)
!2398 = !{!182, !2339, !2361}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2199, file: !15, line: 486, baseType: !473, size: 64, offset: 896)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !2199, file: !15, line: 487, baseType: !478, size: 320, offset: 960)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !2199, file: !15, line: 488, baseType: !2402, size: 32, offset: 1280)
!2402 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2403, line: 8, baseType: !105)
!2403 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !2199, file: !15, line: 489, baseType: !295, size: 32, offset: 1312)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !2199, file: !15, line: 490, baseType: !136, size: 128, offset: 1344)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !2199, file: !15, line: 491, baseType: !56, size: 64, offset: 1472)
!2407 = !DIDerivedType(tag: DW_TAG_member, scope: !2184, file: !1403, line: 107, baseType: !2408, size: 64, offset: 192)
!2408 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2184, file: !1403, line: 107, size: 64, elements: !2409)
!2409 = !{!2410, !2411}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2408, file: !1403, line: 108, baseType: !473, size: 64)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2408, file: !1403, line: 109, baseType: !473, size: 64)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2184, file: !1403, line: 117, baseType: !473, size: 64, offset: 256)
!2413 = !DIDerivedType(tag: DW_TAG_member, scope: !2181, file: !1403, line: 119, baseType: !2414, size: 320)
!2414 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2181, file: !1403, line: 119, size: 320, elements: !2415)
!2415 = !{!2416, !2417, !2420, !2421, !2422}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2414, file: !1403, line: 124, baseType: !473, size: 64)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2414, file: !1403, line: 125, baseType: !2418, size: 64, offset: 64)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !1403, line: 125, flags: DIFlagFwdDecl)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2414, file: !1403, line: 126, baseType: !473, size: 64, offset: 128)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2414, file: !1403, line: 127, baseType: !473, size: 64, offset: 192)
!2422 = !DIDerivedType(tag: DW_TAG_member, scope: !2414, file: !1403, line: 128, baseType: !2423, size: 64, offset: 256)
!2423 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2414, file: !1403, line: 128, size: 64, elements: !2424)
!2424 = !{!2425, !2426}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2423, file: !1403, line: 133, baseType: !473, size: 64)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2423, file: !1403, line: 138, baseType: !336, size: 64)
!2427 = !DIDerivedType(tag: DW_TAG_member, scope: !2181, file: !1403, line: 141, baseType: !2428, size: 64)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2181, file: !1403, line: 141, size: 64, elements: !2429)
!2429 = !{!2430}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2428, file: !1403, line: 142, baseType: !473, size: 64)
!2431 = !DIDerivedType(tag: DW_TAG_member, scope: !2181, file: !1403, line: 144, baseType: !2432, size: 128)
!2432 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2181, file: !1403, line: 144, size: 128, elements: !2433)
!2433 = !{!2434, !2437}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2432, file: !1403, line: 146, baseType: !2435, size: 64)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1403, line: 146, flags: DIFlagFwdDecl)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2432, file: !1403, line: 147, baseType: !56, size: 64, offset: 64)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2181, file: !1403, line: 161, baseType: !285, size: 128, align: 64)
!2439 = !DIDerivedType(tag: DW_TAG_member, scope: !2177, file: !1403, line: 164, baseType: !2440, size: 32, offset: 384)
!2440 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2177, file: !1403, line: 164, size: 32, elements: !2441)
!2441 = !{!2442, !2443}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2440, file: !1403, line: 169, baseType: !315, size: 32)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2440, file: !1403, line: 177, baseType: !7, size: 32)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2177, file: !1403, line: 181, baseType: !315, size: 32, offset: 416)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2173, file: !2160, line: 42, baseType: !107, size: 32, offset: 64)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2173, file: !2160, line: 43, baseType: !107, size: 32, offset: 96)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1114, file: !1115, line: 1340, baseType: !2448, size: 64, offset: 20672)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1115, line: 69, flags: DIFlagFwdDecl)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1114, file: !1115, line: 1351, baseType: !182, size: 32, offset: 20736)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1114, file: !1115, line: 1352, baseType: !182, size: 32, offset: 20768)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1114, file: !1115, line: 1354, baseType: !473, size: 64, offset: 20800)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1114, file: !1115, line: 1364, baseType: !111, size: 64, offset: 20864)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1114, file: !1115, line: 1365, baseType: !111, size: 64, offset: 20928)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1114, file: !1115, line: 1412, baseType: !473, size: 64, offset: 20992)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1114, file: !1115, line: 1453, baseType: !2457, size: 64, offset: 21056)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1115, line: 1453, flags: DIFlagFwdDecl)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1114, file: !1115, line: 1457, baseType: !2460, size: 64, offset: 21120)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !44, line: 61, size: 576, elements: !2462)
!2462 = !{!2463, !2464, !2483, !2486, !2487, !2520, !2530}
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2461, file: !44, line: 62, baseType: !43, size: 32)
!2464 = !DIDerivedType(tag: DW_TAG_member, scope: !2461, file: !44, line: 64, baseType: !2465, size: 192, offset: 64)
!2465 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2461, file: !44, line: 64, size: 192, elements: !2466)
!2466 = !{!2467, !2478}
!2467 = !DIDerivedType(tag: DW_TAG_member, scope: !2465, file: !44, line: 65, baseType: !2468, size: 192)
!2468 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2465, file: !44, line: 65, size: 192, elements: !2469)
!2469 = !{!2470, !2477}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2468, file: !44, line: 66, baseType: !2471, size: 128)
!2471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2472, line: 50, size: 128, elements: !2473)
!2472 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2473 = !{!2474, !2475, !2476}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2471, file: !2472, line: 52, baseType: !473, size: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2471, file: !2472, line: 54, baseType: !7, size: 32, offset: 64)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2471, file: !2472, line: 55, baseType: !7, size: 32, offset: 96)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2468, file: !44, line: 67, baseType: !473, size: 64, offset: 128)
!2478 = !DIDerivedType(tag: DW_TAG_member, scope: !2465, file: !44, line: 70, baseType: !2479, size: 192)
!2479 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2465, file: !44, line: 70, size: 192, elements: !2480)
!2480 = !{!2481, !2482}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2479, file: !44, line: 71, baseType: !285, size: 128, align: 64)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2479, file: !44, line: 72, baseType: !473, size: 64, offset: 128)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2461, file: !44, line: 76, baseType: !2484, size: 64, offset: 256)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !44, line: 76, flags: DIFlagFwdDecl)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2461, file: !44, line: 77, baseType: !473, size: 64, offset: 320)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2461, file: !44, line: 79, baseType: !2488, size: 64, offset: 384)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2472, line: 25, size: 256, elements: !2490)
!2490 = !{!2491, !2497, !2501}
!2491 = !DIDerivedType(tag: DW_TAG_member, scope: !2489, file: !2472, line: 26, baseType: !2492, size: 128)
!2492 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2489, file: !2472, line: 26, size: 128, elements: !2493)
!2493 = !{!2494, !2496}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2492, file: !2472, line: 27, baseType: !2495, size: 128)
!2495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 128, elements: !1701)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2492, file: !2472, line: 28, baseType: !2495, size: 128)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2489, file: !2472, line: 31, baseType: !2498, size: 64, offset: 128)
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2500)
!2500 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2472, line: 23, flags: DIFlagFwdDecl)
!2501 = !DIDerivedType(tag: DW_TAG_member, scope: !2489, file: !2472, line: 33, baseType: !2502, size: 64, offset: 192)
!2502 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2489, file: !2472, line: 33, size: 64, elements: !2503)
!2503 = !{!2504, !2510, !2515}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2502, file: !2472, line: 38, baseType: !2505, size: 64)
!2505 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2502, file: !2472, line: 34, size: 64, elements: !2506)
!2506 = !{!2507, !2508, !2509}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2505, file: !2472, line: 35, baseType: !462, size: 32)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2505, file: !2472, line: 36, baseType: !323, size: 8, offset: 32)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2505, file: !2472, line: 37, baseType: !323, size: 8, offset: 40)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2502, file: !2472, line: 42, baseType: !2511, size: 16)
!2511 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2502, file: !2472, line: 39, size: 16, elements: !2512)
!2512 = !{!2513, !2514}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2511, file: !2472, line: 40, baseType: !323, size: 8)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2511, file: !2472, line: 41, baseType: !323, size: 8, offset: 8)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2502, file: !2472, line: 46, baseType: !2516, size: 16)
!2516 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2502, file: !2472, line: 43, size: 16, elements: !2517)
!2517 = !{!2518, !2519}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2516, file: !2472, line: 44, baseType: !323, size: 8)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2516, file: !2472, line: 45, baseType: !323, size: 8, offset: 8)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2461, file: !44, line: 81, baseType: !2521, size: 64, offset: 448)
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !44, line: 85, size: 384, elements: !2523)
!2523 = !{!2524, !2525, !2526, !2527, !2528, !2529}
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2522, file: !44, line: 86, baseType: !2484, size: 64)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2522, file: !44, line: 87, baseType: !473, size: 64, offset: 64)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2522, file: !44, line: 88, baseType: !473, size: 64, offset: 128)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2522, file: !44, line: 89, baseType: !473, size: 64, offset: 192)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2522, file: !44, line: 90, baseType: !190, size: 8, offset: 256)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2522, file: !44, line: 92, baseType: !2521, size: 64, offset: 320)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2461, file: !44, line: 82, baseType: !7, size: 32, offset: 512)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1114, file: !1115, line: 1463, baseType: !2532, offset: 21184)
!2532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1115, line: 739, elements: !696)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1114, file: !1115, line: 1470, baseType: !285, size: 128, align: 64, offset: 21184)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1114, file: !1115, line: 1471, baseType: !389, size: 32, offset: 21312)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1114, file: !1115, line: 1472, baseType: !182, size: 32, offset: 21344)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1114, file: !1115, line: 1474, baseType: !1113, size: 64, offset: 21376)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1114, file: !1115, line: 1475, baseType: !2538, size: 320, offset: 21440)
!2538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2539, line: 11, size: 320, elements: !2540)
!2539 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2540 = !{!2541, !2542, !2543, !2548}
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2538, file: !2539, line: 16, baseType: !62, size: 128)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2538, file: !2539, line: 17, baseType: !473, size: 64, offset: 128)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2538, file: !2539, line: 18, baseType: !2544, size: 64, offset: 192)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{null, !2547}
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2538, file: !2539, line: 19, baseType: !105, size: 32, offset: 256)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1114, file: !1115, line: 1478, baseType: !2550, size: 64, offset: 21760)
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1115, line: 1478, flags: DIFlagFwdDecl)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1114, file: !1115, line: 1482, baseType: !389, size: 32, offset: 21824)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1114, file: !1115, line: 1489, baseType: !56, size: 64, offset: 21888)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1114, file: !1115, line: 1504, baseType: !56, size: 64, offset: 21952)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1114, file: !1115, line: 1505, baseType: !112, size: 64, offset: 22016)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1114, file: !1115, line: 1506, baseType: !111, size: 64, offset: 22080)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1114, file: !1115, line: 1507, baseType: !112, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1114, file: !1115, line: 1508, baseType: !112, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1114, file: !1115, line: 1509, baseType: !112, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1114, file: !1115, line: 1510, baseType: !285, size: 128, align: 64, offset: 22208)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1114, file: !1115, line: 1511, baseType: !182, size: 32, offset: 22336)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1114, file: !1115, line: 1515, baseType: !2563, size: 64, offset: 22400)
!2563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !280, line: 56, size: 64, elements: !2564)
!2564 = !{!2565}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2563, file: !280, line: 57, baseType: !283, size: 64)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1114, file: !1115, line: 1518, baseType: !2563, size: 64, offset: 22464)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1114, file: !1115, line: 1528, baseType: !285, size: 128, align: 64, offset: 22528)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1114, file: !1115, line: 1552, baseType: !2569, size: 35328, offset: 23040)
!2569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2570, line: 430, size: 35328, elements: !2571)
!2570 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2571 = !{!2572, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2601, !2602, !2603, !2604, !2605, !2606, !2609, !2610, !2611, !2612}
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2569, file: !2570, line: 432, baseType: !2573, size: 192)
!2573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2574, size: 192, elements: !381)
!2574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2575, line: 16, size: 64, elements: !2576)
!2575 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2576 = !{!2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2574, file: !2575, line: 17, baseType: !330, size: 16)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2574, file: !2575, line: 18, baseType: !330, size: 16, offset: 16)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2574, file: !2575, line: 19, baseType: !330, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2574, file: !2575, line: 19, baseType: !330, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2574, file: !2575, line: 19, baseType: !330, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2574, file: !2575, line: 19, baseType: !330, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2574, file: !2575, line: 19, baseType: !330, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2574, file: !2575, line: 20, baseType: !330, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2574, file: !2575, line: 20, baseType: !330, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2574, file: !2575, line: 20, baseType: !330, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2574, file: !2575, line: 20, baseType: !330, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2574, file: !2575, line: 20, baseType: !330, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2574, file: !2575, line: 20, baseType: !330, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2569, file: !2570, line: 436, baseType: !473, size: 64, offset: 192)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2569, file: !2570, line: 440, baseType: !124, size: 16, offset: 256)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2569, file: !2570, line: 441, baseType: !124, size: 16, offset: 272)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2569, file: !2570, line: 442, baseType: !124, size: 16, offset: 288)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2569, file: !2570, line: 443, baseType: !124, size: 16, offset: 304)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2569, file: !2570, line: 447, baseType: !473, size: 64, offset: 320)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2569, file: !2570, line: 448, baseType: !473, size: 64, offset: 384)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2569, file: !2570, line: 459, baseType: !2598, size: 256, offset: 448)
!2598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2599, size: 256, elements: !401)
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2570, line: 428, flags: DIFlagFwdDecl)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2569, file: !2570, line: 461, baseType: !473, size: 64, offset: 704)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2569, file: !2570, line: 463, baseType: !473, size: 64, offset: 768)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2569, file: !2570, line: 465, baseType: !473, size: 64, offset: 832)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2569, file: !2570, line: 466, baseType: !473, size: 64, offset: 896)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2569, file: !2570, line: 467, baseType: !473, size: 64, offset: 960)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2569, file: !2570, line: 473, baseType: !2607, size: 64, offset: 1024)
!2607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64)
!2608 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2570, line: 10, flags: DIFlagFwdDecl)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2569, file: !2570, line: 480, baseType: !473, size: 64, offset: 1088)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2569, file: !2570, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2569, file: !2570, line: 491, baseType: !105, size: 32, offset: 1184)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2569, file: !2570, line: 501, baseType: !2613, size: 33792, offset: 1536)
!2613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2614, line: 448, size: 33792, elements: !2615)
!2614 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2615 = !{!2616, !2617, !2618, !2782, !2783, !2789, !2790}
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2613, file: !2614, line: 461, baseType: !7, size: 32)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2613, file: !2614, line: 468, baseType: !473, size: 64, offset: 64)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2613, file: !2614, line: 476, baseType: !2619, size: 64, offset: 128)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2614, line: 356, size: 33280, align: 512, elements: !2621)
!2621 = !{!2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631}
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2620, file: !2614, line: 358, baseType: !7, size: 32)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2620, file: !2614, line: 361, baseType: !7, size: 32, offset: 32)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2620, file: !2614, line: 364, baseType: !111, size: 64, offset: 64)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2620, file: !2614, line: 367, baseType: !111, size: 64, offset: 128)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2620, file: !2614, line: 370, baseType: !111, size: 64, offset: 192)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2620, file: !2614, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2620, file: !2614, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2620, file: !2614, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2620, file: !2614, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2620, file: !2614, line: 397, baseType: !2632, size: 32768, offset: 512)
!2632 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2614, line: 348, size: 32768, elements: !2633)
!2633 = !{!2634, !2649, !2688, !2765, !2778}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2632, file: !2614, line: 349, baseType: !2635, size: 896)
!2635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2614, line: 12, size: 896, elements: !2636)
!2636 = !{!2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2648}
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2635, file: !2614, line: 13, baseType: !105, size: 32)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2635, file: !2614, line: 14, baseType: !105, size: 32, offset: 32)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2635, file: !2614, line: 15, baseType: !105, size: 32, offset: 64)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2635, file: !2614, line: 16, baseType: !105, size: 32, offset: 96)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2635, file: !2614, line: 17, baseType: !105, size: 32, offset: 128)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2635, file: !2614, line: 18, baseType: !105, size: 32, offset: 160)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2635, file: !2614, line: 19, baseType: !105, size: 32, offset: 192)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2635, file: !2614, line: 22, baseType: !2645, size: 640, offset: 224)
!2645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 640, elements: !2646)
!2646 = !{!2647}
!2647 = !DISubrange(count: 20)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2635, file: !2614, line: 25, baseType: !105, size: 32, offset: 864)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2632, file: !2614, line: 350, baseType: !2650, size: 4096, align: 128)
!2650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2614, line: 34, size: 4096, align: 128, elements: !2651)
!2651 = !{!2652, !2653, !2654, !2655, !2656, !2671, !2672, !2673, !2677, !2679, !2683}
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2650, file: !2614, line: 35, baseType: !330, size: 16)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2650, file: !2614, line: 36, baseType: !330, size: 16, offset: 16)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2650, file: !2614, line: 37, baseType: !330, size: 16, offset: 32)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2650, file: !2614, line: 38, baseType: !330, size: 16, offset: 48)
!2656 = !DIDerivedType(tag: DW_TAG_member, scope: !2650, file: !2614, line: 39, baseType: !2657, size: 128, offset: 64)
!2657 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2650, file: !2614, line: 39, size: 128, elements: !2658)
!2658 = !{!2659, !2664}
!2659 = !DIDerivedType(tag: DW_TAG_member, scope: !2657, file: !2614, line: 40, baseType: !2660, size: 128)
!2660 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2657, file: !2614, line: 40, size: 128, elements: !2661)
!2661 = !{!2662, !2663}
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2660, file: !2614, line: 41, baseType: !111, size: 64)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2660, file: !2614, line: 42, baseType: !111, size: 64, offset: 64)
!2664 = !DIDerivedType(tag: DW_TAG_member, scope: !2657, file: !2614, line: 44, baseType: !2665, size: 128)
!2665 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2657, file: !2614, line: 44, size: 128, elements: !2666)
!2666 = !{!2667, !2668, !2669, !2670}
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2665, file: !2614, line: 45, baseType: !105, size: 32)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2665, file: !2614, line: 46, baseType: !105, size: 32, offset: 32)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2665, file: !2614, line: 47, baseType: !105, size: 32, offset: 64)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2665, file: !2614, line: 48, baseType: !105, size: 32, offset: 96)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2650, file: !2614, line: 51, baseType: !105, size: 32, offset: 192)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2650, file: !2614, line: 52, baseType: !105, size: 32, offset: 224)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2650, file: !2614, line: 55, baseType: !2674, size: 1024, offset: 256)
!2674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 1024, elements: !2675)
!2675 = !{!2676}
!2676 = !DISubrange(count: 32)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2650, file: !2614, line: 58, baseType: !2678, size: 2048, offset: 1280)
!2678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 2048, elements: !1944)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2650, file: !2614, line: 60, baseType: !2680, size: 384, offset: 3328)
!2680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 384, elements: !2681)
!2681 = !{!2682}
!2682 = !DISubrange(count: 12)
!2683 = !DIDerivedType(tag: DW_TAG_member, scope: !2650, file: !2614, line: 62, baseType: !2684, size: 384, offset: 3712)
!2684 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2650, file: !2614, line: 62, size: 384, elements: !2685)
!2685 = !{!2686, !2687}
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2684, file: !2614, line: 63, baseType: !2680, size: 384)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2684, file: !2614, line: 64, baseType: !2680, size: 384)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2632, file: !2614, line: 351, baseType: !2689, size: 1088)
!2689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2614, line: 79, size: 1088, elements: !2690)
!2690 = !{!2691, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2764}
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2689, file: !2614, line: 80, baseType: !105, size: 32)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2689, file: !2614, line: 81, baseType: !105, size: 32, offset: 32)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2689, file: !2614, line: 82, baseType: !105, size: 32, offset: 64)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2689, file: !2614, line: 83, baseType: !105, size: 32, offset: 96)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2689, file: !2614, line: 84, baseType: !105, size: 32, offset: 128)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2689, file: !2614, line: 85, baseType: !105, size: 32, offset: 160)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2689, file: !2614, line: 86, baseType: !105, size: 32, offset: 192)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2689, file: !2614, line: 88, baseType: !2645, size: 640, offset: 224)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2689, file: !2614, line: 89, baseType: !323, size: 8, offset: 864)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2689, file: !2614, line: 90, baseType: !323, size: 8, offset: 872)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2689, file: !2614, line: 91, baseType: !323, size: 8, offset: 880)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2689, file: !2614, line: 92, baseType: !323, size: 8, offset: 888)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2689, file: !2614, line: 93, baseType: !323, size: 8, offset: 896)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2689, file: !2614, line: 94, baseType: !323, size: 8, offset: 904)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2689, file: !2614, line: 95, baseType: !2706, size: 64, offset: 960)
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2708, line: 11, size: 128, elements: !2709)
!2708 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!2709 = !{!2710, !2711}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2707, file: !2708, line: 12, baseType: !268, size: 64)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2707, file: !2708, line: 13, baseType: !2712, size: 64, offset: 64)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2714, line: 103, size: 1344, elements: !2715)
!2714 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!2715 = !{!2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2744, !2745, !2746}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2713, file: !2714, line: 109, baseType: !473, size: 64)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2713, file: !2714, line: 110, baseType: !473, size: 64, offset: 64)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2713, file: !2714, line: 111, baseType: !473, size: 64, offset: 128)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2713, file: !2714, line: 112, baseType: !473, size: 64, offset: 192)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2713, file: !2714, line: 113, baseType: !473, size: 64, offset: 256)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2713, file: !2714, line: 114, baseType: !473, size: 64, offset: 320)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2713, file: !2714, line: 117, baseType: !473, size: 64, offset: 384)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2713, file: !2714, line: 118, baseType: !473, size: 64, offset: 448)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2713, file: !2714, line: 119, baseType: !473, size: 64, offset: 512)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2713, file: !2714, line: 120, baseType: !473, size: 64, offset: 576)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2713, file: !2714, line: 121, baseType: !473, size: 64, offset: 640)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2713, file: !2714, line: 122, baseType: !473, size: 64, offset: 704)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2713, file: !2714, line: 123, baseType: !473, size: 64, offset: 768)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2713, file: !2714, line: 124, baseType: !473, size: 64, offset: 832)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2713, file: !2714, line: 125, baseType: !473, size: 64, offset: 896)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2713, file: !2714, line: 139, baseType: !473, size: 64, offset: 960)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2713, file: !2714, line: 142, baseType: !473, size: 64, offset: 1024)
!2733 = !DIDerivedType(tag: DW_TAG_member, scope: !2713, file: !2714, line: 144, baseType: !2734, size: 64, offset: 1088)
!2734 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2713, file: !2714, line: 144, size: 64, elements: !2735)
!2735 = !{!2736, !2737, !2738}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2734, file: !2714, line: 146, baseType: !330, size: 16)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !2734, file: !2714, line: 148, baseType: !111, size: 64)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !2734, file: !2714, line: 150, baseType: !2739, size: 64)
!2739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !2714, line: 59, size: 64, elements: !2740)
!2740 = !{!2741, !2742, !2743}
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2739, file: !2714, line: 61, baseType: !111, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !2739, file: !2714, line: 63, baseType: !111, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !2739, file: !2714, line: 65, baseType: !111, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2713, file: !2714, line: 153, baseType: !473, size: 64, offset: 1152)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2713, file: !2714, line: 154, baseType: !473, size: 64, offset: 1216)
!2746 = !DIDerivedType(tag: DW_TAG_member, scope: !2713, file: !2714, line: 156, baseType: !2747, size: 64, offset: 1280)
!2747 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2713, file: !2714, line: 156, size: 64, elements: !2748)
!2748 = !{!2749, !2750, !2751}
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2747, file: !2714, line: 158, baseType: !330, size: 16)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !2747, file: !2714, line: 160, baseType: !111, size: 64)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !2747, file: !2714, line: 162, baseType: !2752, size: 64)
!2752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !2714, line: 69, size: 64, elements: !2753)
!2753 = !{!2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763}
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2752, file: !2714, line: 71, baseType: !111, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !2752, file: !2714, line: 73, baseType: !111, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !2752, file: !2714, line: 75, baseType: !111, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !2752, file: !2714, line: 77, baseType: !111, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !2752, file: !2714, line: 80, baseType: !111, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2752, file: !2714, line: 83, baseType: !111, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !2752, file: !2714, line: 86, baseType: !111, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !2752, file: !2714, line: 88, baseType: !111, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !2752, file: !2714, line: 93, baseType: !111, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !2752, file: !2714, line: 100, baseType: !111, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2689, file: !2614, line: 96, baseType: !105, size: 32, offset: 1024)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2632, file: !2614, line: 352, baseType: !2766, size: 4608, align: 512)
!2766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2614, line: 333, size: 4608, align: 512, elements: !2767)
!2767 = !{!2768, !2769, !2776}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2766, file: !2614, line: 334, baseType: !2650, size: 4096, align: 128)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2766, file: !2614, line: 335, baseType: !2770, size: 512, offset: 4096)
!2770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2614, line: 312, size: 512, elements: !2771)
!2771 = !{!2772, !2773, !2774}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2770, file: !2614, line: 313, baseType: !111, size: 64)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2770, file: !2614, line: 314, baseType: !111, size: 64, offset: 64)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2770, file: !2614, line: 315, baseType: !2775, size: 384, offset: 128)
!2775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 384, elements: !522)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2766, file: !2614, line: 336, baseType: !2777, offset: 4608)
!2777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, elements: !420)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2632, file: !2614, line: 353, baseType: !2779, size: 32768)
!2779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 32768, elements: !2780)
!2780 = !{!2781}
!2781 = !DISubrange(count: 4096)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2613, file: !2614, line: 484, baseType: !2619, size: 64, offset: 192)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2613, file: !2614, line: 491, baseType: !2784, size: 128, offset: 256)
!2784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2614, line: 404, size: 128, elements: !2785)
!2785 = !{!2786, !2787, !2788}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !2784, file: !2614, line: 424, baseType: !111, size: 64)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !2784, file: !2614, line: 432, baseType: !7, size: 32, offset: 64)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !2784, file: !2614, line: 440, baseType: !7, size: 32, offset: 96)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2613, file: !2614, line: 498, baseType: !2784, size: 128, offset: 384)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2613, file: !2614, line: 508, baseType: !2620, size: 33280, align: 512, offset: 512)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1095, file: !1096, line: 16, baseType: !405, size: 192, offset: 512)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1095, file: !1096, line: 17, baseType: !315, size: 32, offset: 704)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !656, file: !15, line: 1240, baseType: !56, size: 64, offset: 6912)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !656, file: !15, line: 1243, baseType: !105, size: 32, offset: 6976)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !656, file: !15, line: 1245, baseType: !265, size: 64, offset: 7040)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !656, file: !15, line: 1246, baseType: !265, size: 64, offset: 7104)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !656, file: !15, line: 1248, baseType: !107, size: 32, offset: 7168)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !656, file: !15, line: 1249, baseType: !2799, size: 64, offset: 7232)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !15, line: 634, flags: DIFlagFwdDecl)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !656, file: !15, line: 1252, baseType: !2802, size: 256, offset: 7296)
!2802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 256, elements: !2675)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !656, file: !15, line: 1253, baseType: !2804, size: 128, offset: 7552)
!2804 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2805, line: 21, baseType: !2806)
!2805 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!2806 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2805, line: 19, size: 128, elements: !2807)
!2807 = !{!2808}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2806, file: !2805, line: 20, baseType: !2809, size: 128)
!2809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !324, size: 128, elements: !1701)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !656, file: !15, line: 1255, baseType: !7, size: 32, offset: 7680)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !656, file: !15, line: 1261, baseType: !344, size: 256, offset: 7744)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !656, file: !15, line: 1267, baseType: !166, size: 64, offset: 8000)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !656, file: !15, line: 1269, baseType: !2814, size: 64, offset: 8064)
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2815 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2816)
!2816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !73, line: 128, size: 1024, align: 512, elements: !2817)
!2817 = !{!2818, !2822, !2823, !2830, !2836, !2840, !2844, !2848, !2849, !2853, !2857, !2862, !2866}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2816, file: !73, line: 129, baseType: !2819, size: 64)
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2820, size: 64)
!2820 = !DISubroutineType(types: !2821)
!2821 = !{!182, !71, !7}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2816, file: !73, line: 130, baseType: !2819, size: 64, offset: 64)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2816, file: !73, line: 131, baseType: !2824, size: 64, offset: 128)
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2825 = !DISubroutineType(types: !2826)
!2826 = !{!182, !2827, !2829}
!2827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2828, size: 64)
!2828 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2816, file: !73, line: 132, baseType: !2831, size: 64, offset: 192)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = !DISubroutineType(types: !2833)
!2833 = !{!182, !2827, !7, !166, !2834}
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2835, size: 64)
!2835 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2816, file: !73, line: 134, baseType: !2837, size: 64, offset: 256)
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2838 = !DISubroutineType(types: !2839)
!2839 = !{!182, !2827}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2816, file: !73, line: 135, baseType: !2841, size: 64, offset: 320)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{!182, !71}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2816, file: !73, line: 136, baseType: !2845, size: 64, offset: 384)
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2846 = !DISubroutineType(types: !2847)
!2847 = !{null, !71}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2816, file: !73, line: 137, baseType: !2845, size: 64, offset: 448)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2816, file: !73, line: 138, baseType: !2850, size: 64, offset: 512)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = !DISubroutineType(types: !2852)
!2852 = !{null, !71, !119}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2816, file: !73, line: 139, baseType: !2854, size: 64, offset: 576)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = !DISubroutineType(types: !2856)
!2856 = !{!196, !71, !196, !182}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2816, file: !73, line: 140, baseType: !2858, size: 64, offset: 640)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = !DISubroutineType(types: !2860)
!2860 = !{!650, !2861}
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2816, file: !73, line: 141, baseType: !2863, size: 64, offset: 704)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = !DISubroutineType(types: !2865)
!2865 = !{!182, !935, !190}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2816, file: !73, line: 142, baseType: !2867, size: 64, offset: 768)
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!2868 = !DISubroutineType(types: !2869)
!2869 = !{!71, !71, !2870}
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2871 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !120)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !656, file: !15, line: 1271, baseType: !2873, size: 448, offset: 8128)
!2873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !874, line: 63, size: 448, elements: !2874)
!2874 = !{!2875, !2880, !2881, !2882, !2883, !2884, !2885}
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2873, file: !874, line: 64, baseType: !2876, size: 64)
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2877, size: 64)
!2877 = !DISubroutineType(types: !2878)
!2878 = !{!473, !2879, !872}
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2873, size: 64)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2873, file: !874, line: 66, baseType: !2876, size: 64, offset: 64)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2873, file: !874, line: 69, baseType: !268, size: 64, offset: 128)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2873, file: !874, line: 70, baseType: !182, size: 32, offset: 192)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2873, file: !874, line: 71, baseType: !7, size: 32, offset: 224)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2873, file: !874, line: 74, baseType: !136, size: 128, offset: 256)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2873, file: !874, line: 85, baseType: !2886, size: 64, offset: 384)
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !656, file: !15, line: 1274, baseType: !336, size: 64, offset: 8576)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !656, file: !15, line: 1280, baseType: !336, size: 64, offset: 8640)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !656, file: !15, line: 1283, baseType: !182, size: 32, offset: 8704)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !656, file: !15, line: 1286, baseType: !2402, size: 32, offset: 8736)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !656, file: !15, line: 1289, baseType: !2892, size: 64, offset: 8768)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1534, line: 18, flags: DIFlagFwdDecl)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !656, file: !15, line: 1290, baseType: !398, size: 64, offset: 8832)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !656, file: !15, line: 1297, baseType: !616, size: 64, offset: 8896)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !656, file: !15, line: 1304, baseType: !2897, size: 64, offset: 8960)
!2897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2898, line: 49, size: 64, elements: !2899)
!2898 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!2899 = !{!2900}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2897, file: !2898, line: 50, baseType: !2901, size: 64)
!2901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2902, size: 64)
!2902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2898, line: 41, size: 512, align: 512, elements: !2903)
!2903 = !{!2904, !2905, !2910}
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2902, file: !2898, line: 43, baseType: !295, size: 32)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2902, file: !2898, line: 45, baseType: !2906, size: 192, offset: 64)
!2906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2898, line: 29, size: 192, elements: !2907)
!2907 = !{!2908, !2909}
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2906, file: !2898, line: 30, baseType: !136, size: 128)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2906, file: !2898, line: 32, baseType: !268, size: 64, offset: 128)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2902, file: !2898, line: 46, baseType: !268, size: 64, offset: 256)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !656, file: !15, line: 1305, baseType: !2897, size: 64, offset: 9024)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !656, file: !15, line: 1306, baseType: !285, size: 128, align: 64, offset: 9088)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !656, file: !15, line: 1307, baseType: !1533, size: 256, offset: 9216)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !656, file: !15, line: 1309, baseType: !344, size: 256, offset: 9472)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !656, file: !15, line: 1314, baseType: !182, size: 32, offset: 9728)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !656, file: !15, line: 1317, baseType: !295, size: 32, align: 512, offset: 10240)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !656, file: !15, line: 1318, baseType: !136, size: 128, offset: 10304)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !656, file: !15, line: 1320, baseType: !295, size: 32, offset: 10432)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !656, file: !15, line: 1321, baseType: !136, size: 128, offset: 10496)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !651, file: !185, line: 73, baseType: !182, size: 32, offset: 128)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !651, file: !185, line: 74, baseType: !183, size: 64, offset: 192)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !646, file: !647, line: 10, baseType: !71, size: 64, offset: 64)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !273, file: !15, line: 1015, baseType: !119, size: 64, offset: 1344)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !273, file: !15, line: 1016, baseType: !2925, size: 64, offset: 1408)
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2927)
!2927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !15, line: 1914, size: 2112, elements: !2928)
!2928 = !{!2929, !2930, !2934, !2938, !2942, !2943, !2944, !2950, !2963, !2980, !2984, !2985, !3042, !3043, !3047, !3052, !3053, !3057, !3061, !3067, !3068, !3072, !3073, !3077, !3081, !3082, !3087, !3091, !3095, !3099, !3103, !3104, !3110}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2927, file: !15, line: 1915, baseType: !688, size: 64)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2927, file: !15, line: 1916, baseType: !2931, size: 64, offset: 64)
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2932 = !DISubroutineType(types: !2933)
!2933 = !{!257, !272, !257, !182}
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2927, file: !15, line: 1917, baseType: !2935, size: 64, offset: 128)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = !DISubroutineType(types: !2937)
!2937 = !{!814, !272, !196, !771, !789}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2927, file: !15, line: 1918, baseType: !2939, size: 64, offset: 192)
!2939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2940, size: 64)
!2940 = !DISubroutineType(types: !2941)
!2941 = !{!814, !272, !166, !771, !789}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2927, file: !15, line: 1919, baseType: !2336, size: 64, offset: 256)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2927, file: !15, line: 1920, baseType: !2336, size: 64, offset: 320)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2927, file: !15, line: 1921, baseType: !2945, size: 64, offset: 384)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = !DISubroutineType(types: !2947)
!2947 = !{!182, !2339, !2948, !7}
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !15, line: 53, flags: DIFlagFwdDecl)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2927, file: !15, line: 1923, baseType: !2951, size: 64, offset: 448)
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2952 = !DISubroutineType(types: !2953)
!2953 = !{!182, !272, !2954}
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !15, line: 1858, size: 128, elements: !2956)
!2956 = !{!2957, !2962}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2955, file: !15, line: 1859, baseType: !2958, size: 64)
!2958 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !15, line: 1855, baseType: !2959)
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64)
!2960 = !DISubroutineType(types: !2961)
!2961 = !{!190, !2954, !166, !182, !257, !111, !7}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2955, file: !15, line: 1860, baseType: !257, size: 64, offset: 64)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2927, file: !15, line: 1924, baseType: !2964, size: 64, offset: 512)
!2964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2965, size: 64)
!2965 = !DISubroutineType(types: !2966)
!2966 = !{!2967, !272, !2969}
!2967 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2968, line: 59, baseType: !7)
!2968 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2971, line: 37, size: 128, elements: !2972)
!2971 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!2972 = !{!2973, !2979}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2970, file: !2971, line: 38, baseType: !2974, size: 64)
!2974 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2971, line: 31, baseType: !2975)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{null, !272, !2978, !2969}
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2970, file: !2971, line: 39, baseType: !2967, size: 32, offset: 64)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2927, file: !15, line: 1925, baseType: !2981, size: 64, offset: 576)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{!268, !272, !7, !473}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2927, file: !15, line: 1926, baseType: !2981, size: 64, offset: 640)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2927, file: !15, line: 1927, baseType: !2986, size: 64, offset: 704)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{!182, !272, !2989}
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1403, line: 625, size: 1344, elements: !2991)
!2991 = !{!2992, !3001, !3002, !3008, !3015, !3016, !3021, !3022, !3027, !3028, !3031, !3035, !3036, !3037, !3038, !3039, !3040}
!2992 = !DIDerivedType(tag: DW_TAG_member, scope: !2990, file: !1403, line: 628, baseType: !2993, size: 128)
!2993 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2990, file: !1403, line: 628, size: 128, elements: !2994)
!2994 = !{!2995, !3000}
!2995 = !DIDerivedType(tag: DW_TAG_member, scope: !2993, file: !1403, line: 629, baseType: !2996, size: 128)
!2996 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2993, file: !1403, line: 629, size: 128, elements: !2997)
!2997 = !{!2998, !2999}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2996, file: !1403, line: 631, baseType: !473, size: 64)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2996, file: !1403, line: 632, baseType: !473, size: 64, offset: 64)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2993, file: !1403, line: 635, baseType: !285, size: 128, align: 64)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2990, file: !1403, line: 639, baseType: !1401, size: 64, offset: 128)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2990, file: !1403, line: 640, baseType: !3003, size: 64, offset: 192)
!3003 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1437, line: 297, baseType: !3004)
!3004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1437, line: 297, size: 64, elements: !3005)
!3005 = !{!3006}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !3004, file: !1437, line: 297, baseType: !3007, size: 64)
!3007 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1442, line: 19, baseType: !473)
!3008 = !DIDerivedType(tag: DW_TAG_member, scope: !2990, file: !1403, line: 646, baseType: !3009, size: 64, offset: 256)
!3009 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2990, file: !1403, line: 646, size: 64, elements: !3010)
!3010 = !{!3011, !3014}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !3009, file: !1403, line: 647, baseType: !3012, size: 64)
!3012 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3013)
!3013 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !1403, line: 542, baseType: !473)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !3009, file: !1403, line: 648, baseType: !3013, size: 64)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2990, file: !1403, line: 666, baseType: !182, size: 32, offset: 320)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2990, file: !1403, line: 667, baseType: !3017, size: 64, offset: 384)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !1403, line: 579, size: 320, elements: !3019)
!3019 = !{!3020}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3018, file: !1403, line: 580, baseType: !478, size: 320)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2990, file: !1403, line: 670, baseType: !190, size: 8, offset: 448)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2990, file: !1403, line: 681, baseType: !3023, size: 256, offset: 512)
!3023 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2990, file: !1403, line: 678, size: 256, elements: !3024)
!3024 = !{!3025, !3026}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3023, file: !1403, line: 679, baseType: !469, size: 192, align: 64)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !3023, file: !1403, line: 680, baseType: !473, size: 64, offset: 192)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2990, file: !1403, line: 689, baseType: !136, size: 128, offset: 768)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2990, file: !1403, line: 691, baseType: !3029, size: 64, offset: 896)
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3030, size: 64)
!3030 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1403, line: 691, flags: DIFlagFwdDecl)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2990, file: !1403, line: 694, baseType: !3032, size: 64, offset: 960)
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3033, size: 64)
!3033 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3034)
!3034 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1403, line: 694, flags: DIFlagFwdDecl)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2990, file: !1403, line: 697, baseType: !473, size: 64, offset: 1024)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2990, file: !1403, line: 699, baseType: !272, size: 64, offset: 1088)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2990, file: !1403, line: 700, baseType: !56, size: 64, offset: 1152)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2990, file: !1403, line: 711, baseType: !336, size: 64, offset: 1216)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2990, file: !1403, line: 717, baseType: !2133, size: 64, offset: 1280)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2990, file: !1403, line: 722, baseType: !3041, offset: 1344)
!3041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1403, line: 570, elements: !696)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2927, file: !15, line: 1928, baseType: !473, size: 64, offset: 768)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2927, file: !15, line: 1929, baseType: !3044, size: 64, offset: 832)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{!182, !119, !272}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2927, file: !15, line: 1930, baseType: !3048, size: 64, offset: 896)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3049 = !DISubroutineType(types: !3050)
!3050 = !{!182, !272, !3051}
!3051 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !15, line: 1061, baseType: !56)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2927, file: !15, line: 1931, baseType: !3044, size: 64, offset: 960)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2927, file: !15, line: 1932, baseType: !3054, size: 64, offset: 1024)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = !DISubroutineType(types: !3056)
!3056 = !{!182, !272, !257, !257, !182}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2927, file: !15, line: 1933, baseType: !3058, size: 64, offset: 1088)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{!182, !182, !272, !182}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2927, file: !15, line: 1934, baseType: !3062, size: 64, offset: 1152)
!3062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3063, size: 64)
!3063 = !DISubroutineType(types: !3064)
!3064 = !{!182, !272, !182, !3065}
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3066 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !15, line: 1063, flags: DIFlagFwdDecl)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2927, file: !15, line: 1935, baseType: !1426, size: 64, offset: 1216)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2927, file: !15, line: 1936, baseType: !3069, size: 64, offset: 1280)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = !DISubroutineType(types: !3071)
!3071 = !{!182, !182}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2927, file: !15, line: 1937, baseType: !3062, size: 64, offset: 1344)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2927, file: !15, line: 1938, baseType: !3074, size: 64, offset: 1408)
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3075, size: 64)
!3075 = !DISubroutineType(types: !3076)
!3076 = !{!814, !2170, !272, !789, !771, !7}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2927, file: !15, line: 1939, baseType: !3078, size: 64, offset: 1472)
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3079, size: 64)
!3079 = !DISubroutineType(types: !3080)
!3080 = !{!814, !272, !789, !2170, !771, !7}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2927, file: !15, line: 1940, baseType: !2392, size: 64, offset: 1536)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2927, file: !15, line: 1941, baseType: !3083, size: 64, offset: 1600)
!3083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3084, size: 64)
!3084 = !DISubroutineType(types: !3085)
!3085 = !{!182, !272, !182, !3086, !2313}
!3086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2927, file: !15, line: 1942, baseType: !3088, size: 64, offset: 1664)
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = !DISubroutineType(types: !3090)
!3090 = !{!268, !272, !182, !257, !257}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2927, file: !15, line: 1944, baseType: !3092, size: 64, offset: 1728)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = !DISubroutineType(types: !3094)
!3094 = !{null, !765, !272}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2927, file: !15, line: 1948, baseType: !3096, size: 64, offset: 1792)
!3096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3097, size: 64)
!3097 = !DISubroutineType(types: !3098)
!3098 = !{!814, !272, !257, !272, !257, !771, !7}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2927, file: !15, line: 1950, baseType: !3100, size: 64, offset: 1856)
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{!257, !272, !257, !272, !257, !257, !7}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2927, file: !15, line: 1953, baseType: !3054, size: 64, offset: 1920)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2927, file: !15, line: 1954, baseType: !3105, size: 64, offset: 1984)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!182, !3108, !7}
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3109, size: 64)
!3109 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !15, line: 1911, flags: DIFlagFwdDecl)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2927, file: !15, line: 1955, baseType: !3111, size: 64, offset: 2048)
!3111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3112, size: 64)
!3112 = !DISubroutineType(types: !3113)
!3113 = !{!182, !3108, !2948, !7}
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !273, file: !15, line: 1018, baseType: !111, size: 64, offset: 1472)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !273, file: !15, line: 1020, baseType: !56, size: 64, offset: 1536)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !273, file: !15, line: 1023, baseType: !56, size: 64, offset: 1600)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !273, file: !15, line: 1027, baseType: !3118, size: 64, offset: 1664)
!3118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !273, file: !15, line: 1029, baseType: !2198, size: 64, offset: 1728)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !273, file: !15, line: 1030, baseType: !2402, size: 32, offset: 1792)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !273, file: !15, line: 1031, baseType: !2402, size: 32, offset: 1824)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !156, file: !15, line: 1988, baseType: !3123, size: 64, offset: 896)
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3124, size: 64)
!3124 = !DISubroutineType(types: !3125)
!3125 = !{!182, !183, !935, !3126, !105, !7}
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3127, size: 64)
!3127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3128, line: 22, size: 1280, elements: !3129)
!3128 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3129 = !{!3130, !3131, !3132, !3133, !3134, !3135, !3136, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150}
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3127, file: !3128, line: 23, baseType: !105, size: 32)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3127, file: !3128, line: 24, baseType: !123, size: 16, offset: 32)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3127, file: !3128, line: 25, baseType: !7, size: 32, offset: 64)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3127, file: !3128, line: 26, baseType: !500, size: 32, offset: 96)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3127, file: !3128, line: 27, baseType: !111, size: 64, offset: 128)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3127, file: !3128, line: 28, baseType: !111, size: 64, offset: 192)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3127, file: !3128, line: 41, baseType: !111, size: 64, offset: 256)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3127, file: !3128, line: 42, baseType: !222, size: 32, offset: 320)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3127, file: !3128, line: 43, baseType: !222, size: 32, offset: 352)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3127, file: !3128, line: 44, baseType: !127, size: 32, offset: 384)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3127, file: !3128, line: 45, baseType: !142, size: 32, offset: 416)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3127, file: !3128, line: 46, baseType: !257, size: 64, offset: 448)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3127, file: !3128, line: 47, baseType: !261, size: 128, offset: 512)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3127, file: !3128, line: 48, baseType: !261, size: 128, offset: 640)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3127, file: !3128, line: 49, baseType: !261, size: 128, offset: 768)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3127, file: !3128, line: 50, baseType: !261, size: 128, offset: 896)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3127, file: !3128, line: 51, baseType: !111, size: 64, offset: 1024)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3127, file: !3128, line: 52, baseType: !111, size: 64, offset: 1088)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3127, file: !3128, line: 53, baseType: !105, size: 32, offset: 1152)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3127, file: !3128, line: 54, baseType: !105, size: 32, offset: 1184)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3127, file: !3128, line: 55, baseType: !111, size: 64, offset: 1216)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !156, file: !15, line: 1990, baseType: !3152, size: 64, offset: 960)
!3152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3153, size: 64)
!3153 = !DISubroutineType(types: !3154)
!3154 = !{!814, !71, !196, !771}
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !156, file: !15, line: 1991, baseType: !3156, size: 64, offset: 1024)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = !DISubroutineType(types: !3158)
!3158 = !{!182, !119, !3159, !111, !111}
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !15, line: 55, flags: DIFlagFwdDecl)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !156, file: !15, line: 1993, baseType: !3162, size: 64, offset: 1088)
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3163 = !DISubroutineType(types: !3164)
!3164 = !{!182, !119, !182}
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !156, file: !15, line: 1994, baseType: !3166, size: 64, offset: 1152)
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64)
!3167 = !DISubroutineType(types: !3168)
!3168 = !{!182, !119, !71, !272, !7, !123}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !156, file: !15, line: 1997, baseType: !3170, size: 64, offset: 1216)
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3171 = !DISubroutineType(types: !3172)
!3172 = !{!182, !183, !119, !272, !123}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !156, file: !15, line: 1999, baseType: !3174, size: 64, offset: 1280)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = !DISubroutineType(types: !3176)
!3176 = !{!150, !183, !71, !182}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !156, file: !15, line: 2001, baseType: !3178, size: 64, offset: 1344)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = !DISubroutineType(types: !3180)
!3180 = !{!182, !183, !71, !150, !182}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !156, file: !15, line: 2003, baseType: !3182, size: 64, offset: 1408)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{!182, !183, !71, !3185}
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3186, size: 64)
!3186 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !15, line: 76, flags: DIFlagFwdDecl)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !156, file: !15, line: 2005, baseType: !3188, size: 64, offset: 1472)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = !DISubroutineType(types: !3190)
!3190 = !{!182, !71, !3185}
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !156, file: !15, line: 2006, baseType: !3192, size: 64, offset: 1536)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = !DISubroutineType(types: !3194)
!3194 = !{!3195, !119}
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !15, line: 3192, size: 192, elements: !3197)
!3197 = !{!3198, !3199}
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3196, file: !15, line: 3193, baseType: !2203, size: 128)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3196, file: !15, line: 3194, baseType: !105, size: 32, offset: 128)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !120, file: !15, line: 655, baseType: !655, size: 64, offset: 448)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !120, file: !15, line: 656, baseType: !2198, size: 64, offset: 512)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !120, file: !15, line: 659, baseType: !56, size: 64, offset: 576)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !120, file: !15, line: 663, baseType: !473, size: 64, offset: 640)
!3204 = !DIDerivedType(tag: DW_TAG_member, scope: !120, file: !15, line: 671, baseType: !3205, size: 32, offset: 704)
!3205 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !120, file: !15, line: 671, size: 32, elements: !3206)
!3206 = !{!3207, !3209}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3205, file: !15, line: 672, baseType: !3208, size: 32)
!3208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3205, file: !15, line: 673, baseType: !7, size: 32)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !120, file: !15, line: 675, baseType: !222, size: 32, offset: 736)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !120, file: !15, line: 676, baseType: !257, size: 64, offset: 768)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !120, file: !15, line: 677, baseType: !261, size: 128, offset: 832)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !120, file: !15, line: 678, baseType: !261, size: 128, offset: 960)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !120, file: !15, line: 679, baseType: !261, size: 128, offset: 1088)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !120, file: !15, line: 680, baseType: !295, size: 32, offset: 1216)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !120, file: !15, line: 681, baseType: !124, size: 16, offset: 1248)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !120, file: !15, line: 682, baseType: !323, size: 8, offset: 1264)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !120, file: !15, line: 683, baseType: !323, size: 8, offset: 1272)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !120, file: !15, line: 684, baseType: !1008, size: 64, offset: 1280)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !120, file: !15, line: 691, baseType: !473, size: 64, offset: 1344)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !120, file: !15, line: 692, baseType: !478, size: 320, offset: 1408)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !120, file: !15, line: 694, baseType: !473, size: 64, offset: 1728)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !120, file: !15, line: 695, baseType: !473, size: 64, offset: 1792)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !120, file: !15, line: 697, baseType: !62, size: 128, offset: 1856)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !120, file: !15, line: 698, baseType: !136, size: 128, offset: 1984)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !120, file: !15, line: 707, baseType: !136, size: 128, offset: 2112)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !120, file: !15, line: 708, baseType: !136, size: 128, offset: 2240)
!3228 = !DIDerivedType(tag: DW_TAG_member, scope: !120, file: !15, line: 709, baseType: !3229, size: 128, offset: 2368)
!3229 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !120, file: !15, line: 709, size: 128, elements: !3230)
!3230 = !{!3231, !3232}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3229, file: !15, line: 710, baseType: !398, size: 64)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3229, file: !15, line: 711, baseType: !285, size: 128, align: 64)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !120, file: !15, line: 713, baseType: !338, size: 64, offset: 2496)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !120, file: !15, line: 714, baseType: !338, size: 64, offset: 2560)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !120, file: !15, line: 715, baseType: !315, size: 32, offset: 2624)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !120, file: !15, line: 716, baseType: !315, size: 32, offset: 2656)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !120, file: !15, line: 717, baseType: !315, size: 32, offset: 2688)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !120, file: !15, line: 719, baseType: !315, size: 32, offset: 2720)
!3239 = !DIDerivedType(tag: DW_TAG_member, scope: !120, file: !15, line: 721, baseType: !3240, size: 64, offset: 2752)
!3240 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !120, file: !15, line: 721, size: 64, elements: !3241)
!3241 = !{!3242, !3243}
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3240, file: !15, line: 722, baseType: !2925, size: 64)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3240, file: !15, line: 723, baseType: !715, size: 64)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !120, file: !15, line: 725, baseType: !3245, size: 64, offset: 2816)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !15, line: 725, flags: DIFlagFwdDecl)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !120, file: !15, line: 726, baseType: !2199, size: 1536, align: 64, offset: 2880)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !120, file: !15, line: 727, baseType: !136, size: 128, offset: 4416)
!3249 = !DIDerivedType(tag: DW_TAG_member, scope: !120, file: !15, line: 728, baseType: !3250, size: 64, offset: 4544)
!3250 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !120, file: !15, line: 728, size: 64, elements: !3251)
!3251 = !{!3252, !3253, !3256, !3257}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3250, file: !15, line: 729, baseType: !2170, size: 64)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3250, file: !15, line: 730, baseType: !3254, size: 64)
!3254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3255, size: 64)
!3255 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !15, line: 730, flags: DIFlagFwdDecl)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3250, file: !15, line: 731, baseType: !196, size: 64)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3250, file: !15, line: 732, baseType: !7, size: 32)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !120, file: !15, line: 735, baseType: !107, size: 32, offset: 4608)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !120, file: !15, line: 738, baseType: !107, size: 32, offset: 4640)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !120, file: !15, line: 739, baseType: !2799, size: 64, offset: 4672)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !120, file: !15, line: 750, baseType: !56, size: 64, offset: 4736)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !72, file: !73, line: 91, baseType: !3263, size: 256, offset: 448)
!3263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 256, elements: !2675)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !72, file: !73, line: 94, baseType: !3265, size: 64, offset: 704)
!3265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3266, line: 25, size: 64, elements: !3267)
!3266 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3267 = !{!3268}
!3268 = !DIDerivedType(tag: DW_TAG_member, scope: !3265, file: !3266, line: 26, baseType: !3269, size: 64)
!3269 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3265, file: !3266, line: 26, size: 64, elements: !3270)
!3270 = !{!3271, !3272}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3269, file: !3266, line: 28, baseType: !112, size: 64, align: 64)
!3272 = !DIDerivedType(tag: DW_TAG_member, scope: !3269, file: !3266, line: 30, baseType: !3273, size: 64)
!3273 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3269, file: !3266, line: 30, size: 64, elements: !3274)
!3274 = !{!3275, !3276}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3273, file: !3266, line: 31, baseType: !295, size: 32)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3273, file: !3266, line: 32, baseType: !182, size: 32, offset: 32)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !72, file: !73, line: 95, baseType: !2814, size: 64, offset: 768)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !72, file: !73, line: 96, baseType: !655, size: 64, offset: 832)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !72, file: !73, line: 97, baseType: !473, size: 64, offset: 896)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !72, file: !73, line: 98, baseType: !56, size: 64, offset: 960)
!3281 = !DIDerivedType(tag: DW_TAG_member, scope: !72, file: !73, line: 100, baseType: !3282, size: 128, offset: 1024)
!3282 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !72, file: !73, line: 100, size: 128, elements: !3283)
!3283 = !{!3284, !3285}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3282, file: !73, line: 101, baseType: !136, size: 128)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3282, file: !73, line: 102, baseType: !2978, size: 64)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !72, file: !73, line: 104, baseType: !136, size: 128, offset: 1152)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !72, file: !73, line: 105, baseType: !136, size: 128, offset: 1280)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !72, file: !73, line: 113, baseType: !3289, size: 128, offset: 1408)
!3289 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !72, file: !73, line: 109, size: 128, elements: !3290)
!3290 = !{!3291, !3292, !3293}
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3289, file: !73, line: 110, baseType: !62, size: 128)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3289, file: !73, line: 111, baseType: !87, size: 128)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3289, file: !73, line: 112, baseType: !285, size: 128, align: 64)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !58, file: !59, line: 43, baseType: !651, size: 256, offset: 256)
!3295 = !DIDerivedType(tag: DW_TAG_member, scope: !58, file: !59, line: 44, baseType: !3296, size: 128, offset: 512)
!3296 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !58, file: !59, line: 44, size: 128, elements: !3297)
!3297 = !{!3298, !3299}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_rcu", scope: !3296, file: !59, line: 45, baseType: !285, size: 128, align: 64)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_llist", scope: !3296, file: !59, line: 46, baseType: !279, size: 64)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_pcp", scope: !58, file: !59, line: 49, baseType: !3301, size: 64, offset: 640)
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_pcp", file: !59, line: 27, size: 64, elements: !3303)
!3303 = !{!3304, !3305}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_count", scope: !3302, file: !59, line: 28, baseType: !182, size: 32)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_writers", scope: !3302, file: !59, line: 29, baseType: !182, size: 32, offset: 32)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_mounts", scope: !58, file: !59, line: 54, baseType: !136, size: 128, offset: 704)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_child", scope: !58, file: !59, line: 55, baseType: !136, size: 128, offset: 832)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_instance", scope: !58, file: !59, line: 56, baseType: !136, size: 128, offset: 960)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_devname", scope: !58, file: !59, line: 57, baseType: !166, size: 64, offset: 1088)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_list", scope: !58, file: !59, line: 58, baseType: !136, size: 128, offset: 1152)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_expire", scope: !58, file: !59, line: 59, baseType: !136, size: 128, offset: 1280)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_share", scope: !58, file: !59, line: 60, baseType: !136, size: 128, offset: 1408)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_slave_list", scope: !58, file: !59, line: 61, baseType: !136, size: 128, offset: 1536)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_slave", scope: !58, file: !59, line: 62, baseType: !136, size: 128, offset: 1664)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_master", scope: !58, file: !59, line: 63, baseType: !57, size: 64, offset: 1792)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !58, file: !59, line: 64, baseType: !1740, size: 64, offset: 1856)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_mp", scope: !58, file: !59, line: 65, baseType: !3318, size: 64, offset: 1920)
!3318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3319, size: 64)
!3319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mountpoint", file: !59, line: 32, size: 320, elements: !3320)
!3320 = !{!3321, !3322, !3323, !3324}
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "m_hash", scope: !3319, file: !59, line: 33, baseType: !62, size: 128)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "m_dentry", scope: !3319, file: !59, line: 34, baseType: !71, size: 64, offset: 128)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "m_list", scope: !3319, file: !59, line: 35, baseType: !398, size: 64, offset: 192)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "m_count", scope: !3319, file: !59, line: 36, baseType: !182, size: 32, offset: 256)
!3325 = !DIDerivedType(tag: DW_TAG_member, scope: !58, file: !59, line: 66, baseType: !3326, size: 128, offset: 1984)
!3326 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !58, file: !59, line: 66, size: 128, elements: !3327)
!3327 = !{!3328, !3329}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_mp_list", scope: !3326, file: !59, line: 67, baseType: !62, size: 128)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_umount", scope: !3326, file: !59, line: 68, baseType: !62, size: 128)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_umounting", scope: !58, file: !59, line: 70, baseType: !136, size: 128, offset: 2112)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_fsnotify_marks", scope: !58, file: !59, line: 72, baseType: !2799, size: 64, offset: 2240)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_fsnotify_mask", scope: !58, file: !59, line: 73, baseType: !107, size: 32, offset: 2304)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !58, file: !59, line: 75, baseType: !182, size: 32, offset: 2336)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_group_id", scope: !58, file: !59, line: 76, baseType: !182, size: 32, offset: 2368)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_expiry_mark", scope: !58, file: !59, line: 77, baseType: !182, size: 32, offset: 2400)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_pins", scope: !58, file: !59, line: 78, baseType: !398, size: 64, offset: 2432)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_stuck_children", scope: !58, file: !59, line: 79, baseType: !398, size: 64, offset: 2496)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !139)
!3340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3341, size: 64)
!3341 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !66)
!3342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3343, size: 64)
!3343 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !68)
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3345, size: 64)
!3345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3339)
!3346 = !{!3347, !0, !3352, !3354, !3356, !3358}
!3347 = !DIGlobalVariableExpression(var: !3348, expr: !DIExpression())
!3348 = distinct !DIGlobalVariable(scope: null, file: !3, line: 455, type: !3349, isLocal: true, isDefinition: true)
!3349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 88, elements: !3350)
!3350 = !{!3351}
!3351 = !DISubrange(count: 11)
!3352 = !DIGlobalVariableExpression(var: !3353, expr: !DIExpression())
!3353 = distinct !DIGlobalVariable(name: "first_source", scope: !2, file: !3, line: 216, type: !57, isLocal: true, isDefinition: true)
!3354 = !DIGlobalVariableExpression(var: !3355, expr: !DIExpression())
!3355 = distinct !DIGlobalVariable(name: "last_source", scope: !2, file: !3, line: 216, type: !57, isLocal: true, isDefinition: true)
!3356 = !DIGlobalVariableExpression(var: !3357, expr: !DIExpression())
!3357 = distinct !DIGlobalVariable(name: "dest_master", scope: !2, file: !3, line: 216, type: !57, isLocal: true, isDefinition: true)
!3358 = !DIGlobalVariableExpression(var: !3359, expr: !DIExpression())
!3359 = distinct !DIGlobalVariable(name: "list", scope: !2, file: !3, line: 217, type: !3118, isLocal: true, isDefinition: true)
!3360 = !{i32 7, !"Dwarf Version", i32 5}
!3361 = !{i32 2, !"Debug Info Version", i32 3}
!3362 = !{i32 1, !"wchar_size", i32 2}
!3363 = !{i32 8, !"cf-protection-branch", i32 1}
!3364 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3365 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!3366 = !{i32 1, !"Code Model", i32 2}
!3367 = !{i32 1, !"override-stack-alignment", i32 8}
!3368 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!3369 = distinct !DISubprogram(name: "get_dominating_id", scope: !3, file: !3, line: 60, type: !3370, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3372)
!3370 = !DISubroutineType(types: !3371)
!3371 = !{!182, !57, !935}
!3372 = !{!3373, !3374, !3375, !3376}
!3373 = !DILocalVariable(name: "mnt", arg: 1, scope: !3369, file: !3, line: 60, type: !57)
!3374 = !DILocalVariable(name: "root", arg: 2, scope: !3369, file: !3, line: 60, type: !935)
!3375 = !DILocalVariable(name: "m", scope: !3369, file: !3, line: 62, type: !57)
!3376 = !DILocalVariable(name: "d", scope: !3377, file: !3, line: 65, type: !57)
!3377 = distinct !DILexicalBlock(scope: !3378, file: !3, line: 64, column: 58)
!3378 = distinct !DILexicalBlock(scope: !3379, file: !3, line: 64, column: 2)
!3379 = distinct !DILexicalBlock(scope: !3369, file: !3, line: 64, column: 2)
!3380 = !DILocation(line: 60, column: 37, scope: !3369)
!3381 = !DILocation(line: 60, column: 61, scope: !3369)
!3382 = !DILocation(line: 62, column: 2, scope: !3369)
!3383 = !DILocation(line: 62, column: 16, scope: !3369)
!3384 = !DILocation(line: 64, column: 11, scope: !3379)
!3385 = !DILocation(line: 64, column: 16, scope: !3379)
!3386 = !DILocation(line: 64, column: 9, scope: !3379)
!3387 = !DILocation(line: 64, column: 7, scope: !3379)
!3388 = !DILocation(line: 64, column: 28, scope: !3378)
!3389 = !DILocation(line: 64, column: 30, scope: !3378)
!3390 = !DILocation(line: 64, column: 2, scope: !3379)
!3391 = !DILocation(line: 65, column: 3, scope: !3377)
!3392 = !DILocation(line: 65, column: 17, scope: !3377)
!3393 = !DILocation(line: 65, column: 41, scope: !3377)
!3394 = !DILocation(line: 65, column: 44, scope: !3377)
!3395 = !DILocation(line: 65, column: 49, scope: !3377)
!3396 = !DILocation(line: 65, column: 57, scope: !3377)
!3397 = !DILocation(line: 65, column: 21, scope: !3377)
!3398 = !DILocation(line: 66, column: 7, scope: !3399)
!3399 = distinct !DILexicalBlock(scope: !3377, file: !3, line: 66, column: 7)
!3400 = !DILocation(line: 66, column: 7, scope: !3377)
!3401 = !DILocation(line: 67, column: 11, scope: !3399)
!3402 = !DILocation(line: 67, column: 14, scope: !3399)
!3403 = !DILocation(line: 67, column: 4, scope: !3399)
!3404 = !DILocation(line: 68, column: 2, scope: !3378)
!3405 = !DILocation(line: 68, column: 2, scope: !3377)
!3406 = !DILocation(line: 64, column: 43, scope: !3378)
!3407 = !DILocation(line: 64, column: 46, scope: !3378)
!3408 = !DILocation(line: 64, column: 41, scope: !3378)
!3409 = !DILocation(line: 64, column: 2, scope: !3378)
!3410 = distinct !{!3410, !3390, !3411, !3412, !3413}
!3411 = !DILocation(line: 68, column: 2, scope: !3379)
!3412 = !{!"llvm.loop.mustprogress"}
!3413 = !{!"llvm.loop.unroll.disable"}
!3414 = !DILocation(line: 70, column: 2, scope: !3369)
!3415 = !DILocation(line: 71, column: 1, scope: !3369)
!3416 = distinct !DISubprogram(name: "get_peer_under_root", scope: !3, file: !3, line: 37, type: !3417, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3419)
!3417 = !DISubroutineType(types: !3418)
!3418 = !{!57, !57, !1740, !935}
!3419 = !{!3420, !3421, !3422, !3423}
!3420 = !DILocalVariable(name: "mnt", arg: 1, scope: !3416, file: !3, line: 37, type: !57)
!3421 = !DILocalVariable(name: "ns", arg: 2, scope: !3416, file: !3, line: 38, type: !1740)
!3422 = !DILocalVariable(name: "root", arg: 3, scope: !3416, file: !3, line: 39, type: !935)
!3423 = !DILocalVariable(name: "m", scope: !3416, file: !3, line: 41, type: !57)
!3424 = !DILocation(line: 37, column: 56, scope: !3416)
!3425 = !DILocation(line: 38, column: 29, scope: !3416)
!3426 = !DILocation(line: 39, column: 26, scope: !3416)
!3427 = !DILocation(line: 41, column: 2, scope: !3416)
!3428 = !DILocation(line: 41, column: 16, scope: !3416)
!3429 = !DILocation(line: 41, column: 20, scope: !3416)
!3430 = !DILocation(line: 43, column: 2, scope: !3416)
!3431 = !DILocation(line: 45, column: 7, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3433, file: !3, line: 45, column: 7)
!3433 = distinct !DILexicalBlock(scope: !3416, file: !3, line: 43, column: 5)
!3434 = !DILocation(line: 45, column: 10, scope: !3432)
!3435 = !DILocation(line: 45, column: 20, scope: !3432)
!3436 = !DILocation(line: 45, column: 17, scope: !3432)
!3437 = !DILocation(line: 45, column: 23, scope: !3432)
!3438 = !DILocation(line: 45, column: 44, scope: !3432)
!3439 = !DILocation(line: 45, column: 47, scope: !3432)
!3440 = !DILocation(line: 45, column: 50, scope: !3432)
!3441 = !DILocation(line: 45, column: 54, scope: !3432)
!3442 = !DILocation(line: 45, column: 64, scope: !3432)
!3443 = !DILocation(line: 45, column: 26, scope: !3432)
!3444 = !DILocation(line: 45, column: 7, scope: !3433)
!3445 = !DILocation(line: 46, column: 11, scope: !3432)
!3446 = !DILocation(line: 46, column: 4, scope: !3432)
!3447 = !DILocation(line: 48, column: 17, scope: !3433)
!3448 = !DILocation(line: 48, column: 7, scope: !3433)
!3449 = !DILocation(line: 48, column: 5, scope: !3433)
!3450 = !DILocation(line: 49, column: 2, scope: !3433)
!3451 = !DILocation(line: 49, column: 11, scope: !3416)
!3452 = !DILocation(line: 49, column: 16, scope: !3416)
!3453 = !DILocation(line: 49, column: 13, scope: !3416)
!3454 = distinct !{!3454, !3430, !3455, !3412, !3413}
!3455 = !DILocation(line: 49, column: 19, scope: !3416)
!3456 = !DILocation(line: 51, column: 2, scope: !3416)
!3457 = !DILocation(line: 52, column: 1, scope: !3416)
!3458 = distinct !DISubprogram(name: "change_mnt_propagation", scope: !3, file: !3, line: 122, type: !3459, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3461)
!3459 = !DISubroutineType(types: !3460)
!3460 = !{null, !57, !182}
!3461 = !{!3462, !3463}
!3462 = !DILocalVariable(name: "mnt", arg: 1, scope: !3458, file: !3, line: 122, type: !57)
!3463 = !DILocalVariable(name: "type", arg: 2, scope: !3458, file: !3, line: 122, type: !182)
!3464 = !DILocation(line: 122, column: 43, scope: !3458)
!3465 = !DILocation(line: 122, column: 52, scope: !3458)
!3466 = !DILocation(line: 124, column: 6, scope: !3467)
!3467 = distinct !DILexicalBlock(scope: !3458, file: !3, line: 124, column: 6)
!3468 = !DILocation(line: 124, column: 11, scope: !3467)
!3469 = !DILocation(line: 124, column: 6, scope: !3458)
!3470 = !DILocation(line: 125, column: 18, scope: !3471)
!3471 = distinct !DILexicalBlock(scope: !3467, file: !3, line: 124, column: 25)
!3472 = !DILocation(line: 125, column: 3, scope: !3471)
!3473 = !DILocation(line: 126, column: 3, scope: !3471)
!3474 = !DILocation(line: 128, column: 16, scope: !3458)
!3475 = !DILocation(line: 128, column: 2, scope: !3458)
!3476 = !DILocation(line: 129, column: 6, scope: !3477)
!3477 = distinct !DILexicalBlock(scope: !3458, file: !3, line: 129, column: 6)
!3478 = !DILocation(line: 129, column: 11, scope: !3477)
!3479 = !DILocation(line: 129, column: 6, scope: !3458)
!3480 = !DILocation(line: 130, column: 18, scope: !3481)
!3481 = distinct !DILexicalBlock(scope: !3477, file: !3, line: 129, column: 24)
!3482 = !DILocation(line: 130, column: 23, scope: !3481)
!3483 = !DILocation(line: 130, column: 3, scope: !3481)
!3484 = !DILocation(line: 131, column: 3, scope: !3481)
!3485 = !DILocation(line: 131, column: 8, scope: !3481)
!3486 = !DILocation(line: 131, column: 19, scope: !3481)
!3487 = !DILocation(line: 132, column: 7, scope: !3488)
!3488 = distinct !DILexicalBlock(scope: !3481, file: !3, line: 132, column: 7)
!3489 = !DILocation(line: 132, column: 12, scope: !3488)
!3490 = !DILocation(line: 132, column: 7, scope: !3481)
!3491 = !DILocation(line: 133, column: 4, scope: !3488)
!3492 = !DILocation(line: 133, column: 9, scope: !3488)
!3493 = !DILocation(line: 133, column: 13, scope: !3488)
!3494 = !DILocation(line: 133, column: 23, scope: !3488)
!3495 = !DILocation(line: 135, column: 4, scope: !3488)
!3496 = !DILocation(line: 135, column: 9, scope: !3488)
!3497 = !DILocation(line: 135, column: 13, scope: !3488)
!3498 = !DILocation(line: 135, column: 23, scope: !3488)
!3499 = !DILocation(line: 136, column: 2, scope: !3481)
!3500 = !DILocation(line: 137, column: 1, scope: !3458)
!3501 = distinct !DISubprogram(name: "set_mnt_shared", scope: !3502, file: !3502, line: 33, type: !3503, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3505)
!3502 = !DIFile(filename: "fs/pnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4b78f2a3ce9b4cf14a45ba4b0e24d9d9")
!3503 = !DISubroutineType(types: !3504)
!3504 = !{null, !57}
!3505 = !{!3506}
!3506 = !DILocalVariable(name: "mnt", arg: 1, scope: !3501, file: !3502, line: 33, type: !57)
!3507 = !DILocation(line: 33, column: 49, scope: !3501)
!3508 = !DILocation(line: 35, column: 2, scope: !3501)
!3509 = !DILocation(line: 35, column: 7, scope: !3501)
!3510 = !DILocation(line: 35, column: 11, scope: !3501)
!3511 = !DILocation(line: 35, column: 21, scope: !3501)
!3512 = !DILocation(line: 36, column: 2, scope: !3501)
!3513 = !DILocation(line: 36, column: 7, scope: !3501)
!3514 = !DILocation(line: 36, column: 11, scope: !3501)
!3515 = !DILocation(line: 36, column: 21, scope: !3501)
!3516 = !DILocation(line: 37, column: 1, scope: !3501)
!3517 = distinct !DISubprogram(name: "do_make_slave", scope: !3, file: !3, line: 73, type: !3518, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3520)
!3518 = !DISubroutineType(types: !3519)
!3519 = !{!182, !57}
!3520 = !{!3521, !3522, !3523, !3524, !3529, !3532, !3534, !3537}
!3521 = !DILocalVariable(name: "mnt", arg: 1, scope: !3517, file: !3, line: 73, type: !57)
!3522 = !DILocalVariable(name: "master", scope: !3517, file: !3, line: 75, type: !57)
!3523 = !DILocalVariable(name: "slave_mnt", scope: !3517, file: !3, line: 75, type: !57)
!3524 = !DILocalVariable(name: "p", scope: !3525, file: !3, line: 84, type: !139)
!3525 = distinct !DILexicalBlock(scope: !3526, file: !3, line: 83, column: 16)
!3526 = distinct !DILexicalBlock(scope: !3527, file: !3, line: 83, column: 7)
!3527 = distinct !DILexicalBlock(scope: !3528, file: !3, line: 77, column: 35)
!3528 = distinct !DILexicalBlock(scope: !3517, file: !3, line: 77, column: 6)
!3529 = !DILocalVariable(name: "__mptr", scope: !3530, file: !3, line: 86, type: !56)
!3530 = distinct !DILexicalBlock(scope: !3531, file: !3, line: 86, column: 17)
!3531 = distinct !DILexicalBlock(scope: !3525, file: !3, line: 85, column: 27)
!3532 = !DILocalVariable(name: "m", scope: !3533, file: !3, line: 94, type: !57)
!3533 = distinct !DILexicalBlock(scope: !3528, file: !3, line: 93, column: 9)
!3534 = !DILocalVariable(name: "__mptr", scope: !3535, file: !3, line: 110, type: !56)
!3535 = distinct !DILexicalBlock(scope: !3536, file: !3, line: 110, column: 2)
!3536 = distinct !DILexicalBlock(scope: !3517, file: !3, line: 110, column: 2)
!3537 = !DILocalVariable(name: "__mptr", scope: !3538, file: !3, line: 110, type: !56)
!3538 = distinct !DILexicalBlock(scope: !3539, file: !3, line: 110, column: 2)
!3539 = distinct !DILexicalBlock(scope: !3536, file: !3, line: 110, column: 2)
!3540 = !DILocation(line: 73, column: 40, scope: !3517)
!3541 = !DILocation(line: 75, column: 2, scope: !3517)
!3542 = !DILocation(line: 75, column: 16, scope: !3517)
!3543 = !DILocation(line: 75, column: 25, scope: !3517)
!3544 = !DILocation(line: 77, column: 18, scope: !3528)
!3545 = !DILocation(line: 77, column: 23, scope: !3528)
!3546 = !DILocation(line: 77, column: 6, scope: !3528)
!3547 = !DILocation(line: 77, column: 6, scope: !3517)
!3548 = !DILocation(line: 78, column: 7, scope: !3549)
!3549 = distinct !DILexicalBlock(scope: !3527, file: !3, line: 78, column: 7)
!3550 = !DILocation(line: 78, column: 7, scope: !3527)
!3551 = !DILocation(line: 79, column: 25, scope: !3552)
!3552 = distinct !DILexicalBlock(scope: !3549, file: !3, line: 78, column: 27)
!3553 = !DILocation(line: 79, column: 4, scope: !3552)
!3554 = !DILocation(line: 80, column: 4, scope: !3552)
!3555 = !DILocation(line: 81, column: 3, scope: !3552)
!3556 = !DILocation(line: 82, column: 12, scope: !3527)
!3557 = !DILocation(line: 82, column: 17, scope: !3527)
!3558 = !DILocation(line: 82, column: 10, scope: !3527)
!3559 = !DILocation(line: 83, column: 8, scope: !3526)
!3560 = !DILocation(line: 83, column: 7, scope: !3527)
!3561 = !DILocation(line: 84, column: 4, scope: !3525)
!3562 = !DILocation(line: 84, column: 22, scope: !3525)
!3563 = !DILocation(line: 84, column: 27, scope: !3525)
!3564 = !DILocation(line: 84, column: 32, scope: !3525)
!3565 = !DILocation(line: 85, column: 4, scope: !3525)
!3566 = !DILocation(line: 85, column: 23, scope: !3525)
!3567 = !DILocation(line: 85, column: 12, scope: !3525)
!3568 = !DILocation(line: 85, column: 11, scope: !3525)
!3569 = !DILocation(line: 86, column: 17, scope: !3530)
!3570 = !DILocation(line: 86, column: 17, scope: !3531)
!3571 = !DILocation(line: 86, column: 15, scope: !3531)
!3572 = !DILocation(line: 88, column: 20, scope: !3531)
!3573 = !DILocation(line: 88, column: 31, scope: !3531)
!3574 = !DILocation(line: 88, column: 5, scope: !3531)
!3575 = !DILocation(line: 89, column: 5, scope: !3531)
!3576 = !DILocation(line: 89, column: 16, scope: !3531)
!3577 = !DILocation(line: 89, column: 27, scope: !3531)
!3578 = distinct !{!3578, !3565, !3579, !3412, !3413}
!3579 = !DILocation(line: 90, column: 4, scope: !3525)
!3580 = !DILocation(line: 91, column: 4, scope: !3525)
!3581 = !DILocation(line: 92, column: 3, scope: !3526)
!3582 = !DILocation(line: 93, column: 2, scope: !3527)
!3583 = !DILocation(line: 94, column: 3, scope: !3533)
!3584 = !DILocation(line: 94, column: 17, scope: !3533)
!3585 = !DILocation(line: 100, column: 31, scope: !3586)
!3586 = distinct !DILexicalBlock(scope: !3533, file: !3, line: 100, column: 3)
!3587 = !DILocation(line: 100, column: 21, scope: !3586)
!3588 = !DILocation(line: 100, column: 19, scope: !3586)
!3589 = !DILocation(line: 100, column: 10, scope: !3586)
!3590 = !DILocation(line: 100, column: 8, scope: !3586)
!3591 = !DILocation(line: 100, column: 37, scope: !3592)
!3592 = distinct !DILexicalBlock(scope: !3586, file: !3, line: 100, column: 3)
!3593 = !DILocation(line: 100, column: 42, scope: !3592)
!3594 = !DILocation(line: 100, column: 39, scope: !3592)
!3595 = !DILocation(line: 100, column: 3, scope: !3586)
!3596 = !DILocation(line: 101, column: 8, scope: !3597)
!3597 = distinct !DILexicalBlock(scope: !3598, file: !3, line: 101, column: 8)
!3598 = distinct !DILexicalBlock(scope: !3592, file: !3, line: 100, column: 65)
!3599 = !DILocation(line: 101, column: 11, scope: !3597)
!3600 = !DILocation(line: 101, column: 15, scope: !3597)
!3601 = !DILocation(line: 101, column: 27, scope: !3597)
!3602 = !DILocation(line: 101, column: 32, scope: !3597)
!3603 = !DILocation(line: 101, column: 36, scope: !3597)
!3604 = !DILocation(line: 101, column: 24, scope: !3597)
!3605 = !DILocation(line: 101, column: 8, scope: !3598)
!3606 = !DILocation(line: 102, column: 14, scope: !3607)
!3607 = distinct !DILexicalBlock(scope: !3597, file: !3, line: 101, column: 46)
!3608 = !DILocation(line: 102, column: 12, scope: !3607)
!3609 = !DILocation(line: 103, column: 5, scope: !3607)
!3610 = !DILocation(line: 105, column: 3, scope: !3598)
!3611 = !DILocation(line: 100, column: 61, scope: !3592)
!3612 = !DILocation(line: 100, column: 51, scope: !3592)
!3613 = !DILocation(line: 100, column: 49, scope: !3592)
!3614 = !DILocation(line: 100, column: 3, scope: !3592)
!3615 = distinct !{!3615, !3595, !3616, !3412, !3413}
!3616 = !DILocation(line: 105, column: 3, scope: !3586)
!3617 = !DILocation(line: 106, column: 18, scope: !3533)
!3618 = !DILocation(line: 106, column: 23, scope: !3533)
!3619 = !DILocation(line: 106, column: 3, scope: !3533)
!3620 = !DILocation(line: 107, column: 3, scope: !3533)
!3621 = !DILocation(line: 107, column: 8, scope: !3533)
!3622 = !DILocation(line: 107, column: 21, scope: !3533)
!3623 = !DILocation(line: 108, column: 3, scope: !3533)
!3624 = !DILocation(line: 109, column: 2, scope: !3528)
!3625 = !DILocation(line: 110, column: 2, scope: !3535)
!3626 = !DILocation(line: 110, column: 2, scope: !3536)
!3627 = !DILocation(line: 110, column: 2, scope: !3539)
!3628 = !DILocation(line: 111, column: 27, scope: !3539)
!3629 = !DILocation(line: 111, column: 3, scope: !3539)
!3630 = !DILocation(line: 111, column: 14, scope: !3539)
!3631 = !DILocation(line: 111, column: 25, scope: !3539)
!3632 = !DILocation(line: 110, column: 2, scope: !3538)
!3633 = distinct !{!3633, !3626, !3634, !3412, !3413}
!3634 = !DILocation(line: 111, column: 27, scope: !3536)
!3635 = !DILocation(line: 112, column: 13, scope: !3517)
!3636 = !DILocation(line: 112, column: 18, scope: !3517)
!3637 = !DILocation(line: 112, column: 30, scope: !3517)
!3638 = !DILocation(line: 112, column: 38, scope: !3517)
!3639 = !DILocation(line: 112, column: 2, scope: !3517)
!3640 = !DILocation(line: 113, column: 15, scope: !3517)
!3641 = !DILocation(line: 113, column: 20, scope: !3517)
!3642 = !DILocation(line: 113, column: 36, scope: !3517)
!3643 = !DILocation(line: 113, column: 44, scope: !3517)
!3644 = !DILocation(line: 113, column: 59, scope: !3517)
!3645 = !DILocation(line: 113, column: 2, scope: !3517)
!3646 = !DILocation(line: 114, column: 18, scope: !3517)
!3647 = !DILocation(line: 114, column: 23, scope: !3517)
!3648 = !DILocation(line: 114, column: 2, scope: !3517)
!3649 = !DILocation(line: 115, column: 20, scope: !3517)
!3650 = !DILocation(line: 115, column: 2, scope: !3517)
!3651 = !DILocation(line: 115, column: 7, scope: !3517)
!3652 = !DILocation(line: 115, column: 18, scope: !3517)
!3653 = !DILocation(line: 116, column: 2, scope: !3517)
!3654 = !DILocation(line: 117, column: 1, scope: !3517)
!3655 = distinct !DISubprogram(name: "list_del_init", scope: !3656, file: !3656, line: 285, type: !3657, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3659)
!3656 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!3657 = !DISubroutineType(types: !3658)
!3658 = !{null, !139}
!3659 = !{!3660}
!3660 = !DILocalVariable(name: "entry", arg: 1, scope: !3655, file: !3656, line: 285, type: !139)
!3661 = !DILocation(line: 285, column: 52, scope: !3655)
!3662 = !DILocation(line: 287, column: 19, scope: !3655)
!3663 = !DILocation(line: 287, column: 2, scope: !3655)
!3664 = !DILocation(line: 288, column: 17, scope: !3655)
!3665 = !DILocation(line: 288, column: 2, scope: !3655)
!3666 = !DILocation(line: 289, column: 1, scope: !3655)
!3667 = distinct !DISubprogram(name: "propagate_mnt", scope: !3, file: !3, line: 287, type: !3668, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3670)
!3668 = !DISubroutineType(types: !3669)
!3669 = !{!182, !57, !3318, !57, !3118}
!3670 = !{!3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3682, !3684, !3687}
!3671 = !DILocalVariable(name: "dest_mnt", arg: 1, scope: !3667, file: !3, line: 287, type: !57)
!3672 = !DILocalVariable(name: "dest_mp", arg: 2, scope: !3667, file: !3, line: 287, type: !3318)
!3673 = !DILocalVariable(name: "source_mnt", arg: 3, scope: !3667, file: !3, line: 288, type: !57)
!3674 = !DILocalVariable(name: "tree_list", arg: 4, scope: !3667, file: !3, line: 288, type: !3118)
!3675 = !DILocalVariable(name: "m", scope: !3667, file: !3, line: 290, type: !57)
!3676 = !DILocalVariable(name: "n", scope: !3667, file: !3, line: 290, type: !57)
!3677 = !DILocalVariable(name: "ret", scope: !3667, file: !3, line: 291, type: !182)
!3678 = !DILabel(scope: !3667, name: "out", file: !3, line: 323)
!3679 = !DILocalVariable(name: "____ptr", scope: !3680, file: !3, line: 325, type: !66)
!3680 = distinct !DILexicalBlock(scope: !3681, file: !3, line: 325, column: 2)
!3681 = distinct !DILexicalBlock(scope: !3667, file: !3, line: 325, column: 2)
!3682 = !DILocalVariable(name: "__mptr", scope: !3683, file: !3, line: 325, type: !56)
!3683 = distinct !DILexicalBlock(scope: !3680, file: !3, line: 325, column: 2)
!3684 = !DILocalVariable(name: "____ptr", scope: !3685, file: !3, line: 325, type: !66)
!3685 = distinct !DILexicalBlock(scope: !3686, file: !3, line: 325, column: 2)
!3686 = distinct !DILexicalBlock(scope: !3681, file: !3, line: 325, column: 2)
!3687 = !DILocalVariable(name: "__mptr", scope: !3688, file: !3, line: 325, type: !56)
!3688 = distinct !DILexicalBlock(scope: !3685, file: !3, line: 325, column: 2)
!3689 = !DILocation(line: 287, column: 33, scope: !3667)
!3690 = !DILocation(line: 287, column: 62, scope: !3667)
!3691 = !DILocation(line: 288, column: 21, scope: !3667)
!3692 = !DILocation(line: 288, column: 52, scope: !3667)
!3693 = !DILocation(line: 290, column: 2, scope: !3667)
!3694 = !DILocation(line: 290, column: 16, scope: !3667)
!3695 = !DILocation(line: 290, column: 20, scope: !3667)
!3696 = !DILocation(line: 291, column: 2, scope: !3667)
!3697 = !DILocation(line: 291, column: 6, scope: !3667)
!3698 = !DILocation(line: 298, column: 14, scope: !3667)
!3699 = !DILocation(line: 298, column: 12, scope: !3667)
!3700 = !DILocation(line: 299, column: 17, scope: !3667)
!3701 = !DILocation(line: 299, column: 15, scope: !3667)
!3702 = !DILocation(line: 300, column: 16, scope: !3667)
!3703 = !DILocation(line: 300, column: 14, scope: !3667)
!3704 = !DILocation(line: 301, column: 9, scope: !3667)
!3705 = !DILocation(line: 301, column: 7, scope: !3667)
!3706 = !DILocation(line: 302, column: 16, scope: !3667)
!3707 = !DILocation(line: 302, column: 26, scope: !3667)
!3708 = !DILocation(line: 302, column: 14, scope: !3667)
!3709 = !DILocation(line: 305, column: 21, scope: !3710)
!3710 = distinct !DILexicalBlock(scope: !3667, file: !3, line: 305, column: 2)
!3711 = !DILocation(line: 305, column: 11, scope: !3710)
!3712 = !DILocation(line: 305, column: 9, scope: !3710)
!3713 = !DILocation(line: 305, column: 7, scope: !3710)
!3714 = !DILocation(line: 305, column: 32, scope: !3715)
!3715 = distinct !DILexicalBlock(scope: !3710, file: !3, line: 305, column: 2)
!3716 = !DILocation(line: 305, column: 37, scope: !3715)
!3717 = !DILocation(line: 305, column: 34, scope: !3715)
!3718 = !DILocation(line: 305, column: 2, scope: !3710)
!3719 = !DILocation(line: 306, column: 23, scope: !3720)
!3720 = distinct !DILexicalBlock(scope: !3715, file: !3, line: 305, column: 65)
!3721 = !DILocation(line: 306, column: 26, scope: !3720)
!3722 = !DILocation(line: 306, column: 9, scope: !3720)
!3723 = !DILocation(line: 306, column: 7, scope: !3720)
!3724 = !DILocation(line: 307, column: 7, scope: !3725)
!3725 = distinct !DILexicalBlock(scope: !3720, file: !3, line: 307, column: 7)
!3726 = !DILocation(line: 307, column: 7, scope: !3720)
!3727 = !DILocation(line: 308, column: 4, scope: !3725)
!3728 = !DILocation(line: 309, column: 2, scope: !3720)
!3729 = !DILocation(line: 305, column: 61, scope: !3715)
!3730 = !DILocation(line: 305, column: 51, scope: !3715)
!3731 = !DILocation(line: 305, column: 49, scope: !3715)
!3732 = !DILocation(line: 305, column: 2, scope: !3715)
!3733 = distinct !{!3733, !3718, !3734, !3412, !3413}
!3734 = !DILocation(line: 309, column: 2, scope: !3710)
!3735 = !DILocation(line: 312, column: 22, scope: !3736)
!3736 = distinct !DILexicalBlock(scope: !3667, file: !3, line: 312, column: 2)
!3737 = !DILocation(line: 312, column: 32, scope: !3736)
!3738 = !DILocation(line: 312, column: 11, scope: !3736)
!3739 = !DILocation(line: 312, column: 9, scope: !3736)
!3740 = !DILocation(line: 312, column: 7, scope: !3736)
!3741 = !DILocation(line: 312, column: 43, scope: !3742)
!3742 = distinct !DILexicalBlock(scope: !3736, file: !3, line: 312, column: 2)
!3743 = !DILocation(line: 312, column: 2, scope: !3736)
!3744 = !DILocation(line: 315, column: 7, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !3742, file: !3, line: 313, column: 33)
!3746 = !DILocation(line: 315, column: 5, scope: !3745)
!3747 = !DILocation(line: 316, column: 3, scope: !3745)
!3748 = !DILocation(line: 317, column: 24, scope: !3749)
!3749 = distinct !DILexicalBlock(scope: !3745, file: !3, line: 316, column: 6)
!3750 = !DILocation(line: 317, column: 27, scope: !3749)
!3751 = !DILocation(line: 317, column: 10, scope: !3749)
!3752 = !DILocation(line: 317, column: 8, scope: !3749)
!3753 = !DILocation(line: 318, column: 8, scope: !3754)
!3754 = distinct !DILexicalBlock(scope: !3749, file: !3, line: 318, column: 8)
!3755 = !DILocation(line: 318, column: 8, scope: !3749)
!3756 = !DILocation(line: 319, column: 5, scope: !3754)
!3757 = !DILocation(line: 320, column: 18, scope: !3749)
!3758 = !DILocation(line: 320, column: 8, scope: !3749)
!3759 = !DILocation(line: 320, column: 6, scope: !3749)
!3760 = !DILocation(line: 321, column: 3, scope: !3749)
!3761 = !DILocation(line: 321, column: 12, scope: !3745)
!3762 = !DILocation(line: 321, column: 17, scope: !3745)
!3763 = !DILocation(line: 321, column: 14, scope: !3745)
!3764 = distinct !{!3764, !3747, !3765, !3412, !3413}
!3765 = !DILocation(line: 321, column: 18, scope: !3745)
!3766 = !DILocation(line: 322, column: 2, scope: !3745)
!3767 = !DILocation(line: 313, column: 19, scope: !3742)
!3768 = !DILocation(line: 313, column: 22, scope: !3742)
!3769 = !DILocation(line: 313, column: 8, scope: !3742)
!3770 = !DILocation(line: 313, column: 6, scope: !3742)
!3771 = !DILocation(line: 312, column: 2, scope: !3742)
!3772 = distinct !{!3772, !3743, !3773, !3412, !3413}
!3773 = !DILocation(line: 322, column: 2, scope: !3736)
!3774 = !DILocation(line: 323, column: 1, scope: !3667)
!3775 = !DILocation(line: 324, column: 2, scope: !3667)
!3776 = !DILocation(line: 325, column: 2, scope: !3680)
!3777 = !DILocation(line: 325, column: 2, scope: !3683)
!3778 = !DILocation(line: 325, column: 2, scope: !3681)
!3779 = !DILocation(line: 325, column: 2, scope: !3686)
!3780 = !DILocation(line: 326, column: 7, scope: !3781)
!3781 = distinct !DILexicalBlock(scope: !3686, file: !3, line: 325, column: 47)
!3782 = !DILocation(line: 326, column: 10, scope: !3781)
!3783 = !DILocation(line: 326, column: 5, scope: !3781)
!3784 = !DILocation(line: 327, column: 7, scope: !3785)
!3785 = distinct !DILexicalBlock(scope: !3781, file: !3, line: 327, column: 7)
!3786 = !DILocation(line: 327, column: 10, scope: !3785)
!3787 = !DILocation(line: 327, column: 24, scope: !3785)
!3788 = !DILocation(line: 327, column: 34, scope: !3785)
!3789 = !DILocation(line: 327, column: 21, scope: !3785)
!3790 = !DILocation(line: 327, column: 7, scope: !3781)
!3791 = !DILocation(line: 328, column: 4, scope: !3785)
!3792 = !DILocation(line: 329, column: 2, scope: !3781)
!3793 = !DILocation(line: 325, column: 2, scope: !3685)
!3794 = !DILocation(line: 325, column: 2, scope: !3688)
!3795 = distinct !{!3795, !3778, !3796, !3412, !3413}
!3796 = !DILocation(line: 329, column: 2, scope: !3681)
!3797 = !DILocation(line: 330, column: 2, scope: !3667)
!3798 = !DILocation(line: 331, column: 9, scope: !3667)
!3799 = !DILocation(line: 332, column: 1, scope: !3667)
!3800 = !DILocation(line: 331, column: 2, scope: !3667)
!3801 = distinct !DISubprogram(name: "next_peer", scope: !3, file: !3, line: 17, type: !3802, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3804)
!3802 = !DISubroutineType(types: !3803)
!3803 = !{!57, !57}
!3804 = !{!3805, !3806}
!3805 = !DILocalVariable(name: "p", arg: 1, scope: !3801, file: !3, line: 17, type: !57)
!3806 = !DILocalVariable(name: "__mptr", scope: !3807, file: !3, line: 19, type: !56)
!3807 = distinct !DILexicalBlock(scope: !3801, file: !3, line: 19, column: 9)
!3808 = !DILocation(line: 17, column: 53, scope: !3801)
!3809 = !DILocation(line: 19, column: 9, scope: !3807)
!3810 = !DILocation(line: 19, column: 9, scope: !3801)
!3811 = !DILocation(line: 19, column: 2, scope: !3801)
!3812 = distinct !DISubprogram(name: "propagate_one", scope: !3, file: !3, line: 224, type: !3813, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3815)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{!182, !57, !3318}
!3815 = !{!3816, !3817, !3818, !3819, !3820, !3823, !3824, !3825}
!3816 = !DILocalVariable(name: "m", arg: 1, scope: !3812, file: !3, line: 224, type: !57)
!3817 = !DILocalVariable(name: "dest_mp", arg: 2, scope: !3812, file: !3, line: 224, type: !3318)
!3818 = !DILocalVariable(name: "child", scope: !3812, file: !3, line: 226, type: !57)
!3819 = !DILocalVariable(name: "type", scope: !3812, file: !3, line: 227, type: !182)
!3820 = !DILocalVariable(name: "n", scope: !3821, file: !3, line: 237, type: !57)
!3821 = distinct !DILexicalBlock(scope: !3822, file: !3, line: 236, column: 9)
!3822 = distinct !DILexicalBlock(scope: !3812, file: !3, line: 234, column: 6)
!3823 = !DILocalVariable(name: "p", scope: !3821, file: !3, line: 237, type: !57)
!3824 = !DILocalVariable(name: "done", scope: !3821, file: !3, line: 238, type: !190)
!3825 = !DILocalVariable(name: "parent", scope: !3826, file: !3, line: 245, type: !57)
!3826 = distinct !DILexicalBlock(scope: !3821, file: !3, line: 244, column: 6)
!3827 = !DILocation(line: 224, column: 40, scope: !3812)
!3828 = !DILocation(line: 224, column: 62, scope: !3812)
!3829 = !DILocation(line: 226, column: 2, scope: !3812)
!3830 = !DILocation(line: 226, column: 16, scope: !3812)
!3831 = !DILocation(line: 227, column: 2, scope: !3812)
!3832 = !DILocation(line: 227, column: 6, scope: !3812)
!3833 = !DILocation(line: 229, column: 6, scope: !3834)
!3834 = distinct !DILexicalBlock(scope: !3812, file: !3, line: 229, column: 6)
!3835 = !DILocation(line: 229, column: 6, scope: !3812)
!3836 = !DILocation(line: 230, column: 3, scope: !3834)
!3837 = !DILocation(line: 232, column: 17, scope: !3838)
!3838 = distinct !DILexicalBlock(scope: !3812, file: !3, line: 232, column: 6)
!3839 = !DILocation(line: 232, column: 26, scope: !3838)
!3840 = !DILocation(line: 232, column: 36, scope: !3838)
!3841 = !DILocation(line: 232, column: 39, scope: !3838)
!3842 = !DILocation(line: 232, column: 43, scope: !3838)
!3843 = !DILocation(line: 232, column: 7, scope: !3838)
!3844 = !DILocation(line: 232, column: 6, scope: !3812)
!3845 = !DILocation(line: 233, column: 3, scope: !3838)
!3846 = !DILocation(line: 234, column: 12, scope: !3822)
!3847 = !DILocation(line: 234, column: 15, scope: !3822)
!3848 = !DILocation(line: 234, column: 6, scope: !3822)
!3849 = !DILocation(line: 234, column: 6, scope: !3812)
!3850 = !DILocation(line: 235, column: 8, scope: !3851)
!3851 = distinct !DILexicalBlock(scope: !3822, file: !3, line: 234, column: 27)
!3852 = !DILocation(line: 236, column: 2, scope: !3851)
!3853 = !DILocation(line: 237, column: 3, scope: !3821)
!3854 = !DILocation(line: 237, column: 17, scope: !3821)
!3855 = !DILocation(line: 237, column: 21, scope: !3821)
!3856 = !DILocation(line: 238, column: 3, scope: !3821)
!3857 = !DILocation(line: 238, column: 8, scope: !3821)
!3858 = !DILocation(line: 239, column: 12, scope: !3859)
!3859 = distinct !DILexicalBlock(scope: !3821, file: !3, line: 239, column: 3)
!3860 = !DILocation(line: 239, column: 10, scope: !3859)
!3861 = !DILocation(line: 239, column: 8, scope: !3859)
!3862 = !DILocation(line: 240, column: 8, scope: !3863)
!3863 = distinct !DILexicalBlock(scope: !3864, file: !3, line: 239, column: 24)
!3864 = distinct !DILexicalBlock(scope: !3859, file: !3, line: 239, column: 3)
!3865 = !DILocation(line: 240, column: 11, scope: !3863)
!3866 = !DILocation(line: 240, column: 6, scope: !3863)
!3867 = !DILocation(line: 241, column: 8, scope: !3868)
!3868 = distinct !DILexicalBlock(scope: !3863, file: !3, line: 241, column: 8)
!3869 = !DILocation(line: 241, column: 13, scope: !3868)
!3870 = !DILocation(line: 241, column: 10, scope: !3868)
!3871 = !DILocation(line: 241, column: 25, scope: !3868)
!3872 = !DILocation(line: 241, column: 28, scope: !3868)
!3873 = !DILocation(line: 241, column: 8, scope: !3863)
!3874 = !DILocation(line: 242, column: 5, scope: !3868)
!3875 = !DILocation(line: 243, column: 3, scope: !3863)
!3876 = !DILocation(line: 239, column: 21, scope: !3864)
!3877 = !DILocation(line: 239, column: 19, scope: !3864)
!3878 = !DILocation(line: 239, column: 3, scope: !3864)
!3879 = distinct !{!3879, !3880, !3881, !3413}
!3880 = !DILocation(line: 239, column: 3, scope: !3859)
!3881 = !DILocation(line: 243, column: 3, scope: !3859)
!3882 = !DILocation(line: 244, column: 3, scope: !3821)
!3883 = !DILocation(line: 245, column: 4, scope: !3826)
!3884 = !DILocation(line: 245, column: 18, scope: !3826)
!3885 = !DILocation(line: 245, column: 27, scope: !3826)
!3886 = !DILocation(line: 245, column: 40, scope: !3826)
!3887 = !DILocation(line: 246, column: 14, scope: !3888)
!3888 = distinct !DILexicalBlock(scope: !3826, file: !3, line: 246, column: 8)
!3889 = !DILocation(line: 246, column: 27, scope: !3888)
!3890 = !DILocation(line: 246, column: 8, scope: !3888)
!3891 = !DILocation(line: 246, column: 8, scope: !3826)
!3892 = !DILocation(line: 247, column: 5, scope: !3888)
!3893 = !DILocation(line: 248, column: 11, scope: !3826)
!3894 = !DILocation(line: 248, column: 19, scope: !3826)
!3895 = !DILocation(line: 248, column: 33, scope: !3826)
!3896 = !DILocation(line: 248, column: 30, scope: !3826)
!3897 = !DILocation(line: 248, column: 9, scope: !3826)
!3898 = !DILocation(line: 249, column: 8, scope: !3899)
!3899 = distinct !DILexicalBlock(scope: !3826, file: !3, line: 249, column: 8)
!3900 = !{i8 0, i8 2}
!3901 = !DILocation(line: 249, column: 13, scope: !3899)
!3902 = !DILocation(line: 249, column: 22, scope: !3899)
!3903 = !DILocation(line: 249, column: 25, scope: !3899)
!3904 = !DILocation(line: 249, column: 16, scope: !3899)
!3905 = !DILocation(line: 249, column: 8, scope: !3826)
!3906 = !DILocation(line: 250, column: 5, scope: !3899)
!3907 = !DILocation(line: 251, column: 18, scope: !3826)
!3908 = !DILocation(line: 251, column: 31, scope: !3826)
!3909 = !DILocation(line: 251, column: 16, scope: !3826)
!3910 = !DILocation(line: 252, column: 3, scope: !3821)
!3911 = !DILocation(line: 252, column: 3, scope: !3826)
!3912 = !DILocation(line: 252, column: 13, scope: !3821)
!3913 = !DILocation(line: 252, column: 12, scope: !3821)
!3914 = distinct !{!3914, !3882, !3915, !3412, !3413}
!3915 = !DILocation(line: 252, column: 17, scope: !3821)
!3916 = !DILocation(line: 254, column: 8, scope: !3821)
!3917 = !DILocation(line: 256, column: 7, scope: !3918)
!3918 = distinct !DILexicalBlock(scope: !3821, file: !3, line: 256, column: 7)
!3919 = !DILocation(line: 256, column: 7, scope: !3821)
!3920 = !DILocation(line: 257, column: 9, scope: !3918)
!3921 = !DILocation(line: 257, column: 4, scope: !3918)
!3922 = !DILocation(line: 258, column: 2, scope: !3822)
!3923 = !DILocation(line: 260, column: 20, scope: !3812)
!3924 = !DILocation(line: 260, column: 33, scope: !3812)
!3925 = !DILocation(line: 260, column: 46, scope: !3812)
!3926 = !DILocation(line: 260, column: 50, scope: !3812)
!3927 = !DILocation(line: 260, column: 60, scope: !3812)
!3928 = !DILocation(line: 260, column: 10, scope: !3812)
!3929 = !DILocation(line: 260, column: 8, scope: !3812)
!3930 = !DILocation(line: 261, column: 13, scope: !3931)
!3931 = distinct !DILexicalBlock(scope: !3812, file: !3, line: 261, column: 6)
!3932 = !DILocation(line: 261, column: 6, scope: !3931)
!3933 = !DILocation(line: 261, column: 6, scope: !3812)
!3934 = !DILocation(line: 262, column: 18, scope: !3931)
!3935 = !DILocation(line: 262, column: 10, scope: !3931)
!3936 = !DILocation(line: 262, column: 3, scope: !3931)
!3937 = !DILocation(line: 263, column: 2, scope: !3812)
!3938 = !DILocation(line: 264, column: 21, scope: !3812)
!3939 = !DILocation(line: 264, column: 24, scope: !3812)
!3940 = !DILocation(line: 264, column: 33, scope: !3812)
!3941 = !DILocation(line: 264, column: 2, scope: !3812)
!3942 = !DILocation(line: 265, column: 6, scope: !3943)
!3943 = distinct !DILexicalBlock(scope: !3812, file: !3, line: 265, column: 6)
!3944 = !DILocation(line: 265, column: 9, scope: !3943)
!3945 = !DILocation(line: 265, column: 23, scope: !3943)
!3946 = !DILocation(line: 265, column: 20, scope: !3943)
!3947 = !DILocation(line: 265, column: 6, scope: !3812)
!3948 = !DILocation(line: 266, column: 3, scope: !3943)
!3949 = !DILocation(line: 267, column: 2, scope: !3812)
!3950 = !DILocation(line: 268, column: 14, scope: !3812)
!3951 = !DILocation(line: 268, column: 12, scope: !3812)
!3952 = !DILocation(line: 269, column: 16, scope: !3812)
!3953 = !DILocation(line: 269, column: 14, scope: !3812)
!3954 = !DILocation(line: 270, column: 18, scope: !3812)
!3955 = !DILocation(line: 270, column: 25, scope: !3812)
!3956 = !DILocation(line: 270, column: 35, scope: !3812)
!3957 = !DILocation(line: 270, column: 2, scope: !3812)
!3958 = !DILocation(line: 271, column: 22, scope: !3812)
!3959 = !DILocation(line: 271, column: 25, scope: !3812)
!3960 = !DILocation(line: 271, column: 33, scope: !3812)
!3961 = !DILocation(line: 271, column: 9, scope: !3812)
!3962 = !DILocation(line: 271, column: 2, scope: !3812)
!3963 = !DILocation(line: 272, column: 1, scope: !3812)
!3964 = distinct !DISubprogram(name: "next_group", scope: !3, file: !3, line: 183, type: !3965, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3967)
!3965 = !DISubroutineType(types: !3966)
!3966 = !{!57, !57, !57}
!3967 = !{!3968, !3969, !3970, !3973}
!3968 = !DILocalVariable(name: "m", arg: 1, scope: !3964, file: !3, line: 183, type: !57)
!3969 = !DILocalVariable(name: "origin", arg: 2, scope: !3964, file: !3, line: 183, type: !57)
!3970 = !DILocalVariable(name: "next", scope: !3971, file: !3, line: 187, type: !57)
!3971 = distinct !DILexicalBlock(scope: !3972, file: !3, line: 186, column: 13)
!3972 = distinct !DILexicalBlock(scope: !3964, file: !3, line: 185, column: 12)
!3973 = !DILocalVariable(name: "master", scope: !3974, file: !3, line: 200, type: !57)
!3974 = distinct !DILexicalBlock(scope: !3972, file: !3, line: 199, column: 13)
!3975 = !DILocation(line: 183, column: 47, scope: !3964)
!3976 = !DILocation(line: 183, column: 64, scope: !3964)
!3977 = !DILocation(line: 185, column: 2, scope: !3964)
!3978 = !DILocation(line: 186, column: 3, scope: !3972)
!3979 = !DILocation(line: 187, column: 4, scope: !3971)
!3980 = !DILocation(line: 187, column: 18, scope: !3971)
!3981 = !DILocation(line: 188, column: 9, scope: !3982)
!3982 = distinct !DILexicalBlock(scope: !3971, file: !3, line: 188, column: 8)
!3983 = !DILocation(line: 188, column: 23, scope: !3982)
!3984 = !DILocation(line: 188, column: 39, scope: !3982)
!3985 = !DILocation(line: 188, column: 42, scope: !3982)
!3986 = !DILocation(line: 188, column: 27, scope: !3982)
!3987 = !DILocation(line: 188, column: 8, scope: !3971)
!3988 = !DILocation(line: 189, column: 24, scope: !3982)
!3989 = !DILocation(line: 189, column: 12, scope: !3982)
!3990 = !DILocation(line: 189, column: 5, scope: !3982)
!3991 = !DILocation(line: 190, column: 21, scope: !3971)
!3992 = !DILocation(line: 190, column: 11, scope: !3971)
!3993 = !DILocation(line: 190, column: 9, scope: !3971)
!3994 = !DILocation(line: 191, column: 8, scope: !3995)
!3995 = distinct !DILexicalBlock(scope: !3971, file: !3, line: 191, column: 8)
!3996 = !DILocation(line: 191, column: 11, scope: !3995)
!3997 = !DILocation(line: 191, column: 27, scope: !3995)
!3998 = !DILocation(line: 191, column: 35, scope: !3995)
!3999 = !DILocation(line: 191, column: 24, scope: !3995)
!4000 = !DILocation(line: 191, column: 8, scope: !3971)
!4001 = !DILocation(line: 192, column: 9, scope: !4002)
!4002 = distinct !DILexicalBlock(scope: !4003, file: !3, line: 192, column: 9)
!4003 = distinct !DILexicalBlock(scope: !3995, file: !3, line: 191, column: 49)
!4004 = !DILocation(line: 192, column: 17, scope: !4002)
!4005 = !DILocation(line: 192, column: 14, scope: !4002)
!4006 = !DILocation(line: 192, column: 9, scope: !4003)
!4007 = !DILocation(line: 193, column: 6, scope: !4002)
!4008 = !DILocation(line: 194, column: 4, scope: !4003)
!4009 = !DILocation(line: 194, column: 15, scope: !4010)
!4010 = distinct !DILexicalBlock(scope: !3995, file: !3, line: 194, column: 15)
!4011 = !DILocation(line: 194, column: 18, scope: !4010)
!4012 = !DILocation(line: 194, column: 28, scope: !4010)
!4013 = !DILocation(line: 194, column: 37, scope: !4010)
!4014 = !DILocation(line: 194, column: 43, scope: !4010)
!4015 = !DILocation(line: 194, column: 33, scope: !4010)
!4016 = !DILocation(line: 194, column: 15, scope: !3995)
!4017 = !DILocation(line: 195, column: 5, scope: !4010)
!4018 = !DILocation(line: 196, column: 8, scope: !3971)
!4019 = !DILocation(line: 196, column: 6, scope: !3971)
!4020 = !DILocation(line: 197, column: 3, scope: !3972)
!4021 = distinct !{!4021, !3978, !4020, !3413}
!4022 = !DILocation(line: 199, column: 3, scope: !3972)
!4023 = !DILocation(line: 200, column: 4, scope: !3974)
!4024 = !DILocation(line: 200, column: 18, scope: !3974)
!4025 = !DILocation(line: 200, column: 27, scope: !3974)
!4026 = !DILocation(line: 200, column: 30, scope: !3974)
!4027 = !DILocation(line: 201, column: 8, scope: !4028)
!4028 = distinct !DILexicalBlock(scope: !3974, file: !3, line: 201, column: 8)
!4029 = !DILocation(line: 201, column: 11, scope: !4028)
!4030 = !DILocation(line: 201, column: 21, scope: !4028)
!4031 = !DILocation(line: 201, column: 30, scope: !4028)
!4032 = !DILocation(line: 201, column: 38, scope: !4028)
!4033 = !DILocation(line: 201, column: 26, scope: !4028)
!4034 = !DILocation(line: 201, column: 8, scope: !3974)
!4035 = !DILocation(line: 202, column: 23, scope: !4028)
!4036 = !DILocation(line: 202, column: 12, scope: !4028)
!4037 = !DILocation(line: 202, column: 5, scope: !4028)
!4038 = !DILocation(line: 203, column: 18, scope: !3974)
!4039 = !DILocation(line: 203, column: 8, scope: !3974)
!4040 = !DILocation(line: 203, column: 6, scope: !3974)
!4041 = !DILocation(line: 204, column: 8, scope: !4042)
!4042 = distinct !DILexicalBlock(scope: !3974, file: !3, line: 204, column: 8)
!4043 = !DILocation(line: 204, column: 16, scope: !4042)
!4044 = !DILocation(line: 204, column: 32, scope: !4042)
!4045 = !DILocation(line: 204, column: 40, scope: !4042)
!4046 = !DILocation(line: 204, column: 29, scope: !4042)
!4047 = !DILocation(line: 204, column: 8, scope: !3974)
!4048 = !DILocation(line: 205, column: 5, scope: !4042)
!4049 = !DILocation(line: 206, column: 8, scope: !4050)
!4050 = distinct !DILexicalBlock(scope: !3974, file: !3, line: 206, column: 8)
!4051 = !DILocation(line: 206, column: 16, scope: !4050)
!4052 = !DILocation(line: 206, column: 26, scope: !4050)
!4053 = !DILocation(line: 206, column: 35, scope: !4050)
!4054 = !DILocation(line: 206, column: 38, scope: !4050)
!4055 = !DILocation(line: 206, column: 31, scope: !4050)
!4056 = !DILocation(line: 206, column: 8, scope: !3974)
!4057 = !DILocation(line: 207, column: 5, scope: !4050)
!4058 = !DILocation(line: 208, column: 8, scope: !3974)
!4059 = !DILocation(line: 208, column: 6, scope: !3974)
!4060 = !DILocation(line: 209, column: 3, scope: !3972)
!4061 = distinct !{!4061, !4022, !4060, !3413}
!4062 = !DILocation(line: 210, column: 7, scope: !4063)
!4063 = distinct !DILexicalBlock(scope: !3972, file: !3, line: 210, column: 7)
!4064 = !DILocation(line: 210, column: 12, scope: !4063)
!4065 = !DILocation(line: 210, column: 9, scope: !4063)
!4066 = !DILocation(line: 210, column: 7, scope: !3972)
!4067 = !DILocation(line: 211, column: 4, scope: !4063)
!4068 = distinct !{!4068, !3977, !4069, !3413}
!4069 = !DILocation(line: 212, column: 2, scope: !3964)
!4070 = !DILocation(line: 213, column: 1, scope: !3964)
!4071 = distinct !DISubprogram(name: "read_seqlock_excl", scope: !78, file: !78, line: 1057, type: !4072, scopeLine: 1058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4075)
!4072 = !DISubroutineType(types: !4073)
!4073 = !{null, !4074}
!4074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!4075 = !{!4076}
!4076 = !DILocalVariable(name: "sl", arg: 1, scope: !4071, file: !78, line: 1057, type: !4074)
!4077 = !DILocation(line: 1057, column: 49, scope: !4071)
!4078 = !DILocation(line: 1059, column: 13, scope: !4071)
!4079 = !DILocation(line: 1059, column: 17, scope: !4071)
!4080 = !DILocation(line: 1059, column: 2, scope: !4071)
!4081 = !DILocation(line: 1060, column: 1, scope: !4071)
!4082 = distinct !DISubprogram(name: "read_sequnlock_excl", scope: !78, file: !78, line: 1066, type: !4072, scopeLine: 1067, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4083)
!4083 = !{!4084}
!4084 = !DILocalVariable(name: "sl", arg: 1, scope: !4082, file: !78, line: 1066, type: !4074)
!4085 = !DILocation(line: 1066, column: 51, scope: !4082)
!4086 = !DILocation(line: 1068, column: 15, scope: !4082)
!4087 = !DILocation(line: 1068, column: 19, scope: !4082)
!4088 = !DILocation(line: 1068, column: 2, scope: !4082)
!4089 = !DILocation(line: 1069, column: 1, scope: !4082)
!4090 = distinct !DISubprogram(name: "propagation_would_overmount", scope: !3, file: !3, line: 376, type: !4091, scopeLine: 379, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4097)
!4091 = !DISubroutineType(types: !4092)
!4092 = !{!190, !4093, !4093, !4095}
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4096 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3319)
!4097 = !{!4098, !4099, !4100, !4101}
!4098 = !DILocalVariable(name: "from", arg: 1, scope: !4090, file: !3, line: 376, type: !4093)
!4099 = !DILocalVariable(name: "to", arg: 2, scope: !4090, file: !3, line: 377, type: !4093)
!4100 = !DILocalVariable(name: "mp", arg: 3, scope: !4090, file: !3, line: 378, type: !4095)
!4101 = !DILocalVariable(name: "m", scope: !4102, file: !3, line: 389, type: !4093)
!4102 = distinct !DILexicalBlock(scope: !4090, file: !3, line: 389, column: 2)
!4103 = !DILocation(line: 376, column: 54, scope: !4090)
!4104 = !DILocation(line: 377, column: 26, scope: !4090)
!4105 = !DILocation(line: 378, column: 31, scope: !4090)
!4106 = !DILocation(line: 380, column: 7, scope: !4107)
!4107 = distinct !DILexicalBlock(scope: !4090, file: !3, line: 380, column: 6)
!4108 = !DILocation(line: 380, column: 6, scope: !4090)
!4109 = !DILocation(line: 381, column: 3, scope: !4107)
!4110 = !DILocation(line: 383, column: 6, scope: !4111)
!4111 = distinct !DILexicalBlock(scope: !4090, file: !3, line: 383, column: 6)
!4112 = !DILocation(line: 383, column: 6, scope: !4090)
!4113 = !DILocation(line: 384, column: 3, scope: !4111)
!4114 = !DILocation(line: 386, column: 6, scope: !4115)
!4115 = distinct !DILexicalBlock(scope: !4090, file: !3, line: 386, column: 6)
!4116 = !DILocation(line: 386, column: 10, scope: !4115)
!4117 = !DILocation(line: 386, column: 14, scope: !4115)
!4118 = !DILocation(line: 386, column: 26, scope: !4115)
!4119 = !DILocation(line: 386, column: 30, scope: !4115)
!4120 = !DILocation(line: 386, column: 23, scope: !4115)
!4121 = !DILocation(line: 386, column: 6, scope: !4090)
!4122 = !DILocation(line: 387, column: 3, scope: !4115)
!4123 = !DILocation(line: 389, column: 7, scope: !4102)
!4124 = !DILocation(line: 389, column: 27, scope: !4102)
!4125 = !DILocation(line: 389, column: 31, scope: !4102)
!4126 = !DILocation(line: 389, column: 35, scope: !4127)
!4127 = distinct !DILexicalBlock(scope: !4102, file: !3, line: 389, column: 2)
!4128 = !DILocation(line: 389, column: 2, scope: !4102)
!4129 = !DILocation(line: 390, column: 13, scope: !4130)
!4130 = distinct !DILexicalBlock(scope: !4131, file: !3, line: 390, column: 7)
!4131 = distinct !DILexicalBlock(scope: !4127, file: !3, line: 389, column: 57)
!4132 = !DILocation(line: 390, column: 19, scope: !4130)
!4133 = !DILocation(line: 390, column: 7, scope: !4130)
!4134 = !DILocation(line: 390, column: 7, scope: !4131)
!4135 = !DILocation(line: 391, column: 4, scope: !4130)
!4136 = !DILocation(line: 392, column: 2, scope: !4131)
!4137 = !DILocation(line: 389, column: 42, scope: !4127)
!4138 = !DILocation(line: 389, column: 45, scope: !4127)
!4139 = !DILocation(line: 389, column: 40, scope: !4127)
!4140 = !DILocation(line: 389, column: 2, scope: !4127)
!4141 = distinct !{!4141, !4128, !4142, !3412, !3413}
!4142 = !DILocation(line: 392, column: 2, scope: !4102)
!4143 = !DILocation(line: 394, column: 2, scope: !4090)
!4144 = !DILocation(line: 395, column: 1, scope: !4090)
!4145 = distinct !DISubprogram(name: "is_anon_ns", scope: !59, file: !59, line: 144, type: !4146, scopeLine: 145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4148)
!4146 = !DISubroutineType(types: !4147)
!4147 = !{!190, !1740}
!4148 = !{!4149}
!4149 = !DILocalVariable(name: "ns", arg: 1, scope: !4145, file: !59, line: 144, type: !1740)
!4150 = !DILocation(line: 144, column: 53, scope: !4145)
!4151 = !DILocation(line: 146, column: 9, scope: !4145)
!4152 = !DILocation(line: 146, column: 13, scope: !4145)
!4153 = !DILocation(line: 146, column: 17, scope: !4145)
!4154 = !DILocation(line: 146, column: 2, scope: !4145)
!4155 = distinct !DISubprogram(name: "peers", scope: !3, file: !3, line: 219, type: !4156, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4158)
!4156 = !DISubroutineType(types: !4157)
!4157 = !{!190, !4093, !4093}
!4158 = !{!4159, !4160}
!4159 = !DILocalVariable(name: "m1", arg: 1, scope: !4155, file: !3, line: 219, type: !4093)
!4160 = !DILocalVariable(name: "m2", arg: 2, scope: !4155, file: !3, line: 219, type: !4093)
!4161 = !DILocation(line: 219, column: 46, scope: !4155)
!4162 = !DILocation(line: 219, column: 70, scope: !4155)
!4163 = !DILocation(line: 221, column: 9, scope: !4155)
!4164 = !DILocation(line: 221, column: 13, scope: !4155)
!4165 = !DILocation(line: 221, column: 29, scope: !4155)
!4166 = !DILocation(line: 221, column: 33, scope: !4155)
!4167 = !DILocation(line: 221, column: 26, scope: !4155)
!4168 = !DILocation(line: 221, column: 46, scope: !4155)
!4169 = !DILocation(line: 221, column: 49, scope: !4155)
!4170 = !DILocation(line: 221, column: 53, scope: !4155)
!4171 = !DILocation(line: 0, scope: !4155)
!4172 = !DILocation(line: 221, column: 2, scope: !4155)
!4173 = distinct !DISubprogram(name: "propagate_mount_busy", scope: !3, file: !3, line: 407, type: !4174, scopeLine: 408, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4176)
!4174 = !DISubroutineType(types: !4175)
!4175 = !{!182, !57, !182}
!4176 = !{!4177, !4178, !4179, !4180, !4181, !4182, !4183}
!4177 = !DILocalVariable(name: "mnt", arg: 1, scope: !4173, file: !3, line: 407, type: !57)
!4178 = !DILocalVariable(name: "refcnt", arg: 2, scope: !4173, file: !3, line: 407, type: !182)
!4179 = !DILocalVariable(name: "m", scope: !4173, file: !3, line: 409, type: !57)
!4180 = !DILocalVariable(name: "child", scope: !4173, file: !3, line: 409, type: !57)
!4181 = !DILocalVariable(name: "topper", scope: !4173, file: !3, line: 409, type: !57)
!4182 = !DILocalVariable(name: "parent", scope: !4173, file: !3, line: 410, type: !57)
!4183 = !DILocalVariable(name: "count", scope: !4184, file: !3, line: 425, type: !182)
!4184 = distinct !DILexicalBlock(scope: !4185, file: !3, line: 424, column: 42)
!4185 = distinct !DILexicalBlock(scope: !4186, file: !3, line: 423, column: 2)
!4186 = distinct !DILexicalBlock(scope: !4173, file: !3, line: 423, column: 2)
!4187 = !DILocation(line: 407, column: 40, scope: !4173)
!4188 = !DILocation(line: 407, column: 49, scope: !4173)
!4189 = !DILocation(line: 409, column: 2, scope: !4173)
!4190 = !DILocation(line: 409, column: 16, scope: !4173)
!4191 = !DILocation(line: 409, column: 20, scope: !4173)
!4192 = !DILocation(line: 409, column: 28, scope: !4173)
!4193 = !DILocation(line: 410, column: 2, scope: !4173)
!4194 = !DILocation(line: 410, column: 16, scope: !4173)
!4195 = !DILocation(line: 410, column: 25, scope: !4173)
!4196 = !DILocation(line: 410, column: 30, scope: !4173)
!4197 = !DILocation(line: 412, column: 6, scope: !4198)
!4198 = distinct !DILexicalBlock(scope: !4173, file: !3, line: 412, column: 6)
!4199 = !DILocation(line: 412, column: 13, scope: !4198)
!4200 = !DILocation(line: 412, column: 10, scope: !4198)
!4201 = !DILocation(line: 412, column: 6, scope: !4173)
!4202 = !DILocation(line: 413, column: 28, scope: !4198)
!4203 = !DILocation(line: 413, column: 33, scope: !4198)
!4204 = !DILocation(line: 413, column: 10, scope: !4198)
!4205 = !DILocation(line: 413, column: 3, scope: !4198)
!4206 = !DILocation(line: 420, column: 19, scope: !4207)
!4207 = distinct !DILexicalBlock(scope: !4173, file: !3, line: 420, column: 6)
!4208 = !DILocation(line: 420, column: 24, scope: !4207)
!4209 = !DILocation(line: 420, column: 7, scope: !4207)
!4210 = !DILocation(line: 420, column: 36, scope: !4207)
!4211 = !DILocation(line: 420, column: 57, scope: !4207)
!4212 = !DILocation(line: 420, column: 62, scope: !4207)
!4213 = !DILocation(line: 420, column: 39, scope: !4207)
!4214 = !DILocation(line: 420, column: 6, scope: !4173)
!4215 = !DILocation(line: 421, column: 3, scope: !4207)
!4216 = !DILocation(line: 423, column: 28, scope: !4186)
!4217 = !DILocation(line: 423, column: 36, scope: !4186)
!4218 = !DILocation(line: 423, column: 11, scope: !4186)
!4219 = !DILocation(line: 423, column: 9, scope: !4186)
!4220 = !DILocation(line: 423, column: 7, scope: !4186)
!4221 = !DILocation(line: 423, column: 45, scope: !4185)
!4222 = !DILocation(line: 423, column: 2, scope: !4186)
!4223 = !DILocation(line: 425, column: 3, scope: !4184)
!4224 = !DILocation(line: 425, column: 7, scope: !4184)
!4225 = !DILocation(line: 426, column: 25, scope: !4184)
!4226 = !DILocation(line: 426, column: 28, scope: !4184)
!4227 = !DILocation(line: 426, column: 33, scope: !4184)
!4228 = !DILocation(line: 426, column: 38, scope: !4184)
!4229 = !DILocation(line: 426, column: 11, scope: !4184)
!4230 = !DILocation(line: 426, column: 9, scope: !4184)
!4231 = !DILocation(line: 427, column: 8, scope: !4232)
!4232 = distinct !DILexicalBlock(scope: !4184, file: !3, line: 427, column: 7)
!4233 = !DILocation(line: 427, column: 7, scope: !4184)
!4234 = !DILocation(line: 428, column: 4, scope: !4232)
!4235 = !DILocation(line: 433, column: 24, scope: !4184)
!4236 = !DILocation(line: 433, column: 12, scope: !4184)
!4237 = !DILocation(line: 433, column: 10, scope: !4184)
!4238 = !DILocation(line: 434, column: 7, scope: !4239)
!4239 = distinct !DILexicalBlock(scope: !4184, file: !3, line: 434, column: 7)
!4240 = !DILocation(line: 434, column: 7, scope: !4184)
!4241 = !DILocation(line: 435, column: 10, scope: !4239)
!4242 = !DILocation(line: 435, column: 4, scope: !4239)
!4243 = !DILocation(line: 436, column: 25, scope: !4244)
!4244 = distinct !DILexicalBlock(scope: !4239, file: !3, line: 436, column: 12)
!4245 = !DILocation(line: 436, column: 32, scope: !4244)
!4246 = !DILocation(line: 436, column: 13, scope: !4244)
!4247 = !DILocation(line: 436, column: 12, scope: !4239)
!4248 = !DILocation(line: 437, column: 4, scope: !4244)
!4249 = !DILocation(line: 439, column: 25, scope: !4250)
!4250 = distinct !DILexicalBlock(scope: !4184, file: !3, line: 439, column: 7)
!4251 = !DILocation(line: 439, column: 32, scope: !4250)
!4252 = !DILocation(line: 439, column: 7, scope: !4250)
!4253 = !DILocation(line: 439, column: 7, scope: !4184)
!4254 = !DILocation(line: 440, column: 4, scope: !4250)
!4255 = !DILocation(line: 441, column: 2, scope: !4185)
!4256 = !DILocation(line: 441, column: 2, scope: !4184)
!4257 = !DILocation(line: 424, column: 30, scope: !4185)
!4258 = !DILocation(line: 424, column: 33, scope: !4185)
!4259 = !DILocation(line: 424, column: 13, scope: !4185)
!4260 = !DILocation(line: 424, column: 11, scope: !4185)
!4261 = !DILocation(line: 423, column: 2, scope: !4185)
!4262 = distinct !{!4262, !4222, !4263, !3412, !3413}
!4263 = !DILocation(line: 441, column: 2, scope: !4186)
!4264 = !DILocation(line: 442, column: 2, scope: !4173)
!4265 = !DILocation(line: 443, column: 1, scope: !4173)
!4266 = distinct !DISubprogram(name: "do_refcount_check", scope: !3, file: !3, line: 352, type: !4174, scopeLine: 353, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4267)
!4267 = !{!4268, !4269}
!4268 = !DILocalVariable(name: "mnt", arg: 1, scope: !4266, file: !3, line: 352, type: !57)
!4269 = !DILocalVariable(name: "count", arg: 2, scope: !4266, file: !3, line: 352, type: !182)
!4270 = !DILocation(line: 352, column: 51, scope: !4266)
!4271 = !DILocation(line: 352, column: 60, scope: !4266)
!4272 = !DILocation(line: 354, column: 23, scope: !4266)
!4273 = !DILocation(line: 354, column: 9, scope: !4266)
!4274 = !DILocation(line: 354, column: 30, scope: !4266)
!4275 = !DILocation(line: 354, column: 28, scope: !4266)
!4276 = !DILocation(line: 354, column: 2, scope: !4266)
!4277 = distinct !DISubprogram(name: "list_empty", scope: !3656, file: !3656, line: 371, type: !4278, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4282)
!4278 = !DISubroutineType(types: !4279)
!4279 = !{!182, !4280}
!4280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4281, size: 64)
!4281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!4282 = !{!4283}
!4283 = !DILocalVariable(name: "head", arg: 1, scope: !4277, file: !3656, line: 371, type: !4280)
!4284 = !DILocation(line: 371, column: 54, scope: !4277)
!4285 = !DILocation(line: 373, column: 9, scope: !4286)
!4286 = distinct !DILexicalBlock(scope: !4277, file: !3656, line: 373, column: 9)
!4287 = !DILocation(line: 373, column: 9, scope: !4288)
!4288 = distinct !DILexicalBlock(scope: !4286, file: !3656, line: 373, column: 9)
!4289 = !DILocation(line: 373, column: 34, scope: !4277)
!4290 = !DILocation(line: 373, column: 31, scope: !4277)
!4291 = !DILocation(line: 373, column: 2, scope: !4277)
!4292 = distinct !DISubprogram(name: "propagation_next", scope: !3, file: !3, line: 149, type: !3965, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4293)
!4293 = !{!4294, !4295, !4296, !4298}
!4294 = !DILocalVariable(name: "m", arg: 1, scope: !4292, file: !3, line: 149, type: !57)
!4295 = !DILocalVariable(name: "origin", arg: 2, scope: !4292, file: !3, line: 150, type: !57)
!4296 = !DILocalVariable(name: "master", scope: !4297, file: !3, line: 157, type: !57)
!4297 = distinct !DILexicalBlock(scope: !4292, file: !3, line: 156, column: 12)
!4298 = !DILocalVariable(name: "next", scope: !4299, file: !3, line: 160, type: !57)
!4299 = distinct !DILexicalBlock(scope: !4300, file: !3, line: 159, column: 37)
!4300 = distinct !DILexicalBlock(scope: !4297, file: !3, line: 159, column: 7)
!4301 = !DILocation(line: 149, column: 53, scope: !4292)
!4302 = !DILocation(line: 150, column: 21, scope: !4292)
!4303 = !DILocation(line: 153, column: 7, scope: !4304)
!4304 = distinct !DILexicalBlock(scope: !4292, file: !3, line: 153, column: 6)
!4305 = !DILocation(line: 153, column: 21, scope: !4304)
!4306 = !DILocation(line: 153, column: 37, scope: !4304)
!4307 = !DILocation(line: 153, column: 40, scope: !4304)
!4308 = !DILocation(line: 153, column: 25, scope: !4304)
!4309 = !DILocation(line: 153, column: 6, scope: !4292)
!4310 = !DILocation(line: 154, column: 22, scope: !4304)
!4311 = !DILocation(line: 154, column: 10, scope: !4304)
!4312 = !DILocation(line: 154, column: 3, scope: !4304)
!4313 = !DILocation(line: 156, column: 2, scope: !4292)
!4314 = !DILocation(line: 157, column: 3, scope: !4297)
!4315 = !DILocation(line: 157, column: 17, scope: !4297)
!4316 = !DILocation(line: 157, column: 26, scope: !4297)
!4317 = !DILocation(line: 157, column: 29, scope: !4297)
!4318 = !DILocation(line: 159, column: 7, scope: !4300)
!4319 = !DILocation(line: 159, column: 17, scope: !4300)
!4320 = !DILocation(line: 159, column: 25, scope: !4300)
!4321 = !DILocation(line: 159, column: 14, scope: !4300)
!4322 = !DILocation(line: 159, column: 7, scope: !4297)
!4323 = !DILocation(line: 160, column: 4, scope: !4299)
!4324 = !DILocation(line: 160, column: 18, scope: !4299)
!4325 = !DILocation(line: 160, column: 35, scope: !4299)
!4326 = !DILocation(line: 160, column: 25, scope: !4299)
!4327 = !DILocation(line: 161, column: 12, scope: !4299)
!4328 = !DILocation(line: 161, column: 20, scope: !4299)
!4329 = !DILocation(line: 161, column: 17, scope: !4299)
!4330 = !DILocation(line: 161, column: 11, scope: !4299)
!4331 = !DILocation(line: 161, column: 37, scope: !4299)
!4332 = !DILocation(line: 161, column: 4, scope: !4299)
!4333 = !DILocation(line: 162, column: 3, scope: !4300)
!4334 = !DILocation(line: 162, column: 14, scope: !4335)
!4335 = distinct !DILexicalBlock(scope: !4300, file: !3, line: 162, column: 14)
!4336 = !DILocation(line: 162, column: 17, scope: !4335)
!4337 = !DILocation(line: 162, column: 27, scope: !4335)
!4338 = !DILocation(line: 162, column: 36, scope: !4335)
!4339 = !DILocation(line: 162, column: 44, scope: !4335)
!4340 = !DILocation(line: 162, column: 32, scope: !4335)
!4341 = !DILocation(line: 162, column: 14, scope: !4300)
!4342 = !DILocation(line: 163, column: 22, scope: !4335)
!4343 = !DILocation(line: 163, column: 11, scope: !4335)
!4344 = !DILocation(line: 163, column: 4, scope: !4335)
!4345 = !DILocation(line: 166, column: 7, scope: !4297)
!4346 = !DILocation(line: 166, column: 5, scope: !4297)
!4347 = !DILocation(line: 167, column: 2, scope: !4292)
!4348 = distinct !{!4348, !4313, !4347, !3413}
!4349 = !DILocation(line: 168, column: 1, scope: !4292)
!4350 = !DISubprogram(name: "__lookup_mnt", scope: !59, file: !59, line: 100, type: !4351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4351 = !DISubroutineType(types: !4352)
!4352 = !{!57, !650, !71}
!4353 = distinct !DISubprogram(name: "find_topper", scope: !3, file: !3, line: 334, type: !3802, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4354)
!4354 = !{!4355, !4356, !4357}
!4355 = !DILocalVariable(name: "mnt", arg: 1, scope: !4353, file: !3, line: 334, type: !57)
!4356 = !DILocalVariable(name: "child", scope: !4353, file: !3, line: 337, type: !57)
!4357 = !DILocalVariable(name: "__mptr", scope: !4358, file: !3, line: 342, type: !56)
!4358 = distinct !DILexicalBlock(scope: !4353, file: !3, line: 342, column: 10)
!4359 = !DILocation(line: 334, column: 48, scope: !4353)
!4360 = !DILocation(line: 337, column: 2, scope: !4353)
!4361 = !DILocation(line: 337, column: 16, scope: !4353)
!4362 = !DILocation(line: 339, column: 25, scope: !4363)
!4363 = distinct !DILexicalBlock(scope: !4353, file: !3, line: 339, column: 6)
!4364 = !DILocation(line: 339, column: 30, scope: !4363)
!4365 = !DILocation(line: 339, column: 7, scope: !4363)
!4366 = !DILocation(line: 339, column: 6, scope: !4353)
!4367 = !DILocation(line: 340, column: 3, scope: !4363)
!4368 = !DILocation(line: 342, column: 10, scope: !4358)
!4369 = !DILocation(line: 342, column: 10, scope: !4353)
!4370 = !DILocation(line: 342, column: 8, scope: !4353)
!4371 = !DILocation(line: 343, column: 6, scope: !4372)
!4372 = distinct !DILexicalBlock(scope: !4353, file: !3, line: 343, column: 6)
!4373 = !DILocation(line: 343, column: 13, scope: !4372)
!4374 = !DILocation(line: 343, column: 31, scope: !4372)
!4375 = !DILocation(line: 343, column: 36, scope: !4372)
!4376 = !DILocation(line: 343, column: 40, scope: !4372)
!4377 = !DILocation(line: 343, column: 28, scope: !4372)
!4378 = !DILocation(line: 343, column: 6, scope: !4353)
!4379 = !DILocation(line: 344, column: 3, scope: !4372)
!4380 = !DILocation(line: 346, column: 9, scope: !4353)
!4381 = !DILocation(line: 346, column: 2, scope: !4353)
!4382 = !DILocation(line: 347, column: 1, scope: !4353)
!4383 = distinct !DISubprogram(name: "propagate_mount_unlock", scope: !3, file: !3, line: 450, type: !3503, scopeLine: 451, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4384)
!4384 = !{!4385, !4386, !4387, !4388}
!4385 = !DILocalVariable(name: "mnt", arg: 1, scope: !4383, file: !3, line: 450, type: !57)
!4386 = !DILocalVariable(name: "parent", scope: !4383, file: !3, line: 452, type: !57)
!4387 = !DILocalVariable(name: "m", scope: !4383, file: !3, line: 453, type: !57)
!4388 = !DILocalVariable(name: "child", scope: !4383, file: !3, line: 453, type: !57)
!4389 = !DILocation(line: 450, column: 43, scope: !4383)
!4390 = !DILocation(line: 452, column: 2, scope: !4383)
!4391 = !DILocation(line: 452, column: 16, scope: !4383)
!4392 = !DILocation(line: 452, column: 25, scope: !4383)
!4393 = !DILocation(line: 452, column: 30, scope: !4383)
!4394 = !DILocation(line: 453, column: 2, scope: !4383)
!4395 = !DILocation(line: 453, column: 16, scope: !4383)
!4396 = !DILocation(line: 453, column: 20, scope: !4383)
!4397 = !DILocation(line: 455, column: 2, scope: !4383)
!4398 = !DILocation(line: 455, column: 2, scope: !4399)
!4399 = distinct !DILexicalBlock(scope: !4400, file: !3, line: 455, column: 2)
!4400 = distinct !DILexicalBlock(scope: !4383, file: !3, line: 455, column: 2)
!4401 = !DILocation(line: 455, column: 2, scope: !4400)
!4402 = !DILocation(line: 455, column: 2, scope: !4403)
!4403 = distinct !DILexicalBlock(scope: !4399, file: !3, line: 455, column: 2)
!4404 = !DILocation(line: 455, column: 2, scope: !4405)
!4405 = distinct !DILexicalBlock(scope: !4403, file: !3, line: 455, column: 2)
!4406 = !DILocation(line: 455, column: 2, scope: !4407)
!4407 = distinct !DILexicalBlock(scope: !4403, file: !3, line: 455, column: 2)
!4408 = !{i64 2153469675, i64 2153469704, i64 2153469750, i64 2153469808, i64 2153469862, i64 2153469916, i64 2153469971, i64 2153470002}
!4409 = !DILocation(line: 457, column: 28, scope: !4410)
!4410 = distinct !DILexicalBlock(scope: !4383, file: !3, line: 457, column: 2)
!4411 = !DILocation(line: 457, column: 36, scope: !4410)
!4412 = !DILocation(line: 457, column: 11, scope: !4410)
!4413 = !DILocation(line: 457, column: 9, scope: !4410)
!4414 = !DILocation(line: 457, column: 7, scope: !4410)
!4415 = !DILocation(line: 457, column: 45, scope: !4416)
!4416 = distinct !DILexicalBlock(scope: !4410, file: !3, line: 457, column: 2)
!4417 = !DILocation(line: 457, column: 2, scope: !4410)
!4418 = !DILocation(line: 459, column: 25, scope: !4419)
!4419 = distinct !DILexicalBlock(scope: !4416, file: !3, line: 458, column: 37)
!4420 = !DILocation(line: 459, column: 28, scope: !4419)
!4421 = !DILocation(line: 459, column: 33, scope: !4419)
!4422 = !DILocation(line: 459, column: 38, scope: !4419)
!4423 = !DILocation(line: 459, column: 11, scope: !4419)
!4424 = !DILocation(line: 459, column: 9, scope: !4419)
!4425 = !DILocation(line: 460, column: 7, scope: !4426)
!4426 = distinct !DILexicalBlock(scope: !4419, file: !3, line: 460, column: 7)
!4427 = !DILocation(line: 460, column: 7, scope: !4419)
!4428 = !DILocation(line: 461, column: 4, scope: !4426)
!4429 = !DILocation(line: 461, column: 11, scope: !4426)
!4430 = !DILocation(line: 461, column: 15, scope: !4426)
!4431 = !DILocation(line: 461, column: 25, scope: !4426)
!4432 = !DILocation(line: 462, column: 2, scope: !4419)
!4433 = !DILocation(line: 458, column: 25, scope: !4416)
!4434 = !DILocation(line: 458, column: 28, scope: !4416)
!4435 = !DILocation(line: 458, column: 8, scope: !4416)
!4436 = !DILocation(line: 458, column: 6, scope: !4416)
!4437 = !DILocation(line: 457, column: 2, scope: !4416)
!4438 = distinct !{!4438, !4417, !4439, !3412, !3413}
!4439 = !DILocation(line: 462, column: 2, scope: !4410)
!4440 = !DILocation(line: 463, column: 1, scope: !4383)
!4441 = distinct !DISubprogram(name: "propagate_umount", scope: !3, file: !3, line: 573, type: !4442, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4444)
!4442 = !DISubroutineType(types: !4443)
!4443 = !{!182, !139}
!4444 = !{!4445, !4446, !4447, !4448, !4449, !4450, !4453, !4456, !4457, !4461}
!4445 = !DILocalVariable(name: "list", arg: 1, scope: !4441, file: !3, line: 573, type: !139)
!4446 = !DILocalVariable(name: "mnt", scope: !4441, file: !3, line: 575, type: !57)
!4447 = !DILocalVariable(name: "to_restore", scope: !4441, file: !3, line: 576, type: !136)
!4448 = !DILocalVariable(name: "to_umount", scope: !4441, file: !3, line: 577, type: !136)
!4449 = !DILocalVariable(name: "visited", scope: !4441, file: !3, line: 578, type: !136)
!4450 = !DILocalVariable(name: "__mptr", scope: !4451, file: !3, line: 581, type: !56)
!4451 = distinct !DILexicalBlock(scope: !4452, file: !3, line: 581, column: 2)
!4452 = distinct !DILexicalBlock(scope: !4441, file: !3, line: 581, column: 2)
!4453 = !DILocalVariable(name: "parent", scope: !4454, file: !3, line: 582, type: !57)
!4454 = distinct !DILexicalBlock(scope: !4455, file: !3, line: 581, column: 51)
!4455 = distinct !DILexicalBlock(scope: !4452, file: !3, line: 581, column: 2)
!4456 = !DILocalVariable(name: "m", scope: !4454, file: !3, line: 583, type: !57)
!4457 = !DILocalVariable(name: "child", scope: !4458, file: !3, line: 597, type: !57)
!4458 = distinct !DILexicalBlock(scope: !4459, file: !3, line: 596, column: 41)
!4459 = distinct !DILexicalBlock(scope: !4460, file: !3, line: 595, column: 3)
!4460 = distinct !DILexicalBlock(scope: !4454, file: !3, line: 595, column: 3)
!4461 = !DILocalVariable(name: "__mptr", scope: !4462, file: !3, line: 581, type: !56)
!4462 = distinct !DILexicalBlock(scope: !4455, file: !3, line: 581, column: 2)
!4463 = !DILocation(line: 573, column: 40, scope: !4441)
!4464 = !DILocation(line: 575, column: 2, scope: !4441)
!4465 = !DILocation(line: 575, column: 16, scope: !4441)
!4466 = !DILocation(line: 576, column: 2, scope: !4441)
!4467 = !DILocation(line: 577, column: 2, scope: !4441)
!4468 = !DILocation(line: 578, column: 2, scope: !4441)
!4469 = !DILocation(line: 581, column: 2, scope: !4451)
!4470 = !DILocation(line: 581, column: 2, scope: !4452)
!4471 = !DILocation(line: 581, column: 2, scope: !4455)
!4472 = !DILocation(line: 582, column: 3, scope: !4454)
!4473 = !DILocation(line: 582, column: 17, scope: !4454)
!4474 = !DILocation(line: 582, column: 26, scope: !4454)
!4475 = !DILocation(line: 582, column: 31, scope: !4454)
!4476 = !DILocation(line: 583, column: 3, scope: !4454)
!4477 = !DILocation(line: 583, column: 17, scope: !4454)
!4478 = !DILocation(line: 591, column: 20, scope: !4479)
!4479 = distinct !DILexicalBlock(scope: !4454, file: !3, line: 591, column: 7)
!4480 = !DILocation(line: 591, column: 25, scope: !4479)
!4481 = !DILocation(line: 591, column: 8, scope: !4479)
!4482 = !DILocation(line: 591, column: 7, scope: !4454)
!4483 = !DILocation(line: 592, column: 4, scope: !4479)
!4484 = !DILocation(line: 594, column: 18, scope: !4454)
!4485 = !DILocation(line: 594, column: 23, scope: !4454)
!4486 = !DILocation(line: 594, column: 3, scope: !4454)
!4487 = !DILocation(line: 595, column: 29, scope: !4460)
!4488 = !DILocation(line: 595, column: 37, scope: !4460)
!4489 = !DILocation(line: 595, column: 12, scope: !4460)
!4490 = !DILocation(line: 595, column: 10, scope: !4460)
!4491 = !DILocation(line: 595, column: 8, scope: !4460)
!4492 = !DILocation(line: 595, column: 46, scope: !4459)
!4493 = !DILocation(line: 595, column: 3, scope: !4460)
!4494 = !DILocation(line: 597, column: 4, scope: !4458)
!4495 = !DILocation(line: 597, column: 18, scope: !4458)
!4496 = !DILocation(line: 597, column: 40, scope: !4458)
!4497 = !DILocation(line: 597, column: 43, scope: !4458)
!4498 = !DILocation(line: 598, column: 11, scope: !4458)
!4499 = !DILocation(line: 598, column: 16, scope: !4458)
!4500 = !DILocation(line: 597, column: 26, scope: !4458)
!4501 = !DILocation(line: 599, column: 9, scope: !4502)
!4502 = distinct !DILexicalBlock(scope: !4458, file: !3, line: 599, column: 8)
!4503 = !DILocation(line: 599, column: 8, scope: !4458)
!4504 = !DILocation(line: 600, column: 5, scope: !4502)
!4505 = !DILocation(line: 602, column: 21, scope: !4506)
!4506 = distinct !DILexicalBlock(scope: !4458, file: !3, line: 602, column: 8)
!4507 = !DILocation(line: 602, column: 28, scope: !4506)
!4508 = !DILocation(line: 602, column: 9, scope: !4506)
!4509 = !DILocation(line: 602, column: 8, scope: !4458)
!4510 = !DILocation(line: 610, column: 34, scope: !4511)
!4511 = distinct !DILexicalBlock(scope: !4506, file: !3, line: 602, column: 44)
!4512 = !DILocation(line: 610, column: 37, scope: !4511)
!4513 = !DILocation(line: 610, column: 9, scope: !4511)
!4514 = !DILocation(line: 610, column: 7, scope: !4511)
!4515 = !DILocation(line: 611, column: 5, scope: !4511)
!4516 = !DILocation(line: 612, column: 15, scope: !4517)
!4517 = distinct !DILexicalBlock(scope: !4506, file: !3, line: 612, column: 15)
!4518 = !DILocation(line: 612, column: 22, scope: !4517)
!4519 = !DILocation(line: 612, column: 26, scope: !4517)
!4520 = !DILocation(line: 612, column: 36, scope: !4517)
!4521 = !DILocation(line: 612, column: 15, scope: !4506)
!4522 = !DILocation(line: 619, column: 20, scope: !4523)
!4523 = distinct !DILexicalBlock(scope: !4517, file: !3, line: 612, column: 50)
!4524 = !DILocation(line: 619, column: 27, scope: !4523)
!4525 = !DILocation(line: 619, column: 5, scope: !4523)
!4526 = !DILocation(line: 620, column: 5, scope: !4523)
!4527 = !DILocation(line: 624, column: 4, scope: !4458)
!4528 = !DILocation(line: 624, column: 30, scope: !4458)
!4529 = !DILocation(line: 624, column: 11, scope: !4458)
!4530 = !DILocation(line: 627, column: 13, scope: !4531)
!4531 = distinct !DILexicalBlock(scope: !4458, file: !3, line: 625, column: 35)
!4532 = !DILocation(line: 627, column: 20, scope: !4531)
!4533 = !DILocation(line: 627, column: 11, scope: !4531)
!4534 = !DILocation(line: 628, column: 21, scope: !4535)
!4535 = distinct !DILexicalBlock(scope: !4531, file: !3, line: 628, column: 9)
!4536 = !DILocation(line: 628, column: 28, scope: !4535)
!4537 = !DILocation(line: 628, column: 9, scope: !4535)
!4538 = !DILocation(line: 628, column: 9, scope: !4531)
!4539 = !DILocation(line: 629, column: 6, scope: !4535)
!4540 = distinct !{!4540, !4527, !4541, !3412, !3413}
!4541 = !DILocation(line: 630, column: 4, scope: !4458)
!4542 = !DILocation(line: 631, column: 3, scope: !4459)
!4543 = !DILocation(line: 631, column: 3, scope: !4458)
!4544 = !DILocation(line: 596, column: 29, scope: !4459)
!4545 = !DILocation(line: 596, column: 32, scope: !4459)
!4546 = !DILocation(line: 596, column: 12, scope: !4459)
!4547 = !DILocation(line: 596, column: 10, scope: !4459)
!4548 = !DILocation(line: 595, column: 3, scope: !4459)
!4549 = distinct !{!4549, !4493, !4550, !3412, !3413}
!4550 = !DILocation(line: 631, column: 3, scope: !4460)
!4551 = !DILocation(line: 632, column: 2, scope: !4455)
!4552 = !DILocation(line: 632, column: 2, scope: !4454)
!4553 = !DILocation(line: 581, column: 2, scope: !4462)
!4554 = distinct !{!4554, !4470, !4555, !3412, !3413}
!4555 = !DILocation(line: 632, column: 2, scope: !4452)
!4556 = !DILocation(line: 634, column: 2, scope: !4441)
!4557 = !DILocation(line: 635, column: 2, scope: !4441)
!4558 = !DILocation(line: 636, column: 2, scope: !4441)
!4559 = !DILocation(line: 637, column: 31, scope: !4441)
!4560 = !DILocation(line: 637, column: 2, scope: !4441)
!4561 = !DILocation(line: 640, column: 1, scope: !4441)
!4562 = !DILocation(line: 639, column: 2, scope: !4441)
!4563 = distinct !DISubprogram(name: "list_add_tail", scope: !3656, file: !3656, line: 181, type: !4564, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4566)
!4564 = !DISubroutineType(types: !4565)
!4565 = !{null, !139, !139}
!4566 = !{!4567, !4568}
!4567 = !DILocalVariable(name: "new", arg: 1, scope: !4563, file: !3656, line: 181, type: !139)
!4568 = !DILocalVariable(name: "head", arg: 2, scope: !4563, file: !3656, line: 181, type: !139)
!4569 = !DILocation(line: 181, column: 52, scope: !4563)
!4570 = !DILocation(line: 181, column: 75, scope: !4563)
!4571 = !DILocation(line: 183, column: 13, scope: !4563)
!4572 = !DILocation(line: 183, column: 18, scope: !4563)
!4573 = !DILocation(line: 183, column: 24, scope: !4563)
!4574 = !DILocation(line: 183, column: 30, scope: !4563)
!4575 = !DILocation(line: 183, column: 2, scope: !4563)
!4576 = !DILocation(line: 184, column: 1, scope: !4563)
!4577 = distinct !DISubprogram(name: "skip_propagation_subtree", scope: !3, file: !3, line: 170, type: !3965, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4578)
!4578 = !{!4579, !4580}
!4579 = !DILocalVariable(name: "m", arg: 1, scope: !4577, file: !3, line: 170, type: !57)
!4580 = !DILocalVariable(name: "origin", arg: 2, scope: !4577, file: !3, line: 171, type: !57)
!4581 = !DILocation(line: 170, column: 61, scope: !4577)
!4582 = !DILocation(line: 171, column: 21, scope: !4577)
!4583 = !DILocation(line: 177, column: 7, scope: !4584)
!4584 = distinct !DILexicalBlock(scope: !4577, file: !3, line: 177, column: 6)
!4585 = !DILocation(line: 177, column: 21, scope: !4584)
!4586 = !DILocation(line: 177, column: 37, scope: !4584)
!4587 = !DILocation(line: 177, column: 40, scope: !4584)
!4588 = !DILocation(line: 177, column: 25, scope: !4584)
!4589 = !DILocation(line: 177, column: 6, scope: !4577)
!4590 = !DILocation(line: 178, column: 18, scope: !4584)
!4591 = !DILocation(line: 178, column: 7, scope: !4584)
!4592 = !DILocation(line: 178, column: 5, scope: !4584)
!4593 = !DILocation(line: 178, column: 3, scope: !4584)
!4594 = !DILocation(line: 180, column: 9, scope: !4577)
!4595 = !DILocation(line: 180, column: 2, scope: !4577)
!4596 = distinct !DISubprogram(name: "__propagate_umount", scope: !3, file: !3, line: 478, type: !4597, scopeLine: 481, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4599)
!4597 = !DISubroutineType(types: !4598)
!4598 = !{!190, !57, !139, !139}
!4599 = !{!4600, !4601, !4602, !4603, !4604, !4605, !4608, !4611, !4614}
!4600 = !DILocalVariable(name: "mnt", arg: 1, scope: !4596, file: !3, line: 478, type: !57)
!4601 = !DILocalVariable(name: "to_umount", arg: 2, scope: !4596, file: !3, line: 479, type: !139)
!4602 = !DILocalVariable(name: "to_restore", arg: 3, scope: !4596, file: !3, line: 480, type: !139)
!4603 = !DILocalVariable(name: "progress", scope: !4596, file: !3, line: 482, type: !190)
!4604 = !DILocalVariable(name: "child", scope: !4596, file: !3, line: 483, type: !57)
!4605 = !DILocalVariable(name: "__mptr", scope: !4606, file: !3, line: 495, type: !56)
!4606 = distinct !DILexicalBlock(scope: !4607, file: !3, line: 495, column: 2)
!4607 = distinct !DILexicalBlock(scope: !4596, file: !3, line: 495, column: 2)
!4608 = !DILocalVariable(name: "__mptr", scope: !4609, file: !3, line: 495, type: !56)
!4609 = distinct !DILexicalBlock(scope: !4610, file: !3, line: 495, column: 2)
!4610 = distinct !DILexicalBlock(scope: !4607, file: !3, line: 495, column: 2)
!4611 = !DILabel(scope: !4612, name: "children", file: !3, line: 512)
!4612 = distinct !DILexicalBlock(scope: !4613, file: !3, line: 511, column: 9)
!4613 = distinct !DILexicalBlock(scope: !4596, file: !3, line: 509, column: 6)
!4614 = !DILabel(scope: !4596, name: "out", file: !3, line: 515)
!4615 = !DILocation(line: 478, column: 46, scope: !4596)
!4616 = !DILocation(line: 479, column: 29, scope: !4596)
!4617 = !DILocation(line: 480, column: 29, scope: !4596)
!4618 = !DILocation(line: 482, column: 2, scope: !4596)
!4619 = !DILocation(line: 482, column: 7, scope: !4596)
!4620 = !DILocation(line: 483, column: 2, scope: !4596)
!4621 = !DILocation(line: 483, column: 16, scope: !4596)
!4622 = !DILocation(line: 489, column: 6, scope: !4623)
!4623 = distinct !DILexicalBlock(scope: !4596, file: !3, line: 489, column: 6)
!4624 = !DILocation(line: 489, column: 11, scope: !4623)
!4625 = !DILocation(line: 489, column: 15, scope: !4623)
!4626 = !DILocation(line: 489, column: 25, scope: !4623)
!4627 = !DILocation(line: 489, column: 6, scope: !4596)
!4628 = !DILocation(line: 490, column: 3, scope: !4623)
!4629 = !DILocation(line: 495, column: 2, scope: !4606)
!4630 = !DILocation(line: 495, column: 2, scope: !4607)
!4631 = !DILocation(line: 495, column: 2, scope: !4610)
!4632 = !DILocation(line: 496, column: 7, scope: !4633)
!4633 = distinct !DILexicalBlock(scope: !4634, file: !3, line: 496, column: 7)
!4634 = distinct !DILexicalBlock(scope: !4610, file: !3, line: 495, column: 58)
!4635 = !DILocation(line: 496, column: 14, scope: !4633)
!4636 = !DILocation(line: 496, column: 32, scope: !4633)
!4637 = !DILocation(line: 496, column: 37, scope: !4633)
!4638 = !DILocation(line: 496, column: 41, scope: !4633)
!4639 = !DILocation(line: 496, column: 29, scope: !4633)
!4640 = !DILocation(line: 496, column: 7, scope: !4634)
!4641 = !DILocation(line: 497, column: 4, scope: !4633)
!4642 = !DILocation(line: 498, column: 20, scope: !4643)
!4643 = distinct !DILexicalBlock(scope: !4634, file: !3, line: 498, column: 7)
!4644 = !DILocation(line: 498, column: 27, scope: !4643)
!4645 = !DILocation(line: 498, column: 8, scope: !4643)
!4646 = !DILocation(line: 498, column: 42, scope: !4643)
!4647 = !DILocation(line: 498, column: 45, scope: !4643)
!4648 = !DILocation(line: 498, column: 7, scope: !4634)
!4649 = !DILocation(line: 499, column: 4, scope: !4643)
!4650 = !DILocation(line: 501, column: 3, scope: !4634)
!4651 = !DILocation(line: 495, column: 2, scope: !4609)
!4652 = distinct !{!4652, !4630, !4653, !3412, !3413}
!4653 = !DILocation(line: 502, column: 2, scope: !4607)
!4654 = !DILocation(line: 505, column: 2, scope: !4596)
!4655 = !DILocation(line: 506, column: 11, scope: !4596)
!4656 = !DILocation(line: 509, column: 7, scope: !4613)
!4657 = !DILocation(line: 509, column: 6, scope: !4596)
!4658 = !DILocation(line: 510, column: 14, scope: !4659)
!4659 = distinct !DILexicalBlock(scope: !4613, file: !3, line: 509, column: 27)
!4660 = !DILocation(line: 510, column: 19, scope: !4659)
!4661 = !DILocation(line: 510, column: 3, scope: !4659)
!4662 = !DILocation(line: 511, column: 2, scope: !4659)
!4663 = !DILocation(line: 511, column: 9, scope: !4613)
!4664 = !DILocation(line: 512, column: 1, scope: !4612)
!4665 = !DILocation(line: 513, column: 19, scope: !4612)
!4666 = !DILocation(line: 513, column: 24, scope: !4612)
!4667 = !DILocation(line: 513, column: 39, scope: !4612)
!4668 = !DILocation(line: 513, column: 3, scope: !4612)
!4669 = !DILocation(line: 515, column: 1, scope: !4596)
!4670 = !DILocation(line: 516, column: 9, scope: !4596)
!4671 = !DILocation(line: 517, column: 1, scope: !4596)
!4672 = !DILocation(line: 516, column: 2, scope: !4596)
!4673 = distinct !DISubprogram(name: "umount_list", scope: !3, file: !3, line: 519, type: !4564, scopeLine: 521, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4674)
!4674 = !{!4675, !4676, !4677, !4678, !4679, !4680, !4683, !4688, !4690, !4693}
!4675 = !DILocalVariable(name: "to_umount", arg: 1, scope: !4673, file: !3, line: 519, type: !139)
!4676 = !DILocalVariable(name: "to_restore", arg: 2, scope: !4673, file: !3, line: 520, type: !139)
!4677 = !DILocalVariable(name: "mnt", scope: !4673, file: !3, line: 522, type: !57)
!4678 = !DILocalVariable(name: "child", scope: !4673, file: !3, line: 522, type: !57)
!4679 = !DILocalVariable(name: "tmp", scope: !4673, file: !3, line: 522, type: !57)
!4680 = !DILocalVariable(name: "__mptr", scope: !4681, file: !3, line: 523, type: !56)
!4681 = distinct !DILexicalBlock(scope: !4682, file: !3, line: 523, column: 2)
!4682 = distinct !DILexicalBlock(scope: !4673, file: !3, line: 523, column: 2)
!4683 = !DILocalVariable(name: "__mptr", scope: !4684, file: !3, line: 524, type: !56)
!4684 = distinct !DILexicalBlock(scope: !4685, file: !3, line: 524, column: 3)
!4685 = distinct !DILexicalBlock(scope: !4686, file: !3, line: 524, column: 3)
!4686 = distinct !DILexicalBlock(scope: !4687, file: !3, line: 523, column: 48)
!4687 = distinct !DILexicalBlock(scope: !4682, file: !3, line: 523, column: 2)
!4688 = !DILocalVariable(name: "__mptr", scope: !4689, file: !3, line: 524, type: !56)
!4689 = distinct !DILexicalBlock(scope: !4685, file: !3, line: 524, column: 3)
!4690 = !DILocalVariable(name: "__mptr", scope: !4691, file: !3, line: 524, type: !56)
!4691 = distinct !DILexicalBlock(scope: !4692, file: !3, line: 524, column: 3)
!4692 = distinct !DILexicalBlock(scope: !4685, file: !3, line: 524, column: 3)
!4693 = !DILocalVariable(name: "__mptr", scope: !4694, file: !3, line: 523, type: !56)
!4694 = distinct !DILexicalBlock(scope: !4687, file: !3, line: 523, column: 2)
!4695 = !DILocation(line: 519, column: 43, scope: !4673)
!4696 = !DILocation(line: 520, column: 22, scope: !4673)
!4697 = !DILocation(line: 522, column: 2, scope: !4673)
!4698 = !DILocation(line: 522, column: 16, scope: !4673)
!4699 = !DILocation(line: 522, column: 22, scope: !4673)
!4700 = !DILocation(line: 522, column: 30, scope: !4673)
!4701 = !DILocation(line: 523, column: 2, scope: !4681)
!4702 = !DILocation(line: 523, column: 2, scope: !4682)
!4703 = !DILocation(line: 523, column: 2, scope: !4687)
!4704 = !DILocation(line: 524, column: 3, scope: !4684)
!4705 = !DILocation(line: 524, column: 3, scope: !4685)
!4706 = !DILocation(line: 524, column: 3, scope: !4689)
!4707 = !DILocation(line: 524, column: 3, scope: !4692)
!4708 = !DILocation(line: 526, column: 8, scope: !4709)
!4709 = distinct !DILexicalBlock(scope: !4710, file: !3, line: 526, column: 8)
!4710 = distinct !DILexicalBlock(scope: !4692, file: !3, line: 524, column: 69)
!4711 = !DILocation(line: 526, column: 15, scope: !4709)
!4712 = !DILocation(line: 526, column: 33, scope: !4709)
!4713 = !DILocation(line: 526, column: 38, scope: !4709)
!4714 = !DILocation(line: 526, column: 42, scope: !4709)
!4715 = !DILocation(line: 526, column: 30, scope: !4709)
!4716 = !DILocation(line: 526, column: 8, scope: !4710)
!4717 = !DILocation(line: 527, column: 21, scope: !4709)
!4718 = !DILocation(line: 527, column: 28, scope: !4709)
!4719 = !DILocation(line: 527, column: 43, scope: !4709)
!4720 = !DILocation(line: 527, column: 5, scope: !4709)
!4721 = !DILocation(line: 529, column: 16, scope: !4709)
!4722 = !DILocation(line: 529, column: 23, scope: !4709)
!4723 = !DILocation(line: 529, column: 5, scope: !4709)
!4724 = !DILocation(line: 530, column: 3, scope: !4710)
!4725 = !DILocation(line: 524, column: 3, scope: !4691)
!4726 = distinct !{!4726, !4705, !4727, !3412, !3413}
!4727 = !DILocation(line: 530, column: 3, scope: !4685)
!4728 = !DILocation(line: 531, column: 2, scope: !4686)
!4729 = !DILocation(line: 523, column: 2, scope: !4694)
!4730 = distinct !{!4730, !4702, !4731, !3412, !3413}
!4731 = !DILocation(line: 531, column: 2, scope: !4682)
!4732 = !DILocation(line: 532, column: 1, scope: !4673)
!4733 = distinct !DISubprogram(name: "restore_mounts", scope: !3, file: !3, line: 534, type: !3657, scopeLine: 535, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4734)
!4734 = !{!4735, !4736, !4738, !4739, !4740}
!4735 = !DILocalVariable(name: "to_restore", arg: 1, scope: !4733, file: !3, line: 534, type: !139)
!4736 = !DILocalVariable(name: "mnt", scope: !4737, file: !3, line: 538, type: !57)
!4737 = distinct !DILexicalBlock(scope: !4733, file: !3, line: 537, column: 34)
!4738 = !DILocalVariable(name: "parent", scope: !4737, file: !3, line: 538, type: !57)
!4739 = !DILocalVariable(name: "mp", scope: !4737, file: !3, line: 539, type: !3318)
!4740 = !DILocalVariable(name: "__mptr", scope: !4741, file: !3, line: 541, type: !56)
!4741 = distinct !DILexicalBlock(scope: !4737, file: !3, line: 541, column: 9)
!4742 = !DILocation(line: 534, column: 46, scope: !4733)
!4743 = !DILocation(line: 537, column: 2, scope: !4733)
!4744 = !DILocation(line: 537, column: 21, scope: !4733)
!4745 = !DILocation(line: 537, column: 10, scope: !4733)
!4746 = !DILocation(line: 537, column: 9, scope: !4733)
!4747 = !DILocation(line: 538, column: 3, scope: !4737)
!4748 = !DILocation(line: 538, column: 17, scope: !4737)
!4749 = !DILocation(line: 538, column: 23, scope: !4737)
!4750 = !DILocation(line: 539, column: 3, scope: !4737)
!4751 = !DILocation(line: 539, column: 22, scope: !4737)
!4752 = !DILocation(line: 541, column: 9, scope: !4741)
!4753 = !DILocation(line: 541, column: 9, scope: !4737)
!4754 = !DILocation(line: 541, column: 7, scope: !4737)
!4755 = !DILocation(line: 542, column: 3, scope: !4737)
!4756 = !DILocation(line: 543, column: 18, scope: !4737)
!4757 = !DILocation(line: 543, column: 23, scope: !4737)
!4758 = !DILocation(line: 543, column: 3, scope: !4737)
!4759 = !DILocation(line: 546, column: 8, scope: !4737)
!4760 = !DILocation(line: 546, column: 13, scope: !4737)
!4761 = !DILocation(line: 546, column: 6, scope: !4737)
!4762 = !DILocation(line: 547, column: 12, scope: !4737)
!4763 = !DILocation(line: 547, column: 17, scope: !4737)
!4764 = !DILocation(line: 547, column: 10, scope: !4737)
!4765 = !DILocation(line: 548, column: 3, scope: !4737)
!4766 = !DILocation(line: 548, column: 10, scope: !4737)
!4767 = !DILocation(line: 548, column: 18, scope: !4737)
!4768 = !DILocation(line: 548, column: 22, scope: !4737)
!4769 = !DILocation(line: 548, column: 32, scope: !4737)
!4770 = !DILocation(line: 549, column: 9, scope: !4771)
!4771 = distinct !DILexicalBlock(scope: !4737, file: !3, line: 548, column: 46)
!4772 = !DILocation(line: 549, column: 17, scope: !4771)
!4773 = !DILocation(line: 549, column: 7, scope: !4771)
!4774 = !DILocation(line: 550, column: 13, scope: !4771)
!4775 = !DILocation(line: 550, column: 21, scope: !4771)
!4776 = !DILocation(line: 550, column: 11, scope: !4771)
!4777 = distinct !{!4777, !4765, !4778, !3412, !3413}
!4778 = !DILocation(line: 551, column: 3, scope: !4737)
!4779 = !DILocation(line: 552, column: 7, scope: !4780)
!4780 = distinct !DILexicalBlock(scope: !4737, file: !3, line: 552, column: 7)
!4781 = !DILocation(line: 552, column: 17, scope: !4780)
!4782 = !DILocation(line: 552, column: 22, scope: !4780)
!4783 = !DILocation(line: 552, column: 14, scope: !4780)
!4784 = !DILocation(line: 552, column: 7, scope: !4737)
!4785 = !DILocation(line: 553, column: 26, scope: !4780)
!4786 = !DILocation(line: 553, column: 34, scope: !4780)
!4787 = !DILocation(line: 553, column: 38, scope: !4780)
!4788 = !DILocation(line: 553, column: 4, scope: !4780)
!4789 = !DILocation(line: 554, column: 2, scope: !4733)
!4790 = distinct !{!4790, !4743, !4789, !3412, !3413}
!4791 = !DILocation(line: 555, column: 1, scope: !4733)
!4792 = distinct !DISubprogram(name: "cleanup_umount_visitations", scope: !3, file: !3, line: 557, type: !3657, scopeLine: 558, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4793)
!4793 = !{!4794, !4795, !4797}
!4794 = !DILocalVariable(name: "visited", arg: 1, scope: !4792, file: !3, line: 557, type: !139)
!4795 = !DILocalVariable(name: "mnt", scope: !4796, file: !3, line: 560, type: !57)
!4796 = distinct !DILexicalBlock(scope: !4792, file: !3, line: 559, column: 31)
!4797 = !DILocalVariable(name: "__mptr", scope: !4798, file: !3, line: 561, type: !56)
!4798 = distinct !DILexicalBlock(scope: !4796, file: !3, line: 561, column: 4)
!4799 = !DILocation(line: 557, column: 58, scope: !4792)
!4800 = !DILocation(line: 559, column: 2, scope: !4792)
!4801 = !DILocation(line: 559, column: 21, scope: !4792)
!4802 = !DILocation(line: 559, column: 10, scope: !4792)
!4803 = !DILocation(line: 559, column: 9, scope: !4792)
!4804 = !DILocation(line: 560, column: 3, scope: !4796)
!4805 = !DILocation(line: 560, column: 17, scope: !4796)
!4806 = !DILocation(line: 561, column: 4, scope: !4798)
!4807 = !DILocation(line: 561, column: 4, scope: !4796)
!4808 = !DILocation(line: 562, column: 18, scope: !4796)
!4809 = !DILocation(line: 562, column: 23, scope: !4796)
!4810 = !DILocation(line: 562, column: 3, scope: !4796)
!4811 = !DILocation(line: 563, column: 2, scope: !4792)
!4812 = distinct !{!4812, !4800, !4811, !3412, !3413}
!4813 = !DILocation(line: 564, column: 1, scope: !4792)
!4814 = distinct !DISubprogram(name: "list_splice_tail", scope: !3656, file: !3656, line: 554, type: !4564, scopeLine: 556, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4815)
!4815 = !{!4816, !4817}
!4816 = !DILocalVariable(name: "list", arg: 1, scope: !4814, file: !3656, line: 554, type: !139)
!4817 = !DILocalVariable(name: "head", arg: 2, scope: !4814, file: !3656, line: 555, type: !139)
!4818 = !DILocation(line: 554, column: 55, scope: !4814)
!4819 = !DILocation(line: 555, column: 23, scope: !4814)
!4820 = !DILocation(line: 557, column: 18, scope: !4821)
!4821 = distinct !DILexicalBlock(scope: !4814, file: !3656, line: 557, column: 6)
!4822 = !DILocation(line: 557, column: 7, scope: !4821)
!4823 = !DILocation(line: 557, column: 6, scope: !4814)
!4824 = !DILocation(line: 558, column: 17, scope: !4821)
!4825 = !DILocation(line: 558, column: 23, scope: !4821)
!4826 = !DILocation(line: 558, column: 29, scope: !4821)
!4827 = !DILocation(line: 558, column: 35, scope: !4821)
!4828 = !DILocation(line: 558, column: 3, scope: !4821)
!4829 = !DILocation(line: 559, column: 1, scope: !4814)
!4830 = !DISubprogram(name: "is_path_reachable", scope: !3502, file: !3502, line: 53, type: !4831, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4831 = !DISubroutineType(types: !4832)
!4832 = !{!190, !57, !71, !935}
!4833 = !DISubprogram(name: "mnt_release_group_id", scope: !3502, file: !3502, line: 45, type: !3503, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4834 = distinct !DISubprogram(name: "list_move", scope: !3656, file: !3656, line: 296, type: !4564, scopeLine: 297, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4835)
!4835 = !{!4836, !4837}
!4836 = !DILocalVariable(name: "list", arg: 1, scope: !4834, file: !3656, line: 296, type: !139)
!4837 = !DILocalVariable(name: "head", arg: 2, scope: !4834, file: !3656, line: 296, type: !139)
!4838 = !DILocation(line: 296, column: 48, scope: !4834)
!4839 = !DILocation(line: 296, column: 72, scope: !4834)
!4840 = !DILocation(line: 298, column: 19, scope: !4834)
!4841 = !DILocation(line: 298, column: 2, scope: !4834)
!4842 = !DILocation(line: 299, column: 11, scope: !4834)
!4843 = !DILocation(line: 299, column: 17, scope: !4834)
!4844 = !DILocation(line: 299, column: 2, scope: !4834)
!4845 = !DILocation(line: 300, column: 1, scope: !4834)
!4846 = distinct !DISubprogram(name: "list_splice", scope: !3656, file: !3656, line: 542, type: !4847, scopeLine: 544, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4849)
!4847 = !DISubroutineType(types: !4848)
!4848 = !{null, !4280, !139}
!4849 = !{!4850, !4851}
!4850 = !DILocalVariable(name: "list", arg: 1, scope: !4846, file: !3656, line: 542, type: !4280)
!4851 = !DILocalVariable(name: "head", arg: 2, scope: !4846, file: !3656, line: 543, type: !139)
!4852 = !DILocation(line: 542, column: 56, scope: !4846)
!4853 = !DILocation(line: 543, column: 23, scope: !4846)
!4854 = !DILocation(line: 545, column: 18, scope: !4855)
!4855 = distinct !DILexicalBlock(scope: !4846, file: !3656, line: 545, column: 6)
!4856 = !DILocation(line: 545, column: 7, scope: !4855)
!4857 = !DILocation(line: 545, column: 6, scope: !4846)
!4858 = !DILocation(line: 546, column: 17, scope: !4855)
!4859 = !DILocation(line: 546, column: 23, scope: !4855)
!4860 = !DILocation(line: 546, column: 29, scope: !4855)
!4861 = !DILocation(line: 546, column: 35, scope: !4855)
!4862 = !DILocation(line: 546, column: 3, scope: !4855)
!4863 = !DILocation(line: 547, column: 1, scope: !4846)
!4864 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !3656, file: !3656, line: 35, type: !3657, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4865)
!4865 = !{!4866}
!4866 = !DILocalVariable(name: "list", arg: 1, scope: !4864, file: !3656, line: 35, type: !139)
!4867 = !DILocation(line: 35, column: 53, scope: !4864)
!4868 = !DILocation(line: 37, column: 2, scope: !4864)
!4869 = !DILocation(line: 37, column: 2, scope: !4870)
!4870 = distinct !DILexicalBlock(scope: !4864, file: !3656, line: 37, column: 2)
!4871 = !DILocation(line: 37, column: 2, scope: !4872)
!4872 = distinct !DILexicalBlock(scope: !4870, file: !3656, line: 37, column: 2)
!4873 = !DILocation(line: 37, column: 2, scope: !4874)
!4874 = distinct !DILexicalBlock(scope: !4870, file: !3656, line: 37, column: 2)
!4875 = !DILocation(line: 38, column: 2, scope: !4864)
!4876 = !DILocation(line: 38, column: 2, scope: !4877)
!4877 = distinct !DILexicalBlock(scope: !4864, file: !3656, line: 38, column: 2)
!4878 = !DILocation(line: 38, column: 2, scope: !4879)
!4879 = distinct !DILexicalBlock(scope: !4877, file: !3656, line: 38, column: 2)
!4880 = !DILocation(line: 38, column: 2, scope: !4881)
!4881 = distinct !DILexicalBlock(scope: !4877, file: !3656, line: 38, column: 2)
!4882 = !DILocation(line: 39, column: 1, scope: !4864)
!4883 = distinct !DISubprogram(name: "__list_del_entry", scope: !3656, file: !3656, line: 213, type: !3657, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4884)
!4884 = !{!4885}
!4885 = !DILocalVariable(name: "entry", arg: 1, scope: !4883, file: !3656, line: 213, type: !139)
!4886 = !DILocation(line: 213, column: 55, scope: !4883)
!4887 = !DILocation(line: 215, column: 30, scope: !4888)
!4888 = distinct !DILexicalBlock(scope: !4883, file: !3656, line: 215, column: 6)
!4889 = !DILocation(line: 215, column: 7, scope: !4888)
!4890 = !DILocation(line: 215, column: 6, scope: !4883)
!4891 = !DILocation(line: 216, column: 3, scope: !4888)
!4892 = !DILocation(line: 218, column: 13, scope: !4883)
!4893 = !DILocation(line: 218, column: 20, scope: !4883)
!4894 = !DILocation(line: 218, column: 26, scope: !4883)
!4895 = !DILocation(line: 218, column: 33, scope: !4883)
!4896 = !DILocation(line: 218, column: 2, scope: !4883)
!4897 = !DILocation(line: 219, column: 1, scope: !4883)
!4898 = distinct !DISubprogram(name: "list_add", scope: !3656, file: !3656, line: 167, type: !4564, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4899)
!4899 = !{!4900, !4901}
!4900 = !DILocalVariable(name: "new", arg: 1, scope: !4898, file: !3656, line: 167, type: !139)
!4901 = !DILocalVariable(name: "head", arg: 2, scope: !4898, file: !3656, line: 167, type: !139)
!4902 = !DILocation(line: 167, column: 47, scope: !4898)
!4903 = !DILocation(line: 167, column: 70, scope: !4898)
!4904 = !DILocation(line: 169, column: 13, scope: !4898)
!4905 = !DILocation(line: 169, column: 18, scope: !4898)
!4906 = !DILocation(line: 169, column: 24, scope: !4898)
!4907 = !DILocation(line: 169, column: 30, scope: !4898)
!4908 = !DILocation(line: 169, column: 2, scope: !4898)
!4909 = !DILocation(line: 170, column: 1, scope: !4898)
!4910 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !3656, file: !3656, line: 134, type: !4911, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4913)
!4911 = !DISubroutineType(types: !4912)
!4912 = !{!190, !139}
!4913 = !{!4914}
!4914 = !DILocalVariable(name: "entry", arg: 1, scope: !4910, file: !3656, line: 134, type: !139)
!4915 = !DILocation(line: 134, column: 61, scope: !4910)
!4916 = !DILocation(line: 136, column: 2, scope: !4910)
!4917 = distinct !DISubprogram(name: "__list_del", scope: !3656, file: !3656, line: 193, type: !4564, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4918)
!4918 = !{!4919, !4920}
!4919 = !DILocalVariable(name: "prev", arg: 1, scope: !4917, file: !3656, line: 193, type: !139)
!4920 = !DILocalVariable(name: "next", arg: 2, scope: !4917, file: !3656, line: 193, type: !139)
!4921 = !DILocation(line: 193, column: 50, scope: !4917)
!4922 = !DILocation(line: 193, column: 75, scope: !4917)
!4923 = !DILocation(line: 195, column: 15, scope: !4917)
!4924 = !DILocation(line: 195, column: 2, scope: !4917)
!4925 = !DILocation(line: 195, column: 8, scope: !4917)
!4926 = !DILocation(line: 195, column: 13, scope: !4917)
!4927 = !DILocation(line: 196, column: 2, scope: !4917)
!4928 = !DILocation(line: 196, column: 2, scope: !4929)
!4929 = distinct !DILexicalBlock(scope: !4917, file: !3656, line: 196, column: 2)
!4930 = !DILocation(line: 196, column: 2, scope: !4931)
!4931 = distinct !DILexicalBlock(scope: !4929, file: !3656, line: 196, column: 2)
!4932 = !DILocation(line: 196, column: 2, scope: !4933)
!4933 = distinct !DILexicalBlock(scope: !4929, file: !3656, line: 196, column: 2)
!4934 = !DILocation(line: 197, column: 1, scope: !4917)
!4935 = distinct !DISubprogram(name: "__list_add", scope: !3656, file: !3656, line: 146, type: !4936, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4938)
!4936 = !DISubroutineType(types: !4937)
!4937 = !{null, !139, !139, !139}
!4938 = !{!4939, !4940, !4941}
!4939 = !DILocalVariable(name: "new", arg: 1, scope: !4935, file: !3656, line: 146, type: !139)
!4940 = !DILocalVariable(name: "prev", arg: 2, scope: !4935, file: !3656, line: 147, type: !139)
!4941 = !DILocalVariable(name: "next", arg: 3, scope: !4935, file: !3656, line: 148, type: !139)
!4942 = !DILocation(line: 146, column: 49, scope: !4935)
!4943 = !DILocation(line: 147, column: 28, scope: !4935)
!4944 = !DILocation(line: 148, column: 28, scope: !4935)
!4945 = !DILocation(line: 150, column: 24, scope: !4946)
!4946 = distinct !DILexicalBlock(scope: !4935, file: !3656, line: 150, column: 6)
!4947 = !DILocation(line: 150, column: 29, scope: !4946)
!4948 = !DILocation(line: 150, column: 35, scope: !4946)
!4949 = !DILocation(line: 150, column: 7, scope: !4946)
!4950 = !DILocation(line: 150, column: 6, scope: !4935)
!4951 = !DILocation(line: 151, column: 3, scope: !4946)
!4952 = !DILocation(line: 153, column: 15, scope: !4935)
!4953 = !DILocation(line: 153, column: 2, scope: !4935)
!4954 = !DILocation(line: 153, column: 8, scope: !4935)
!4955 = !DILocation(line: 153, column: 13, scope: !4935)
!4956 = !DILocation(line: 154, column: 14, scope: !4935)
!4957 = !DILocation(line: 154, column: 2, scope: !4935)
!4958 = !DILocation(line: 154, column: 7, scope: !4935)
!4959 = !DILocation(line: 154, column: 12, scope: !4935)
!4960 = !DILocation(line: 155, column: 14, scope: !4935)
!4961 = !DILocation(line: 155, column: 2, scope: !4935)
!4962 = !DILocation(line: 155, column: 7, scope: !4935)
!4963 = !DILocation(line: 155, column: 12, scope: !4935)
!4964 = !DILocation(line: 156, column: 2, scope: !4935)
!4965 = !DILocation(line: 156, column: 2, scope: !4966)
!4966 = distinct !DILexicalBlock(scope: !4935, file: !3656, line: 156, column: 2)
!4967 = !DILocation(line: 156, column: 2, scope: !4968)
!4968 = distinct !DILexicalBlock(scope: !4966, file: !3656, line: 156, column: 2)
!4969 = !DILocation(line: 156, column: 2, scope: !4970)
!4970 = distinct !DILexicalBlock(scope: !4966, file: !3656, line: 156, column: 2)
!4971 = !DILocation(line: 157, column: 1, scope: !4935)
!4972 = distinct !DISubprogram(name: "__list_add_valid", scope: !3656, file: !3656, line: 128, type: !4973, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4975)
!4973 = !DISubroutineType(types: !4974)
!4974 = !{!190, !139, !139, !139}
!4975 = !{!4976, !4977, !4978}
!4976 = !DILocalVariable(name: "new", arg: 1, scope: !4972, file: !3656, line: 128, type: !139)
!4977 = !DILocalVariable(name: "prev", arg: 2, scope: !4972, file: !3656, line: 129, type: !139)
!4978 = !DILocalVariable(name: "next", arg: 3, scope: !4972, file: !3656, line: 130, type: !139)
!4979 = !DILocation(line: 128, column: 55, scope: !4972)
!4980 = !DILocation(line: 129, column: 23, scope: !4972)
!4981 = !DILocation(line: 130, column: 23, scope: !4972)
!4982 = !DILocation(line: 132, column: 2, scope: !4972)
!4983 = distinct !DISubprogram(name: "__list_splice", scope: !3656, file: !3656, line: 523, type: !4984, scopeLine: 526, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4986)
!4984 = !DISubroutineType(types: !4985)
!4985 = !{null, !4280, !139, !139}
!4986 = !{!4987, !4988, !4989, !4990, !4991}
!4987 = !DILocalVariable(name: "list", arg: 1, scope: !4983, file: !3656, line: 523, type: !4280)
!4988 = !DILocalVariable(name: "prev", arg: 2, scope: !4983, file: !3656, line: 524, type: !139)
!4989 = !DILocalVariable(name: "next", arg: 3, scope: !4983, file: !3656, line: 525, type: !139)
!4990 = !DILocalVariable(name: "first", scope: !4983, file: !3656, line: 527, type: !139)
!4991 = !DILocalVariable(name: "last", scope: !4983, file: !3656, line: 528, type: !139)
!4992 = !DILocation(line: 523, column: 58, scope: !4983)
!4993 = !DILocation(line: 524, column: 24, scope: !4983)
!4994 = !DILocation(line: 525, column: 24, scope: !4983)
!4995 = !DILocation(line: 527, column: 2, scope: !4983)
!4996 = !DILocation(line: 527, column: 20, scope: !4983)
!4997 = !DILocation(line: 527, column: 28, scope: !4983)
!4998 = !DILocation(line: 527, column: 34, scope: !4983)
!4999 = !DILocation(line: 528, column: 2, scope: !4983)
!5000 = !DILocation(line: 528, column: 20, scope: !4983)
!5001 = !DILocation(line: 528, column: 27, scope: !4983)
!5002 = !DILocation(line: 528, column: 33, scope: !4983)
!5003 = !DILocation(line: 530, column: 16, scope: !4983)
!5004 = !DILocation(line: 530, column: 2, scope: !4983)
!5005 = !DILocation(line: 530, column: 9, scope: !4983)
!5006 = !DILocation(line: 530, column: 14, scope: !4983)
!5007 = !DILocation(line: 531, column: 15, scope: !4983)
!5008 = !DILocation(line: 531, column: 2, scope: !4983)
!5009 = !DILocation(line: 531, column: 8, scope: !4983)
!5010 = !DILocation(line: 531, column: 13, scope: !4983)
!5011 = !DILocation(line: 533, column: 15, scope: !4983)
!5012 = !DILocation(line: 533, column: 2, scope: !4983)
!5013 = !DILocation(line: 533, column: 8, scope: !4983)
!5014 = !DILocation(line: 533, column: 13, scope: !4983)
!5015 = !DILocation(line: 534, column: 15, scope: !4983)
!5016 = !DILocation(line: 534, column: 2, scope: !4983)
!5017 = !DILocation(line: 534, column: 8, scope: !4983)
!5018 = !DILocation(line: 534, column: 13, scope: !4983)
!5019 = !DILocation(line: 535, column: 1, scope: !4983)
!5020 = !DISubprogram(name: "is_subdir", scope: !15, file: !15, line: 2842, type: !5021, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5021 = !DISubroutineType(types: !5022)
!5022 = !{!190, !71, !71}
!5023 = !DISubprogram(name: "copy_tree", scope: !3502, file: !3502, line: 52, type: !5024, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5024 = !DISubroutineType(types: !5025)
!5025 = !{!57, !57, !71, !182}
!5026 = distinct !DISubprogram(name: "IS_ERR", scope: !5027, file: !5027, line: 59, type: !5028, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5032)
!5027 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!5028 = !DISubroutineType(types: !5029)
!5029 = !{!190, !5030}
!5030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5031, size: 64)
!5031 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!5032 = !{!5033}
!5033 = !DILocalVariable(name: "ptr", arg: 1, scope: !5026, file: !5027, line: 59, type: !5030)
!5034 = !DILocation(line: 59, column: 60, scope: !5026)
!5035 = !DILocation(line: 61, column: 9, scope: !5026)
!5036 = !DILocation(line: 61, column: 2, scope: !5026)
!5037 = distinct !DISubprogram(name: "PTR_ERR", scope: !5027, file: !5027, line: 49, type: !5038, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5040)
!5038 = !DISubroutineType(types: !5039)
!5039 = !{!268, !5030}
!5040 = !{!5041}
!5041 = !DILocalVariable(name: "ptr", arg: 1, scope: !5037, file: !5027, line: 49, type: !5030)
!5042 = !DILocation(line: 49, column: 61, scope: !5037)
!5043 = !DILocation(line: 51, column: 16, scope: !5037)
!5044 = !DILocation(line: 51, column: 9, scope: !5037)
!5045 = !DILocation(line: 51, column: 2, scope: !5037)
!5046 = !DISubprogram(name: "mnt_set_mountpoint", scope: !3502, file: !3502, line: 48, type: !5047, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5047 = !DISubroutineType(types: !5048)
!5048 = !{null, !57, !3318, !57}
!5049 = distinct !DISubprogram(name: "hlist_add_head", scope: !3656, file: !3656, line: 1021, type: !5050, scopeLine: 1022, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5052)
!5050 = !DISubroutineType(types: !5051)
!5051 = !{null, !66, !3118}
!5052 = !{!5053, !5054, !5055}
!5053 = !DILocalVariable(name: "n", arg: 1, scope: !5049, file: !3656, line: 1021, type: !66)
!5054 = !DILocalVariable(name: "h", arg: 2, scope: !5049, file: !3656, line: 1021, type: !3118)
!5055 = !DILocalVariable(name: "first", scope: !5049, file: !3656, line: 1023, type: !66)
!5056 = !DILocation(line: 1021, column: 54, scope: !5049)
!5057 = !DILocation(line: 1021, column: 76, scope: !5049)
!5058 = !DILocation(line: 1023, column: 2, scope: !5049)
!5059 = !DILocation(line: 1023, column: 21, scope: !5049)
!5060 = !DILocation(line: 1023, column: 29, scope: !5049)
!5061 = !DILocation(line: 1023, column: 32, scope: !5049)
!5062 = !DILocation(line: 1024, column: 2, scope: !5049)
!5063 = !DILocation(line: 1024, column: 2, scope: !5064)
!5064 = distinct !DILexicalBlock(scope: !5049, file: !3656, line: 1024, column: 2)
!5065 = !DILocation(line: 1024, column: 2, scope: !5066)
!5066 = distinct !DILexicalBlock(scope: !5064, file: !3656, line: 1024, column: 2)
!5067 = !DILocation(line: 1024, column: 2, scope: !5068)
!5068 = distinct !DILexicalBlock(scope: !5064, file: !3656, line: 1024, column: 2)
!5069 = !DILocation(line: 1025, column: 6, scope: !5070)
!5070 = distinct !DILexicalBlock(scope: !5049, file: !3656, line: 1025, column: 6)
!5071 = !DILocation(line: 1025, column: 6, scope: !5049)
!5072 = !DILocation(line: 1026, column: 3, scope: !5070)
!5073 = !DILocation(line: 1026, column: 3, scope: !5074)
!5074 = distinct !DILexicalBlock(scope: !5070, file: !3656, line: 1026, column: 3)
!5075 = !DILocation(line: 1026, column: 3, scope: !5076)
!5076 = distinct !DILexicalBlock(scope: !5074, file: !3656, line: 1026, column: 3)
!5077 = !DILocation(line: 1026, column: 3, scope: !5078)
!5078 = distinct !DILexicalBlock(scope: !5074, file: !3656, line: 1026, column: 3)
!5079 = !DILocation(line: 1027, column: 2, scope: !5049)
!5080 = !DILocation(line: 1027, column: 2, scope: !5081)
!5081 = distinct !DILexicalBlock(scope: !5049, file: !3656, line: 1027, column: 2)
!5082 = !DILocation(line: 1027, column: 2, scope: !5083)
!5083 = distinct !DILexicalBlock(scope: !5081, file: !3656, line: 1027, column: 2)
!5084 = !DILocation(line: 1027, column: 2, scope: !5085)
!5085 = distinct !DILexicalBlock(scope: !5081, file: !3656, line: 1027, column: 2)
!5086 = !DILocation(line: 1028, column: 2, scope: !5049)
!5087 = !DILocation(line: 1028, column: 2, scope: !5088)
!5088 = distinct !DILexicalBlock(scope: !5049, file: !3656, line: 1028, column: 2)
!5089 = !DILocation(line: 1028, column: 2, scope: !5090)
!5090 = distinct !DILexicalBlock(scope: !5088, file: !3656, line: 1028, column: 2)
!5091 = !DILocation(line: 1028, column: 2, scope: !5092)
!5092 = distinct !DILexicalBlock(scope: !5088, file: !3656, line: 1028, column: 2)
!5093 = !DILocation(line: 1029, column: 1, scope: !5049)
!5094 = !DISubprogram(name: "count_mounts", scope: !3502, file: !3502, line: 55, type: !5095, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5095 = !DISubroutineType(types: !5096)
!5096 = !{!182, !1740, !57}
!5097 = distinct !DISubprogram(name: "first_slave", scope: !3, file: !3, line: 22, type: !3802, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5098)
!5098 = !{!5099, !5100}
!5099 = !DILocalVariable(name: "p", arg: 1, scope: !5097, file: !3, line: 22, type: !57)
!5100 = !DILocalVariable(name: "__mptr", scope: !5101, file: !3, line: 24, type: !56)
!5101 = distinct !DILexicalBlock(scope: !5097, file: !3, line: 24, column: 9)
!5102 = !DILocation(line: 22, column: 55, scope: !5097)
!5103 = !DILocation(line: 24, column: 9, scope: !5101)
!5104 = !DILocation(line: 24, column: 9, scope: !5097)
!5105 = !DILocation(line: 24, column: 2, scope: !5097)
!5106 = distinct !DISubprogram(name: "next_slave", scope: !3, file: !3, line: 32, type: !3802, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5107)
!5107 = !{!5108, !5109}
!5108 = !DILocalVariable(name: "p", arg: 1, scope: !5106, file: !3, line: 32, type: !57)
!5109 = !DILocalVariable(name: "__mptr", scope: !5110, file: !3, line: 34, type: !56)
!5110 = distinct !DILexicalBlock(scope: !5106, file: !3, line: 34, column: 9)
!5111 = !DILocation(line: 32, column: 54, scope: !5106)
!5112 = !DILocation(line: 34, column: 9, scope: !5110)
!5113 = !DILocation(line: 34, column: 9, scope: !5106)
!5114 = !DILocation(line: 34, column: 2, scope: !5106)
!5115 = distinct !DISubprogram(name: "spin_lock", scope: !5116, file: !5116, line: 349, type: !5117, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5120)
!5116 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!5117 = !DISubroutineType(types: !5118)
!5118 = !{null, !5119}
!5119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!5120 = !{!5121}
!5121 = !DILocalVariable(name: "lock", arg: 1, scope: !5115, file: !5116, line: 349, type: !5119)
!5122 = !DILocation(line: 349, column: 51, scope: !5115)
!5123 = !DILocation(line: 351, column: 2, scope: !5115)
!5124 = !DILocation(line: 352, column: 1, scope: !5115)
!5125 = !DISubprogram(name: "_raw_spin_lock", scope: !5126, file: !5126, line: 22, type: !5127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5126 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!5127 = !DISubroutineType(types: !5128)
!5128 = !{null, !5129}
!5129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!5130 = distinct !DISubprogram(name: "spin_unlock", scope: !5116, file: !5116, line: 389, type: !5117, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5131)
!5131 = !{!5132}
!5132 = !DILocalVariable(name: "lock", arg: 1, scope: !5130, file: !5116, line: 389, type: !5119)
!5133 = !DILocation(line: 389, column: 53, scope: !5130)
!5134 = !DILocation(line: 391, column: 2, scope: !5130)
!5135 = !DILocation(line: 392, column: 1, scope: !5130)
!5136 = !DISubprogram(name: "_raw_spin_unlock", scope: !5126, file: !5126, line: 39, type: !5127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5137 = !DISubprogram(name: "mnt_get_count", scope: !3502, file: !3502, line: 47, type: !3518, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5138 = distinct !DISubprogram(name: "list_is_singular", scope: !3656, file: !3656, line: 449, type: !4278, scopeLine: 450, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5139)
!5139 = !{!5140}
!5140 = !DILocalVariable(name: "head", arg: 1, scope: !5138, file: !3656, line: 449, type: !4280)
!5141 = !DILocation(line: 449, column: 60, scope: !5138)
!5142 = !DILocation(line: 451, column: 21, scope: !5138)
!5143 = !DILocation(line: 451, column: 10, scope: !5138)
!5144 = !DILocation(line: 451, column: 27, scope: !5138)
!5145 = !DILocation(line: 451, column: 31, scope: !5138)
!5146 = !DILocation(line: 451, column: 37, scope: !5138)
!5147 = !DILocation(line: 451, column: 45, scope: !5138)
!5148 = !DILocation(line: 451, column: 51, scope: !5138)
!5149 = !DILocation(line: 451, column: 42, scope: !5138)
!5150 = !DILocation(line: 0, scope: !5138)
!5151 = !DILocation(line: 451, column: 2, scope: !5138)
!5152 = distinct !DISubprogram(name: "last_slave", scope: !3, file: !3, line: 27, type: !3802, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5153)
!5153 = !{!5154, !5155}
!5154 = !DILocalVariable(name: "p", arg: 1, scope: !5152, file: !3, line: 27, type: !57)
!5155 = !DILocalVariable(name: "__mptr", scope: !5156, file: !3, line: 29, type: !56)
!5156 = distinct !DILexicalBlock(scope: !5152, file: !3, line: 29, column: 9)
!5157 = !DILocation(line: 27, column: 54, scope: !5152)
!5158 = !DILocation(line: 29, column: 9, scope: !5156)
!5159 = !DILocation(line: 29, column: 9, scope: !5152)
!5160 = !DILocation(line: 29, column: 2, scope: !5152)
!5161 = distinct !DISubprogram(name: "umount_one", scope: !3, file: !3, line: 465, type: !5162, scopeLine: 466, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5164)
!5162 = !DISubroutineType(types: !5163)
!5163 = !{null, !57, !139}
!5164 = !{!5165, !5166}
!5165 = !DILocalVariable(name: "mnt", arg: 1, scope: !5161, file: !3, line: 465, type: !57)
!5166 = !DILocalVariable(name: "to_umount", arg: 2, scope: !5161, file: !3, line: 465, type: !139)
!5167 = !DILocation(line: 465, column: 38, scope: !5161)
!5168 = !DILocation(line: 465, column: 61, scope: !5161)
!5169 = !DILocation(line: 467, column: 2, scope: !5161)
!5170 = !DILocation(line: 468, column: 2, scope: !5161)
!5171 = !DILocation(line: 468, column: 7, scope: !5161)
!5172 = !DILocation(line: 468, column: 11, scope: !5161)
!5173 = !DILocation(line: 468, column: 21, scope: !5161)
!5174 = !DILocation(line: 469, column: 17, scope: !5161)
!5175 = !DILocation(line: 469, column: 22, scope: !5161)
!5176 = !DILocation(line: 469, column: 2, scope: !5161)
!5177 = !DILocation(line: 470, column: 17, scope: !5161)
!5178 = !DILocation(line: 470, column: 22, scope: !5161)
!5179 = !DILocation(line: 470, column: 2, scope: !5161)
!5180 = !DILocation(line: 471, column: 18, scope: !5161)
!5181 = !DILocation(line: 471, column: 23, scope: !5161)
!5182 = !DILocation(line: 471, column: 33, scope: !5161)
!5183 = !DILocation(line: 471, column: 2, scope: !5161)
!5184 = !DILocation(line: 472, column: 1, scope: !5161)
!5185 = distinct !DISubprogram(name: "list_move_tail", scope: !3656, file: !3656, line: 307, type: !4564, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5186)
!5186 = !{!5187, !5188}
!5187 = !DILocalVariable(name: "list", arg: 1, scope: !5185, file: !3656, line: 307, type: !139)
!5188 = !DILocalVariable(name: "head", arg: 2, scope: !5185, file: !3656, line: 308, type: !139)
!5189 = !DILocation(line: 307, column: 53, scope: !5185)
!5190 = !DILocation(line: 308, column: 25, scope: !5185)
!5191 = !DILocation(line: 310, column: 19, scope: !5185)
!5192 = !DILocation(line: 310, column: 2, scope: !5185)
!5193 = !DILocation(line: 311, column: 16, scope: !5185)
!5194 = !DILocation(line: 311, column: 22, scope: !5185)
!5195 = !DILocation(line: 311, column: 2, scope: !5185)
!5196 = !DILocation(line: 312, column: 1, scope: !5185)
!5197 = !DISubprogram(name: "mnt_change_mountpoint", scope: !3502, file: !3502, line: 50, type: !5047, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
