; ModuleID = 'fs/autofs/expire.c'
source_filename = "fs/autofs/expire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_class_key = type {}
%struct.path = type { ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [32 x i8], %struct.lockref, ptr, ptr, i64, ptr, %union.anon.17, %struct.list_head, %struct.list_head, %union.anon.18 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.13, ptr }
%union.anon.13 = type { i64 }
%struct.lockref = type { %union.anon.15 }
%union.anon.15 = type { i64 }
%union.anon.17 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.18 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.autofs_info = type { ptr, i32, %struct.completion, %struct.list_head, %struct.list_head, ptr, i64, i32, %struct.kuid_t, %struct.kgid_t, %struct.callback_head }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.autofs_sb_info = type { i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i64, i32, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.callback_head }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
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
%struct.autofs_packet_expire = type { %struct.autofs_packet_hdr, i32, [256 x i8] }
%struct.autofs_packet_hdr = type { i32, i32 }
%struct.anon.14 = type { i32, i32 }
%struct.anon.16 = type { %struct.spinlock, i32 }

@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !0
@.str = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1, !dbg !3264
@.str.1 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1, !dbg !3269

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @autofs_expire_wait(ptr noundef %path, i32 noundef %rcu_walk) #0 align 16 !dbg !3287 {
entry:
  %retval = alloca i32, align 4
  %path.addr = alloca ptr, align 8
  %rcu_walk.addr = alloca i32, align 4
  %dentry = alloca ptr, align 8
  %sbi = alloca ptr, align 8
  %ino = alloca ptr, align 8
  %status = alloca i32, align 4
  %state = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp17 = alloca i32, align 4
  store ptr %path, ptr %path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !3291, metadata !DIExpression()), !dbg !3299
  store i32 %rcu_walk, ptr %rcu_walk.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %rcu_walk.addr, metadata !3292, metadata !DIExpression()), !dbg !3300
  call void @llvm.lifetime.start.p0(i64 8, ptr %dentry) #14, !dbg !3301
  call void @llvm.dbg.declare(metadata ptr %dentry, metadata !3293, metadata !DIExpression()), !dbg !3302
  %0 = load ptr, ptr %path.addr, align 8, !dbg !3303
  %dentry1 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1, !dbg !3304
  %1 = load ptr, ptr %dentry1, align 8, !dbg !3304
  store ptr %1, ptr %dentry, align 8, !dbg !3302
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbi) #14, !dbg !3305
  call void @llvm.dbg.declare(metadata ptr %sbi, metadata !3294, metadata !DIExpression()), !dbg !3306
  %2 = load ptr, ptr %dentry, align 8, !dbg !3307
  %d_sb = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 9, !dbg !3308
  %3 = load ptr, ptr %d_sb, align 8, !dbg !3308
  %call = call ptr @autofs_sbi(ptr noundef %3) #15, !dbg !3309
  store ptr %call, ptr %sbi, align 8, !dbg !3306
  call void @llvm.lifetime.start.p0(i64 8, ptr %ino) #14, !dbg !3310
  call void @llvm.dbg.declare(metadata ptr %ino, metadata !3295, metadata !DIExpression()), !dbg !3311
  %4 = load ptr, ptr %dentry, align 8, !dbg !3312
  %call2 = call ptr @autofs_dentry_ino(ptr noundef %4) #15, !dbg !3313
  store ptr %call2, ptr %ino, align 8, !dbg !3311
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #14, !dbg !3314
  call void @llvm.dbg.declare(metadata ptr %status, metadata !3296, metadata !DIExpression()), !dbg !3315
  call void @llvm.lifetime.start.p0(i64 4, ptr %state) #14, !dbg !3316
  call void @llvm.dbg.declare(metadata ptr %state, metadata !3297, metadata !DIExpression()), !dbg !3317
  %5 = load ptr, ptr %ino, align 8, !dbg !3318
  %flags = getelementptr inbounds %struct.autofs_info, ptr %5, i32 0, i32 1, !dbg !3320
  %6 = load i32, ptr %flags, align 8, !dbg !3320
  %and = and i32 %6, 2, !dbg !3321
  %tobool = icmp ne i32 %and, 0, !dbg !3321
  br i1 %tobool, label %if.end, label %if.then, !dbg !3322

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3323
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3323

if.end:                                           ; preds = %entry
  %7 = load i32, ptr %rcu_walk.addr, align 4, !dbg !3324
  %tobool3 = icmp ne i32 %7, 0, !dbg !3324
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !3326

if.then4:                                         ; preds = %if.end
  store i32 -10, ptr %retval, align 4, !dbg !3327
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3327

if.end5:                                          ; preds = %if.end
  br label %retry, !dbg !3324

retry:                                            ; preds = %if.then8, %if.end5
  call void @llvm.dbg.label(metadata !3298), !dbg !3328
  %8 = load ptr, ptr %sbi, align 8, !dbg !3329
  %fs_lock = getelementptr inbounds %struct.autofs_sb_info, ptr %8, i32 0, i32 14, !dbg !3330
  call void @spin_lock(ptr noundef %fs_lock) #15, !dbg !3331
  %9 = load ptr, ptr %ino, align 8, !dbg !3332
  %flags6 = getelementptr inbounds %struct.autofs_info, ptr %9, i32 0, i32 1, !dbg !3333
  %10 = load i32, ptr %flags6, align 8, !dbg !3333
  %and7 = and i32 %10, 3, !dbg !3334
  store i32 %and7, ptr %state, align 4, !dbg !3335
  %11 = load i32, ptr %state, align 4, !dbg !3336
  %cmp = icmp eq i32 %11, 2, !dbg !3338
  br i1 %cmp, label %if.then8, label %if.end11, !dbg !3339

if.then8:                                         ; preds = %retry
  %12 = load ptr, ptr %sbi, align 8, !dbg !3340
  %fs_lock9 = getelementptr inbounds %struct.autofs_sb_info, ptr %12, i32 0, i32 14, !dbg !3342
  call void @spin_unlock(ptr noundef %fs_lock9) #15, !dbg !3343
  %call10 = call i64 @schedule_timeout_uninterruptible(i64 noundef 100) #15, !dbg !3344
  br label %retry, !dbg !3345

if.end11:                                         ; preds = %retry
  %13 = load i32, ptr %state, align 4, !dbg !3346
  %and12 = and i32 %13, 1, !dbg !3348
  %tobool13 = icmp ne i32 %and12, 0, !dbg !3348
  br i1 %tobool13, label %if.then14, label %if.end22, !dbg !3349

if.then14:                                        ; preds = %if.end11
  %14 = load ptr, ptr %sbi, align 8, !dbg !3350
  %fs_lock15 = getelementptr inbounds %struct.autofs_sb_info, ptr %14, i32 0, i32 14, !dbg !3352
  call void @spin_unlock(ptr noundef %fs_lock15) #15, !dbg !3353
  store i32 0, ptr %tmp, align 4, !dbg !3354
  %15 = load i32, ptr %tmp, align 4, !dbg !3357
  %16 = load ptr, ptr %sbi, align 8, !dbg !3358
  %17 = load ptr, ptr %path.addr, align 8, !dbg !3359
  %call16 = call i32 @autofs_wait(ptr noundef %16, ptr noundef %17, i32 noundef 0) #15, !dbg !3360
  store i32 %call16, ptr %status, align 4, !dbg !3361
  %18 = load ptr, ptr %ino, align 8, !dbg !3362
  %expire_complete = getelementptr inbounds %struct.autofs_info, ptr %18, i32 0, i32 2, !dbg !3363
  call void @wait_for_completion(ptr noundef %expire_complete) #15, !dbg !3364
  store i32 0, ptr %tmp17, align 4, !dbg !3365
  %19 = load i32, ptr %tmp17, align 4, !dbg !3368
  %20 = load ptr, ptr %dentry, align 8, !dbg !3369
  %call18 = call i32 @d_unhashed(ptr noundef %20) #15, !dbg !3371
  %tobool19 = icmp ne i32 %call18, 0, !dbg !3371
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !3372

if.then20:                                        ; preds = %if.then14
  store i32 -11, ptr %retval, align 4, !dbg !3373
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3373

if.end21:                                         ; preds = %if.then14
  %21 = load i32, ptr %status, align 4, !dbg !3374
  store i32 %21, ptr %retval, align 4, !dbg !3375
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3375

if.end22:                                         ; preds = %if.end11
  %22 = load ptr, ptr %sbi, align 8, !dbg !3376
  %fs_lock23 = getelementptr inbounds %struct.autofs_sb_info, ptr %22, i32 0, i32 14, !dbg !3377
  call void @spin_unlock(ptr noundef %fs_lock23) #15, !dbg !3378
  store i32 0, ptr %retval, align 4, !dbg !3379
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3379

cleanup:                                          ; preds = %if.end22, %if.end21, %if.then20, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %state) #14, !dbg !3380
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #14, !dbg !3380
  call void @llvm.lifetime.end.p0(i64 8, ptr %ino) #14, !dbg !3380
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbi) #14, !dbg !3380
  call void @llvm.lifetime.end.p0(i64 8, ptr %dentry) #14, !dbg !3380
  %23 = load i32, ptr %retval, align 4, !dbg !3380
  ret i32 %23, !dbg !3380
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @autofs_sbi(ptr noundef %sb) #3 align 16 !dbg !3381 {
entry:
  %sb.addr = alloca ptr, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !3385, metadata !DIExpression()), !dbg !3386
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !3387
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 29, !dbg !3388
  %1 = load ptr, ptr %s_fs_info, align 32, !dbg !3388
  ret ptr %1, !dbg !3389
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @autofs_dentry_ino(ptr noundef %dentry) #3 align 16 !dbg !3390 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !3394, metadata !DIExpression()), !dbg !3395
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !3396
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 11, !dbg !3397
  %1 = load ptr, ptr %d_fsdata, align 8, !dbg !3397
  ret ptr %1, !dbg !3398
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #4 align 16 !dbg !3399 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !3405, metadata !DIExpression()), !dbg !3406
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !3407
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !3407
  call void @_raw_spin_lock(ptr noundef %1) #15, !dbg !3407
  ret void, !dbg !3408
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #4 align 16 !dbg !3409 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !3411, metadata !DIExpression()), !dbg !3412
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !3413
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !3413
  call void @_raw_spin_unlock(ptr noundef %1) #15, !dbg !3413
  ret void, !dbg !3414
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3415 dso_local i64 @schedule_timeout_uninterruptible(i64 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3418 dso_local i32 @autofs_wait(ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3421 dso_local void @wait_for_completion(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @d_unhashed(ptr noundef %dentry) #3 align 16 !dbg !3422 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !3424, metadata !DIExpression()), !dbg !3425
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !3426
  %d_hash = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 2, !dbg !3427
  %call = call zeroext i1 @hlist_bl_unhashed(ptr noundef %d_hash) #15, !dbg !3428
  %conv = zext i1 %call to i32, !dbg !3428
  ret i32 %conv, !dbg !3429
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @autofs_expire_run(ptr noundef %sb, ptr noundef %mnt, ptr noundef %sbi, ptr noundef %pkt_p) #0 align 16 !dbg !3430 {
entry:
  %retval = alloca i32, align 4
  %sb.addr = alloca ptr, align 8
  %mnt.addr = alloca ptr, align 8
  %sbi.addr = alloca ptr, align 8
  %pkt_p.addr = alloca ptr, align 8
  %pkt = alloca %struct.autofs_packet_expire, align 4
  %ino = alloca ptr, align 8
  %dentry = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !3447, metadata !DIExpression()), !dbg !3455
  store ptr %mnt, ptr %mnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mnt.addr, metadata !3448, metadata !DIExpression()), !dbg !3456
  store ptr %sbi, ptr %sbi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbi.addr, metadata !3449, metadata !DIExpression()), !dbg !3457
  store ptr %pkt_p, ptr %pkt_p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pkt_p.addr, metadata !3450, metadata !DIExpression()), !dbg !3458
  call void @llvm.lifetime.start.p0(i64 268, ptr %pkt) #14, !dbg !3459
  call void @llvm.dbg.declare(metadata ptr %pkt, metadata !3451, metadata !DIExpression()), !dbg !3460
  call void @llvm.lifetime.start.p0(i64 8, ptr %ino) #14, !dbg !3461
  call void @llvm.dbg.declare(metadata ptr %ino, metadata !3452, metadata !DIExpression()), !dbg !3462
  call void @llvm.lifetime.start.p0(i64 8, ptr %dentry) #14, !dbg !3463
  call void @llvm.dbg.declare(metadata ptr %dentry, metadata !3453, metadata !DIExpression()), !dbg !3464
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !3465
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3454, metadata !DIExpression()), !dbg !3466
  store i32 0, ptr %ret, align 4, !dbg !3466
  call void @llvm.memset.p0.i64(ptr align 4 %pkt, i8 0, i64 268, i1 false), !dbg !3467
  %0 = load ptr, ptr %sbi.addr, align 8, !dbg !3468
  %version = getelementptr inbounds %struct.autofs_sb_info, ptr %0, i32 0, i32 4, !dbg !3469
  %1 = load i32, ptr %version, align 8, !dbg !3469
  %hdr = getelementptr inbounds %struct.autofs_packet_expire, ptr %pkt, i32 0, i32 0, !dbg !3470
  %proto_version = getelementptr inbounds %struct.autofs_packet_hdr, ptr %hdr, i32 0, i32 0, !dbg !3471
  store i32 %1, ptr %proto_version, align 4, !dbg !3472
  %hdr1 = getelementptr inbounds %struct.autofs_packet_expire, ptr %pkt, i32 0, i32 0, !dbg !3473
  %type = getelementptr inbounds %struct.autofs_packet_hdr, ptr %hdr1, i32 0, i32 1, !dbg !3474
  store i32 1, ptr %type, align 4, !dbg !3475
  %2 = load ptr, ptr %sb.addr, align 8, !dbg !3476
  %3 = load ptr, ptr %mnt.addr, align 8, !dbg !3477
  %4 = load ptr, ptr %sbi.addr, align 8, !dbg !3478
  %call = call ptr @autofs_expire_indirect(ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef 0) #15, !dbg !3479
  store ptr %call, ptr %dentry, align 8, !dbg !3480
  %5 = load ptr, ptr %dentry, align 8, !dbg !3481
  %tobool = icmp ne ptr %5, null, !dbg !3481
  br i1 %tobool, label %if.end, label %if.then, !dbg !3483

if.then:                                          ; preds = %entry
  store i32 -11, ptr %retval, align 4, !dbg !3484
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3484

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %dentry, align 8, !dbg !3485
  %d_name = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 4, !dbg !3486
  %7 = getelementptr inbounds %struct.qstr, ptr %d_name, i32 0, i32 0, !dbg !3487
  %len = getelementptr inbounds %struct.anon.14, ptr %7, i32 0, i32 1, !dbg !3487
  %8 = load i32, ptr %len, align 4, !dbg !3487
  %len2 = getelementptr inbounds %struct.autofs_packet_expire, ptr %pkt, i32 0, i32 1, !dbg !3488
  store i32 %8, ptr %len2, align 4, !dbg !3489
  %name = getelementptr inbounds %struct.autofs_packet_expire, ptr %pkt, i32 0, i32 2, !dbg !3490
  %arraydecay = getelementptr inbounds [256 x i8], ptr %name, i64 0, i64 0, !dbg !3491
  %9 = load ptr, ptr %dentry, align 8, !dbg !3492
  %d_name3 = getelementptr inbounds %struct.dentry, ptr %9, i32 0, i32 4, !dbg !3493
  %name4 = getelementptr inbounds %struct.qstr, ptr %d_name3, i32 0, i32 1, !dbg !3494
  %10 = load ptr, ptr %name4, align 8, !dbg !3494
  %len5 = getelementptr inbounds %struct.autofs_packet_expire, ptr %pkt, i32 0, i32 1, !dbg !3495
  %11 = load i32, ptr %len5, align 4, !dbg !3495
  %conv = sext i32 %11 to i64, !dbg !3496
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arraydecay, ptr align 1 %10, i64 %conv, i1 false), !dbg !3491
  %name6 = getelementptr inbounds %struct.autofs_packet_expire, ptr %pkt, i32 0, i32 2, !dbg !3497
  %len7 = getelementptr inbounds %struct.autofs_packet_expire, ptr %pkt, i32 0, i32 1, !dbg !3498
  %12 = load i32, ptr %len7, align 4, !dbg !3498
  %idxprom = sext i32 %12 to i64, !dbg !3499
  %arrayidx = getelementptr [256 x i8], ptr %name6, i64 0, i64 %idxprom, !dbg !3499
  store i8 0, ptr %arrayidx, align 1, !dbg !3500
  %13 = load ptr, ptr %pkt_p.addr, align 8, !dbg !3501
  %call8 = call i64 @copy_to_user(ptr noundef %13, ptr noundef %pkt, i64 noundef 268) #15, !dbg !3503
  %tobool9 = icmp ne i64 %call8, 0, !dbg !3503
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !3504

if.then10:                                        ; preds = %if.end
  store i32 -14, ptr %ret, align 4, !dbg !3505
  br label %if.end11, !dbg !3506

if.end11:                                         ; preds = %if.then10, %if.end
  %14 = load ptr, ptr %sbi.addr, align 8, !dbg !3507
  %fs_lock = getelementptr inbounds %struct.autofs_sb_info, ptr %14, i32 0, i32 14, !dbg !3508
  call void @spin_lock(ptr noundef %fs_lock) #15, !dbg !3509
  %15 = load ptr, ptr %dentry, align 8, !dbg !3510
  %call12 = call ptr @autofs_dentry_ino(ptr noundef %15) #15, !dbg !3511
  store ptr %call12, ptr %ino, align 8, !dbg !3512
  %16 = load volatile i64, ptr @jiffies, align 64, !dbg !3513
  %17 = load ptr, ptr %ino, align 8, !dbg !3514
  %last_used = getelementptr inbounds %struct.autofs_info, ptr %17, i32 0, i32 6, !dbg !3515
  store i64 %16, ptr %last_used, align 8, !dbg !3516
  %18 = load ptr, ptr %ino, align 8, !dbg !3517
  %flags = getelementptr inbounds %struct.autofs_info, ptr %18, i32 0, i32 1, !dbg !3518
  %19 = load i32, ptr %flags, align 8, !dbg !3519
  %and = and i32 %19, -4, !dbg !3519
  store i32 %and, ptr %flags, align 8, !dbg !3519
  %20 = load ptr, ptr %ino, align 8, !dbg !3520
  %expire_complete = getelementptr inbounds %struct.autofs_info, ptr %20, i32 0, i32 2, !dbg !3521
  call void @complete_all(ptr noundef %expire_complete) #15, !dbg !3522
  %21 = load ptr, ptr %sbi.addr, align 8, !dbg !3523
  %fs_lock13 = getelementptr inbounds %struct.autofs_sb_info, ptr %21, i32 0, i32 14, !dbg !3524
  call void @spin_unlock(ptr noundef %fs_lock13) #15, !dbg !3525
  %22 = load ptr, ptr %dentry, align 8, !dbg !3526
  call void @dput(ptr noundef %22) #15, !dbg !3527
  %23 = load i32, ptr %ret, align 4, !dbg !3528
  store i32 %23, ptr %retval, align 4, !dbg !3529
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3529

cleanup:                                          ; preds = %if.end11, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !3530
  call void @llvm.lifetime.end.p0(i64 8, ptr %dentry) #14, !dbg !3530
  call void @llvm.lifetime.end.p0(i64 8, ptr %ino) #14, !dbg !3530
  call void @llvm.lifetime.end.p0(i64 268, ptr %pkt) #14, !dbg !3530
  %24 = load i32, ptr %retval, align 4, !dbg !3530
  ret i32 %24, !dbg !3530
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @autofs_expire_indirect(ptr noundef %sb, ptr noundef %mnt, ptr noundef %sbi, i32 noundef %how) #0 align 16 !dbg !3531 {
entry:
  %retval = alloca ptr, align 8
  %sb.addr = alloca ptr, align 8
  %mnt.addr = alloca ptr, align 8
  %sbi.addr = alloca ptr, align 8
  %how.addr = alloca i32, align 4
  %timeout = alloca i64, align 8
  %root = alloca ptr, align 8
  %dentry = alloca ptr, align 8
  %expired = alloca ptr, align 8
  %found = alloca ptr, align 8
  %ino = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !3535, metadata !DIExpression()), !dbg !3548
  store ptr %mnt, ptr %mnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mnt.addr, metadata !3536, metadata !DIExpression()), !dbg !3549
  store ptr %sbi, ptr %sbi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbi.addr, metadata !3537, metadata !DIExpression()), !dbg !3550
  store i32 %how, ptr %how.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %how.addr, metadata !3538, metadata !DIExpression()), !dbg !3551
  call void @llvm.lifetime.start.p0(i64 8, ptr %timeout) #14, !dbg !3552
  call void @llvm.dbg.declare(metadata ptr %timeout, metadata !3539, metadata !DIExpression()), !dbg !3553
  call void @llvm.lifetime.start.p0(i64 8, ptr %root) #14, !dbg !3554
  call void @llvm.dbg.declare(metadata ptr %root, metadata !3540, metadata !DIExpression()), !dbg !3555
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !3556
  %s_root = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 13, !dbg !3557
  %1 = load ptr, ptr %s_root, align 8, !dbg !3557
  store ptr %1, ptr %root, align 8, !dbg !3555
  call void @llvm.lifetime.start.p0(i64 8, ptr %dentry) #14, !dbg !3558
  call void @llvm.dbg.declare(metadata ptr %dentry, metadata !3541, metadata !DIExpression()), !dbg !3559
  call void @llvm.lifetime.start.p0(i64 8, ptr %expired) #14, !dbg !3560
  call void @llvm.dbg.declare(metadata ptr %expired, metadata !3542, metadata !DIExpression()), !dbg !3561
  call void @llvm.lifetime.start.p0(i64 8, ptr %found) #14, !dbg !3562
  call void @llvm.dbg.declare(metadata ptr %found, metadata !3543, metadata !DIExpression()), !dbg !3563
  call void @llvm.lifetime.start.p0(i64 8, ptr %ino) #14, !dbg !3564
  call void @llvm.dbg.declare(metadata ptr %ino, metadata !3544, metadata !DIExpression()), !dbg !3565
  %2 = load ptr, ptr %root, align 8, !dbg !3566
  %tobool = icmp ne ptr %2, null, !dbg !3566
  br i1 %tobool, label %if.end, label %if.then, !dbg !3568

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !3569
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3569

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %sbi.addr, align 8, !dbg !3570
  %exp_timeout = getelementptr inbounds %struct.autofs_sb_info, ptr %3, i32 0, i32 9, !dbg !3571
  %4 = load i64, ptr %exp_timeout, align 8, !dbg !3571
  store i64 %4, ptr %timeout, align 8, !dbg !3572
  store ptr null, ptr %dentry, align 8, !dbg !3573
  br label %while.cond, !dbg !3574

while.cond:                                       ; preds = %if.end30, %if.then10, %if.then4, %if.end
  %5 = load ptr, ptr %dentry, align 8, !dbg !3575
  %6 = load ptr, ptr %root, align 8, !dbg !3576
  %call = call ptr @get_next_positive_subdir(ptr noundef %5, ptr noundef %6) #15, !dbg !3577
  store ptr %call, ptr %dentry, align 8, !dbg !3578
  %tobool1 = icmp ne ptr %call, null, !dbg !3574
  br i1 %tobool1, label %while.body, label %while.end, !dbg !3574

while.body:                                       ; preds = %while.cond
  %7 = load ptr, ptr %sbi.addr, align 8, !dbg !3579
  %fs_lock = getelementptr inbounds %struct.autofs_sb_info, ptr %7, i32 0, i32 14, !dbg !3580
  call void @spin_lock(ptr noundef %fs_lock) #15, !dbg !3581
  %8 = load ptr, ptr %dentry, align 8, !dbg !3582
  %call2 = call ptr @autofs_dentry_ino(ptr noundef %8) #15, !dbg !3583
  store ptr %call2, ptr %ino, align 8, !dbg !3584
  %9 = load ptr, ptr %ino, align 8, !dbg !3585
  %flags = getelementptr inbounds %struct.autofs_info, ptr %9, i32 0, i32 1, !dbg !3587
  %10 = load i32, ptr %flags, align 8, !dbg !3587
  %and = and i32 %10, 2, !dbg !3588
  %tobool3 = icmp ne i32 %and, 0, !dbg !3588
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !3589

if.then4:                                         ; preds = %while.body
  %11 = load ptr, ptr %sbi.addr, align 8, !dbg !3590
  %fs_lock5 = getelementptr inbounds %struct.autofs_sb_info, ptr %11, i32 0, i32 14, !dbg !3592
  call void @spin_unlock(ptr noundef %fs_lock5) #15, !dbg !3593
  br label %while.cond, !dbg !3594, !llvm.loop !3595

if.end6:                                          ; preds = %while.body
  %12 = load ptr, ptr %sbi.addr, align 8, !dbg !3599
  %fs_lock7 = getelementptr inbounds %struct.autofs_sb_info, ptr %12, i32 0, i32 14, !dbg !3600
  call void @spin_unlock(ptr noundef %fs_lock7) #15, !dbg !3601
  %13 = load ptr, ptr %dentry, align 8, !dbg !3602
  %14 = load ptr, ptr %mnt.addr, align 8, !dbg !3603
  %15 = load i64, ptr %timeout, align 8, !dbg !3604
  %16 = load i32, ptr %how.addr, align 4, !dbg !3605
  %call8 = call ptr @should_expire(ptr noundef %13, ptr noundef %14, i64 noundef %15, i32 noundef %16) #15, !dbg !3606
  store ptr %call8, ptr %expired, align 8, !dbg !3607
  %17 = load ptr, ptr %expired, align 8, !dbg !3608
  %tobool9 = icmp ne ptr %17, null, !dbg !3608
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !3610

if.then10:                                        ; preds = %if.end6
  br label %while.cond, !dbg !3611, !llvm.loop !3595

if.end11:                                         ; preds = %if.end6
  %18 = load ptr, ptr %sbi.addr, align 8, !dbg !3612
  %fs_lock12 = getelementptr inbounds %struct.autofs_sb_info, ptr %18, i32 0, i32 14, !dbg !3613
  call void @spin_lock(ptr noundef %fs_lock12) #15, !dbg !3614
  %19 = load ptr, ptr %expired, align 8, !dbg !3615
  %call13 = call ptr @autofs_dentry_ino(ptr noundef %19) #15, !dbg !3616
  store ptr %call13, ptr %ino, align 8, !dbg !3617
  %20 = load ptr, ptr %ino, align 8, !dbg !3618
  %flags14 = getelementptr inbounds %struct.autofs_info, ptr %20, i32 0, i32 1, !dbg !3619
  %21 = load i32, ptr %flags14, align 8, !dbg !3620
  %or = or i32 %21, 2, !dbg !3620
  store i32 %or, ptr %flags14, align 8, !dbg !3620
  %22 = load ptr, ptr %sbi.addr, align 8, !dbg !3621
  %fs_lock15 = getelementptr inbounds %struct.autofs_sb_info, ptr %22, i32 0, i32 14, !dbg !3622
  call void @spin_unlock(ptr noundef %fs_lock15) #15, !dbg !3623
  call void @synchronize_rcu() #15, !dbg !3624
  %23 = load i32, ptr %how.addr, align 4, !dbg !3625
  %and16 = and i32 %23, -3, !dbg !3625
  store i32 %and16, ptr %how.addr, align 4, !dbg !3625
  %24 = load ptr, ptr %expired, align 8, !dbg !3626
  %25 = load ptr, ptr %mnt.addr, align 8, !dbg !3627
  %26 = load i64, ptr %timeout, align 8, !dbg !3628
  %27 = load i32, ptr %how.addr, align 4, !dbg !3629
  %call17 = call ptr @should_expire(ptr noundef %24, ptr noundef %25, i64 noundef %26, i32 noundef %27) #15, !dbg !3630
  store ptr %call17, ptr %found, align 8, !dbg !3631
  %28 = load ptr, ptr %found, align 8, !dbg !3632
  %29 = load ptr, ptr %expired, align 8, !dbg !3634
  %cmp = icmp ne ptr %28, %29, !dbg !3635
  br i1 %cmp, label %if.then18, label %if.end19, !dbg !3636

if.then18:                                        ; preds = %if.end11
  %30 = load ptr, ptr %found, align 8, !dbg !3637
  call void @dput(ptr noundef %30) #15, !dbg !3639
  br label %next, !dbg !3640

if.end19:                                         ; preds = %if.end11
  %31 = load ptr, ptr %expired, align 8, !dbg !3641
  %32 = load ptr, ptr %dentry, align 8, !dbg !3643
  %cmp20 = icmp ne ptr %31, %32, !dbg !3644
  br i1 %cmp20, label %if.then21, label %if.end22, !dbg !3645

if.then21:                                        ; preds = %if.end19
  %33 = load ptr, ptr %dentry, align 8, !dbg !3646
  call void @dput(ptr noundef %33) #15, !dbg !3647
  br label %if.end22, !dbg !3647

if.end22:                                         ; preds = %if.then21, %if.end19
  %34 = load ptr, ptr %sbi.addr, align 8, !dbg !3648
  %fs_lock23 = getelementptr inbounds %struct.autofs_sb_info, ptr %34, i32 0, i32 14, !dbg !3649
  call void @spin_lock(ptr noundef %fs_lock23) #15, !dbg !3650
  br label %found31, !dbg !3651

next:                                             ; preds = %if.then18
  call void @llvm.dbg.label(metadata !3545), !dbg !3652
  %35 = load ptr, ptr %sbi.addr, align 8, !dbg !3653
  %fs_lock24 = getelementptr inbounds %struct.autofs_sb_info, ptr %35, i32 0, i32 14, !dbg !3654
  call void @spin_lock(ptr noundef %fs_lock24) #15, !dbg !3655
  %36 = load ptr, ptr %ino, align 8, !dbg !3656
  %flags25 = getelementptr inbounds %struct.autofs_info, ptr %36, i32 0, i32 1, !dbg !3657
  %37 = load i32, ptr %flags25, align 8, !dbg !3658
  %and26 = and i32 %37, -3, !dbg !3658
  store i32 %and26, ptr %flags25, align 8, !dbg !3658
  %38 = load ptr, ptr %sbi.addr, align 8, !dbg !3659
  %fs_lock27 = getelementptr inbounds %struct.autofs_sb_info, ptr %38, i32 0, i32 14, !dbg !3660
  call void @spin_unlock(ptr noundef %fs_lock27) #15, !dbg !3661
  %39 = load ptr, ptr %expired, align 8, !dbg !3662
  %40 = load ptr, ptr %dentry, align 8, !dbg !3664
  %cmp28 = icmp ne ptr %39, %40, !dbg !3665
  br i1 %cmp28, label %if.then29, label %if.end30, !dbg !3666

if.then29:                                        ; preds = %next
  %41 = load ptr, ptr %expired, align 8, !dbg !3667
  call void @dput(ptr noundef %41) #15, !dbg !3668
  br label %if.end30, !dbg !3668

if.end30:                                         ; preds = %if.then29, %next
  br label %while.cond, !dbg !3574, !llvm.loop !3595

while.end:                                        ; preds = %while.cond
  store ptr null, ptr %retval, align 8, !dbg !3669
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3669

found31:                                          ; preds = %if.end22
  call void @llvm.dbg.label(metadata !3547), !dbg !3670
  store i32 0, ptr %tmp, align 4, !dbg !3671
  %42 = load i32, ptr %tmp, align 4, !dbg !3674
  %43 = load ptr, ptr %ino, align 8, !dbg !3675
  %flags32 = getelementptr inbounds %struct.autofs_info, ptr %43, i32 0, i32 1, !dbg !3676
  %44 = load i32, ptr %flags32, align 8, !dbg !3677
  %or33 = or i32 %44, 1, !dbg !3677
  store i32 %or33, ptr %flags32, align 8, !dbg !3677
  %45 = load ptr, ptr %ino, align 8, !dbg !3678
  %expire_complete = getelementptr inbounds %struct.autofs_info, ptr %45, i32 0, i32 2, !dbg !3679
  call void @init_completion(ptr noundef %expire_complete) #15, !dbg !3680
  %46 = load ptr, ptr %sbi.addr, align 8, !dbg !3681
  %fs_lock34 = getelementptr inbounds %struct.autofs_sb_info, ptr %46, i32 0, i32 14, !dbg !3682
  call void @spin_unlock(ptr noundef %fs_lock34) #15, !dbg !3683
  %47 = load ptr, ptr %expired, align 8, !dbg !3684
  store ptr %47, ptr %retval, align 8, !dbg !3685
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3685

cleanup:                                          ; preds = %found31, %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ino) #14, !dbg !3686
  call void @llvm.lifetime.end.p0(i64 8, ptr %found) #14, !dbg !3686
  call void @llvm.lifetime.end.p0(i64 8, ptr %expired) #14, !dbg !3686
  call void @llvm.lifetime.end.p0(i64 8, ptr %dentry) #14, !dbg !3686
  call void @llvm.lifetime.end.p0(i64 8, ptr %root) #14, !dbg !3686
  call void @llvm.lifetime.end.p0(i64 8, ptr %timeout) #14, !dbg !3686
  %48 = load ptr, ptr %retval, align 8, !dbg !3686
  ret ptr %48, !dbg !3686
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #4 align 16 !dbg !3687 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !3694, metadata !DIExpression()), !dbg !3697
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !3695, metadata !DIExpression()), !dbg !3698
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !3696, metadata !DIExpression()), !dbg !3699
  %0 = load ptr, ptr %from.addr, align 8, !dbg !3700
  %1 = load i64, ptr %n.addr, align 8, !dbg !3702
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext true) #15, !dbg !3703
  br i1 %call, label %if.then, label %if.end, !dbg !3704

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !3705
  %3 = load ptr, ptr %from.addr, align 8, !dbg !3706
  %4 = load i64, ptr %n.addr, align 8, !dbg !3707
  %call1 = call i64 @_copy_to_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #15, !dbg !3708
  store i64 %call1, ptr %n.addr, align 8, !dbg !3709
  br label %if.end, !dbg !3710

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !3711
  ret i64 %5, !dbg !3712
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3713 dso_local void @complete_all(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3714 dso_local void @dput(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @autofs_do_expire_multi(ptr noundef %sb, ptr noundef %mnt, ptr noundef %sbi, i32 noundef %how) #0 align 16 !dbg !3715 {
entry:
  %sb.addr = alloca ptr, align 8
  %mnt.addr = alloca ptr, align 8
  %sbi.addr = alloca ptr, align 8
  %how.addr = alloca i32, align 4
  %dentry = alloca ptr, align 8
  %ret = alloca i32, align 4
  %ino = alloca ptr, align 8
  %path = alloca %struct.path, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !3719, metadata !DIExpression()), !dbg !3729
  store ptr %mnt, ptr %mnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mnt.addr, metadata !3720, metadata !DIExpression()), !dbg !3730
  store ptr %sbi, ptr %sbi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbi.addr, metadata !3721, metadata !DIExpression()), !dbg !3731
  store i32 %how, ptr %how.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %how.addr, metadata !3722, metadata !DIExpression()), !dbg !3732
  call void @llvm.lifetime.start.p0(i64 8, ptr %dentry) #14, !dbg !3733
  call void @llvm.dbg.declare(metadata ptr %dentry, metadata !3723, metadata !DIExpression()), !dbg !3734
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !3735
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3724, metadata !DIExpression()), !dbg !3736
  store i32 -11, ptr %ret, align 4, !dbg !3736
  %0 = load ptr, ptr %sbi.addr, align 8, !dbg !3737
  %type = getelementptr inbounds %struct.autofs_sb_info, ptr %0, i32 0, i32 10, !dbg !3739
  %1 = load i32, ptr %type, align 8, !dbg !3739
  %call = call i32 @autofs_type_trigger(i32 noundef %1) #15, !dbg !3740
  %tobool = icmp ne i32 %call, 0, !dbg !3740
  br i1 %tobool, label %if.then, label %if.else, !dbg !3741

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %sb.addr, align 8, !dbg !3742
  %3 = load ptr, ptr %mnt.addr, align 8, !dbg !3743
  %4 = load ptr, ptr %sbi.addr, align 8, !dbg !3744
  %5 = load i32, ptr %how.addr, align 4, !dbg !3745
  %call1 = call ptr @autofs_expire_direct(ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #15, !dbg !3746
  store ptr %call1, ptr %dentry, align 8, !dbg !3747
  br label %if.end, !dbg !3748

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %sb.addr, align 8, !dbg !3749
  %7 = load ptr, ptr %mnt.addr, align 8, !dbg !3750
  %8 = load ptr, ptr %sbi.addr, align 8, !dbg !3751
  %9 = load i32, ptr %how.addr, align 4, !dbg !3752
  %call2 = call ptr @autofs_expire_indirect(ptr noundef %6, ptr noundef %7, ptr noundef %8, i32 noundef %9) #15, !dbg !3753
  store ptr %call2, ptr %dentry, align 8, !dbg !3754
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load ptr, ptr %dentry, align 8, !dbg !3755
  %tobool3 = icmp ne ptr %10, null, !dbg !3755
  br i1 %tobool3, label %if.then4, label %if.end10, !dbg !3756

if.then4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %ino) #14, !dbg !3757
  call void @llvm.dbg.declare(metadata ptr %ino, metadata !3725, metadata !DIExpression()), !dbg !3758
  %11 = load ptr, ptr %dentry, align 8, !dbg !3759
  %call5 = call ptr @autofs_dentry_ino(ptr noundef %11) #15, !dbg !3760
  store ptr %call5, ptr %ino, align 8, !dbg !3758
  call void @llvm.lifetime.start.p0(i64 16, ptr %path) #14, !dbg !3761
  call void @llvm.dbg.declare(metadata ptr %path, metadata !3728, metadata !DIExpression()), !dbg !3762
  %mnt6 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 0, !dbg !3763
  %12 = load ptr, ptr %mnt.addr, align 8, !dbg !3764
  store ptr %12, ptr %mnt6, align 8, !dbg !3763
  %dentry7 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1, !dbg !3763
  %13 = load ptr, ptr %dentry, align 8, !dbg !3765
  store ptr %13, ptr %dentry7, align 8, !dbg !3763
  %14 = load ptr, ptr %sbi.addr, align 8, !dbg !3766
  %call8 = call i32 @autofs_wait(ptr noundef %14, ptr noundef %path, i32 noundef 2) #15, !dbg !3767
  store i32 %call8, ptr %ret, align 4, !dbg !3768
  %15 = load ptr, ptr %sbi.addr, align 8, !dbg !3769
  %fs_lock = getelementptr inbounds %struct.autofs_sb_info, ptr %15, i32 0, i32 14, !dbg !3770
  call void @spin_lock(ptr noundef %fs_lock) #15, !dbg !3771
  %16 = load volatile i64, ptr @jiffies, align 64, !dbg !3772
  %17 = load ptr, ptr %ino, align 8, !dbg !3773
  %last_used = getelementptr inbounds %struct.autofs_info, ptr %17, i32 0, i32 6, !dbg !3774
  store i64 %16, ptr %last_used, align 8, !dbg !3775
  %18 = load ptr, ptr %ino, align 8, !dbg !3776
  %flags = getelementptr inbounds %struct.autofs_info, ptr %18, i32 0, i32 1, !dbg !3777
  %19 = load i32, ptr %flags, align 8, !dbg !3778
  %and = and i32 %19, -4, !dbg !3778
  store i32 %and, ptr %flags, align 8, !dbg !3778
  %20 = load ptr, ptr %ino, align 8, !dbg !3779
  %expire_complete = getelementptr inbounds %struct.autofs_info, ptr %20, i32 0, i32 2, !dbg !3780
  call void @complete_all(ptr noundef %expire_complete) #15, !dbg !3781
  %21 = load ptr, ptr %sbi.addr, align 8, !dbg !3782
  %fs_lock9 = getelementptr inbounds %struct.autofs_sb_info, ptr %21, i32 0, i32 14, !dbg !3783
  call void @spin_unlock(ptr noundef %fs_lock9) #15, !dbg !3784
  %22 = load ptr, ptr %dentry, align 8, !dbg !3785
  call void @dput(ptr noundef %22) #15, !dbg !3786
  call void @llvm.lifetime.end.p0(i64 16, ptr %path) #14, !dbg !3787
  call void @llvm.lifetime.end.p0(i64 8, ptr %ino) #14, !dbg !3787
  br label %if.end10, !dbg !3788

if.end10:                                         ; preds = %if.then4, %if.end
  %23 = load i32, ptr %ret, align 4, !dbg !3789
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !3790
  call void @llvm.lifetime.end.p0(i64 8, ptr %dentry) #14, !dbg !3790
  ret i32 %23, !dbg !3791
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @autofs_type_trigger(i32 noundef %type) #3 align 16 !dbg !3792 {
entry:
  %type.addr = alloca i32, align 4
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !3796, metadata !DIExpression()), !dbg !3797
  %0 = load i32, ptr %type.addr, align 4, !dbg !3798
  %cmp = icmp eq i32 %0, 2, !dbg !3799
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !3800

lor.rhs:                                          ; preds = %entry
  %1 = load i32, ptr %type.addr, align 4, !dbg !3801
  %cmp1 = icmp eq i32 %1, 4, !dbg !3802
  br label %lor.end, !dbg !3800

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %cmp1, %lor.rhs ]
  %lor.ext = zext i1 %2 to i32, !dbg !3800
  ret i32 %lor.ext, !dbg !3803
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @autofs_expire_direct(ptr noundef %sb, ptr noundef %mnt, ptr noundef %sbi, i32 noundef %how) #0 align 16 !dbg !3804 {
entry:
  %retval = alloca ptr, align 8
  %sb.addr = alloca ptr, align 8
  %mnt.addr = alloca ptr, align 8
  %sbi.addr = alloca ptr, align 8
  %how.addr = alloca i32, align 4
  %root = alloca ptr, align 8
  %ino = alloca ptr, align 8
  %timeout = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !3806, metadata !DIExpression()), !dbg !3814
  store ptr %mnt, ptr %mnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mnt.addr, metadata !3807, metadata !DIExpression()), !dbg !3815
  store ptr %sbi, ptr %sbi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbi.addr, metadata !3808, metadata !DIExpression()), !dbg !3816
  store i32 %how, ptr %how.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %how.addr, metadata !3809, metadata !DIExpression()), !dbg !3817
  call void @llvm.lifetime.start.p0(i64 8, ptr %root) #14, !dbg !3818
  call void @llvm.dbg.declare(metadata ptr %root, metadata !3810, metadata !DIExpression()), !dbg !3819
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !3820
  %s_root = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 13, !dbg !3821
  %1 = load ptr, ptr %s_root, align 8, !dbg !3821
  %call = call ptr @dget(ptr noundef %1) #15, !dbg !3822
  store ptr %call, ptr %root, align 8, !dbg !3819
  call void @llvm.lifetime.start.p0(i64 8, ptr %ino) #14, !dbg !3823
  call void @llvm.dbg.declare(metadata ptr %ino, metadata !3811, metadata !DIExpression()), !dbg !3824
  call void @llvm.lifetime.start.p0(i64 8, ptr %timeout) #14, !dbg !3825
  call void @llvm.dbg.declare(metadata ptr %timeout, metadata !3812, metadata !DIExpression()), !dbg !3826
  %2 = load ptr, ptr %root, align 8, !dbg !3827
  %tobool = icmp ne ptr %2, null, !dbg !3827
  br i1 %tobool, label %if.end, label %if.then, !dbg !3829

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !3830
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3830

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %sbi.addr, align 8, !dbg !3831
  %exp_timeout = getelementptr inbounds %struct.autofs_sb_info, ptr %3, i32 0, i32 9, !dbg !3832
  %4 = load i64, ptr %exp_timeout, align 8, !dbg !3832
  store i64 %4, ptr %timeout, align 8, !dbg !3833
  %5 = load ptr, ptr %mnt.addr, align 8, !dbg !3834
  %6 = load ptr, ptr %root, align 8, !dbg !3836
  %7 = load i64, ptr %timeout, align 8, !dbg !3837
  %8 = load i32, ptr %how.addr, align 4, !dbg !3838
  %call1 = call i32 @autofs_direct_busy(ptr noundef %5, ptr noundef %6, i64 noundef %7, i32 noundef %8) #15, !dbg !3839
  %tobool2 = icmp ne i32 %call1, 0, !dbg !3839
  br i1 %tobool2, label %if.end23, label %if.then3, !dbg !3840

if.then3:                                         ; preds = %if.end
  %9 = load ptr, ptr %sbi.addr, align 8, !dbg !3841
  %fs_lock = getelementptr inbounds %struct.autofs_sb_info, ptr %9, i32 0, i32 14, !dbg !3843
  call void @spin_lock(ptr noundef %fs_lock) #15, !dbg !3844
  %10 = load ptr, ptr %root, align 8, !dbg !3845
  %call4 = call ptr @autofs_dentry_ino(ptr noundef %10) #15, !dbg !3846
  store ptr %call4, ptr %ino, align 8, !dbg !3847
  %11 = load ptr, ptr %ino, align 8, !dbg !3848
  %flags = getelementptr inbounds %struct.autofs_info, ptr %11, i32 0, i32 1, !dbg !3850
  %12 = load i32, ptr %flags, align 8, !dbg !3850
  %and = and i32 %12, 4, !dbg !3851
  %tobool5 = icmp ne i32 %and, 0, !dbg !3851
  br i1 %tobool5, label %if.then6, label %if.end8, !dbg !3852

if.then6:                                         ; preds = %if.then3
  %13 = load ptr, ptr %sbi.addr, align 8, !dbg !3853
  %fs_lock7 = getelementptr inbounds %struct.autofs_sb_info, ptr %13, i32 0, i32 14, !dbg !3855
  call void @spin_unlock(ptr noundef %fs_lock7) #15, !dbg !3856
  br label %out, !dbg !3857

if.end8:                                          ; preds = %if.then3
  %14 = load ptr, ptr %ino, align 8, !dbg !3858
  %flags9 = getelementptr inbounds %struct.autofs_info, ptr %14, i32 0, i32 1, !dbg !3859
  %15 = load i32, ptr %flags9, align 8, !dbg !3860
  %or = or i32 %15, 2, !dbg !3860
  store i32 %or, ptr %flags9, align 8, !dbg !3860
  %16 = load ptr, ptr %sbi.addr, align 8, !dbg !3861
  %fs_lock10 = getelementptr inbounds %struct.autofs_sb_info, ptr %16, i32 0, i32 14, !dbg !3862
  call void @spin_unlock(ptr noundef %fs_lock10) #15, !dbg !3863
  call void @synchronize_rcu() #15, !dbg !3864
  %17 = load ptr, ptr %mnt.addr, align 8, !dbg !3865
  %18 = load ptr, ptr %root, align 8, !dbg !3867
  %19 = load i64, ptr %timeout, align 8, !dbg !3868
  %20 = load i32, ptr %how.addr, align 4, !dbg !3869
  %call11 = call i32 @autofs_direct_busy(ptr noundef %17, ptr noundef %18, i64 noundef %19, i32 noundef %20) #15, !dbg !3870
  %tobool12 = icmp ne i32 %call11, 0, !dbg !3870
  br i1 %tobool12, label %if.end18, label %if.then13, !dbg !3871

if.then13:                                        ; preds = %if.end8
  %21 = load ptr, ptr %sbi.addr, align 8, !dbg !3872
  %fs_lock14 = getelementptr inbounds %struct.autofs_sb_info, ptr %21, i32 0, i32 14, !dbg !3874
  call void @spin_lock(ptr noundef %fs_lock14) #15, !dbg !3875
  %22 = load ptr, ptr %ino, align 8, !dbg !3876
  %flags15 = getelementptr inbounds %struct.autofs_info, ptr %22, i32 0, i32 1, !dbg !3877
  %23 = load i32, ptr %flags15, align 8, !dbg !3878
  %or16 = or i32 %23, 1, !dbg !3878
  store i32 %or16, ptr %flags15, align 8, !dbg !3878
  %24 = load ptr, ptr %ino, align 8, !dbg !3879
  %expire_complete = getelementptr inbounds %struct.autofs_info, ptr %24, i32 0, i32 2, !dbg !3880
  call void @init_completion(ptr noundef %expire_complete) #15, !dbg !3881
  %25 = load ptr, ptr %sbi.addr, align 8, !dbg !3882
  %fs_lock17 = getelementptr inbounds %struct.autofs_sb_info, ptr %25, i32 0, i32 14, !dbg !3883
  call void @spin_unlock(ptr noundef %fs_lock17) #15, !dbg !3884
  %26 = load ptr, ptr %root, align 8, !dbg !3885
  store ptr %26, ptr %retval, align 8, !dbg !3886
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3886

if.end18:                                         ; preds = %if.end8
  %27 = load ptr, ptr %sbi.addr, align 8, !dbg !3887
  %fs_lock19 = getelementptr inbounds %struct.autofs_sb_info, ptr %27, i32 0, i32 14, !dbg !3888
  call void @spin_lock(ptr noundef %fs_lock19) #15, !dbg !3889
  %28 = load ptr, ptr %ino, align 8, !dbg !3890
  %flags20 = getelementptr inbounds %struct.autofs_info, ptr %28, i32 0, i32 1, !dbg !3891
  %29 = load i32, ptr %flags20, align 8, !dbg !3892
  %and21 = and i32 %29, -3, !dbg !3892
  store i32 %and21, ptr %flags20, align 8, !dbg !3892
  %30 = load ptr, ptr %sbi.addr, align 8, !dbg !3893
  %fs_lock22 = getelementptr inbounds %struct.autofs_sb_info, ptr %30, i32 0, i32 14, !dbg !3894
  call void @spin_unlock(ptr noundef %fs_lock22) #15, !dbg !3895
  br label %if.end23, !dbg !3896

if.end23:                                         ; preds = %if.end18, %if.end
  br label %out, !dbg !3897

out:                                              ; preds = %if.end23, %if.then6
  call void @llvm.dbg.label(metadata !3813), !dbg !3898
  %31 = load ptr, ptr %root, align 8, !dbg !3899
  call void @dput(ptr noundef %31) #15, !dbg !3900
  store ptr null, ptr %retval, align 8, !dbg !3901
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3901

cleanup:                                          ; preds = %out, %if.then13, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %timeout) #14, !dbg !3902
  call void @llvm.lifetime.end.p0(i64 8, ptr %ino) #14, !dbg !3902
  call void @llvm.lifetime.end.p0(i64 8, ptr %root) #14, !dbg !3902
  %32 = load ptr, ptr %retval, align 8, !dbg !3902
  ret ptr %32, !dbg !3902
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @autofs_expire_multi(ptr noundef %sb, ptr noundef %mnt, ptr noundef %sbi, ptr noundef %arg) #0 align 16 !dbg !3903 {
entry:
  %retval = alloca i32, align 4
  %sb.addr = alloca ptr, align 8
  %mnt.addr = alloca ptr, align 8
  %sbi.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %how = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_gu = alloca i32, align 4
  %__val_gu = alloca i32, align 4
  %__tmp = alloca i64, align 8
  %tmp3 = alloca i32, align 4
  %tmp5 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !3907, metadata !DIExpression()), !dbg !3919
  store ptr %mnt, ptr %mnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mnt.addr, metadata !3908, metadata !DIExpression()), !dbg !3920
  store ptr %sbi, ptr %sbi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbi.addr, metadata !3909, metadata !DIExpression()), !dbg !3921
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !3910, metadata !DIExpression()), !dbg !3922
  call void @llvm.lifetime.start.p0(i64 4, ptr %how) #14, !dbg !3923
  call void @llvm.dbg.declare(metadata ptr %how, metadata !3911, metadata !DIExpression()), !dbg !3924
  store i32 0, ptr %how, align 4, !dbg !3924
  %0 = load ptr, ptr %arg.addr, align 8, !dbg !3925
  %tobool = icmp ne ptr %0, null, !dbg !3925
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !3926

land.lhs.true:                                    ; preds = %entry
  call void @might_fault() #15, !dbg !3927
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_gu) #14, !dbg !3928
  call void @llvm.dbg.declare(metadata ptr %__ret_gu, metadata !3912, metadata !DIExpression()), !dbg !3928
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_gu) #14, !dbg !3928
  call void @llvm.dbg.declare(metadata ptr %__val_gu, metadata !3916, metadata !DIExpression()), !dbg !3928
  %1 = call i64 @llvm.read_register.i64(metadata !3277), !dbg !3928
  %2 = load ptr, ptr %arg.addr, align 8, !dbg !3928
  %3 = call { ptr, i32, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %2, i64 4, i64 %1) #14, !dbg !3928, !srcloc !3929
  %asmresult = extractvalue { ptr, i32, i64 } %3, 0, !dbg !3928
  %asmresult1 = extractvalue { ptr, i32, i64 } %3, 1, !dbg !3928
  %asmresult2 = extractvalue { ptr, i32, i64 } %3, 2, !dbg !3928
  %4 = ptrtoint ptr %asmresult to i64, !dbg !3928
  %5 = trunc i64 %4 to i32, !dbg !3928
  store i32 %5, ptr %__ret_gu, align 4, !dbg !3928
  store i32 %asmresult1, ptr %__val_gu, align 4, !dbg !3928
  call void @llvm.write_register.i64(metadata !3277, i64 %asmresult2), !dbg !3928
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp) #14, !dbg !3930
  call void @llvm.dbg.declare(metadata ptr %__tmp, metadata !3917, metadata !DIExpression()), !dbg !3930
  %6 = load i32, ptr %__val_gu, align 4, !dbg !3930
  %conv = zext i32 %6 to i64, !dbg !3930
  store i64 %conv, ptr %__tmp, align 8, !dbg !3930
  call void @kmsan_unpoison_memory(ptr noundef %__tmp, i64 noundef 8) #15, !dbg !3930
  %7 = load i64, ptr %__tmp, align 8, !dbg !3930
  %conv4 = trunc i64 %7 to i32, !dbg !3930
  store i32 %conv4, ptr %__val_gu, align 4, !dbg !3930
  store i32 %conv4, ptr %tmp3, align 4, !dbg !3930
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp) #14, !dbg !3928
  %8 = load i32, ptr %tmp3, align 4, !dbg !3930
  %9 = load i32, ptr %__val_gu, align 4, !dbg !3928
  store i32 %9, ptr %how, align 4, !dbg !3928
  %10 = load i32, ptr %__ret_gu, align 4, !dbg !3928
  %conv6 = sext i32 %10 to i64, !dbg !3928
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !3928
  store i64 %expval, ptr %tmp5, align 8, !dbg !3928
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_gu) #14, !dbg !3927
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_gu) #14, !dbg !3927
  %11 = load i64, ptr %tmp5, align 8, !dbg !3928
  store i64 %11, ptr %tmp, align 8, !dbg !3927
  %12 = load i64, ptr %tmp, align 8, !dbg !3927
  %tobool7 = icmp ne i64 %12, 0, !dbg !3931
  br i1 %tobool7, label %if.then, label %if.end, !dbg !3932

if.then:                                          ; preds = %land.lhs.true
  store i32 -14, ptr %retval, align 4, !dbg !3933
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3933

if.end:                                           ; preds = %land.lhs.true, %entry
  %13 = load ptr, ptr %sb.addr, align 8, !dbg !3934
  %14 = load ptr, ptr %mnt.addr, align 8, !dbg !3935
  %15 = load ptr, ptr %sbi.addr, align 8, !dbg !3936
  %16 = load i32, ptr %how, align 4, !dbg !3937
  %call = call i32 @autofs_do_expire_multi(ptr noundef %13, ptr noundef %14, ptr noundef %15, i32 noundef %16) #15, !dbg !3938
  store i32 %call, ptr %retval, align 4, !dbg !3939
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3939

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %how) #14, !dbg !3940
  %17 = load i32, ptr %retval, align 4, !dbg !3940
  ret i32 %17, !dbg !3940
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_fault() #3 align 16 !dbg !3941 {
entry:
  ret void, !dbg !3943
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #8

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_unpoison_memory(ptr noundef %address, i64 noundef %size) #3 align 16 !dbg !3944 {
entry:
  %address.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !3949, metadata !DIExpression()), !dbg !3951
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3950, metadata !DIExpression()), !dbg !3952
  ret void, !dbg !3953
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #10

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3954 dso_local void @_raw_spin_lock(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3959 dso_local void @_raw_spin_unlock(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @hlist_bl_unhashed(ptr noundef %h) #3 align 16 !dbg !3960 {
entry:
  %h.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !3966, metadata !DIExpression()), !dbg !3967
  %0 = load ptr, ptr %h.addr, align 8, !dbg !3968
  %pprev = getelementptr inbounds %struct.hlist_bl_node, ptr %0, i32 0, i32 1, !dbg !3969
  %1 = load ptr, ptr %pprev, align 8, !dbg !3969
  %tobool = icmp ne ptr %1, null, !dbg !3970
  %lnot = xor i1 %tobool, true, !dbg !3970
  ret i1 %lnot, !dbg !3971
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_next_positive_subdir(ptr noundef %prev, ptr noundef %root) #0 align 16 !dbg !3972 {
entry:
  %prev.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %sbi = alloca ptr, align 8
  %q = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !3976, metadata !DIExpression()), !dbg !3980
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !3977, metadata !DIExpression()), !dbg !3981
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbi) #14, !dbg !3982
  call void @llvm.dbg.declare(metadata ptr %sbi, metadata !3978, metadata !DIExpression()), !dbg !3983
  %0 = load ptr, ptr %root.addr, align 8, !dbg !3984
  %d_sb = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9, !dbg !3985
  %1 = load ptr, ptr %d_sb, align 8, !dbg !3985
  %call = call ptr @autofs_sbi(ptr noundef %1) #15, !dbg !3986
  store ptr %call, ptr %sbi, align 8, !dbg !3983
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #14, !dbg !3987
  call void @llvm.dbg.declare(metadata ptr %q, metadata !3979, metadata !DIExpression()), !dbg !3988
  %2 = load ptr, ptr %sbi, align 8, !dbg !3989
  %lookup_lock = getelementptr inbounds %struct.autofs_sb_info, ptr %2, i32 0, i32 16, !dbg !3990
  call void @spin_lock(ptr noundef %lookup_lock) #15, !dbg !3991
  %3 = load ptr, ptr %root.addr, align 8, !dbg !3992
  %d_lockref = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 7, !dbg !3993
  %4 = getelementptr inbounds %struct.lockref, ptr %d_lockref, i32 0, i32 0, !dbg !3993
  %lock = getelementptr inbounds %struct.anon.16, ptr %4, i32 0, i32 0, !dbg !3993
  call void @spin_lock(ptr noundef %lock) #15, !dbg !3994
  %5 = load ptr, ptr %root.addr, align 8, !dbg !3995
  %6 = load ptr, ptr %prev.addr, align 8, !dbg !3996
  %call1 = call ptr @positive_after(ptr noundef %5, ptr noundef %6) #15, !dbg !3997
  store ptr %call1, ptr %q, align 8, !dbg !3998
  %7 = load ptr, ptr %root.addr, align 8, !dbg !3999
  %d_lockref2 = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 7, !dbg !4000
  %8 = getelementptr inbounds %struct.lockref, ptr %d_lockref2, i32 0, i32 0, !dbg !4000
  %lock3 = getelementptr inbounds %struct.anon.16, ptr %8, i32 0, i32 0, !dbg !4000
  call void @spin_unlock(ptr noundef %lock3) #15, !dbg !4001
  %9 = load ptr, ptr %sbi, align 8, !dbg !4002
  %lookup_lock4 = getelementptr inbounds %struct.autofs_sb_info, ptr %9, i32 0, i32 16, !dbg !4003
  call void @spin_unlock(ptr noundef %lookup_lock4) #15, !dbg !4004
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !4005
  call void @dput(ptr noundef %10) #15, !dbg !4006
  %11 = load ptr, ptr %q, align 8, !dbg !4007
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #14, !dbg !4008
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbi) #14, !dbg !4008
  ret ptr %11, !dbg !4009
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @should_expire(ptr noundef %dentry, ptr noundef %mnt, i64 noundef %timeout, i32 noundef %how) #0 align 16 !dbg !4010 {
entry:
  %retval = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %mnt.addr = alloca ptr, align 8
  %timeout.addr = alloca i64, align 8
  %how.addr = alloca i32, align 4
  %ino = alloca ptr, align 8
  %ino_count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp18 = alloca i32, align 4
  %tmp37 = alloca i32, align 4
  %expired = alloca ptr, align 8
  %tmp52 = alloca i32, align 4
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4014, metadata !DIExpression()), !dbg !4023
  store ptr %mnt, ptr %mnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mnt.addr, metadata !4015, metadata !DIExpression()), !dbg !4024
  store i64 %timeout, ptr %timeout.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %timeout.addr, metadata !4016, metadata !DIExpression()), !dbg !4025
  store i32 %how, ptr %how.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %how.addr, metadata !4017, metadata !DIExpression()), !dbg !4026
  call void @llvm.lifetime.start.p0(i64 8, ptr %ino) #14, !dbg !4027
  call void @llvm.dbg.declare(metadata ptr %ino, metadata !4018, metadata !DIExpression()), !dbg !4028
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4029
  %call = call ptr @autofs_dentry_ino(ptr noundef %0) #15, !dbg !4030
  store ptr %call, ptr %ino, align 8, !dbg !4028
  call void @llvm.lifetime.start.p0(i64 4, ptr %ino_count) #14, !dbg !4031
  call void @llvm.dbg.declare(metadata ptr %ino_count, metadata !4019, metadata !DIExpression()), !dbg !4032
  %1 = load ptr, ptr %ino, align 8, !dbg !4033
  %flags = getelementptr inbounds %struct.autofs_info, ptr %1, i32 0, i32 1, !dbg !4035
  %2 = load i32, ptr %flags, align 8, !dbg !4035
  %and = and i32 %2, 4, !dbg !4036
  %tobool = icmp ne i32 %and, 0, !dbg !4036
  br i1 %tobool, label %if.then, label %if.end, !dbg !4037

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !4038
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup68, !dbg !4038

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %dentry.addr, align 8, !dbg !4039
  %call1 = call zeroext i1 @d_mountpoint(ptr noundef %3) #15, !dbg !4041
  br i1 %call1, label %if.then2, label %if.end15, !dbg !4042

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %tmp, align 4, !dbg !4043
  %4 = load i32, ptr %tmp, align 4, !dbg !4047
  %5 = load ptr, ptr %mnt.addr, align 8, !dbg !4048
  %6 = load ptr, ptr %dentry.addr, align 8, !dbg !4050
  %7 = load i32, ptr %how.addr, align 4, !dbg !4051
  %call3 = call i32 @autofs_mount_busy(ptr noundef %5, ptr noundef %6, i32 noundef %7) #15, !dbg !4052
  %tobool4 = icmp ne i32 %call3, 0, !dbg !4052
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !4053

if.then5:                                         ; preds = %if.then2
  store ptr null, ptr %retval, align 8, !dbg !4054
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup68, !dbg !4054

if.end6:                                          ; preds = %if.then2
  %8 = load i32, ptr %how.addr, align 4, !dbg !4055
  %and7 = and i32 %8, 4, !dbg !4057
  %tobool8 = icmp ne i32 %and7, 0, !dbg !4057
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !4058

if.then9:                                         ; preds = %if.end6
  %9 = load ptr, ptr %dentry.addr, align 8, !dbg !4059
  store ptr %9, ptr %retval, align 8, !dbg !4060
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup68, !dbg !4060

if.end10:                                         ; preds = %if.end6
  %10 = load ptr, ptr %dentry.addr, align 8, !dbg !4061
  %11 = load i64, ptr %timeout.addr, align 8, !dbg !4063
  %12 = load i32, ptr %how.addr, align 4, !dbg !4064
  %call11 = call i32 @autofs_can_expire(ptr noundef %10, i64 noundef %11, i32 noundef %12) #15, !dbg !4065
  %tobool12 = icmp ne i32 %call11, 0, !dbg !4065
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !4066

if.then13:                                        ; preds = %if.end10
  %13 = load ptr, ptr %dentry.addr, align 8, !dbg !4067
  store ptr %13, ptr %retval, align 8, !dbg !4068
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup68, !dbg !4068

if.end14:                                         ; preds = %if.end10
  store ptr null, ptr %retval, align 8, !dbg !4069
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup68, !dbg !4069

if.end15:                                         ; preds = %if.end
  %14 = load ptr, ptr %dentry.addr, align 8, !dbg !4070
  %call16 = call zeroext i1 @d_is_symlink(ptr noundef %14) #15, !dbg !4072
  br i1 %call16, label %if.then17, label %if.end27, !dbg !4073

if.then17:                                        ; preds = %if.end15
  store i32 0, ptr %tmp18, align 4, !dbg !4074
  %15 = load i32, ptr %tmp18, align 4, !dbg !4078
  %16 = load i32, ptr %how.addr, align 4, !dbg !4079
  %and19 = and i32 %16, 4, !dbg !4081
  %tobool20 = icmp ne i32 %and19, 0, !dbg !4081
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !4082

if.then21:                                        ; preds = %if.then17
  %17 = load ptr, ptr %dentry.addr, align 8, !dbg !4083
  store ptr %17, ptr %retval, align 8, !dbg !4084
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup68, !dbg !4084

if.end22:                                         ; preds = %if.then17
  %18 = load ptr, ptr %dentry.addr, align 8, !dbg !4085
  %19 = load i64, ptr %timeout.addr, align 8, !dbg !4087
  %20 = load i32, ptr %how.addr, align 4, !dbg !4088
  %call23 = call i32 @autofs_can_expire(ptr noundef %18, i64 noundef %19, i32 noundef %20) #15, !dbg !4089
  %tobool24 = icmp ne i32 %call23, 0, !dbg !4089
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !4090

if.then25:                                        ; preds = %if.end22
  %21 = load ptr, ptr %dentry.addr, align 8, !dbg !4091
  store ptr %21, ptr %retval, align 8, !dbg !4092
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup68, !dbg !4092

if.end26:                                         ; preds = %if.end22
  store ptr null, ptr %retval, align 8, !dbg !4093
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup68, !dbg !4093

if.end27:                                         ; preds = %if.end15
  %22 = load ptr, ptr %ino, align 8, !dbg !4094
  %call28 = call zeroext i1 @autofs_empty(ptr noundef %22) #15, !dbg !4096
  br i1 %call28, label %if.then29, label %if.end30, !dbg !4097

if.then29:                                        ; preds = %if.end27
  store ptr null, ptr %retval, align 8, !dbg !4098
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup68, !dbg !4098

if.end30:                                         ; preds = %if.end27
  %23 = load i32, ptr %how.addr, align 4, !dbg !4099
  %and31 = and i32 %23, 2, !dbg !4100
  %tobool32 = icmp ne i32 %and31, 0, !dbg !4100
  br i1 %tobool32, label %if.else, label %if.then33, !dbg !4101

if.then33:                                        ; preds = %if.end30
  %24 = load i32, ptr %how.addr, align 4, !dbg !4102
  %and34 = and i32 %24, 4, !dbg !4105
  %tobool35 = icmp ne i32 %and34, 0, !dbg !4105
  br i1 %tobool35, label %if.end41, label %if.then36, !dbg !4106

if.then36:                                        ; preds = %if.then33
  br label %do.body, !dbg !4107

do.body:                                          ; preds = %if.then36
  br label %do.cond, !dbg !4110

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4110

do.end:                                           ; preds = %do.cond
  %25 = load ptr, ptr %ino, align 8, !dbg !4107
  %count = getelementptr inbounds %struct.autofs_info, ptr %25, i32 0, i32 7, !dbg !4107
  %26 = load volatile i32, ptr %count, align 8, !dbg !4107
  store i32 %26, ptr %tmp37, align 4, !dbg !4110
  %27 = load i32, ptr %tmp37, align 4, !dbg !4107
  %add = add i32 %27, 1, !dbg !4112
  store i32 %add, ptr %ino_count, align 4, !dbg !4113
  %28 = load ptr, ptr %dentry.addr, align 8, !dbg !4114
  %call38 = call i32 @d_count(ptr noundef %28) #15, !dbg !4116
  %29 = load i32, ptr %ino_count, align 4, !dbg !4117
  %cmp = icmp ugt i32 %call38, %29, !dbg !4118
  br i1 %cmp, label %if.then39, label %if.end40, !dbg !4119

if.then39:                                        ; preds = %do.end
  store ptr null, ptr %retval, align 8, !dbg !4120
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup68, !dbg !4120

if.end40:                                         ; preds = %do.end
  br label %if.end41, !dbg !4121

if.end41:                                         ; preds = %if.end40, %if.then33
  %30 = load ptr, ptr %mnt.addr, align 8, !dbg !4122
  %31 = load ptr, ptr %dentry.addr, align 8, !dbg !4124
  %32 = load i64, ptr %timeout.addr, align 8, !dbg !4125
  %33 = load i32, ptr %how.addr, align 4, !dbg !4126
  %call42 = call i32 @autofs_tree_busy(ptr noundef %30, ptr noundef %31, i64 noundef %32, i32 noundef %33) #15, !dbg !4127
  %tobool43 = icmp ne i32 %call42, 0, !dbg !4127
  br i1 %tobool43, label %if.end45, label %if.then44, !dbg !4128

if.then44:                                        ; preds = %if.end41
  %34 = load ptr, ptr %dentry.addr, align 8, !dbg !4129
  store ptr %34, ptr %retval, align 8, !dbg !4130
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup68, !dbg !4130

if.end45:                                         ; preds = %if.end41
  br label %if.end67, !dbg !4131

if.else:                                          ; preds = %if.end30
  call void @llvm.lifetime.start.p0(i64 8, ptr %expired) #14, !dbg !4132
  call void @llvm.dbg.declare(metadata ptr %expired, metadata !4020, metadata !DIExpression()), !dbg !4133
  %35 = load i32, ptr %how.addr, align 4, !dbg !4134
  %and46 = and i32 %35, 4, !dbg !4136
  %tobool47 = icmp ne i32 %and46, 0, !dbg !4136
  br i1 %tobool47, label %if.end59, label %if.then48, !dbg !4137

if.then48:                                        ; preds = %if.else
  br label %do.body49, !dbg !4138

do.body49:                                        ; preds = %if.then48
  br label %do.cond50, !dbg !4141

do.cond50:                                        ; preds = %do.body49
  br label %do.end51, !dbg !4141

do.end51:                                         ; preds = %do.cond50
  %36 = load ptr, ptr %ino, align 8, !dbg !4138
  %count53 = getelementptr inbounds %struct.autofs_info, ptr %36, i32 0, i32 7, !dbg !4138
  %37 = load volatile i32, ptr %count53, align 8, !dbg !4138
  store i32 %37, ptr %tmp52, align 4, !dbg !4141
  %38 = load i32, ptr %tmp52, align 4, !dbg !4138
  %add54 = add i32 %38, 1, !dbg !4143
  store i32 %add54, ptr %ino_count, align 4, !dbg !4144
  %39 = load ptr, ptr %dentry.addr, align 8, !dbg !4145
  %call55 = call i32 @d_count(ptr noundef %39) #15, !dbg !4147
  %40 = load i32, ptr %ino_count, align 4, !dbg !4148
  %cmp56 = icmp ugt i32 %call55, %40, !dbg !4149
  br i1 %cmp56, label %if.then57, label %if.end58, !dbg !4150

if.then57:                                        ; preds = %do.end51
  store ptr null, ptr %retval, align 8, !dbg !4151
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4151

if.end58:                                         ; preds = %do.end51
  br label %if.end59, !dbg !4152

if.end59:                                         ; preds = %if.end58, %if.else
  %41 = load ptr, ptr %mnt.addr, align 8, !dbg !4153
  %42 = load ptr, ptr %dentry.addr, align 8, !dbg !4154
  %43 = load i64, ptr %timeout.addr, align 8, !dbg !4155
  %44 = load i32, ptr %how.addr, align 4, !dbg !4156
  %call60 = call ptr @autofs_check_leaves(ptr noundef %41, ptr noundef %42, i64 noundef %43, i32 noundef %44) #15, !dbg !4157
  store ptr %call60, ptr %expired, align 8, !dbg !4158
  %45 = load ptr, ptr %expired, align 8, !dbg !4159
  %tobool61 = icmp ne ptr %45, null, !dbg !4159
  br i1 %tobool61, label %if.then62, label %if.end66, !dbg !4161

if.then62:                                        ; preds = %if.end59
  %46 = load ptr, ptr %expired, align 8, !dbg !4162
  %47 = load ptr, ptr %dentry.addr, align 8, !dbg !4165
  %cmp63 = icmp eq ptr %46, %47, !dbg !4166
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !4167

if.then64:                                        ; preds = %if.then62
  %48 = load ptr, ptr %dentry.addr, align 8, !dbg !4168
  call void @dput(ptr noundef %48) #15, !dbg !4169
  br label %if.end65, !dbg !4169

if.end65:                                         ; preds = %if.then64, %if.then62
  %49 = load ptr, ptr %expired, align 8, !dbg !4170
  store ptr %49, ptr %retval, align 8, !dbg !4171
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4171

if.end66:                                         ; preds = %if.end59
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4172
  br label %cleanup, !dbg !4172

cleanup:                                          ; preds = %if.end66, %if.end65, %if.then57
  call void @llvm.lifetime.end.p0(i64 8, ptr %expired) #14, !dbg !4172
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup68 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end67

if.end67:                                         ; preds = %cleanup.cont, %if.end45
  store ptr null, ptr %retval, align 8, !dbg !4173
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup68, !dbg !4173

cleanup68:                                        ; preds = %if.end67, %cleanup, %if.then44, %if.then39, %if.then29, %if.end26, %if.then25, %if.then21, %if.end14, %if.then13, %if.then9, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ino_count) #14, !dbg !4174
  call void @llvm.lifetime.end.p0(i64 8, ptr %ino) #14, !dbg !4174
  %50 = load ptr, ptr %retval, align 8, !dbg !4174
  ret ptr %50, !dbg !4174
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4175 dso_local void @synchronize_rcu() #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @init_completion(ptr noundef %x) #3 align 16 !dbg !2 {
entry:
  %x.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !3276, metadata !DIExpression()), !dbg !4177
  %0 = load ptr, ptr %x.addr, align 8, !dbg !4178
  %done = getelementptr inbounds %struct.completion, ptr %0, i32 0, i32 0, !dbg !4179
  store i32 0, ptr %done, align 8, !dbg !4180
  br label %do.body, !dbg !4181

do.body:                                          ; preds = %entry
  %1 = load ptr, ptr %x.addr, align 8, !dbg !4182
  %wait = getelementptr inbounds %struct.completion, ptr %1, i32 0, i32 1, !dbg !4182
  call void @__init_swait_queue_head(ptr noundef %wait, ptr noundef @.str, ptr noundef @init_completion.__key) #15, !dbg !4182
  br label %do.end, !dbg !4182

do.end:                                           ; preds = %do.body
  ret void, !dbg !4184
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @positive_after(ptr noundef %p, ptr noundef %child) #0 align 16 !dbg !4185 {
entry:
  %retval = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %child.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %__mptr16 = alloca ptr, align 8
  %tmp19 = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4187, metadata !DIExpression()), !dbg !4198
  store ptr %child, ptr %child.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %child.addr, metadata !4188, metadata !DIExpression()), !dbg !4199
  %0 = load ptr, ptr %child.addr, align 8, !dbg !4200
  %tobool = icmp ne ptr %0, null, !dbg !4200
  br i1 %tobool, label %if.then, label %if.else, !dbg !4201

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !4202
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4189, metadata !DIExpression()), !dbg !4202
  %1 = load ptr, ptr %child.addr, align 8, !dbg !4202
  %d_child = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 13, !dbg !4202
  %next = getelementptr inbounds %struct.list_head, ptr %d_child, i32 0, i32 0, !dbg !4202
  %2 = load ptr, ptr %next, align 8, !dbg !4202
  store ptr %2, ptr %__mptr, align 8, !dbg !4202
  %3 = load ptr, ptr %__mptr, align 8, !dbg !4202
  %add.ptr = getelementptr i8, ptr %3, i64 -144, !dbg !4202
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4202
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !4203
  %4 = load ptr, ptr %tmp, align 8, !dbg !4202
  store ptr %4, ptr %child.addr, align 8, !dbg !4204
  br label %if.end, !dbg !4205

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #14, !dbg !4206
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !4192, metadata !DIExpression()), !dbg !4206
  %5 = load ptr, ptr %p.addr, align 8, !dbg !4206
  %d_subdirs = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 14, !dbg !4206
  %next2 = getelementptr inbounds %struct.list_head, ptr %d_subdirs, i32 0, i32 0, !dbg !4206
  %6 = load ptr, ptr %next2, align 8, !dbg !4206
  store ptr %6, ptr %__mptr1, align 8, !dbg !4206
  %7 = load ptr, ptr %__mptr1, align 8, !dbg !4206
  %add.ptr4 = getelementptr i8, ptr %7, i64 -144, !dbg !4206
  store ptr %add.ptr4, ptr %tmp3, align 8, !dbg !4206
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #14, !dbg !4207
  %8 = load ptr, ptr %tmp3, align 8, !dbg !4206
  store ptr %8, ptr %child.addr, align 8, !dbg !4208
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.cond, !dbg !4209

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load ptr, ptr %child.addr, align 8, !dbg !4210
  %d_child5 = getelementptr inbounds %struct.dentry, ptr %9, i32 0, i32 13, !dbg !4210
  %10 = load ptr, ptr %p.addr, align 8, !dbg !4210
  %d_subdirs6 = getelementptr inbounds %struct.dentry, ptr %10, i32 0, i32 14, !dbg !4210
  %cmp = icmp eq ptr %d_child5, %d_subdirs6, !dbg !4210
  %lnot = xor i1 %cmp, true, !dbg !4210
  br i1 %lnot, label %for.body, label %for.end, !dbg !4211

for.body:                                         ; preds = %for.cond
  br label %do.body, !dbg !4212

do.body:                                          ; preds = %for.body
  %11 = load ptr, ptr %child.addr, align 8, !dbg !4214
  %d_lockref = getelementptr inbounds %struct.dentry, ptr %11, i32 0, i32 7, !dbg !4214
  %12 = getelementptr inbounds %struct.lockref, ptr %d_lockref, i32 0, i32 0, !dbg !4214
  %lock = getelementptr inbounds %struct.anon.16, ptr %12, i32 0, i32 0, !dbg !4214
  %call = call ptr @spinlock_check(ptr noundef %lock) #15, !dbg !4214
  call void @_raw_spin_lock(ptr noundef %call) #15, !dbg !4214
  br label %do.end, !dbg !4214

do.end:                                           ; preds = %do.body
  %13 = load ptr, ptr %child.addr, align 8, !dbg !4216
  %call7 = call i32 @simple_positive(ptr noundef %13) #15, !dbg !4218
  %tobool8 = icmp ne i32 %call7, 0, !dbg !4218
  br i1 %tobool8, label %if.then9, label %if.end13, !dbg !4219

if.then9:                                         ; preds = %do.end
  %14 = load ptr, ptr %child.addr, align 8, !dbg !4220
  %call10 = call ptr @dget_dlock(ptr noundef %14) #15, !dbg !4222
  %15 = load ptr, ptr %child.addr, align 8, !dbg !4223
  %d_lockref11 = getelementptr inbounds %struct.dentry, ptr %15, i32 0, i32 7, !dbg !4224
  %16 = getelementptr inbounds %struct.lockref, ptr %d_lockref11, i32 0, i32 0, !dbg !4224
  %lock12 = getelementptr inbounds %struct.anon.16, ptr %16, i32 0, i32 0, !dbg !4224
  call void @spin_unlock(ptr noundef %lock12) #15, !dbg !4225
  %17 = load ptr, ptr %child.addr, align 8, !dbg !4226
  store ptr %17, ptr %retval, align 8, !dbg !4227
  br label %return, !dbg !4227

if.end13:                                         ; preds = %do.end
  %18 = load ptr, ptr %child.addr, align 8, !dbg !4228
  %d_lockref14 = getelementptr inbounds %struct.dentry, ptr %18, i32 0, i32 7, !dbg !4229
  %19 = getelementptr inbounds %struct.lockref, ptr %d_lockref14, i32 0, i32 0, !dbg !4229
  %lock15 = getelementptr inbounds %struct.anon.16, ptr %19, i32 0, i32 0, !dbg !4229
  call void @spin_unlock(ptr noundef %lock15) #15, !dbg !4230
  br label %for.inc, !dbg !4231

for.inc:                                          ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr16) #14, !dbg !4232
  call void @llvm.dbg.declare(metadata ptr %__mptr16, metadata !4194, metadata !DIExpression()), !dbg !4232
  %20 = load ptr, ptr %child.addr, align 8, !dbg !4232
  %d_child17 = getelementptr inbounds %struct.dentry, ptr %20, i32 0, i32 13, !dbg !4232
  %next18 = getelementptr inbounds %struct.list_head, ptr %d_child17, i32 0, i32 0, !dbg !4232
  %21 = load ptr, ptr %next18, align 8, !dbg !4232
  store ptr %21, ptr %__mptr16, align 8, !dbg !4232
  %22 = load ptr, ptr %__mptr16, align 8, !dbg !4232
  %add.ptr20 = getelementptr i8, ptr %22, i64 -144, !dbg !4232
  store ptr %add.ptr20, ptr %tmp19, align 8, !dbg !4232
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr16) #14, !dbg !4210
  %23 = load ptr, ptr %tmp19, align 8, !dbg !4232
  store ptr %23, ptr %child.addr, align 8, !dbg !4210
  br label %for.cond, !dbg !4210, !llvm.loop !4233

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !4235
  br label %return, !dbg !4235

return:                                           ; preds = %for.end, %if.then9
  %24 = load ptr, ptr %retval, align 8, !dbg !4236
  ret ptr %24, !dbg !4236
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #4 align 16 !dbg !4237 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4241, metadata !DIExpression()), !dbg !4242
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4243
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !4244
  ret ptr %1, !dbg !4245
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @simple_positive(ptr noundef %dentry) #3 align 16 !dbg !4246 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4248, metadata !DIExpression()), !dbg !4249
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4250
  %call = call zeroext i1 @d_really_is_positive(ptr noundef %0) #15, !dbg !4251
  br i1 %call, label %land.rhs, label %land.end, !dbg !4252

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %dentry.addr, align 8, !dbg !4253
  %call1 = call i32 @d_unhashed(ptr noundef %1) #15, !dbg !4254
  %tobool = icmp ne i32 %call1, 0, !dbg !4255
  %lnot = xor i1 %tobool, true, !dbg !4255
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ], !dbg !4256
  %land.ext = zext i1 %2 to i32, !dbg !4252
  ret i32 %land.ext, !dbg !4257
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dget_dlock(ptr noundef %dentry) #3 align 16 !dbg !4258 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4262, metadata !DIExpression()), !dbg !4263
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4264
  %tobool = icmp ne ptr %0, null, !dbg !4264
  br i1 %tobool, label %if.then, label %if.end, !dbg !4266

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %dentry.addr, align 8, !dbg !4267
  %d_lockref = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 7, !dbg !4268
  %2 = getelementptr inbounds %struct.lockref, ptr %d_lockref, i32 0, i32 0, !dbg !4269
  %count = getelementptr inbounds %struct.anon.16, ptr %2, i32 0, i32 1, !dbg !4269
  %3 = load i32, ptr %count, align 4, !dbg !4270
  %inc = add i32 %3, 1, !dbg !4270
  store i32 %inc, ptr %count, align 4, !dbg !4270
  br label %if.end, !dbg !4267

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %dentry.addr, align 8, !dbg !4271
  ret ptr %4, !dbg !4272
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @d_really_is_positive(ptr noundef %dentry) #3 align 16 !dbg !4273 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4277, metadata !DIExpression()), !dbg !4278
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4279
  %d_inode = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5, !dbg !4280
  %1 = load ptr, ptr %d_inode, align 8, !dbg !4280
  %cmp = icmp ne ptr %1, null, !dbg !4281
  ret i1 %cmp, !dbg !4282
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @d_mountpoint(ptr noundef %dentry) #3 align 16 !dbg !4283 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4285, metadata !DIExpression()), !dbg !4286
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4287
  %d_flags = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 0, !dbg !4288
  %1 = load i32, ptr %d_flags, align 8, !dbg !4288
  %and = and i32 %1, 65536, !dbg !4289
  %tobool = icmp ne i32 %and, 0, !dbg !4287
  ret i1 %tobool, !dbg !4290
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @autofs_mount_busy(ptr noundef %mnt, ptr noundef %dentry, i32 noundef %how) #0 align 16 !dbg !4291 {
entry:
  %retval = alloca i32, align 4
  %mnt.addr = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %how.addr = alloca i32, align 4
  %top = alloca ptr, align 8
  %path = alloca %struct.path, align 8
  %status = alloca i32, align 4
  %tmp = alloca i32, align 4
  %sbi = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %ino = alloca ptr, align 8
  %tmp25 = alloca i32, align 4
  store ptr %mnt, ptr %mnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mnt.addr, metadata !4295, metadata !DIExpression()), !dbg !4308
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4296, metadata !DIExpression()), !dbg !4309
  store i32 %how, ptr %how.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %how.addr, metadata !4297, metadata !DIExpression()), !dbg !4310
  call void @llvm.lifetime.start.p0(i64 8, ptr %top) #14, !dbg !4311
  call void @llvm.dbg.declare(metadata ptr %top, metadata !4298, metadata !DIExpression()), !dbg !4312
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4313
  store ptr %0, ptr %top, align 8, !dbg !4312
  call void @llvm.lifetime.start.p0(i64 16, ptr %path) #14, !dbg !4314
  call void @llvm.dbg.declare(metadata ptr %path, metadata !4299, metadata !DIExpression()), !dbg !4315
  %mnt1 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 0, !dbg !4316
  %1 = load ptr, ptr %mnt.addr, align 8, !dbg !4317
  store ptr %1, ptr %mnt1, align 8, !dbg !4316
  %dentry2 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1, !dbg !4316
  %2 = load ptr, ptr %dentry.addr, align 8, !dbg !4318
  store ptr %2, ptr %dentry2, align 8, !dbg !4316
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #14, !dbg !4319
  call void @llvm.dbg.declare(metadata ptr %status, metadata !4300, metadata !DIExpression()), !dbg !4320
  store i32 1, ptr %status, align 4, !dbg !4320
  store i32 0, ptr %tmp, align 4, !dbg !4321
  %3 = load i32, ptr %tmp, align 4, !dbg !4324
  call void @path_get(ptr noundef %path) #15, !dbg !4325
  %call = call i32 @follow_down_one(ptr noundef %path) #15, !dbg !4326
  %tobool = icmp ne i32 %call, 0, !dbg !4326
  br i1 %tobool, label %if.end, label %if.then, !dbg !4328

if.then:                                          ; preds = %entry
  br label %done, !dbg !4329

if.end:                                           ; preds = %entry
  %dentry3 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1, !dbg !4330
  %4 = load ptr, ptr %dentry3, align 8, !dbg !4330
  %call4 = call i32 @is_autofs_dentry(ptr noundef %4) #15, !dbg !4331
  %tobool5 = icmp ne i32 %call4, 0, !dbg !4331
  br i1 %tobool5, label %if.then6, label %if.end13, !dbg !4332

if.then6:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbi) #14, !dbg !4333
  call void @llvm.dbg.declare(metadata ptr %sbi, metadata !4301, metadata !DIExpression()), !dbg !4334
  %dentry7 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1, !dbg !4335
  %5 = load ptr, ptr %dentry7, align 8, !dbg !4335
  %d_sb = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 9, !dbg !4336
  %6 = load ptr, ptr %d_sb, align 8, !dbg !4336
  %call8 = call ptr @autofs_sbi(ptr noundef %6) #15, !dbg !4337
  store ptr %call8, ptr %sbi, align 8, !dbg !4334
  %7 = load ptr, ptr %sbi, align 8, !dbg !4338
  %type = getelementptr inbounds %struct.autofs_sb_info, ptr %7, i32 0, i32 10, !dbg !4340
  %8 = load i32, ptr %type, align 8, !dbg !4340
  %call9 = call i32 @autofs_type_indirect(i32 noundef %8) #15, !dbg !4341
  %tobool10 = icmp ne i32 %call9, 0, !dbg !4341
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !4342

if.then11:                                        ; preds = %if.then6
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4343

if.end12:                                         ; preds = %if.then6
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4344
  br label %cleanup, !dbg !4344

cleanup:                                          ; preds = %if.then11, %if.end12
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbi) #14, !dbg !4344
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup26 [
    i32 0, label %cleanup.cont
    i32 2, label %done
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end13, !dbg !4345

if.end13:                                         ; preds = %cleanup.cont, %if.end
  %9 = load i32, ptr %how.addr, align 4, !dbg !4346
  %and = and i32 %9, 4, !dbg !4348
  %tobool14 = icmp ne i32 %and, 0, !dbg !4348
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !4349

if.then15:                                        ; preds = %if.end13
  store i32 0, ptr %status, align 4, !dbg !4350
  br label %done, !dbg !4352

if.end16:                                         ; preds = %if.end13
  %mnt17 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 0, !dbg !4353
  %10 = load ptr, ptr %mnt17, align 8, !dbg !4353
  %call18 = call i32 @may_umount_tree(ptr noundef %10) #15, !dbg !4354
  %tobool19 = icmp ne i32 %call18, 0, !dbg !4354
  br i1 %tobool19, label %if.end23, label %if.then20, !dbg !4355

if.then20:                                        ; preds = %if.end16
  call void @llvm.lifetime.start.p0(i64 8, ptr %ino) #14, !dbg !4356
  call void @llvm.dbg.declare(metadata ptr %ino, metadata !4304, metadata !DIExpression()), !dbg !4357
  %11 = load ptr, ptr %top, align 8, !dbg !4358
  %call21 = call ptr @autofs_dentry_ino(ptr noundef %11) #15, !dbg !4359
  store ptr %call21, ptr %ino, align 8, !dbg !4360
  %12 = load volatile i64, ptr @jiffies, align 64, !dbg !4361
  %13 = load ptr, ptr %ino, align 8, !dbg !4362
  %last_used = getelementptr inbounds %struct.autofs_info, ptr %13, i32 0, i32 6, !dbg !4363
  store i64 %12, ptr %last_used, align 8, !dbg !4364
  store i32 2, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ino) #14, !dbg !4365
  %cleanup.dest24 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest24, label %cleanup26 [
    i32 2, label %done
  ]

if.end23:                                         ; preds = %if.end16
  store i32 0, ptr %status, align 4, !dbg !4366
  br label %done, !dbg !4367

done:                                             ; preds = %if.end23, %if.then20, %cleanup, %if.then15, %if.then
  call void @llvm.dbg.label(metadata !4307), !dbg !4368
  store i32 0, ptr %tmp25, align 4, !dbg !4369
  %14 = load i32, ptr %tmp25, align 4, !dbg !4372
  call void @path_put(ptr noundef %path) #15, !dbg !4373
  %15 = load i32, ptr %status, align 4, !dbg !4374
  store i32 %15, ptr %retval, align 4, !dbg !4375
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup26, !dbg !4375

cleanup26:                                        ; preds = %done, %if.then20, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #14, !dbg !4376
  call void @llvm.lifetime.end.p0(i64 16, ptr %path) #14, !dbg !4376
  call void @llvm.lifetime.end.p0(i64 8, ptr %top) #14, !dbg !4376
  %16 = load i32, ptr %retval, align 4, !dbg !4376
  ret i32 %16, !dbg !4376
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @autofs_can_expire(ptr noundef %dentry, i64 noundef %timeout, i32 noundef %how) #3 align 16 !dbg !4377 {
entry:
  %retval = alloca i32, align 4
  %dentry.addr = alloca ptr, align 8
  %timeout.addr = alloca i64, align 8
  %how.addr = alloca i32, align 4
  %ino = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4381, metadata !DIExpression()), !dbg !4385
  store i64 %timeout, ptr %timeout.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %timeout.addr, metadata !4382, metadata !DIExpression()), !dbg !4386
  store i32 %how, ptr %how.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %how.addr, metadata !4383, metadata !DIExpression()), !dbg !4387
  call void @llvm.lifetime.start.p0(i64 8, ptr %ino) #14, !dbg !4388
  call void @llvm.dbg.declare(metadata ptr %ino, metadata !4384, metadata !DIExpression()), !dbg !4389
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4390
  %call = call ptr @autofs_dentry_ino(ptr noundef %0) #15, !dbg !4391
  store ptr %call, ptr %ino, align 8, !dbg !4389
  %1 = load ptr, ptr %ino, align 8, !dbg !4392
  %cmp = icmp eq ptr %1, null, !dbg !4394
  br i1 %cmp, label %if.then, label %if.end, !dbg !4395

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4396
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4396

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %how.addr, align 4, !dbg !4397
  %and = and i32 %2, 1, !dbg !4399
  %tobool = icmp ne i32 %and, 0, !dbg !4399
  br i1 %tobool, label %if.end6, label %if.then1, !dbg !4400

if.then1:                                         ; preds = %if.end
  %3 = load i64, ptr %timeout.addr, align 8, !dbg !4401
  %tobool2 = icmp ne i64 %3, 0, !dbg !4401
  br i1 %tobool2, label %lor.lhs.false, label %if.then4, !dbg !4404

lor.lhs.false:                                    ; preds = %if.then1
  %4 = load volatile i64, ptr @jiffies, align 64, !dbg !4405
  %5 = load ptr, ptr %ino, align 8, !dbg !4405
  %last_used = getelementptr inbounds %struct.autofs_info, ptr %5, i32 0, i32 6, !dbg !4405
  %6 = load i64, ptr %last_used, align 8, !dbg !4405
  %7 = load i64, ptr %timeout.addr, align 8, !dbg !4405
  %add = add i64 %6, %7, !dbg !4405
  %sub = sub i64 %4, %add, !dbg !4405
  %cmp3 = icmp slt i64 %sub, 0, !dbg !4405
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !4406

if.then4:                                         ; preds = %lor.lhs.false, %if.then1
  store i32 0, ptr %retval, align 4, !dbg !4407
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4407

if.end5:                                          ; preds = %lor.lhs.false
  br label %if.end6, !dbg !4408

if.end6:                                          ; preds = %if.end5, %if.end
  store i32 1, ptr %retval, align 4, !dbg !4409
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4409

cleanup:                                          ; preds = %if.end6, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ino) #14, !dbg !4410
  %8 = load i32, ptr %retval, align 4, !dbg !4410
  ret i32 %8, !dbg !4410
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @d_is_symlink(ptr noundef %dentry) #3 align 16 !dbg !4411 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4413, metadata !DIExpression()), !dbg !4414
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4415
  %call = call i32 @__d_entry_type(ptr noundef %0) #15, !dbg !4416
  %cmp = icmp eq i32 %call, 6291456, !dbg !4417
  ret i1 %cmp, !dbg !4418
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @autofs_empty(ptr noundef %ino) #3 align 16 !dbg !4419 {
entry:
  %ino.addr = alloca ptr, align 8
  store ptr %ino, ptr %ino.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ino.addr, metadata !4423, metadata !DIExpression()), !dbg !4424
  %0 = load ptr, ptr %ino.addr, align 8, !dbg !4425
  %count = getelementptr inbounds %struct.autofs_info, ptr %0, i32 0, i32 7, !dbg !4426
  %1 = load i32, ptr %count, align 8, !dbg !4426
  %cmp = icmp slt i32 %1, 2, !dbg !4427
  ret i1 %cmp, !dbg !4428
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @d_count(ptr noundef %dentry) #3 align 16 !dbg !4429 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4433, metadata !DIExpression()), !dbg !4434
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4435
  %d_lockref = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 7, !dbg !4436
  %1 = getelementptr inbounds %struct.lockref, ptr %d_lockref, i32 0, i32 0, !dbg !4437
  %count = getelementptr inbounds %struct.anon.16, ptr %1, i32 0, i32 1, !dbg !4437
  %2 = load i32, ptr %count, align 4, !dbg !4437
  ret i32 %2, !dbg !4438
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @autofs_tree_busy(ptr noundef %mnt, ptr noundef %top, i64 noundef %timeout, i32 noundef %how) #0 align 16 !dbg !4439 {
entry:
  %retval = alloca i32, align 4
  %mnt.addr = alloca ptr, align 8
  %top.addr = alloca ptr, align 8
  %timeout.addr = alloca i64, align 8
  %how.addr = alloca i32, align 4
  %top_ino = alloca ptr, align 8
  %p = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp4 = alloca i32, align 4
  %ino = alloca ptr, align 8
  %ino_count = alloca i32, align 4
  %tmp12 = alloca i32, align 4
  store ptr %mnt, ptr %mnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mnt.addr, metadata !4443, metadata !DIExpression()), !dbg !4454
  store ptr %top, ptr %top.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %top.addr, metadata !4444, metadata !DIExpression()), !dbg !4455
  store i64 %timeout, ptr %timeout.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %timeout.addr, metadata !4445, metadata !DIExpression()), !dbg !4456
  store i32 %how, ptr %how.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %how.addr, metadata !4446, metadata !DIExpression()), !dbg !4457
  call void @llvm.lifetime.start.p0(i64 8, ptr %top_ino) #14, !dbg !4458
  call void @llvm.dbg.declare(metadata ptr %top_ino, metadata !4447, metadata !DIExpression()), !dbg !4459
  %0 = load ptr, ptr %top.addr, align 8, !dbg !4460
  %call = call ptr @autofs_dentry_ino(ptr noundef %0) #15, !dbg !4461
  store ptr %call, ptr %top_ino, align 8, !dbg !4459
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #14, !dbg !4462
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4448, metadata !DIExpression()), !dbg !4463
  store i32 0, ptr %tmp, align 4, !dbg !4464
  %1 = load i32, ptr %tmp, align 4, !dbg !4467
  %2 = load ptr, ptr %top.addr, align 8, !dbg !4468
  %call1 = call i32 @simple_positive(ptr noundef %2) #15, !dbg !4470
  %tobool = icmp ne i32 %call1, 0, !dbg !4470
  br i1 %tobool, label %if.end, label %if.then, !dbg !4471

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !4472
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup30, !dbg !4472

if.end:                                           ; preds = %entry
  store ptr null, ptr %p, align 8, !dbg !4473
  br label %while.cond, !dbg !4474

while.cond:                                       ; preds = %if.end22, %if.end
  %3 = load ptr, ptr %p, align 8, !dbg !4475
  %4 = load ptr, ptr %top.addr, align 8, !dbg !4476
  %call2 = call ptr @get_next_positive_dentry(ptr noundef %3, ptr noundef %4) #15, !dbg !4477
  store ptr %call2, ptr %p, align 8, !dbg !4478
  %tobool3 = icmp ne ptr %call2, null, !dbg !4474
  br i1 %tobool3, label %while.body, label %while.end, !dbg !4474

while.body:                                       ; preds = %while.cond
  store i32 0, ptr %tmp4, align 4, !dbg !4479
  %5 = load i32, ptr %tmp4, align 4, !dbg !4482
  %6 = load ptr, ptr %p, align 8, !dbg !4483
  %call5 = call zeroext i1 @d_mountpoint(ptr noundef %6) #15, !dbg !4484
  br i1 %call5, label %if.then6, label %if.else, !dbg !4485

if.then6:                                         ; preds = %while.body
  %7 = load ptr, ptr %mnt.addr, align 8, !dbg !4486
  %8 = load ptr, ptr %p, align 8, !dbg !4489
  %9 = load i32, ptr %how.addr, align 4, !dbg !4490
  %call7 = call i32 @autofs_mount_busy(ptr noundef %7, ptr noundef %8, i32 noundef %9) #15, !dbg !4491
  %tobool8 = icmp ne i32 %call7, 0, !dbg !4491
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !4492

if.then9:                                         ; preds = %if.then6
  %10 = load volatile i64, ptr @jiffies, align 64, !dbg !4493
  %11 = load ptr, ptr %top_ino, align 8, !dbg !4495
  %last_used = getelementptr inbounds %struct.autofs_info, ptr %11, i32 0, i32 6, !dbg !4496
  store i64 %10, ptr %last_used, align 8, !dbg !4497
  %12 = load ptr, ptr %p, align 8, !dbg !4498
  call void @dput(ptr noundef %12) #15, !dbg !4499
  store i32 1, ptr %retval, align 4, !dbg !4500
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup30, !dbg !4500

if.end10:                                         ; preds = %if.then6
  br label %if.end22, !dbg !4501

if.else:                                          ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %ino) #14, !dbg !4502
  call void @llvm.dbg.declare(metadata ptr %ino, metadata !4449, metadata !DIExpression()), !dbg !4503
  %13 = load ptr, ptr %p, align 8, !dbg !4504
  %call11 = call ptr @autofs_dentry_ino(ptr noundef %13) #15, !dbg !4505
  store ptr %call11, ptr %ino, align 8, !dbg !4503
  call void @llvm.lifetime.start.p0(i64 4, ptr %ino_count) #14, !dbg !4506
  call void @llvm.dbg.declare(metadata ptr %ino_count, metadata !4453, metadata !DIExpression()), !dbg !4507
  br label %do.body, !dbg !4508

do.body:                                          ; preds = %if.else
  br label %do.cond, !dbg !4510

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4510

do.end:                                           ; preds = %do.cond
  %14 = load ptr, ptr %ino, align 8, !dbg !4508
  %count = getelementptr inbounds %struct.autofs_info, ptr %14, i32 0, i32 7, !dbg !4508
  %15 = load volatile i32, ptr %count, align 8, !dbg !4508
  store i32 %15, ptr %tmp12, align 4, !dbg !4510
  %16 = load i32, ptr %tmp12, align 4, !dbg !4508
  store i32 %16, ptr %ino_count, align 4, !dbg !4507
  %17 = load ptr, ptr %p, align 8, !dbg !4512
  %18 = load ptr, ptr %top.addr, align 8, !dbg !4514
  %cmp = icmp eq ptr %17, %18, !dbg !4515
  br i1 %cmp, label %if.then13, label %if.else14, !dbg !4516

if.then13:                                        ; preds = %do.end
  %19 = load i32, ptr %ino_count, align 4, !dbg !4517
  %add = add i32 %19, 2, !dbg !4517
  store i32 %add, ptr %ino_count, align 4, !dbg !4517
  br label %if.end15, !dbg !4518

if.else14:                                        ; preds = %do.end
  %20 = load i32, ptr %ino_count, align 4, !dbg !4519
  %inc = add i32 %20, 1, !dbg !4519
  store i32 %inc, ptr %ino_count, align 4, !dbg !4519
  br label %if.end15

if.end15:                                         ; preds = %if.else14, %if.then13
  %21 = load ptr, ptr %p, align 8, !dbg !4520
  %call16 = call i32 @d_count(ptr noundef %21) #15, !dbg !4522
  %22 = load i32, ptr %ino_count, align 4, !dbg !4523
  %cmp17 = icmp ugt i32 %call16, %22, !dbg !4524
  br i1 %cmp17, label %if.then18, label %if.end20, !dbg !4525

if.then18:                                        ; preds = %if.end15
  %23 = load volatile i64, ptr @jiffies, align 64, !dbg !4526
  %24 = load ptr, ptr %top_ino, align 8, !dbg !4528
  %last_used19 = getelementptr inbounds %struct.autofs_info, ptr %24, i32 0, i32 6, !dbg !4529
  store i64 %23, ptr %last_used19, align 8, !dbg !4530
  %25 = load ptr, ptr %p, align 8, !dbg !4531
  call void @dput(ptr noundef %25) #15, !dbg !4532
  store i32 1, ptr %retval, align 4, !dbg !4533
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4533

if.end20:                                         ; preds = %if.end15
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4534
  br label %cleanup, !dbg !4534

cleanup:                                          ; preds = %if.end20, %if.then18
  call void @llvm.lifetime.end.p0(i64 4, ptr %ino_count) #14, !dbg !4534
  call void @llvm.lifetime.end.p0(i64 8, ptr %ino) #14, !dbg !4534
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup30 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end22

if.end22:                                         ; preds = %cleanup.cont, %if.end10
  br label %while.cond, !dbg !4474, !llvm.loop !4535

while.end:                                        ; preds = %while.cond
  %26 = load i32, ptr %how.addr, align 4, !dbg !4537
  %and = and i32 %26, 4, !dbg !4539
  %tobool23 = icmp ne i32 %and, 0, !dbg !4539
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !4540

if.then24:                                        ; preds = %while.end
  store i32 0, ptr %retval, align 4, !dbg !4541
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup30, !dbg !4541

if.end25:                                         ; preds = %while.end
  %27 = load ptr, ptr %top.addr, align 8, !dbg !4542
  %28 = load i64, ptr %timeout.addr, align 8, !dbg !4544
  %29 = load i32, ptr %how.addr, align 4, !dbg !4545
  %call26 = call i32 @autofs_can_expire(ptr noundef %27, i64 noundef %28, i32 noundef %29) #15, !dbg !4546
  %tobool27 = icmp ne i32 %call26, 0, !dbg !4546
  br i1 %tobool27, label %if.end29, label %if.then28, !dbg !4547

if.then28:                                        ; preds = %if.end25
  store i32 1, ptr %retval, align 4, !dbg !4548
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup30, !dbg !4548

if.end29:                                         ; preds = %if.end25
  store i32 0, ptr %retval, align 4, !dbg !4549
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup30, !dbg !4549

cleanup30:                                        ; preds = %if.end29, %if.then28, %if.then24, %cleanup, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #14, !dbg !4550
  call void @llvm.lifetime.end.p0(i64 8, ptr %top_ino) #14, !dbg !4550
  %30 = load i32, ptr %retval, align 4, !dbg !4550
  ret i32 %30, !dbg !4550
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @autofs_check_leaves(ptr noundef %mnt, ptr noundef %parent, i64 noundef %timeout, i32 noundef %how) #0 align 16 !dbg !4551 {
entry:
  %retval = alloca ptr, align 8
  %mnt.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %timeout.addr = alloca i64, align 8
  %how.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mnt, ptr %mnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mnt.addr, metadata !4555, metadata !DIExpression()), !dbg !4560
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !4556, metadata !DIExpression()), !dbg !4561
  store i64 %timeout, ptr %timeout.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %timeout.addr, metadata !4557, metadata !DIExpression()), !dbg !4562
  store i32 %how, ptr %how.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %how.addr, metadata !4558, metadata !DIExpression()), !dbg !4563
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #14, !dbg !4564
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4559, metadata !DIExpression()), !dbg !4565
  store i32 0, ptr %tmp, align 4, !dbg !4566
  %0 = load i32, ptr %tmp, align 4, !dbg !4569
  store ptr null, ptr %p, align 8, !dbg !4570
  br label %while.cond, !dbg !4571

while.cond:                                       ; preds = %if.end13, %if.then5, %entry
  %1 = load ptr, ptr %p, align 8, !dbg !4572
  %2 = load ptr, ptr %parent.addr, align 8, !dbg !4573
  %call = call ptr @get_next_positive_dentry(ptr noundef %1, ptr noundef %2) #15, !dbg !4574
  store ptr %call, ptr %p, align 8, !dbg !4575
  %tobool = icmp ne ptr %call, null, !dbg !4571
  br i1 %tobool, label %while.body, label %while.end, !dbg !4571

while.body:                                       ; preds = %while.cond
  store i32 0, ptr %tmp1, align 4, !dbg !4576
  %3 = load i32, ptr %tmp1, align 4, !dbg !4580
  %4 = load ptr, ptr %p, align 8, !dbg !4581
  %call2 = call zeroext i1 @d_mountpoint(ptr noundef %4) #15, !dbg !4583
  br i1 %call2, label %if.then, label %if.end13, !dbg !4584

if.then:                                          ; preds = %while.body
  %5 = load ptr, ptr %mnt.addr, align 8, !dbg !4585
  %6 = load ptr, ptr %p, align 8, !dbg !4588
  %7 = load i32, ptr %how.addr, align 4, !dbg !4589
  %call3 = call i32 @autofs_mount_busy(ptr noundef %5, ptr noundef %6, i32 noundef %7) #15, !dbg !4590
  %tobool4 = icmp ne i32 %call3, 0, !dbg !4590
  br i1 %tobool4, label %if.then5, label %if.end, !dbg !4591

if.then5:                                         ; preds = %if.then
  br label %while.cond, !dbg !4592, !llvm.loop !4593

if.end:                                           ; preds = %if.then
  %8 = load i32, ptr %how.addr, align 4, !dbg !4595
  %and = and i32 %8, 4, !dbg !4597
  %tobool6 = icmp ne i32 %and, 0, !dbg !4597
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !4598

if.then7:                                         ; preds = %if.end
  %9 = load ptr, ptr %p, align 8, !dbg !4599
  store ptr %9, ptr %retval, align 8, !dbg !4600
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4600

if.end8:                                          ; preds = %if.end
  %10 = load ptr, ptr %p, align 8, !dbg !4601
  %11 = load i64, ptr %timeout.addr, align 8, !dbg !4603
  %12 = load i32, ptr %how.addr, align 4, !dbg !4604
  %call9 = call i32 @autofs_can_expire(ptr noundef %10, i64 noundef %11, i32 noundef %12) #15, !dbg !4605
  %tobool10 = icmp ne i32 %call9, 0, !dbg !4605
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !4606

if.then11:                                        ; preds = %if.end8
  %13 = load ptr, ptr %p, align 8, !dbg !4607
  store ptr %13, ptr %retval, align 8, !dbg !4608
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4608

if.end12:                                         ; preds = %if.end8
  br label %if.end13, !dbg !4609

if.end13:                                         ; preds = %if.end12, %while.body
  br label %while.cond, !dbg !4571, !llvm.loop !4593

while.end:                                        ; preds = %while.cond
  store ptr null, ptr %retval, align 8, !dbg !4610
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4610

cleanup:                                          ; preds = %while.end, %if.then11, %if.then7
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #14, !dbg !4611
  %14 = load ptr, ptr %retval, align 8, !dbg !4611
  ret ptr %14, !dbg !4611
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4612 dso_local void @path_get(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4615 dso_local i32 @follow_down_one(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4619 dso_local i32 @is_autofs_dentry(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @autofs_type_indirect(i32 noundef %type) #3 align 16 !dbg !4620 {
entry:
  %type.addr = alloca i32, align 4
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4622, metadata !DIExpression()), !dbg !4623
  %0 = load i32, ptr %type.addr, align 4, !dbg !4624
  %cmp = icmp eq i32 %0, 1, !dbg !4625
  %conv = zext i1 %cmp to i32, !dbg !4625
  ret i32 %conv, !dbg !4626
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4627 dso_local i32 @may_umount_tree(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4630 dso_local void @path_put(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__d_entry_type(ptr noundef %dentry) #3 align 16 !dbg !4631 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4633, metadata !DIExpression()), !dbg !4634
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4635
  %d_flags = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 0, !dbg !4636
  %1 = load i32, ptr %d_flags, align 8, !dbg !4636
  %and = and i32 %1, 7340032, !dbg !4637
  ret i32 %and, !dbg !4638
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_next_positive_dentry(ptr noundef %prev, ptr noundef %root) #0 align 16 !dbg !4639 {
entry:
  %retval = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %sbi = alloca ptr, align 8
  %p = alloca ptr, align 8
  %ret = alloca ptr, align 8
  %d = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %parent = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !4641, metadata !DIExpression()), !dbg !4649
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !4642, metadata !DIExpression()), !dbg !4650
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbi) #14, !dbg !4651
  call void @llvm.dbg.declare(metadata ptr %sbi, metadata !4643, metadata !DIExpression()), !dbg !4652
  %0 = load ptr, ptr %root.addr, align 8, !dbg !4653
  %d_sb = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9, !dbg !4654
  %1 = load ptr, ptr %d_sb, align 8, !dbg !4654
  %call = call ptr @autofs_sbi(ptr noundef %1) #15, !dbg !4655
  store ptr %call, ptr %sbi, align 8, !dbg !4652
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #14, !dbg !4656
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4644, metadata !DIExpression()), !dbg !4657
  %2 = load ptr, ptr %prev.addr, align 8, !dbg !4658
  store ptr %2, ptr %p, align 8, !dbg !4657
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #14, !dbg !4656
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4645, metadata !DIExpression()), !dbg !4659
  store ptr null, ptr %ret, align 8, !dbg !4659
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #14, !dbg !4656
  call void @llvm.dbg.declare(metadata ptr %d, metadata !4646, metadata !DIExpression()), !dbg !4660
  store ptr null, ptr %d, align 8, !dbg !4660
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !4661
  %cmp = icmp eq ptr %3, null, !dbg !4663
  br i1 %cmp, label %if.then, label %if.end, !dbg !4664

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %root.addr, align 8, !dbg !4665
  %call1 = call ptr @dget(ptr noundef %4) #15, !dbg !4666
  store ptr %call1, ptr %retval, align 8, !dbg !4667
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup13, !dbg !4667

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %sbi, align 8, !dbg !4668
  %lookup_lock = getelementptr inbounds %struct.autofs_sb_info, ptr %5, i32 0, i32 16, !dbg !4669
  call void @spin_lock(ptr noundef %lookup_lock) #15, !dbg !4670
  %6 = load ptr, ptr %p, align 8, !dbg !4671
  %d_lockref = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 7, !dbg !4672
  %7 = getelementptr inbounds %struct.lockref, ptr %d_lockref, i32 0, i32 0, !dbg !4672
  %lock = getelementptr inbounds %struct.anon.16, ptr %7, i32 0, i32 0, !dbg !4672
  call void @spin_lock(ptr noundef %lock) #15, !dbg !4673
  br label %while.cond, !dbg !4674

while.cond:                                       ; preds = %cleanup.cont, %if.end
  br label %while.body, !dbg !4674

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #14, !dbg !4675
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !4647, metadata !DIExpression()), !dbg !4676
  %8 = load ptr, ptr %p, align 8, !dbg !4677
  %9 = load ptr, ptr %d, align 8, !dbg !4678
  %call2 = call ptr @positive_after(ptr noundef %8, ptr noundef %9) #15, !dbg !4679
  store ptr %call2, ptr %ret, align 8, !dbg !4680
  %10 = load ptr, ptr %ret, align 8, !dbg !4681
  %tobool = icmp ne ptr %10, null, !dbg !4681
  br i1 %tobool, label %if.then4, label %lor.lhs.false, !dbg !4683

lor.lhs.false:                                    ; preds = %while.body
  %11 = load ptr, ptr %p, align 8, !dbg !4684
  %12 = load ptr, ptr %root.addr, align 8, !dbg !4685
  %cmp3 = icmp eq ptr %11, %12, !dbg !4686
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !4687

if.then4:                                         ; preds = %lor.lhs.false, %while.body
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4688

if.end5:                                          ; preds = %lor.lhs.false
  %13 = load ptr, ptr %p, align 8, !dbg !4689
  %d_parent = getelementptr inbounds %struct.dentry, ptr %13, i32 0, i32 3, !dbg !4690
  %14 = load ptr, ptr %d_parent, align 8, !dbg !4690
  store ptr %14, ptr %parent, align 8, !dbg !4691
  %15 = load ptr, ptr %p, align 8, !dbg !4692
  %d_lockref6 = getelementptr inbounds %struct.dentry, ptr %15, i32 0, i32 7, !dbg !4693
  %16 = getelementptr inbounds %struct.lockref, ptr %d_lockref6, i32 0, i32 0, !dbg !4693
  %lock7 = getelementptr inbounds %struct.anon.16, ptr %16, i32 0, i32 0, !dbg !4693
  call void @spin_unlock(ptr noundef %lock7) #15, !dbg !4694
  %17 = load ptr, ptr %parent, align 8, !dbg !4695
  %d_lockref8 = getelementptr inbounds %struct.dentry, ptr %17, i32 0, i32 7, !dbg !4696
  %18 = getelementptr inbounds %struct.lockref, ptr %d_lockref8, i32 0, i32 0, !dbg !4696
  %lock9 = getelementptr inbounds %struct.anon.16, ptr %18, i32 0, i32 0, !dbg !4696
  call void @spin_lock(ptr noundef %lock9) #15, !dbg !4697
  %19 = load ptr, ptr %p, align 8, !dbg !4698
  store ptr %19, ptr %d, align 8, !dbg !4699
  %20 = load ptr, ptr %parent, align 8, !dbg !4700
  store ptr %20, ptr %p, align 8, !dbg !4701
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4702
  br label %cleanup, !dbg !4702

cleanup:                                          ; preds = %if.end5, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #14, !dbg !4702
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !4674, !llvm.loop !4703

while.end:                                        ; preds = %cleanup
  %21 = load ptr, ptr %p, align 8, !dbg !4704
  %d_lockref10 = getelementptr inbounds %struct.dentry, ptr %21, i32 0, i32 7, !dbg !4705
  %22 = getelementptr inbounds %struct.lockref, ptr %d_lockref10, i32 0, i32 0, !dbg !4705
  %lock11 = getelementptr inbounds %struct.anon.16, ptr %22, i32 0, i32 0, !dbg !4705
  call void @spin_unlock(ptr noundef %lock11) #15, !dbg !4706
  %23 = load ptr, ptr %sbi, align 8, !dbg !4707
  %lookup_lock12 = getelementptr inbounds %struct.autofs_sb_info, ptr %23, i32 0, i32 16, !dbg !4708
  call void @spin_unlock(ptr noundef %lookup_lock12) #15, !dbg !4709
  %24 = load ptr, ptr %prev.addr, align 8, !dbg !4710
  call void @dput(ptr noundef %24) #15, !dbg !4711
  %25 = load ptr, ptr %ret, align 8, !dbg !4712
  store ptr %25, ptr %retval, align 8, !dbg !4713
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup13, !dbg !4713

cleanup13:                                        ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #14, !dbg !4714
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #14, !dbg !4714
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #14, !dbg !4714
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbi) #14, !dbg !4714
  %26 = load ptr, ptr %retval, align 8, !dbg !4714
  ret ptr %26, !dbg !4714

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dget(ptr noundef %dentry) #3 align 16 !dbg !4715 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4717, metadata !DIExpression()), !dbg !4718
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4719
  %tobool = icmp ne ptr %0, null, !dbg !4719
  br i1 %tobool, label %if.then, label %if.end, !dbg !4721

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %dentry.addr, align 8, !dbg !4722
  %d_lockref = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 7, !dbg !4723
  call void @lockref_get(ptr noundef %d_lockref) #15, !dbg !4724
  br label %if.end, !dbg !4724

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %dentry.addr, align 8, !dbg !4725
  ret ptr %2, !dbg !4726
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4727 dso_local void @lockref_get(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4731 dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_copy_size(ptr noundef %addr, i64 noundef %bytes, i1 noundef zeroext %is_source) #4 align 16 !dbg !4736 {
entry:
  %retval = alloca i1, align 1
  %addr.addr = alloca ptr, align 8
  %bytes.addr = alloca i64, align 8
  %is_source.addr = alloca i8, align 1
  %sz = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4740, metadata !DIExpression()), !dbg !4750
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !4741, metadata !DIExpression()), !dbg !4751
  %frombool = zext i1 %is_source to i8
  store i8 %frombool, ptr %is_source.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_source.addr, metadata !4742, metadata !DIExpression()), !dbg !4752
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #14, !dbg !4753
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !4743, metadata !DIExpression()), !dbg !4754
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4755
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false), !dbg !4756
  %conv = trunc i64 %1 to i32, !dbg !4756
  store i32 %conv, ptr %sz, align 4, !dbg !4754
  %2 = load i32, ptr %sz, align 4, !dbg !4757
  %cmp = icmp sge i32 %2, 0, !dbg !4757
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4757

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %sz, align 4, !dbg !4757
  %conv2 = sext i32 %3 to i64, !dbg !4757
  %4 = load i64, ptr %bytes.addr, align 8, !dbg !4757
  %cmp3 = icmp ult i64 %conv2, %4, !dbg !4757
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !4759
  %lnot = xor i1 %5, true, !dbg !4757
  %lnot5 = xor i1 %lnot, true, !dbg !4757
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !4757
  %conv6 = sext i32 %lnot.ext to i64, !dbg !4757
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !4757
  %tobool = icmp ne i64 %expval, 0, !dbg !4757
  br i1 %tobool, label %if.then, label %if.end12, !dbg !4760

if.then:                                          ; preds = %land.end
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !4761
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !4764
  br i1 %7, label %if.else, label %if.then7, !dbg !4765

if.then7:                                         ; preds = %if.then
  %8 = load i32, ptr %sz, align 4, !dbg !4766
  %9 = load i64, ptr %bytes.addr, align 8, !dbg !4767
  call void @copy_overflow(i32 noundef %8, i64 noundef %9) #15, !dbg !4768
  br label %if.end11, !dbg !4768

if.else:                                          ; preds = %if.then
  %10 = load i8, ptr %is_source.addr, align 1, !dbg !4769, !range !4771, !noundef !812
  %tobool8 = trunc i8 %10 to i1, !dbg !4769
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !4772

if.then9:                                         ; preds = %if.else
  call void @__bad_copy_from() #15, !dbg !4773, !srcloc !4774
  br label %if.end, !dbg !4773

if.else10:                                        ; preds = %if.else
  call void @__bad_copy_to() #15, !dbg !4775, !srcloc !4776
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then7
  store i1 false, ptr %retval, align 1, !dbg !4777
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4777

if.end12:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !4778
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4744, metadata !DIExpression()), !dbg !4778
  %11 = load i64, ptr %bytes.addr, align 8, !dbg !4778
  %cmp13 = icmp ugt i64 %11, 2147483647, !dbg !4778
  %lnot15 = xor i1 %cmp13, true, !dbg !4778
  %lnot17 = xor i1 %lnot15, true, !dbg !4778
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !4778
  store i32 %lnot.ext18, ptr %__ret_warn_on, align 4, !dbg !4778
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !4779
  %tobool19 = icmp ne i32 %12, 0, !dbg !4779
  %lnot20 = xor i1 %tobool19, true, !dbg !4779
  %lnot22 = xor i1 %lnot20, true, !dbg !4779
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !4779
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !4779
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !4779
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !4779
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !4778

if.then27:                                        ; preds = %if.end12
  br label %do.body, !dbg !4779

do.body:                                          ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !4780
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4747, metadata !DIExpression()), !dbg !4780
  store i32 2307, ptr %__flags, align 4, !dbg !4780
  br label %do.body28, !dbg !4780

do.body28:                                        ; preds = %do.body
  br label %do.cond, !dbg !4781

do.cond:                                          ; preds = %do.body28
  br label %do.end, !dbg !4781

do.end:                                           ; preds = %do.cond
  br label %do.body29, !dbg !4780

do.body29:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !4783
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 249, i32 %13, i64 12) #14, !dbg !4783, !srcloc !4785
  br label %do.cond30, !dbg !4783

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !4783

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !4780

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !4786

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !4786

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !4779
  br label %do.cond35, !dbg !4780

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !4780

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !4780

if.end37:                                         ; preds = %do.end36, %if.end12
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !4778
  %tobool38 = icmp ne i32 %14, 0, !dbg !4778
  %lnot39 = xor i1 %tobool38, true, !dbg !4778
  %lnot41 = xor i1 %lnot39, true, !dbg !4778
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !4778
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !4778
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !4778
  store i64 %expval44, ptr %tmp, align 8, !dbg !4779
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !4788
  %15 = load i64, ptr %tmp, align 8, !dbg !4778
  %tobool45 = icmp ne i64 %15, 0, !dbg !4788
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !4789

if.then46:                                        ; preds = %if.end37
  store i1 false, ptr %retval, align 1, !dbg !4790
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4790

if.end47:                                         ; preds = %if.end37
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !4791
  %17 = load i64, ptr %bytes.addr, align 8, !dbg !4792
  %18 = load i8, ptr %is_source.addr, align 1, !dbg !4793, !range !4771, !noundef !812
  %tobool48 = trunc i8 %18 to i1, !dbg !4793
  call void @check_object_size(ptr noundef %16, i64 noundef %17, i1 noundef zeroext %tobool48) #15, !dbg !4794
  store i1 true, ptr %retval, align 1, !dbg !4795
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4795

cleanup:                                          ; preds = %if.end47, %if.then46, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #14, !dbg !4796
  %19 = load i1, ptr %retval, align 1, !dbg !4796
  ret i1 %19, !dbg !4796
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4797 dso_local i64 @_copy_to_user(ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #1

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #11

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_overflow(i32 noundef %size, i64 noundef %count) #3 align 16 !dbg !4798 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4802, metadata !DIExpression()), !dbg !4804
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !4803, metadata !DIExpression()), !dbg !4805
  %0 = load i32, ptr %size.addr, align 4, !dbg !4806
  %1 = load i64, ptr %count.addr, align 8, !dbg !4808
  call void @__copy_overflow(i32 noundef %0, i64 noundef %1) #15, !dbg !4809
  ret void, !dbg !4810
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4811 dso_local void @__bad_copy_from() #12

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4812 dso_local void @__bad_copy_to() #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_object_size(ptr noundef %ptr, i64 noundef %n, i1 noundef zeroext %to_user) #3 align 16 !dbg !4813 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4817, metadata !DIExpression()), !dbg !4820
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4818, metadata !DIExpression()), !dbg !4821
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, ptr %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %to_user.addr, metadata !4819, metadata !DIExpression()), !dbg !4822
  ret void, !dbg !4823
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4824 dso_local void @__copy_overflow(i32 noundef, i64 noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @autofs_direct_busy(ptr noundef %mnt, ptr noundef %top, i64 noundef %timeout, i32 noundef %how) #0 align 16 !dbg !4825 {
entry:
  %retval = alloca i32, align 4
  %mnt.addr = alloca ptr, align 8
  %top.addr = alloca ptr, align 8
  %timeout.addr = alloca i64, align 8
  %how.addr = alloca i32, align 4
  %tmp = alloca i32, align 4
  %ino = alloca ptr, align 8
  store ptr %mnt, ptr %mnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mnt.addr, metadata !4827, metadata !DIExpression()), !dbg !4834
  store ptr %top, ptr %top.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %top.addr, metadata !4828, metadata !DIExpression()), !dbg !4835
  store i64 %timeout, ptr %timeout.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %timeout.addr, metadata !4829, metadata !DIExpression()), !dbg !4836
  store i32 %how, ptr %how.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %how.addr, metadata !4830, metadata !DIExpression()), !dbg !4837
  store i32 0, ptr %tmp, align 4, !dbg !4838
  %0 = load i32, ptr %tmp, align 4, !dbg !4841
  %1 = load i32, ptr %how.addr, align 4, !dbg !4842
  %and = and i32 %1, 4, !dbg !4844
  %tobool = icmp ne i32 %and, 0, !dbg !4844
  br i1 %tobool, label %if.then, label %if.end, !dbg !4845

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4846
  br label %return, !dbg !4846

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %mnt.addr, align 8, !dbg !4847
  %call = call i32 @may_umount_tree(ptr noundef %2) #15, !dbg !4848
  %tobool1 = icmp ne i32 %call, 0, !dbg !4848
  br i1 %tobool1, label %if.end7, label %if.then2, !dbg !4849

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %ino) #14, !dbg !4850
  call void @llvm.dbg.declare(metadata ptr %ino, metadata !4831, metadata !DIExpression()), !dbg !4851
  %3 = load ptr, ptr %top.addr, align 8, !dbg !4852
  %call3 = call ptr @autofs_dentry_ino(ptr noundef %3) #15, !dbg !4853
  store ptr %call3, ptr %ino, align 8, !dbg !4854
  %4 = load ptr, ptr %ino, align 8, !dbg !4855
  %tobool4 = icmp ne ptr %4, null, !dbg !4855
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !4857

if.then5:                                         ; preds = %if.then2
  %5 = load volatile i64, ptr @jiffies, align 64, !dbg !4858
  %6 = load ptr, ptr %ino, align 8, !dbg !4859
  %last_used = getelementptr inbounds %struct.autofs_info, ptr %6, i32 0, i32 6, !dbg !4860
  store i64 %5, ptr %last_used, align 8, !dbg !4861
  br label %if.end6, !dbg !4859

if.end6:                                          ; preds = %if.then5, %if.then2
  store i32 1, ptr %retval, align 4, !dbg !4862
  call void @llvm.lifetime.end.p0(i64 8, ptr %ino) #14, !dbg !4863
  br label %return

if.end7:                                          ; preds = %if.end
  %7 = load ptr, ptr %top.addr, align 8, !dbg !4864
  %8 = load i64, ptr %timeout.addr, align 8, !dbg !4866
  %9 = load i32, ptr %how.addr, align 4, !dbg !4867
  %call8 = call i32 @autofs_can_expire(ptr noundef %7, i64 noundef %8, i32 noundef %9) #15, !dbg !4868
  %tobool9 = icmp ne i32 %call8, 0, !dbg !4868
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !4869

if.then10:                                        ; preds = %if.end7
  store i32 1, ptr %retval, align 4, !dbg !4870
  br label %return, !dbg !4870

if.end11:                                         ; preds = %if.end7
  store i32 0, ptr %retval, align 4, !dbg !4871
  br label %return, !dbg !4871

return:                                           ; preds = %if.end11, %if.then10, %if.end6, %if.then
  %10 = load i32, ptr %retval, align 4, !dbg !4872
  ret i32 %10, !dbg !4872
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #9 = { nocallback nounwind }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone null_pointer_is_valid "dontcall-error"="copy source size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid "dontcall-error"="copy destination size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { noredzone }

!llvm.dbg.cu = !{!59}
!llvm.named.register.rsp = !{!3277}
!llvm.module.flags = !{!3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285}
!llvm.ident = !{!3286}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__key", scope: !2, file: !3, line: 87, type: !810, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "init_completion", scope: !3, file: !3, line: 84, type: !4, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !3275)
!3 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !3, line: 26, size: 256, elements: !8)
!8 = !{!9, !11}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !7, file: !3, line: 27, baseType: !10, size: 32)
!10 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !7, file: !3, line: 28, baseType: !12, size: 192, offset: 64)
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !13, line: 43, size: 192, elements: !14)
!13 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!14 = !{!15, !53}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !12, file: !13, line: 44, baseType: !16, size: 32)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !17, line: 23, baseType: !18)
!17 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !17, line: 14, size: 32, elements: !19)
!19 = !{!20}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !18, file: !17, line: 15, baseType: !21, size: 32)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !22, line: 44, baseType: !23)
!22 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !22, line: 14, size: 32, elements: !24)
!24 = !{!25}
!25 = !DIDerivedType(tag: DW_TAG_member, scope: !23, file: !22, line: 15, baseType: !26, size: 32)
!26 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !23, file: !22, line: 15, size: 32, elements: !27)
!27 = !{!28, !35, !45}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !26, file: !22, line: 16, baseType: !29, size: 32)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !30, line: 174, baseType: !31)
!30 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 172, size: 32, elements: !32)
!32 = !{!33}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !31, file: !30, line: 173, baseType: !34, size: 32)
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!35 = !DIDerivedType(tag: DW_TAG_member, scope: !26, file: !22, line: 24, baseType: !36, size: 16)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !26, file: !22, line: 24, size: 16, elements: !37)
!37 = !{!38, !44}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !36, file: !22, line: 25, baseType: !39, size: 8)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !40, line: 17, baseType: !41)
!40 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !42, line: 21, baseType: !43)
!42 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!43 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !36, file: !22, line: 26, baseType: !39, size: 8, offset: 8)
!45 = !DIDerivedType(tag: DW_TAG_member, scope: !26, file: !22, line: 28, baseType: !46, size: 32)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !26, file: !22, line: 28, size: 32, elements: !47)
!47 = !{!48, !52}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !46, file: !22, line: 29, baseType: !49, size: 16)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !40, line: 19, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !42, line: 24, baseType: !51)
!51 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !46, file: !22, line: 30, baseType: !49, size: 16, offset: 16)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !12, file: !13, line: 45, baseType: !54, size: 128, offset: 64)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !30, line: 190, size: 128, elements: !55)
!55 = !{!56, !58}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !54, file: !30, line: 191, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !54, file: !30, line: 191, baseType: !57, size: 64, offset: 64)
!59 = distinct !DICompileUnit(language: DW_LANG_C11, file: !60, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/autofs/.expire.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/autofs/autofs4\22 -D KBUILD_BASENAME=\22expire\22 -D KBUILD_MODNAME=\22autofs4\22 -D __KBUILD_MODNAME=kmod_autofs4 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/autofs/expire.ll fs/autofs/expire.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !61, retainedTypes: !122, globals: !3263, splitDebugInlining: false, nameTableKind: None)
!60 = !DIFile(filename: "fs/autofs/expire.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0aa3e51a71e0c04a9171891e35bf815a")
!61 = !{!62, !70, !77, !82, !88, !93, !99, !106, !112, !117}
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !63, line: 9, baseType: !10, size: 32, elements: !64)
!63 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!64 = !{!65, !66, !67, !68, !69}
!65 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!66 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!67 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!68 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!69 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!70 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !71, line: 15, baseType: !10, size: 32, elements: !72)
!71 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!72 = !{!73, !74, !75, !76}
!73 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!74 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!75 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!76 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !78, line: 2052, baseType: !10, size: 32, elements: !79)
!78 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!79 = !{!80, !81}
!80 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!81 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!82 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !83, line: 54, baseType: !10, size: 32, elements: !84)
!83 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!84 = !{!85, !86, !87}
!85 = !DIEnumerator(name: "USRQUOTA", value: 0)
!86 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!87 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!88 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !89, line: 65, baseType: !10, size: 32, elements: !90)
!89 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!90 = !{!91, !92}
!91 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!92 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !94, line: 16, baseType: !10, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!95 = !{!96, !97, !98}
!96 = !DIEnumerator(name: "TT_NONE", value: 0)
!97 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!98 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !100, line: 51, baseType: !10, size: 32, elements: !101)
!100 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!101 = !{!102, !103, !104, !105}
!102 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!103 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!104 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!105 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!106 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "autofs_notify", file: !107, line: 154, baseType: !10, size: 32, elements: !108)
!107 = !DIFile(filename: "./include/uapi/linux/auto_fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "967b492b126909646225f054deef702b")
!108 = !{!109, !110, !111}
!109 = !DIEnumerator(name: "NFY_NONE", value: 0)
!110 = !DIEnumerator(name: "NFY_MOUNT", value: 1)
!111 = !DIEnumerator(name: "NFY_EXPIRE", value: 2)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dentry_d_lock_class", file: !113, line: 122, baseType: !10, size: 32, elements: !114)
!113 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!114 = !{!115, !116}
!115 = !DIEnumerator(name: "DENTRY_D_LOCK_NORMAL", value: 0)
!116 = !DIEnumerator(name: "DENTRY_D_LOCK_NESTED", value: 1)
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !118, line: 10, baseType: !10, size: 32, elements: !119)
!118 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!119 = !{!120, !121}
!120 = !DIEnumerator(name: "false", value: 0)
!121 = !DIEnumerator(name: "true", value: 1)
!122 = !{!123, !34, !126, !3246, !346, !519, !3260, !673}
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !40, line: 23, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !42, line: 31, baseType: !125)
!125 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "autofs_sb_info", file: !128, line: 106, size: 1664, elements: !129)
!128 = !DIFile(filename: "fs/autofs/autofs_i.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "474496a990f5ae9b197285e0b4803e95")
!129 = !{!130, !133, !134, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3242, !3243, !3244, !3245}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !127, file: !128, line: 107, baseType: !131, size: 32)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !40, line: 21, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !42, line: 27, baseType: !10)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "pipefd", scope: !127, file: !128, line: 108, baseType: !34, size: 32, offset: 32)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !127, file: !128, line: 109, baseType: !135, size: 64, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !78, line: 994, size: 1856, align: 64, elements: !137)
!137 = !{!138, !157, !166, !168, !178, !190, !194, !195, !276, !500, !509, !3202, !3203, !3204, !3205, !3206, !3207, !3209, !3210, !3211}
!138 = !DIDerivedType(tag: DW_TAG_member, scope: !136, file: !78, line: 995, baseType: !139, size: 128)
!139 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !136, file: !78, line: 995, size: 128, elements: !140)
!140 = !{!141, !147, !156}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !139, file: !78, line: 996, baseType: !142, size: 64)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !143, line: 60, size: 64, elements: !144)
!143 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!144 = !{!145}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !142, file: !143, line: 61, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !139, file: !78, line: 997, baseType: !148, size: 128, align: 64)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !30, line: 232, size: 128, align: 64, elements: !149)
!149 = !{!150, !152}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !148, file: !30, line: 233, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !148, file: !30, line: 234, baseType: !153, size: 64, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DISubroutineType(types: !155)
!155 = !{null, !151}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !139, file: !78, line: 998, baseType: !10, size: 32)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !136, file: !78, line: 1005, baseType: !158, size: 32, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !159, line: 29, baseType: !160)
!159 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !159, line: 17, size: 32, elements: !161)
!161 = !{!162}
!162 = !DIDerivedType(tag: DW_TAG_member, scope: !160, file: !159, line: 18, baseType: !163, size: 32)
!163 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !160, file: !159, line: 18, size: 32, elements: !164)
!164 = !{!165}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !163, file: !159, line: 19, baseType: !18, size: 32)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !136, file: !78, line: 1006, baseType: !167, size: 32, offset: 160)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !30, line: 156, baseType: !10)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !136, file: !78, line: 1007, baseType: !169, size: 64, offset: 192)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !170, line: 13, baseType: !171)
!170 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !30, line: 181, baseType: !172)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 179, size: 64, elements: !173)
!173 = !{!174}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !172, file: !30, line: 180, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !40, line: 22, baseType: !176)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !42, line: 30, baseType: !177)
!177 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !136, file: !78, line: 1008, baseType: !179, size: 256, offset: 256)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !180, line: 66, size: 256, elements: !181)
!180 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!181 = !{!182, !183, !184, !189}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !179, file: !180, line: 67, baseType: !169, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !179, file: !180, line: 68, baseType: !16, size: 32, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !179, file: !180, line: 70, baseType: !185, size: 32, offset: 96)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !186, line: 15, size: 32, elements: !187)
!186 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!187 = !{!188}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !185, file: !186, line: 20, baseType: !29, size: 32)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !179, file: !180, line: 72, baseType: !54, size: 128, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !136, file: !78, line: 1009, baseType: !191, size: 64, offset: 512)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !30, line: 52, baseType: !192)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !193, line: 88, baseType: !177)
!193 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!194 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !136, file: !78, line: 1010, baseType: !10, size: 32, offset: 576)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !136, file: !78, line: 1011, baseType: !196, size: 256, offset: 640)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !78, line: 948, size: 256, elements: !197)
!197 = !{!198, !221, !265, !266, !274, !275}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !196, file: !78, line: 949, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !200, line: 34, baseType: !201)
!200 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !200, line: 25, size: 64, elements: !202)
!202 = !{!203}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !201, file: !200, line: 26, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !205, line: 27, baseType: !206)
!205 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !205, line: 13, size: 64, elements: !207)
!207 = !{!208, !220}
!208 = !DIDerivedType(tag: DW_TAG_member, scope: !206, file: !205, line: 14, baseType: !209, size: 32)
!209 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !206, file: !205, line: 14, size: 32, elements: !210)
!210 = !{!211, !212}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !209, file: !205, line: 15, baseType: !29, size: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, scope: !209, file: !205, line: 16, baseType: !213, size: 32)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !209, file: !205, line: 16, size: 32, elements: !214)
!214 = !{!215, !216}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !213, file: !205, line: 18, baseType: !39, size: 8)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !213, file: !205, line: 19, baseType: !217, size: 24, offset: 8)
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 24, elements: !218)
!218 = !{!219}
!219 = !DISubrange(count: 3)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !206, file: !205, line: 26, baseType: !21, size: 32, offset: 32)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !196, file: !78, line: 950, baseType: !222, size: 64, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !63, line: 59, size: 768, elements: !224)
!224 = !{!225, !231, !232, !233, !246, !247, !254, !255}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !223, file: !63, line: 61, baseType: !226, size: 32)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !227, line: 113, baseType: !228)
!227 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !227, line: 111, size: 32, elements: !229)
!229 = !{!230}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !228, file: !227, line: 112, baseType: !29, size: 32)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !223, file: !63, line: 62, baseType: !10, size: 32, offset: 32)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !223, file: !63, line: 63, baseType: !158, size: 32, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !223, file: !63, line: 65, baseType: !234, size: 256, offset: 128)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 256, elements: !244)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !30, line: 194, size: 64, elements: !236)
!236 = !{!237}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !235, file: !30, line: 195, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !30, line: 198, size: 128, elements: !240)
!240 = !{!241, !242}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !239, file: !30, line: 199, baseType: !238, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !239, file: !30, line: 199, baseType: !243, size: 64, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!244 = !{!245}
!245 = !DISubrange(count: 4)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !223, file: !63, line: 66, baseType: !235, size: 64, offset: 384)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !223, file: !63, line: 68, baseType: !248, size: 192, offset: 448)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !249, line: 41, baseType: !250)
!249 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !249, line: 37, size: 192, elements: !251)
!251 = !{!252, !253}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !250, file: !249, line: 38, baseType: !158, size: 32)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !250, file: !249, line: 39, baseType: !54, size: 128, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !223, file: !63, line: 69, baseType: !148, size: 128, align: 64, offset: 640)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !223, file: !63, line: 70, baseType: !256, offset: 768)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, elements: !263)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !63, line: 54, size: 128, elements: !258)
!258 = !{!259, !260}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !257, file: !63, line: 55, baseType: !34, size: 32)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !257, file: !63, line: 56, baseType: !261, size: 64, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !63, line: 56, flags: DIFlagFwdDecl)
!263 = !{!264}
!264 = !DISubrange(count: -1)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !196, file: !78, line: 951, baseType: !62, size: 32, offset: 128)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !196, file: !78, line: 952, baseType: !267, size: 32, offset: 160)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !268, line: 23, baseType: !269)
!268 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !268, line: 21, size: 32, elements: !270)
!270 = !{!271}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !269, file: !268, line: 22, baseType: !272, size: 32)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !30, line: 37, baseType: !273)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !193, line: 49, baseType: !10)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !196, file: !78, line: 952, baseType: !267, size: 32, offset: 192)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !196, file: !78, line: 953, baseType: !34, size: 32, offset: 224)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !136, file: !78, line: 1012, baseType: !277, size: 64, offset: 896)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !279)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !280, line: 110, size: 1472, elements: !281)
!280 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!281 = !{!282, !283, !284, !291, !292, !293, !294, !295, !296, !297, !298, !304, !305, !306, !307, !308, !309, !445, !446, !447, !448, !449, !480, !483, !487, !495}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !279, file: !280, line: 111, baseType: !169, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !279, file: !280, line: 112, baseType: !267, size: 32, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !279, file: !280, line: 113, baseType: !285, size: 32, offset: 96)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !268, line: 28, baseType: !286)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !268, line: 26, size: 32, elements: !287)
!287 = !{!288}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !286, file: !268, line: 27, baseType: !289, size: 32)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !30, line: 38, baseType: !290)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !193, line: 50, baseType: !10)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !279, file: !280, line: 114, baseType: !267, size: 32, offset: 128)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !279, file: !280, line: 115, baseType: !285, size: 32, offset: 160)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !279, file: !280, line: 116, baseType: !267, size: 32, offset: 192)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !279, file: !280, line: 117, baseType: !285, size: 32, offset: 224)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !279, file: !280, line: 118, baseType: !267, size: 32, offset: 256)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !279, file: !280, line: 119, baseType: !285, size: 32, offset: 288)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !279, file: !280, line: 120, baseType: !10, size: 32, offset: 320)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !279, file: !280, line: 121, baseType: !299, size: 64, offset: 384)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !300, line: 24, baseType: !301)
!300 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !300, line: 24, size: 64, elements: !302)
!302 = !{!303}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !301, file: !300, line: 24, baseType: !123, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !279, file: !280, line: 122, baseType: !299, size: 64, offset: 448)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !279, file: !280, line: 123, baseType: !299, size: 64, offset: 512)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !279, file: !280, line: 124, baseType: !299, size: 64, offset: 576)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !279, file: !280, line: 125, baseType: !299, size: 64, offset: 640)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !279, file: !280, line: 127, baseType: !43, size: 8, offset: 704)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !279, file: !280, line: 129, baseType: !310, size: 64, offset: 768)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !312, line: 195, size: 1728, elements: !313)
!312 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!313 = !{!314, !315, !320, !333, !342, !345, !347, !354, !355, !356, !357, !360, !361, !362, !364, !365, !409, !430}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !311, file: !312, line: 196, baseType: !226, size: 32)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !311, file: !312, line: 197, baseType: !316, size: 32, offset: 32)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !312, line: 28, baseType: !317)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !30, line: 104, baseType: !318)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !40, line: 20, baseType: !319)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !42, line: 26, baseType: !34)
!320 = !DIDerivedType(tag: DW_TAG_member, scope: !311, file: !312, line: 198, baseType: !321, size: 192, offset: 64)
!321 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !311, file: !312, line: 198, size: 192, elements: !322)
!322 = !{!323, !324}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !321, file: !312, line: 199, baseType: !54, size: 128)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !321, file: !312, line: 200, baseType: !325, size: 192, align: 64)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !326, line: 5, size: 192, align: 64, elements: !327)
!326 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!327 = !{!328, !330, !332}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !325, file: !326, line: 6, baseType: !329, size: 64)
!329 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !325, file: !326, line: 7, baseType: !331, size: 64, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !325, file: !326, line: 8, baseType: !331, size: 64, offset: 128)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !311, file: !312, line: 205, baseType: !334, size: 320, offset: 256)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !335, line: 48, size: 320, elements: !336)
!335 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!336 = !{!337, !338, !339, !340, !341}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !334, file: !335, line: 49, baseType: !169, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !334, file: !335, line: 55, baseType: !169, size: 64, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !334, file: !335, line: 57, baseType: !185, size: 32, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !334, file: !335, line: 59, baseType: !16, size: 32, offset: 160)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !334, file: !335, line: 60, baseType: !54, size: 128, offset: 192)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !311, file: !312, line: 206, baseType: !343, size: 64, offset: 576)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !312, line: 206, flags: DIFlagFwdDecl)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !311, file: !312, line: 207, baseType: !346, size: 64, offset: 640)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, scope: !311, file: !312, line: 208, baseType: !348, size: 64, offset: 704)
!348 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !311, file: !312, line: 208, size: 64, elements: !349)
!349 = !{!350, !353}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !348, file: !312, line: 209, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !352, line: 8, baseType: !176)
!352 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!353 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !348, file: !312, line: 210, baseType: !351, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !311, file: !312, line: 212, baseType: !351, size: 64, offset: 768)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !311, file: !312, line: 213, baseType: !267, size: 32, offset: 832)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !311, file: !312, line: 214, baseType: !285, size: 32, offset: 864)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !311, file: !312, line: 215, baseType: !358, size: 32, offset: 896)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !312, line: 31, baseType: !359)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !30, line: 110, baseType: !131)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !311, file: !312, line: 216, baseType: !51, size: 16, offset: 928)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !311, file: !312, line: 217, baseType: !51, size: 16, offset: 944)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !311, file: !312, line: 221, baseType: !363, size: 16, offset: 960)
!363 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !311, file: !312, line: 228, baseType: !329, size: 64, offset: 1024)
!365 = !DIDerivedType(tag: DW_TAG_member, scope: !311, file: !312, line: 245, baseType: !366, size: 320, offset: 1088)
!366 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !311, file: !312, line: 245, size: 320, elements: !367)
!367 = !{!368, !400}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !366, file: !312, line: 246, baseType: !369, size: 320)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !312, line: 114, size: 320, elements: !370)
!370 = !{!371, !372, !385, !388, !397}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !369, file: !312, line: 116, baseType: !329, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, scope: !369, file: !312, line: 117, baseType: !373, size: 64, offset: 64)
!373 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !369, file: !312, line: 117, size: 64, elements: !374)
!374 = !{!375, !384}
!375 = !DIDerivedType(tag: DW_TAG_member, scope: !373, file: !312, line: 118, baseType: !376, size: 64)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !373, file: !312, line: 118, size: 64, elements: !377)
!377 = !{!378, !379}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !376, file: !312, line: 120, baseType: !49, size: 16)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !376, file: !312, line: 121, baseType: !380, size: 48, offset: 16)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 48, elements: !382)
!381 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!382 = !{!383}
!383 = !DISubrange(count: 6)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !373, file: !312, line: 127, baseType: !329, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !369, file: !312, line: 129, baseType: !386, size: 64, offset: 128)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !312, line: 102, flags: DIFlagFwdDecl)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !369, file: !312, line: 130, baseType: !389, size: 64, offset: 192)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !312, line: 108, size: 192, elements: !391)
!391 = !{!392, !393, !394}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !390, file: !312, line: 109, baseType: !148, size: 128, align: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !390, file: !312, line: 110, baseType: !226, size: 32, offset: 128)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !390, file: !312, line: 111, baseType: !395, size: 8, offset: 160)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !30, line: 35, baseType: !396)
!396 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !369, file: !312, line: 131, baseType: !398, size: 64, offset: 256)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !381)
!400 = !DIDerivedType(tag: DW_TAG_member, scope: !366, file: !312, line: 247, baseType: !401, size: 320)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !366, file: !312, line: 247, size: 320, elements: !402)
!402 = !{!403, !404, !405, !406, !407}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !401, file: !312, line: 248, baseType: !329, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !401, file: !312, line: 249, baseType: !329, size: 64, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !401, file: !312, line: 250, baseType: !386, size: 64, offset: 128)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !401, file: !312, line: 251, baseType: !389, size: 64, offset: 192)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !401, file: !312, line: 252, baseType: !408, size: 64, offset: 256)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, scope: !311, file: !312, line: 260, baseType: !410, size: 256, offset: 1408)
!410 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !311, file: !312, line: 260, size: 256, elements: !411)
!411 = !{!412, !418}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !410, file: !312, line: 261, baseType: !413, size: 256)
!413 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !312, line: 134, size: 256, elements: !414)
!414 = !{!415, !416}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !413, file: !312, line: 135, baseType: !346, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !413, file: !312, line: 136, baseType: !417, size: 256)
!417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !346, size: 256, elements: !244)
!418 = !DIDerivedType(tag: DW_TAG_member, scope: !410, file: !312, line: 262, baseType: !419, size: 256)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !410, file: !312, line: 262, size: 256, elements: !420)
!420 = !{!421, !422}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !419, file: !312, line: 264, baseType: !54, size: 128)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !419, file: !312, line: 265, baseType: !423, size: 128, offset: 128)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !424, line: 22, size: 128, elements: !425)
!424 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!425 = !{!426, !429}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !423, file: !424, line: 23, baseType: !427, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !424, line: 23, flags: DIFlagFwdDecl)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !423, file: !424, line: 24, baseType: !329, size: 64, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !311, file: !312, line: 280, baseType: !431, size: 64, offset: 1664)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !312, line: 176, size: 192, elements: !433)
!433 = !{!434, !443, !444}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !432, file: !312, line: 177, baseType: !435, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !312, line: 171, baseType: !436)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DISubroutineType(types: !438)
!438 = !{!34, !310, !439, !441, !310}
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !387)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !413)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !432, file: !312, line: 178, baseType: !310, size: 64, offset: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !432, file: !312, line: 179, baseType: !386, size: 64, offset: 128)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !279, file: !280, line: 130, baseType: !310, size: 64, offset: 832)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !279, file: !280, line: 131, baseType: !310, size: 64, offset: 896)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !279, file: !280, line: 132, baseType: !310, size: 64, offset: 960)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !279, file: !280, line: 135, baseType: !346, size: 64, offset: 1024)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !279, file: !280, line: 137, baseType: !450, size: 64, offset: 1088)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !452, line: 14, size: 1088, elements: !453)
!452 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!453 = !{!454, !455, !464, !465, !466, !467, !468, !469}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !451, file: !452, line: 15, baseType: !226, size: 32)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !451, file: !452, line: 17, baseType: !456, size: 320, offset: 64)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !457, line: 22, size: 320, elements: !458)
!457 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!458 = !{!459, !460, !461, !462}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !456, file: !457, line: 23, baseType: !16, size: 32)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !456, file: !457, line: 24, baseType: !175, size: 64, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !456, file: !457, line: 26, baseType: !54, size: 128, offset: 128)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !456, file: !457, line: 28, baseType: !463, size: 64, offset: 256)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !451, file: !452, line: 19, baseType: !329, size: 64, offset: 384)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !451, file: !452, line: 20, baseType: !169, size: 64, offset: 448)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !451, file: !452, line: 23, baseType: !239, size: 128, offset: 512)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !451, file: !452, line: 24, baseType: !267, size: 32, offset: 640)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !451, file: !452, line: 29, baseType: !169, size: 64, offset: 704)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !451, file: !452, line: 36, baseType: !470, size: 320, offset: 768)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !471, line: 15, size: 320, elements: !472)
!471 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!472 = !{!473, !474, !475, !476, !477, !478, !479}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !470, file: !471, line: 16, baseType: !16, size: 32)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !470, file: !471, line: 18, baseType: !34, size: 32, offset: 32)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !470, file: !471, line: 19, baseType: !34, size: 32, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !470, file: !471, line: 20, baseType: !34, size: 32, offset: 96)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !470, file: !471, line: 21, baseType: !34, size: 32, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !470, file: !471, line: 22, baseType: !329, size: 64, offset: 192)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !470, file: !471, line: 23, baseType: !329, size: 64, offset: 256)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !279, file: !280, line: 138, baseType: !481, size: 64, offset: 1152)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !268, line: 18, flags: DIFlagFwdDecl)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !279, file: !280, line: 139, baseType: !484, size: 64, offset: 1216)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !486, line: 16, flags: DIFlagFwdDecl)
!486 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!487 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !279, file: !280, line: 140, baseType: !488, size: 64, offset: 1280)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !280, line: 25, size: 64, elements: !490)
!490 = !{!491, !492, !493}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !489, file: !280, line: 26, baseType: !29, size: 32)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !489, file: !280, line: 27, baseType: !34, size: 32, offset: 32)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !489, file: !280, line: 28, baseType: !494, offset: 64)
!494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, elements: !263)
!495 = !DIDerivedType(tag: DW_TAG_member, scope: !279, file: !280, line: 142, baseType: !496, size: 128, offset: 1344)
!496 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !279, file: !280, line: 142, size: 128, elements: !497)
!497 = !{!498, !499}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !496, file: !280, line: 143, baseType: !34, size: 32)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !496, file: !280, line: 144, baseType: !148, size: 128, align: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !136, file: !78, line: 1013, baseType: !501, size: 256, offset: 960)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !78, line: 970, size: 256, elements: !502)
!502 = !{!503, !504, !505, !506, !507, !508}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !501, file: !78, line: 971, baseType: !329, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !501, file: !78, line: 972, baseType: !10, size: 32, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !501, file: !78, line: 973, baseType: !10, size: 32, offset: 96)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !501, file: !78, line: 974, baseType: !10, size: 32, offset: 128)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !501, file: !78, line: 975, baseType: !10, size: 32, offset: 160)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !501, file: !78, line: 976, baseType: !191, size: 64, offset: 192)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !136, file: !78, line: 1014, baseType: !510, size: 128, offset: 1216)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !511, line: 8, size: 128, elements: !512)
!511 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!512 = !{!513, !3201}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !510, file: !511, line: 9, baseType: !514, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !516, line: 70, size: 256, elements: !517)
!516 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!517 = !{!518, !3198, !3199, !3200}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !515, file: !516, line: 71, baseType: !519, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !113, line: 82, size: 1536, elements: !521)
!521 = !{!522, !523, !533, !541, !542, !557, !3165, !3167, !3180, !3181, !3182, !3183, !3184, !3190, !3191, !3192}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !520, file: !113, line: 84, baseType: !10, size: 32)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !520, file: !113, line: 85, baseType: !524, size: 32, offset: 32)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !525, line: 275, baseType: !526)
!525 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !525, line: 275, size: 32, elements: !527)
!527 = !{!528}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !526, file: !525, line: 275, baseType: !529, size: 32)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !525, line: 69, baseType: !530)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !525, line: 64, size: 32, elements: !531)
!531 = !{!532}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !530, file: !525, line: 65, baseType: !10, size: 32)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !520, file: !113, line: 86, baseType: !534, size: 128, offset: 64)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !535, line: 38, size: 128, elements: !536)
!535 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!536 = !{!537, !539}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !534, file: !535, line: 39, baseType: !538, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !534, file: !535, line: 39, baseType: !540, size: 64, offset: 64)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !520, file: !113, line: 87, baseType: !519, size: 64, offset: 192)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !520, file: !113, line: 88, baseType: !543, size: 128, offset: 256)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !113, line: 49, size: 128, elements: !544)
!544 = !{!545, !554}
!545 = !DIDerivedType(tag: DW_TAG_member, scope: !543, file: !113, line: 50, baseType: !546, size: 64)
!546 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !543, file: !113, line: 50, size: 64, elements: !547)
!547 = !{!548, !553}
!548 = !DIDerivedType(tag: DW_TAG_member, scope: !546, file: !113, line: 51, baseType: !549, size: 64)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !546, file: !113, line: 51, size: 64, elements: !550)
!550 = !{!551, !552}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !549, file: !113, line: 52, baseType: !131, size: 32)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !549, file: !113, line: 52, baseType: !131, size: 32, offset: 32)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !546, file: !113, line: 54, baseType: !123, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !543, file: !113, line: 56, baseType: !555, size: 64, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !520, file: !113, line: 89, baseType: !558, size: 64, offset: 384)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !78, line: 641, size: 4800, elements: !560)
!560 = !{!561, !563, !564, !565, !566, !567, !568, !571, !572, !770, !2923, !2924, !2925, !2926, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2955, !2956, !2957, !2958, !2959, !2960, !2961, !3147, !3150, !3151, !3152, !3161, !3162, !3163, !3164}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !559, file: !78, line: 642, baseType: !562, size: 16)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !30, line: 24, baseType: !51)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !559, file: !78, line: 643, baseType: !51, size: 16, offset: 16)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !559, file: !78, line: 644, baseType: !267, size: 32, offset: 32)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !559, file: !78, line: 645, baseType: !54, size: 128, offset: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !559, file: !78, line: 646, baseType: !285, size: 32, offset: 192)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !559, file: !78, line: 647, baseType: !10, size: 32, offset: 224)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !559, file: !78, line: 650, baseType: !569, size: 64, offset: 256)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !78, line: 607, flags: DIFlagFwdDecl)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !559, file: !78, line: 651, baseType: !569, size: 64, offset: 320)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !559, file: !78, line: 654, baseType: !573, size: 64, offset: 384)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !575)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !78, line: 1966, size: 2048, align: 512, elements: !576)
!576 = !{!577, !581, !594, !600, !604, !608, !612, !616, !620, !624, !628, !629, !635, !639, !677, !708, !718, !724, !728, !732, !736, !740, !744, !750, !754}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !575, file: !78, line: 1967, baseType: !578, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DISubroutineType(types: !580)
!580 = !{!519, !558, !519, !10}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !575, file: !78, line: 1968, baseType: !582, size: 64, offset: 64)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DISubroutineType(types: !584)
!584 = !{!398, !519, !558, !585}
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !587, line: 10, size: 128, elements: !588)
!587 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!588 = !{!589, !593}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !586, file: !587, line: 11, baseType: !590, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{null, !346}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !586, file: !587, line: 12, baseType: !346, size: 64, offset: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !575, file: !78, line: 1969, baseType: !595, size: 64, offset: 128)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DISubroutineType(types: !597)
!597 = !{!34, !598, !558, !34}
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !300, line: 42, flags: DIFlagFwdDecl)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !575, file: !78, line: 1970, baseType: !601, size: 64, offset: 192)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{!569, !558, !34, !395}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !575, file: !78, line: 1972, baseType: !605, size: 64, offset: 256)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{!34, !519, !408, !34}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !575, file: !78, line: 1974, baseType: !609, size: 64, offset: 320)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DISubroutineType(types: !611)
!611 = !{!34, !598, !558, !519, !562, !395}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !575, file: !78, line: 1976, baseType: !613, size: 64, offset: 384)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DISubroutineType(types: !615)
!615 = !{!34, !519, !558, !519}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !575, file: !78, line: 1977, baseType: !617, size: 64, offset: 448)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DISubroutineType(types: !619)
!619 = !{!34, !558, !519}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !575, file: !78, line: 1978, baseType: !621, size: 64, offset: 512)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DISubroutineType(types: !623)
!623 = !{!34, !598, !558, !519, !398}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !575, file: !78, line: 1980, baseType: !625, size: 64, offset: 576)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DISubroutineType(types: !627)
!627 = !{!34, !598, !558, !519, !562}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !575, file: !78, line: 1982, baseType: !617, size: 64, offset: 640)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !575, file: !78, line: 1983, baseType: !630, size: 64, offset: 704)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{!34, !598, !558, !519, !562, !633}
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !30, line: 21, baseType: !634)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !30, line: 18, baseType: !131)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !575, file: !78, line: 1985, baseType: !636, size: 64, offset: 768)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DISubroutineType(types: !638)
!638 = !{!34, !598, !558, !519, !558, !519, !10}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !575, file: !78, line: 1987, baseType: !640, size: 64, offset: 832)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DISubroutineType(types: !642)
!642 = !{!34, !598, !519, !643}
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !78, line: 226, size: 640, elements: !645)
!645 = !{!646, !647, !648, !658, !667, !668, !674, !675, !676}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !644, file: !78, line: 227, baseType: !10, size: 32)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !644, file: !78, line: 228, baseType: !562, size: 16, offset: 32)
!648 = !DIDerivedType(tag: DW_TAG_member, scope: !644, file: !78, line: 241, baseType: !649, size: 32, offset: 64)
!649 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !644, file: !78, line: 241, size: 32, elements: !650)
!650 = !{!651, !652}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !649, file: !78, line: 242, baseType: !267, size: 32)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !649, file: !78, line: 243, baseType: !653, size: 32)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !654, line: 16, baseType: !655)
!654 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !654, line: 14, size: 32, elements: !656)
!656 = !{!657}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !655, file: !654, line: 15, baseType: !272, size: 32)
!658 = !DIDerivedType(tag: DW_TAG_member, scope: !644, file: !78, line: 245, baseType: !659, size: 32, offset: 96)
!659 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !644, file: !78, line: 245, size: 32, elements: !660)
!660 = !{!661, !662}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !659, file: !78, line: 246, baseType: !285, size: 32)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !659, file: !78, line: 247, baseType: !663, size: 32)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !654, line: 20, baseType: !664)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !654, line: 18, size: 32, elements: !665)
!665 = !{!666}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !664, file: !654, line: 19, baseType: !289, size: 32)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !644, file: !78, line: 249, baseType: !191, size: 64, offset: 128)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !644, file: !78, line: 250, baseType: !669, size: 128, offset: 192)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !352, line: 13, size: 128, elements: !670)
!670 = !{!671, !672}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !669, file: !352, line: 14, baseType: !351, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !669, file: !352, line: 15, baseType: !673, size: 64, offset: 64)
!673 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !644, file: !78, line: 251, baseType: !669, size: 128, offset: 320)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !644, file: !78, line: 252, baseType: !669, size: 128, offset: 448)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !644, file: !78, line: 259, baseType: !135, size: 64, offset: 576)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !575, file: !78, line: 1988, baseType: !678, size: 64, offset: 896)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DISubroutineType(types: !680)
!680 = !{!34, !598, !681, !683, !131, !10}
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !510)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !685, line: 22, size: 1280, elements: !686)
!685 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!686 = !{!687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !684, file: !685, line: 23, baseType: !131, size: 32)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !684, file: !685, line: 24, baseType: !562, size: 16, offset: 32)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !684, file: !685, line: 25, baseType: !10, size: 32, offset: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !684, file: !685, line: 26, baseType: !359, size: 32, offset: 96)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !684, file: !685, line: 27, baseType: !123, size: 64, offset: 128)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !684, file: !685, line: 28, baseType: !123, size: 64, offset: 192)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !684, file: !685, line: 41, baseType: !123, size: 64, offset: 256)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !684, file: !685, line: 42, baseType: !633, size: 32, offset: 320)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !684, file: !685, line: 43, baseType: !633, size: 32, offset: 352)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !684, file: !685, line: 44, baseType: !267, size: 32, offset: 384)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !684, file: !685, line: 45, baseType: !285, size: 32, offset: 416)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !684, file: !685, line: 46, baseType: !191, size: 64, offset: 448)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !684, file: !685, line: 47, baseType: !669, size: 128, offset: 512)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !684, file: !685, line: 48, baseType: !669, size: 128, offset: 640)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !684, file: !685, line: 49, baseType: !669, size: 128, offset: 768)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !684, file: !685, line: 50, baseType: !669, size: 128, offset: 896)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !684, file: !685, line: 51, baseType: !123, size: 64, offset: 1024)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !684, file: !685, line: 52, baseType: !123, size: 64, offset: 1088)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !684, file: !685, line: 53, baseType: !131, size: 32, offset: 1152)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !684, file: !685, line: 54, baseType: !131, size: 32, offset: 1184)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !684, file: !685, line: 55, baseType: !123, size: 64, offset: 1216)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !575, file: !78, line: 1990, baseType: !709, size: 64, offset: 960)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DISubroutineType(types: !711)
!711 = !{!712, !519, !408, !715}
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !30, line: 66, baseType: !713)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !193, line: 73, baseType: !714)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !193, line: 15, baseType: !673)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !30, line: 61, baseType: !716)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !193, line: 72, baseType: !717)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !193, line: 16, baseType: !329)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !575, file: !78, line: 1991, baseType: !719, size: 64, offset: 1024)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DISubroutineType(types: !721)
!721 = !{!34, !558, !722, !123, !123}
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !78, line: 55, flags: DIFlagFwdDecl)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !575, file: !78, line: 1993, baseType: !725, size: 64, offset: 1088)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DISubroutineType(types: !727)
!727 = !{!34, !558, !34}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !575, file: !78, line: 1994, baseType: !729, size: 64, offset: 1152)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DISubroutineType(types: !731)
!731 = !{!34, !558, !519, !135, !10, !562}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !575, file: !78, line: 1997, baseType: !733, size: 64, offset: 1216)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{!34, !598, !558, !135, !562}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !575, file: !78, line: 1999, baseType: !737, size: 64, offset: 1280)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{!569, !598, !519, !34}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !575, file: !78, line: 2001, baseType: !741, size: 64, offset: 1344)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{!34, !598, !519, !569, !34}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !575, file: !78, line: 2003, baseType: !745, size: 64, offset: 1408)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{!34, !598, !519, !748}
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !78, line: 76, flags: DIFlagFwdDecl)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !575, file: !78, line: 2005, baseType: !751, size: 64, offset: 1472)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DISubroutineType(types: !753)
!753 = !{!34, !519, !748}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !575, file: !78, line: 2006, baseType: !755, size: 64, offset: 1536)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DISubroutineType(types: !757)
!757 = !{!758, !558}
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !78, line: 3192, size: 192, elements: !760)
!760 = !{!761, !769}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !759, file: !78, line: 3193, baseType: !762, size: 128)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !763, line: 296, size: 128, elements: !764)
!763 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!764 = !{!765, !766, !768}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !762, file: !763, line: 297, baseType: !158, size: 32)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !762, file: !763, line: 299, baseType: !767, size: 32, offset: 32)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !30, line: 154, baseType: !10)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !762, file: !763, line: 300, baseType: !346, size: 64, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !759, file: !78, line: 3194, baseType: !131, size: 32, offset: 128)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !559, file: !78, line: 655, baseType: !771, size: 64, offset: 448)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !78, line: 1190, size: 10752, elements: !773)
!773 = !{!774, !775, !776, !777, !778, !779, !821, !959, !999, !1082, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1099, !1103, !1104, !1107, !1110, !1113, !1116, !1117, !1118, !1159, !2796, !2797, !2798, !2799, !2800, !2801, !2804, !2806, !2813, !2814, !2815, !2816, !2875, !2890, !2891, !2892, !2893, !2894, !2897, !2898, !2899, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !772, file: !78, line: 1191, baseType: !54, size: 128)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !772, file: !78, line: 1192, baseType: !633, size: 32, offset: 128)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !772, file: !78, line: 1193, baseType: !43, size: 8, offset: 160)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !772, file: !78, line: 1194, baseType: !329, size: 64, offset: 192)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !772, file: !78, line: 1195, baseType: !191, size: 64, offset: 256)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !772, file: !78, line: 1196, baseType: !780, size: 64, offset: 320)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !78, line: 2366, size: 576, elements: !782)
!782 = !{!783, !784, !785, !791, !795, !799, !803, !807, !808, !809, !813, !814, !815, !817, !818, !819, !820}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !781, file: !78, line: 2367, baseType: !398, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !781, file: !78, line: 2368, baseType: !34, size: 32, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !781, file: !78, line: 2376, baseType: !786, size: 64, offset: 128)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DISubroutineType(types: !788)
!788 = !{!34, !789}
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !516, line: 21, flags: DIFlagFwdDecl)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !781, file: !78, line: 2377, baseType: !792, size: 64, offset: 192)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !794)
!794 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !78, line: 75, flags: DIFlagFwdDecl)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !781, file: !78, line: 2378, baseType: !796, size: 64, offset: 256)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DISubroutineType(types: !798)
!798 = !{!519, !780, !34, !398, !346}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !781, file: !78, line: 2380, baseType: !800, size: 64, offset: 320)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DISubroutineType(types: !802)
!802 = !{null, !771}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !781, file: !78, line: 2381, baseType: !804, size: 64, offset: 384)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !806, line: 103, flags: DIFlagFwdDecl)
!806 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec86911224c4b764298f6e976616738c")
!807 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !781, file: !78, line: 2382, baseType: !780, size: 64, offset: 448)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !781, file: !78, line: 2383, baseType: !235, size: 64, offset: 512)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !781, file: !78, line: 2385, baseType: !810, offset: 576)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !811, line: 206, elements: !812)
!811 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!812 = !{}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !781, file: !78, line: 2386, baseType: !810, offset: 576)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !781, file: !78, line: 2387, baseType: !810, offset: 576)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !781, file: !78, line: 2388, baseType: !816, offset: 576)
!816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !810, elements: !218)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !781, file: !78, line: 2390, baseType: !810, offset: 576)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !781, file: !78, line: 2391, baseType: !810, offset: 576)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !781, file: !78, line: 2392, baseType: !810, offset: 576)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !781, file: !78, line: 2393, baseType: !810, offset: 576)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !772, file: !78, line: 1197, baseType: !822, size: 64, offset: 384)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !824)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !78, line: 2057, size: 1664, elements: !825)
!825 = !{!826, !830, !834, !835, !839, !845, !849, !850, !851, !855, !859, !863, !864, !865, !871, !876, !877, !884, !885, !886, !887, !891, !895, !942, !957, !958}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !824, file: !78, line: 2058, baseType: !827, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DISubroutineType(types: !829)
!829 = !{!558, !771}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !824, file: !78, line: 2059, baseType: !831, size: 64, offset: 64)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DISubroutineType(types: !833)
!833 = !{null, !558}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !824, file: !78, line: 2060, baseType: !831, size: 64, offset: 128)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !824, file: !78, line: 2062, baseType: !836, size: 64, offset: 192)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DISubroutineType(types: !838)
!838 = !{null, !558, !34}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !824, file: !78, line: 2063, baseType: !840, size: 64, offset: 256)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DISubroutineType(types: !842)
!842 = !{!34, !558, !843}
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !78, line: 309, flags: DIFlagFwdDecl)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !824, file: !78, line: 2064, baseType: !846, size: 64, offset: 320)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DISubroutineType(types: !848)
!848 = !{!34, !558}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !824, file: !78, line: 2065, baseType: !831, size: 64, offset: 384)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !824, file: !78, line: 2066, baseType: !800, size: 64, offset: 448)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !824, file: !78, line: 2067, baseType: !852, size: 64, offset: 512)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DISubroutineType(types: !854)
!854 = !{!34, !771, !34}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !824, file: !78, line: 2068, baseType: !856, size: 64, offset: 576)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DISubroutineType(types: !858)
!858 = !{!34, !771, !77}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !824, file: !78, line: 2069, baseType: !860, size: 64, offset: 640)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DISubroutineType(types: !862)
!862 = !{!34, !771}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !824, file: !78, line: 2070, baseType: !856, size: 64, offset: 704)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !824, file: !78, line: 2071, baseType: !860, size: 64, offset: 768)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !824, file: !78, line: 2072, baseType: !866, size: 64, offset: 832)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DISubroutineType(types: !868)
!868 = !{!34, !519, !869}
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !78, line: 62, flags: DIFlagFwdDecl)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !824, file: !78, line: 2073, baseType: !872, size: 64, offset: 896)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DISubroutineType(types: !874)
!874 = !{!34, !771, !875, !408}
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !824, file: !78, line: 2074, baseType: !800, size: 64, offset: 960)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !824, file: !78, line: 2076, baseType: !878, size: 64, offset: 1024)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DISubroutineType(types: !880)
!880 = !{!34, !881, !519}
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !883, line: 66, flags: DIFlagFwdDecl)
!883 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!884 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !824, file: !78, line: 2077, baseType: !878, size: 64, offset: 1088)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !824, file: !78, line: 2078, baseType: !878, size: 64, offset: 1152)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !824, file: !78, line: 2079, baseType: !878, size: 64, offset: 1216)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !824, file: !78, line: 2081, baseType: !888, size: 64, offset: 1280)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DISubroutineType(types: !890)
!890 = !{!712, !771, !34, !408, !715, !191}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !824, file: !78, line: 2082, baseType: !892, size: 64, offset: 1344)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DISubroutineType(types: !894)
!894 = !{!712, !771, !34, !398, !715, !191}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !824, file: !78, line: 2083, baseType: !896, size: 64, offset: 1408)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DISubroutineType(types: !898)
!898 = !{!899, !558}
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !83, line: 296, size: 1664, elements: !902)
!902 = !{!903, !904, !905, !906, !907, !908, !909, !910, !911, !927, !928, !929}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !901, file: !83, line: 297, baseType: !239, size: 128)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !901, file: !83, line: 298, baseType: !54, size: 128, offset: 128)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !901, file: !83, line: 299, baseType: !54, size: 128, offset: 256)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !901, file: !83, line: 300, baseType: !54, size: 128, offset: 384)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !901, file: !83, line: 301, baseType: !179, size: 256, offset: 512)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !901, file: !83, line: 302, baseType: !158, size: 32, offset: 768)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !901, file: !83, line: 303, baseType: !29, size: 32, offset: 800)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !901, file: !83, line: 304, baseType: !771, size: 64, offset: 832)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !901, file: !83, line: 305, baseType: !912, size: 64, offset: 896)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !83, line: 68, size: 64, elements: !913)
!913 = !{!914, !926}
!914 = !DIDerivedType(tag: DW_TAG_member, scope: !912, file: !83, line: 69, baseType: !915, size: 32)
!915 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !912, file: !83, line: 69, size: 32, elements: !916)
!916 = !{!917, !918, !919}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !915, file: !83, line: 70, baseType: !267, size: 32)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !915, file: !83, line: 71, baseType: !285, size: 32)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !915, file: !83, line: 72, baseType: !920, size: 32)
!920 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !921, line: 24, baseType: !922)
!921 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !921, line: 22, size: 32, elements: !923)
!923 = !{!924}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !922, file: !921, line: 23, baseType: !925, size: 32)
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !921, line: 20, baseType: !273)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !912, file: !83, line: 74, baseType: !82, size: 32, offset: 32)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !901, file: !83, line: 306, baseType: !191, size: 64, offset: 960)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !901, file: !83, line: 307, baseType: !329, size: 64, offset: 1024)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !901, file: !83, line: 308, baseType: !930, size: 576, offset: 1088)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !83, line: 205, size: 576, elements: !931)
!931 = !{!932, !934, !935, !936, !937, !938, !939, !940, !941}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !930, file: !83, line: 206, baseType: !933, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !83, line: 66, baseType: !177)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !930, file: !83, line: 207, baseType: !933, size: 64, offset: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !930, file: !83, line: 208, baseType: !933, size: 64, offset: 128)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !930, file: !83, line: 209, baseType: !933, size: 64, offset: 192)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !930, file: !83, line: 210, baseType: !933, size: 64, offset: 256)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !930, file: !83, line: 211, baseType: !933, size: 64, offset: 320)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !930, file: !83, line: 212, baseType: !933, size: 64, offset: 384)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !930, file: !83, line: 213, baseType: !351, size: 64, offset: 448)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !930, file: !83, line: 214, baseType: !351, size: 64, offset: 512)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !824, file: !78, line: 2085, baseType: !943, size: 64, offset: 1472)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DISubroutineType(types: !945)
!945 = !{!673, !771, !946}
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !948, line: 15, size: 256, elements: !949)
!948 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!949 = !{!950, !951, !952, !953, !954}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !947, file: !948, line: 16, baseType: !767, size: 32)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !947, file: !948, line: 19, baseType: !34, size: 32, offset: 32)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !947, file: !948, line: 26, baseType: !329, size: 64, offset: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !947, file: !948, line: 33, baseType: !329, size: 64, offset: 128)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !947, file: !948, line: 36, baseType: !955, size: 64, offset: 192)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !948, line: 36, flags: DIFlagFwdDecl)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !824, file: !78, line: 2087, baseType: !943, size: 64, offset: 1536)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !824, file: !78, line: 2089, baseType: !800, size: 64, offset: 1600)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !772, file: !78, line: 1198, baseType: !960, size: 64, offset: 448)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !962)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !83, line: 324, size: 704, elements: !963)
!963 = !{!964, !968, !972, !976, !977, !978, !979, !980, !985, !990, !994}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !962, file: !83, line: 325, baseType: !965, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DISubroutineType(types: !967)
!967 = !{!34, !900}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !962, file: !83, line: 326, baseType: !969, size: 64, offset: 64)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DISubroutineType(types: !971)
!971 = !{!900, !771, !34}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !962, file: !83, line: 327, baseType: !973, size: 64, offset: 128)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DISubroutineType(types: !975)
!975 = !{null, !900}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !962, file: !83, line: 328, baseType: !965, size: 64, offset: 192)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !962, file: !83, line: 329, baseType: !965, size: 64, offset: 256)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !962, file: !83, line: 330, baseType: !965, size: 64, offset: 320)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !962, file: !83, line: 331, baseType: !852, size: 64, offset: 384)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !962, file: !83, line: 334, baseType: !981, size: 64, offset: 448)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DISubroutineType(types: !983)
!983 = !{!984, !558}
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !962, file: !83, line: 335, baseType: !986, size: 64, offset: 512)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DISubroutineType(types: !988)
!988 = !{!34, !558, !989}
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !962, file: !83, line: 337, baseType: !991, size: 64, offset: 576)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DISubroutineType(types: !993)
!993 = !{!34, !558, !984}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !962, file: !83, line: 339, baseType: !995, size: 64, offset: 640)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DISubroutineType(types: !997)
!997 = !{!34, !771, !998}
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !772, file: !78, line: 1199, baseType: !1000, size: 64, offset: 512)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1002)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !83, line: 430, size: 704, elements: !1003)
!1003 = !{!1004, !1008, !1009, !1013, !1014, !1015, !1030, !1053, !1057, !1058, !1081}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1002, file: !83, line: 431, baseType: !1005, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{!34, !771, !34, !34, !681}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1002, file: !83, line: 432, baseType: !852, size: 64, offset: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1002, file: !83, line: 433, baseType: !1010, size: 64, offset: 128)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!34, !771, !10}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1002, file: !83, line: 434, baseType: !1010, size: 64, offset: 192)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1002, file: !83, line: 435, baseType: !852, size: 64, offset: 256)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1002, file: !83, line: 436, baseType: !1016, size: 64, offset: 320)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{!34, !771, !34, !1019}
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !83, line: 417, size: 256, elements: !1021)
!1021 = !{!1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1020, file: !83, line: 418, baseType: !34, size: 32)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1020, file: !83, line: 419, baseType: !10, size: 32, offset: 32)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1020, file: !83, line: 420, baseType: !10, size: 32, offset: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1020, file: !83, line: 422, baseType: !10, size: 32, offset: 96)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1020, file: !83, line: 423, baseType: !10, size: 32, offset: 128)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1020, file: !83, line: 424, baseType: !10, size: 32, offset: 160)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1020, file: !83, line: 425, baseType: !10, size: 32, offset: 192)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1020, file: !83, line: 426, baseType: !10, size: 32, offset: 224)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1002, file: !83, line: 437, baseType: !1031, size: 64, offset: 384)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!34, !771, !912, !1034}
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !83, line: 345, size: 960, elements: !1036)
!1036 = !{!1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1035, file: !83, line: 346, baseType: !34, size: 32)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1035, file: !83, line: 347, baseType: !123, size: 64, offset: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1035, file: !83, line: 348, baseType: !123, size: 64, offset: 128)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1035, file: !83, line: 349, baseType: !123, size: 64, offset: 192)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1035, file: !83, line: 350, baseType: !123, size: 64, offset: 256)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1035, file: !83, line: 351, baseType: !123, size: 64, offset: 320)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1035, file: !83, line: 352, baseType: !123, size: 64, offset: 384)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1035, file: !83, line: 353, baseType: !175, size: 64, offset: 448)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1035, file: !83, line: 355, baseType: !175, size: 64, offset: 512)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1035, file: !83, line: 356, baseType: !34, size: 32, offset: 576)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1035, file: !83, line: 357, baseType: !34, size: 32, offset: 608)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1035, file: !83, line: 358, baseType: !123, size: 64, offset: 640)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1035, file: !83, line: 359, baseType: !123, size: 64, offset: 704)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1035, file: !83, line: 360, baseType: !123, size: 64, offset: 768)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1035, file: !83, line: 361, baseType: !175, size: 64, offset: 832)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1035, file: !83, line: 362, baseType: !34, size: 32, offset: 896)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1002, file: !83, line: 438, baseType: !1054, size: 64, offset: 448)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!34, !771, !998, !1034}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1002, file: !83, line: 440, baseType: !1031, size: 64, offset: 512)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1002, file: !83, line: 441, baseType: !1059, size: 64, offset: 576)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{!34, !771, !1062}
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !83, line: 411, size: 1408, elements: !1064)
!1064 = !{!1065, !1066}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1063, file: !83, line: 412, baseType: !10, size: 32)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1063, file: !83, line: 413, baseType: !1067, size: 1344, offset: 64)
!1067 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1068, size: 1344, elements: !218)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !83, line: 397, size: 448, elements: !1069)
!1069 = !{!1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1080}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1068, file: !83, line: 398, baseType: !10, size: 32)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1068, file: !83, line: 399, baseType: !10, size: 32, offset: 32)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1068, file: !83, line: 401, baseType: !10, size: 32, offset: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1068, file: !83, line: 402, baseType: !10, size: 32, offset: 96)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1068, file: !83, line: 403, baseType: !10, size: 32, offset: 128)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1068, file: !83, line: 404, baseType: !10, size: 32, offset: 160)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1068, file: !83, line: 405, baseType: !10, size: 32, offset: 192)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1068, file: !83, line: 406, baseType: !125, size: 64, offset: 256)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1068, file: !83, line: 407, baseType: !1079, size: 64, offset: 320)
!1079 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !30, line: 132, baseType: !123)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1068, file: !83, line: 408, baseType: !1079, size: 64, offset: 384)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1002, file: !83, line: 442, baseType: !1010, size: 64, offset: 640)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !772, file: !78, line: 1200, baseType: !1083, size: 64, offset: 576)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1085)
!1085 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !78, line: 54, flags: DIFlagFwdDecl)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !772, file: !78, line: 1201, baseType: !329, size: 64, offset: 640)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !772, file: !78, line: 1202, baseType: !329, size: 64, offset: 704)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !772, file: !78, line: 1203, baseType: !329, size: 64, offset: 768)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !772, file: !78, line: 1204, baseType: !519, size: 64, offset: 832)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !772, file: !78, line: 1205, baseType: !334, size: 320, offset: 896)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !772, file: !78, line: 1206, baseType: !34, size: 32, offset: 1216)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !772, file: !78, line: 1207, baseType: !29, size: 32, offset: 1248)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !772, file: !78, line: 1209, baseType: !346, size: 64, offset: 1280)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !772, file: !78, line: 1211, baseType: !1095, size: 64, offset: 1344)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1098)
!1098 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !78, line: 1211, flags: DIFlagFwdDecl)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !772, file: !78, line: 1223, baseType: !1100, size: 64, offset: 1408)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !535, line: 34, size: 64, elements: !1101)
!1101 = !{!1102}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1100, file: !535, line: 35, baseType: !538, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !772, file: !78, line: 1224, baseType: !54, size: 128, offset: 1472)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !772, file: !78, line: 1225, baseType: !1105, size: 64, offset: 1600)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !78, line: 1225, flags: DIFlagFwdDecl)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !772, file: !78, line: 1226, baseType: !1108, size: 64, offset: 1664)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !78, line: 1226, flags: DIFlagFwdDecl)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !772, file: !78, line: 1227, baseType: !1111, size: 64, offset: 1728)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !78, line: 50, flags: DIFlagFwdDecl)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !772, file: !78, line: 1228, baseType: !1114, size: 64, offset: 1792)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !78, line: 1228, flags: DIFlagFwdDecl)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !772, file: !78, line: 1229, baseType: !239, size: 128, offset: 1856)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !772, file: !78, line: 1230, baseType: !10, size: 32, offset: 1984)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !772, file: !78, line: 1231, baseType: !1119, size: 2496, offset: 2048)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !83, line: 521, size: 2496, elements: !1120)
!1120 = !{!1121, !1122, !1123, !1125, !1157}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1119, file: !83, line: 522, baseType: !10, size: 32)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1119, file: !83, line: 523, baseType: !334, size: 320, offset: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1119, file: !83, line: 524, baseType: !1124, size: 192, offset: 384)
!1124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !558, size: 192, elements: !218)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1119, file: !83, line: 525, baseType: !1126, size: 1728, offset: 576)
!1126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1127, size: 1728, elements: !218)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !83, line: 222, size: 576, elements: !1128)
!1128 = !{!1129, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1127, file: !83, line: 223, baseType: !1130, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !83, line: 445, size: 256, elements: !1132)
!1132 = !{!1133, !1134, !1147, !1148}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1131, file: !83, line: 446, baseType: !34, size: 32)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1131, file: !83, line: 447, baseType: !1135, size: 64, offset: 64)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1137)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !83, line: 312, size: 512, elements: !1138)
!1138 = !{!1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1137, file: !83, line: 313, baseType: !852, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1137, file: !83, line: 314, baseType: !852, size: 64, offset: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1137, file: !83, line: 315, baseType: !852, size: 64, offset: 128)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1137, file: !83, line: 316, baseType: !852, size: 64, offset: 192)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1137, file: !83, line: 317, baseType: !965, size: 64, offset: 256)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1137, file: !83, line: 318, baseType: !965, size: 64, offset: 320)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1137, file: !83, line: 319, baseType: !965, size: 64, offset: 384)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1137, file: !83, line: 320, baseType: !995, size: 64, offset: 448)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1131, file: !83, line: 448, baseType: !804, size: 64, offset: 128)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1131, file: !83, line: 449, baseType: !1130, size: 64, offset: 192)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1127, file: !83, line: 224, baseType: !34, size: 32, offset: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1127, file: !83, line: 226, baseType: !54, size: 128, offset: 128)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1127, file: !83, line: 227, baseType: !329, size: 64, offset: 256)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1127, file: !83, line: 228, baseType: !10, size: 32, offset: 320)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1127, file: !83, line: 229, baseType: !10, size: 32, offset: 352)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1127, file: !83, line: 230, baseType: !933, size: 64, offset: 384)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1127, file: !83, line: 231, baseType: !933, size: 64, offset: 448)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1127, file: !83, line: 232, baseType: !346, size: 64, offset: 512)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1119, file: !83, line: 526, baseType: !1158, size: 192, offset: 2304)
!1158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1135, size: 192, elements: !218)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !772, file: !78, line: 1233, baseType: !1160, size: 2368, offset: 4544)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !78, line: 1184, size: 2368, elements: !1161)
!1161 = !{!1162, !1163, !1164}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1160, file: !78, line: 1185, baseType: !51, size: 16)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1160, file: !78, line: 1186, baseType: !51, size: 16, offset: 16)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1160, file: !78, line: 1187, baseType: !1165, size: 2304, offset: 64)
!1165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1166, size: 2304, elements: !218)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1167, line: 12, size: 768, elements: !1168)
!1167 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1168 = !{!1169, !1177, !1179, !2794, !2795}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1166, file: !1167, line: 13, baseType: !1170, size: 384)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1171, line: 17, size: 384, elements: !1172)
!1171 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1172 = !{!1173, !1174, !1175, !1176}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1170, file: !1171, line: 18, baseType: !34, size: 32)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1170, file: !1171, line: 19, baseType: !34, size: 32, offset: 32)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1170, file: !1171, line: 20, baseType: !248, size: 192, offset: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1170, file: !1171, line: 22, baseType: !148, size: 128, align: 64, offset: 256)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1166, file: !1167, line: 14, baseType: !1178, size: 64, offset: 384)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1166, file: !1167, line: 15, baseType: !1180, size: 64, offset: 448)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1181, line: 16, size: 64, elements: !1182)
!1181 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1182 = !{!1183}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1180, file: !1181, line: 17, baseType: !1184, size: 64)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !883, line: 746, size: 58368, elements: !1186)
!1186 = !{!1187, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1267, !1278, !1373, !1377, !1380, !1411, !1412, !1413, !1414, !1425, !1427, !1428, !1429, !1430, !1431, !1432, !1443, !1444, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1461, !1462, !1469, !1470, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1695, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1743, !1749, !1750, !1751, !1752, !1753, !1757, !1760, !1767, !1772, !1775, !1778, !1781, !1784, !1924, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1966, !1967, !1968, !1977, !1985, !1986, !1987, !1988, !1989, !1994, !1995, !1996, !1999, !2000, !2003, !2006, !2009, !2017, !2020, !2021, !2107, !2108, !2109, !2110, !2111, !2117, !2118, !2119, !2120, !2123, !2124, !2127, !2130, !2131, !2134, !2135, !2136, !2139, !2140, !2141, !2144, !2145, !2146, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2178, !2181, !2450, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2462, !2534, !2536, !2537, !2538, !2539, !2540, !2552, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2569, !2570, !2571}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1185, file: !883, line: 752, baseType: !1188, size: 192)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1189, line: 56, size: 192, elements: !1190)
!1189 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1190 = !{!1191, !1192, !1193, !1194}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1188, file: !1189, line: 57, baseType: !329, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1188, file: !1189, line: 58, baseType: !329, size: 64, offset: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1188, file: !1189, line: 59, baseType: !131, size: 32, offset: 128)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1188, file: !1189, line: 61, baseType: !131, size: 32, offset: 160)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1185, file: !883, line: 754, baseType: !10, size: 32, offset: 192)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1185, file: !883, line: 767, baseType: !346, size: 64, offset: 256)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1185, file: !883, line: 768, baseType: !226, size: 32, offset: 320)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1185, file: !883, line: 770, baseType: !10, size: 32, offset: 352)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1185, file: !883, line: 771, baseType: !10, size: 32, offset: 384)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1185, file: !883, line: 774, baseType: !34, size: 32, offset: 416)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1185, file: !883, line: 775, baseType: !1202, size: 128, offset: 448)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1203, line: 58, size: 128, elements: !1204)
!1203 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1204 = !{!1205, !1206, !1211, !1212}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1202, file: !1203, line: 59, baseType: !142, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, scope: !1202, file: !1203, line: 60, baseType: !1207, size: 32, offset: 64)
!1207 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1202, file: !1203, line: 60, size: 32, elements: !1208)
!1208 = !{!1209, !1210}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1207, file: !1203, line: 61, baseType: !10, size: 32)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1207, file: !1203, line: 62, baseType: !29, size: 32)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1202, file: !1203, line: 65, baseType: !49, size: 16, offset: 96)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1202, file: !1203, line: 65, baseType: !49, size: 16, offset: 112)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1185, file: !883, line: 776, baseType: !10, size: 32, offset: 576)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1185, file: !883, line: 777, baseType: !329, size: 64, offset: 640)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1185, file: !883, line: 778, baseType: !1184, size: 64, offset: 704)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1185, file: !883, line: 787, baseType: !34, size: 32, offset: 768)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1185, file: !883, line: 788, baseType: !34, size: 32, offset: 800)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1185, file: !883, line: 790, baseType: !34, size: 32, offset: 832)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1185, file: !883, line: 792, baseType: !34, size: 32, offset: 864)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1185, file: !883, line: 793, baseType: !34, size: 32, offset: 896)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1185, file: !883, line: 794, baseType: !34, size: 32, offset: 928)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1185, file: !883, line: 795, baseType: !10, size: 32, offset: 960)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1185, file: !883, line: 797, baseType: !1224, size: 2048, offset: 1024)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !883, line: 551, size: 2048, elements: !1225)
!1225 = !{!1226, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1246, !1249, !1250, !1251}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1224, file: !883, line: 553, baseType: !1227, size: 128)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !883, line: 411, size: 128, elements: !1228)
!1228 = !{!1229, !1230}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1227, file: !883, line: 412, baseType: !329, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1227, file: !883, line: 413, baseType: !131, size: 32, offset: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1224, file: !883, line: 554, baseType: !325, size: 192, align: 64, offset: 128)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1224, file: !883, line: 555, baseType: !123, size: 64, offset: 320)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1224, file: !883, line: 556, baseType: !123, size: 64, offset: 384)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1224, file: !883, line: 558, baseType: !54, size: 128, offset: 448)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1224, file: !883, line: 559, baseType: !10, size: 32, offset: 576)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1224, file: !883, line: 561, baseType: !123, size: 64, offset: 640)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1224, file: !883, line: 562, baseType: !123, size: 64, offset: 704)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1224, file: !883, line: 563, baseType: !123, size: 64, offset: 768)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1224, file: !883, line: 564, baseType: !123, size: 64, offset: 832)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1224, file: !883, line: 565, baseType: !175, size: 64, offset: 896)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1224, file: !883, line: 566, baseType: !123, size: 64, offset: 960)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1224, file: !883, line: 568, baseType: !123, size: 64, offset: 1024)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1224, file: !883, line: 571, baseType: !34, size: 32, offset: 1088)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1224, file: !883, line: 572, baseType: !1245, size: 64, offset: 1152)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1224, file: !883, line: 574, baseType: !1247, size: 64, offset: 1216)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !883, line: 49, flags: DIFlagFwdDecl)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1224, file: !883, line: 576, baseType: !1247, size: 64, offset: 1280)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1224, file: !883, line: 578, baseType: !329, size: 64, offset: 1344)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1224, file: !883, line: 588, baseType: !1252, size: 512, align: 512, offset: 1536)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !883, line: 497, size: 512, align: 512, elements: !1253)
!1253 = !{!1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1252, file: !883, line: 498, baseType: !123, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1252, file: !883, line: 499, baseType: !123, size: 64, offset: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1252, file: !883, line: 500, baseType: !123, size: 64, offset: 128)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1252, file: !883, line: 501, baseType: !131, size: 32, offset: 192)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1252, file: !883, line: 502, baseType: !131, size: 32, offset: 224)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1252, file: !883, line: 503, baseType: !329, size: 64, offset: 256)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1252, file: !883, line: 504, baseType: !329, size: 64, offset: 320)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1252, file: !883, line: 505, baseType: !329, size: 64, offset: 384)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1252, file: !883, line: 506, baseType: !1263, size: 64, align: 64, offset: 448)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !883, line: 445, size: 64, align: 64, elements: !1264)
!1264 = !{!1265, !1266}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1263, file: !883, line: 446, baseType: !10, size: 32)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1263, file: !883, line: 447, baseType: !10, size: 32, offset: 32)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1185, file: !883, line: 798, baseType: !1268, size: 384, offset: 3072)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !883, line: 592, size: 384, elements: !1269)
!1269 = !{!1270, !1271, !1272, !1273, !1274, !1275, !1276}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1268, file: !883, line: 593, baseType: !54, size: 128)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1268, file: !883, line: 594, baseType: !329, size: 64, offset: 128)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1268, file: !883, line: 595, baseType: !329, size: 64, offset: 192)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1268, file: !883, line: 596, baseType: !10, size: 32, offset: 256)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1268, file: !883, line: 597, baseType: !51, size: 16, offset: 288)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1268, file: !883, line: 598, baseType: !51, size: 16, offset: 304)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1268, file: !883, line: 600, baseType: !1277, size: 64, offset: 320)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1185, file: !883, line: 799, baseType: !1279, size: 1792, offset: 3456)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !883, line: 610, size: 1792, elements: !1280)
!1280 = !{!1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1370, !1371}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1279, file: !883, line: 611, baseType: !325, size: 192, align: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1279, file: !883, line: 618, baseType: !123, size: 64, offset: 192)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1279, file: !883, line: 619, baseType: !123, size: 64, offset: 256)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1279, file: !883, line: 620, baseType: !123, size: 64, offset: 320)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1279, file: !883, line: 621, baseType: !123, size: 64, offset: 384)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1279, file: !883, line: 622, baseType: !123, size: 64, offset: 448)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1279, file: !883, line: 629, baseType: !175, size: 64, offset: 512)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1279, file: !883, line: 630, baseType: !123, size: 64, offset: 576)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1279, file: !883, line: 631, baseType: !10, size: 32, offset: 640)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1279, file: !883, line: 653, baseType: !10, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1279, file: !883, line: 654, baseType: !10, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1279, file: !883, line: 655, baseType: !10, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1279, file: !883, line: 656, baseType: !10, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1279, file: !883, line: 662, baseType: !1295, size: 512, offset: 704)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !89, line: 118, size: 512, elements: !1296)
!1296 = !{!1297, !1305, !1306, !1311, !1366, !1367, !1368, !1369}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1295, file: !89, line: 119, baseType: !1298, size: 256)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1299, line: 9, size: 256, elements: !1300)
!1299 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1300 = !{!1301, !1302}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1298, file: !1299, line: 10, baseType: !325, size: 192, align: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1298, file: !1299, line: 11, baseType: !1303, size: 64, offset: 192)
!1303 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1304, line: 29, baseType: !175)
!1304 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1295, file: !89, line: 120, baseType: !1303, size: 64, offset: 256)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1295, file: !89, line: 121, baseType: !1307, size: 64, offset: 320)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DISubroutineType(types: !1309)
!1309 = !{!88, !1310}
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1295, file: !89, line: 122, baseType: !1312, size: 64, offset: 384)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !89, line: 159, size: 512, align: 512, elements: !1314)
!1314 = !{!1315, !1340, !1341, !1344, !1349, !1350, !1361, !1365}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1313, file: !89, line: 160, baseType: !1316, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !89, line: 215, size: 4608, align: 512, elements: !1318)
!1318 = !{!1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1317, file: !89, line: 216, baseType: !16, size: 32)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1317, file: !89, line: 217, baseType: !10, size: 32, offset: 32)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1317, file: !89, line: 218, baseType: !10, size: 32, offset: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1317, file: !89, line: 219, baseType: !10, size: 32, offset: 96)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1317, file: !89, line: 220, baseType: !10, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1317, file: !89, line: 221, baseType: !10, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1317, file: !89, line: 222, baseType: !10, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1317, file: !89, line: 223, baseType: !10, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1317, file: !89, line: 224, baseType: !10, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1317, file: !89, line: 226, baseType: !10, size: 32, offset: 160)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1317, file: !89, line: 227, baseType: !51, size: 16, offset: 192)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1317, file: !89, line: 228, baseType: !51, size: 16, offset: 208)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1317, file: !89, line: 229, baseType: !10, size: 32, offset: 224)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1317, file: !89, line: 235, baseType: !1303, size: 64, offset: 256)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1317, file: !89, line: 236, baseType: !1310, size: 64, offset: 320)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1317, file: !89, line: 237, baseType: !1303, size: 64, offset: 384)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1317, file: !89, line: 238, baseType: !1310, size: 64, offset: 448)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1317, file: !89, line: 239, baseType: !1337, size: 4096, align: 512, offset: 512)
!1337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1313, size: 4096, align: 512, elements: !1338)
!1338 = !{!1339}
!1339 = !DISubrange(count: 8)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1313, file: !89, line: 161, baseType: !10, size: 32, offset: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1313, file: !89, line: 162, baseType: !1342, size: 32, offset: 96)
!1342 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !30, line: 32, baseType: !1343)
!1343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !193, line: 96, baseType: !34)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1313, file: !89, line: 163, baseType: !1345, size: 32, offset: 128)
!1345 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !525, line: 274, baseType: !1346)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !525, line: 274, size: 32, elements: !1347)
!1347 = !{!1348}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1346, file: !525, line: 274, baseType: !529, size: 32)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1313, file: !89, line: 164, baseType: !1310, size: 64, offset: 192)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1313, file: !89, line: 165, baseType: !1351, size: 128, offset: 256)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1299, line: 14, size: 128, elements: !1352)
!1352 = !{!1353}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1351, file: !1299, line: 15, baseType: !1354, size: 128)
!1354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !326, line: 26, size: 128, elements: !1355)
!1355 = !{!1356, !1360}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1354, file: !326, line: 27, baseType: !1357, size: 64)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !326, line: 12, size: 64, elements: !1358)
!1358 = !{!1359}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1357, file: !326, line: 13, baseType: !331, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1354, file: !326, line: 28, baseType: !331, size: 64, offset: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1313, file: !89, line: 166, baseType: !1362, size: 64, offset: 384)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{!1303}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1313, file: !89, line: 167, baseType: !1303, size: 64, offset: 448)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1295, file: !89, line: 123, baseType: !39, size: 8, offset: 448)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1295, file: !89, line: 124, baseType: !39, size: 8, offset: 456)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1295, file: !89, line: 125, baseType: !39, size: 8, offset: 464)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1295, file: !89, line: 126, baseType: !39, size: 8, offset: 472)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1279, file: !883, line: 671, baseType: !1295, size: 512, offset: 1216)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1279, file: !883, line: 679, baseType: !1372, size: 64, offset: 1728)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1185, file: !883, line: 800, baseType: !1374, size: 64, offset: 5248)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1376)
!1376 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !883, line: 800, flags: DIFlagFwdDecl)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1185, file: !883, line: 809, baseType: !1378, size: 64, offset: 5312)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !883, line: 70, flags: DIFlagFwdDecl)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1185, file: !883, line: 825, baseType: !1381, size: 2048, align: 512, offset: 5632)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !883, line: 509, size: 2048, align: 512, elements: !1382)
!1382 = !{!1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1381, file: !883, line: 511, baseType: !123, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1381, file: !883, line: 512, baseType: !123, size: 64, offset: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1381, file: !883, line: 513, baseType: !123, size: 64, offset: 128)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1381, file: !883, line: 514, baseType: !123, size: 64, offset: 192)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1381, file: !883, line: 515, baseType: !123, size: 64, offset: 256)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1381, file: !883, line: 516, baseType: !123, size: 64, offset: 320)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1381, file: !883, line: 518, baseType: !123, size: 64, offset: 384)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1381, file: !883, line: 519, baseType: !123, size: 64, offset: 448)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1381, file: !883, line: 520, baseType: !175, size: 64, offset: 512)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1381, file: !883, line: 522, baseType: !123, size: 64, offset: 576)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1381, file: !883, line: 523, baseType: !123, size: 64, offset: 640)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1381, file: !883, line: 524, baseType: !175, size: 64, offset: 704)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1381, file: !883, line: 526, baseType: !175, size: 64, offset: 768)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1381, file: !883, line: 527, baseType: !123, size: 64, offset: 832)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1381, file: !883, line: 529, baseType: !123, size: 64, offset: 896)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1381, file: !883, line: 530, baseType: !123, size: 64, offset: 960)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1381, file: !883, line: 531, baseType: !123, size: 64, offset: 1024)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1381, file: !883, line: 532, baseType: !123, size: 64, offset: 1088)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1381, file: !883, line: 533, baseType: !123, size: 64, offset: 1152)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1381, file: !883, line: 535, baseType: !123, size: 64, offset: 1216)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1381, file: !883, line: 536, baseType: !123, size: 64, offset: 1280)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1381, file: !883, line: 537, baseType: !123, size: 64, offset: 1344)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1381, file: !883, line: 538, baseType: !123, size: 64, offset: 1408)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1381, file: !883, line: 539, baseType: !123, size: 64, offset: 1472)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1381, file: !883, line: 540, baseType: !123, size: 64, offset: 1536)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1381, file: !883, line: 541, baseType: !123, size: 64, offset: 1600)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1381, file: !883, line: 542, baseType: !123, size: 64, offset: 1664)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1381, file: !883, line: 543, baseType: !123, size: 64, offset: 1728)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1185, file: !883, line: 833, baseType: !10, size: 32, offset: 7680)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1185, file: !883, line: 836, baseType: !10, size: 32, offset: 7712)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1185, file: !883, line: 837, baseType: !34, size: 32, offset: 7744)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1185, file: !883, line: 838, baseType: !1415, size: 64, offset: 7808)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1417)
!1417 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1418, line: 19, baseType: !1419)
!1418 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1418, line: 19, size: 64, elements: !1420)
!1420 = !{!1421}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1419, file: !1418, line: 19, baseType: !1422, size: 64)
!1422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 64, elements: !1423)
!1423 = !{!1424}
!1424 = !DISubrange(count: 1)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1185, file: !883, line: 839, baseType: !1426, size: 64, offset: 7872)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1185, file: !883, line: 840, baseType: !1417, size: 64, offset: 7936)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1185, file: !883, line: 841, baseType: !346, size: 64, offset: 8000)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1185, file: !883, line: 843, baseType: !51, size: 16, offset: 8064)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1185, file: !883, line: 845, baseType: !51, size: 16, offset: 8080)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1185, file: !883, line: 848, baseType: !34, size: 32, offset: 8096)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1185, file: !883, line: 849, baseType: !1433, size: 32, offset: 8128)
!1433 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !883, line: 718, size: 32, elements: !1434)
!1434 = !{!1435, !1442}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1433, file: !883, line: 724, baseType: !1436, size: 32)
!1436 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1433, file: !883, line: 719, size: 32, elements: !1437)
!1437 = !{!1438, !1439, !1440, !1441}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1436, file: !883, line: 720, baseType: !39, size: 8)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1436, file: !883, line: 721, baseType: !39, size: 8, offset: 8)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1436, file: !883, line: 722, baseType: !39, size: 8, offset: 16)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1436, file: !883, line: 723, baseType: !39, size: 8, offset: 24)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1433, file: !883, line: 725, baseType: !131, size: 32)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1185, file: !883, line: 850, baseType: !54, size: 128, offset: 8192)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1185, file: !883, line: 851, baseType: !1445, size: 64, offset: 8320)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !883, line: 60, flags: DIFlagFwdDecl)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1185, file: !883, line: 855, baseType: !329, size: 64, offset: 8384)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1185, file: !883, line: 856, baseType: !39, size: 8, offset: 8448)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1185, file: !883, line: 857, baseType: !39, size: 8, offset: 8456)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1185, file: !883, line: 858, baseType: !34, size: 32, offset: 8480)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1185, file: !883, line: 859, baseType: !54, size: 128, offset: 8512)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1185, file: !883, line: 860, baseType: !34, size: 32, offset: 8640)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1185, file: !883, line: 861, baseType: !54, size: 128, offset: 8704)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1185, file: !883, line: 873, baseType: !1455, size: 256, offset: 8832)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !883, line: 376, size: 256, elements: !1456)
!1456 = !{!1457, !1458, !1459, !1460}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1455, file: !883, line: 381, baseType: !329, size: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1455, file: !883, line: 384, baseType: !125, size: 64, offset: 64)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1455, file: !883, line: 389, baseType: !125, size: 64, offset: 128)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1455, file: !883, line: 392, baseType: !125, size: 64, offset: 192)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1185, file: !883, line: 875, baseType: !54, size: 128, offset: 9088)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1185, file: !883, line: 877, baseType: !1463, size: 320, offset: 9216)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1464, line: 86, size: 320, elements: !1465)
!1464 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1465 = !{!1466, !1467, !1468}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1463, file: !1464, line: 87, baseType: !34, size: 32)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1463, file: !1464, line: 88, baseType: !54, size: 128, offset: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1463, file: !1464, line: 89, baseType: !54, size: 128, offset: 192)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1185, file: !883, line: 878, baseType: !325, size: 192, align: 64, offset: 9536)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1185, file: !883, line: 881, baseType: !1471, size: 64, offset: 9728)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1473, line: 733, size: 10240, elements: !1474)
!1473 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!1474 = !{!1475, !1614}
!1475 = !DIDerivedType(tag: DW_TAG_member, scope: !1472, file: !1473, line: 734, baseType: !1476, size: 10240)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1472, file: !1473, line: 734, size: 10240, elements: !1477)
!1477 = !{!1478, !1482, !1495, !1499, !1500, !1501, !1502, !1503, !1504, !1513, !1514, !1515, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1554, !1556, !1559, !1583, !1584, !1585, !1588, !1589, !1590, !1593, !1594, !1595, !1601, !1602}
!1478 = !DIDerivedType(tag: DW_TAG_member, scope: !1476, file: !1473, line: 739, baseType: !1479, size: 512, align: 512)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1476, file: !1473, line: 739, size: 512, align: 512, elements: !1480)
!1480 = !{!1481}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1479, file: !1473, line: 747, baseType: !29, size: 32)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1476, file: !1473, line: 750, baseType: !1483, size: 128, offset: 512)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1484, line: 218, size: 128, elements: !1485)
!1484 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1485 = !{!1486, !1493, !1494}
!1486 = !DIDerivedType(tag: DW_TAG_member, scope: !1483, file: !1484, line: 219, baseType: !1487, size: 32)
!1487 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1483, file: !1484, line: 219, size: 32, elements: !1488)
!1488 = !{!1489, !1490}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1487, file: !1484, line: 220, baseType: !158, size: 32)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1487, file: !1484, line: 221, baseType: !1491)
!1491 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1484, line: 197, baseType: !1492)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1484, line: 197, elements: !812)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1483, file: !1484, line: 223, baseType: !10, size: 32, offset: 32)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1483, file: !1484, line: 224, baseType: !346, size: 64, offset: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1476, file: !1473, line: 752, baseType: !1496, size: 64, offset: 640)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{!329, !135, !329, !329, !329, !329}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1476, file: !1473, line: 756, baseType: !329, size: 64, offset: 704)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1476, file: !1473, line: 757, baseType: !329, size: 64, offset: 768)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1476, file: !1473, line: 760, baseType: !329, size: 64, offset: 832)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1476, file: !1473, line: 761, baseType: !329, size: 64, offset: 896)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1476, file: !1473, line: 763, baseType: !329, size: 64, offset: 960)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1476, file: !1473, line: 764, baseType: !1505, size: 64, offset: 1024)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1507, line: 299, baseType: !1508)
!1507 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1507, line: 299, size: 64, elements: !1509)
!1509 = !{!1510}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1508, file: !1507, line: 299, baseType: !1511, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1512, line: 18, baseType: !329)
!1512 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1476, file: !1473, line: 773, baseType: !29, size: 32, offset: 1088)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1476, file: !1473, line: 785, baseType: !29, size: 32, offset: 1120)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1476, file: !1473, line: 795, baseType: !1516, size: 64, offset: 1152)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !1473, line: 726, size: 128, elements: !1518)
!1518 = !{!1519, !1520}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1517, file: !1473, line: 727, baseType: !123, size: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1517, file: !1473, line: 728, baseType: !34, size: 32, offset: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1476, file: !1473, line: 801, baseType: !329, size: 64, offset: 1216)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1476, file: !1473, line: 804, baseType: !169, size: 64, offset: 1280)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1476, file: !1473, line: 806, baseType: !34, size: 32, offset: 1344)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1476, file: !1473, line: 808, baseType: !158, size: 32, offset: 1376)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1476, file: !1473, line: 823, baseType: !334, size: 320, offset: 1408)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1476, file: !1473, line: 825, baseType: !54, size: 128, offset: 1728)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1476, file: !1473, line: 845, baseType: !34, size: 32, offset: 1856)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1476, file: !1473, line: 849, baseType: !329, size: 64, offset: 1920)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1476, file: !1473, line: 850, baseType: !329, size: 64, offset: 1984)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1476, file: !1473, line: 852, baseType: !329, size: 64, offset: 2048)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1476, file: !1473, line: 853, baseType: !329, size: 64, offset: 2112)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1476, file: !1473, line: 854, baseType: !171, size: 64, offset: 2176)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1476, file: !1473, line: 855, baseType: !329, size: 64, offset: 2240)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1476, file: !1473, line: 856, baseType: !329, size: 64, offset: 2304)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1476, file: !1473, line: 857, baseType: !329, size: 64, offset: 2368)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1476, file: !1473, line: 858, baseType: !329, size: 64, offset: 2432)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1476, file: !1473, line: 865, baseType: !529, size: 32, offset: 2496)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1476, file: !1473, line: 867, baseType: !158, size: 32, offset: 2528)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1476, file: !1473, line: 869, baseType: !329, size: 64, offset: 2560)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1476, file: !1473, line: 869, baseType: !329, size: 64, offset: 2624)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1476, file: !1473, line: 869, baseType: !329, size: 64, offset: 2688)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1476, file: !1473, line: 869, baseType: !329, size: 64, offset: 2752)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1476, file: !1473, line: 870, baseType: !329, size: 64, offset: 2816)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1476, file: !1473, line: 870, baseType: !329, size: 64, offset: 2880)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1476, file: !1473, line: 870, baseType: !329, size: 64, offset: 2944)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1476, file: !1473, line: 871, baseType: !329, size: 64, offset: 3008)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1476, file: !1473, line: 871, baseType: !329, size: 64, offset: 3072)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1476, file: !1473, line: 871, baseType: !329, size: 64, offset: 3136)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1476, file: !1473, line: 871, baseType: !329, size: 64, offset: 3200)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1476, file: !1473, line: 873, baseType: !1551, size: 3328, offset: 3264)
!1551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 3328, elements: !1552)
!1552 = !{!1553}
!1553 = !DISubrange(count: 52)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1476, file: !1473, line: 875, baseType: !1555, size: 1280, offset: 6592)
!1555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !456, size: 1280, elements: !244)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1476, file: !1473, line: 877, baseType: !1557, size: 64, offset: 7872)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1473, line: 877, flags: DIFlagFwdDecl)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1476, file: !1473, line: 880, baseType: !1560, size: 1088, offset: 7936)
!1560 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1561, line: 72, baseType: !1562)
!1561 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1561, line: 23, size: 1088, elements: !1563)
!1563 = !{!1564, !1565, !1566, !1567, !1568, !1571, !1572, !1573, !1574, !1578, !1579, !1580}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1562, file: !1561, line: 28, baseType: !123, size: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1562, file: !1561, line: 38, baseType: !171, size: 64, offset: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1562, file: !1561, line: 40, baseType: !329, size: 64, offset: 128)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1562, file: !1561, line: 43, baseType: !334, size: 320, offset: 192)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1562, file: !1561, line: 44, baseType: !1569, size: 64, offset: 512)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1561, line: 44, flags: DIFlagFwdDecl)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1562, file: !1561, line: 48, baseType: !329, size: 64, offset: 576)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1562, file: !1561, line: 59, baseType: !179, size: 256, offset: 640)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1562, file: !1561, line: 60, baseType: !346, size: 64, offset: 896)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1562, file: !1561, line: 61, baseType: !1575, size: 64, offset: 960)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1577)
!1577 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1561, line: 61, flags: DIFlagFwdDecl)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1562, file: !1561, line: 63, baseType: !29, size: 32, offset: 1024)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1562, file: !1561, line: 69, baseType: !49, size: 16, offset: 1056)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1562, file: !1561, line: 70, baseType: !1581, size: 16, offset: 1072)
!1581 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !40, line: 18, baseType: !1582)
!1582 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !42, line: 23, baseType: !363)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1476, file: !1473, line: 882, baseType: !329, size: 64, offset: 9024)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1476, file: !1473, line: 885, baseType: !158, size: 32, offset: 9088)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1476, file: !1473, line: 886, baseType: !1586, size: 64, offset: 9152)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1473, line: 732, flags: DIFlagFwdDecl)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1476, file: !1473, line: 901, baseType: !481, size: 64, offset: 9216)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1476, file: !1473, line: 904, baseType: !135, size: 64, offset: 9280)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1476, file: !1473, line: 906, baseType: !1591, size: 64, offset: 9344)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1473, line: 906, flags: DIFlagFwdDecl)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1476, file: !1473, line: 930, baseType: !29, size: 32, offset: 9408)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1476, file: !1473, line: 933, baseType: !29, size: 32, offset: 9440)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1476, file: !1473, line: 935, baseType: !1596, size: 64, offset: 9472)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !100, line: 103, size: 64, elements: !1597)
!1597 = !{!1598}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1596, file: !100, line: 104, baseType: !1599, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !100, line: 101, flags: DIFlagFwdDecl)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1476, file: !1473, line: 940, baseType: !169, size: 64, offset: 9536)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1476, file: !1473, line: 942, baseType: !1603, size: 256, offset: 9600)
!1603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1604, line: 98, size: 256, elements: !1605)
!1604 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1605 = !{!1606, !1607, !1608}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1603, file: !1604, line: 99, baseType: !169, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1603, file: !1604, line: 100, baseType: !54, size: 128, offset: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1603, file: !1604, line: 101, baseType: !1609, size: 64, offset: 192)
!1609 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1604, line: 21, baseType: !1610)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DISubroutineType(types: !1612)
!1612 = !{null, !1613}
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1472, file: !1473, line: 986, baseType: !1615, offset: 10240)
!1615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, elements: !263)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1185, file: !883, line: 882, baseType: !1471, size: 64, offset: 9792)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1185, file: !883, line: 884, baseType: !34, size: 32, offset: 9856)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1185, file: !883, line: 885, baseType: !34, size: 32, offset: 9888)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1185, file: !883, line: 886, baseType: !34, size: 32, offset: 9920)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1185, file: !883, line: 888, baseType: !34, size: 32, offset: 9952)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1185, file: !883, line: 890, baseType: !329, size: 64, offset: 9984)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1185, file: !883, line: 893, baseType: !10, size: 32, offset: 10048)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1185, file: !883, line: 896, baseType: !10, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1185, file: !883, line: 897, baseType: !10, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1185, file: !883, line: 898, baseType: !10, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1185, file: !883, line: 899, baseType: !10, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1185, file: !883, line: 919, baseType: !10, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1185, file: !883, line: 922, baseType: !10, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1185, file: !883, line: 923, baseType: !10, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1185, file: !883, line: 925, baseType: !10, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1185, file: !883, line: 939, baseType: !10, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1185, file: !883, line: 941, baseType: !10, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1185, file: !883, line: 944, baseType: !10, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1185, file: !883, line: 956, baseType: !10, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1185, file: !883, line: 962, baseType: !10, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1185, file: !883, line: 966, baseType: !10, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1185, file: !883, line: 969, baseType: !329, size: 64, offset: 10176)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1185, file: !883, line: 971, baseType: !1639, size: 448, offset: 10240)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !94, line: 25, size: 448, elements: !1640)
!1640 = !{!1641, !1642, !1647}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1639, file: !94, line: 26, baseType: !329, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1639, file: !94, line: 27, baseType: !1643, size: 64, offset: 64)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{!673, !1646}
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, scope: !1639, file: !94, line: 28, baseType: !1648, size: 320, offset: 128)
!1648 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1639, file: !94, line: 28, size: 320, elements: !1649)
!1649 = !{!1650, !1660, !1685}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1648, file: !94, line: 37, baseType: !1651, size: 320)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1648, file: !94, line: 30, size: 320, elements: !1652)
!1652 = !{!1653, !1655, !1656, !1657, !1658, !1659}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1651, file: !94, line: 31, baseType: !1654, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1651, file: !94, line: 32, baseType: !131, size: 32, offset: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1651, file: !94, line: 33, baseType: !131, size: 32, offset: 96)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1651, file: !94, line: 34, baseType: !131, size: 32, offset: 128)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1651, file: !94, line: 35, baseType: !123, size: 64, offset: 192)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1651, file: !94, line: 36, baseType: !1654, size: 64, offset: 256)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1648, file: !94, line: 47, baseType: !1661, size: 192)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1648, file: !94, line: 39, size: 192, elements: !1662)
!1662 = !{!1663, !1664, !1665, !1684}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1661, file: !94, line: 40, baseType: !1342, size: 32)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1661, file: !94, line: 41, baseType: !93, size: 32, offset: 32)
!1665 = !DIDerivedType(tag: DW_TAG_member, scope: !1661, file: !94, line: 42, baseType: !1666, size: 64, offset: 64)
!1666 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1661, file: !94, line: 42, size: 64, elements: !1667)
!1667 = !{!1668, !1676}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1666, file: !94, line: 43, baseType: !1669, size: 64)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1671, line: 7, size: 128, elements: !1672)
!1671 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1672 = !{!1673, !1675}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1670, file: !1671, line: 8, baseType: !1674, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !193, line: 93, baseType: !177)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1670, file: !1671, line: 9, baseType: !177, size: 64, offset: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1666, file: !94, line: 44, baseType: !1677, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1679, line: 7, size: 64, elements: !1680)
!1679 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1680 = !{!1681, !1683}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1678, file: !1679, line: 8, baseType: !1682, size: 32)
!1682 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1679, line: 5, baseType: !318)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1678, file: !1679, line: 9, baseType: !318, size: 32, offset: 32)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1661, file: !94, line: 46, baseType: !123, size: 64, offset: 128)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1648, file: !94, line: 55, baseType: !1686, size: 256)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1648, file: !94, line: 49, size: 256, elements: !1687)
!1687 = !{!1688, !1691, !1692, !1693, !1694}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1686, file: !94, line: 50, baseType: !1689, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !94, line: 14, flags: DIFlagFwdDecl)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1686, file: !94, line: 51, baseType: !34, size: 32, offset: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1686, file: !94, line: 52, baseType: !34, size: 32, offset: 96)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1686, file: !94, line: 53, baseType: !329, size: 64, offset: 128)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1686, file: !94, line: 54, baseType: !329, size: 64, offset: 192)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1185, file: !883, line: 973, baseType: !1696, size: 32, offset: 10688)
!1696 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !30, line: 27, baseType: !1697)
!1697 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !193, line: 28, baseType: !34)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1185, file: !883, line: 974, baseType: !1696, size: 32, offset: 10720)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1185, file: !883, line: 978, baseType: !329, size: 64, offset: 10752)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1185, file: !883, line: 987, baseType: !1184, size: 64, offset: 10816)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1185, file: !883, line: 990, baseType: !1184, size: 64, offset: 10880)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1185, file: !883, line: 995, baseType: !54, size: 128, offset: 10944)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1185, file: !883, line: 996, baseType: !54, size: 128, offset: 11072)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1185, file: !883, line: 997, baseType: !1184, size: 64, offset: 11200)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1185, file: !883, line: 1005, baseType: !54, size: 128, offset: 11264)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1185, file: !883, line: 1006, baseType: !54, size: 128, offset: 11392)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1185, file: !883, line: 1009, baseType: !222, size: 64, offset: 11520)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1185, file: !883, line: 1010, baseType: !1709, size: 512, offset: 11584)
!1709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 512, elements: !244)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1185, file: !883, line: 1011, baseType: !54, size: 128, offset: 12096)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1185, file: !883, line: 1012, baseType: !54, size: 128, offset: 12224)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1185, file: !883, line: 1014, baseType: !6, size: 64, offset: 12352)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1185, file: !883, line: 1017, baseType: !875, size: 64, offset: 12416)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1185, file: !883, line: 1020, baseType: !875, size: 64, offset: 12480)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1185, file: !883, line: 1023, baseType: !346, size: 64, offset: 12544)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1185, file: !883, line: 1025, baseType: !123, size: 64, offset: 12608)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1185, file: !883, line: 1026, baseType: !123, size: 64, offset: 12672)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1185, file: !883, line: 1031, baseType: !123, size: 64, offset: 12736)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1185, file: !883, line: 1032, baseType: !1720, size: 192, offset: 12800)
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !883, line: 324, size: 192, elements: !1721)
!1721 = !{!1722, !1723, !1724}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1720, file: !883, line: 326, baseType: !123, size: 64)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1720, file: !883, line: 327, baseType: !123, size: 64, offset: 64)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1720, file: !883, line: 328, baseType: !16, size: 32, offset: 128)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1185, file: !883, line: 1041, baseType: !329, size: 64, offset: 12992)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1185, file: !883, line: 1042, baseType: !329, size: 64, offset: 13056)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1185, file: !883, line: 1045, baseType: !123, size: 64, offset: 13120)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1185, file: !883, line: 1048, baseType: !123, size: 64, offset: 13184)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1185, file: !883, line: 1051, baseType: !329, size: 64, offset: 13248)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1185, file: !883, line: 1052, baseType: !329, size: 64, offset: 13312)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1185, file: !883, line: 1055, baseType: !1732, size: 640, offset: 13376)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1733, line: 132, size: 640, elements: !1734)
!1733 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1734 = !{!1735, !1741, !1742}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1732, file: !1733, line: 133, baseType: !1736, size: 576)
!1736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1737, size: 576, elements: !218)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1733, line: 117, size: 192, elements: !1738)
!1738 = !{!1739, !1740}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1737, file: !1733, line: 118, baseType: !123, size: 64)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1737, file: !1733, line: 119, baseType: !1351, size: 128, offset: 64)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1732, file: !1733, line: 134, baseType: !10, size: 32, offset: 576)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1732, file: !1733, line: 135, baseType: !10, size: 32, offset: 608)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1185, file: !883, line: 1058, baseType: !1744, size: 448, offset: 14016)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1733, line: 144, size: 448, elements: !1745)
!1745 = !{!1746, !1747, !1748}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1744, file: !1733, line: 145, baseType: !148, size: 128, align: 64)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1744, file: !1733, line: 146, baseType: !179, size: 256, offset: 128)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1744, file: !1733, line: 147, baseType: !10, size: 32, offset: 384)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1185, file: !883, line: 1064, baseType: !277, size: 64, offset: 14464)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1185, file: !883, line: 1067, baseType: !277, size: 64, offset: 14528)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1185, file: !883, line: 1070, baseType: !277, size: 64, offset: 14592)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1185, file: !883, line: 1074, baseType: !310, size: 64, offset: 14656)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1185, file: !883, line: 1084, baseType: !1754, size: 128, offset: 14720)
!1754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 128, elements: !1755)
!1755 = !{!1756}
!1756 = !DISubrange(count: 16)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1185, file: !883, line: 1086, baseType: !1758, size: 64, offset: 14848)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !883, line: 55, flags: DIFlagFwdDecl)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1185, file: !883, line: 1089, baseType: !1761, size: 64, offset: 14912)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1762, line: 12, size: 64, elements: !1763)
!1762 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1763 = !{!1764}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1761, file: !1762, line: 13, baseType: !1765, size: 64)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1762, line: 8, flags: DIFlagFwdDecl)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1185, file: !883, line: 1090, baseType: !1768, size: 128, offset: 14976)
!1768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1769, line: 13, size: 128, elements: !1770)
!1769 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1770 = !{!1771}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1768, file: !1769, line: 14, baseType: !54, size: 128)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1185, file: !883, line: 1097, baseType: !1773, size: 64, offset: 15104)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !883, line: 50, flags: DIFlagFwdDecl)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1185, file: !883, line: 1100, baseType: !1776, size: 64, offset: 15168)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !883, line: 1100, flags: DIFlagFwdDecl)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1185, file: !883, line: 1103, baseType: !1779, size: 64, offset: 15232)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !883, line: 53, flags: DIFlagFwdDecl)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1185, file: !883, line: 1107, baseType: !1782, size: 64, offset: 15296)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !883, line: 56, flags: DIFlagFwdDecl)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1185, file: !883, line: 1110, baseType: !1785, size: 64, offset: 15360)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1787, line: 93, size: 8768, elements: !1788)
!1787 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!1788 = !{!1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1838, !1847, !1848, !1850, !1851, !1852, !1855, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1893, !1894, !1901, !1911, !1914, !1915, !1918, !1919, !1920, !1921, !1922, !1923}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1786, file: !1787, line: 94, baseType: !226, size: 32)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1786, file: !1787, line: 95, baseType: !29, size: 32, offset: 32)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1786, file: !1787, line: 96, baseType: !34, size: 32, offset: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !1786, file: !1787, line: 97, baseType: !34, size: 32, offset: 96)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1786, file: !1787, line: 98, baseType: !54, size: 128, offset: 128)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1786, file: !1787, line: 100, baseType: !248, size: 192, offset: 256)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1786, file: !1787, line: 103, baseType: !1184, size: 64, offset: 448)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1786, file: !1787, line: 106, baseType: !1797, size: 192, offset: 512)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !486, line: 32, size: 192, elements: !1798)
!1798 = !{!1799, !1800}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1797, file: !486, line: 33, baseType: !54, size: 128)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1797, file: !486, line: 34, baseType: !1801, size: 64, offset: 128)
!1801 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1802, line: 25, baseType: !1803)
!1802 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1802, line: 23, size: 64, elements: !1804)
!1804 = !{!1805}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1803, file: !1802, line: 24, baseType: !1422, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1786, file: !1787, line: 109, baseType: !235, size: 64, offset: 704)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1786, file: !1787, line: 112, baseType: !34, size: 32, offset: 768)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1786, file: !1787, line: 114, baseType: !34, size: 32, offset: 800)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !1786, file: !1787, line: 115, baseType: !1184, size: 64, offset: 832)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1786, file: !1787, line: 118, baseType: !34, size: 32, offset: 896)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1786, file: !1787, line: 119, baseType: !10, size: 32, offset: 928)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1786, file: !1787, line: 121, baseType: !1813, size: 64, offset: 960)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !1787, line: 80, size: 448, elements: !1815)
!1815 = !{!1816, !1817, !1823}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1814, file: !1787, line: 81, baseType: !29, size: 32)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1814, file: !1787, line: 82, baseType: !1818, size: 128, offset: 64)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !1787, line: 75, size: 128, elements: !1819)
!1819 = !{!1820, !1821}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1818, file: !1787, line: 76, baseType: !1184, size: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1818, file: !1787, line: 77, baseType: !1822, size: 64, offset: 64)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1814, file: !1787, line: 83, baseType: !7, size: 256, offset: 192)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1786, file: !1787, line: 132, baseType: !10, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1786, file: !1787, line: 133, baseType: !10, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !1786, file: !1787, line: 138, baseType: !10, size: 32, offset: 1056)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1786, file: !1787, line: 139, baseType: !54, size: 128, offset: 1088)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1786, file: !1787, line: 142, baseType: !1295, size: 512, offset: 1216)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1786, file: !1787, line: 143, baseType: !1303, size: 64, offset: 1728)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1786, file: !1787, line: 150, baseType: !1831, size: 256, offset: 1792)
!1831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1832, size: 256, elements: !1836)
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1787, line: 38, size: 128, elements: !1833)
!1833 = !{!1834, !1835}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1832, file: !1787, line: 39, baseType: !123, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1832, file: !1787, line: 40, baseType: !123, size: 64, offset: 64)
!1836 = !{!1837}
!1837 = !DISubrange(count: 2)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1786, file: !1787, line: 156, baseType: !1839, size: 192, offset: 2048)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1787, line: 66, size: 192, elements: !1840)
!1840 = !{!1841}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1839, file: !1787, line: 67, baseType: !1842, size: 192)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1787, line: 47, size: 192, elements: !1843)
!1843 = !{!1844, !1845, !1846}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1842, file: !1787, line: 48, baseType: !171, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1842, file: !1787, line: 49, baseType: !171, size: 64, offset: 64)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1842, file: !1787, line: 50, baseType: !171, size: 64, offset: 128)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1786, file: !1787, line: 160, baseType: !1732, size: 640, offset: 2240)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1786, file: !1787, line: 163, baseType: !1849, size: 256, offset: 2880)
!1849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 256, elements: !244)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1786, file: !1787, line: 169, baseType: !222, size: 64, offset: 3136)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1786, file: !1787, line: 172, baseType: !34, size: 32, offset: 3200)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1786, file: !1787, line: 174, baseType: !1853, size: 64, offset: 3264)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1787, line: 174, flags: DIFlagFwdDecl)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1786, file: !1787, line: 185, baseType: !1856, size: 64, offset: 3328)
!1856 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !525, line: 860, baseType: !1857)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !525, line: 853, size: 64, elements: !1858)
!1858 = !{!1859, !1860}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1857, file: !525, line: 858, baseType: !524, size: 32)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1857, file: !525, line: 859, baseType: !158, size: 32, offset: 32)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1786, file: !1787, line: 186, baseType: !123, size: 64, offset: 3392)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1786, file: !1787, line: 186, baseType: !123, size: 64, offset: 3456)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1786, file: !1787, line: 186, baseType: !123, size: 64, offset: 3520)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1786, file: !1787, line: 186, baseType: !123, size: 64, offset: 3584)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1786, file: !1787, line: 187, baseType: !123, size: 64, offset: 3648)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1786, file: !1787, line: 188, baseType: !123, size: 64, offset: 3712)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1786, file: !1787, line: 189, baseType: !1720, size: 192, offset: 3776)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1786, file: !1787, line: 190, baseType: !329, size: 64, offset: 3968)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1786, file: !1787, line: 190, baseType: !329, size: 64, offset: 4032)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1786, file: !1787, line: 190, baseType: !329, size: 64, offset: 4096)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1786, file: !1787, line: 190, baseType: !329, size: 64, offset: 4160)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1786, file: !1787, line: 191, baseType: !329, size: 64, offset: 4224)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1786, file: !1787, line: 191, baseType: !329, size: 64, offset: 4288)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1786, file: !1787, line: 191, baseType: !329, size: 64, offset: 4352)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1786, file: !1787, line: 191, baseType: !329, size: 64, offset: 4416)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1786, file: !1787, line: 192, baseType: !329, size: 64, offset: 4480)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1786, file: !1787, line: 192, baseType: !329, size: 64, offset: 4544)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1786, file: !1787, line: 192, baseType: !329, size: 64, offset: 4608)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1786, file: !1787, line: 192, baseType: !329, size: 64, offset: 4672)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1786, file: !1787, line: 193, baseType: !329, size: 64, offset: 4736)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1786, file: !1787, line: 193, baseType: !329, size: 64, offset: 4800)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1786, file: !1787, line: 194, baseType: !1883, size: 448, offset: 4864)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1884, line: 12, size: 448, elements: !1885)
!1884 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!1885 = !{!1886, !1887, !1888, !1889, !1890, !1891, !1892}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !1883, file: !1884, line: 15, baseType: !123, size: 64)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !1883, file: !1884, line: 17, baseType: !123, size: 64, offset: 64)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !1883, file: !1884, line: 19, baseType: !123, size: 64, offset: 128)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !1883, file: !1884, line: 21, baseType: !123, size: 64, offset: 192)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !1883, file: !1884, line: 29, baseType: !123, size: 64, offset: 256)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !1883, file: !1884, line: 35, baseType: !123, size: 64, offset: 320)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !1883, file: !1884, line: 44, baseType: !123, size: 64, offset: 384)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1786, file: !1787, line: 202, baseType: !125, size: 64, offset: 5312)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1786, file: !1787, line: 213, baseType: !1895, size: 2048, offset: 5376)
!1895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1896, size: 2048, elements: !1755)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1897, line: 43, size: 128, elements: !1898)
!1897 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!1898 = !{!1899, !1900}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1896, file: !1897, line: 44, baseType: !717, size: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1896, file: !1897, line: 45, baseType: !717, size: 64, offset: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !1786, file: !1787, line: 216, baseType: !1902, size: 448, offset: 7424)
!1902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !1787, line: 30, size: 448, elements: !1903)
!1903 = !{!1904, !1905, !1906, !1907, !1908, !1909, !1910}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !1902, file: !1787, line: 31, baseType: !34, size: 32)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !1902, file: !1787, line: 32, baseType: !673, size: 64, offset: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !1902, file: !1787, line: 33, baseType: !329, size: 64, offset: 128)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !1902, file: !1787, line: 34, baseType: !123, size: 64, offset: 192)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !1902, file: !1787, line: 34, baseType: !123, size: 64, offset: 256)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !1902, file: !1787, line: 35, baseType: !329, size: 64, offset: 320)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !1902, file: !1787, line: 35, baseType: !329, size: 64, offset: 384)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1786, file: !1787, line: 219, baseType: !1912, size: 64, offset: 7872)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !1787, line: 219, flags: DIFlagFwdDecl)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !1786, file: !1787, line: 222, baseType: !10, size: 32, offset: 7936)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !1786, file: !1787, line: 223, baseType: !1916, size: 64, offset: 8000)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !1787, line: 223, flags: DIFlagFwdDecl)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1786, file: !1787, line: 230, baseType: !395, size: 8, offset: 8064)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1786, file: !1787, line: 231, baseType: !363, size: 16, offset: 8080)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1786, file: !1787, line: 232, baseType: !363, size: 16, offset: 8096)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1786, file: !1787, line: 234, baseType: !1471, size: 64, offset: 8128)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1786, file: !1787, line: 237, baseType: !179, size: 256, offset: 8192)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !1786, file: !1787, line: 243, baseType: !334, size: 320, offset: 8448)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1185, file: !883, line: 1111, baseType: !1925, size: 64, offset: 15424)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1787, line: 20, size: 16640, elements: !1927)
!1927 = !{!1928, !1929, !1930, !1931}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1926, file: !1787, line: 21, baseType: !158, size: 32)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1926, file: !1787, line: 22, baseType: !226, size: 32, offset: 32)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1926, file: !1787, line: 23, baseType: !248, size: 192, offset: 64)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1926, file: !1787, line: 24, baseType: !1932, size: 16384, offset: 256)
!1932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1933, size: 16384, elements: !1953)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !486, line: 51, size: 256, elements: !1934)
!1934 = !{!1935}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1933, file: !486, line: 52, baseType: !1936, size: 256)
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !486, line: 37, size: 256, elements: !1937)
!1937 = !{!1938, !1945, !1946, !1952}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1936, file: !486, line: 39, baseType: !1939, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1940, line: 83, baseType: !1941)
!1940 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1940, line: 82, baseType: !1943)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{null, !34}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1936, file: !486, line: 40, baseType: !329, size: 64, offset: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1936, file: !486, line: 46, baseType: !1947, size: 64, offset: 128)
!1947 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1940, line: 86, baseType: !1948)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1940, line: 85, baseType: !1950)
!1950 = !DISubroutineType(types: !1951)
!1951 = !{null}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1936, file: !486, line: 48, baseType: !1801, size: 64, offset: 192)
!1953 = !{!1954}
!1954 = !DISubrange(count: 64)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1185, file: !883, line: 1112, baseType: !1801, size: 64, offset: 15488)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1185, file: !883, line: 1113, baseType: !1801, size: 64, offset: 15552)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1185, file: !883, line: 1115, baseType: !1801, size: 64, offset: 15616)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1185, file: !883, line: 1116, baseType: !1797, size: 192, offset: 15680)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1185, file: !883, line: 1117, baseType: !329, size: 64, offset: 15872)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1185, file: !883, line: 1118, baseType: !715, size: 64, offset: 15936)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1185, file: !883, line: 1119, baseType: !10, size: 32, offset: 16000)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1185, file: !883, line: 1121, baseType: !151, size: 64, offset: 16064)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1185, file: !883, line: 1125, baseType: !1964, size: 64, offset: 16128)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !883, line: 43, flags: DIFlagFwdDecl)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1185, file: !883, line: 1127, baseType: !267, size: 32, offset: 16192)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1185, file: !883, line: 1128, baseType: !10, size: 32, offset: 16224)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1185, file: !883, line: 1130, baseType: !1969, size: 128, offset: 16256)
!1969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1970, line: 37, size: 128, elements: !1971)
!1970 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!1971 = !{!1972, !1973, !1974}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1969, file: !1970, line: 38, baseType: !34, size: 32)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1969, file: !1970, line: 39, baseType: !29, size: 32, offset: 32)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1969, file: !1970, line: 40, baseType: !1975, size: 64, offset: 64)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1970, line: 24, flags: DIFlagFwdDecl)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1185, file: !883, line: 1131, baseType: !1978, size: 256, offset: 16384)
!1978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !1979, line: 12, size: 256, elements: !1980)
!1979 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!1980 = !{!1981, !1982, !1983, !1984}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !1978, file: !1979, line: 13, baseType: !408, size: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1978, file: !1979, line: 14, baseType: !329, size: 64, offset: 64)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1978, file: !1979, line: 15, baseType: !329, size: 64, offset: 128)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !1978, file: !1979, line: 16, baseType: !395, size: 8, offset: 192)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1185, file: !883, line: 1134, baseType: !123, size: 64, offset: 16640)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1185, file: !883, line: 1135, baseType: !123, size: 64, offset: 16704)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1185, file: !883, line: 1138, baseType: !158, size: 32, offset: 16768)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1185, file: !883, line: 1141, baseType: !16, size: 32, offset: 16800)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1185, file: !883, line: 1143, baseType: !1990, size: 64, offset: 16832)
!1990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !883, line: 735, size: 64, elements: !1991)
!1991 = !{!1992}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1990, file: !883, line: 736, baseType: !1993, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1185, file: !883, line: 1147, baseType: !1354, size: 128, offset: 16896)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1185, file: !883, line: 1149, baseType: !1184, size: 64, offset: 17024)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1185, file: !883, line: 1151, baseType: !1997, size: 64, offset: 17088)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !883, line: 1151, flags: DIFlagFwdDecl)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1185, file: !883, line: 1188, baseType: !346, size: 64, offset: 17152)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1185, file: !883, line: 1191, baseType: !2001, size: 64, offset: 17216)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !883, line: 44, flags: DIFlagFwdDecl)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1185, file: !883, line: 1194, baseType: !2004, size: 64, offset: 17280)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !883, line: 45, flags: DIFlagFwdDecl)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1185, file: !883, line: 1197, baseType: !2007, size: 64, offset: 17344)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !883, line: 61, flags: DIFlagFwdDecl)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1185, file: !883, line: 1199, baseType: !2010, size: 64, offset: 17408)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2012, line: 99, size: 128, elements: !2013)
!2012 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2013 = !{!2014, !2015, !2016}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2011, file: !2012, line: 100, baseType: !169, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2011, file: !2012, line: 101, baseType: !29, size: 32, offset: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2011, file: !2012, line: 103, baseType: !51, size: 16, offset: 96)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1185, file: !883, line: 1202, baseType: !2018, size: 64, offset: 17472)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !883, line: 48, flags: DIFlagFwdDecl)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1185, file: !883, line: 1205, baseType: !329, size: 64, offset: 17536)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1185, file: !883, line: 1206, baseType: !2022, size: 64, offset: 17600)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !486, line: 14, baseType: !2024)
!2024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !486, line: 12, size: 384, elements: !2025)
!2025 = !{!2026}
!2026 = !DIDerivedType(tag: DW_TAG_member, scope: !2024, file: !486, line: 13, baseType: !2027, size: 384)
!2027 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2024, file: !486, line: 13, size: 384, elements: !2028)
!2028 = !{!2029, !2030, !2031, !2032}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2027, file: !486, line: 13, baseType: !34, size: 32)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2027, file: !486, line: 13, baseType: !34, size: 32, offset: 32)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2027, file: !486, line: 13, baseType: !34, size: 32, offset: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2027, file: !486, line: 13, baseType: !2033, size: 256, offset: 128)
!2033 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2034, line: 37, size: 256, elements: !2035)
!2034 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2035 = !{!2036, !2041, !2054, !2060, !2069, !2096, !2101}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2033, file: !2034, line: 42, baseType: !2037, size: 64)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2033, file: !2034, line: 39, size: 64, elements: !2038)
!2038 = !{!2039, !2040}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2037, file: !2034, line: 40, baseType: !1697, size: 32)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2037, file: !2034, line: 41, baseType: !273, size: 32, offset: 32)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2033, file: !2034, line: 50, baseType: !2042, size: 192)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2033, file: !2034, line: 45, size: 192, elements: !2043)
!2043 = !{!2044, !2046, !2047, !2053}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2042, file: !2034, line: 46, baseType: !2045, size: 32)
!2045 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !193, line: 95, baseType: !34)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2042, file: !2034, line: 47, baseType: !34, size: 32, offset: 32)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2042, file: !2034, line: 48, baseType: !2048, size: 64, offset: 64)
!2048 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2034, line: 11, baseType: !2049)
!2049 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2034, line: 8, size: 64, elements: !2050)
!2050 = !{!2051, !2052}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2049, file: !2034, line: 9, baseType: !34, size: 32)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2049, file: !2034, line: 10, baseType: !346, size: 64)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2042, file: !2034, line: 49, baseType: !34, size: 32, offset: 128)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2033, file: !2034, line: 57, baseType: !2055, size: 128)
!2055 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2033, file: !2034, line: 53, size: 128, elements: !2056)
!2056 = !{!2057, !2058, !2059}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2055, file: !2034, line: 54, baseType: !1697, size: 32)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2055, file: !2034, line: 55, baseType: !273, size: 32, offset: 32)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2055, file: !2034, line: 56, baseType: !2048, size: 64, offset: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2033, file: !2034, line: 66, baseType: !2061, size: 256)
!2061 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2033, file: !2034, line: 60, size: 256, elements: !2062)
!2062 = !{!2063, !2064, !2065, !2066, !2068}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2061, file: !2034, line: 61, baseType: !1697, size: 32)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2061, file: !2034, line: 62, baseType: !273, size: 32, offset: 32)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2061, file: !2034, line: 63, baseType: !34, size: 32, offset: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2061, file: !2034, line: 64, baseType: !2067, size: 64, offset: 128)
!2067 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !193, line: 94, baseType: !714)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2061, file: !2034, line: 65, baseType: !2067, size: 64, offset: 192)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2033, file: !2034, line: 105, baseType: !2070, size: 256)
!2070 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2033, file: !2034, line: 69, size: 256, elements: !2071)
!2071 = !{!2072, !2073}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2070, file: !2034, line: 70, baseType: !346, size: 64)
!2073 = !DIDerivedType(tag: DW_TAG_member, scope: !2070, file: !2034, line: 79, baseType: !2074, size: 192, offset: 64)
!2074 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2070, file: !2034, line: 79, size: 192, elements: !2075)
!2075 = !{!2076, !2077, !2078, !2085, !2090}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2074, file: !2034, line: 81, baseType: !34, size: 32)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2074, file: !2034, line: 86, baseType: !363, size: 16)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2074, file: !2034, line: 92, baseType: !2079, size: 192)
!2079 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2074, file: !2034, line: 88, size: 192, elements: !2080)
!2080 = !{!2081, !2083, !2084}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2079, file: !2034, line: 89, baseType: !2082, size: 64)
!2082 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 64, elements: !1338)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2079, file: !2034, line: 90, baseType: !346, size: 64, offset: 64)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2079, file: !2034, line: 91, baseType: !346, size: 64, offset: 128)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2074, file: !2034, line: 97, baseType: !2086, size: 96)
!2086 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2074, file: !2034, line: 94, size: 96, elements: !2087)
!2087 = !{!2088, !2089}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2086, file: !2034, line: 95, baseType: !2082, size: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2086, file: !2034, line: 96, baseType: !132, size: 32, offset: 64)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2074, file: !2034, line: 103, baseType: !2091, size: 128)
!2091 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2074, file: !2034, line: 99, size: 128, elements: !2092)
!2092 = !{!2093, !2094, !2095}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2091, file: !2034, line: 100, baseType: !329, size: 64)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2091, file: !2034, line: 101, baseType: !132, size: 32, offset: 64)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2091, file: !2034, line: 102, baseType: !132, size: 32, offset: 96)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2033, file: !2034, line: 111, baseType: !2097, size: 128)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2033, file: !2034, line: 108, size: 128, elements: !2098)
!2098 = !{!2099, !2100}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2097, file: !2034, line: 109, baseType: !673, size: 64)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2097, file: !2034, line: 110, baseType: !34, size: 32, offset: 64)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2033, file: !2034, line: 118, baseType: !2102, size: 128)
!2102 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2033, file: !2034, line: 114, size: 128, elements: !2103)
!2103 = !{!2104, !2105, !2106}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2102, file: !2034, line: 115, baseType: !346, size: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2102, file: !2034, line: 116, baseType: !34, size: 32, offset: 64)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2102, file: !2034, line: 117, baseType: !10, size: 32, offset: 96)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1185, file: !883, line: 1208, baseType: !1883, size: 448, offset: 17664)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1185, file: !883, line: 1215, baseType: !123, size: 64, offset: 18112)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1185, file: !883, line: 1217, baseType: !123, size: 64, offset: 18176)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1185, file: !883, line: 1219, baseType: !123, size: 64, offset: 18240)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1185, file: !883, line: 1223, baseType: !2112, size: 64, offset: 18304)
!2112 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2113, line: 99, baseType: !2114)
!2113 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2114 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2113, line: 99, size: 64, elements: !2115)
!2115 = !{!2116}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2114, file: !2113, line: 99, baseType: !1422, size: 64)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1185, file: !883, line: 1225, baseType: !524, size: 32, offset: 18368)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1185, file: !883, line: 1226, baseType: !34, size: 32, offset: 18400)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1185, file: !883, line: 1227, baseType: !34, size: 32, offset: 18432)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1185, file: !883, line: 1231, baseType: !2121, size: 64, offset: 18496)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !883, line: 1231, flags: DIFlagFwdDecl)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1185, file: !883, line: 1233, baseType: !54, size: 128, offset: 18560)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1185, file: !883, line: 1240, baseType: !2125, size: 64, offset: 18688)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !883, line: 62, flags: DIFlagFwdDecl)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1185, file: !883, line: 1242, baseType: !2128, size: 64, offset: 18752)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !883, line: 1242, flags: DIFlagFwdDecl)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1185, file: !883, line: 1244, baseType: !54, size: 128, offset: 18816)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1185, file: !883, line: 1245, baseType: !2132, size: 64, offset: 18944)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !883, line: 51, flags: DIFlagFwdDecl)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1185, file: !883, line: 1246, baseType: !179, size: 256, offset: 19008)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1185, file: !883, line: 1247, baseType: !10, size: 32, offset: 19264)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1185, file: !883, line: 1250, baseType: !2137, size: 64, offset: 19328)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !883, line: 57, flags: DIFlagFwdDecl)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1185, file: !883, line: 1251, baseType: !179, size: 256, offset: 19392)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1185, file: !883, line: 1252, baseType: !54, size: 128, offset: 19648)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1185, file: !883, line: 1259, baseType: !2142, size: 64, offset: 19776)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1473, line: 717, flags: DIFlagFwdDecl)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1185, file: !883, line: 1260, baseType: !363, size: 16, offset: 19840)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1185, file: !883, line: 1261, baseType: !363, size: 16, offset: 19856)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1185, file: !883, line: 1314, baseType: !2147, size: 64, offset: 19904)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2149, line: 62, size: 256, align: 256, elements: !2150)
!2149 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2150 = !{!2151, !2152, !2153, !2154, !2155, !2156, !2157}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2148, file: !2149, line: 75, baseType: !132, size: 32)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2148, file: !2149, line: 90, baseType: !132, size: 32, offset: 32)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2148, file: !2149, line: 112, baseType: !124, size: 64, offset: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2148, file: !2149, line: 132, baseType: !132, size: 32, offset: 128)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2148, file: !2149, line: 140, baseType: !132, size: 32, offset: 160)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2148, file: !2149, line: 149, baseType: !132, size: 32, offset: 192)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2148, file: !2149, line: 154, baseType: !2158, offset: 224)
!2158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, elements: !263)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1185, file: !883, line: 1315, baseType: !131, size: 32, offset: 19968)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1185, file: !883, line: 1316, baseType: !131, size: 32, offset: 20000)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1185, file: !883, line: 1321, baseType: !329, size: 64, offset: 20032)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1185, file: !883, line: 1325, baseType: !34, size: 32, offset: 20096)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1185, file: !883, line: 1326, baseType: !34, size: 32, offset: 20128)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1185, file: !883, line: 1327, baseType: !34, size: 32, offset: 20160)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1185, file: !883, line: 1328, baseType: !34, size: 32, offset: 20192)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1185, file: !883, line: 1329, baseType: !148, size: 128, align: 64, offset: 20224)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1185, file: !883, line: 1332, baseType: !2168, size: 128, offset: 20352)
!2168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2169, line: 51, size: 128, elements: !2170)
!2169 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2170 = !{!2171, !2176, !2177}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2168, file: !2169, line: 60, baseType: !2172, size: 64)
!2172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2173, line: 7, size: 64, elements: !2174)
!2173 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2174 = !{!2175}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2172, file: !2173, line: 12, baseType: !1419, size: 64)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2168, file: !2169, line: 63, baseType: !395, size: 8, offset: 64)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2168, file: !2169, line: 70, baseType: !395, size: 8, offset: 72)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1185, file: !883, line: 1335, baseType: !2179, size: 64, offset: 20480)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !883, line: 59, flags: DIFlagFwdDecl)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1185, file: !883, line: 1337, baseType: !2182, size: 128, offset: 20544)
!2182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2169, line: 39, size: 128, elements: !2183)
!2183 = !{!2184, !2448, !2449}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2182, file: !2169, line: 40, baseType: !2185, size: 64)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1473, line: 74, size: 512, align: 128, elements: !2187)
!2187 = !{!2188, !2189, !2442, !2447}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2186, file: !1473, line: 75, baseType: !329, size: 64)
!2189 = !DIDerivedType(tag: DW_TAG_member, scope: !2186, file: !1473, line: 83, baseType: !2190, size: 320, offset: 64)
!2190 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2186, file: !1473, line: 83, size: 320, elements: !2191)
!2191 = !{!2192, !2416, !2430, !2434, !2441}
!2192 = !DIDerivedType(tag: DW_TAG_member, scope: !2190, file: !1473, line: 84, baseType: !2193, size: 320)
!2193 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2190, file: !1473, line: 84, size: 320, elements: !2194)
!2194 = !{!2195, !2206, !2410, !2415}
!2195 = !DIDerivedType(tag: DW_TAG_member, scope: !2193, file: !1473, line: 90, baseType: !2196, size: 128)
!2196 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2193, file: !1473, line: 90, size: 128, elements: !2197)
!2197 = !{!2198, !2199, !2204, !2205}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2196, file: !1473, line: 91, baseType: !54, size: 128)
!2199 = !DIDerivedType(tag: DW_TAG_member, scope: !2196, file: !1473, line: 94, baseType: !2200, size: 128)
!2200 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2196, file: !1473, line: 94, size: 128, elements: !2201)
!2201 = !{!2202, !2203}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2200, file: !1473, line: 96, baseType: !346, size: 64)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2200, file: !1473, line: 98, baseType: !10, size: 32, offset: 64)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2196, file: !1473, line: 102, baseType: !54, size: 128)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2196, file: !1473, line: 103, baseType: !54, size: 128)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2193, file: !1473, line: 106, baseType: !2207, size: 64, offset: 128)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !78, line: 472, size: 1536, align: 64, elements: !2209)
!2209 = !{!2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2402, !2403, !2404, !2407, !2408, !2409}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !2208, file: !78, line: 473, baseType: !558, size: 64)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !2208, file: !78, line: 474, baseType: !762, size: 128, offset: 64)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !2208, file: !78, line: 475, baseType: !334, size: 320, offset: 192)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2208, file: !78, line: 476, baseType: !767, size: 32, offset: 512)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !2208, file: !78, line: 477, baseType: !29, size: 32, offset: 544)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !2208, file: !78, line: 482, baseType: !1354, size: 128, offset: 576)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !2208, file: !78, line: 483, baseType: !329, size: 64, offset: 704)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !2208, file: !78, line: 484, baseType: !329, size: 64, offset: 768)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !2208, file: !78, line: 485, baseType: !2219, size: 64, offset: 832)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2221)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !78, line: 404, size: 1280, elements: !2222)
!2222 = !{!2223, !2227, !2297, !2301, !2305, !2311, !2317, !2321, !2326, !2330, !2334, !2338, !2366, !2370, !2374, !2378, !2383, !2387, !2394, !2398}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !2221, file: !78, line: 405, baseType: !2224, size: 64)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = !DISubroutineType(types: !2226)
!2226 = !{!34, !2185, !843}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !2221, file: !78, line: 406, baseType: !2228, size: 64, offset: 64)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = !DISubroutineType(types: !2230)
!2230 = !{!34, !135, !2231}
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!2232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !1473, line: 293, size: 1536, elements: !2233)
!2233 = !{!2234, !2264, !2278}
!2234 = !DIDerivedType(tag: DW_TAG_member, scope: !2232, file: !1473, line: 295, baseType: !2235, size: 512)
!2235 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2232, file: !1473, line: 295, size: 512, elements: !2236)
!2236 = !{!2237, !2263}
!2237 = !DIDerivedType(tag: DW_TAG_member, scope: !2235, file: !1473, line: 296, baseType: !2238, size: 448)
!2238 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2235, file: !1473, line: 296, size: 448, elements: !2239)
!2239 = !{!2240, !2241, !2250, !2251, !2252, !2261, !2262}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2238, file: !1473, line: 298, baseType: !329, size: 64)
!2241 = !DIDerivedType(tag: DW_TAG_member, scope: !2238, file: !1473, line: 299, baseType: !2242, size: 128, offset: 64)
!2242 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2238, file: !1473, line: 299, size: 128, elements: !2243)
!2243 = !{!2244, !2245}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2242, file: !1473, line: 300, baseType: !54, size: 128)
!2245 = !DIDerivedType(tag: DW_TAG_member, scope: !2242, file: !1473, line: 302, baseType: !2246, size: 128)
!2246 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2242, file: !1473, line: 302, size: 128, elements: !2247)
!2247 = !{!2248, !2249}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2246, file: !1473, line: 303, baseType: !346, size: 64)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2246, file: !1473, line: 305, baseType: !10, size: 32, offset: 64)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2238, file: !1473, line: 310, baseType: !2207, size: 64, offset: 192)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2238, file: !1473, line: 311, baseType: !329, size: 64, offset: 256)
!2252 = !DIDerivedType(tag: DW_TAG_member, scope: !2238, file: !1473, line: 312, baseType: !2253, size: 64, offset: 320)
!2253 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2238, file: !1473, line: 312, size: 64, elements: !2254)
!2254 = !{!2255, !2256}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2253, file: !1473, line: 313, baseType: !346, size: 64)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !2253, file: !1473, line: 314, baseType: !2257, size: 64)
!2257 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !1473, line: 257, baseType: !2258)
!2258 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1473, line: 255, size: 64, elements: !2259)
!2259 = !{!2260}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2258, file: !1473, line: 256, baseType: !329, size: 64)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2238, file: !1473, line: 316, baseType: !29, size: 32, offset: 384)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2238, file: !1473, line: 317, baseType: !29, size: 32, offset: 416)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2235, file: !1473, line: 323, baseType: !2186, size: 512, align: 128)
!2264 = !DIDerivedType(tag: DW_TAG_member, scope: !2232, file: !1473, line: 325, baseType: !2265, size: 512, offset: 512)
!2265 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2232, file: !1473, line: 325, size: 512, elements: !2266)
!2266 = !{!2267, !2277}
!2267 = !DIDerivedType(tag: DW_TAG_member, scope: !2265, file: !1473, line: 326, baseType: !2268, size: 320)
!2268 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2265, file: !1473, line: 326, size: 320, elements: !2269)
!2269 = !{!2270, !2271, !2272, !2273, !2274, !2275, !2276}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !2268, file: !1473, line: 327, baseType: !329, size: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !2268, file: !1473, line: 328, baseType: !329, size: 64, offset: 64)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !2268, file: !1473, line: 329, baseType: !329, size: 64, offset: 128)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !2268, file: !1473, line: 331, baseType: !29, size: 32, offset: 192)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !2268, file: !1473, line: 332, baseType: !29, size: 32, offset: 224)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !2268, file: !1473, line: 333, baseType: !29, size: 32, offset: 256)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !2268, file: !1473, line: 335, baseType: !10, size: 32, offset: 288)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !2265, file: !1473, line: 339, baseType: !2186, size: 512, align: 128)
!2278 = !DIDerivedType(tag: DW_TAG_member, scope: !2232, file: !1473, line: 341, baseType: !2279, size: 512, offset: 1024)
!2279 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2232, file: !1473, line: 341, size: 512, elements: !2280)
!2280 = !{!2281, !2290, !2296}
!2281 = !DIDerivedType(tag: DW_TAG_member, scope: !2279, file: !1473, line: 342, baseType: !2282, size: 384)
!2282 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2279, file: !1473, line: 342, size: 384, elements: !2283)
!2283 = !{!2284, !2285, !2286, !2287, !2288, !2289}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !2282, file: !1473, line: 343, baseType: !329, size: 64)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !2282, file: !1473, line: 344, baseType: !329, size: 64, offset: 64)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !2282, file: !1473, line: 346, baseType: !346, size: 64, offset: 128)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !2282, file: !1473, line: 347, baseType: !346, size: 64, offset: 192)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !2282, file: !1473, line: 348, baseType: !346, size: 64, offset: 256)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !2282, file: !1473, line: 349, baseType: !346, size: 64, offset: 320)
!2290 = !DIDerivedType(tag: DW_TAG_member, scope: !2279, file: !1473, line: 352, baseType: !2291, size: 256)
!2291 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2279, file: !1473, line: 352, size: 256, elements: !2292)
!2292 = !{!2293, !2294, !2295}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !2291, file: !1473, line: 353, baseType: !329, size: 64)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !2291, file: !1473, line: 354, baseType: !329, size: 64, offset: 64)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !2291, file: !1473, line: 356, baseType: !54, size: 128, offset: 128)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !2279, file: !1473, line: 359, baseType: !2186, size: 512, align: 128)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !2221, file: !78, line: 409, baseType: !2298, size: 64, offset: 128)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2299 = !DISubroutineType(types: !2300)
!2300 = !{!34, !2207, !843}
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !2221, file: !78, line: 412, baseType: !2302, size: 64, offset: 192)
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!2303 = !DISubroutineType(types: !2304)
!2304 = !{!395, !2207, !2231}
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !2221, file: !78, line: 414, baseType: !2306, size: 64, offset: 256)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = !DISubroutineType(types: !2308)
!2308 = !{null, !2309}
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !78, line: 310, flags: DIFlagFwdDecl)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !2221, file: !78, line: 416, baseType: !2312, size: 64, offset: 320)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{!34, !135, !2207, !191, !10, !2315, !2316}
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !2221, file: !78, line: 419, baseType: !2318, size: 64, offset: 384)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = !DISubroutineType(types: !2320)
!2320 = !{!34, !135, !2207, !191, !10, !10, !2185, !346}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !2221, file: !78, line: 424, baseType: !2322, size: 64, offset: 448)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = !DISubroutineType(types: !2324)
!2324 = !{!2325, !2207, !2325}
!2325 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !30, line: 131, baseType: !123)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !2221, file: !78, line: 425, baseType: !2327, size: 64, offset: 512)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = !DISubroutineType(types: !2329)
!2329 = !{null, !2231, !715, !715}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !2221, file: !78, line: 426, baseType: !2331, size: 64, offset: 576)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = !DISubroutineType(types: !2333)
!2333 = !{!395, !2231, !767}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !2221, file: !78, line: 427, baseType: !2335, size: 64, offset: 640)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{null, !2231}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !2221, file: !78, line: 428, baseType: !2339, size: 64, offset: 704)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = !DISubroutineType(types: !2341)
!2341 = !{!712, !2342, !2364}
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !78, line: 373, size: 384, elements: !2344)
!2344 = !{!2345, !2346, !2347, !2351, !2352, !2353, !2354}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2343, file: !78, line: 374, baseType: !135, size: 64)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2343, file: !78, line: 375, baseType: !191, size: 64, offset: 64)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2343, file: !78, line: 376, baseType: !2348, size: 64, offset: 128)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = !DISubroutineType(types: !2350)
!2350 = !{null, !2342, !673}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2343, file: !78, line: 377, baseType: !346, size: 64, offset: 192)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2343, file: !78, line: 378, baseType: !34, size: 32, offset: 256)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2343, file: !78, line: 379, baseType: !49, size: 16, offset: 288)
!2354 = !DIDerivedType(tag: DW_TAG_member, scope: !2343, file: !78, line: 380, baseType: !2355, size: 64, offset: 320)
!2355 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2343, file: !78, line: 380, size: 64, elements: !2356)
!2356 = !{!2357, !2360}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2355, file: !78, line: 386, baseType: !2358, size: 64)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !78, line: 386, flags: DIFlagFwdDecl)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2355, file: !78, line: 395, baseType: !2361, size: 64)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{!712, !346}
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !78, line: 69, flags: DIFlagFwdDecl)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !2221, file: !78, line: 433, baseType: !2367, size: 64, offset: 768)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = !DISubroutineType(types: !2369)
!2369 = !{!34, !2207, !2231, !2231, !70}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !2221, file: !78, line: 435, baseType: !2371, size: 64, offset: 832)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{!34, !2231}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !2221, file: !78, line: 436, baseType: !2375, size: 64, offset: 896)
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{!395, !2231, !715, !715}
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !2221, file: !78, line: 438, baseType: !2379, size: 64, offset: 960)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{null, !2231, !2382, !2382}
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !2221, file: !78, line: 439, baseType: !2384, size: 64, offset: 1024)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{!34, !2207, !2185}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !2221, file: !78, line: 442, baseType: !2388, size: 64, offset: 1088)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = !DISubroutineType(types: !2390)
!2390 = !{!34, !2391, !135, !2393}
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !78, line: 66, flags: DIFlagFwdDecl)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !2221, file: !78, line: 444, baseType: !2395, size: 64, offset: 1152)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = !DISubroutineType(types: !2397)
!2397 = !{null, !135}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !2221, file: !78, line: 445, baseType: !2399, size: 64, offset: 1216)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{!34, !2342, !2364}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2208, file: !78, line: 486, baseType: !329, size: 64, offset: 896)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !2208, file: !78, line: 487, baseType: !334, size: 320, offset: 960)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !2208, file: !78, line: 488, baseType: !2405, size: 32, offset: 1280)
!2405 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2406, line: 8, baseType: !131)
!2406 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !2208, file: !78, line: 489, baseType: !158, size: 32, offset: 1312)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !2208, file: !78, line: 490, baseType: !54, size: 128, offset: 1344)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !2208, file: !78, line: 491, baseType: !346, size: 64, offset: 1472)
!2410 = !DIDerivedType(tag: DW_TAG_member, scope: !2193, file: !1473, line: 107, baseType: !2411, size: 64, offset: 192)
!2411 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2193, file: !1473, line: 107, size: 64, elements: !2412)
!2412 = !{!2413, !2414}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2411, file: !1473, line: 108, baseType: !329, size: 64)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2411, file: !1473, line: 109, baseType: !329, size: 64)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2193, file: !1473, line: 117, baseType: !329, size: 64, offset: 256)
!2416 = !DIDerivedType(tag: DW_TAG_member, scope: !2190, file: !1473, line: 119, baseType: !2417, size: 320)
!2417 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2190, file: !1473, line: 119, size: 320, elements: !2418)
!2418 = !{!2419, !2420, !2423, !2424, !2425}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2417, file: !1473, line: 124, baseType: !329, size: 64)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2417, file: !1473, line: 125, baseType: !2421, size: 64, offset: 64)
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !1473, line: 125, flags: DIFlagFwdDecl)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2417, file: !1473, line: 126, baseType: !329, size: 64, offset: 128)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2417, file: !1473, line: 127, baseType: !329, size: 64, offset: 192)
!2425 = !DIDerivedType(tag: DW_TAG_member, scope: !2417, file: !1473, line: 128, baseType: !2426, size: 64, offset: 256)
!2426 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2417, file: !1473, line: 128, size: 64, elements: !2427)
!2427 = !{!2428, !2429}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2426, file: !1473, line: 133, baseType: !329, size: 64)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2426, file: !1473, line: 138, baseType: !169, size: 64)
!2430 = !DIDerivedType(tag: DW_TAG_member, scope: !2190, file: !1473, line: 141, baseType: !2431, size: 64)
!2431 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2190, file: !1473, line: 141, size: 64, elements: !2432)
!2432 = !{!2433}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2431, file: !1473, line: 142, baseType: !329, size: 64)
!2434 = !DIDerivedType(tag: DW_TAG_member, scope: !2190, file: !1473, line: 144, baseType: !2435, size: 128)
!2435 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2190, file: !1473, line: 144, size: 128, elements: !2436)
!2436 = !{!2437, !2440}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2435, file: !1473, line: 146, baseType: !2438, size: 64)
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1473, line: 146, flags: DIFlagFwdDecl)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2435, file: !1473, line: 147, baseType: !346, size: 64, offset: 64)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2190, file: !1473, line: 161, baseType: !148, size: 128, align: 64)
!2442 = !DIDerivedType(tag: DW_TAG_member, scope: !2186, file: !1473, line: 164, baseType: !2443, size: 32, offset: 384)
!2443 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2186, file: !1473, line: 164, size: 32, elements: !2444)
!2444 = !{!2445, !2446}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2443, file: !1473, line: 169, baseType: !29, size: 32)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2443, file: !1473, line: 177, baseType: !10, size: 32)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2186, file: !1473, line: 181, baseType: !29, size: 32, offset: 416)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2182, file: !2169, line: 42, baseType: !132, size: 32, offset: 64)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2182, file: !2169, line: 43, baseType: !132, size: 32, offset: 96)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1185, file: !883, line: 1340, baseType: !2451, size: 64, offset: 20672)
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !883, line: 69, flags: DIFlagFwdDecl)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1185, file: !883, line: 1351, baseType: !34, size: 32, offset: 20736)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1185, file: !883, line: 1352, baseType: !34, size: 32, offset: 20768)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1185, file: !883, line: 1354, baseType: !329, size: 64, offset: 20800)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1185, file: !883, line: 1364, baseType: !123, size: 64, offset: 20864)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1185, file: !883, line: 1365, baseType: !123, size: 64, offset: 20928)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1185, file: !883, line: 1412, baseType: !329, size: 64, offset: 20992)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1185, file: !883, line: 1453, baseType: !2460, size: 64, offset: 21056)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !883, line: 1453, flags: DIFlagFwdDecl)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1185, file: !883, line: 1457, baseType: !2463, size: 64, offset: 21120)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !100, line: 61, size: 576, elements: !2465)
!2465 = !{!2466, !2467, !2486, !2489, !2490, !2523, !2533}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2464, file: !100, line: 62, baseType: !99, size: 32)
!2467 = !DIDerivedType(tag: DW_TAG_member, scope: !2464, file: !100, line: 64, baseType: !2468, size: 192, offset: 64)
!2468 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2464, file: !100, line: 64, size: 192, elements: !2469)
!2469 = !{!2470, !2481}
!2470 = !DIDerivedType(tag: DW_TAG_member, scope: !2468, file: !100, line: 65, baseType: !2471, size: 192)
!2471 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2468, file: !100, line: 65, size: 192, elements: !2472)
!2472 = !{!2473, !2480}
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2471, file: !100, line: 66, baseType: !2474, size: 128)
!2474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2475, line: 50, size: 128, elements: !2476)
!2475 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2476 = !{!2477, !2478, !2479}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2474, file: !2475, line: 52, baseType: !329, size: 64)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2474, file: !2475, line: 54, baseType: !10, size: 32, offset: 64)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2474, file: !2475, line: 55, baseType: !10, size: 32, offset: 96)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2471, file: !100, line: 67, baseType: !329, size: 64, offset: 128)
!2481 = !DIDerivedType(tag: DW_TAG_member, scope: !2468, file: !100, line: 70, baseType: !2482, size: 192)
!2482 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2468, file: !100, line: 70, size: 192, elements: !2483)
!2483 = !{!2484, !2485}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2482, file: !100, line: 71, baseType: !148, size: 128, align: 64)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2482, file: !100, line: 72, baseType: !329, size: 64, offset: 128)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2464, file: !100, line: 76, baseType: !2487, size: 64, offset: 256)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !100, line: 76, flags: DIFlagFwdDecl)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2464, file: !100, line: 77, baseType: !329, size: 64, offset: 320)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2464, file: !100, line: 79, baseType: !2491, size: 64, offset: 384)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2475, line: 25, size: 256, elements: !2493)
!2493 = !{!2494, !2500, !2504}
!2494 = !DIDerivedType(tag: DW_TAG_member, scope: !2492, file: !2475, line: 26, baseType: !2495, size: 128)
!2495 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2492, file: !2475, line: 26, size: 128, elements: !2496)
!2496 = !{!2497, !2499}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2495, file: !2475, line: 27, baseType: !2498, size: 128)
!2498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 128, elements: !1755)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2495, file: !2475, line: 28, baseType: !2498, size: 128)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2492, file: !2475, line: 31, baseType: !2501, size: 64, offset: 128)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2503)
!2503 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2475, line: 23, flags: DIFlagFwdDecl)
!2504 = !DIDerivedType(tag: DW_TAG_member, scope: !2492, file: !2475, line: 33, baseType: !2505, size: 64, offset: 192)
!2505 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2492, file: !2475, line: 33, size: 64, elements: !2506)
!2506 = !{!2507, !2513, !2518}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2505, file: !2475, line: 38, baseType: !2508, size: 64)
!2508 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2505, file: !2475, line: 34, size: 64, elements: !2509)
!2509 = !{!2510, !2511, !2512}
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2508, file: !2475, line: 35, baseType: !318, size: 32)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2508, file: !2475, line: 36, baseType: !39, size: 8, offset: 32)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2508, file: !2475, line: 37, baseType: !39, size: 8, offset: 40)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2505, file: !2475, line: 42, baseType: !2514, size: 16)
!2514 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2505, file: !2475, line: 39, size: 16, elements: !2515)
!2515 = !{!2516, !2517}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2514, file: !2475, line: 40, baseType: !39, size: 8)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2514, file: !2475, line: 41, baseType: !39, size: 8, offset: 8)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2505, file: !2475, line: 46, baseType: !2519, size: 16)
!2519 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2505, file: !2475, line: 43, size: 16, elements: !2520)
!2520 = !{!2521, !2522}
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2519, file: !2475, line: 44, baseType: !39, size: 8)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2519, file: !2475, line: 45, baseType: !39, size: 8, offset: 8)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2464, file: !100, line: 81, baseType: !2524, size: 64, offset: 448)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !100, line: 85, size: 384, elements: !2526)
!2526 = !{!2527, !2528, !2529, !2530, !2531, !2532}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2525, file: !100, line: 86, baseType: !2487, size: 64)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2525, file: !100, line: 87, baseType: !329, size: 64, offset: 64)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2525, file: !100, line: 88, baseType: !329, size: 64, offset: 128)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2525, file: !100, line: 89, baseType: !329, size: 64, offset: 192)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2525, file: !100, line: 90, baseType: !395, size: 8, offset: 256)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2525, file: !100, line: 92, baseType: !2524, size: 64, offset: 320)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2464, file: !100, line: 82, baseType: !10, size: 32, offset: 512)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1185, file: !883, line: 1463, baseType: !2535, offset: 21184)
!2535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !883, line: 739, elements: !812)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1185, file: !883, line: 1470, baseType: !148, size: 128, align: 64, offset: 21184)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1185, file: !883, line: 1471, baseType: !226, size: 32, offset: 21312)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1185, file: !883, line: 1472, baseType: !34, size: 32, offset: 21344)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1185, file: !883, line: 1474, baseType: !1184, size: 64, offset: 21376)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1185, file: !883, line: 1475, baseType: !2541, size: 320, offset: 21440)
!2541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2542, line: 11, size: 320, elements: !2543)
!2542 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2543 = !{!2544, !2545, !2546, !2551}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2541, file: !2542, line: 16, baseType: !239, size: 128)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2541, file: !2542, line: 17, baseType: !329, size: 64, offset: 128)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2541, file: !2542, line: 18, baseType: !2547, size: 64, offset: 192)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{null, !2550}
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2541, file: !2542, line: 19, baseType: !131, size: 32, offset: 256)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1185, file: !883, line: 1478, baseType: !2553, size: 64, offset: 21760)
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2554 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !883, line: 1478, flags: DIFlagFwdDecl)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1185, file: !883, line: 1482, baseType: !226, size: 32, offset: 21824)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1185, file: !883, line: 1489, baseType: !346, size: 64, offset: 21888)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1185, file: !883, line: 1504, baseType: !346, size: 64, offset: 21952)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1185, file: !883, line: 1505, baseType: !124, size: 64, offset: 22016)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1185, file: !883, line: 1506, baseType: !123, size: 64, offset: 22080)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1185, file: !883, line: 1507, baseType: !124, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1185, file: !883, line: 1508, baseType: !124, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1185, file: !883, line: 1509, baseType: !124, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1185, file: !883, line: 1510, baseType: !148, size: 128, align: 64, offset: 22208)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1185, file: !883, line: 1511, baseType: !34, size: 32, offset: 22336)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1185, file: !883, line: 1515, baseType: !2566, size: 64, offset: 22400)
!2566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !143, line: 56, size: 64, elements: !2567)
!2567 = !{!2568}
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2566, file: !143, line: 57, baseType: !146, size: 64)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1185, file: !883, line: 1518, baseType: !2566, size: 64, offset: 22464)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1185, file: !883, line: 1528, baseType: !148, size: 128, align: 64, offset: 22528)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1185, file: !883, line: 1552, baseType: !2572, size: 35328, offset: 23040)
!2572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2573, line: 430, size: 35328, elements: !2574)
!2573 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2574 = !{!2575, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2604, !2605, !2606, !2607, !2608, !2609, !2612, !2613, !2614, !2615}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2572, file: !2573, line: 432, baseType: !2576, size: 192)
!2576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2577, size: 192, elements: !218)
!2577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2578, line: 16, size: 64, elements: !2579)
!2578 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2579 = !{!2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592}
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2577, file: !2578, line: 17, baseType: !49, size: 16)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2577, file: !2578, line: 18, baseType: !49, size: 16, offset: 16)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2577, file: !2578, line: 19, baseType: !49, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2577, file: !2578, line: 19, baseType: !49, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2577, file: !2578, line: 19, baseType: !49, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2577, file: !2578, line: 19, baseType: !49, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2577, file: !2578, line: 19, baseType: !49, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2577, file: !2578, line: 20, baseType: !49, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2577, file: !2578, line: 20, baseType: !49, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2577, file: !2578, line: 20, baseType: !49, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2577, file: !2578, line: 20, baseType: !49, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2577, file: !2578, line: 20, baseType: !49, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2577, file: !2578, line: 20, baseType: !49, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2572, file: !2573, line: 436, baseType: !329, size: 64, offset: 192)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2572, file: !2573, line: 440, baseType: !51, size: 16, offset: 256)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2572, file: !2573, line: 441, baseType: !51, size: 16, offset: 272)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2572, file: !2573, line: 442, baseType: !51, size: 16, offset: 288)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2572, file: !2573, line: 443, baseType: !51, size: 16, offset: 304)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2572, file: !2573, line: 447, baseType: !329, size: 64, offset: 320)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2572, file: !2573, line: 448, baseType: !329, size: 64, offset: 384)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2572, file: !2573, line: 459, baseType: !2601, size: 256, offset: 448)
!2601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2602, size: 256, elements: !244)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2573, line: 428, flags: DIFlagFwdDecl)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2572, file: !2573, line: 461, baseType: !329, size: 64, offset: 704)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2572, file: !2573, line: 463, baseType: !329, size: 64, offset: 768)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2572, file: !2573, line: 465, baseType: !329, size: 64, offset: 832)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2572, file: !2573, line: 466, baseType: !329, size: 64, offset: 896)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2572, file: !2573, line: 467, baseType: !329, size: 64, offset: 960)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2572, file: !2573, line: 473, baseType: !2610, size: 64, offset: 1024)
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2611, size: 64)
!2611 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2573, line: 10, flags: DIFlagFwdDecl)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2572, file: !2573, line: 480, baseType: !329, size: 64, offset: 1088)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2572, file: !2573, line: 482, baseType: !10, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2572, file: !2573, line: 491, baseType: !131, size: 32, offset: 1184)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2572, file: !2573, line: 501, baseType: !2616, size: 33792, offset: 1536)
!2616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2617, line: 448, size: 33792, elements: !2618)
!2617 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2618 = !{!2619, !2620, !2621, !2785, !2786, !2792, !2793}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2616, file: !2617, line: 461, baseType: !10, size: 32)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2616, file: !2617, line: 468, baseType: !329, size: 64, offset: 64)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2616, file: !2617, line: 476, baseType: !2622, size: 64, offset: 128)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2617, line: 356, size: 33280, align: 512, elements: !2624)
!2624 = !{!2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2623, file: !2617, line: 358, baseType: !10, size: 32)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2623, file: !2617, line: 361, baseType: !10, size: 32, offset: 32)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2623, file: !2617, line: 364, baseType: !123, size: 64, offset: 64)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2623, file: !2617, line: 367, baseType: !123, size: 64, offset: 128)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2623, file: !2617, line: 370, baseType: !123, size: 64, offset: 192)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2623, file: !2617, line: 373, baseType: !10, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2623, file: !2617, line: 376, baseType: !10, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2623, file: !2617, line: 391, baseType: !10, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2623, file: !2617, line: 394, baseType: !10, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2623, file: !2617, line: 397, baseType: !2635, size: 32768, offset: 512)
!2635 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2617, line: 348, size: 32768, elements: !2636)
!2636 = !{!2637, !2652, !2691, !2768, !2781}
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2635, file: !2617, line: 349, baseType: !2638, size: 896)
!2638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2617, line: 12, size: 896, elements: !2639)
!2639 = !{!2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2651}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2638, file: !2617, line: 13, baseType: !131, size: 32)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2638, file: !2617, line: 14, baseType: !131, size: 32, offset: 32)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2638, file: !2617, line: 15, baseType: !131, size: 32, offset: 64)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2638, file: !2617, line: 16, baseType: !131, size: 32, offset: 96)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2638, file: !2617, line: 17, baseType: !131, size: 32, offset: 128)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2638, file: !2617, line: 18, baseType: !131, size: 32, offset: 160)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2638, file: !2617, line: 19, baseType: !131, size: 32, offset: 192)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2638, file: !2617, line: 22, baseType: !2648, size: 640, offset: 224)
!2648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 640, elements: !2649)
!2649 = !{!2650}
!2650 = !DISubrange(count: 20)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2638, file: !2617, line: 25, baseType: !131, size: 32, offset: 864)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2635, file: !2617, line: 350, baseType: !2653, size: 4096, align: 128)
!2653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2617, line: 34, size: 4096, align: 128, elements: !2654)
!2654 = !{!2655, !2656, !2657, !2658, !2659, !2674, !2675, !2676, !2680, !2682, !2686}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2653, file: !2617, line: 35, baseType: !49, size: 16)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2653, file: !2617, line: 36, baseType: !49, size: 16, offset: 16)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2653, file: !2617, line: 37, baseType: !49, size: 16, offset: 32)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2653, file: !2617, line: 38, baseType: !49, size: 16, offset: 48)
!2659 = !DIDerivedType(tag: DW_TAG_member, scope: !2653, file: !2617, line: 39, baseType: !2660, size: 128, offset: 64)
!2660 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2653, file: !2617, line: 39, size: 128, elements: !2661)
!2661 = !{!2662, !2667}
!2662 = !DIDerivedType(tag: DW_TAG_member, scope: !2660, file: !2617, line: 40, baseType: !2663, size: 128)
!2663 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2660, file: !2617, line: 40, size: 128, elements: !2664)
!2664 = !{!2665, !2666}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2663, file: !2617, line: 41, baseType: !123, size: 64)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2663, file: !2617, line: 42, baseType: !123, size: 64, offset: 64)
!2667 = !DIDerivedType(tag: DW_TAG_member, scope: !2660, file: !2617, line: 44, baseType: !2668, size: 128)
!2668 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2660, file: !2617, line: 44, size: 128, elements: !2669)
!2669 = !{!2670, !2671, !2672, !2673}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2668, file: !2617, line: 45, baseType: !131, size: 32)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2668, file: !2617, line: 46, baseType: !131, size: 32, offset: 32)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2668, file: !2617, line: 47, baseType: !131, size: 32, offset: 64)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2668, file: !2617, line: 48, baseType: !131, size: 32, offset: 96)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2653, file: !2617, line: 51, baseType: !131, size: 32, offset: 192)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2653, file: !2617, line: 52, baseType: !131, size: 32, offset: 224)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2653, file: !2617, line: 55, baseType: !2677, size: 1024, offset: 256)
!2677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 1024, elements: !2678)
!2678 = !{!2679}
!2679 = !DISubrange(count: 32)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2653, file: !2617, line: 58, baseType: !2681, size: 2048, offset: 1280)
!2681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 2048, elements: !1953)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2653, file: !2617, line: 60, baseType: !2683, size: 384, offset: 3328)
!2683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 384, elements: !2684)
!2684 = !{!2685}
!2685 = !DISubrange(count: 12)
!2686 = !DIDerivedType(tag: DW_TAG_member, scope: !2653, file: !2617, line: 62, baseType: !2687, size: 384, offset: 3712)
!2687 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2653, file: !2617, line: 62, size: 384, elements: !2688)
!2688 = !{!2689, !2690}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2687, file: !2617, line: 63, baseType: !2683, size: 384)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2687, file: !2617, line: 64, baseType: !2683, size: 384)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2635, file: !2617, line: 351, baseType: !2692, size: 1088)
!2692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2617, line: 79, size: 1088, elements: !2693)
!2693 = !{!2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2767}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2692, file: !2617, line: 80, baseType: !131, size: 32)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2692, file: !2617, line: 81, baseType: !131, size: 32, offset: 32)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2692, file: !2617, line: 82, baseType: !131, size: 32, offset: 64)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2692, file: !2617, line: 83, baseType: !131, size: 32, offset: 96)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2692, file: !2617, line: 84, baseType: !131, size: 32, offset: 128)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2692, file: !2617, line: 85, baseType: !131, size: 32, offset: 160)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2692, file: !2617, line: 86, baseType: !131, size: 32, offset: 192)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2692, file: !2617, line: 88, baseType: !2648, size: 640, offset: 224)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2692, file: !2617, line: 89, baseType: !39, size: 8, offset: 864)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2692, file: !2617, line: 90, baseType: !39, size: 8, offset: 872)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2692, file: !2617, line: 91, baseType: !39, size: 8, offset: 880)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2692, file: !2617, line: 92, baseType: !39, size: 8, offset: 888)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2692, file: !2617, line: 93, baseType: !39, size: 8, offset: 896)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2692, file: !2617, line: 94, baseType: !39, size: 8, offset: 904)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2692, file: !2617, line: 95, baseType: !2709, size: 64, offset: 960)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2711, line: 11, size: 128, elements: !2712)
!2711 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!2712 = !{!2713, !2714}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2710, file: !2711, line: 12, baseType: !673, size: 64)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2710, file: !2711, line: 13, baseType: !2715, size: 64, offset: 64)
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2717, line: 103, size: 1344, elements: !2718)
!2717 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!2718 = !{!2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2747, !2748, !2749}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2716, file: !2717, line: 109, baseType: !329, size: 64)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2716, file: !2717, line: 110, baseType: !329, size: 64, offset: 64)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2716, file: !2717, line: 111, baseType: !329, size: 64, offset: 128)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2716, file: !2717, line: 112, baseType: !329, size: 64, offset: 192)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2716, file: !2717, line: 113, baseType: !329, size: 64, offset: 256)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2716, file: !2717, line: 114, baseType: !329, size: 64, offset: 320)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2716, file: !2717, line: 117, baseType: !329, size: 64, offset: 384)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2716, file: !2717, line: 118, baseType: !329, size: 64, offset: 448)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2716, file: !2717, line: 119, baseType: !329, size: 64, offset: 512)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2716, file: !2717, line: 120, baseType: !329, size: 64, offset: 576)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2716, file: !2717, line: 121, baseType: !329, size: 64, offset: 640)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2716, file: !2717, line: 122, baseType: !329, size: 64, offset: 704)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2716, file: !2717, line: 123, baseType: !329, size: 64, offset: 768)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2716, file: !2717, line: 124, baseType: !329, size: 64, offset: 832)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2716, file: !2717, line: 125, baseType: !329, size: 64, offset: 896)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2716, file: !2717, line: 139, baseType: !329, size: 64, offset: 960)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2716, file: !2717, line: 142, baseType: !329, size: 64, offset: 1024)
!2736 = !DIDerivedType(tag: DW_TAG_member, scope: !2716, file: !2717, line: 144, baseType: !2737, size: 64, offset: 1088)
!2737 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2716, file: !2717, line: 144, size: 64, elements: !2738)
!2738 = !{!2739, !2740, !2741}
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2737, file: !2717, line: 146, baseType: !49, size: 16)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !2737, file: !2717, line: 148, baseType: !123, size: 64)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !2737, file: !2717, line: 150, baseType: !2742, size: 64)
!2742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !2717, line: 59, size: 64, elements: !2743)
!2743 = !{!2744, !2745, !2746}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2742, file: !2717, line: 61, baseType: !123, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !2742, file: !2717, line: 63, baseType: !123, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !2742, file: !2717, line: 65, baseType: !123, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2716, file: !2717, line: 153, baseType: !329, size: 64, offset: 1152)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2716, file: !2717, line: 154, baseType: !329, size: 64, offset: 1216)
!2749 = !DIDerivedType(tag: DW_TAG_member, scope: !2716, file: !2717, line: 156, baseType: !2750, size: 64, offset: 1280)
!2750 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2716, file: !2717, line: 156, size: 64, elements: !2751)
!2751 = !{!2752, !2753, !2754}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2750, file: !2717, line: 158, baseType: !49, size: 16)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !2750, file: !2717, line: 160, baseType: !123, size: 64)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !2750, file: !2717, line: 162, baseType: !2755, size: 64)
!2755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !2717, line: 69, size: 64, elements: !2756)
!2756 = !{!2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766}
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2755, file: !2717, line: 71, baseType: !123, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !2755, file: !2717, line: 73, baseType: !123, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !2755, file: !2717, line: 75, baseType: !123, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !2755, file: !2717, line: 77, baseType: !123, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !2755, file: !2717, line: 80, baseType: !123, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2755, file: !2717, line: 83, baseType: !123, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !2755, file: !2717, line: 86, baseType: !123, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !2755, file: !2717, line: 88, baseType: !123, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !2755, file: !2717, line: 93, baseType: !123, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !2755, file: !2717, line: 100, baseType: !123, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2692, file: !2617, line: 96, baseType: !131, size: 32, offset: 1024)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2635, file: !2617, line: 352, baseType: !2769, size: 4608, align: 512)
!2769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2617, line: 333, size: 4608, align: 512, elements: !2770)
!2770 = !{!2771, !2772, !2779}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2769, file: !2617, line: 334, baseType: !2653, size: 4096, align: 128)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2769, file: !2617, line: 335, baseType: !2773, size: 512, offset: 4096)
!2773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2617, line: 312, size: 512, elements: !2774)
!2774 = !{!2775, !2776, !2777}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2773, file: !2617, line: 313, baseType: !123, size: 64)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2773, file: !2617, line: 314, baseType: !123, size: 64, offset: 64)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2773, file: !2617, line: 315, baseType: !2778, size: 384, offset: 128)
!2778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 384, elements: !382)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2769, file: !2617, line: 336, baseType: !2780, offset: 4608)
!2780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, elements: !263)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2635, file: !2617, line: 353, baseType: !2782, size: 32768)
!2782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 32768, elements: !2783)
!2783 = !{!2784}
!2784 = !DISubrange(count: 4096)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2616, file: !2617, line: 484, baseType: !2622, size: 64, offset: 192)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2616, file: !2617, line: 491, baseType: !2787, size: 128, offset: 256)
!2787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2617, line: 404, size: 128, elements: !2788)
!2788 = !{!2789, !2790, !2791}
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !2787, file: !2617, line: 424, baseType: !123, size: 64)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !2787, file: !2617, line: 432, baseType: !10, size: 32, offset: 64)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !2787, file: !2617, line: 440, baseType: !10, size: 32, offset: 96)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2616, file: !2617, line: 498, baseType: !2787, size: 128, offset: 384)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2616, file: !2617, line: 508, baseType: !2623, size: 33280, align: 512, offset: 512)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1166, file: !1167, line: 16, baseType: !248, size: 192, offset: 512)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1166, file: !1167, line: 17, baseType: !29, size: 32, offset: 704)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !772, file: !78, line: 1240, baseType: !346, size: 64, offset: 6912)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !772, file: !78, line: 1243, baseType: !131, size: 32, offset: 6976)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !772, file: !78, line: 1245, baseType: !351, size: 64, offset: 7040)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !772, file: !78, line: 1246, baseType: !351, size: 64, offset: 7104)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !772, file: !78, line: 1248, baseType: !132, size: 32, offset: 7168)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !772, file: !78, line: 1249, baseType: !2802, size: 64, offset: 7232)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !78, line: 634, flags: DIFlagFwdDecl)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !772, file: !78, line: 1252, baseType: !2805, size: 256, offset: 7296)
!2805 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 256, elements: !2678)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !772, file: !78, line: 1253, baseType: !2807, size: 128, offset: 7552)
!2807 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2808, line: 21, baseType: !2809)
!2808 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!2809 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2808, line: 19, size: 128, elements: !2810)
!2810 = !{!2811}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2809, file: !2808, line: 20, baseType: !2812, size: 128)
!2812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 128, elements: !1755)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !772, file: !78, line: 1255, baseType: !10, size: 32, offset: 7680)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !772, file: !78, line: 1261, baseType: !179, size: 256, offset: 7744)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !772, file: !78, line: 1267, baseType: !398, size: 64, offset: 8000)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !772, file: !78, line: 1269, baseType: !2817, size: 64, offset: 8064)
!2817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2818, size: 64)
!2818 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2819)
!2819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !113, line: 128, size: 1024, align: 512, elements: !2820)
!2820 = !{!2821, !2825, !2826, !2833, !2839, !2843, !2847, !2851, !2852, !2856, !2860, !2865, !2869}
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2819, file: !113, line: 129, baseType: !2822, size: 64)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = !DISubroutineType(types: !2824)
!2824 = !{!34, !519, !10}
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2819, file: !113, line: 130, baseType: !2822, size: 64, offset: 64)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2819, file: !113, line: 131, baseType: !2827, size: 64, offset: 128)
!2827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2828, size: 64)
!2828 = !DISubroutineType(types: !2829)
!2829 = !{!34, !2830, !2832}
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2831, size: 64)
!2831 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !520)
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2819, file: !113, line: 132, baseType: !2834, size: 64, offset: 192)
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2835, size: 64)
!2835 = !DISubroutineType(types: !2836)
!2836 = !{!34, !2830, !10, !398, !2837}
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2838 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !543)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2819, file: !113, line: 134, baseType: !2840, size: 64, offset: 256)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = !DISubroutineType(types: !2842)
!2842 = !{!34, !2830}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2819, file: !113, line: 135, baseType: !2844, size: 64, offset: 320)
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2845, size: 64)
!2845 = !DISubroutineType(types: !2846)
!2846 = !{!34, !519}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2819, file: !113, line: 136, baseType: !2848, size: 64, offset: 384)
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64)
!2849 = !DISubroutineType(types: !2850)
!2850 = !{null, !519}
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2819, file: !113, line: 137, baseType: !2848, size: 64, offset: 448)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2819, file: !113, line: 138, baseType: !2853, size: 64, offset: 512)
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2854 = !DISubroutineType(types: !2855)
!2855 = !{null, !519, !558}
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2819, file: !113, line: 139, baseType: !2857, size: 64, offset: 576)
!2857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2858, size: 64)
!2858 = !DISubroutineType(types: !2859)
!2859 = !{!408, !519, !408, !34}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2819, file: !113, line: 140, baseType: !2861, size: 64, offset: 640)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = !DISubroutineType(types: !2863)
!2863 = !{!514, !2864}
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2819, file: !113, line: 141, baseType: !2866, size: 64, offset: 704)
!2866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2867, size: 64)
!2867 = !DISubroutineType(types: !2868)
!2868 = !{!34, !681, !395}
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2819, file: !113, line: 142, baseType: !2870, size: 64, offset: 768)
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2871 = !DISubroutineType(types: !2872)
!2872 = !{!519, !519, !2873}
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2874 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !559)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !772, file: !78, line: 1271, baseType: !2876, size: 448, offset: 8128)
!2876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !948, line: 63, size: 448, elements: !2877)
!2877 = !{!2878, !2883, !2884, !2885, !2886, !2887, !2888}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2876, file: !948, line: 64, baseType: !2879, size: 64)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = !DISubroutineType(types: !2881)
!2881 = !{!329, !2882, !946}
!2882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2876, file: !948, line: 66, baseType: !2879, size: 64, offset: 64)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2876, file: !948, line: 69, baseType: !673, size: 64, offset: 128)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2876, file: !948, line: 70, baseType: !34, size: 32, offset: 192)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2876, file: !948, line: 71, baseType: !10, size: 32, offset: 224)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2876, file: !948, line: 74, baseType: !54, size: 128, offset: 256)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2876, file: !948, line: 85, baseType: !2889, size: 64, offset: 384)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !772, file: !78, line: 1274, baseType: !169, size: 64, offset: 8576)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !772, file: !78, line: 1280, baseType: !169, size: 64, offset: 8640)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !772, file: !78, line: 1283, baseType: !34, size: 32, offset: 8704)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !772, file: !78, line: 1286, baseType: !2405, size: 32, offset: 8736)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !772, file: !78, line: 1289, baseType: !2895, size: 64, offset: 8768)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1604, line: 18, flags: DIFlagFwdDecl)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !772, file: !78, line: 1290, baseType: !235, size: 64, offset: 8832)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !772, file: !78, line: 1297, baseType: !481, size: 64, offset: 8896)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !772, file: !78, line: 1304, baseType: !2900, size: 64, offset: 8960)
!2900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2901, line: 49, size: 64, elements: !2902)
!2901 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!2902 = !{!2903}
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2900, file: !2901, line: 50, baseType: !2904, size: 64)
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2901, line: 41, size: 512, align: 512, elements: !2906)
!2906 = !{!2907, !2908, !2913}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2905, file: !2901, line: 43, baseType: !158, size: 32)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2905, file: !2901, line: 45, baseType: !2909, size: 192, offset: 64)
!2909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2901, line: 29, size: 192, elements: !2910)
!2910 = !{!2911, !2912}
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2909, file: !2901, line: 30, baseType: !54, size: 128)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2909, file: !2901, line: 32, baseType: !673, size: 64, offset: 128)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2905, file: !2901, line: 46, baseType: !673, size: 64, offset: 256)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !772, file: !78, line: 1305, baseType: !2900, size: 64, offset: 9024)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !772, file: !78, line: 1306, baseType: !148, size: 128, align: 64, offset: 9088)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !772, file: !78, line: 1307, baseType: !1603, size: 256, offset: 9216)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !772, file: !78, line: 1309, baseType: !179, size: 256, offset: 9472)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !772, file: !78, line: 1314, baseType: !34, size: 32, offset: 9728)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !772, file: !78, line: 1317, baseType: !158, size: 32, align: 512, offset: 10240)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !772, file: !78, line: 1318, baseType: !54, size: 128, offset: 10304)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !772, file: !78, line: 1320, baseType: !158, size: 32, offset: 10432)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !772, file: !78, line: 1321, baseType: !54, size: 128, offset: 10496)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !559, file: !78, line: 656, baseType: !2207, size: 64, offset: 512)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !559, file: !78, line: 659, baseType: !346, size: 64, offset: 576)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !559, file: !78, line: 663, baseType: !329, size: 64, offset: 640)
!2926 = !DIDerivedType(tag: DW_TAG_member, scope: !559, file: !78, line: 671, baseType: !2927, size: 32, offset: 704)
!2927 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !559, file: !78, line: 671, size: 32, elements: !2928)
!2928 = !{!2929, !2931}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2927, file: !78, line: 672, baseType: !2930, size: 32)
!2930 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2927, file: !78, line: 673, baseType: !10, size: 32)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !559, file: !78, line: 675, baseType: !633, size: 32, offset: 736)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !559, file: !78, line: 676, baseType: !191, size: 64, offset: 768)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !559, file: !78, line: 677, baseType: !669, size: 128, offset: 832)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !559, file: !78, line: 678, baseType: !669, size: 128, offset: 960)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !559, file: !78, line: 679, baseType: !669, size: 128, offset: 1088)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !559, file: !78, line: 680, baseType: !158, size: 32, offset: 1216)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !559, file: !78, line: 681, baseType: !51, size: 16, offset: 1248)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !559, file: !78, line: 682, baseType: !39, size: 8, offset: 1264)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !559, file: !78, line: 683, baseType: !39, size: 8, offset: 1272)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !559, file: !78, line: 684, baseType: !1079, size: 64, offset: 1280)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !559, file: !78, line: 691, baseType: !329, size: 64, offset: 1344)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !559, file: !78, line: 692, baseType: !334, size: 320, offset: 1408)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !559, file: !78, line: 694, baseType: !329, size: 64, offset: 1728)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !559, file: !78, line: 695, baseType: !329, size: 64, offset: 1792)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !559, file: !78, line: 697, baseType: !239, size: 128, offset: 1856)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !559, file: !78, line: 698, baseType: !54, size: 128, offset: 1984)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !559, file: !78, line: 707, baseType: !54, size: 128, offset: 2112)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !559, file: !78, line: 708, baseType: !54, size: 128, offset: 2240)
!2950 = !DIDerivedType(tag: DW_TAG_member, scope: !559, file: !78, line: 709, baseType: !2951, size: 128, offset: 2368)
!2951 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !559, file: !78, line: 709, size: 128, elements: !2952)
!2952 = !{!2953, !2954}
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2951, file: !78, line: 710, baseType: !235, size: 64)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2951, file: !78, line: 711, baseType: !148, size: 128, align: 64)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !559, file: !78, line: 713, baseType: !171, size: 64, offset: 2496)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !559, file: !78, line: 714, baseType: !171, size: 64, offset: 2560)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !559, file: !78, line: 715, baseType: !29, size: 32, offset: 2624)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !559, file: !78, line: 716, baseType: !29, size: 32, offset: 2656)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !559, file: !78, line: 717, baseType: !29, size: 32, offset: 2688)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !559, file: !78, line: 719, baseType: !29, size: 32, offset: 2720)
!2961 = !DIDerivedType(tag: DW_TAG_member, scope: !559, file: !78, line: 721, baseType: !2962, size: 64, offset: 2752)
!2962 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !559, file: !78, line: 721, size: 64, elements: !2963)
!2963 = !{!2964, !3146}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2962, file: !78, line: 722, baseType: !2965, size: 64)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2967)
!2967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !78, line: 1914, size: 2112, elements: !2968)
!2968 = !{!2969, !2970, !2974, !2979, !2983, !2984, !2985, !2991, !3004, !3012, !3016, !3017, !3074, !3075, !3079, !3084, !3085, !3089, !3093, !3099, !3100, !3104, !3105, !3109, !3113, !3114, !3119, !3123, !3127, !3131, !3135, !3136, !3142}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2967, file: !78, line: 1915, baseType: !804, size: 64)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2967, file: !78, line: 1916, baseType: !2971, size: 64, offset: 64)
!2971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2972, size: 64)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{!191, !135, !191, !34}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2967, file: !78, line: 1917, baseType: !2975, size: 64, offset: 128)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{!712, !135, !408, !715, !2978}
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2967, file: !78, line: 1918, baseType: !2980, size: 64, offset: 192)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DISubroutineType(types: !2982)
!2982 = !{!712, !135, !398, !715, !2978}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2967, file: !78, line: 1919, baseType: !2339, size: 64, offset: 256)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2967, file: !78, line: 1920, baseType: !2339, size: 64, offset: 320)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2967, file: !78, line: 1921, baseType: !2986, size: 64, offset: 384)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{!34, !2342, !2989, !10}
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !78, line: 53, flags: DIFlagFwdDecl)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2967, file: !78, line: 1923, baseType: !2992, size: 64, offset: 448)
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2993, size: 64)
!2993 = !DISubroutineType(types: !2994)
!2994 = !{!34, !135, !2995}
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !78, line: 1858, size: 128, elements: !2997)
!2997 = !{!2998, !3003}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2996, file: !78, line: 1859, baseType: !2999, size: 64)
!2999 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !78, line: 1855, baseType: !3000)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = !DISubroutineType(types: !3002)
!3002 = !{!395, !2995, !398, !34, !191, !123, !10}
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2996, file: !78, line: 1860, baseType: !191, size: 64, offset: 64)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2967, file: !78, line: 1924, baseType: !3005, size: 64, offset: 512)
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{!3008, !135, !3010}
!3008 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3009, line: 59, baseType: !10)
!3009 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !78, line: 61, flags: DIFlagFwdDecl)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2967, file: !78, line: 1925, baseType: !3013, size: 64, offset: 576)
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3014, size: 64)
!3014 = !DISubroutineType(types: !3015)
!3015 = !{!673, !135, !10, !329}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2967, file: !78, line: 1926, baseType: !3013, size: 64, offset: 640)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2967, file: !78, line: 1927, baseType: !3018, size: 64, offset: 704)
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3019 = !DISubroutineType(types: !3020)
!3020 = !{!34, !135, !3021}
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1473, line: 625, size: 1344, elements: !3023)
!3023 = !{!3024, !3033, !3034, !3040, !3047, !3048, !3053, !3054, !3059, !3060, !3063, !3067, !3068, !3069, !3070, !3071, !3072}
!3024 = !DIDerivedType(tag: DW_TAG_member, scope: !3022, file: !1473, line: 628, baseType: !3025, size: 128)
!3025 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3022, file: !1473, line: 628, size: 128, elements: !3026)
!3026 = !{!3027, !3032}
!3027 = !DIDerivedType(tag: DW_TAG_member, scope: !3025, file: !1473, line: 629, baseType: !3028, size: 128)
!3028 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3025, file: !1473, line: 629, size: 128, elements: !3029)
!3029 = !{!3030, !3031}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !3028, file: !1473, line: 631, baseType: !329, size: 64)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !3028, file: !1473, line: 632, baseType: !329, size: 64, offset: 64)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !3025, file: !1473, line: 635, baseType: !148, size: 128, align: 64)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !3022, file: !1473, line: 639, baseType: !1471, size: 64, offset: 128)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !3022, file: !1473, line: 640, baseType: !3035, size: 64, offset: 192)
!3035 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1507, line: 297, baseType: !3036)
!3036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1507, line: 297, size: 64, elements: !3037)
!3037 = !{!3038}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !3036, file: !1507, line: 297, baseType: !3039, size: 64)
!3039 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1512, line: 19, baseType: !329)
!3040 = !DIDerivedType(tag: DW_TAG_member, scope: !3022, file: !1473, line: 646, baseType: !3041, size: 64, offset: 256)
!3041 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3022, file: !1473, line: 646, size: 64, elements: !3042)
!3042 = !{!3043, !3046}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !3041, file: !1473, line: 647, baseType: !3044, size: 64)
!3044 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3045)
!3045 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !1473, line: 542, baseType: !329)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !3041, file: !1473, line: 648, baseType: !3045, size: 64)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !3022, file: !1473, line: 666, baseType: !34, size: 32, offset: 320)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !3022, file: !1473, line: 667, baseType: !3049, size: 64, offset: 384)
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!3050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !1473, line: 579, size: 320, elements: !3051)
!3051 = !{!3052}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3050, file: !1473, line: 580, baseType: !334, size: 320)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !3022, file: !1473, line: 670, baseType: !395, size: 8, offset: 448)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !3022, file: !1473, line: 681, baseType: !3055, size: 256, offset: 512)
!3055 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3022, file: !1473, line: 678, size: 256, elements: !3056)
!3056 = !{!3057, !3058}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3055, file: !1473, line: 679, baseType: !325, size: 192, align: 64)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !3055, file: !1473, line: 680, baseType: !329, size: 64, offset: 192)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !3022, file: !1473, line: 689, baseType: !54, size: 128, offset: 768)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !3022, file: !1473, line: 691, baseType: !3061, size: 64, offset: 896)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1473, line: 691, flags: DIFlagFwdDecl)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3022, file: !1473, line: 694, baseType: !3064, size: 64, offset: 960)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3066)
!3066 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1473, line: 694, flags: DIFlagFwdDecl)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !3022, file: !1473, line: 697, baseType: !329, size: 64, offset: 1024)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !3022, file: !1473, line: 699, baseType: !135, size: 64, offset: 1088)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !3022, file: !1473, line: 700, baseType: !346, size: 64, offset: 1152)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !3022, file: !1473, line: 711, baseType: !169, size: 64, offset: 1216)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !3022, file: !1473, line: 717, baseType: !2142, size: 64, offset: 1280)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !3022, file: !1473, line: 722, baseType: !3073, offset: 1344)
!3073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1473, line: 570, elements: !812)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2967, file: !78, line: 1928, baseType: !329, size: 64, offset: 768)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2967, file: !78, line: 1929, baseType: !3076, size: 64, offset: 832)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{!34, !558, !135}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2967, file: !78, line: 1930, baseType: !3080, size: 64, offset: 896)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DISubroutineType(types: !3082)
!3082 = !{!34, !135, !3083}
!3083 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !78, line: 1061, baseType: !346)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2967, file: !78, line: 1931, baseType: !3076, size: 64, offset: 960)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2967, file: !78, line: 1932, baseType: !3086, size: 64, offset: 1024)
!3086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3087, size: 64)
!3087 = !DISubroutineType(types: !3088)
!3088 = !{!34, !135, !191, !191, !34}
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2967, file: !78, line: 1933, baseType: !3090, size: 64, offset: 1088)
!3090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3091, size: 64)
!3091 = !DISubroutineType(types: !3092)
!3092 = !{!34, !34, !135, !34}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2967, file: !78, line: 1934, baseType: !3094, size: 64, offset: 1152)
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3095 = !DISubroutineType(types: !3096)
!3096 = !{!34, !135, !34, !3097}
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !78, line: 1063, flags: DIFlagFwdDecl)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2967, file: !78, line: 1935, baseType: !1496, size: 64, offset: 1216)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2967, file: !78, line: 1936, baseType: !3101, size: 64, offset: 1280)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{!34, !34}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2967, file: !78, line: 1937, baseType: !3094, size: 64, offset: 1344)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2967, file: !78, line: 1938, baseType: !3106, size: 64, offset: 1408)
!3106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3107, size: 64)
!3107 = !DISubroutineType(types: !3108)
!3108 = !{!712, !2179, !135, !2978, !715, !10}
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2967, file: !78, line: 1939, baseType: !3110, size: 64, offset: 1472)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = !DISubroutineType(types: !3112)
!3112 = !{!712, !135, !2978, !2179, !715, !10}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2967, file: !78, line: 1940, baseType: !2395, size: 64, offset: 1536)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2967, file: !78, line: 1941, baseType: !3115, size: 64, offset: 1600)
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3116 = !DISubroutineType(types: !3117)
!3117 = !{!34, !135, !34, !3118, !2316}
!3118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3097, size: 64)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2967, file: !78, line: 1942, baseType: !3120, size: 64, offset: 1664)
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3121 = !DISubroutineType(types: !3122)
!3122 = !{!673, !135, !34, !191, !191}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2967, file: !78, line: 1944, baseType: !3124, size: 64, offset: 1728)
!3124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3125, size: 64)
!3125 = !DISubroutineType(types: !3126)
!3126 = !{null, !881, !135}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2967, file: !78, line: 1948, baseType: !3128, size: 64, offset: 1792)
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3129, size: 64)
!3129 = !DISubroutineType(types: !3130)
!3130 = !{!712, !135, !191, !135, !191, !715, !10}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2967, file: !78, line: 1950, baseType: !3132, size: 64, offset: 1856)
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3133, size: 64)
!3133 = !DISubroutineType(types: !3134)
!3134 = !{!191, !135, !191, !135, !191, !191, !10}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2967, file: !78, line: 1953, baseType: !3086, size: 64, offset: 1920)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2967, file: !78, line: 1954, baseType: !3137, size: 64, offset: 1984)
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3138, size: 64)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!34, !3140, !10}
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !78, line: 1911, flags: DIFlagFwdDecl)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2967, file: !78, line: 1955, baseType: !3143, size: 64, offset: 2048)
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3144, size: 64)
!3144 = !DISubroutineType(types: !3145)
!3145 = !{!34, !3140, !2989, !10}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2962, file: !78, line: 723, baseType: !831, size: 64)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !559, file: !78, line: 725, baseType: !3148, size: 64, offset: 2816)
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3149, size: 64)
!3149 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !78, line: 725, flags: DIFlagFwdDecl)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !559, file: !78, line: 726, baseType: !2208, size: 1536, align: 64, offset: 2880)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !559, file: !78, line: 727, baseType: !54, size: 128, offset: 4416)
!3152 = !DIDerivedType(tag: DW_TAG_member, scope: !559, file: !78, line: 728, baseType: !3153, size: 64, offset: 4544)
!3153 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !559, file: !78, line: 728, size: 64, elements: !3154)
!3154 = !{!3155, !3156, !3159, !3160}
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3153, file: !78, line: 729, baseType: !2179, size: 64)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3153, file: !78, line: 730, baseType: !3157, size: 64)
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3158 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !78, line: 730, flags: DIFlagFwdDecl)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3153, file: !78, line: 731, baseType: !408, size: 64)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3153, file: !78, line: 732, baseType: !10, size: 32)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !559, file: !78, line: 735, baseType: !132, size: 32, offset: 4608)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !559, file: !78, line: 738, baseType: !132, size: 32, offset: 4640)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !559, file: !78, line: 739, baseType: !2802, size: 64, offset: 4672)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !559, file: !78, line: 750, baseType: !346, size: 64, offset: 4736)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !520, file: !113, line: 91, baseType: !3166, size: 256, offset: 448)
!3166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 256, elements: !2678)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !520, file: !113, line: 94, baseType: !3168, size: 64, offset: 704)
!3168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3169, line: 25, size: 64, elements: !3170)
!3169 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3170 = !{!3171}
!3171 = !DIDerivedType(tag: DW_TAG_member, scope: !3168, file: !3169, line: 26, baseType: !3172, size: 64)
!3172 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3168, file: !3169, line: 26, size: 64, elements: !3173)
!3173 = !{!3174, !3175}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3172, file: !3169, line: 28, baseType: !124, size: 64, align: 64)
!3175 = !DIDerivedType(tag: DW_TAG_member, scope: !3172, file: !3169, line: 30, baseType: !3176, size: 64)
!3176 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3172, file: !3169, line: 30, size: 64, elements: !3177)
!3177 = !{!3178, !3179}
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3176, file: !3169, line: 31, baseType: !158, size: 32)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3176, file: !3169, line: 32, baseType: !34, size: 32, offset: 32)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !520, file: !113, line: 95, baseType: !2817, size: 64, offset: 768)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !520, file: !113, line: 96, baseType: !771, size: 64, offset: 832)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !520, file: !113, line: 97, baseType: !329, size: 64, offset: 896)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !520, file: !113, line: 98, baseType: !346, size: 64, offset: 960)
!3184 = !DIDerivedType(tag: DW_TAG_member, scope: !520, file: !113, line: 100, baseType: !3185, size: 128, offset: 1024)
!3185 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !520, file: !113, line: 100, size: 128, elements: !3186)
!3186 = !{!3187, !3188}
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3185, file: !113, line: 101, baseType: !54, size: 128)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3185, file: !113, line: 102, baseType: !3189, size: 64)
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !520, file: !113, line: 104, baseType: !54, size: 128, offset: 1152)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !520, file: !113, line: 105, baseType: !54, size: 128, offset: 1280)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !520, file: !113, line: 113, baseType: !3193, size: 128, offset: 1408)
!3193 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !520, file: !113, line: 109, size: 128, elements: !3194)
!3194 = !{!3195, !3196, !3197}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3193, file: !113, line: 110, baseType: !239, size: 128)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3193, file: !113, line: 111, baseType: !534, size: 128)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3193, file: !113, line: 112, baseType: !148, size: 128, align: 64)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !515, file: !516, line: 72, baseType: !771, size: 64, offset: 64)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !515, file: !516, line: 73, baseType: !34, size: 32, offset: 128)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !515, file: !516, line: 74, baseType: !598, size: 64, offset: 192)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !510, file: !511, line: 10, baseType: !519, size: 64, offset: 64)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !136, file: !78, line: 1015, baseType: !558, size: 64, offset: 1344)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !136, file: !78, line: 1016, baseType: !2965, size: 64, offset: 1408)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !136, file: !78, line: 1018, baseType: !123, size: 64, offset: 1472)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !136, file: !78, line: 1020, baseType: !346, size: 64, offset: 1536)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !136, file: !78, line: 1023, baseType: !346, size: 64, offset: 1600)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !136, file: !78, line: 1027, baseType: !3208, size: 64, offset: 1664)
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !136, file: !78, line: 1029, baseType: !2207, size: 64, offset: 1728)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !136, file: !78, line: 1030, baseType: !2405, size: 32, offset: 1792)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !136, file: !78, line: 1031, baseType: !2405, size: 32, offset: 1824)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "oz_pgrp", scope: !127, file: !128, line: 110, baseType: !222, size: 64, offset: 128)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !127, file: !128, line: 111, baseType: !34, size: 32, offset: 192)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "sub_version", scope: !127, file: !128, line: 112, baseType: !34, size: 32, offset: 224)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "min_proto", scope: !127, file: !128, line: 113, baseType: !34, size: 32, offset: 256)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "max_proto", scope: !127, file: !128, line: 114, baseType: !34, size: 32, offset: 288)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !127, file: !128, line: 115, baseType: !10, size: 32, offset: 320)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "exp_timeout", scope: !127, file: !128, line: 116, baseType: !329, size: 64, offset: 384)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !127, file: !128, line: 117, baseType: !10, size: 32, offset: 448)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "sb", scope: !127, file: !128, line: 118, baseType: !771, size: 64, offset: 512)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "wq_mutex", scope: !127, file: !128, line: 119, baseType: !179, size: 256, offset: 576)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_mutex", scope: !127, file: !128, line: 120, baseType: !179, size: 256, offset: 832)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "fs_lock", scope: !127, file: !128, line: 121, baseType: !158, size: 32, offset: 1088)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "queues", scope: !127, file: !128, line: 122, baseType: !3225, size: 64, offset: 1152)
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3226, size: 64)
!3226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "autofs_wait_queue", file: !128, line: 82, size: 768, elements: !3227)
!3227 = !{!3228, !3229, !3230, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !3226, file: !128, line: 83, baseType: !248, size: 192)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3226, file: !128, line: 84, baseType: !3225, size: 64, offset: 192)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue_token", scope: !3226, file: !128, line: 85, baseType: !3231, size: 32, offset: 256)
!3231 = !DIDerivedType(tag: DW_TAG_typedef, name: "autofs_wqt_t", file: !107, line: 38, baseType: !10)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3226, file: !128, line: 87, baseType: !543, size: 128, offset: 320)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3226, file: !128, line: 88, baseType: !131, size: 32, offset: 448)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3226, file: !128, line: 89, baseType: !131, size: 32, offset: 480)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3226, file: !128, line: 90, baseType: !123, size: 64, offset: 512)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3226, file: !128, line: 91, baseType: !267, size: 32, offset: 576)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3226, file: !128, line: 92, baseType: !285, size: 32, offset: 608)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3226, file: !128, line: 93, baseType: !1696, size: 32, offset: 640)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !3226, file: !128, line: 94, baseType: !1696, size: 32, offset: 672)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3226, file: !128, line: 96, baseType: !34, size: 32, offset: 704)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "wait_ctr", scope: !3226, file: !128, line: 97, baseType: !10, size: 32, offset: 736)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_lock", scope: !127, file: !128, line: 123, baseType: !158, size: 32, offset: 1216)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "active_list", scope: !127, file: !128, line: 124, baseType: !54, size: 128, offset: 1280)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "expiring_list", scope: !127, file: !128, line: 125, baseType: !54, size: 128, offset: 1408)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !127, file: !128, line: 126, baseType: !148, size: 128, align: 64, offset: 1536)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "autofs_info", file: !128, line: 52, size: 1024, elements: !3248)
!3248 = !{!3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !3247, file: !128, line: 53, baseType: !519, size: 64)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3247, file: !128, line: 54, baseType: !34, size: 32, offset: 64)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "expire_complete", scope: !3247, file: !128, line: 56, baseType: !7, size: 256, offset: 128)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3247, file: !128, line: 58, baseType: !54, size: 128, offset: 384)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "expiring", scope: !3247, file: !128, line: 60, baseType: !54, size: 128, offset: 512)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "sbi", scope: !3247, file: !128, line: 62, baseType: !126, size: 64, offset: 640)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "last_used", scope: !3247, file: !128, line: 63, baseType: !329, size: 64, offset: 704)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3247, file: !128, line: 64, baseType: !34, size: 32, offset: 768)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3247, file: !128, line: 66, baseType: !267, size: 32, offset: 800)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3247, file: !128, line: 67, baseType: !285, size: 32, offset: 832)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3247, file: !128, line: 68, baseType: !148, size: 128, align: 64, offset: 896)
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3262)
!3262 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !34)
!3263 = !{!0, !3264, !3269}
!3264 = !DIGlobalVariableExpression(var: !3265, expr: !DIExpression())
!3265 = distinct !DIGlobalVariable(scope: null, file: !3, line: 87, type: !3266, isLocal: true, isDefinition: true)
!3266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 72, elements: !3267)
!3267 = !{!3268}
!3268 = !DISubrange(count: 9)
!3269 = !DIGlobalVariableExpression(var: !3270, expr: !DIExpression())
!3270 = distinct !DIGlobalVariable(scope: null, file: !3271, line: 249, type: !3272, isLocal: true, isDefinition: true)
!3271 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!3272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 224, elements: !3273)
!3273 = !{!3274}
!3274 = !DISubrange(count: 28)
!3275 = !{!3276}
!3276 = !DILocalVariable(name: "x", arg: 1, scope: !2, file: !3, line: 84, type: !6)
!3277 = !{!"rsp"}
!3278 = !{i32 7, !"Dwarf Version", i32 5}
!3279 = !{i32 2, !"Debug Info Version", i32 3}
!3280 = !{i32 1, !"wchar_size", i32 2}
!3281 = !{i32 8, !"cf-protection-branch", i32 1}
!3282 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3283 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!3284 = !{i32 1, !"Code Model", i32 2}
!3285 = !{i32 1, !"override-stack-alignment", i32 8}
!3286 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!3287 = distinct !DISubprogram(name: "autofs_expire_wait", scope: !60, file: !60, line: 489, type: !3288, scopeLine: 490, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !3290)
!3288 = !DISubroutineType(types: !3289)
!3289 = !{!34, !681, !34}
!3290 = !{!3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298}
!3291 = !DILocalVariable(name: "path", arg: 1, scope: !3287, file: !60, line: 489, type: !681)
!3292 = !DILocalVariable(name: "rcu_walk", arg: 2, scope: !3287, file: !60, line: 489, type: !34)
!3293 = !DILocalVariable(name: "dentry", scope: !3287, file: !60, line: 491, type: !519)
!3294 = !DILocalVariable(name: "sbi", scope: !3287, file: !60, line: 492, type: !126)
!3295 = !DILocalVariable(name: "ino", scope: !3287, file: !60, line: 493, type: !3246)
!3296 = !DILocalVariable(name: "status", scope: !3287, file: !60, line: 494, type: !34)
!3297 = !DILocalVariable(name: "state", scope: !3287, file: !60, line: 495, type: !34)
!3298 = !DILabel(scope: !3287, name: "retry", file: !60, line: 503)
!3299 = !DILocation(line: 489, column: 43, scope: !3287)
!3300 = !DILocation(line: 489, column: 53, scope: !3287)
!3301 = !DILocation(line: 491, column: 2, scope: !3287)
!3302 = !DILocation(line: 491, column: 17, scope: !3287)
!3303 = !DILocation(line: 491, column: 26, scope: !3287)
!3304 = !DILocation(line: 491, column: 32, scope: !3287)
!3305 = !DILocation(line: 492, column: 2, scope: !3287)
!3306 = !DILocation(line: 492, column: 25, scope: !3287)
!3307 = !DILocation(line: 492, column: 42, scope: !3287)
!3308 = !DILocation(line: 492, column: 50, scope: !3287)
!3309 = !DILocation(line: 492, column: 31, scope: !3287)
!3310 = !DILocation(line: 493, column: 2, scope: !3287)
!3311 = !DILocation(line: 493, column: 22, scope: !3287)
!3312 = !DILocation(line: 493, column: 46, scope: !3287)
!3313 = !DILocation(line: 493, column: 28, scope: !3287)
!3314 = !DILocation(line: 494, column: 2, scope: !3287)
!3315 = !DILocation(line: 494, column: 6, scope: !3287)
!3316 = !DILocation(line: 495, column: 2, scope: !3287)
!3317 = !DILocation(line: 495, column: 6, scope: !3287)
!3318 = !DILocation(line: 498, column: 8, scope: !3319)
!3319 = distinct !DILexicalBlock(scope: !3287, file: !60, line: 498, column: 6)
!3320 = !DILocation(line: 498, column: 13, scope: !3319)
!3321 = !DILocation(line: 498, column: 19, scope: !3319)
!3322 = !DILocation(line: 498, column: 6, scope: !3287)
!3323 = !DILocation(line: 499, column: 3, scope: !3319)
!3324 = !DILocation(line: 500, column: 6, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !3287, file: !60, line: 500, column: 6)
!3326 = !DILocation(line: 500, column: 6, scope: !3287)
!3327 = !DILocation(line: 501, column: 3, scope: !3325)
!3328 = !DILocation(line: 503, column: 1, scope: !3287)
!3329 = !DILocation(line: 504, column: 13, scope: !3287)
!3330 = !DILocation(line: 504, column: 18, scope: !3287)
!3331 = !DILocation(line: 504, column: 2, scope: !3287)
!3332 = !DILocation(line: 505, column: 10, scope: !3287)
!3333 = !DILocation(line: 505, column: 15, scope: !3287)
!3334 = !DILocation(line: 505, column: 21, scope: !3287)
!3335 = !DILocation(line: 505, column: 8, scope: !3287)
!3336 = !DILocation(line: 506, column: 6, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3287, file: !60, line: 506, column: 6)
!3338 = !DILocation(line: 506, column: 12, scope: !3337)
!3339 = !DILocation(line: 506, column: 6, scope: !3287)
!3340 = !DILocation(line: 507, column: 16, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !3337, file: !60, line: 506, column: 39)
!3342 = !DILocation(line: 507, column: 21, scope: !3341)
!3343 = !DILocation(line: 507, column: 3, scope: !3341)
!3344 = !DILocation(line: 512, column: 3, scope: !3341)
!3345 = !DILocation(line: 513, column: 3, scope: !3341)
!3346 = !DILocation(line: 515, column: 6, scope: !3347)
!3347 = distinct !DILexicalBlock(scope: !3287, file: !60, line: 515, column: 6)
!3348 = !DILocation(line: 515, column: 12, scope: !3347)
!3349 = !DILocation(line: 515, column: 6, scope: !3287)
!3350 = !DILocation(line: 516, column: 16, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !3347, file: !60, line: 515, column: 35)
!3352 = !DILocation(line: 516, column: 21, scope: !3351)
!3353 = !DILocation(line: 516, column: 3, scope: !3351)
!3354 = !DILocation(line: 518, column: 3, scope: !3355)
!3355 = distinct !DILexicalBlock(scope: !3356, file: !60, line: 518, column: 3)
!3356 = distinct !DILexicalBlock(scope: !3351, file: !60, line: 518, column: 3)
!3357 = !DILocation(line: 518, column: 3, scope: !3356)
!3358 = !DILocation(line: 520, column: 24, scope: !3351)
!3359 = !DILocation(line: 520, column: 29, scope: !3351)
!3360 = !DILocation(line: 520, column: 12, scope: !3351)
!3361 = !DILocation(line: 520, column: 10, scope: !3351)
!3362 = !DILocation(line: 521, column: 24, scope: !3351)
!3363 = !DILocation(line: 521, column: 29, scope: !3351)
!3364 = !DILocation(line: 521, column: 3, scope: !3351)
!3365 = !DILocation(line: 523, column: 3, scope: !3366)
!3366 = distinct !DILexicalBlock(scope: !3367, file: !60, line: 523, column: 3)
!3367 = distinct !DILexicalBlock(scope: !3351, file: !60, line: 523, column: 3)
!3368 = !DILocation(line: 523, column: 3, scope: !3367)
!3369 = !DILocation(line: 525, column: 18, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3351, file: !60, line: 525, column: 7)
!3371 = !DILocation(line: 525, column: 7, scope: !3370)
!3372 = !DILocation(line: 525, column: 7, scope: !3351)
!3373 = !DILocation(line: 526, column: 4, scope: !3370)
!3374 = !DILocation(line: 528, column: 10, scope: !3351)
!3375 = !DILocation(line: 528, column: 3, scope: !3351)
!3376 = !DILocation(line: 530, column: 15, scope: !3287)
!3377 = !DILocation(line: 530, column: 20, scope: !3287)
!3378 = !DILocation(line: 530, column: 2, scope: !3287)
!3379 = !DILocation(line: 532, column: 2, scope: !3287)
!3380 = !DILocation(line: 533, column: 1, scope: !3287)
!3381 = distinct !DISubprogram(name: "autofs_sbi", scope: !128, file: !128, line: 129, type: !3382, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !3384)
!3382 = !DISubroutineType(types: !3383)
!3383 = !{!126, !771}
!3384 = !{!3385}
!3385 = !DILocalVariable(name: "sb", arg: 1, scope: !3381, file: !128, line: 129, type: !771)
!3386 = !DILocation(line: 129, column: 69, scope: !3381)
!3387 = !DILocation(line: 131, column: 35, scope: !3381)
!3388 = !DILocation(line: 131, column: 39, scope: !3381)
!3389 = !DILocation(line: 131, column: 2, scope: !3381)
!3390 = distinct !DISubprogram(name: "autofs_dentry_ino", scope: !128, file: !128, line: 134, type: !3391, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !3393)
!3391 = !DISubroutineType(types: !3392)
!3392 = !{!3246, !519}
!3393 = !{!3394}
!3394 = !DILocalVariable(name: "dentry", arg: 1, scope: !3390, file: !128, line: 134, type: !519)
!3395 = !DILocation(line: 134, column: 68, scope: !3390)
!3396 = !DILocation(line: 136, column: 32, scope: !3390)
!3397 = !DILocation(line: 136, column: 40, scope: !3390)
!3398 = !DILocation(line: 136, column: 2, scope: !3390)
!3399 = distinct !DISubprogram(name: "spin_lock", scope: !3400, file: !3400, line: 349, type: !3401, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !3404)
!3400 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!3401 = !DISubroutineType(types: !3402)
!3402 = !{null, !3403}
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!3404 = !{!3405}
!3405 = !DILocalVariable(name: "lock", arg: 1, scope: !3399, file: !3400, line: 349, type: !3403)
!3406 = !DILocation(line: 349, column: 51, scope: !3399)
!3407 = !DILocation(line: 351, column: 2, scope: !3399)
!3408 = !DILocation(line: 352, column: 1, scope: !3399)
!3409 = distinct !DISubprogram(name: "spin_unlock", scope: !3400, file: !3400, line: 389, type: !3401, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !3410)
!3410 = !{!3411}
!3411 = !DILocalVariable(name: "lock", arg: 1, scope: !3409, file: !3400, line: 389, type: !3403)
!3412 = !DILocation(line: 389, column: 53, scope: !3409)
!3413 = !DILocation(line: 391, column: 2, scope: !3409)
!3414 = !DILocation(line: 392, column: 1, scope: !3409)
!3415 = !DISubprogram(name: "schedule_timeout_uninterruptible", scope: !883, file: !883, line: 301, type: !3416, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3416 = !DISubroutineType(types: !3417)
!3417 = !{!673, !673}
!3418 = !DISubprogram(name: "autofs_wait", scope: !128, file: !128, line: 227, type: !3419, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3419 = !DISubroutineType(types: !3420)
!3420 = !{!34, !126, !681, !106}
!3421 = !DISubprogram(name: "wait_for_completion", scope: !3, file: !3, line: 102, type: !4, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3422 = distinct !DISubprogram(name: "d_unhashed", scope: !113, file: !113, line: 333, type: !2841, scopeLine: 334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !3423)
!3423 = !{!3424}
!3424 = !DILocalVariable(name: "dentry", arg: 1, scope: !3422, file: !113, line: 333, type: !2830)
!3425 = !DILocation(line: 333, column: 51, scope: !3422)
!3426 = !DILocation(line: 335, column: 28, scope: !3422)
!3427 = !DILocation(line: 335, column: 36, scope: !3422)
!3428 = !DILocation(line: 335, column: 9, scope: !3422)
!3429 = !DILocation(line: 335, column: 2, scope: !3422)
!3430 = distinct !DISubprogram(name: "autofs_expire_run", scope: !60, file: !60, line: 536, type: !3431, scopeLine: 540, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !3446)
!3431 = !DISubroutineType(types: !3432)
!3432 = !{!34, !771, !514, !126, !3433}
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "autofs_packet_expire", file: !107, line: 58, size: 2144, elements: !3435)
!3435 = !{!3436, !3441, !3442}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !3434, file: !107, line: 59, baseType: !3437, size: 64)
!3437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "autofs_packet_hdr", file: !107, line: 45, size: 64, elements: !3438)
!3438 = !{!3439, !3440}
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "proto_version", scope: !3437, file: !107, line: 46, baseType: !34, size: 32)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3437, file: !107, line: 47, baseType: !34, size: 32, offset: 32)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3434, file: !107, line: 60, baseType: !34, size: 32, offset: 64)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3434, file: !107, line: 61, baseType: !3443, size: 2048, offset: 96)
!3443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 2048, elements: !3444)
!3444 = !{!3445}
!3445 = !DISubrange(count: 256)
!3446 = !{!3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454}
!3447 = !DILocalVariable(name: "sb", arg: 1, scope: !3430, file: !60, line: 536, type: !771)
!3448 = !DILocalVariable(name: "mnt", arg: 2, scope: !3430, file: !60, line: 537, type: !514)
!3449 = !DILocalVariable(name: "sbi", arg: 3, scope: !3430, file: !60, line: 538, type: !126)
!3450 = !DILocalVariable(name: "pkt_p", arg: 4, scope: !3430, file: !60, line: 539, type: !3433)
!3451 = !DILocalVariable(name: "pkt", scope: !3430, file: !60, line: 541, type: !3434)
!3452 = !DILocalVariable(name: "ino", scope: !3430, file: !60, line: 542, type: !3246)
!3453 = !DILocalVariable(name: "dentry", scope: !3430, file: !60, line: 543, type: !519)
!3454 = !DILocalVariable(name: "ret", scope: !3430, file: !60, line: 544, type: !34)
!3455 = !DILocation(line: 536, column: 43, scope: !3430)
!3456 = !DILocation(line: 537, column: 26, scope: !3430)
!3457 = !DILocation(line: 538, column: 32, scope: !3430)
!3458 = !DILocation(line: 539, column: 45, scope: !3430)
!3459 = !DILocation(line: 541, column: 2, scope: !3430)
!3460 = !DILocation(line: 541, column: 30, scope: !3430)
!3461 = !DILocation(line: 542, column: 2, scope: !3430)
!3462 = !DILocation(line: 542, column: 22, scope: !3430)
!3463 = !DILocation(line: 543, column: 2, scope: !3430)
!3464 = !DILocation(line: 543, column: 17, scope: !3430)
!3465 = !DILocation(line: 544, column: 2, scope: !3430)
!3466 = !DILocation(line: 544, column: 6, scope: !3430)
!3467 = !DILocation(line: 546, column: 2, scope: !3430)
!3468 = !DILocation(line: 548, column: 26, scope: !3430)
!3469 = !DILocation(line: 548, column: 31, scope: !3430)
!3470 = !DILocation(line: 548, column: 6, scope: !3430)
!3471 = !DILocation(line: 548, column: 10, scope: !3430)
!3472 = !DILocation(line: 548, column: 24, scope: !3430)
!3473 = !DILocation(line: 549, column: 6, scope: !3430)
!3474 = !DILocation(line: 549, column: 10, scope: !3430)
!3475 = !DILocation(line: 549, column: 15, scope: !3430)
!3476 = !DILocation(line: 551, column: 34, scope: !3430)
!3477 = !DILocation(line: 551, column: 38, scope: !3430)
!3478 = !DILocation(line: 551, column: 43, scope: !3430)
!3479 = !DILocation(line: 551, column: 11, scope: !3430)
!3480 = !DILocation(line: 551, column: 9, scope: !3430)
!3481 = !DILocation(line: 552, column: 7, scope: !3482)
!3482 = distinct !DILexicalBlock(scope: !3430, file: !60, line: 552, column: 6)
!3483 = !DILocation(line: 552, column: 6, scope: !3430)
!3484 = !DILocation(line: 553, column: 3, scope: !3482)
!3485 = !DILocation(line: 555, column: 12, scope: !3430)
!3486 = !DILocation(line: 555, column: 20, scope: !3430)
!3487 = !DILocation(line: 555, column: 27, scope: !3430)
!3488 = !DILocation(line: 555, column: 6, scope: !3430)
!3489 = !DILocation(line: 555, column: 10, scope: !3430)
!3490 = !DILocation(line: 556, column: 13, scope: !3430)
!3491 = !DILocation(line: 556, column: 2, scope: !3430)
!3492 = !DILocation(line: 556, column: 19, scope: !3430)
!3493 = !DILocation(line: 556, column: 27, scope: !3430)
!3494 = !DILocation(line: 556, column: 34, scope: !3430)
!3495 = !DILocation(line: 556, column: 44, scope: !3430)
!3496 = !DILocation(line: 556, column: 40, scope: !3430)
!3497 = !DILocation(line: 557, column: 6, scope: !3430)
!3498 = !DILocation(line: 557, column: 15, scope: !3430)
!3499 = !DILocation(line: 557, column: 2, scope: !3430)
!3500 = !DILocation(line: 557, column: 20, scope: !3430)
!3501 = !DILocation(line: 559, column: 19, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !3430, file: !60, line: 559, column: 6)
!3503 = !DILocation(line: 559, column: 6, scope: !3502)
!3504 = !DILocation(line: 559, column: 6, scope: !3430)
!3505 = !DILocation(line: 560, column: 7, scope: !3502)
!3506 = !DILocation(line: 560, column: 3, scope: !3502)
!3507 = !DILocation(line: 562, column: 13, scope: !3430)
!3508 = !DILocation(line: 562, column: 18, scope: !3430)
!3509 = !DILocation(line: 562, column: 2, scope: !3430)
!3510 = !DILocation(line: 563, column: 26, scope: !3430)
!3511 = !DILocation(line: 563, column: 8, scope: !3430)
!3512 = !DILocation(line: 563, column: 6, scope: !3430)
!3513 = !DILocation(line: 565, column: 19, scope: !3430)
!3514 = !DILocation(line: 565, column: 2, scope: !3430)
!3515 = !DILocation(line: 565, column: 7, scope: !3430)
!3516 = !DILocation(line: 565, column: 17, scope: !3430)
!3517 = !DILocation(line: 566, column: 2, scope: !3430)
!3518 = !DILocation(line: 566, column: 7, scope: !3430)
!3519 = !DILocation(line: 566, column: 13, scope: !3430)
!3520 = !DILocation(line: 567, column: 16, scope: !3430)
!3521 = !DILocation(line: 567, column: 21, scope: !3430)
!3522 = !DILocation(line: 567, column: 2, scope: !3430)
!3523 = !DILocation(line: 568, column: 15, scope: !3430)
!3524 = !DILocation(line: 568, column: 20, scope: !3430)
!3525 = !DILocation(line: 568, column: 2, scope: !3430)
!3526 = !DILocation(line: 570, column: 7, scope: !3430)
!3527 = !DILocation(line: 570, column: 2, scope: !3430)
!3528 = !DILocation(line: 572, column: 9, scope: !3430)
!3529 = !DILocation(line: 572, column: 2, scope: !3430)
!3530 = !DILocation(line: 573, column: 1, scope: !3430)
!3531 = distinct !DISubprogram(name: "autofs_expire_indirect", scope: !60, file: !60, line: 420, type: !3532, scopeLine: 424, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !3534)
!3532 = !DISubroutineType(types: !3533)
!3533 = !{!519, !771, !514, !126, !10}
!3534 = !{!3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3547}
!3535 = !DILocalVariable(name: "sb", arg: 1, scope: !3531, file: !60, line: 420, type: !771)
!3536 = !DILocalVariable(name: "mnt", arg: 2, scope: !3531, file: !60, line: 421, type: !514)
!3537 = !DILocalVariable(name: "sbi", arg: 3, scope: !3531, file: !60, line: 422, type: !126)
!3538 = !DILocalVariable(name: "how", arg: 4, scope: !3531, file: !60, line: 423, type: !10)
!3539 = !DILocalVariable(name: "timeout", scope: !3531, file: !60, line: 425, type: !329)
!3540 = !DILocalVariable(name: "root", scope: !3531, file: !60, line: 426, type: !519)
!3541 = !DILocalVariable(name: "dentry", scope: !3531, file: !60, line: 427, type: !519)
!3542 = !DILocalVariable(name: "expired", scope: !3531, file: !60, line: 428, type: !519)
!3543 = !DILocalVariable(name: "found", scope: !3531, file: !60, line: 429, type: !519)
!3544 = !DILocalVariable(name: "ino", scope: !3531, file: !60, line: 430, type: !3246)
!3545 = !DILabel(scope: !3546, name: "next", file: !60, line: 472)
!3546 = distinct !DILexicalBlock(scope: !3531, file: !60, line: 438, column: 60)
!3547 = !DILabel(scope: !3531, name: "found", file: !60, line: 481)
!3548 = !DILocation(line: 420, column: 66, scope: !3531)
!3549 = !DILocation(line: 421, column: 28, scope: !3531)
!3550 = !DILocation(line: 422, column: 34, scope: !3531)
!3551 = !DILocation(line: 423, column: 24, scope: !3531)
!3552 = !DILocation(line: 425, column: 2, scope: !3531)
!3553 = !DILocation(line: 425, column: 16, scope: !3531)
!3554 = !DILocation(line: 426, column: 2, scope: !3531)
!3555 = !DILocation(line: 426, column: 17, scope: !3531)
!3556 = !DILocation(line: 426, column: 24, scope: !3531)
!3557 = !DILocation(line: 426, column: 28, scope: !3531)
!3558 = !DILocation(line: 427, column: 2, scope: !3531)
!3559 = !DILocation(line: 427, column: 17, scope: !3531)
!3560 = !DILocation(line: 428, column: 2, scope: !3531)
!3561 = !DILocation(line: 428, column: 17, scope: !3531)
!3562 = !DILocation(line: 429, column: 2, scope: !3531)
!3563 = !DILocation(line: 429, column: 17, scope: !3531)
!3564 = !DILocation(line: 430, column: 2, scope: !3531)
!3565 = !DILocation(line: 430, column: 22, scope: !3531)
!3566 = !DILocation(line: 432, column: 7, scope: !3567)
!3567 = distinct !DILexicalBlock(scope: !3531, file: !60, line: 432, column: 6)
!3568 = !DILocation(line: 432, column: 6, scope: !3531)
!3569 = !DILocation(line: 433, column: 3, scope: !3567)
!3570 = !DILocation(line: 435, column: 12, scope: !3531)
!3571 = !DILocation(line: 435, column: 17, scope: !3531)
!3572 = !DILocation(line: 435, column: 10, scope: !3531)
!3573 = !DILocation(line: 437, column: 9, scope: !3531)
!3574 = !DILocation(line: 438, column: 2, scope: !3531)
!3575 = !DILocation(line: 438, column: 44, scope: !3531)
!3576 = !DILocation(line: 438, column: 52, scope: !3531)
!3577 = !DILocation(line: 438, column: 19, scope: !3531)
!3578 = !DILocation(line: 438, column: 17, scope: !3531)
!3579 = !DILocation(line: 439, column: 14, scope: !3546)
!3580 = !DILocation(line: 439, column: 19, scope: !3546)
!3581 = !DILocation(line: 439, column: 3, scope: !3546)
!3582 = !DILocation(line: 440, column: 27, scope: !3546)
!3583 = !DILocation(line: 440, column: 9, scope: !3546)
!3584 = !DILocation(line: 440, column: 7, scope: !3546)
!3585 = !DILocation(line: 441, column: 7, scope: !3586)
!3586 = distinct !DILexicalBlock(scope: !3546, file: !60, line: 441, column: 7)
!3587 = !DILocation(line: 441, column: 12, scope: !3586)
!3588 = !DILocation(line: 441, column: 18, scope: !3586)
!3589 = !DILocation(line: 441, column: 7, scope: !3546)
!3590 = !DILocation(line: 442, column: 17, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !3586, file: !60, line: 441, column: 44)
!3592 = !DILocation(line: 442, column: 22, scope: !3591)
!3593 = !DILocation(line: 442, column: 4, scope: !3591)
!3594 = !DILocation(line: 443, column: 4, scope: !3591)
!3595 = distinct !{!3595, !3574, !3596, !3597, !3598}
!3596 = !DILocation(line: 478, column: 2, scope: !3531)
!3597 = !{!"llvm.loop.mustprogress"}
!3598 = !{!"llvm.loop.unroll.disable"}
!3599 = !DILocation(line: 445, column: 16, scope: !3546)
!3600 = !DILocation(line: 445, column: 21, scope: !3546)
!3601 = !DILocation(line: 445, column: 3, scope: !3546)
!3602 = !DILocation(line: 447, column: 27, scope: !3546)
!3603 = !DILocation(line: 447, column: 35, scope: !3546)
!3604 = !DILocation(line: 447, column: 40, scope: !3546)
!3605 = !DILocation(line: 447, column: 49, scope: !3546)
!3606 = !DILocation(line: 447, column: 13, scope: !3546)
!3607 = !DILocation(line: 447, column: 11, scope: !3546)
!3608 = !DILocation(line: 448, column: 8, scope: !3609)
!3609 = distinct !DILexicalBlock(scope: !3546, file: !60, line: 448, column: 7)
!3610 = !DILocation(line: 448, column: 7, scope: !3546)
!3611 = !DILocation(line: 449, column: 4, scope: !3609)
!3612 = !DILocation(line: 451, column: 14, scope: !3546)
!3613 = !DILocation(line: 451, column: 19, scope: !3546)
!3614 = !DILocation(line: 451, column: 3, scope: !3546)
!3615 = !DILocation(line: 452, column: 27, scope: !3546)
!3616 = !DILocation(line: 452, column: 9, scope: !3546)
!3617 = !DILocation(line: 452, column: 7, scope: !3546)
!3618 = !DILocation(line: 453, column: 3, scope: !3546)
!3619 = !DILocation(line: 453, column: 8, scope: !3546)
!3620 = !DILocation(line: 453, column: 14, scope: !3546)
!3621 = !DILocation(line: 454, column: 16, scope: !3546)
!3622 = !DILocation(line: 454, column: 21, scope: !3546)
!3623 = !DILocation(line: 454, column: 3, scope: !3546)
!3624 = !DILocation(line: 455, column: 3, scope: !3546)
!3625 = !DILocation(line: 460, column: 7, scope: !3546)
!3626 = !DILocation(line: 461, column: 25, scope: !3546)
!3627 = !DILocation(line: 461, column: 34, scope: !3546)
!3628 = !DILocation(line: 461, column: 39, scope: !3546)
!3629 = !DILocation(line: 461, column: 48, scope: !3546)
!3630 = !DILocation(line: 461, column: 11, scope: !3546)
!3631 = !DILocation(line: 461, column: 9, scope: !3546)
!3632 = !DILocation(line: 462, column: 7, scope: !3633)
!3633 = distinct !DILexicalBlock(scope: !3546, file: !60, line: 462, column: 7)
!3634 = !DILocation(line: 462, column: 16, scope: !3633)
!3635 = !DILocation(line: 462, column: 13, scope: !3633)
!3636 = !DILocation(line: 462, column: 7, scope: !3546)
!3637 = !DILocation(line: 463, column: 9, scope: !3638)
!3638 = distinct !DILexicalBlock(scope: !3633, file: !60, line: 462, column: 25)
!3639 = !DILocation(line: 463, column: 4, scope: !3638)
!3640 = !DILocation(line: 464, column: 4, scope: !3638)
!3641 = !DILocation(line: 467, column: 7, scope: !3642)
!3642 = distinct !DILexicalBlock(scope: !3546, file: !60, line: 467, column: 7)
!3643 = !DILocation(line: 467, column: 18, scope: !3642)
!3644 = !DILocation(line: 467, column: 15, scope: !3642)
!3645 = !DILocation(line: 467, column: 7, scope: !3546)
!3646 = !DILocation(line: 468, column: 9, scope: !3642)
!3647 = !DILocation(line: 468, column: 4, scope: !3642)
!3648 = !DILocation(line: 470, column: 14, scope: !3546)
!3649 = !DILocation(line: 470, column: 19, scope: !3546)
!3650 = !DILocation(line: 470, column: 3, scope: !3546)
!3651 = !DILocation(line: 471, column: 3, scope: !3546)
!3652 = !DILocation(line: 472, column: 1, scope: !3546)
!3653 = !DILocation(line: 473, column: 14, scope: !3546)
!3654 = !DILocation(line: 473, column: 19, scope: !3546)
!3655 = !DILocation(line: 473, column: 3, scope: !3546)
!3656 = !DILocation(line: 474, column: 3, scope: !3546)
!3657 = !DILocation(line: 474, column: 8, scope: !3546)
!3658 = !DILocation(line: 474, column: 14, scope: !3546)
!3659 = !DILocation(line: 475, column: 16, scope: !3546)
!3660 = !DILocation(line: 475, column: 21, scope: !3546)
!3661 = !DILocation(line: 475, column: 3, scope: !3546)
!3662 = !DILocation(line: 476, column: 7, scope: !3663)
!3663 = distinct !DILexicalBlock(scope: !3546, file: !60, line: 476, column: 7)
!3664 = !DILocation(line: 476, column: 18, scope: !3663)
!3665 = !DILocation(line: 476, column: 15, scope: !3663)
!3666 = !DILocation(line: 476, column: 7, scope: !3546)
!3667 = !DILocation(line: 477, column: 9, scope: !3663)
!3668 = !DILocation(line: 477, column: 4, scope: !3663)
!3669 = !DILocation(line: 479, column: 2, scope: !3531)
!3670 = !DILocation(line: 481, column: 1, scope: !3531)
!3671 = !DILocation(line: 482, column: 2, scope: !3672)
!3672 = distinct !DILexicalBlock(scope: !3673, file: !60, line: 482, column: 2)
!3673 = distinct !DILexicalBlock(scope: !3531, file: !60, line: 482, column: 2)
!3674 = !DILocation(line: 482, column: 2, scope: !3673)
!3675 = !DILocation(line: 483, column: 2, scope: !3531)
!3676 = !DILocation(line: 483, column: 7, scope: !3531)
!3677 = !DILocation(line: 483, column: 13, scope: !3531)
!3678 = !DILocation(line: 484, column: 19, scope: !3531)
!3679 = !DILocation(line: 484, column: 24, scope: !3531)
!3680 = !DILocation(line: 484, column: 2, scope: !3531)
!3681 = !DILocation(line: 485, column: 15, scope: !3531)
!3682 = !DILocation(line: 485, column: 20, scope: !3531)
!3683 = !DILocation(line: 485, column: 2, scope: !3531)
!3684 = !DILocation(line: 486, column: 9, scope: !3531)
!3685 = !DILocation(line: 486, column: 2, scope: !3531)
!3686 = !DILocation(line: 487, column: 1, scope: !3531)
!3687 = distinct !DISubprogram(name: "copy_to_user", scope: !3688, file: !3688, line: 188, type: !3689, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !3693)
!3688 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!3689 = !DISubroutineType(types: !3690)
!3690 = !{!329, !346, !3691, !329}
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3693 = !{!3694, !3695, !3696}
!3694 = !DILocalVariable(name: "to", arg: 1, scope: !3687, file: !3688, line: 188, type: !346)
!3695 = !DILocalVariable(name: "from", arg: 2, scope: !3687, file: !3688, line: 188, type: !3691)
!3696 = !DILocalVariable(name: "n", arg: 3, scope: !3687, file: !3688, line: 188, type: !329)
!3697 = !DILocation(line: 188, column: 27, scope: !3687)
!3698 = !DILocation(line: 188, column: 43, scope: !3687)
!3699 = !DILocation(line: 188, column: 63, scope: !3687)
!3700 = !DILocation(line: 190, column: 22, scope: !3701)
!3701 = distinct !DILexicalBlock(scope: !3687, file: !3688, line: 190, column: 6)
!3702 = !DILocation(line: 190, column: 28, scope: !3701)
!3703 = !DILocation(line: 190, column: 6, scope: !3701)
!3704 = !DILocation(line: 190, column: 6, scope: !3687)
!3705 = !DILocation(line: 191, column: 21, scope: !3701)
!3706 = !DILocation(line: 191, column: 25, scope: !3701)
!3707 = !DILocation(line: 191, column: 31, scope: !3701)
!3708 = !DILocation(line: 191, column: 7, scope: !3701)
!3709 = !DILocation(line: 191, column: 5, scope: !3701)
!3710 = !DILocation(line: 191, column: 3, scope: !3701)
!3711 = !DILocation(line: 192, column: 9, scope: !3687)
!3712 = !DILocation(line: 192, column: 2, scope: !3687)
!3713 = !DISubprogram(name: "complete_all", scope: !3, file: !3, line: 120, type: !4, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3714 = !DISubprogram(name: "dput", scope: !113, file: !113, line: 368, type: !2849, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3715 = distinct !DISubprogram(name: "autofs_do_expire_multi", scope: !60, file: !60, line: 575, type: !3716, scopeLine: 577, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !3718)
!3716 = !DISubroutineType(types: !3717)
!3717 = !{!34, !771, !514, !126, !10}
!3718 = !{!3719, !3720, !3721, !3722, !3723, !3724, !3725, !3728}
!3719 = !DILocalVariable(name: "sb", arg: 1, scope: !3715, file: !60, line: 575, type: !771)
!3720 = !DILocalVariable(name: "mnt", arg: 2, scope: !3715, file: !60, line: 575, type: !514)
!3721 = !DILocalVariable(name: "sbi", arg: 3, scope: !3715, file: !60, line: 576, type: !126)
!3722 = !DILocalVariable(name: "how", arg: 4, scope: !3715, file: !60, line: 576, type: !10)
!3723 = !DILocalVariable(name: "dentry", scope: !3715, file: !60, line: 578, type: !519)
!3724 = !DILocalVariable(name: "ret", scope: !3715, file: !60, line: 579, type: !34)
!3725 = !DILocalVariable(name: "ino", scope: !3726, file: !60, line: 587, type: !3246)
!3726 = distinct !DILexicalBlock(scope: !3727, file: !60, line: 586, column: 14)
!3727 = distinct !DILexicalBlock(scope: !3715, file: !60, line: 586, column: 6)
!3728 = !DILocalVariable(name: "path", scope: !3726, file: !60, line: 588, type: !682)
!3729 = !DILocation(line: 575, column: 48, scope: !3715)
!3730 = !DILocation(line: 575, column: 69, scope: !3715)
!3731 = !DILocation(line: 576, column: 30, scope: !3715)
!3732 = !DILocation(line: 576, column: 48, scope: !3715)
!3733 = !DILocation(line: 578, column: 2, scope: !3715)
!3734 = !DILocation(line: 578, column: 17, scope: !3715)
!3735 = !DILocation(line: 579, column: 2, scope: !3715)
!3736 = !DILocation(line: 579, column: 6, scope: !3715)
!3737 = !DILocation(line: 581, column: 26, scope: !3738)
!3738 = distinct !DILexicalBlock(scope: !3715, file: !60, line: 581, column: 6)
!3739 = !DILocation(line: 581, column: 31, scope: !3738)
!3740 = !DILocation(line: 581, column: 6, scope: !3738)
!3741 = !DILocation(line: 581, column: 6, scope: !3715)
!3742 = !DILocation(line: 582, column: 33, scope: !3738)
!3743 = !DILocation(line: 582, column: 37, scope: !3738)
!3744 = !DILocation(line: 582, column: 42, scope: !3738)
!3745 = !DILocation(line: 582, column: 47, scope: !3738)
!3746 = !DILocation(line: 582, column: 12, scope: !3738)
!3747 = !DILocation(line: 582, column: 10, scope: !3738)
!3748 = !DILocation(line: 582, column: 3, scope: !3738)
!3749 = !DILocation(line: 584, column: 35, scope: !3738)
!3750 = !DILocation(line: 584, column: 39, scope: !3738)
!3751 = !DILocation(line: 584, column: 44, scope: !3738)
!3752 = !DILocation(line: 584, column: 49, scope: !3738)
!3753 = !DILocation(line: 584, column: 12, scope: !3738)
!3754 = !DILocation(line: 584, column: 10, scope: !3738)
!3755 = !DILocation(line: 586, column: 6, scope: !3727)
!3756 = !DILocation(line: 586, column: 6, scope: !3715)
!3757 = !DILocation(line: 587, column: 3, scope: !3726)
!3758 = !DILocation(line: 587, column: 23, scope: !3726)
!3759 = !DILocation(line: 587, column: 47, scope: !3726)
!3760 = !DILocation(line: 587, column: 29, scope: !3726)
!3761 = !DILocation(line: 588, column: 3, scope: !3726)
!3762 = !DILocation(line: 588, column: 21, scope: !3726)
!3763 = !DILocation(line: 588, column: 28, scope: !3726)
!3764 = !DILocation(line: 588, column: 37, scope: !3726)
!3765 = !DILocation(line: 588, column: 52, scope: !3726)
!3766 = !DILocation(line: 593, column: 21, scope: !3726)
!3767 = !DILocation(line: 593, column: 9, scope: !3726)
!3768 = !DILocation(line: 593, column: 7, scope: !3726)
!3769 = !DILocation(line: 595, column: 14, scope: !3726)
!3770 = !DILocation(line: 595, column: 19, scope: !3726)
!3771 = !DILocation(line: 595, column: 3, scope: !3726)
!3772 = !DILocation(line: 597, column: 20, scope: !3726)
!3773 = !DILocation(line: 597, column: 3, scope: !3726)
!3774 = !DILocation(line: 597, column: 8, scope: !3726)
!3775 = !DILocation(line: 597, column: 18, scope: !3726)
!3776 = !DILocation(line: 598, column: 3, scope: !3726)
!3777 = !DILocation(line: 598, column: 8, scope: !3726)
!3778 = !DILocation(line: 598, column: 14, scope: !3726)
!3779 = !DILocation(line: 599, column: 17, scope: !3726)
!3780 = !DILocation(line: 599, column: 22, scope: !3726)
!3781 = !DILocation(line: 599, column: 3, scope: !3726)
!3782 = !DILocation(line: 600, column: 16, scope: !3726)
!3783 = !DILocation(line: 600, column: 21, scope: !3726)
!3784 = !DILocation(line: 600, column: 3, scope: !3726)
!3785 = !DILocation(line: 601, column: 8, scope: !3726)
!3786 = !DILocation(line: 601, column: 3, scope: !3726)
!3787 = !DILocation(line: 602, column: 2, scope: !3727)
!3788 = !DILocation(line: 602, column: 2, scope: !3726)
!3789 = !DILocation(line: 604, column: 9, scope: !3715)
!3790 = !DILocation(line: 605, column: 1, scope: !3715)
!3791 = !DILocation(line: 604, column: 2, scope: !3715)
!3792 = distinct !DISubprogram(name: "autofs_type_trigger", scope: !107, file: !107, line: 133, type: !3793, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !3795)
!3793 = !DISubroutineType(types: !3794)
!3794 = !{!10, !10}
!3795 = !{!3796}
!3796 = !DILocalVariable(name: "type", arg: 1, scope: !3792, file: !107, line: 133, type: !10)
!3797 = !DILocation(line: 133, column: 61, scope: !3792)
!3798 = !DILocation(line: 135, column: 10, scope: !3792)
!3799 = !DILocation(line: 135, column: 15, scope: !3792)
!3800 = !DILocation(line: 135, column: 37, scope: !3792)
!3801 = !DILocation(line: 135, column: 40, scope: !3792)
!3802 = !DILocation(line: 135, column: 45, scope: !3792)
!3803 = !DILocation(line: 135, column: 2, scope: !3792)
!3804 = distinct !DISubprogram(name: "autofs_expire_direct", scope: !60, file: !60, line: 274, type: !3532, scopeLine: 278, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !3805)
!3805 = !{!3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813}
!3806 = !DILocalVariable(name: "sb", arg: 1, scope: !3804, file: !60, line: 274, type: !771)
!3807 = !DILocalVariable(name: "mnt", arg: 2, scope: !3804, file: !60, line: 275, type: !514)
!3808 = !DILocalVariable(name: "sbi", arg: 3, scope: !3804, file: !60, line: 276, type: !126)
!3809 = !DILocalVariable(name: "how", arg: 4, scope: !3804, file: !60, line: 277, type: !10)
!3810 = !DILocalVariable(name: "root", scope: !3804, file: !60, line: 279, type: !519)
!3811 = !DILocalVariable(name: "ino", scope: !3804, file: !60, line: 280, type: !3246)
!3812 = !DILocalVariable(name: "timeout", scope: !3804, file: !60, line: 281, type: !329)
!3813 = !DILabel(scope: !3804, name: "out", file: !60, line: 310)
!3814 = !DILocation(line: 274, column: 64, scope: !3804)
!3815 = !DILocation(line: 275, column: 26, scope: !3804)
!3816 = !DILocation(line: 276, column: 32, scope: !3804)
!3817 = !DILocation(line: 277, column: 22, scope: !3804)
!3818 = !DILocation(line: 279, column: 2, scope: !3804)
!3819 = !DILocation(line: 279, column: 17, scope: !3804)
!3820 = !DILocation(line: 279, column: 29, scope: !3804)
!3821 = !DILocation(line: 279, column: 33, scope: !3804)
!3822 = !DILocation(line: 279, column: 24, scope: !3804)
!3823 = !DILocation(line: 280, column: 2, scope: !3804)
!3824 = !DILocation(line: 280, column: 22, scope: !3804)
!3825 = !DILocation(line: 281, column: 2, scope: !3804)
!3826 = !DILocation(line: 281, column: 16, scope: !3804)
!3827 = !DILocation(line: 283, column: 7, scope: !3828)
!3828 = distinct !DILexicalBlock(scope: !3804, file: !60, line: 283, column: 6)
!3829 = !DILocation(line: 283, column: 6, scope: !3804)
!3830 = !DILocation(line: 284, column: 3, scope: !3828)
!3831 = !DILocation(line: 286, column: 12, scope: !3804)
!3832 = !DILocation(line: 286, column: 17, scope: !3804)
!3833 = !DILocation(line: 286, column: 10, scope: !3804)
!3834 = !DILocation(line: 288, column: 26, scope: !3835)
!3835 = distinct !DILexicalBlock(scope: !3804, file: !60, line: 288, column: 6)
!3836 = !DILocation(line: 288, column: 31, scope: !3835)
!3837 = !DILocation(line: 288, column: 37, scope: !3835)
!3838 = !DILocation(line: 288, column: 46, scope: !3835)
!3839 = !DILocation(line: 288, column: 7, scope: !3835)
!3840 = !DILocation(line: 288, column: 6, scope: !3804)
!3841 = !DILocation(line: 289, column: 14, scope: !3842)
!3842 = distinct !DILexicalBlock(scope: !3835, file: !60, line: 288, column: 52)
!3843 = !DILocation(line: 289, column: 19, scope: !3842)
!3844 = !DILocation(line: 289, column: 3, scope: !3842)
!3845 = !DILocation(line: 290, column: 27, scope: !3842)
!3846 = !DILocation(line: 290, column: 9, scope: !3842)
!3847 = !DILocation(line: 290, column: 7, scope: !3842)
!3848 = !DILocation(line: 292, column: 7, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !3842, file: !60, line: 292, column: 7)
!3850 = !DILocation(line: 292, column: 12, scope: !3849)
!3851 = !DILocation(line: 292, column: 18, scope: !3849)
!3852 = !DILocation(line: 292, column: 7, scope: !3842)
!3853 = !DILocation(line: 293, column: 17, scope: !3854)
!3854 = distinct !DILexicalBlock(scope: !3849, file: !60, line: 292, column: 40)
!3855 = !DILocation(line: 293, column: 22, scope: !3854)
!3856 = !DILocation(line: 293, column: 4, scope: !3854)
!3857 = !DILocation(line: 294, column: 4, scope: !3854)
!3858 = !DILocation(line: 296, column: 3, scope: !3842)
!3859 = !DILocation(line: 296, column: 8, scope: !3842)
!3860 = !DILocation(line: 296, column: 14, scope: !3842)
!3861 = !DILocation(line: 297, column: 16, scope: !3842)
!3862 = !DILocation(line: 297, column: 21, scope: !3842)
!3863 = !DILocation(line: 297, column: 3, scope: !3842)
!3864 = !DILocation(line: 298, column: 3, scope: !3842)
!3865 = !DILocation(line: 299, column: 27, scope: !3866)
!3866 = distinct !DILexicalBlock(scope: !3842, file: !60, line: 299, column: 7)
!3867 = !DILocation(line: 299, column: 32, scope: !3866)
!3868 = !DILocation(line: 299, column: 38, scope: !3866)
!3869 = !DILocation(line: 299, column: 47, scope: !3866)
!3870 = !DILocation(line: 299, column: 8, scope: !3866)
!3871 = !DILocation(line: 299, column: 7, scope: !3842)
!3872 = !DILocation(line: 300, column: 15, scope: !3873)
!3873 = distinct !DILexicalBlock(scope: !3866, file: !60, line: 299, column: 53)
!3874 = !DILocation(line: 300, column: 20, scope: !3873)
!3875 = !DILocation(line: 300, column: 4, scope: !3873)
!3876 = !DILocation(line: 301, column: 4, scope: !3873)
!3877 = !DILocation(line: 301, column: 9, scope: !3873)
!3878 = !DILocation(line: 301, column: 15, scope: !3873)
!3879 = !DILocation(line: 302, column: 21, scope: !3873)
!3880 = !DILocation(line: 302, column: 26, scope: !3873)
!3881 = !DILocation(line: 302, column: 4, scope: !3873)
!3882 = !DILocation(line: 303, column: 17, scope: !3873)
!3883 = !DILocation(line: 303, column: 22, scope: !3873)
!3884 = !DILocation(line: 303, column: 4, scope: !3873)
!3885 = !DILocation(line: 304, column: 11, scope: !3873)
!3886 = !DILocation(line: 304, column: 4, scope: !3873)
!3887 = !DILocation(line: 306, column: 14, scope: !3842)
!3888 = !DILocation(line: 306, column: 19, scope: !3842)
!3889 = !DILocation(line: 306, column: 3, scope: !3842)
!3890 = !DILocation(line: 307, column: 3, scope: !3842)
!3891 = !DILocation(line: 307, column: 8, scope: !3842)
!3892 = !DILocation(line: 307, column: 14, scope: !3842)
!3893 = !DILocation(line: 308, column: 16, scope: !3842)
!3894 = !DILocation(line: 308, column: 21, scope: !3842)
!3895 = !DILocation(line: 308, column: 3, scope: !3842)
!3896 = !DILocation(line: 309, column: 2, scope: !3842)
!3897 = !DILocation(line: 288, column: 49, scope: !3835)
!3898 = !DILocation(line: 310, column: 1, scope: !3804)
!3899 = !DILocation(line: 311, column: 7, scope: !3804)
!3900 = !DILocation(line: 311, column: 2, scope: !3804)
!3901 = !DILocation(line: 313, column: 2, scope: !3804)
!3902 = !DILocation(line: 314, column: 1, scope: !3804)
!3903 = distinct !DISubprogram(name: "autofs_expire_multi", scope: !60, file: !60, line: 611, type: !3904, scopeLine: 613, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !3906)
!3904 = !DISubroutineType(types: !3905)
!3905 = !{!34, !771, !514, !126, !875}
!3906 = !{!3907, !3908, !3909, !3910, !3911, !3912, !3916, !3917}
!3907 = !DILocalVariable(name: "sb", arg: 1, scope: !3903, file: !60, line: 611, type: !771)
!3908 = !DILocalVariable(name: "mnt", arg: 2, scope: !3903, file: !60, line: 611, type: !514)
!3909 = !DILocalVariable(name: "sbi", arg: 3, scope: !3903, file: !60, line: 612, type: !126)
!3910 = !DILocalVariable(name: "arg", arg: 4, scope: !3903, file: !60, line: 612, type: !875)
!3911 = !DILocalVariable(name: "how", scope: !3903, file: !60, line: 614, type: !10)
!3912 = !DILocalVariable(name: "__ret_gu", scope: !3913, file: !60, line: 616, type: !34)
!3913 = distinct !DILexicalBlock(scope: !3914, file: !60, line: 616, column: 13)
!3914 = distinct !DILexicalBlock(scope: !3915, file: !60, line: 616, column: 13)
!3915 = distinct !DILexicalBlock(scope: !3903, file: !60, line: 616, column: 6)
!3916 = !DILocalVariable(name: "__val_gu", scope: !3913, file: !60, line: 616, type: !10)
!3917 = !DILocalVariable(name: "__tmp", scope: !3918, file: !60, line: 616, type: !123)
!3918 = distinct !DILexicalBlock(scope: !3913, file: !60, line: 616, column: 13)
!3919 = !DILocation(line: 611, column: 45, scope: !3903)
!3920 = !DILocation(line: 611, column: 66, scope: !3903)
!3921 = !DILocation(line: 612, column: 27, scope: !3903)
!3922 = !DILocation(line: 612, column: 44, scope: !3903)
!3923 = !DILocation(line: 614, column: 2, scope: !3903)
!3924 = !DILocation(line: 614, column: 15, scope: !3903)
!3925 = !DILocation(line: 616, column: 6, scope: !3915)
!3926 = !DILocation(line: 616, column: 10, scope: !3915)
!3927 = !DILocation(line: 616, column: 13, scope: !3914)
!3928 = !DILocation(line: 616, column: 13, scope: !3913)
!3929 = !{i64 2153438407}
!3930 = !DILocation(line: 616, column: 13, scope: !3918)
!3931 = !DILocation(line: 616, column: 13, scope: !3915)
!3932 = !DILocation(line: 616, column: 6, scope: !3903)
!3933 = !DILocation(line: 617, column: 3, scope: !3915)
!3934 = !DILocation(line: 619, column: 32, scope: !3903)
!3935 = !DILocation(line: 619, column: 36, scope: !3903)
!3936 = !DILocation(line: 619, column: 41, scope: !3903)
!3937 = !DILocation(line: 619, column: 46, scope: !3903)
!3938 = !DILocation(line: 619, column: 9, scope: !3903)
!3939 = !DILocation(line: 619, column: 2, scope: !3903)
!3940 = !DILocation(line: 620, column: 1, scope: !3903)
!3941 = distinct !DISubprogram(name: "might_fault", scope: !3942, file: !3942, line: 202, type: !1950, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59)
!3942 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!3943 = !DILocation(line: 202, column: 40, scope: !3941)
!3944 = distinct !DISubprogram(name: "kmsan_unpoison_memory", scope: !3945, file: !3945, line: 70, type: !3946, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !3948)
!3945 = !DIFile(filename: "./include/linux/kmsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cfeb6fcb47441b7815b086def457771")
!3946 = !DISubroutineType(types: !3947)
!3947 = !{null, !3691, !715}
!3948 = !{!3949, !3950}
!3949 = !DILocalVariable(name: "address", arg: 1, scope: !3944, file: !3945, line: 70, type: !3691)
!3950 = !DILocalVariable(name: "size", arg: 2, scope: !3944, file: !3945, line: 70, type: !715)
!3951 = !DILocation(line: 70, column: 54, scope: !3944)
!3952 = !DILocation(line: 70, column: 70, scope: !3944)
!3953 = !DILocation(line: 72, column: 1, scope: !3944)
!3954 = !DISubprogram(name: "_raw_spin_lock", scope: !3955, file: !3955, line: 22, type: !3956, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3955 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!3956 = !DISubroutineType(types: !3957)
!3957 = !{null, !3958}
!3958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!3959 = !DISubprogram(name: "_raw_spin_unlock", scope: !3955, file: !3955, line: 39, type: !3956, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3960 = distinct !DISubprogram(name: "hlist_bl_unhashed", scope: !535, file: !535, line: 52, type: !3961, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !3965)
!3961 = !DISubroutineType(types: !3962)
!3962 = !{!395, !3963}
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3964 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !534)
!3965 = !{!3966}
!3966 = !DILocalVariable(name: "h", arg: 1, scope: !3960, file: !535, line: 52, type: !3963)
!3967 = !DILocation(line: 52, column: 67, scope: !3960)
!3968 = !DILocation(line: 54, column: 10, scope: !3960)
!3969 = !DILocation(line: 54, column: 13, scope: !3960)
!3970 = !DILocation(line: 54, column: 9, scope: !3960)
!3971 = !DILocation(line: 54, column: 2, scope: !3960)
!3972 = distinct !DISubprogram(name: "get_next_positive_subdir", scope: !60, file: !60, line: 97, type: !3973, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !3975)
!3973 = !DISubroutineType(types: !3974)
!3974 = !{!519, !519, !519}
!3975 = !{!3976, !3977, !3978, !3979}
!3976 = !DILocalVariable(name: "prev", arg: 1, scope: !3972, file: !60, line: 97, type: !519)
!3977 = !DILocalVariable(name: "root", arg: 2, scope: !3972, file: !60, line: 98, type: !519)
!3978 = !DILocalVariable(name: "sbi", scope: !3972, file: !60, line: 100, type: !126)
!3979 = !DILocalVariable(name: "q", scope: !3972, file: !60, line: 101, type: !519)
!3980 = !DILocation(line: 97, column: 63, scope: !3972)
!3981 = !DILocation(line: 98, column: 28, scope: !3972)
!3982 = !DILocation(line: 100, column: 2, scope: !3972)
!3983 = !DILocation(line: 100, column: 25, scope: !3972)
!3984 = !DILocation(line: 100, column: 42, scope: !3972)
!3985 = !DILocation(line: 100, column: 48, scope: !3972)
!3986 = !DILocation(line: 100, column: 31, scope: !3972)
!3987 = !DILocation(line: 101, column: 2, scope: !3972)
!3988 = !DILocation(line: 101, column: 17, scope: !3972)
!3989 = !DILocation(line: 103, column: 13, scope: !3972)
!3990 = !DILocation(line: 103, column: 18, scope: !3972)
!3991 = !DILocation(line: 103, column: 2, scope: !3972)
!3992 = !DILocation(line: 104, column: 13, scope: !3972)
!3993 = !DILocation(line: 104, column: 19, scope: !3972)
!3994 = !DILocation(line: 104, column: 2, scope: !3972)
!3995 = !DILocation(line: 105, column: 21, scope: !3972)
!3996 = !DILocation(line: 105, column: 27, scope: !3972)
!3997 = !DILocation(line: 105, column: 6, scope: !3972)
!3998 = !DILocation(line: 105, column: 4, scope: !3972)
!3999 = !DILocation(line: 106, column: 15, scope: !3972)
!4000 = !DILocation(line: 106, column: 21, scope: !3972)
!4001 = !DILocation(line: 106, column: 2, scope: !3972)
!4002 = !DILocation(line: 107, column: 15, scope: !3972)
!4003 = !DILocation(line: 107, column: 20, scope: !3972)
!4004 = !DILocation(line: 107, column: 2, scope: !3972)
!4005 = !DILocation(line: 108, column: 7, scope: !3972)
!4006 = !DILocation(line: 108, column: 2, scope: !3972)
!4007 = !DILocation(line: 109, column: 9, scope: !3972)
!4008 = !DILocation(line: 110, column: 1, scope: !3972)
!4009 = !DILocation(line: 109, column: 2, scope: !3972)
!4010 = distinct !DISubprogram(name: "should_expire", scope: !60, file: !60, line: 321, type: !4011, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !4013)
!4011 = !DISubroutineType(types: !4012)
!4012 = !{!519, !519, !514, !329, !10}
!4013 = !{!4014, !4015, !4016, !4017, !4018, !4019, !4020}
!4014 = !DILocalVariable(name: "dentry", arg: 1, scope: !4010, file: !60, line: 321, type: !519)
!4015 = !DILocalVariable(name: "mnt", arg: 2, scope: !4010, file: !60, line: 322, type: !514)
!4016 = !DILocalVariable(name: "timeout", arg: 3, scope: !4010, file: !60, line: 323, type: !329)
!4017 = !DILocalVariable(name: "how", arg: 4, scope: !4010, file: !60, line: 324, type: !10)
!4018 = !DILocalVariable(name: "ino", scope: !4010, file: !60, line: 326, type: !3246)
!4019 = !DILocalVariable(name: "ino_count", scope: !4010, file: !60, line: 327, type: !10)
!4020 = !DILocalVariable(name: "expired", scope: !4021, file: !60, line: 394, type: !519)
!4021 = distinct !DILexicalBlock(scope: !4022, file: !60, line: 393, column: 9)
!4022 = distinct !DILexicalBlock(scope: !4010, file: !60, line: 378, column: 6)
!4023 = !DILocation(line: 321, column: 52, scope: !4010)
!4024 = !DILocation(line: 322, column: 26, scope: !4010)
!4025 = !DILocation(line: 323, column: 23, scope: !4010)
!4026 = !DILocation(line: 324, column: 22, scope: !4010)
!4027 = !DILocation(line: 326, column: 2, scope: !4010)
!4028 = !DILocation(line: 326, column: 22, scope: !4010)
!4029 = !DILocation(line: 326, column: 46, scope: !4010)
!4030 = !DILocation(line: 326, column: 28, scope: !4010)
!4031 = !DILocation(line: 327, column: 2, scope: !4010)
!4032 = !DILocation(line: 327, column: 15, scope: !4010)
!4033 = !DILocation(line: 330, column: 6, scope: !4034)
!4034 = distinct !DILexicalBlock(scope: !4010, file: !60, line: 330, column: 6)
!4035 = !DILocation(line: 330, column: 11, scope: !4034)
!4036 = !DILocation(line: 330, column: 17, scope: !4034)
!4037 = !DILocation(line: 330, column: 6, scope: !4010)
!4038 = !DILocation(line: 331, column: 3, scope: !4034)
!4039 = !DILocation(line: 339, column: 19, scope: !4040)
!4040 = distinct !DILexicalBlock(scope: !4010, file: !60, line: 339, column: 6)
!4041 = !DILocation(line: 339, column: 6, scope: !4040)
!4042 = !DILocation(line: 339, column: 6, scope: !4010)
!4043 = !DILocation(line: 340, column: 3, scope: !4044)
!4044 = distinct !DILexicalBlock(scope: !4045, file: !60, line: 340, column: 3)
!4045 = distinct !DILexicalBlock(scope: !4046, file: !60, line: 340, column: 3)
!4046 = distinct !DILexicalBlock(scope: !4040, file: !60, line: 339, column: 28)
!4047 = !DILocation(line: 340, column: 3, scope: !4045)
!4048 = !DILocation(line: 343, column: 25, scope: !4049)
!4049 = distinct !DILexicalBlock(scope: !4046, file: !60, line: 343, column: 7)
!4050 = !DILocation(line: 343, column: 30, scope: !4049)
!4051 = !DILocation(line: 343, column: 38, scope: !4049)
!4052 = !DILocation(line: 343, column: 7, scope: !4049)
!4053 = !DILocation(line: 343, column: 7, scope: !4046)
!4054 = !DILocation(line: 344, column: 4, scope: !4049)
!4055 = !DILocation(line: 349, column: 7, scope: !4056)
!4056 = distinct !DILexicalBlock(scope: !4046, file: !60, line: 349, column: 7)
!4057 = !DILocation(line: 349, column: 11, scope: !4056)
!4058 = !DILocation(line: 349, column: 7, scope: !4046)
!4059 = !DILocation(line: 350, column: 11, scope: !4056)
!4060 = !DILocation(line: 350, column: 4, scope: !4056)
!4061 = !DILocation(line: 353, column: 25, scope: !4062)
!4062 = distinct !DILexicalBlock(scope: !4046, file: !60, line: 353, column: 7)
!4063 = !DILocation(line: 353, column: 33, scope: !4062)
!4064 = !DILocation(line: 353, column: 42, scope: !4062)
!4065 = !DILocation(line: 353, column: 7, scope: !4062)
!4066 = !DILocation(line: 353, column: 7, scope: !4046)
!4067 = !DILocation(line: 354, column: 11, scope: !4062)
!4068 = !DILocation(line: 354, column: 4, scope: !4062)
!4069 = !DILocation(line: 355, column: 3, scope: !4046)
!4070 = !DILocation(line: 358, column: 19, scope: !4071)
!4071 = distinct !DILexicalBlock(scope: !4010, file: !60, line: 358, column: 6)
!4072 = !DILocation(line: 358, column: 6, scope: !4071)
!4073 = !DILocation(line: 358, column: 6, scope: !4010)
!4074 = !DILocation(line: 359, column: 3, scope: !4075)
!4075 = distinct !DILexicalBlock(scope: !4076, file: !60, line: 359, column: 3)
!4076 = distinct !DILexicalBlock(scope: !4077, file: !60, line: 359, column: 3)
!4077 = distinct !DILexicalBlock(scope: !4071, file: !60, line: 358, column: 28)
!4078 = !DILocation(line: 359, column: 3, scope: !4076)
!4079 = !DILocation(line: 362, column: 7, scope: !4080)
!4080 = distinct !DILexicalBlock(scope: !4077, file: !60, line: 362, column: 7)
!4081 = !DILocation(line: 362, column: 11, scope: !4080)
!4082 = !DILocation(line: 362, column: 7, scope: !4077)
!4083 = !DILocation(line: 363, column: 11, scope: !4080)
!4084 = !DILocation(line: 363, column: 4, scope: !4080)
!4085 = !DILocation(line: 369, column: 25, scope: !4086)
!4086 = distinct !DILexicalBlock(scope: !4077, file: !60, line: 369, column: 7)
!4087 = !DILocation(line: 369, column: 33, scope: !4086)
!4088 = !DILocation(line: 369, column: 42, scope: !4086)
!4089 = !DILocation(line: 369, column: 7, scope: !4086)
!4090 = !DILocation(line: 369, column: 7, scope: !4077)
!4091 = !DILocation(line: 370, column: 11, scope: !4086)
!4092 = !DILocation(line: 370, column: 4, scope: !4086)
!4093 = !DILocation(line: 371, column: 3, scope: !4077)
!4094 = !DILocation(line: 374, column: 19, scope: !4095)
!4095 = distinct !DILexicalBlock(scope: !4010, file: !60, line: 374, column: 6)
!4096 = !DILocation(line: 374, column: 6, scope: !4095)
!4097 = !DILocation(line: 374, column: 6, scope: !4010)
!4098 = !DILocation(line: 375, column: 3, scope: !4095)
!4099 = !DILocation(line: 378, column: 8, scope: !4022)
!4100 = !DILocation(line: 378, column: 12, scope: !4022)
!4101 = !DILocation(line: 378, column: 6, scope: !4010)
!4102 = !DILocation(line: 380, column: 9, scope: !4103)
!4103 = distinct !DILexicalBlock(scope: !4104, file: !60, line: 380, column: 7)
!4104 = distinct !DILexicalBlock(scope: !4022, file: !60, line: 378, column: 34)
!4105 = !DILocation(line: 380, column: 13, scope: !4103)
!4106 = !DILocation(line: 380, column: 7, scope: !4104)
!4107 = !DILocation(line: 382, column: 16, scope: !4108)
!4108 = distinct !DILexicalBlock(scope: !4109, file: !60, line: 382, column: 16)
!4109 = distinct !DILexicalBlock(scope: !4103, file: !60, line: 380, column: 35)
!4110 = !DILocation(line: 382, column: 16, scope: !4111)
!4111 = distinct !DILexicalBlock(scope: !4108, file: !60, line: 382, column: 16)
!4112 = !DILocation(line: 382, column: 38, scope: !4109)
!4113 = !DILocation(line: 382, column: 14, scope: !4109)
!4114 = !DILocation(line: 383, column: 16, scope: !4115)
!4115 = distinct !DILexicalBlock(scope: !4109, file: !60, line: 383, column: 8)
!4116 = !DILocation(line: 383, column: 8, scope: !4115)
!4117 = !DILocation(line: 383, column: 26, scope: !4115)
!4118 = !DILocation(line: 383, column: 24, scope: !4115)
!4119 = !DILocation(line: 383, column: 8, scope: !4109)
!4120 = !DILocation(line: 384, column: 5, scope: !4115)
!4121 = !DILocation(line: 385, column: 3, scope: !4109)
!4122 = !DILocation(line: 387, column: 25, scope: !4123)
!4123 = distinct !DILexicalBlock(scope: !4104, file: !60, line: 387, column: 7)
!4124 = !DILocation(line: 387, column: 30, scope: !4123)
!4125 = !DILocation(line: 387, column: 38, scope: !4123)
!4126 = !DILocation(line: 387, column: 47, scope: !4123)
!4127 = !DILocation(line: 387, column: 8, scope: !4123)
!4128 = !DILocation(line: 387, column: 7, scope: !4104)
!4129 = !DILocation(line: 388, column: 11, scope: !4123)
!4130 = !DILocation(line: 388, column: 4, scope: !4123)
!4131 = !DILocation(line: 393, column: 2, scope: !4104)
!4132 = !DILocation(line: 394, column: 3, scope: !4021)
!4133 = !DILocation(line: 394, column: 18, scope: !4021)
!4134 = !DILocation(line: 397, column: 9, scope: !4135)
!4135 = distinct !DILexicalBlock(scope: !4021, file: !60, line: 397, column: 7)
!4136 = !DILocation(line: 397, column: 13, scope: !4135)
!4137 = !DILocation(line: 397, column: 7, scope: !4021)
!4138 = !DILocation(line: 399, column: 16, scope: !4139)
!4139 = distinct !DILexicalBlock(scope: !4140, file: !60, line: 399, column: 16)
!4140 = distinct !DILexicalBlock(scope: !4135, file: !60, line: 397, column: 35)
!4141 = !DILocation(line: 399, column: 16, scope: !4142)
!4142 = distinct !DILexicalBlock(scope: !4139, file: !60, line: 399, column: 16)
!4143 = !DILocation(line: 399, column: 38, scope: !4140)
!4144 = !DILocation(line: 399, column: 14, scope: !4140)
!4145 = !DILocation(line: 400, column: 16, scope: !4146)
!4146 = distinct !DILexicalBlock(scope: !4140, file: !60, line: 400, column: 8)
!4147 = !DILocation(line: 400, column: 8, scope: !4146)
!4148 = !DILocation(line: 400, column: 26, scope: !4146)
!4149 = !DILocation(line: 400, column: 24, scope: !4146)
!4150 = !DILocation(line: 400, column: 8, scope: !4140)
!4151 = !DILocation(line: 401, column: 5, scope: !4146)
!4152 = !DILocation(line: 402, column: 3, scope: !4140)
!4153 = !DILocation(line: 404, column: 33, scope: !4021)
!4154 = !DILocation(line: 404, column: 38, scope: !4021)
!4155 = !DILocation(line: 404, column: 46, scope: !4021)
!4156 = !DILocation(line: 404, column: 55, scope: !4021)
!4157 = !DILocation(line: 404, column: 13, scope: !4021)
!4158 = !DILocation(line: 404, column: 11, scope: !4021)
!4159 = !DILocation(line: 405, column: 7, scope: !4160)
!4160 = distinct !DILexicalBlock(scope: !4021, file: !60, line: 405, column: 7)
!4161 = !DILocation(line: 405, column: 7, scope: !4021)
!4162 = !DILocation(line: 406, column: 8, scope: !4163)
!4163 = distinct !DILexicalBlock(scope: !4164, file: !60, line: 406, column: 8)
!4164 = distinct !DILexicalBlock(scope: !4160, file: !60, line: 405, column: 16)
!4165 = !DILocation(line: 406, column: 19, scope: !4163)
!4166 = !DILocation(line: 406, column: 16, scope: !4163)
!4167 = !DILocation(line: 406, column: 8, scope: !4164)
!4168 = !DILocation(line: 407, column: 10, scope: !4163)
!4169 = !DILocation(line: 407, column: 5, scope: !4163)
!4170 = !DILocation(line: 408, column: 11, scope: !4164)
!4171 = !DILocation(line: 408, column: 4, scope: !4164)
!4172 = !DILocation(line: 410, column: 2, scope: !4022)
!4173 = !DILocation(line: 411, column: 2, scope: !4010)
!4174 = !DILocation(line: 412, column: 1, scope: !4010)
!4175 = !DISubprogram(name: "synchronize_rcu", scope: !4176, file: !4176, line: 45, type: !1950, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4176 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!4177 = !DILocation(line: 84, column: 55, scope: !2)
!4178 = !DILocation(line: 86, column: 2, scope: !2)
!4179 = !DILocation(line: 86, column: 5, scope: !2)
!4180 = !DILocation(line: 86, column: 10, scope: !2)
!4181 = !DILocation(line: 87, column: 2, scope: !2)
!4182 = !DILocation(line: 87, column: 2, scope: !4183)
!4183 = distinct !DILexicalBlock(scope: !2, file: !3, line: 87, column: 2)
!4184 = !DILocation(line: 88, column: 1, scope: !2)
!4185 = distinct !DISubprogram(name: "positive_after", scope: !60, file: !60, line: 74, type: !3973, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !4186)
!4186 = !{!4187, !4188, !4189, !4192, !4194}
!4187 = !DILocalVariable(name: "p", arg: 1, scope: !4185, file: !60, line: 74, type: !519)
!4188 = !DILocalVariable(name: "child", arg: 2, scope: !4185, file: !60, line: 74, type: !519)
!4189 = !DILocalVariable(name: "__mptr", scope: !4190, file: !60, line: 77, type: !346)
!4190 = distinct !DILexicalBlock(scope: !4191, file: !60, line: 77, column: 11)
!4191 = distinct !DILexicalBlock(scope: !4185, file: !60, line: 76, column: 6)
!4192 = !DILocalVariable(name: "__mptr", scope: !4193, file: !60, line: 79, type: !346)
!4193 = distinct !DILexicalBlock(scope: !4191, file: !60, line: 79, column: 11)
!4194 = !DILocalVariable(name: "__mptr", scope: !4195, file: !60, line: 81, type: !346)
!4195 = distinct !DILexicalBlock(scope: !4196, file: !60, line: 81, column: 2)
!4196 = distinct !DILexicalBlock(scope: !4197, file: !60, line: 81, column: 2)
!4197 = distinct !DILexicalBlock(scope: !4185, file: !60, line: 81, column: 2)
!4198 = !DILocation(line: 74, column: 53, scope: !4185)
!4199 = !DILocation(line: 74, column: 71, scope: !4185)
!4200 = !DILocation(line: 76, column: 6, scope: !4191)
!4201 = !DILocation(line: 76, column: 6, scope: !4185)
!4202 = !DILocation(line: 77, column: 11, scope: !4190)
!4203 = !DILocation(line: 77, column: 11, scope: !4191)
!4204 = !DILocation(line: 77, column: 9, scope: !4191)
!4205 = !DILocation(line: 77, column: 3, scope: !4191)
!4206 = !DILocation(line: 79, column: 11, scope: !4193)
!4207 = !DILocation(line: 79, column: 11, scope: !4191)
!4208 = !DILocation(line: 79, column: 9, scope: !4191)
!4209 = !DILocation(line: 81, column: 2, scope: !4185)
!4210 = !DILocation(line: 81, column: 2, scope: !4196)
!4211 = !DILocation(line: 81, column: 2, scope: !4197)
!4212 = !DILocation(line: 82, column: 3, scope: !4213)
!4213 = distinct !DILexicalBlock(scope: !4196, file: !60, line: 81, column: 58)
!4214 = !DILocation(line: 82, column: 3, scope: !4215)
!4215 = distinct !DILexicalBlock(scope: !4213, file: !60, line: 82, column: 3)
!4216 = !DILocation(line: 83, column: 23, scope: !4217)
!4217 = distinct !DILexicalBlock(scope: !4213, file: !60, line: 83, column: 7)
!4218 = !DILocation(line: 83, column: 7, scope: !4217)
!4219 = !DILocation(line: 83, column: 7, scope: !4213)
!4220 = !DILocation(line: 84, column: 15, scope: !4221)
!4221 = distinct !DILexicalBlock(scope: !4217, file: !60, line: 83, column: 31)
!4222 = !DILocation(line: 84, column: 4, scope: !4221)
!4223 = !DILocation(line: 85, column: 17, scope: !4221)
!4224 = !DILocation(line: 85, column: 24, scope: !4221)
!4225 = !DILocation(line: 85, column: 4, scope: !4221)
!4226 = !DILocation(line: 86, column: 11, scope: !4221)
!4227 = !DILocation(line: 86, column: 4, scope: !4221)
!4228 = !DILocation(line: 88, column: 16, scope: !4213)
!4229 = !DILocation(line: 88, column: 23, scope: !4213)
!4230 = !DILocation(line: 88, column: 3, scope: !4213)
!4231 = !DILocation(line: 89, column: 2, scope: !4213)
!4232 = !DILocation(line: 81, column: 2, scope: !4195)
!4233 = distinct !{!4233, !4211, !4234, !3597, !3598}
!4234 = !DILocation(line: 89, column: 2, scope: !4197)
!4235 = !DILocation(line: 91, column: 2, scope: !4185)
!4236 = !DILocation(line: 92, column: 1, scope: !4185)
!4237 = distinct !DISubprogram(name: "spinlock_check", scope: !3400, file: !3400, line: 324, type: !4238, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !4240)
!4238 = !DISubroutineType(types: !4239)
!4239 = !{!3958, !3403}
!4240 = !{!4241}
!4241 = !DILocalVariable(name: "lock", arg: 1, scope: !4237, file: !3400, line: 324, type: !3403)
!4242 = !DILocation(line: 324, column: 67, scope: !4237)
!4243 = !DILocation(line: 326, column: 10, scope: !4237)
!4244 = !DILocation(line: 326, column: 16, scope: !4237)
!4245 = !DILocation(line: 326, column: 2, scope: !4237)
!4246 = distinct !DISubprogram(name: "simple_positive", scope: !113, file: !113, line: 487, type: !2841, scopeLine: 488, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !4247)
!4247 = !{!4248}
!4248 = !DILocalVariable(name: "dentry", arg: 1, scope: !4246, file: !113, line: 487, type: !2830)
!4249 = !DILocation(line: 487, column: 56, scope: !4246)
!4250 = !DILocation(line: 489, column: 30, scope: !4246)
!4251 = !DILocation(line: 489, column: 9, scope: !4246)
!4252 = !DILocation(line: 489, column: 38, scope: !4246)
!4253 = !DILocation(line: 489, column: 53, scope: !4246)
!4254 = !DILocation(line: 489, column: 42, scope: !4246)
!4255 = !DILocation(line: 489, column: 41, scope: !4246)
!4256 = !DILocation(line: 0, scope: !4246)
!4257 = !DILocation(line: 489, column: 2, scope: !4246)
!4258 = distinct !DISubprogram(name: "dget_dlock", scope: !113, file: !113, line: 310, type: !4259, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !4261)
!4259 = !DISubroutineType(types: !4260)
!4260 = !{!519, !519}
!4261 = !{!4262}
!4262 = !DILocalVariable(name: "dentry", arg: 1, scope: !4258, file: !113, line: 310, type: !519)
!4263 = !DILocation(line: 310, column: 56, scope: !4258)
!4264 = !DILocation(line: 312, column: 6, scope: !4265)
!4265 = distinct !DILexicalBlock(scope: !4258, file: !113, line: 312, column: 6)
!4266 = !DILocation(line: 312, column: 6, scope: !4258)
!4267 = !DILocation(line: 313, column: 3, scope: !4265)
!4268 = !DILocation(line: 313, column: 11, scope: !4265)
!4269 = !DILocation(line: 313, column: 21, scope: !4265)
!4270 = !DILocation(line: 313, column: 26, scope: !4265)
!4271 = !DILocation(line: 314, column: 9, scope: !4258)
!4272 = !DILocation(line: 314, column: 2, scope: !4258)
!4273 = distinct !DISubprogram(name: "d_really_is_positive", scope: !113, file: !113, line: 482, type: !4274, scopeLine: 483, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !4276)
!4274 = !DISubroutineType(types: !4275)
!4275 = !{!395, !2830}
!4276 = !{!4277}
!4277 = !DILocalVariable(name: "dentry", arg: 1, scope: !4273, file: !113, line: 482, type: !2830)
!4278 = !DILocation(line: 482, column: 62, scope: !4273)
!4279 = !DILocation(line: 484, column: 9, scope: !4273)
!4280 = !DILocation(line: 484, column: 17, scope: !4273)
!4281 = !DILocation(line: 484, column: 25, scope: !4273)
!4282 = !DILocation(line: 484, column: 2, scope: !4273)
!4283 = distinct !DISubprogram(name: "d_mountpoint", scope: !113, file: !113, line: 375, type: !4274, scopeLine: 376, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !4284)
!4284 = !{!4285}
!4285 = !DILocalVariable(name: "dentry", arg: 1, scope: !4283, file: !113, line: 375, type: !2830)
!4286 = !DILocation(line: 375, column: 54, scope: !4283)
!4287 = !DILocation(line: 377, column: 9, scope: !4283)
!4288 = !DILocation(line: 377, column: 17, scope: !4283)
!4289 = !DILocation(line: 377, column: 25, scope: !4283)
!4290 = !DILocation(line: 377, column: 2, scope: !4283)
!4291 = distinct !DISubprogram(name: "autofs_mount_busy", scope: !60, file: !60, line: 29, type: !4292, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !4294)
!4292 = !DISubroutineType(types: !4293)
!4293 = !{!34, !514, !519, !10}
!4294 = !{!4295, !4296, !4297, !4298, !4299, !4300, !4301, !4304, !4307}
!4295 = !DILocalVariable(name: "mnt", arg: 1, scope: !4291, file: !60, line: 29, type: !514)
!4296 = !DILocalVariable(name: "dentry", arg: 2, scope: !4291, file: !60, line: 30, type: !519)
!4297 = !DILocalVariable(name: "how", arg: 3, scope: !4291, file: !60, line: 30, type: !10)
!4298 = !DILocalVariable(name: "top", scope: !4291, file: !60, line: 32, type: !519)
!4299 = !DILocalVariable(name: "path", scope: !4291, file: !60, line: 33, type: !510)
!4300 = !DILocalVariable(name: "status", scope: !4291, file: !60, line: 34, type: !34)
!4301 = !DILocalVariable(name: "sbi", scope: !4302, file: !60, line: 44, type: !126)
!4302 = distinct !DILexicalBlock(scope: !4303, file: !60, line: 43, column: 37)
!4303 = distinct !DILexicalBlock(scope: !4291, file: !60, line: 43, column: 6)
!4304 = !DILocalVariable(name: "ino", scope: !4305, file: !60, line: 59, type: !3246)
!4305 = distinct !DILexicalBlock(scope: !4306, file: !60, line: 58, column: 34)
!4306 = distinct !DILexicalBlock(scope: !4291, file: !60, line: 58, column: 6)
!4307 = !DILabel(scope: !4291, name: "done", file: !60, line: 67)
!4308 = !DILocation(line: 29, column: 47, scope: !4291)
!4309 = !DILocation(line: 30, column: 24, scope: !4291)
!4310 = !DILocation(line: 30, column: 45, scope: !4291)
!4311 = !DILocation(line: 32, column: 2, scope: !4291)
!4312 = !DILocation(line: 32, column: 17, scope: !4291)
!4313 = !DILocation(line: 32, column: 23, scope: !4291)
!4314 = !DILocation(line: 33, column: 2, scope: !4291)
!4315 = !DILocation(line: 33, column: 14, scope: !4291)
!4316 = !DILocation(line: 33, column: 21, scope: !4291)
!4317 = !DILocation(line: 33, column: 29, scope: !4291)
!4318 = !DILocation(line: 33, column: 44, scope: !4291)
!4319 = !DILocation(line: 34, column: 2, scope: !4291)
!4320 = !DILocation(line: 34, column: 6, scope: !4291)
!4321 = !DILocation(line: 36, column: 2, scope: !4322)
!4322 = distinct !DILexicalBlock(scope: !4323, file: !60, line: 36, column: 2)
!4323 = distinct !DILexicalBlock(scope: !4291, file: !60, line: 36, column: 2)
!4324 = !DILocation(line: 36, column: 2, scope: !4323)
!4325 = !DILocation(line: 38, column: 2, scope: !4291)
!4326 = !DILocation(line: 40, column: 7, scope: !4327)
!4327 = distinct !DILexicalBlock(scope: !4291, file: !60, line: 40, column: 6)
!4328 = !DILocation(line: 40, column: 6, scope: !4291)
!4329 = !DILocation(line: 41, column: 3, scope: !4327)
!4330 = !DILocation(line: 43, column: 28, scope: !4303)
!4331 = !DILocation(line: 43, column: 6, scope: !4303)
!4332 = !DILocation(line: 43, column: 6, scope: !4291)
!4333 = !DILocation(line: 44, column: 3, scope: !4302)
!4334 = !DILocation(line: 44, column: 26, scope: !4302)
!4335 = !DILocation(line: 44, column: 48, scope: !4302)
!4336 = !DILocation(line: 44, column: 56, scope: !4302)
!4337 = !DILocation(line: 44, column: 32, scope: !4302)
!4338 = !DILocation(line: 47, column: 28, scope: !4339)
!4339 = distinct !DILexicalBlock(scope: !4302, file: !60, line: 47, column: 7)
!4340 = !DILocation(line: 47, column: 33, scope: !4339)
!4341 = !DILocation(line: 47, column: 7, scope: !4339)
!4342 = !DILocation(line: 47, column: 7, scope: !4302)
!4343 = !DILocation(line: 48, column: 4, scope: !4339)
!4344 = !DILocation(line: 49, column: 2, scope: !4303)
!4345 = !DILocation(line: 49, column: 2, scope: !4302)
!4346 = !DILocation(line: 52, column: 6, scope: !4347)
!4347 = distinct !DILexicalBlock(scope: !4291, file: !60, line: 52, column: 6)
!4348 = !DILocation(line: 52, column: 10, scope: !4347)
!4349 = !DILocation(line: 52, column: 6, scope: !4291)
!4350 = !DILocation(line: 53, column: 10, scope: !4351)
!4351 = distinct !DILexicalBlock(scope: !4347, file: !60, line: 52, column: 31)
!4352 = !DILocation(line: 54, column: 3, scope: !4351)
!4353 = !DILocation(line: 58, column: 28, scope: !4306)
!4354 = !DILocation(line: 58, column: 7, scope: !4306)
!4355 = !DILocation(line: 58, column: 6, scope: !4291)
!4356 = !DILocation(line: 59, column: 3, scope: !4305)
!4357 = !DILocation(line: 59, column: 23, scope: !4305)
!4358 = !DILocation(line: 61, column: 27, scope: !4305)
!4359 = !DILocation(line: 61, column: 9, scope: !4305)
!4360 = !DILocation(line: 61, column: 7, scope: !4305)
!4361 = !DILocation(line: 62, column: 20, scope: !4305)
!4362 = !DILocation(line: 62, column: 3, scope: !4305)
!4363 = !DILocation(line: 62, column: 8, scope: !4305)
!4364 = !DILocation(line: 62, column: 18, scope: !4305)
!4365 = !DILocation(line: 64, column: 2, scope: !4306)
!4366 = !DILocation(line: 66, column: 9, scope: !4291)
!4367 = !DILocation(line: 66, column: 2, scope: !4291)
!4368 = !DILocation(line: 67, column: 1, scope: !4291)
!4369 = !DILocation(line: 68, column: 2, scope: !4370)
!4370 = distinct !DILexicalBlock(scope: !4371, file: !60, line: 68, column: 2)
!4371 = distinct !DILexicalBlock(scope: !4291, file: !60, line: 68, column: 2)
!4372 = !DILocation(line: 68, column: 2, scope: !4371)
!4373 = !DILocation(line: 69, column: 2, scope: !4291)
!4374 = !DILocation(line: 70, column: 9, scope: !4291)
!4375 = !DILocation(line: 70, column: 2, scope: !4291)
!4376 = !DILocation(line: 71, column: 1, scope: !4291)
!4377 = distinct !DISubprogram(name: "autofs_can_expire", scope: !60, file: !60, line: 11, type: !4378, scopeLine: 13, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !4380)
!4378 = !DISubroutineType(types: !4379)
!4379 = !{!34, !519, !329, !10}
!4380 = !{!4381, !4382, !4383, !4384}
!4381 = !DILocalVariable(name: "dentry", arg: 1, scope: !4377, file: !60, line: 11, type: !519)
!4382 = !DILocalVariable(name: "timeout", arg: 2, scope: !4377, file: !60, line: 12, type: !329)
!4383 = !DILocalVariable(name: "how", arg: 3, scope: !4377, file: !60, line: 12, type: !10)
!4384 = !DILocalVariable(name: "ino", scope: !4377, file: !60, line: 14, type: !3246)
!4385 = !DILocation(line: 11, column: 52, scope: !4377)
!4386 = !DILocation(line: 12, column: 23, scope: !4377)
!4387 = !DILocation(line: 12, column: 45, scope: !4377)
!4388 = !DILocation(line: 14, column: 2, scope: !4377)
!4389 = !DILocation(line: 14, column: 22, scope: !4377)
!4390 = !DILocation(line: 14, column: 46, scope: !4377)
!4391 = !DILocation(line: 14, column: 28, scope: !4377)
!4392 = !DILocation(line: 17, column: 6, scope: !4393)
!4393 = distinct !DILexicalBlock(scope: !4377, file: !60, line: 17, column: 6)
!4394 = !DILocation(line: 17, column: 10, scope: !4393)
!4395 = !DILocation(line: 17, column: 6, scope: !4377)
!4396 = !DILocation(line: 18, column: 3, scope: !4393)
!4397 = !DILocation(line: 20, column: 8, scope: !4398)
!4398 = distinct !DILexicalBlock(scope: !4377, file: !60, line: 20, column: 6)
!4399 = !DILocation(line: 20, column: 12, scope: !4398)
!4400 = !DILocation(line: 20, column: 6, scope: !4377)
!4401 = !DILocation(line: 22, column: 8, scope: !4402)
!4402 = distinct !DILexicalBlock(scope: !4403, file: !60, line: 22, column: 7)
!4403 = distinct !DILexicalBlock(scope: !4398, file: !60, line: 20, column: 37)
!4404 = !DILocation(line: 22, column: 16, scope: !4402)
!4405 = !DILocation(line: 22, column: 19, scope: !4402)
!4406 = !DILocation(line: 22, column: 7, scope: !4403)
!4407 = !DILocation(line: 23, column: 4, scope: !4402)
!4408 = !DILocation(line: 24, column: 2, scope: !4403)
!4409 = !DILocation(line: 25, column: 2, scope: !4377)
!4410 = !DILocation(line: 26, column: 1, scope: !4377)
!4411 = distinct !DISubprogram(name: "d_is_symlink", scope: !113, file: !113, line: 413, type: !4274, scopeLine: 414, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !4412)
!4412 = !{!4413}
!4413 = !DILocalVariable(name: "dentry", arg: 1, scope: !4411, file: !113, line: 413, type: !2830)
!4414 = !DILocation(line: 413, column: 54, scope: !4411)
!4415 = !DILocation(line: 415, column: 24, scope: !4411)
!4416 = !DILocation(line: 415, column: 9, scope: !4411)
!4417 = !DILocation(line: 415, column: 32, scope: !4411)
!4418 = !DILocation(line: 415, column: 2, scope: !4411)
!4419 = distinct !DISubprogram(name: "autofs_empty", scope: !128, file: !128, line: 149, type: !4420, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !4422)
!4420 = !DISubroutineType(types: !4421)
!4421 = !{!395, !3246}
!4422 = !{!4423}
!4423 = !DILocalVariable(name: "ino", arg: 1, scope: !4419, file: !128, line: 149, type: !3246)
!4424 = !DILocation(line: 149, column: 53, scope: !4419)
!4425 = !DILocation(line: 151, column: 9, scope: !4419)
!4426 = !DILocation(line: 151, column: 14, scope: !4419)
!4427 = !DILocation(line: 151, column: 20, scope: !4419)
!4428 = !DILocation(line: 151, column: 2, scope: !4419)
!4429 = distinct !DISubprogram(name: "d_count", scope: !113, file: !113, line: 283, type: !4430, scopeLine: 284, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !4432)
!4430 = !DISubroutineType(types: !4431)
!4431 = !{!10, !2830}
!4432 = !{!4433}
!4433 = !DILocalVariable(name: "dentry", arg: 1, scope: !4429, file: !113, line: 283, type: !2830)
!4434 = !DILocation(line: 283, column: 53, scope: !4429)
!4435 = !DILocation(line: 285, column: 9, scope: !4429)
!4436 = !DILocation(line: 285, column: 17, scope: !4429)
!4437 = !DILocation(line: 285, column: 27, scope: !4429)
!4438 = !DILocation(line: 285, column: 2, scope: !4429)
!4439 = distinct !DISubprogram(name: "autofs_tree_busy", scope: !60, file: !60, line: 182, type: !4440, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !4442)
!4440 = !DISubroutineType(types: !4441)
!4441 = !{!34, !514, !519, !329, !10}
!4442 = !{!4443, !4444, !4445, !4446, !4447, !4448, !4449, !4453}
!4443 = !DILocalVariable(name: "mnt", arg: 1, scope: !4439, file: !60, line: 182, type: !514)
!4444 = !DILocalVariable(name: "top", arg: 2, scope: !4439, file: !60, line: 183, type: !519)
!4445 = !DILocalVariable(name: "timeout", arg: 3, scope: !4439, file: !60, line: 184, type: !329)
!4446 = !DILocalVariable(name: "how", arg: 4, scope: !4439, file: !60, line: 185, type: !10)
!4447 = !DILocalVariable(name: "top_ino", scope: !4439, file: !60, line: 187, type: !3246)
!4448 = !DILocalVariable(name: "p", scope: !4439, file: !60, line: 188, type: !519)
!4449 = !DILocalVariable(name: "ino", scope: !4450, file: !60, line: 213, type: !3246)
!4450 = distinct !DILexicalBlock(scope: !4451, file: !60, line: 212, column: 10)
!4451 = distinct !DILexicalBlock(scope: !4452, file: !60, line: 206, column: 7)
!4452 = distinct !DILexicalBlock(scope: !4439, file: !60, line: 197, column: 49)
!4453 = !DILocalVariable(name: "ino_count", scope: !4450, file: !60, line: 214, type: !10)
!4454 = !DILocation(line: 182, column: 46, scope: !4439)
!4455 = !DILocation(line: 183, column: 23, scope: !4439)
!4456 = !DILocation(line: 184, column: 22, scope: !4439)
!4457 = !DILocation(line: 185, column: 21, scope: !4439)
!4458 = !DILocation(line: 187, column: 2, scope: !4439)
!4459 = !DILocation(line: 187, column: 22, scope: !4439)
!4460 = !DILocation(line: 187, column: 50, scope: !4439)
!4461 = !DILocation(line: 187, column: 32, scope: !4439)
!4462 = !DILocation(line: 188, column: 2, scope: !4439)
!4463 = !DILocation(line: 188, column: 17, scope: !4439)
!4464 = !DILocation(line: 190, column: 2, scope: !4465)
!4465 = distinct !DILexicalBlock(scope: !4466, file: !60, line: 190, column: 2)
!4466 = distinct !DILexicalBlock(scope: !4439, file: !60, line: 190, column: 2)
!4467 = !DILocation(line: 190, column: 2, scope: !4466)
!4468 = !DILocation(line: 193, column: 23, scope: !4469)
!4469 = distinct !DILexicalBlock(scope: !4439, file: !60, line: 193, column: 6)
!4470 = !DILocation(line: 193, column: 7, scope: !4469)
!4471 = !DILocation(line: 193, column: 6, scope: !4439)
!4472 = !DILocation(line: 194, column: 3, scope: !4469)
!4473 = !DILocation(line: 196, column: 4, scope: !4439)
!4474 = !DILocation(line: 197, column: 2, scope: !4439)
!4475 = !DILocation(line: 197, column: 39, scope: !4439)
!4476 = !DILocation(line: 197, column: 42, scope: !4439)
!4477 = !DILocation(line: 197, column: 14, scope: !4439)
!4478 = !DILocation(line: 197, column: 12, scope: !4439)
!4479 = !DILocation(line: 198, column: 3, scope: !4480)
!4480 = distinct !DILexicalBlock(scope: !4481, file: !60, line: 198, column: 3)
!4481 = distinct !DILexicalBlock(scope: !4452, file: !60, line: 198, column: 3)
!4482 = !DILocation(line: 198, column: 3, scope: !4481)
!4483 = !DILocation(line: 206, column: 20, scope: !4451)
!4484 = !DILocation(line: 206, column: 7, scope: !4451)
!4485 = !DILocation(line: 206, column: 7, scope: !4452)
!4486 = !DILocation(line: 207, column: 26, scope: !4487)
!4487 = distinct !DILexicalBlock(scope: !4488, file: !60, line: 207, column: 8)
!4488 = distinct !DILexicalBlock(scope: !4451, file: !60, line: 206, column: 24)
!4489 = !DILocation(line: 207, column: 31, scope: !4487)
!4490 = !DILocation(line: 207, column: 34, scope: !4487)
!4491 = !DILocation(line: 207, column: 8, scope: !4487)
!4492 = !DILocation(line: 207, column: 8, scope: !4488)
!4493 = !DILocation(line: 208, column: 26, scope: !4494)
!4494 = distinct !DILexicalBlock(scope: !4487, file: !60, line: 207, column: 40)
!4495 = !DILocation(line: 208, column: 5, scope: !4494)
!4496 = !DILocation(line: 208, column: 14, scope: !4494)
!4497 = !DILocation(line: 208, column: 24, scope: !4494)
!4498 = !DILocation(line: 209, column: 10, scope: !4494)
!4499 = !DILocation(line: 209, column: 5, scope: !4494)
!4500 = !DILocation(line: 210, column: 5, scope: !4494)
!4501 = !DILocation(line: 212, column: 3, scope: !4488)
!4502 = !DILocation(line: 213, column: 4, scope: !4450)
!4503 = !DILocation(line: 213, column: 24, scope: !4450)
!4504 = !DILocation(line: 213, column: 48, scope: !4450)
!4505 = !DILocation(line: 213, column: 30, scope: !4450)
!4506 = !DILocation(line: 214, column: 4, scope: !4450)
!4507 = !DILocation(line: 214, column: 17, scope: !4450)
!4508 = !DILocation(line: 214, column: 29, scope: !4509)
!4509 = distinct !DILexicalBlock(scope: !4450, file: !60, line: 214, column: 29)
!4510 = !DILocation(line: 214, column: 29, scope: !4511)
!4511 = distinct !DILexicalBlock(scope: !4509, file: !60, line: 214, column: 29)
!4512 = !DILocation(line: 217, column: 8, scope: !4513)
!4513 = distinct !DILexicalBlock(scope: !4450, file: !60, line: 217, column: 8)
!4514 = !DILocation(line: 217, column: 13, scope: !4513)
!4515 = !DILocation(line: 217, column: 10, scope: !4513)
!4516 = !DILocation(line: 217, column: 8, scope: !4450)
!4517 = !DILocation(line: 218, column: 15, scope: !4513)
!4518 = !DILocation(line: 218, column: 5, scope: !4513)
!4519 = !DILocation(line: 220, column: 14, scope: !4513)
!4520 = !DILocation(line: 222, column: 16, scope: !4521)
!4521 = distinct !DILexicalBlock(scope: !4450, file: !60, line: 222, column: 8)
!4522 = !DILocation(line: 222, column: 8, scope: !4521)
!4523 = !DILocation(line: 222, column: 21, scope: !4521)
!4524 = !DILocation(line: 222, column: 19, scope: !4521)
!4525 = !DILocation(line: 222, column: 8, scope: !4450)
!4526 = !DILocation(line: 223, column: 26, scope: !4527)
!4527 = distinct !DILexicalBlock(scope: !4521, file: !60, line: 222, column: 32)
!4528 = !DILocation(line: 223, column: 5, scope: !4527)
!4529 = !DILocation(line: 223, column: 14, scope: !4527)
!4530 = !DILocation(line: 223, column: 24, scope: !4527)
!4531 = !DILocation(line: 224, column: 10, scope: !4527)
!4532 = !DILocation(line: 224, column: 5, scope: !4527)
!4533 = !DILocation(line: 225, column: 5, scope: !4527)
!4534 = !DILocation(line: 227, column: 3, scope: !4451)
!4535 = distinct !{!4535, !4474, !4536, !3597, !3598}
!4536 = !DILocation(line: 228, column: 2, scope: !4439)
!4537 = !DILocation(line: 231, column: 6, scope: !4538)
!4538 = distinct !DILexicalBlock(scope: !4439, file: !60, line: 231, column: 6)
!4539 = !DILocation(line: 231, column: 10, scope: !4538)
!4540 = !DILocation(line: 231, column: 6, scope: !4439)
!4541 = !DILocation(line: 232, column: 3, scope: !4538)
!4542 = !DILocation(line: 235, column: 25, scope: !4543)
!4543 = distinct !DILexicalBlock(scope: !4439, file: !60, line: 235, column: 6)
!4544 = !DILocation(line: 235, column: 30, scope: !4543)
!4545 = !DILocation(line: 235, column: 39, scope: !4543)
!4546 = !DILocation(line: 235, column: 7, scope: !4543)
!4547 = !DILocation(line: 235, column: 6, scope: !4439)
!4548 = !DILocation(line: 236, column: 3, scope: !4543)
!4549 = !DILocation(line: 238, column: 2, scope: !4439)
!4550 = !DILocation(line: 239, column: 1, scope: !4439)
!4551 = distinct !DISubprogram(name: "autofs_check_leaves", scope: !60, file: !60, line: 241, type: !4552, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !4554)
!4552 = !DISubroutineType(types: !4553)
!4553 = !{!519, !514, !519, !329, !10}
!4554 = !{!4555, !4556, !4557, !4558, !4559}
!4555 = !DILocalVariable(name: "mnt", arg: 1, scope: !4551, file: !60, line: 241, type: !514)
!4556 = !DILocalVariable(name: "parent", arg: 2, scope: !4551, file: !60, line: 242, type: !519)
!4557 = !DILocalVariable(name: "timeout", arg: 3, scope: !4551, file: !60, line: 243, type: !329)
!4558 = !DILocalVariable(name: "how", arg: 4, scope: !4551, file: !60, line: 244, type: !10)
!4559 = !DILocalVariable(name: "p", scope: !4551, file: !60, line: 246, type: !519)
!4560 = !DILocation(line: 241, column: 60, scope: !4551)
!4561 = !DILocation(line: 242, column: 23, scope: !4551)
!4562 = !DILocation(line: 243, column: 22, scope: !4551)
!4563 = !DILocation(line: 244, column: 21, scope: !4551)
!4564 = !DILocation(line: 246, column: 2, scope: !4551)
!4565 = !DILocation(line: 246, column: 17, scope: !4551)
!4566 = !DILocation(line: 248, column: 2, scope: !4567)
!4567 = distinct !DILexicalBlock(scope: !4568, file: !60, line: 248, column: 2)
!4568 = distinct !DILexicalBlock(scope: !4551, file: !60, line: 248, column: 2)
!4569 = !DILocation(line: 248, column: 2, scope: !4568)
!4570 = !DILocation(line: 250, column: 4, scope: !4551)
!4571 = !DILocation(line: 251, column: 2, scope: !4551)
!4572 = !DILocation(line: 251, column: 39, scope: !4551)
!4573 = !DILocation(line: 251, column: 42, scope: !4551)
!4574 = !DILocation(line: 251, column: 14, scope: !4551)
!4575 = !DILocation(line: 251, column: 12, scope: !4551)
!4576 = !DILocation(line: 252, column: 3, scope: !4577)
!4577 = distinct !DILexicalBlock(scope: !4578, file: !60, line: 252, column: 3)
!4578 = distinct !DILexicalBlock(scope: !4579, file: !60, line: 252, column: 3)
!4579 = distinct !DILexicalBlock(scope: !4551, file: !60, line: 251, column: 52)
!4580 = !DILocation(line: 252, column: 3, scope: !4578)
!4581 = !DILocation(line: 254, column: 20, scope: !4582)
!4582 = distinct !DILexicalBlock(scope: !4579, file: !60, line: 254, column: 7)
!4583 = !DILocation(line: 254, column: 7, scope: !4582)
!4584 = !DILocation(line: 254, column: 7, scope: !4579)
!4585 = !DILocation(line: 256, column: 26, scope: !4586)
!4586 = distinct !DILexicalBlock(scope: !4587, file: !60, line: 256, column: 8)
!4587 = distinct !DILexicalBlock(scope: !4582, file: !60, line: 254, column: 24)
!4588 = !DILocation(line: 256, column: 31, scope: !4586)
!4589 = !DILocation(line: 256, column: 34, scope: !4586)
!4590 = !DILocation(line: 256, column: 8, scope: !4586)
!4591 = !DILocation(line: 256, column: 8, scope: !4587)
!4592 = !DILocation(line: 257, column: 5, scope: !4586)
!4593 = distinct !{!4593, !4571, !4594, !3597, !3598}
!4594 = !DILocation(line: 269, column: 2, scope: !4551)
!4595 = !DILocation(line: 262, column: 8, scope: !4596)
!4596 = distinct !DILexicalBlock(scope: !4587, file: !60, line: 262, column: 8)
!4597 = !DILocation(line: 262, column: 12, scope: !4596)
!4598 = !DILocation(line: 262, column: 8, scope: !4587)
!4599 = !DILocation(line: 263, column: 12, scope: !4596)
!4600 = !DILocation(line: 263, column: 5, scope: !4596)
!4601 = !DILocation(line: 266, column: 26, scope: !4602)
!4602 = distinct !DILexicalBlock(scope: !4587, file: !60, line: 266, column: 8)
!4603 = !DILocation(line: 266, column: 29, scope: !4602)
!4604 = !DILocation(line: 266, column: 38, scope: !4602)
!4605 = !DILocation(line: 266, column: 8, scope: !4602)
!4606 = !DILocation(line: 266, column: 8, scope: !4587)
!4607 = !DILocation(line: 267, column: 12, scope: !4602)
!4608 = !DILocation(line: 267, column: 5, scope: !4602)
!4609 = !DILocation(line: 268, column: 3, scope: !4587)
!4610 = !DILocation(line: 270, column: 2, scope: !4551)
!4611 = !DILocation(line: 271, column: 1, scope: !4551)
!4612 = !DISubprogram(name: "path_get", scope: !511, file: !511, line: 13, type: !4613, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4613 = !DISubroutineType(types: !4614)
!4614 = !{null, !681}
!4615 = !DISubprogram(name: "follow_down_one", scope: !4616, file: !4616, line: 87, type: !4617, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4616 = !DIFile(filename: "./include/linux/namei.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "661c5a60bb5f888b1125c4324650f35a")
!4617 = !DISubroutineType(types: !4618)
!4618 = !{!34, !2864}
!4619 = !DISubprogram(name: "is_autofs_dentry", scope: !128, file: !128, line: 158, type: !2845, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4620 = distinct !DISubprogram(name: "autofs_type_indirect", scope: !107, file: !107, line: 108, type: !3793, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !4621)
!4621 = !{!4622}
!4622 = !DILocalVariable(name: "type", arg: 1, scope: !4620, file: !107, line: 108, type: !10)
!4623 = !DILocation(line: 108, column: 62, scope: !4620)
!4624 = !DILocation(line: 110, column: 10, scope: !4620)
!4625 = !DILocation(line: 110, column: 15, scope: !4620)
!4626 = !DILocation(line: 110, column: 2, scope: !4620)
!4627 = !DISubprogram(name: "may_umount_tree", scope: !516, file: !516, line: 116, type: !4628, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4628 = !DISubroutineType(types: !4629)
!4629 = !{!34, !514}
!4630 = !DISubprogram(name: "path_put", scope: !511, file: !511, line: 14, type: !4613, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4631 = distinct !DISubprogram(name: "__d_entry_type", scope: !113, file: !113, line: 383, type: !4430, scopeLine: 384, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !4632)
!4632 = !{!4633}
!4633 = !DILocalVariable(name: "dentry", arg: 1, scope: !4631, file: !113, line: 383, type: !2830)
!4634 = !DILocation(line: 383, column: 60, scope: !4631)
!4635 = !DILocation(line: 385, column: 9, scope: !4631)
!4636 = !DILocation(line: 385, column: 17, scope: !4631)
!4637 = !DILocation(line: 385, column: 25, scope: !4631)
!4638 = !DILocation(line: 385, column: 2, scope: !4631)
!4639 = distinct !DISubprogram(name: "get_next_positive_dentry", scope: !60, file: !60, line: 115, type: !3973, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !4640)
!4640 = !{!4641, !4642, !4643, !4644, !4645, !4646, !4647}
!4641 = !DILocalVariable(name: "prev", arg: 1, scope: !4639, file: !60, line: 115, type: !519)
!4642 = !DILocalVariable(name: "root", arg: 2, scope: !4639, file: !60, line: 116, type: !519)
!4643 = !DILocalVariable(name: "sbi", scope: !4639, file: !60, line: 118, type: !126)
!4644 = !DILocalVariable(name: "p", scope: !4639, file: !60, line: 119, type: !519)
!4645 = !DILocalVariable(name: "ret", scope: !4639, file: !60, line: 119, type: !519)
!4646 = !DILocalVariable(name: "d", scope: !4639, file: !60, line: 119, type: !519)
!4647 = !DILocalVariable(name: "parent", scope: !4648, file: !60, line: 127, type: !519)
!4648 = distinct !DILexicalBlock(scope: !4639, file: !60, line: 126, column: 12)
!4649 = !DILocation(line: 115, column: 63, scope: !4639)
!4650 = !DILocation(line: 116, column: 28, scope: !4639)
!4651 = !DILocation(line: 118, column: 2, scope: !4639)
!4652 = !DILocation(line: 118, column: 25, scope: !4639)
!4653 = !DILocation(line: 118, column: 42, scope: !4639)
!4654 = !DILocation(line: 118, column: 48, scope: !4639)
!4655 = !DILocation(line: 118, column: 31, scope: !4639)
!4656 = !DILocation(line: 119, column: 2, scope: !4639)
!4657 = !DILocation(line: 119, column: 17, scope: !4639)
!4658 = !DILocation(line: 119, column: 21, scope: !4639)
!4659 = !DILocation(line: 119, column: 28, scope: !4639)
!4660 = !DILocation(line: 119, column: 41, scope: !4639)
!4661 = !DILocation(line: 121, column: 6, scope: !4662)
!4662 = distinct !DILexicalBlock(scope: !4639, file: !60, line: 121, column: 6)
!4663 = !DILocation(line: 121, column: 11, scope: !4662)
!4664 = !DILocation(line: 121, column: 6, scope: !4639)
!4665 = !DILocation(line: 122, column: 15, scope: !4662)
!4666 = !DILocation(line: 122, column: 10, scope: !4662)
!4667 = !DILocation(line: 122, column: 3, scope: !4662)
!4668 = !DILocation(line: 124, column: 13, scope: !4639)
!4669 = !DILocation(line: 124, column: 18, scope: !4639)
!4670 = !DILocation(line: 124, column: 2, scope: !4639)
!4671 = !DILocation(line: 125, column: 13, scope: !4639)
!4672 = !DILocation(line: 125, column: 16, scope: !4639)
!4673 = !DILocation(line: 125, column: 2, scope: !4639)
!4674 = !DILocation(line: 126, column: 2, scope: !4639)
!4675 = !DILocation(line: 127, column: 3, scope: !4648)
!4676 = !DILocation(line: 127, column: 18, scope: !4648)
!4677 = !DILocation(line: 129, column: 24, scope: !4648)
!4678 = !DILocation(line: 129, column: 27, scope: !4648)
!4679 = !DILocation(line: 129, column: 9, scope: !4648)
!4680 = !DILocation(line: 129, column: 7, scope: !4648)
!4681 = !DILocation(line: 130, column: 7, scope: !4682)
!4682 = distinct !DILexicalBlock(scope: !4648, file: !60, line: 130, column: 7)
!4683 = !DILocation(line: 130, column: 11, scope: !4682)
!4684 = !DILocation(line: 130, column: 14, scope: !4682)
!4685 = !DILocation(line: 130, column: 19, scope: !4682)
!4686 = !DILocation(line: 130, column: 16, scope: !4682)
!4687 = !DILocation(line: 130, column: 7, scope: !4648)
!4688 = !DILocation(line: 131, column: 4, scope: !4682)
!4689 = !DILocation(line: 132, column: 12, scope: !4648)
!4690 = !DILocation(line: 132, column: 15, scope: !4648)
!4691 = !DILocation(line: 132, column: 10, scope: !4648)
!4692 = !DILocation(line: 133, column: 16, scope: !4648)
!4693 = !DILocation(line: 133, column: 19, scope: !4648)
!4694 = !DILocation(line: 133, column: 3, scope: !4648)
!4695 = !DILocation(line: 134, column: 14, scope: !4648)
!4696 = !DILocation(line: 134, column: 22, scope: !4648)
!4697 = !DILocation(line: 134, column: 3, scope: !4648)
!4698 = !DILocation(line: 135, column: 7, scope: !4648)
!4699 = !DILocation(line: 135, column: 5, scope: !4648)
!4700 = !DILocation(line: 136, column: 7, scope: !4648)
!4701 = !DILocation(line: 136, column: 5, scope: !4648)
!4702 = !DILocation(line: 137, column: 2, scope: !4639)
!4703 = distinct !{!4703, !4674, !4702, !3598}
!4704 = !DILocation(line: 138, column: 15, scope: !4639)
!4705 = !DILocation(line: 138, column: 18, scope: !4639)
!4706 = !DILocation(line: 138, column: 2, scope: !4639)
!4707 = !DILocation(line: 139, column: 15, scope: !4639)
!4708 = !DILocation(line: 139, column: 20, scope: !4639)
!4709 = !DILocation(line: 139, column: 2, scope: !4639)
!4710 = !DILocation(line: 140, column: 7, scope: !4639)
!4711 = !DILocation(line: 140, column: 2, scope: !4639)
!4712 = !DILocation(line: 141, column: 9, scope: !4639)
!4713 = !DILocation(line: 141, column: 2, scope: !4639)
!4714 = !DILocation(line: 142, column: 1, scope: !4639)
!4715 = distinct !DISubprogram(name: "dget", scope: !113, file: !113, line: 317, type: !4259, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !4716)
!4716 = !{!4717}
!4717 = !DILocalVariable(name: "dentry", arg: 1, scope: !4715, file: !113, line: 317, type: !519)
!4718 = !DILocation(line: 317, column: 50, scope: !4715)
!4719 = !DILocation(line: 319, column: 6, scope: !4720)
!4720 = distinct !DILexicalBlock(scope: !4715, file: !113, line: 319, column: 6)
!4721 = !DILocation(line: 319, column: 6, scope: !4715)
!4722 = !DILocation(line: 320, column: 16, scope: !4720)
!4723 = !DILocation(line: 320, column: 24, scope: !4720)
!4724 = !DILocation(line: 320, column: 3, scope: !4720)
!4725 = !DILocation(line: 321, column: 9, scope: !4715)
!4726 = !DILocation(line: 321, column: 2, scope: !4715)
!4727 = !DISubprogram(name: "lockref_get", scope: !3169, file: !3169, line: 37, type: !4728, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4728 = !DISubroutineType(types: !4729)
!4729 = !{null, !4730}
!4730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!4731 = !DISubprogram(name: "__init_swait_queue_head", scope: !13, file: !13, line: 69, type: !4732, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4732 = !DISubroutineType(types: !4733)
!4733 = !{null, !4734, !398, !4735}
!4734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!4735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!4736 = distinct !DISubprogram(name: "check_copy_size", scope: !3271, file: !3271, line: 237, type: !4737, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !4739)
!4737 = !DISubroutineType(types: !4738)
!4738 = !{!395, !3691, !715, !395}
!4739 = !{!4740, !4741, !4742, !4743, !4744, !4747}
!4740 = !DILocalVariable(name: "addr", arg: 1, scope: !4736, file: !3271, line: 237, type: !3691)
!4741 = !DILocalVariable(name: "bytes", arg: 2, scope: !4736, file: !3271, line: 237, type: !715)
!4742 = !DILocalVariable(name: "is_source", arg: 3, scope: !4736, file: !3271, line: 237, type: !395)
!4743 = !DILocalVariable(name: "sz", scope: !4736, file: !3271, line: 239, type: !34)
!4744 = !DILocalVariable(name: "__ret_warn_on", scope: !4745, file: !3271, line: 249, type: !34)
!4745 = distinct !DILexicalBlock(scope: !4746, file: !3271, line: 249, column: 6)
!4746 = distinct !DILexicalBlock(scope: !4736, file: !3271, line: 249, column: 6)
!4747 = !DILocalVariable(name: "__flags", scope: !4748, file: !3271, line: 249, type: !34)
!4748 = distinct !DILexicalBlock(scope: !4749, file: !3271, line: 249, column: 6)
!4749 = distinct !DILexicalBlock(scope: !4745, file: !3271, line: 249, column: 6)
!4750 = !DILocation(line: 237, column: 29, scope: !4736)
!4751 = !DILocation(line: 237, column: 42, scope: !4736)
!4752 = !DILocation(line: 237, column: 54, scope: !4736)
!4753 = !DILocation(line: 239, column: 2, scope: !4736)
!4754 = !DILocation(line: 239, column: 6, scope: !4736)
!4755 = !DILocation(line: 239, column: 33, scope: !4736)
!4756 = !DILocation(line: 239, column: 11, scope: !4736)
!4757 = !DILocation(line: 240, column: 6, scope: !4758)
!4758 = distinct !DILexicalBlock(scope: !4736, file: !3271, line: 240, column: 6)
!4759 = !DILocation(line: 0, scope: !4758)
!4760 = !DILocation(line: 240, column: 6, scope: !4736)
!4761 = !DILocation(line: 241, column: 29, scope: !4762)
!4762 = distinct !DILexicalBlock(scope: !4763, file: !3271, line: 241, column: 7)
!4763 = distinct !DILexicalBlock(scope: !4758, file: !3271, line: 240, column: 39)
!4764 = !DILocation(line: 241, column: 8, scope: !4762)
!4765 = !DILocation(line: 241, column: 7, scope: !4763)
!4766 = !DILocation(line: 242, column: 18, scope: !4762)
!4767 = !DILocation(line: 242, column: 22, scope: !4762)
!4768 = !DILocation(line: 242, column: 4, scope: !4762)
!4769 = !DILocation(line: 243, column: 12, scope: !4770)
!4770 = distinct !DILexicalBlock(scope: !4762, file: !3271, line: 243, column: 12)
!4771 = !{i8 0, i8 2}
!4772 = !DILocation(line: 243, column: 12, scope: !4762)
!4773 = !DILocation(line: 244, column: 4, scope: !4770)
!4774 = !{i32 979683}
!4775 = !DILocation(line: 246, column: 4, scope: !4770)
!4776 = !{i32 979712}
!4777 = !DILocation(line: 247, column: 3, scope: !4763)
!4778 = !DILocation(line: 249, column: 6, scope: !4745)
!4779 = !DILocation(line: 249, column: 6, scope: !4749)
!4780 = !DILocation(line: 249, column: 6, scope: !4748)
!4781 = !DILocation(line: 249, column: 6, scope: !4782)
!4782 = distinct !DILexicalBlock(scope: !4748, file: !3271, line: 249, column: 6)
!4783 = !DILocation(line: 249, column: 6, scope: !4784)
!4784 = distinct !DILexicalBlock(scope: !4748, file: !3271, line: 249, column: 6)
!4785 = !{i64 2149631954, i64 2149631983, i64 2149632029, i64 2149632087, i64 2149632141, i64 2149632195, i64 2149632250, i64 2149632281, i64 2149632589, i64 2149632595, i64 2149632642, i64 2149632665, i64 2149632691}
!4786 = !DILocation(line: 249, column: 6, scope: !4787)
!4787 = distinct !DILexicalBlock(scope: !4748, file: !3271, line: 249, column: 6)
!4788 = !DILocation(line: 249, column: 6, scope: !4746)
!4789 = !DILocation(line: 249, column: 6, scope: !4736)
!4790 = !DILocation(line: 250, column: 3, scope: !4746)
!4791 = !DILocation(line: 251, column: 20, scope: !4736)
!4792 = !DILocation(line: 251, column: 26, scope: !4736)
!4793 = !DILocation(line: 251, column: 33, scope: !4736)
!4794 = !DILocation(line: 251, column: 2, scope: !4736)
!4795 = !DILocation(line: 252, column: 2, scope: !4736)
!4796 = !DILocation(line: 253, column: 1, scope: !4736)
!4797 = !DISubprogram(name: "_copy_to_user", scope: !3688, file: !3688, line: 176, type: !3689, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4798 = distinct !DISubprogram(name: "copy_overflow", scope: !3271, file: !3271, line: 230, type: !4799, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !4801)
!4799 = !DISubroutineType(types: !4800)
!4800 = !{null, !34, !329}
!4801 = !{!4802, !4803}
!4802 = !DILocalVariable(name: "size", arg: 1, scope: !4798, file: !3271, line: 230, type: !34)
!4803 = !DILocalVariable(name: "count", arg: 2, scope: !4798, file: !3271, line: 230, type: !329)
!4804 = !DILocation(line: 230, column: 38, scope: !4798)
!4805 = !DILocation(line: 230, column: 58, scope: !4798)
!4806 = !DILocation(line: 233, column: 19, scope: !4807)
!4807 = distinct !DILexicalBlock(scope: !4798, file: !3271, line: 232, column: 6)
!4808 = !DILocation(line: 233, column: 25, scope: !4807)
!4809 = !DILocation(line: 233, column: 3, scope: !4807)
!4810 = !DILocation(line: 234, column: 1, scope: !4798)
!4811 = !DISubprogram(name: "__bad_copy_from", scope: !3271, file: !3271, line: 224, type: !1950, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4812 = !DISubprogram(name: "__bad_copy_to", scope: !3271, file: !3271, line: 226, type: !1950, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4813 = distinct !DISubprogram(name: "check_object_size", scope: !3271, file: !3271, line: 218, type: !4814, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !4816)
!4814 = !DISubroutineType(types: !4815)
!4815 = !{null, !3691, !329, !395}
!4816 = !{!4817, !4818, !4819}
!4817 = !DILocalVariable(name: "ptr", arg: 1, scope: !4813, file: !3271, line: 218, type: !3691)
!4818 = !DILocalVariable(name: "n", arg: 2, scope: !4813, file: !3271, line: 218, type: !329)
!4819 = !DILocalVariable(name: "to_user", arg: 3, scope: !4813, file: !3271, line: 219, type: !395)
!4820 = !DILocation(line: 218, column: 50, scope: !4813)
!4821 = !DILocation(line: 218, column: 69, scope: !4813)
!4822 = !DILocation(line: 219, column: 15, scope: !4813)
!4823 = !DILocation(line: 220, column: 3, scope: !4813)
!4824 = !DISubprogram(name: "__copy_overflow", scope: !3271, file: !3271, line: 228, type: !4799, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4825 = distinct !DISubprogram(name: "autofs_direct_busy", scope: !60, file: !60, line: 150, type: !4440, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !4826)
!4826 = !{!4827, !4828, !4829, !4830, !4831}
!4827 = !DILocalVariable(name: "mnt", arg: 1, scope: !4825, file: !60, line: 150, type: !514)
!4828 = !DILocalVariable(name: "top", arg: 2, scope: !4825, file: !60, line: 151, type: !519)
!4829 = !DILocalVariable(name: "timeout", arg: 3, scope: !4825, file: !60, line: 152, type: !329)
!4830 = !DILocalVariable(name: "how", arg: 4, scope: !4825, file: !60, line: 153, type: !10)
!4831 = !DILocalVariable(name: "ino", scope: !4832, file: !60, line: 163, type: !3246)
!4832 = distinct !DILexicalBlock(scope: !4833, file: !60, line: 162, column: 29)
!4833 = distinct !DILexicalBlock(scope: !4825, file: !60, line: 162, column: 6)
!4834 = !DILocation(line: 150, column: 48, scope: !4825)
!4835 = !DILocation(line: 151, column: 25, scope: !4825)
!4836 = !DILocation(line: 152, column: 24, scope: !4825)
!4837 = !DILocation(line: 153, column: 23, scope: !4825)
!4838 = !DILocation(line: 155, column: 2, scope: !4839)
!4839 = distinct !DILexicalBlock(scope: !4840, file: !60, line: 155, column: 2)
!4840 = distinct !DILexicalBlock(scope: !4825, file: !60, line: 155, column: 2)
!4841 = !DILocation(line: 155, column: 2, scope: !4840)
!4842 = !DILocation(line: 158, column: 6, scope: !4843)
!4843 = distinct !DILexicalBlock(scope: !4825, file: !60, line: 158, column: 6)
!4844 = !DILocation(line: 158, column: 10, scope: !4843)
!4845 = !DILocation(line: 158, column: 6, scope: !4825)
!4846 = !DILocation(line: 159, column: 3, scope: !4843)
!4847 = !DILocation(line: 162, column: 23, scope: !4833)
!4848 = !DILocation(line: 162, column: 7, scope: !4833)
!4849 = !DILocation(line: 162, column: 6, scope: !4825)
!4850 = !DILocation(line: 163, column: 3, scope: !4832)
!4851 = !DILocation(line: 163, column: 23, scope: !4832)
!4852 = !DILocation(line: 165, column: 27, scope: !4832)
!4853 = !DILocation(line: 165, column: 9, scope: !4832)
!4854 = !DILocation(line: 165, column: 7, scope: !4832)
!4855 = !DILocation(line: 166, column: 7, scope: !4856)
!4856 = distinct !DILexicalBlock(scope: !4832, file: !60, line: 166, column: 7)
!4857 = !DILocation(line: 166, column: 7, scope: !4832)
!4858 = !DILocation(line: 167, column: 21, scope: !4856)
!4859 = !DILocation(line: 167, column: 4, scope: !4856)
!4860 = !DILocation(line: 167, column: 9, scope: !4856)
!4861 = !DILocation(line: 167, column: 19, scope: !4856)
!4862 = !DILocation(line: 168, column: 3, scope: !4832)
!4863 = !DILocation(line: 169, column: 2, scope: !4833)
!4864 = !DILocation(line: 172, column: 25, scope: !4865)
!4865 = distinct !DILexicalBlock(scope: !4825, file: !60, line: 172, column: 6)
!4866 = !DILocation(line: 172, column: 30, scope: !4865)
!4867 = !DILocation(line: 172, column: 39, scope: !4865)
!4868 = !DILocation(line: 172, column: 7, scope: !4865)
!4869 = !DILocation(line: 172, column: 6, scope: !4825)
!4870 = !DILocation(line: 173, column: 3, scope: !4865)
!4871 = !DILocation(line: 175, column: 2, scope: !4825)
!4872 = !DILocation(line: 176, column: 1, scope: !4825)
