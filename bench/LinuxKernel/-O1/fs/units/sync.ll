; ModuleID = 'fs/sync.c'
source_filename = "fs/sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_sync_filesystem: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad sync_filesystem ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_vfs_fsync_range: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad vfs_fsync_range ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_vfs_fsync: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad vfs_fsync ; .previous"

%struct.lock_class_key = type {}
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
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %union.anon.19, i64, i64, %union.anon.20 }
%union.anon.19 = type { i64 }
%union.anon.20 = type { i64 }
%struct.file = type { %union.anon.21, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.21 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.22, %struct.qspinlock }
%union.anon.22 = type { %struct.atomic_t }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.path = type { ptr, ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.24, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.25, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.26, ptr, %struct.address_space, %struct.list_head, %union.anon.27, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.24 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.25 = type { %struct.callback_head }
%union.anon.26 = type { ptr }
%union.anon.27 = type { ptr }
%struct.fd = type { ptr, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [32 x i8], %struct.lockref, ptr, ptr, i64, ptr, %union.anon.32, %struct.list_head, %struct.list_head, %union.anon.33 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.28, ptr }
%union.anon.28 = type { i64 }
%struct.lockref = type { %union.anon.30 }
%union.anon.30 = type { i64 }
%union.anon.32 = type { %struct.list_head }
%union.anon.33 = type { %struct.hlist_node }

@.str = private unnamed_addr constant [10 x i8] c"fs/sync.c\00", align 1, !dbg !0
@__UNIQUE_ID___addressable_sync_filesystem370 = internal global ptr @sync_filesystem, section ".discard.addressable", align 8, !dbg !7
@laptop_mode = external dso_local global i32, align 4
@emergency_sync.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !6421
@__UNIQUE_ID___addressable_vfs_fsync_range371 = internal global ptr @vfs_fsync_range, section ".discard.addressable", align 8, !dbg !6426
@__UNIQUE_ID___addressable_vfs_fsync372 = internal global ptr @vfs_fsync, section ".discard.addressable", align 8, !dbg !6428
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !6430
@.str.2 = private unnamed_addr constant [25 x i8] c"Emergency Sync complete\0A\00", align 1, !dbg !6435
@system_wq = external dso_local global ptr, align 8
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID___addressable_sync_filesystem370, ptr @__UNIQUE_ID___addressable_vfs_fsync_range371, ptr @__UNIQUE_ID___addressable_vfs_fsync372], section "llvm.metadata"

@__x64_sys_sync = hidden alias i64 (ptr), ptr @__do_sys_sync
@__ia32_sys_sync = hidden alias i64 (ptr), ptr @__do_sys_sync

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @sync_filesystem(ptr noundef %sb) #0 align 16 !dbg !6449 {
entry:
  %retval = alloca i32, align 4
  %sb.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !6451, metadata !DIExpression()), !dbg !6458
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !6459
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6452, metadata !DIExpression()), !dbg !6460
  store i32 0, ptr %ret, align 4, !dbg !6460
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !6461
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6453, metadata !DIExpression()), !dbg !6461
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !6461
  %s_umount = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 14, !dbg !6461
  %call = call i32 @rwsem_is_locked(ptr noundef %s_umount) #15, !dbg !6461
  %tobool = icmp ne i32 %call, 0, !dbg !6461
  %lnot = xor i1 %tobool, true, !dbg !6461
  %lnot1 = xor i1 %lnot, true, !dbg !6461
  %lnot2 = xor i1 %lnot1, true, !dbg !6461
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !6461
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6461
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !6462
  %tobool3 = icmp ne i32 %1, 0, !dbg !6462
  %lnot4 = xor i1 %tobool3, true, !dbg !6462
  %lnot6 = xor i1 %lnot4, true, !dbg !6462
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !6462
  %conv = sext i32 %lnot.ext7 to i64, !dbg !6462
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6462
  %tobool8 = icmp ne i64 %expval, 0, !dbg !6462
  br i1 %tobool8, label %if.then, label %if.end, !dbg !6461

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6462

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !6463
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6455, metadata !DIExpression()), !dbg !6463
  store i32 2305, ptr %__flags, align 4, !dbg !6463
  br label %do.body9, !dbg !6463

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !6464

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !6464

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !6463

do.body10:                                        ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !6466
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 38, i32 %2, i64 12) #14, !dbg !6466, !srcloc !6468
  br label %do.cond11, !dbg !6466

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !6466

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !6463

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !6469

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !6469

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !6462
  br label %do.cond16, !dbg !6463

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !6463

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !6463

if.end:                                           ; preds = %do.end17, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !6461
  %tobool18 = icmp ne i32 %3, 0, !dbg !6461
  %lnot19 = xor i1 %tobool18, true, !dbg !6461
  %lnot21 = xor i1 %lnot19, true, !dbg !6461
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !6461
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !6461
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !6461
  store i64 %expval24, ptr %tmp, align 8, !dbg !6462
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !6471
  %4 = load i64, ptr %tmp, align 8, !dbg !6461
  %5 = load ptr, ptr %sb.addr, align 8, !dbg !6472
  %call25 = call zeroext i1 @sb_rdonly(ptr noundef %5) #15, !dbg !6474
  br i1 %call25, label %if.then26, label %if.end27, !dbg !6475

if.then26:                                        ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !6476
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6476

if.end27:                                         ; preds = %if.end
  %6 = load ptr, ptr %sb.addr, align 8, !dbg !6477
  call void @writeback_inodes_sb(ptr noundef %6, i32 noundef 2) #15, !dbg !6478
  %7 = load ptr, ptr %sb.addr, align 8, !dbg !6479
  %s_op = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 6, !dbg !6481
  %8 = load ptr, ptr %s_op, align 16, !dbg !6481
  %sync_fs = getelementptr inbounds %struct.super_operations, ptr %8, i32 0, i32 8, !dbg !6482
  %9 = load ptr, ptr %sync_fs, align 8, !dbg !6482
  %tobool28 = icmp ne ptr %9, null, !dbg !6479
  br i1 %tobool28, label %if.then29, label %if.end36, !dbg !6483

if.then29:                                        ; preds = %if.end27
  %10 = load ptr, ptr %sb.addr, align 8, !dbg !6484
  %s_op30 = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 6, !dbg !6486
  %11 = load ptr, ptr %s_op30, align 16, !dbg !6486
  %sync_fs31 = getelementptr inbounds %struct.super_operations, ptr %11, i32 0, i32 8, !dbg !6487
  %12 = load ptr, ptr %sync_fs31, align 8, !dbg !6487
  %13 = load ptr, ptr %sb.addr, align 8, !dbg !6488
  %call32 = call i32 %12(ptr noundef %13, i32 noundef 0) #15, !dbg !6484
  store i32 %call32, ptr %ret, align 4, !dbg !6489
  %14 = load i32, ptr %ret, align 4, !dbg !6490
  %tobool33 = icmp ne i32 %14, 0, !dbg !6490
  br i1 %tobool33, label %if.then34, label %if.end35, !dbg !6492

if.then34:                                        ; preds = %if.then29
  %15 = load i32, ptr %ret, align 4, !dbg !6493
  store i32 %15, ptr %retval, align 4, !dbg !6494
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6494

if.end35:                                         ; preds = %if.then29
  br label %if.end36, !dbg !6495

if.end36:                                         ; preds = %if.end35, %if.end27
  %16 = load ptr, ptr %sb.addr, align 8, !dbg !6496
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 21, !dbg !6497
  %17 = load ptr, ptr %s_bdev, align 8, !dbg !6497
  %call37 = call i32 @sync_blockdev_nowait(ptr noundef %17) #15, !dbg !6498
  store i32 %call37, ptr %ret, align 4, !dbg !6499
  %18 = load i32, ptr %ret, align 4, !dbg !6500
  %tobool38 = icmp ne i32 %18, 0, !dbg !6500
  br i1 %tobool38, label %if.then39, label %if.end40, !dbg !6502

if.then39:                                        ; preds = %if.end36
  %19 = load i32, ptr %ret, align 4, !dbg !6503
  store i32 %19, ptr %retval, align 4, !dbg !6504
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6504

if.end40:                                         ; preds = %if.end36
  %20 = load ptr, ptr %sb.addr, align 8, !dbg !6505
  call void @sync_inodes_sb(ptr noundef %20) #15, !dbg !6506
  %21 = load ptr, ptr %sb.addr, align 8, !dbg !6507
  %s_op41 = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 6, !dbg !6509
  %22 = load ptr, ptr %s_op41, align 16, !dbg !6509
  %sync_fs42 = getelementptr inbounds %struct.super_operations, ptr %22, i32 0, i32 8, !dbg !6510
  %23 = load ptr, ptr %sync_fs42, align 8, !dbg !6510
  %tobool43 = icmp ne ptr %23, null, !dbg !6507
  br i1 %tobool43, label %if.then44, label %if.end51, !dbg !6511

if.then44:                                        ; preds = %if.end40
  %24 = load ptr, ptr %sb.addr, align 8, !dbg !6512
  %s_op45 = getelementptr inbounds %struct.super_block, ptr %24, i32 0, i32 6, !dbg !6514
  %25 = load ptr, ptr %s_op45, align 16, !dbg !6514
  %sync_fs46 = getelementptr inbounds %struct.super_operations, ptr %25, i32 0, i32 8, !dbg !6515
  %26 = load ptr, ptr %sync_fs46, align 8, !dbg !6515
  %27 = load ptr, ptr %sb.addr, align 8, !dbg !6516
  %call47 = call i32 %26(ptr noundef %27, i32 noundef 1) #15, !dbg !6512
  store i32 %call47, ptr %ret, align 4, !dbg !6517
  %28 = load i32, ptr %ret, align 4, !dbg !6518
  %tobool48 = icmp ne i32 %28, 0, !dbg !6518
  br i1 %tobool48, label %if.then49, label %if.end50, !dbg !6520

if.then49:                                        ; preds = %if.then44
  %29 = load i32, ptr %ret, align 4, !dbg !6521
  store i32 %29, ptr %retval, align 4, !dbg !6522
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6522

if.end50:                                         ; preds = %if.then44
  br label %if.end51, !dbg !6523

if.end51:                                         ; preds = %if.end50, %if.end40
  %30 = load ptr, ptr %sb.addr, align 8, !dbg !6524
  %s_bdev52 = getelementptr inbounds %struct.super_block, ptr %30, i32 0, i32 21, !dbg !6525
  %31 = load ptr, ptr %s_bdev52, align 8, !dbg !6525
  %call53 = call i32 @sync_blockdev(ptr noundef %31) #15, !dbg !6526
  store i32 %call53, ptr %retval, align 4, !dbg !6527
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6527

cleanup:                                          ; preds = %if.end51, %if.then49, %if.then39, %if.then34, %if.then26
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !6528
  %32 = load i32, ptr %retval, align 4, !dbg !6528
  ret i32 %32, !dbg !6528
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rwsem_is_locked(ptr noundef %sem) #3 align 16 !dbg !6529 {
entry:
  %sem.addr = alloca ptr, align 8
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !6534, metadata !DIExpression()), !dbg !6535
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !6536
  %count = getelementptr inbounds %struct.rw_semaphore, ptr %0, i32 0, i32 0, !dbg !6537
  %call = call i64 @atomic_long_read(ptr noundef %count) #15, !dbg !6538
  %cmp = icmp ne i64 %call, 0, !dbg !6539
  %conv = zext i1 %cmp to i32, !dbg !6539
  ret i32 %conv, !dbg !6540
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @sb_rdonly(ptr noundef %sb) #3 align 16 !dbg !6541 {
entry:
  %sb.addr = alloca ptr, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !6547, metadata !DIExpression()), !dbg !6548
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !6549
  %s_flags = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 10, !dbg !6550
  %1 = load i64, ptr %s_flags, align 16, !dbg !6550
  %and = and i64 %1, 1, !dbg !6551
  %tobool = icmp ne i64 %and, 0, !dbg !6549
  ret i1 %tobool, !dbg !6552
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6553 dso_local void @writeback_inodes_sb(ptr noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6556 dso_local i32 @sync_blockdev_nowait(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6559 dso_local void @sync_inodes_sb(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6560 dso_local i32 @sync_blockdev(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ksys_sync() #0 align 16 !dbg !6561 {
entry:
  %nowait = alloca i32, align 4
  %wait = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nowait) #14, !dbg !6565
  call void @llvm.dbg.declare(metadata ptr %nowait, metadata !6563, metadata !DIExpression()), !dbg !6566
  store i32 0, ptr %nowait, align 4, !dbg !6566
  call void @llvm.lifetime.start.p0(i64 4, ptr %wait) #14, !dbg !6565
  call void @llvm.dbg.declare(metadata ptr %wait, metadata !6564, metadata !DIExpression()), !dbg !6567
  store i32 1, ptr %wait, align 4, !dbg !6567
  call void @wakeup_flusher_threads(i32 noundef 2) #15, !dbg !6568
  call void @iterate_supers(ptr noundef @sync_inodes_one_sb, ptr noundef null) #15, !dbg !6569
  call void @iterate_supers(ptr noundef @sync_fs_one_sb, ptr noundef %nowait) #15, !dbg !6570
  call void @iterate_supers(ptr noundef @sync_fs_one_sb, ptr noundef %wait) #15, !dbg !6571
  call void @sync_bdevs(i1 noundef zeroext false) #15, !dbg !6572
  call void @sync_bdevs(i1 noundef zeroext true) #15, !dbg !6573
  %0 = load i32, ptr @laptop_mode, align 4, !dbg !6574
  %tobool = icmp ne i32 %0, 0, !dbg !6574
  %lnot = xor i1 %tobool, true, !dbg !6574
  %lnot1 = xor i1 %lnot, true, !dbg !6574
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6574
  %conv = sext i32 %lnot.ext to i64, !dbg !6574
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6574
  %tobool2 = icmp ne i64 %expval, 0, !dbg !6574
  br i1 %tobool2, label %if.then, label %if.end, !dbg !6576

if.then:                                          ; preds = %entry
  call void @laptop_sync_completion() #15, !dbg !6577
  br label %if.end, !dbg !6577

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr %wait) #14, !dbg !6578
  call void @llvm.lifetime.end.p0(i64 4, ptr %nowait) #14, !dbg !6578
  ret void, !dbg !6578
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6579 dso_local void @wakeup_flusher_threads(i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6582 dso_local void @iterate_supers(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @sync_inodes_one_sb(ptr noundef %sb, ptr noundef %arg) #0 align 16 !dbg !6588 {
entry:
  %sb.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !6590, metadata !DIExpression()), !dbg !6592
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !6591, metadata !DIExpression()), !dbg !6593
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !6594
  %call = call zeroext i1 @sb_rdonly(ptr noundef %0) #15, !dbg !6596
  br i1 %call, label %if.end, label %if.then, !dbg !6597

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %sb.addr, align 8, !dbg !6598
  call void @sync_inodes_sb(ptr noundef %1) #15, !dbg !6599
  br label %if.end, !dbg !6599

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6600
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @sync_fs_one_sb(ptr noundef %sb, ptr noundef %arg) #0 align 16 !dbg !6601 {
entry:
  %sb.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !6603, metadata !DIExpression()), !dbg !6605
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !6604, metadata !DIExpression()), !dbg !6606
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !6607
  %call = call zeroext i1 @sb_rdonly(ptr noundef %0) #15, !dbg !6609
  br i1 %call, label %if.end, label %land.lhs.true, !dbg !6610

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %sb.addr, align 8, !dbg !6611
  %s_iflags = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 11, !dbg !6612
  %2 = load i64, ptr %s_iflags, align 8, !dbg !6612
  %and = and i64 %2, 256, !dbg !6613
  %tobool = icmp ne i64 %and, 0, !dbg !6613
  br i1 %tobool, label %if.end, label %land.lhs.true1, !dbg !6614

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load ptr, ptr %sb.addr, align 8, !dbg !6615
  %s_op = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 6, !dbg !6616
  %4 = load ptr, ptr %s_op, align 16, !dbg !6616
  %sync_fs = getelementptr inbounds %struct.super_operations, ptr %4, i32 0, i32 8, !dbg !6617
  %5 = load ptr, ptr %sync_fs, align 8, !dbg !6617
  %tobool2 = icmp ne ptr %5, null, !dbg !6615
  br i1 %tobool2, label %if.then, label %if.end, !dbg !6618

if.then:                                          ; preds = %land.lhs.true1
  %6 = load ptr, ptr %sb.addr, align 8, !dbg !6619
  %s_op3 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 6, !dbg !6620
  %7 = load ptr, ptr %s_op3, align 16, !dbg !6620
  %sync_fs4 = getelementptr inbounds %struct.super_operations, ptr %7, i32 0, i32 8, !dbg !6621
  %8 = load ptr, ptr %sync_fs4, align 8, !dbg !6621
  %9 = load ptr, ptr %sb.addr, align 8, !dbg !6622
  %10 = load ptr, ptr %arg.addr, align 8, !dbg !6623
  %11 = load i32, ptr %10, align 4, !dbg !6624
  %call5 = call i32 %8(ptr noundef %9, i32 noundef %11) #15, !dbg !6619
  br label %if.end, !dbg !6619

if.end:                                           ; preds = %if.then, %land.lhs.true1, %land.lhs.true, %entry
  ret void, !dbg !6625
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6626 dso_local void @sync_bdevs(i1 noundef zeroext) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6629 dso_local void @laptop_sync_completion() #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_sync(ptr noundef %__unused) #0 align 16 !dbg !6630 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !6636, metadata !DIExpression()), !dbg !6637
  call void @ksys_sync() #15, !dbg !6638
  ret i64 0, !dbg !6639
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @emergency_sync() #0 align 16 !dbg !6423 {
entry:
  %work = alloca ptr, align 8
  %.compoundliteral = alloca %struct.atomic64_t, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %work) #14, !dbg !6640
  call void @llvm.dbg.declare(metadata ptr %work, metadata !6425, metadata !DIExpression()), !dbg !6641
  %call = call noalias ptr @kmalloc(i64 noundef 32, i32 noundef 2080) #16, !dbg !6642
  store ptr %call, ptr %work, align 8, !dbg !6643
  %0 = load ptr, ptr %work, align 8, !dbg !6644
  %tobool = icmp ne ptr %0, null, !dbg !6644
  br i1 %tobool, label %if.then, label %if.end, !dbg !6646

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6647

do.body:                                          ; preds = %if.then
  br label %do.body1, !dbg !6649

do.body1:                                         ; preds = %do.body
  %1 = load ptr, ptr %work, align 8, !dbg !6651
  call void @__init_work(ptr noundef %1, i32 noundef 0) #15, !dbg !6651
  %2 = load ptr, ptr %work, align 8, !dbg !6651
  %data = getelementptr inbounds %struct.work_struct, ptr %2, i32 0, i32 0, !dbg !6651
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !6651
  store i64 68719476704, ptr %counter, align 8, !dbg !6651
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %data, ptr align 8 %.compoundliteral, i64 8, i1 false), !dbg !6651
  %3 = load ptr, ptr %work, align 8, !dbg !6651
  %entry2 = getelementptr inbounds %struct.work_struct, ptr %3, i32 0, i32 1, !dbg !6651
  call void @INIT_LIST_HEAD(ptr noundef %entry2) #15, !dbg !6651
  %4 = load ptr, ptr %work, align 8, !dbg !6651
  %func = getelementptr inbounds %struct.work_struct, ptr %4, i32 0, i32 2, !dbg !6651
  store ptr @do_sync_work, ptr %func, align 8, !dbg !6651
  br label %do.cond, !dbg !6651

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !6651

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !6649

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !6649

do.end4:                                          ; preds = %do.cond3
  %5 = load ptr, ptr %work, align 8, !dbg !6653
  %call5 = call zeroext i1 @schedule_work(ptr noundef %5) #15, !dbg !6654
  br label %if.end, !dbg !6655

if.end:                                           ; preds = %do.end4, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %work) #14, !dbg !6656
  ret void, !dbg !6656
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !6657 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6661, metadata !DIExpression()), !dbg !6666
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6662, metadata !DIExpression()), !dbg !6667
  %0 = load i64, ptr %size.addr, align 8, !dbg !6668
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6669
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6670

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6671
  %tobool = icmp ne i64 %2, 0, !dbg !6671
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6672

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #14, !dbg !6673
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6663, metadata !DIExpression()), !dbg !6674
  %3 = load i64, ptr %size.addr, align 8, !dbg !6675
  %cmp = icmp ugt i64 %3, 8192, !dbg !6677
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6678

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6679
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6680
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #16, !dbg !6681
  store ptr %call, ptr %retval, align 8, !dbg !6682
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6682

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6683
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #15, !dbg !6683
  store i32 %call2, ptr %index, align 4, !dbg !6684
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6685
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6686
  %9 = ptrtoint ptr %8 to i64, !dbg !6686
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #15, !dbg !6687
  %idxprom = zext i32 %call3 to i64, !dbg !6688
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6688
  %10 = load i32, ptr %index, align 4, !dbg !6689
  %idxprom4 = zext i32 %10 to i64, !dbg !6688
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6688
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6688
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6690
  %13 = load i64, ptr %size.addr, align 8, !dbg !6691
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #17, !dbg !6692
  store ptr %call6, ptr %retval, align 8, !dbg !6693
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6693

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #14, !dbg !6694
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6695
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6696
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #16, !dbg !6697
  store ptr %call8, ptr %retval, align 8, !dbg !6698
  br label %return, !dbg !6698

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6699
  ret ptr %16, !dbg !6699
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__init_work(ptr noundef %work, i32 noundef %onstack) #3 align 16 !dbg !6700 {
entry:
  %work.addr = alloca ptr, align 8
  %onstack.addr = alloca i32, align 4
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !6704, metadata !DIExpression()), !dbg !6706
  store i32 %onstack, ptr %onstack.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %onstack.addr, metadata !6705, metadata !DIExpression()), !dbg !6707
  ret void, !dbg !6708
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #3 align 16 !dbg !6709 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !6714, metadata !DIExpression()), !dbg !6715
  br label %do.body, !dbg !6716

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6717

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !6719

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !6717

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !6721
  %1 = load ptr, ptr %list.addr, align 8, !dbg !6721
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !6721
  store volatile ptr %0, ptr %next, align 8, !dbg !6721
  br label %do.end3, !dbg !6721

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !6717

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !6723

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !6724

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !6726

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !6724

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !6728
  %3 = load ptr, ptr %list.addr, align 8, !dbg !6728
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !6728
  store volatile ptr %2, ptr %prev, align 8, !dbg !6728
  br label %do.end9, !dbg !6728

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !6724

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !6730
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @do_sync_work(ptr noundef %work) #0 align 16 !dbg !6731 {
entry:
  %work.addr = alloca ptr, align 8
  %nowait = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !6733, metadata !DIExpression()), !dbg !6735
  call void @llvm.lifetime.start.p0(i64 4, ptr %nowait) #14, !dbg !6736
  call void @llvm.dbg.declare(metadata ptr %nowait, metadata !6734, metadata !DIExpression()), !dbg !6737
  store i32 0, ptr %nowait, align 4, !dbg !6737
  call void @iterate_supers(ptr noundef @sync_inodes_one_sb, ptr noundef %nowait) #15, !dbg !6738
  call void @iterate_supers(ptr noundef @sync_fs_one_sb, ptr noundef %nowait) #15, !dbg !6739
  call void @sync_bdevs(i1 noundef zeroext false) #15, !dbg !6740
  call void @iterate_supers(ptr noundef @sync_inodes_one_sb, ptr noundef %nowait) #15, !dbg !6741
  call void @iterate_supers(ptr noundef @sync_fs_one_sb, ptr noundef %nowait) #15, !dbg !6742
  call void @sync_bdevs(i1 noundef zeroext false) #15, !dbg !6743
  br label %do.body, !dbg !6744

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6746

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6746

do.end:                                           ; preds = %do.cond
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.2) #18, !dbg !6744
  store i32 %call, ptr %tmp, align 4, !dbg !6746
  %0 = load i32, ptr %tmp, align 4, !dbg !6744
  %1 = load ptr, ptr %work.addr, align 8, !dbg !6748
  call void @kfree(ptr noundef %1) #15, !dbg !6749
  call void @llvm.lifetime.end.p0(i64 4, ptr %nowait) #14, !dbg !6750
  ret void, !dbg !6750
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @schedule_work(ptr noundef %work) #3 align 16 !dbg !6751 {
entry:
  %work.addr = alloca ptr, align 8
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !6755, metadata !DIExpression()), !dbg !6756
  %0 = load ptr, ptr @system_wq, align 8, !dbg !6757
  %1 = load ptr, ptr %work.addr, align 8, !dbg !6758
  %call = call zeroext i1 @queue_work(ptr noundef %0, ptr noundef %1) #15, !dbg !6759
  ret i1 %call, !dbg !6760
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__x64_sys_syncfs(ptr noundef %regs) #0 align 16 !dbg !6761 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6763, metadata !DIExpression()), !dbg !6764
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6764
  %di = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 14, !dbg !6764
  %1 = load i64, ptr %di, align 8, !dbg !6764
  %call = call i64 @__se_sys_syncfs(i64 noundef %1) #15, !dbg !6764
  ret i64 %call, !dbg !6764
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_sys_syncfs(i64 noundef %fd) #0 align 16 !dbg !6765 {
entry:
  %fd.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store i64 %fd, ptr %fd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !6769, metadata !DIExpression()), !dbg !6771
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #14, !dbg !6771
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6770, metadata !DIExpression()), !dbg !6771
  %0 = load i64, ptr %fd.addr, align 8, !dbg !6771
  %conv = trunc i64 %0 to i32, !dbg !6771
  %call = call i64 @__do_sys_syncfs(i32 noundef %conv) #15, !dbg !6771
  store i64 %call, ptr %ret, align 8, !dbg !6771
  br label %do.body, !dbg !6771

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6772

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6772

do.end:                                           ; preds = %do.cond
  %1 = load i64, ptr %ret, align 8, !dbg !6771
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #14, !dbg !6771
  ret i64 %1, !dbg !6771
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_sys_syncfs(ptr noundef %regs) #0 align 16 !dbg !6774 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6776, metadata !DIExpression()), !dbg !6777
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6777
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !6777
  %1 = load i64, ptr %bx, align 8, !dbg !6777
  %conv = trunc i64 %1 to i32, !dbg !6777
  %conv1 = zext i32 %conv to i64, !dbg !6777
  %call = call i64 @__se_sys_syncfs(i64 noundef %conv1) #15, !dbg !6777
  ret i64 %call, !dbg !6777
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @vfs_fsync_range(ptr noundef %file, i64 noundef %start, i64 noundef %end, i32 noundef %datasync) #0 align 16 !dbg !6778 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %datasync.addr = alloca i32, align 4
  %inode = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6780, metadata !DIExpression()), !dbg !6785
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !6781, metadata !DIExpression()), !dbg !6786
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !6782, metadata !DIExpression()), !dbg !6787
  store i32 %datasync, ptr %datasync.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %datasync.addr, metadata !6783, metadata !DIExpression()), !dbg !6788
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #14, !dbg !6789
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !6784, metadata !DIExpression()), !dbg !6790
  %0 = load ptr, ptr %file.addr, align 8, !dbg !6791
  %f_mapping = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 17, !dbg !6792
  %1 = load ptr, ptr %f_mapping, align 8, !dbg !6792
  %host = getelementptr inbounds %struct.address_space, ptr %1, i32 0, i32 0, !dbg !6793
  %2 = load ptr, ptr %host, align 8, !dbg !6793
  store ptr %2, ptr %inode, align 8, !dbg !6790
  %3 = load ptr, ptr %file.addr, align 8, !dbg !6794
  %f_op = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 12, !dbg !6796
  %4 = load ptr, ptr %f_op, align 8, !dbg !6796
  %fsync = getelementptr inbounds %struct.file_operations, ptr %4, i32 0, i32 16, !dbg !6797
  %5 = load ptr, ptr %fsync, align 8, !dbg !6797
  %tobool = icmp ne ptr %5, null, !dbg !6794
  br i1 %tobool, label %if.end, label %if.then, !dbg !6798

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !6799
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6799

if.end:                                           ; preds = %entry
  %6 = load i32, ptr %datasync.addr, align 4, !dbg !6800
  %tobool1 = icmp ne i32 %6, 0, !dbg !6800
  br i1 %tobool1, label %if.end4, label %land.lhs.true, !dbg !6802

land.lhs.true:                                    ; preds = %if.end
  %7 = load ptr, ptr %inode, align 8, !dbg !6803
  %i_state = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 24, !dbg !6804
  %8 = load i64, ptr %i_state, align 8, !dbg !6804
  %and = and i64 %8, 2048, !dbg !6805
  %tobool2 = icmp ne i64 %and, 0, !dbg !6805
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !6806

if.then3:                                         ; preds = %land.lhs.true
  %9 = load ptr, ptr %inode, align 8, !dbg !6807
  call void @mark_inode_dirty_sync(ptr noundef %9) #15, !dbg !6808
  br label %if.end4, !dbg !6808

if.end4:                                          ; preds = %if.then3, %land.lhs.true, %if.end
  %10 = load ptr, ptr %file.addr, align 8, !dbg !6809
  %f_op5 = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 12, !dbg !6810
  %11 = load ptr, ptr %f_op5, align 8, !dbg !6810
  %fsync6 = getelementptr inbounds %struct.file_operations, ptr %11, i32 0, i32 16, !dbg !6811
  %12 = load ptr, ptr %fsync6, align 8, !dbg !6811
  %13 = load ptr, ptr %file.addr, align 8, !dbg !6812
  %14 = load i64, ptr %start.addr, align 8, !dbg !6813
  %15 = load i64, ptr %end.addr, align 8, !dbg !6814
  %16 = load i32, ptr %datasync.addr, align 4, !dbg !6815
  %call = call i32 %12(ptr noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) #15, !dbg !6809
  store i32 %call, ptr %retval, align 4, !dbg !6816
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6816

cleanup:                                          ; preds = %if.end4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #14, !dbg !6817
  %17 = load i32, ptr %retval, align 4, !dbg !6817
  ret i32 %17, !dbg !6817
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mark_inode_dirty_sync(ptr noundef %inode) #3 align 16 !dbg !6818 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6820, metadata !DIExpression()), !dbg !6821
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !6822
  call void @__mark_inode_dirty(ptr noundef %0, i32 noundef 1) #15, !dbg !6823
  ret void, !dbg !6824
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @vfs_fsync(ptr noundef %file, i32 noundef %datasync) #0 align 16 !dbg !6825 {
entry:
  %file.addr = alloca ptr, align 8
  %datasync.addr = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6829, metadata !DIExpression()), !dbg !6831
  store i32 %datasync, ptr %datasync.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %datasync.addr, metadata !6830, metadata !DIExpression()), !dbg !6832
  %0 = load ptr, ptr %file.addr, align 8, !dbg !6833
  %1 = load i32, ptr %datasync.addr, align 4, !dbg !6834
  %call = call i32 @vfs_fsync_range(ptr noundef %0, i64 noundef 0, i64 noundef 9223372036854775807, i32 noundef %1) #15, !dbg !6835
  ret i32 %call, !dbg !6836
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__x64_sys_fsync(ptr noundef %regs) #0 align 16 !dbg !6837 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6839, metadata !DIExpression()), !dbg !6840
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6840
  %di = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 14, !dbg !6840
  %1 = load i64, ptr %di, align 8, !dbg !6840
  %call = call i64 @__se_sys_fsync(i64 noundef %1) #15, !dbg !6840
  ret i64 %call, !dbg !6840
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_sys_fsync(i64 noundef %fd) #0 align 16 !dbg !6841 {
entry:
  %fd.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store i64 %fd, ptr %fd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !6843, metadata !DIExpression()), !dbg !6845
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #14, !dbg !6845
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6844, metadata !DIExpression()), !dbg !6845
  %0 = load i64, ptr %fd.addr, align 8, !dbg !6845
  %conv = trunc i64 %0 to i32, !dbg !6845
  %call = call i64 @__do_sys_fsync(i32 noundef %conv) #15, !dbg !6845
  store i64 %call, ptr %ret, align 8, !dbg !6845
  br label %do.body, !dbg !6845

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6846

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6846

do.end:                                           ; preds = %do.cond
  %1 = load i64, ptr %ret, align 8, !dbg !6845
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #14, !dbg !6845
  ret i64 %1, !dbg !6845
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_sys_fsync(ptr noundef %regs) #0 align 16 !dbg !6848 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6850, metadata !DIExpression()), !dbg !6851
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6851
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !6851
  %1 = load i64, ptr %bx, align 8, !dbg !6851
  %conv = trunc i64 %1 to i32, !dbg !6851
  %conv1 = zext i32 %conv to i64, !dbg !6851
  %call = call i64 @__se_sys_fsync(i64 noundef %conv1) #15, !dbg !6851
  ret i64 %call, !dbg !6851
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__x64_sys_fdatasync(ptr noundef %regs) #0 align 16 !dbg !6852 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6854, metadata !DIExpression()), !dbg !6855
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6855
  %di = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 14, !dbg !6855
  %1 = load i64, ptr %di, align 8, !dbg !6855
  %call = call i64 @__se_sys_fdatasync(i64 noundef %1) #15, !dbg !6855
  ret i64 %call, !dbg !6855
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_sys_fdatasync(i64 noundef %fd) #0 align 16 !dbg !6856 {
entry:
  %fd.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store i64 %fd, ptr %fd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !6858, metadata !DIExpression()), !dbg !6860
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #14, !dbg !6860
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6859, metadata !DIExpression()), !dbg !6860
  %0 = load i64, ptr %fd.addr, align 8, !dbg !6860
  %conv = trunc i64 %0 to i32, !dbg !6860
  %call = call i64 @__do_sys_fdatasync(i32 noundef %conv) #15, !dbg !6860
  store i64 %call, ptr %ret, align 8, !dbg !6860
  br label %do.body, !dbg !6860

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6861

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6861

do.end:                                           ; preds = %do.cond
  %1 = load i64, ptr %ret, align 8, !dbg !6860
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #14, !dbg !6860
  ret i64 %1, !dbg !6860
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_sys_fdatasync(ptr noundef %regs) #0 align 16 !dbg !6863 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6865, metadata !DIExpression()), !dbg !6866
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6866
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !6866
  %1 = load i64, ptr %bx, align 8, !dbg !6866
  %conv = trunc i64 %1 to i32, !dbg !6866
  %conv1 = zext i32 %conv to i64, !dbg !6866
  %call = call i64 @__se_sys_fdatasync(i64 noundef %conv1) #15, !dbg !6866
  ret i64 %call, !dbg !6866
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @sync_file_range(ptr noundef %file, i64 noundef %offset, i64 noundef %nbytes, i32 noundef %flags) #0 align 16 !dbg !6867 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %offset.addr = alloca i64, align 8
  %nbytes.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %mapping = alloca ptr, align 8
  %endbyte = alloca i64, align 8
  %i_mode = alloca i16, align 2
  %sync_mode = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6871, metadata !DIExpression()), !dbg !6883
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !6872, metadata !DIExpression()), !dbg !6884
  store i64 %nbytes, ptr %nbytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nbytes.addr, metadata !6873, metadata !DIExpression()), !dbg !6885
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6874, metadata !DIExpression()), !dbg !6886
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !6887
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6875, metadata !DIExpression()), !dbg !6888
  call void @llvm.lifetime.start.p0(i64 8, ptr %mapping) #14, !dbg !6889
  call void @llvm.dbg.declare(metadata ptr %mapping, metadata !6876, metadata !DIExpression()), !dbg !6890
  call void @llvm.lifetime.start.p0(i64 8, ptr %endbyte) #14, !dbg !6891
  call void @llvm.dbg.declare(metadata ptr %endbyte, metadata !6877, metadata !DIExpression()), !dbg !6892
  call void @llvm.lifetime.start.p0(i64 2, ptr %i_mode) #14, !dbg !6893
  call void @llvm.dbg.declare(metadata ptr %i_mode, metadata !6878, metadata !DIExpression()), !dbg !6894
  store i32 -22, ptr %ret, align 4, !dbg !6895
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6896
  %and = and i32 %0, -8, !dbg !6898
  %tobool = icmp ne i32 %and, 0, !dbg !6898
  br i1 %tobool, label %if.then, label %if.end, !dbg !6899

if.then:                                          ; preds = %entry
  br label %out, !dbg !6900

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %offset.addr, align 8, !dbg !6901
  %2 = load i64, ptr %nbytes.addr, align 8, !dbg !6902
  %add = add i64 %1, %2, !dbg !6903
  store i64 %add, ptr %endbyte, align 8, !dbg !6904
  %3 = load i64, ptr %offset.addr, align 8, !dbg !6905
  %cmp = icmp slt i64 %3, 0, !dbg !6907
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6908

if.then1:                                         ; preds = %if.end
  br label %out, !dbg !6909

if.end2:                                          ; preds = %if.end
  %4 = load i64, ptr %endbyte, align 8, !dbg !6910
  %cmp3 = icmp slt i64 %4, 0, !dbg !6912
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !6913

if.then4:                                         ; preds = %if.end2
  br label %out, !dbg !6914

if.end5:                                          ; preds = %if.end2
  %5 = load i64, ptr %endbyte, align 8, !dbg !6915
  %6 = load i64, ptr %offset.addr, align 8, !dbg !6917
  %cmp6 = icmp slt i64 %5, %6, !dbg !6918
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !6919

if.then7:                                         ; preds = %if.end5
  br label %out, !dbg !6920

if.end8:                                          ; preds = %if.end5
  %7 = load i64, ptr %nbytes.addr, align 8, !dbg !6921
  %cmp9 = icmp eq i64 %7, 0, !dbg !6923
  br i1 %cmp9, label %if.then10, label %if.else, !dbg !6924

if.then10:                                        ; preds = %if.end8
  store i64 9223372036854775807, ptr %endbyte, align 8, !dbg !6925
  br label %if.end11, !dbg !6926

if.else:                                          ; preds = %if.end8
  %8 = load i64, ptr %endbyte, align 8, !dbg !6927
  %dec = add i64 %8, -1, !dbg !6927
  store i64 %dec, ptr %endbyte, align 8, !dbg !6927
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then10
  %9 = load ptr, ptr %file.addr, align 8, !dbg !6928
  %call = call ptr @file_inode(ptr noundef %9) #15, !dbg !6929
  %i_mode12 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 0, !dbg !6930
  %10 = load i16, ptr %i_mode12, align 8, !dbg !6930
  store i16 %10, ptr %i_mode, align 2, !dbg !6931
  store i32 -29, ptr %ret, align 4, !dbg !6932
  %11 = load i16, ptr %i_mode, align 2, !dbg !6933
  %conv = zext i16 %11 to i32, !dbg !6933
  %and13 = and i32 %conv, 61440, !dbg !6933
  %cmp14 = icmp eq i32 %and13, 32768, !dbg !6933
  br i1 %cmp14, label %if.end31, label %land.lhs.true, !dbg !6935

land.lhs.true:                                    ; preds = %if.end11
  %12 = load i16, ptr %i_mode, align 2, !dbg !6936
  %conv16 = zext i16 %12 to i32, !dbg !6936
  %and17 = and i32 %conv16, 61440, !dbg !6936
  %cmp18 = icmp eq i32 %and17, 24576, !dbg !6936
  br i1 %cmp18, label %if.end31, label %land.lhs.true20, !dbg !6937

land.lhs.true20:                                  ; preds = %land.lhs.true
  %13 = load i16, ptr %i_mode, align 2, !dbg !6938
  %conv21 = zext i16 %13 to i32, !dbg !6938
  %and22 = and i32 %conv21, 61440, !dbg !6938
  %cmp23 = icmp eq i32 %and22, 16384, !dbg !6938
  br i1 %cmp23, label %if.end31, label %land.lhs.true25, !dbg !6939

land.lhs.true25:                                  ; preds = %land.lhs.true20
  %14 = load i16, ptr %i_mode, align 2, !dbg !6940
  %conv26 = zext i16 %14 to i32, !dbg !6940
  %and27 = and i32 %conv26, 61440, !dbg !6940
  %cmp28 = icmp eq i32 %and27, 40960, !dbg !6940
  br i1 %cmp28, label %if.end31, label %if.then30, !dbg !6941

if.then30:                                        ; preds = %land.lhs.true25
  br label %out, !dbg !6942

if.end31:                                         ; preds = %land.lhs.true25, %land.lhs.true20, %land.lhs.true, %if.end11
  %15 = load ptr, ptr %file.addr, align 8, !dbg !6943
  %f_mapping = getelementptr inbounds %struct.file, ptr %15, i32 0, i32 17, !dbg !6944
  %16 = load ptr, ptr %f_mapping, align 8, !dbg !6944
  store ptr %16, ptr %mapping, align 8, !dbg !6945
  store i32 0, ptr %ret, align 4, !dbg !6946
  %17 = load i32, ptr %flags.addr, align 4, !dbg !6947
  %and32 = and i32 %17, 1, !dbg !6949
  %tobool33 = icmp ne i32 %and32, 0, !dbg !6949
  br i1 %tobool33, label %if.then34, label %if.end40, !dbg !6950

if.then34:                                        ; preds = %if.end31
  %18 = load ptr, ptr %file.addr, align 8, !dbg !6951
  %19 = load i64, ptr %offset.addr, align 8, !dbg !6953
  %20 = load i64, ptr %endbyte, align 8, !dbg !6954
  %call35 = call i32 @file_fdatawait_range(ptr noundef %18, i64 noundef %19, i64 noundef %20) #15, !dbg !6955
  store i32 %call35, ptr %ret, align 4, !dbg !6956
  %21 = load i32, ptr %ret, align 4, !dbg !6957
  %cmp36 = icmp slt i32 %21, 0, !dbg !6959
  br i1 %cmp36, label %if.then38, label %if.end39, !dbg !6960

if.then38:                                        ; preds = %if.then34
  br label %out, !dbg !6961

if.end39:                                         ; preds = %if.then34
  br label %if.end40, !dbg !6962

if.end40:                                         ; preds = %if.end39, %if.end31
  %22 = load i32, ptr %flags.addr, align 4, !dbg !6963
  %and41 = and i32 %22, 2, !dbg !6964
  %tobool42 = icmp ne i32 %and41, 0, !dbg !6964
  br i1 %tobool42, label %if.then43, label %if.end54, !dbg !6965

if.then43:                                        ; preds = %if.end40
  call void @llvm.lifetime.start.p0(i64 4, ptr %sync_mode) #14, !dbg !6966
  call void @llvm.dbg.declare(metadata ptr %sync_mode, metadata !6879, metadata !DIExpression()), !dbg !6967
  store i32 0, ptr %sync_mode, align 4, !dbg !6967
  %23 = load i32, ptr %flags.addr, align 4, !dbg !6968
  %and44 = and i32 %23, 7, !dbg !6970
  %cmp45 = icmp eq i32 %and44, 7, !dbg !6971
  br i1 %cmp45, label %if.then47, label %if.end48, !dbg !6972

if.then47:                                        ; preds = %if.then43
  store i32 1, ptr %sync_mode, align 4, !dbg !6973
  br label %if.end48, !dbg !6974

if.end48:                                         ; preds = %if.then47, %if.then43
  %24 = load ptr, ptr %mapping, align 8, !dbg !6975
  %25 = load i64, ptr %offset.addr, align 8, !dbg !6976
  %26 = load i64, ptr %endbyte, align 8, !dbg !6977
  %27 = load i32, ptr %sync_mode, align 4, !dbg !6978
  %call49 = call i32 @__filemap_fdatawrite_range(ptr noundef %24, i64 noundef %25, i64 noundef %26, i32 noundef %27) #15, !dbg !6979
  store i32 %call49, ptr %ret, align 4, !dbg !6980
  %28 = load i32, ptr %ret, align 4, !dbg !6981
  %cmp50 = icmp slt i32 %28, 0, !dbg !6983
  br i1 %cmp50, label %if.then52, label %if.end53, !dbg !6984

if.then52:                                        ; preds = %if.end48
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6985

if.end53:                                         ; preds = %if.end48
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6986
  br label %cleanup, !dbg !6986

cleanup:                                          ; preds = %if.then52, %if.end53
  call void @llvm.lifetime.end.p0(i64 4, ptr %sync_mode) #14, !dbg !6986
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup60 [
    i32 0, label %cleanup.cont
    i32 2, label %out
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end54, !dbg !6987

if.end54:                                         ; preds = %cleanup.cont, %if.end40
  %29 = load i32, ptr %flags.addr, align 4, !dbg !6988
  %and55 = and i32 %29, 4, !dbg !6990
  %tobool56 = icmp ne i32 %and55, 0, !dbg !6990
  br i1 %tobool56, label %if.then57, label %if.end59, !dbg !6991

if.then57:                                        ; preds = %if.end54
  %30 = load ptr, ptr %file.addr, align 8, !dbg !6992
  %31 = load i64, ptr %offset.addr, align 8, !dbg !6993
  %32 = load i64, ptr %endbyte, align 8, !dbg !6994
  %call58 = call i32 @file_fdatawait_range(ptr noundef %30, i64 noundef %31, i64 noundef %32) #15, !dbg !6995
  store i32 %call58, ptr %ret, align 4, !dbg !6996
  br label %if.end59, !dbg !6997

if.end59:                                         ; preds = %if.then57, %if.end54
  br label %out, !dbg !6998

out:                                              ; preds = %if.end59, %cleanup, %if.then38, %if.then30, %if.then7, %if.then4, %if.then1, %if.then
  call void @llvm.dbg.label(metadata !6882), !dbg !6999
  %33 = load i32, ptr %ret, align 4, !dbg !7000
  store i32 %33, ptr %retval, align 4, !dbg !7001
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup60, !dbg !7001

cleanup60:                                        ; preds = %out, %cleanup
  call void @llvm.lifetime.end.p0(i64 2, ptr %i_mode) #14, !dbg !7002
  call void @llvm.lifetime.end.p0(i64 8, ptr %endbyte) #14, !dbg !7002
  call void @llvm.lifetime.end.p0(i64 8, ptr %mapping) #14, !dbg !7002
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !7002
  %34 = load i32, ptr %retval, align 4, !dbg !7002
  ret i32 %34, !dbg !7002
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @file_inode(ptr noundef %f) #3 align 16 !dbg !7003 {
entry:
  %f.addr = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !7007, metadata !DIExpression()), !dbg !7008
  %0 = load ptr, ptr %f.addr, align 8, !dbg !7009
  %f_inode = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 11, !dbg !7010
  %1 = load ptr, ptr %f_inode, align 8, !dbg !7010
  ret ptr %1, !dbg !7011
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7012 dso_local i32 @file_fdatawait_range(ptr noundef, i64 noundef, i64 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7015 dso_local i32 @__filemap_fdatawrite_range(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ksys_sync_file_range(i32 noundef %fd, i64 noundef %offset, i64 noundef %nbytes, i32 noundef %flags) #0 align 16 !dbg !7018 {
entry:
  %fd.addr = alloca i32, align 4
  %offset.addr = alloca i64, align 8
  %nbytes.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %f = alloca %struct.fd, align 8
  %tmp = alloca %struct.fd, align 8
  store i32 %fd, ptr %fd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !7022, metadata !DIExpression()), !dbg !7033
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !7023, metadata !DIExpression()), !dbg !7034
  store i64 %nbytes, ptr %nbytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nbytes.addr, metadata !7024, metadata !DIExpression()), !dbg !7035
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7025, metadata !DIExpression()), !dbg !7036
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !7037
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !7026, metadata !DIExpression()), !dbg !7038
  call void @llvm.lifetime.start.p0(i64 16, ptr %f) #14, !dbg !7039
  call void @llvm.dbg.declare(metadata ptr %f, metadata !7027, metadata !DIExpression()), !dbg !7040
  store i32 -9, ptr %ret, align 4, !dbg !7041
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #14, !dbg !7042
  %0 = load i32, ptr %fd.addr, align 4, !dbg !7043
  %call = call { ptr, i32 } @fdget(i32 noundef %0) #15, !dbg !7042
  %1 = getelementptr inbounds { ptr, i32 }, ptr %tmp, i32 0, i32 0, !dbg !7042
  %2 = extractvalue { ptr, i32 } %call, 0, !dbg !7042
  store ptr %2, ptr %1, align 8, !dbg !7042
  %3 = getelementptr inbounds { ptr, i32 }, ptr %tmp, i32 0, i32 1, !dbg !7042
  %4 = extractvalue { ptr, i32 } %call, 1, !dbg !7042
  store i32 %4, ptr %3, align 8, !dbg !7042
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %f, ptr align 8 %tmp, i64 16, i1 false), !dbg !7042
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #14, !dbg !7042
  %file = getelementptr inbounds %struct.fd, ptr %f, i32 0, i32 0, !dbg !7044
  %5 = load ptr, ptr %file, align 8, !dbg !7044
  %tobool = icmp ne ptr %5, null, !dbg !7046
  br i1 %tobool, label %if.then, label %if.end, !dbg !7047

if.then:                                          ; preds = %entry
  %file1 = getelementptr inbounds %struct.fd, ptr %f, i32 0, i32 0, !dbg !7048
  %6 = load ptr, ptr %file1, align 8, !dbg !7048
  %7 = load i64, ptr %offset.addr, align 8, !dbg !7049
  %8 = load i64, ptr %nbytes.addr, align 8, !dbg !7050
  %9 = load i32, ptr %flags.addr, align 4, !dbg !7051
  %call2 = call i32 @sync_file_range(ptr noundef %6, i64 noundef %7, i64 noundef %8, i32 noundef %9) #15, !dbg !7052
  store i32 %call2, ptr %ret, align 4, !dbg !7053
  br label %if.end, !dbg !7054

if.end:                                           ; preds = %if.then, %entry
  %10 = getelementptr inbounds { ptr, i32 }, ptr %f, i32 0, i32 0, !dbg !7055
  %11 = load ptr, ptr %10, align 8, !dbg !7055
  %12 = getelementptr inbounds { ptr, i32 }, ptr %f, i32 0, i32 1, !dbg !7055
  %13 = load i32, ptr %12, align 8, !dbg !7055
  call void @fdput(ptr %11, i32 %13) #15, !dbg !7055
  %14 = load i32, ptr %ret, align 4, !dbg !7056
  call void @llvm.lifetime.end.p0(i64 16, ptr %f) #14, !dbg !7057
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !7057
  ret i32 %14, !dbg !7058
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal { ptr, i32 } @fdget(i32 noundef %fd) #3 align 16 !dbg !7059 {
entry:
  %retval = alloca %struct.fd, align 8
  %fd.addr = alloca i32, align 4
  store i32 %fd, ptr %fd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !7063, metadata !DIExpression()), !dbg !7064
  %0 = load i32, ptr %fd.addr, align 4, !dbg !7065
  %call = call i64 @__fdget(i32 noundef %0) #15, !dbg !7066
  %call1 = call { ptr, i32 } @__to_fd(i64 noundef %call) #15, !dbg !7067
  %1 = getelementptr inbounds { ptr, i32 }, ptr %retval, i32 0, i32 0, !dbg !7067
  %2 = extractvalue { ptr, i32 } %call1, 0, !dbg !7067
  store ptr %2, ptr %1, align 8, !dbg !7067
  %3 = getelementptr inbounds { ptr, i32 }, ptr %retval, i32 0, i32 1, !dbg !7067
  %4 = extractvalue { ptr, i32 } %call1, 1, !dbg !7067
  store i32 %4, ptr %3, align 8, !dbg !7067
  %5 = load { ptr, i32 }, ptr %retval, align 8, !dbg !7068
  ret { ptr, i32 } %5, !dbg !7068
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fdput(ptr %fd.coerce0, i32 %fd.coerce1) #3 align 16 !dbg !7069 {
entry:
  %fd = alloca %struct.fd, align 8
  %0 = getelementptr inbounds { ptr, i32 }, ptr %fd, i32 0, i32 0
  store ptr %fd.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { ptr, i32 }, ptr %fd, i32 0, i32 1
  store i32 %fd.coerce1, ptr %1, align 8
  call void @llvm.dbg.declare(metadata ptr %fd, metadata !7073, metadata !DIExpression()), !dbg !7074
  %flags = getelementptr inbounds %struct.fd, ptr %fd, i32 0, i32 1, !dbg !7075
  %2 = load i32, ptr %flags, align 8, !dbg !7075
  %and = and i32 %2, 1, !dbg !7077
  %tobool = icmp ne i32 %and, 0, !dbg !7077
  br i1 %tobool, label %if.then, label %if.end, !dbg !7078

if.then:                                          ; preds = %entry
  %file = getelementptr inbounds %struct.fd, ptr %fd, i32 0, i32 0, !dbg !7079
  %3 = load ptr, ptr %file, align 8, !dbg !7079
  call void @fput(ptr noundef %3) #15, !dbg !7080
  br label %if.end, !dbg !7080

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !7081
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__x64_sys_sync_file_range(ptr noundef %regs) #0 align 16 !dbg !7082 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !7084, metadata !DIExpression()), !dbg !7085
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !7085
  %di = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 14, !dbg !7085
  %1 = load i64, ptr %di, align 8, !dbg !7085
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !7085
  %si = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 13, !dbg !7085
  %3 = load i64, ptr %si, align 8, !dbg !7085
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !7085
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !7085
  %5 = load i64, ptr %dx, align 8, !dbg !7085
  %6 = load ptr, ptr %regs.addr, align 8, !dbg !7085
  %r10 = getelementptr inbounds %struct.pt_regs, ptr %6, i32 0, i32 7, !dbg !7085
  %7 = load i64, ptr %r10, align 8, !dbg !7085
  %call = call i64 @__se_sys_sync_file_range(i64 noundef %1, i64 noundef %3, i64 noundef %5, i64 noundef %7) #15, !dbg !7085
  ret i64 %call, !dbg !7085
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_sys_sync_file_range(i64 noundef %fd, i64 noundef %offset, i64 noundef %nbytes, i64 noundef %flags) #0 align 16 !dbg !7086 {
entry:
  %fd.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %nbytes.addr = alloca i64, align 8
  %flags.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store i64 %fd, ptr %fd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !7090, metadata !DIExpression()), !dbg !7095
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !7091, metadata !DIExpression()), !dbg !7095
  store i64 %nbytes, ptr %nbytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nbytes.addr, metadata !7092, metadata !DIExpression()), !dbg !7095
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7093, metadata !DIExpression()), !dbg !7095
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #14, !dbg !7095
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !7094, metadata !DIExpression()), !dbg !7095
  %0 = load i64, ptr %fd.addr, align 8, !dbg !7095
  %conv = trunc i64 %0 to i32, !dbg !7095
  %1 = load i64, ptr %offset.addr, align 8, !dbg !7095
  %2 = load i64, ptr %nbytes.addr, align 8, !dbg !7095
  %3 = load i64, ptr %flags.addr, align 8, !dbg !7095
  %conv1 = trunc i64 %3 to i32, !dbg !7095
  %call = call i64 @__do_sys_sync_file_range(i32 noundef %conv, i64 noundef %1, i64 noundef %2, i32 noundef %conv1) #15, !dbg !7095
  store i64 %call, ptr %ret, align 8, !dbg !7095
  br label %do.body, !dbg !7095

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !7096

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !7096

do.end:                                           ; preds = %do.cond
  %4 = load i64, ptr %ret, align 8, !dbg !7095
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #14, !dbg !7095
  ret i64 %4, !dbg !7095
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_sys_sync_file_range(ptr noundef %regs) #0 align 16 !dbg !7098 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !7100, metadata !DIExpression()), !dbg !7101
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !7101
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !7101
  %1 = load i64, ptr %bx, align 8, !dbg !7101
  %conv = trunc i64 %1 to i32, !dbg !7101
  %conv1 = zext i32 %conv to i64, !dbg !7101
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !7101
  %cx = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 11, !dbg !7101
  %3 = load i64, ptr %cx, align 8, !dbg !7101
  %conv2 = trunc i64 %3 to i32, !dbg !7101
  %conv3 = zext i32 %conv2 to i64, !dbg !7101
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !7101
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !7101
  %5 = load i64, ptr %dx, align 8, !dbg !7101
  %conv4 = trunc i64 %5 to i32, !dbg !7101
  %conv5 = zext i32 %conv4 to i64, !dbg !7101
  %6 = load ptr, ptr %regs.addr, align 8, !dbg !7101
  %si = getelementptr inbounds %struct.pt_regs, ptr %6, i32 0, i32 13, !dbg !7101
  %7 = load i64, ptr %si, align 8, !dbg !7101
  %conv6 = trunc i64 %7 to i32, !dbg !7101
  %conv7 = zext i32 %conv6 to i64, !dbg !7101
  %call = call i64 @__se_sys_sync_file_range(i64 noundef %conv1, i64 noundef %conv3, i64 noundef %conv5, i64 noundef %conv7) #15, !dbg !7101
  ret i64 %call, !dbg !7101
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__x64_sys_sync_file_range2(ptr noundef %regs) #0 align 16 !dbg !7102 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !7104, metadata !DIExpression()), !dbg !7105
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !7105
  %di = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 14, !dbg !7105
  %1 = load i64, ptr %di, align 8, !dbg !7105
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !7105
  %si = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 13, !dbg !7105
  %3 = load i64, ptr %si, align 8, !dbg !7105
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !7105
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !7105
  %5 = load i64, ptr %dx, align 8, !dbg !7105
  %6 = load ptr, ptr %regs.addr, align 8, !dbg !7105
  %r10 = getelementptr inbounds %struct.pt_regs, ptr %6, i32 0, i32 7, !dbg !7105
  %7 = load i64, ptr %r10, align 8, !dbg !7105
  %call = call i64 @__se_sys_sync_file_range2(i64 noundef %1, i64 noundef %3, i64 noundef %5, i64 noundef %7) #15, !dbg !7105
  ret i64 %call, !dbg !7105
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_sys_sync_file_range2(i64 noundef %fd, i64 noundef %flags, i64 noundef %offset, i64 noundef %nbytes) #0 align 16 !dbg !7106 {
entry:
  %fd.addr = alloca i64, align 8
  %flags.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %nbytes.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store i64 %fd, ptr %fd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !7110, metadata !DIExpression()), !dbg !7115
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7111, metadata !DIExpression()), !dbg !7115
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !7112, metadata !DIExpression()), !dbg !7115
  store i64 %nbytes, ptr %nbytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nbytes.addr, metadata !7113, metadata !DIExpression()), !dbg !7115
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #14, !dbg !7115
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !7114, metadata !DIExpression()), !dbg !7115
  %0 = load i64, ptr %fd.addr, align 8, !dbg !7115
  %conv = trunc i64 %0 to i32, !dbg !7115
  %1 = load i64, ptr %flags.addr, align 8, !dbg !7115
  %conv1 = trunc i64 %1 to i32, !dbg !7115
  %2 = load i64, ptr %offset.addr, align 8, !dbg !7115
  %3 = load i64, ptr %nbytes.addr, align 8, !dbg !7115
  %call = call i64 @__do_sys_sync_file_range2(i32 noundef %conv, i32 noundef %conv1, i64 noundef %2, i64 noundef %3) #15, !dbg !7115
  store i64 %call, ptr %ret, align 8, !dbg !7115
  br label %do.body, !dbg !7115

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !7116

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !7116

do.end:                                           ; preds = %do.cond
  %4 = load i64, ptr %ret, align 8, !dbg !7115
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #14, !dbg !7115
  ret i64 %4, !dbg !7115
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_sys_sync_file_range2(ptr noundef %regs) #0 align 16 !dbg !7118 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !7120, metadata !DIExpression()), !dbg !7121
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !7121
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !7121
  %1 = load i64, ptr %bx, align 8, !dbg !7121
  %conv = trunc i64 %1 to i32, !dbg !7121
  %conv1 = zext i32 %conv to i64, !dbg !7121
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !7121
  %cx = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 11, !dbg !7121
  %3 = load i64, ptr %cx, align 8, !dbg !7121
  %conv2 = trunc i64 %3 to i32, !dbg !7121
  %conv3 = zext i32 %conv2 to i64, !dbg !7121
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !7121
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !7121
  %5 = load i64, ptr %dx, align 8, !dbg !7121
  %conv4 = trunc i64 %5 to i32, !dbg !7121
  %conv5 = zext i32 %conv4 to i64, !dbg !7121
  %6 = load ptr, ptr %regs.addr, align 8, !dbg !7121
  %si = getelementptr inbounds %struct.pt_regs, ptr %6, i32 0, i32 13, !dbg !7121
  %7 = load i64, ptr %si, align 8, !dbg !7121
  %conv6 = trunc i64 %7 to i32, !dbg !7121
  %conv7 = zext i32 %conv6 to i64, !dbg !7121
  %call = call i64 @__se_sys_sync_file_range2(i64 noundef %conv1, i64 noundef %conv3, i64 noundef %conv5, i64 noundef %conv7) #15, !dbg !7121
  ret i64 %call, !dbg !7121
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @atomic_long_read(ptr noundef %v) #8 align 16 !dbg !7122 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7129, metadata !DIExpression()), !dbg !7130
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7131
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 8) #15, !dbg !7132
  %1 = load ptr, ptr %v.addr, align 8, !dbg !7133
  %call = call i64 @raw_atomic_long_read(ptr noundef %1) #15, !dbg !7134
  ret i64 %call, !dbg !7135
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #8 align 16 !dbg !7136 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7144, metadata !DIExpression()), !dbg !7146
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7145, metadata !DIExpression()), !dbg !7147
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7148
  %1 = load i64, ptr %size.addr, align 8, !dbg !7149
  %conv = trunc i64 %1 to i32, !dbg !7149
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #15, !dbg !7150
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7151
  %3 = load i64, ptr %size.addr, align 8, !dbg !7151
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #15, !dbg !7151
  ret void, !dbg !7152
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic_long_read(ptr noundef %v) #8 align 16 !dbg !7153 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7155, metadata !DIExpression()), !dbg !7156
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7157
  %call = call i64 @raw_atomic64_read(ptr noundef %0) #15, !dbg !7158
  ret i64 %call, !dbg !7159
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !7160 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7165, metadata !DIExpression()), !dbg !7167
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7166, metadata !DIExpression()), !dbg !7168
  ret i1 true, !dbg !7169
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !7170 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !7175, metadata !DIExpression()), !dbg !7178
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7176, metadata !DIExpression()), !dbg !7179
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !7177, metadata !DIExpression()), !dbg !7180
  ret void, !dbg !7181
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic64_read(ptr noundef %v) #8 align 16 !dbg !7182 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7189, metadata !DIExpression()), !dbg !7190
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7191
  %call = call i64 @arch_atomic64_read(ptr noundef %0) #15, !dbg !7192
  ret i64 %call, !dbg !7193
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_atomic64_read(ptr noundef %v) #8 align 16 !dbg !7194 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7197, metadata !DIExpression()), !dbg !7198
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7199
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !7199
  %1 = load volatile i64, ptr %counter, align 8, !dbg !7199
  ret i64 %1, !dbg !7200
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !7201 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #8 align 16 !dbg !7202 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7206, metadata !DIExpression()), !dbg !7208
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !7207, metadata !DIExpression()), !dbg !7209
  %0 = load i64, ptr %size.addr, align 8, !dbg !7210
  %tobool = icmp ne i64 %0, 0, !dbg !7210
  br i1 %tobool, label %if.end, label %if.then, !dbg !7212

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7213
  br label %return, !dbg !7213

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !7214
  %cmp = icmp ule i64 %1, 8, !dbg !7216
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !7217

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !7218
  br label %return, !dbg !7218

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !7219
  %cmp3 = icmp ugt i64 %2, 64, !dbg !7221
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !7222

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !7223
  %cmp4 = icmp ule i64 %3, 96, !dbg !7224
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !7225

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !7226
  br label %return, !dbg !7226

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !7227
  %cmp7 = icmp ugt i64 %4, 128, !dbg !7229
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !7230

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !7231
  %cmp9 = icmp ule i64 %5, 192, !dbg !7232
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !7233

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !7234
  br label %return, !dbg !7234

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !7235
  %cmp12 = icmp ule i64 %6, 8, !dbg !7237
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !7238

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !7239
  br label %return, !dbg !7239

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !7240
  %cmp15 = icmp ule i64 %7, 16, !dbg !7242
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !7243

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !7244
  br label %return, !dbg !7244

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !7245
  %cmp18 = icmp ule i64 %8, 32, !dbg !7247
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !7248

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !7249
  br label %return, !dbg !7249

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !7250
  %cmp21 = icmp ule i64 %9, 64, !dbg !7252
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !7253

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !7254
  br label %return, !dbg !7254

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !7255
  %cmp24 = icmp ule i64 %10, 128, !dbg !7257
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !7258

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !7259
  br label %return, !dbg !7259

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !7260
  %cmp27 = icmp ule i64 %11, 256, !dbg !7262
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !7263

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !7264
  br label %return, !dbg !7264

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !7265
  %cmp30 = icmp ule i64 %12, 512, !dbg !7267
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !7268

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !7269
  br label %return, !dbg !7269

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !7270
  %cmp33 = icmp ule i64 %13, 1024, !dbg !7272
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !7273

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !7274
  br label %return, !dbg !7274

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !7275
  %cmp36 = icmp ule i64 %14, 2048, !dbg !7277
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !7278

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !7279
  br label %return, !dbg !7279

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !7280
  %cmp39 = icmp ule i64 %15, 4096, !dbg !7282
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !7283

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !7284
  br label %return, !dbg !7284

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !7285
  %cmp42 = icmp ule i64 %16, 8192, !dbg !7287
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !7288

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !7289
  br label %return, !dbg !7289

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !7290
  %cmp45 = icmp ule i64 %17, 16384, !dbg !7292
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !7293

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !7294
  br label %return, !dbg !7294

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !7295
  %cmp48 = icmp ule i64 %18, 32768, !dbg !7297
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !7298

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !7299
  br label %return, !dbg !7299

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !7300
  %cmp51 = icmp ule i64 %19, 65536, !dbg !7302
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !7303

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !7304
  br label %return, !dbg !7304

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !7305
  %cmp54 = icmp ule i64 %20, 131072, !dbg !7307
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !7308

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !7309
  br label %return, !dbg !7309

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !7310
  %cmp57 = icmp ule i64 %21, 262144, !dbg !7312
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !7313

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !7314
  br label %return, !dbg !7314

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !7315
  %cmp60 = icmp ule i64 %22, 524288, !dbg !7317
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !7318

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !7319
  br label %return, !dbg !7319

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !7320
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !7322
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !7323

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !7324
  br label %return, !dbg !7324

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !7325
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !7327
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !7328

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !7329
  br label %return, !dbg !7329

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !7330, !range !7332, !noundef !803
  %tobool69 = trunc i8 %25 to i1, !dbg !7330
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !7333

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !7334

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_245() #19, !dbg !7335, !srcloc !7338
  unreachable, !dbg !7335

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !7339

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !7340

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !7341

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !7343

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !7341

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 480, i32 0, i64 12) #14, !dbg !7345, !srcloc !7347
  br label %do.end75, !dbg !7345

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !7341

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !7348
  br label %return, !dbg !7348

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !7349
  ret i32 %26, !dbg !7349
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !7350 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #8 align 16 !dbg !7353 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7357, metadata !DIExpression()), !dbg !7359
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !7358, metadata !DIExpression()), !dbg !7360
  %0 = load i32, ptr %flags.addr, align 4, !dbg !7361
  %and = and i32 %0, 17, !dbg !7361
  %cmp = icmp eq i32 %and, 0, !dbg !7361
  %lnot = xor i1 %cmp, true, !dbg !7361
  %lnot1 = xor i1 %lnot, true, !dbg !7361
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7361
  %conv = sext i32 %lnot.ext to i64, !dbg !7361
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !7361
  %tobool = icmp ne i64 %expval, 0, !dbg !7361
  br i1 %tobool, label %if.then, label %if.end, !dbg !7363

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7364
  br label %return, !dbg !7364

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !7365
  %and2 = and i32 %1, 1, !dbg !7367
  %tobool3 = icmp ne i32 %and2, 0, !dbg !7367
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !7368

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !7369
  br label %return, !dbg !7369

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !7370
  br label %return, !dbg !7370

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !7372
  ret i32 %2, !dbg !7372
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !7373 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !7374 dso_local void @__compiletime_assert_245() #12

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !7375 dso_local i32 @_printk(ptr noundef, ...) #13

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7379 dso_local void @kfree(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @queue_work(ptr noundef %wq, ptr noundef %work) #3 align 16 !dbg !7382 {
entry:
  %wq.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  store ptr %wq, ptr %wq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wq.addr, metadata !7386, metadata !DIExpression()), !dbg !7388
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !7387, metadata !DIExpression()), !dbg !7389
  %0 = load ptr, ptr %wq.addr, align 8, !dbg !7390
  %1 = load ptr, ptr %work.addr, align 8, !dbg !7391
  %call = call zeroext i1 @queue_work_on(i32 noundef 64, ptr noundef %0, ptr noundef %1) #15, !dbg !7392
  ret i1 %call, !dbg !7393
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7394 dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_syncfs(i32 noundef %fd) #3 align 16 !dbg !7397 {
entry:
  %retval = alloca i64, align 8
  %fd.addr = alloca i32, align 4
  %f = alloca %struct.fd, align 8
  %sb = alloca ptr, align 8
  %ret = alloca i32, align 4
  %ret2 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %fd, ptr %fd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !7401, metadata !DIExpression()), !dbg !7406
  call void @llvm.lifetime.start.p0(i64 16, ptr %f) #14, !dbg !7407
  call void @llvm.dbg.declare(metadata ptr %f, metadata !7402, metadata !DIExpression()), !dbg !7408
  %0 = load i32, ptr %fd.addr, align 4, !dbg !7409
  %call = call { ptr, i32 } @fdget(i32 noundef %0) #15, !dbg !7410
  %1 = getelementptr inbounds { ptr, i32 }, ptr %f, i32 0, i32 0, !dbg !7410
  %2 = extractvalue { ptr, i32 } %call, 0, !dbg !7410
  store ptr %2, ptr %1, align 8, !dbg !7410
  %3 = getelementptr inbounds { ptr, i32 }, ptr %f, i32 0, i32 1, !dbg !7410
  %4 = extractvalue { ptr, i32 } %call, 1, !dbg !7410
  store i32 %4, ptr %3, align 8, !dbg !7410
  call void @llvm.lifetime.start.p0(i64 8, ptr %sb) #14, !dbg !7411
  call void @llvm.dbg.declare(metadata ptr %sb, metadata !7403, metadata !DIExpression()), !dbg !7412
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !7413
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !7404, metadata !DIExpression()), !dbg !7414
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret2) #14, !dbg !7413
  call void @llvm.dbg.declare(metadata ptr %ret2, metadata !7405, metadata !DIExpression()), !dbg !7415
  %file = getelementptr inbounds %struct.fd, ptr %f, i32 0, i32 0, !dbg !7416
  %5 = load ptr, ptr %file, align 8, !dbg !7416
  %tobool = icmp ne ptr %5, null, !dbg !7418
  br i1 %tobool, label %if.end, label %if.then, !dbg !7419

if.then:                                          ; preds = %entry
  store i64 -9, ptr %retval, align 8, !dbg !7420
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7420

if.end:                                           ; preds = %entry
  %file1 = getelementptr inbounds %struct.fd, ptr %f, i32 0, i32 0, !dbg !7421
  %6 = load ptr, ptr %file1, align 8, !dbg !7421
  %f_path = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 10, !dbg !7422
  %dentry = getelementptr inbounds %struct.path, ptr %f_path, i32 0, i32 1, !dbg !7423
  %7 = load ptr, ptr %dentry, align 8, !dbg !7423
  %d_sb = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 9, !dbg !7424
  %8 = load ptr, ptr %d_sb, align 8, !dbg !7424
  store ptr %8, ptr %sb, align 8, !dbg !7425
  %9 = load ptr, ptr %sb, align 8, !dbg !7426
  %s_umount = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 14, !dbg !7427
  call void @down_read(ptr noundef %s_umount) #15, !dbg !7428
  %10 = load ptr, ptr %sb, align 8, !dbg !7429
  %call2 = call i32 @sync_filesystem(ptr noundef %10) #15, !dbg !7430
  store i32 %call2, ptr %ret, align 4, !dbg !7431
  %11 = load ptr, ptr %sb, align 8, !dbg !7432
  %s_umount3 = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 14, !dbg !7433
  call void @up_read(ptr noundef %s_umount3) #15, !dbg !7434
  %12 = load ptr, ptr %sb, align 8, !dbg !7435
  %s_wb_err = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 45, !dbg !7436
  %file4 = getelementptr inbounds %struct.fd, ptr %f, i32 0, i32 0, !dbg !7437
  %13 = load ptr, ptr %file4, align 8, !dbg !7437
  %f_sb_err = getelementptr inbounds %struct.file, ptr %13, i32 0, i32 19, !dbg !7438
  %call5 = call i32 @errseq_check_and_advance(ptr noundef %s_wb_err, ptr noundef %f_sb_err) #15, !dbg !7439
  store i32 %call5, ptr %ret2, align 4, !dbg !7440
  %14 = getelementptr inbounds { ptr, i32 }, ptr %f, i32 0, i32 0, !dbg !7441
  %15 = load ptr, ptr %14, align 8, !dbg !7441
  %16 = getelementptr inbounds { ptr, i32 }, ptr %f, i32 0, i32 1, !dbg !7441
  %17 = load i32, ptr %16, align 8, !dbg !7441
  call void @fdput(ptr %15, i32 %17) #15, !dbg !7441
  %18 = load i32, ptr %ret, align 4, !dbg !7442
  %tobool6 = icmp ne i32 %18, 0, !dbg !7442
  br i1 %tobool6, label %cond.true, label %cond.false, !dbg !7442

cond.true:                                        ; preds = %if.end
  %19 = load i32, ptr %ret, align 4, !dbg !7443
  br label %cond.end, !dbg !7442

cond.false:                                       ; preds = %if.end
  %20 = load i32, ptr %ret2, align 4, !dbg !7444
  br label %cond.end, !dbg !7442

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %19, %cond.true ], [ %20, %cond.false ], !dbg !7442
  %conv = sext i32 %cond to i64, !dbg !7442
  store i64 %conv, ptr %retval, align 8, !dbg !7445
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7445

cleanup:                                          ; preds = %cond.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret2) #14, !dbg !7446
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !7446
  call void @llvm.lifetime.end.p0(i64 8, ptr %sb) #14, !dbg !7446
  call void @llvm.lifetime.end.p0(i64 16, ptr %f) #14, !dbg !7446
  %21 = load i64, ptr %retval, align 8, !dbg !7446
  ret i64 %21, !dbg !7446
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7447 dso_local void @down_read(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7450 dso_local void @up_read(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7451 dso_local i32 @errseq_check_and_advance(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7455 dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_fsync(i32 noundef %fd) #3 align 16 !dbg !7456 {
entry:
  %fd.addr = alloca i32, align 4
  store i32 %fd, ptr %fd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !7460, metadata !DIExpression()), !dbg !7461
  %0 = load i32, ptr %fd.addr, align 4, !dbg !7462
  %call = call i32 @do_fsync(i32 noundef %0, i32 noundef 0) #15, !dbg !7463
  %conv = sext i32 %call to i64, !dbg !7463
  ret i64 %conv, !dbg !7464
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @do_fsync(i32 noundef %fd, i32 noundef %datasync) #0 align 16 !dbg !7465 {
entry:
  %fd.addr = alloca i32, align 4
  %datasync.addr = alloca i32, align 4
  %f = alloca %struct.fd, align 8
  %ret = alloca i32, align 4
  store i32 %fd, ptr %fd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !7469, metadata !DIExpression()), !dbg !7473
  store i32 %datasync, ptr %datasync.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %datasync.addr, metadata !7470, metadata !DIExpression()), !dbg !7474
  call void @llvm.lifetime.start.p0(i64 16, ptr %f) #14, !dbg !7475
  call void @llvm.dbg.declare(metadata ptr %f, metadata !7471, metadata !DIExpression()), !dbg !7476
  %0 = load i32, ptr %fd.addr, align 4, !dbg !7477
  %call = call { ptr, i32 } @fdget(i32 noundef %0) #15, !dbg !7478
  %1 = getelementptr inbounds { ptr, i32 }, ptr %f, i32 0, i32 0, !dbg !7478
  %2 = extractvalue { ptr, i32 } %call, 0, !dbg !7478
  store ptr %2, ptr %1, align 8, !dbg !7478
  %3 = getelementptr inbounds { ptr, i32 }, ptr %f, i32 0, i32 1, !dbg !7478
  %4 = extractvalue { ptr, i32 } %call, 1, !dbg !7478
  store i32 %4, ptr %3, align 8, !dbg !7478
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !7479
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !7472, metadata !DIExpression()), !dbg !7480
  store i32 -9, ptr %ret, align 4, !dbg !7480
  %file = getelementptr inbounds %struct.fd, ptr %f, i32 0, i32 0, !dbg !7481
  %5 = load ptr, ptr %file, align 8, !dbg !7481
  %tobool = icmp ne ptr %5, null, !dbg !7483
  br i1 %tobool, label %if.then, label %if.end, !dbg !7484

if.then:                                          ; preds = %entry
  %file1 = getelementptr inbounds %struct.fd, ptr %f, i32 0, i32 0, !dbg !7485
  %6 = load ptr, ptr %file1, align 8, !dbg !7485
  %7 = load i32, ptr %datasync.addr, align 4, !dbg !7487
  %call2 = call i32 @vfs_fsync(ptr noundef %6, i32 noundef %7) #15, !dbg !7488
  store i32 %call2, ptr %ret, align 4, !dbg !7489
  %8 = getelementptr inbounds { ptr, i32 }, ptr %f, i32 0, i32 0, !dbg !7490
  %9 = load ptr, ptr %8, align 8, !dbg !7490
  %10 = getelementptr inbounds { ptr, i32 }, ptr %f, i32 0, i32 1, !dbg !7490
  %11 = load i32, ptr %10, align 8, !dbg !7490
  call void @fdput(ptr %9, i32 %11) #15, !dbg !7490
  br label %if.end, !dbg !7491

if.end:                                           ; preds = %if.then, %entry
  %12 = load i32, ptr %ret, align 4, !dbg !7492
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !7493
  call void @llvm.lifetime.end.p0(i64 16, ptr %f) #14, !dbg !7493
  ret i32 %12, !dbg !7494
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_fdatasync(i32 noundef %fd) #3 align 16 !dbg !7495 {
entry:
  %fd.addr = alloca i32, align 4
  store i32 %fd, ptr %fd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !7497, metadata !DIExpression()), !dbg !7498
  %0 = load i32, ptr %fd.addr, align 4, !dbg !7499
  %call = call i32 @do_fsync(i32 noundef %0, i32 noundef 1) #15, !dbg !7500
  %conv = sext i32 %call to i64, !dbg !7500
  ret i64 %conv, !dbg !7501
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal { ptr, i32 } @__to_fd(i64 noundef %v) #3 align 16 !dbg !7502 {
entry:
  %retval = alloca %struct.fd, align 8
  %v.addr = alloca i64, align 8
  store i64 %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7506, metadata !DIExpression()), !dbg !7507
  %file = getelementptr inbounds %struct.fd, ptr %retval, i32 0, i32 0, !dbg !7508
  %0 = load i64, ptr %v.addr, align 8, !dbg !7509
  %and = and i64 %0, -4, !dbg !7510
  %1 = inttoptr i64 %and to ptr, !dbg !7511
  store ptr %1, ptr %file, align 8, !dbg !7508
  %flags = getelementptr inbounds %struct.fd, ptr %retval, i32 0, i32 1, !dbg !7508
  %2 = load i64, ptr %v.addr, align 8, !dbg !7512
  %and1 = and i64 %2, 3, !dbg !7513
  %conv = trunc i64 %and1 to i32, !dbg !7512
  store i32 %conv, ptr %flags, align 8, !dbg !7508
  %3 = load { ptr, i32 }, ptr %retval, align 8, !dbg !7514
  ret { ptr, i32 } %3, !dbg !7514
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7515 dso_local i64 @__fdget(i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7518 dso_local void @fput(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_sync_file_range(i32 noundef %fd, i64 noundef %offset, i64 noundef %nbytes, i32 noundef %flags) #3 align 16 !dbg !7519 {
entry:
  %fd.addr = alloca i32, align 4
  %offset.addr = alloca i64, align 8
  %nbytes.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i32 %fd, ptr %fd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !7523, metadata !DIExpression()), !dbg !7527
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !7524, metadata !DIExpression()), !dbg !7527
  store i64 %nbytes, ptr %nbytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nbytes.addr, metadata !7525, metadata !DIExpression()), !dbg !7527
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7526, metadata !DIExpression()), !dbg !7527
  %0 = load i32, ptr %fd.addr, align 4, !dbg !7528
  %1 = load i64, ptr %offset.addr, align 8, !dbg !7529
  %2 = load i64, ptr %nbytes.addr, align 8, !dbg !7530
  %3 = load i32, ptr %flags.addr, align 4, !dbg !7531
  %call = call i32 @ksys_sync_file_range(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #15, !dbg !7532
  %conv = sext i32 %call to i64, !dbg !7532
  ret i64 %conv, !dbg !7533
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_sync_file_range2(i32 noundef %fd, i32 noundef %flags, i64 noundef %offset, i64 noundef %nbytes) #3 align 16 !dbg !7534 {
entry:
  %fd.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %offset.addr = alloca i64, align 8
  %nbytes.addr = alloca i64, align 8
  store i32 %fd, ptr %fd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !7538, metadata !DIExpression()), !dbg !7542
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7539, metadata !DIExpression()), !dbg !7542
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !7540, metadata !DIExpression()), !dbg !7542
  store i64 %nbytes, ptr %nbytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nbytes.addr, metadata !7541, metadata !DIExpression()), !dbg !7542
  %0 = load i32, ptr %fd.addr, align 4, !dbg !7543
  %1 = load i64, ptr %offset.addr, align 8, !dbg !7544
  %2 = load i64, ptr %nbytes.addr, align 8, !dbg !7545
  %3 = load i32, ptr %flags.addr, align 4, !dbg !7546
  %call = call i32 @ksys_sync_file_range(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #15, !dbg !7547
  %conv = sext i32 %call to i64, !dbg !7547
  ret i64 %conv, !dbg !7548
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { noredzone }
attributes #16 = { noredzone allocsize(0) }
attributes #17 = { noredzone allocsize(2) }
attributes #18 = { cold noredzone }
attributes #19 = { noredzone noreturn }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!6440, !6441, !6442, !6443, !6444, !6445, !6446, !6447}
!llvm.ident = !{!6448}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 38, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "fs/sync.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3c1f785293481f3e9e16a8dfa2503d24")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 10)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_sync_filesystem370", scope: !9, file: !2, line: 72, type: !25, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/.sync.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/sync\22 -D KBUILD_BASENAME=\22sync\22 -D KBUILD_MODNAME=\22sync\22 -D __KBUILD_MODNAME=kmod_sync -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/sync.ll fs/sync.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !340, globals: !6420, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !17, !112, !118, !134, !139, !146, !154, !160, !167, !173, !184, !190, !196, !203, !211, !218, !227, !232, !237, !243, !252, !256, !261, !273, !280, !288, !293, !299, !304, !330}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !12, line: 65, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16}
!15 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!16 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !19, file: !18, line: 147, baseType: !13, size: 32, elements: !109)
!18 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !18, line: 135, size: 512, elements: !20)
!20 = !{!21, !24, !26, !28, !32, !33, !49, !107, !108}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !19, file: !18, line: 136, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !19, file: !18, line: 137, baseType: !25, size: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !19, file: !18, line: 138, baseType: !27, size: 32, offset: 128)
!27 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !19, file: !18, line: 139, baseType: !29, size: 16, offset: 160)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !30, line: 24, baseType: !31)
!30 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!31 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !19, file: !18, line: 150, baseType: !17, size: 32, offset: 192)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !19, file: !18, line: 151, baseType: !34, size: 64, offset: 256)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !18, line: 64, baseType: !36)
!36 = !DISubroutineType(types: !37)
!37 = !{!27, !38, !27, !25, !39, !45}
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !30, line: 61, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !42, line: 72, baseType: !43)
!42 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !42, line: 16, baseType: !44)
!44 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !30, line: 52, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !42, line: 88, baseType: !48)
!48 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !19, file: !18, line: 152, baseType: !50, size: 64, offset: 320)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !18, line: 117, size: 256, elements: !52)
!52 = !{!53, !58}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !51, file: !18, line: 118, baseType: !54, size: 32)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !30, line: 174, baseType: !55)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 172, size: 32, elements: !56)
!56 = !{!57}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !55, file: !30, line: 173, baseType: !27, size: 32)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !51, file: !18, line: 119, baseType: !59, size: 192, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !60, line: 41, baseType: !61)
!60 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !60, line: 37, size: 192, elements: !62)
!62 = !{!63, !101}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !61, file: !60, line: 38, baseType: !64, size: 32)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !65, line: 29, baseType: !66)
!65 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !65, line: 17, size: 32, elements: !67)
!67 = !{!68}
!68 = !DIDerivedType(tag: DW_TAG_member, scope: !66, file: !65, line: 18, baseType: !69, size: 32)
!69 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !66, file: !65, line: 18, size: 32, elements: !70)
!70 = !{!71}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !69, file: !65, line: 19, baseType: !72, size: 32)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !73, line: 14, size: 32, elements: !74)
!73 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!74 = !{!75}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !72, file: !73, line: 15, baseType: !76, size: 32)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !77, line: 44, baseType: !78)
!77 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !77, line: 14, size: 32, elements: !79)
!79 = !{!80}
!80 = !DIDerivedType(tag: DW_TAG_member, scope: !78, file: !77, line: 15, baseType: !81, size: 32)
!81 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !78, file: !77, line: 15, size: 32, elements: !82)
!82 = !{!83, !84, !94}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !81, file: !77, line: 16, baseType: !54, size: 32)
!84 = !DIDerivedType(tag: DW_TAG_member, scope: !81, file: !77, line: 24, baseType: !85, size: 16)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !81, file: !77, line: 24, size: 16, elements: !86)
!86 = !{!87, !93}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !85, file: !77, line: 25, baseType: !88, size: 8)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !89, line: 17, baseType: !90)
!89 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !91, line: 21, baseType: !92)
!91 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!92 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !85, file: !77, line: 26, baseType: !88, size: 8, offset: 8)
!94 = !DIDerivedType(tag: DW_TAG_member, scope: !81, file: !77, line: 28, baseType: !95, size: 32)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !81, file: !77, line: 28, size: 32, elements: !96)
!96 = !{!97, !100}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !95, file: !77, line: 29, baseType: !98, size: 16)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !89, line: 19, baseType: !99)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !91, line: 24, baseType: !31)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !95, file: !77, line: 30, baseType: !98, size: 16, offset: 16)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !61, file: !60, line: 39, baseType: !102, size: 128, offset: 64)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !30, line: 190, size: 128, elements: !103)
!103 = !{!104, !106}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !102, file: !30, line: 191, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !102, file: !30, line: 191, baseType: !105, size: 64, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !19, file: !18, line: 153, baseType: !25, size: 64, offset: 384)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !19, file: !18, line: 154, baseType: !25, size: 64, offset: 448)
!109 = !{!110, !111}
!110 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!111 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !113, line: 16, baseType: !13, size: 32, elements: !114)
!113 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!114 = !{!115, !116, !117}
!115 = !DIEnumerator(name: "TT_NONE", value: 0)
!116 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!117 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!118 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !119, line: 1325, baseType: !13, size: 32, elements: !120)
!119 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!120 = !{!121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133}
!121 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!122 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!123 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!124 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!125 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!126 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!127 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!128 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!129 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!130 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!131 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!132 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!133 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writeback_sync_modes", file: !135, line: 32, baseType: !13, size: 32, elements: !136)
!135 = !DIFile(filename: "./include/linux/writeback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "529df0d846991cd3030ee9505d2aaa60")
!136 = !{!137, !138}
!137 = !DIEnumerator(name: "WB_SYNC_NONE", value: 0)
!138 = !DIEnumerator(name: "WB_SYNC_ALL", value: 1)
!139 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !140, line: 15, baseType: !13, size: 32, elements: !141)
!140 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!141 = !{!142, !143, !144, !145}
!142 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!143 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!144 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!145 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !147, line: 68, baseType: !13, size: 32, elements: !148)
!147 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!148 = !{!149, !150, !151, !152, !153}
!149 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!150 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!151 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!152 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!153 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!154 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_unique_id", file: !155, line: 1381, baseType: !13, size: 32, elements: !156)
!155 = !DIFile(filename: "./include/linux/blkdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "802ed60c7d9aff392515db0b7890881d")
!156 = !{!157, !158, !159}
!157 = !DIEnumerator(name: "BLK_UID_T10", value: 1)
!158 = !DIEnumerator(name: "BLK_UID_EUI64", value: 2)
!159 = !DIEnumerator(name: "BLK_UID_NAA", value: 3)
!160 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !161, line: 312, baseType: !13, size: 32, elements: !162)
!161 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!162 = !{!163, !164, !165, !166}
!163 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!164 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!165 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!166 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!167 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !168, line: 26, baseType: !13, size: 32, elements: !169)
!168 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!169 = !{!170, !171, !172}
!170 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!171 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!172 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!173 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "trace_reg", file: !174, line: 253, baseType: !13, size: 32, elements: !175)
!174 = !DIFile(filename: "./include/linux/trace_events.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85bf8311371fd36a6792d4cca4559454")
!175 = !{!176, !177, !178, !179, !180, !181, !182, !183}
!176 = !DIEnumerator(name: "TRACE_REG_REGISTER", value: 0)
!177 = !DIEnumerator(name: "TRACE_REG_UNREGISTER", value: 1)
!178 = !DIEnumerator(name: "TRACE_REG_PERF_REGISTER", value: 2)
!179 = !DIEnumerator(name: "TRACE_REG_PERF_UNREGISTER", value: 3)
!180 = !DIEnumerator(name: "TRACE_REG_PERF_OPEN", value: 4)
!181 = !DIEnumerator(name: "TRACE_REG_PERF_CLOSE", value: 5)
!182 = !DIEnumerator(name: "TRACE_REG_PERF_ADD", value: 6)
!183 = !DIEnumerator(name: "TRACE_REG_PERF_DEL", value: 7)
!184 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "print_line_t", file: !174, line: 158, baseType: !13, size: 32, elements: !185)
!185 = !{!186, !187, !188, !189}
!186 = !DIEnumerator(name: "TRACE_TYPE_PARTIAL_LINE", value: 0)
!187 = !DIEnumerator(name: "TRACE_TYPE_HANDLED", value: 1)
!188 = !DIEnumerator(name: "TRACE_TYPE_UNHANDLED", value: 2)
!189 = !DIEnumerator(name: "TRACE_TYPE_NO_CONSUME", value: 3)
!190 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !191, line: 45, baseType: !13, size: 32, elements: !192)
!191 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!192 = !{!193, !194, !195}
!193 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!194 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!195 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!196 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !197, line: 487, baseType: !13, size: 32, elements: !198)
!197 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!198 = !{!199, !200, !201, !202}
!199 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!200 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!201 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!202 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!203 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !204, line: 620, baseType: !13, size: 32, elements: !205)
!204 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!205 = !{!206, !207, !208, !209, !210}
!206 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!207 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!208 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!209 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!210 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!211 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !204, line: 597, baseType: !27, size: 32, elements: !212)
!212 = !{!213, !214, !215, !216, !217}
!213 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!214 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!215 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!216 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!217 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!218 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !197, line: 547, baseType: !13, size: 32, elements: !219)
!219 = !{!220, !221, !222, !223, !224, !225, !226}
!220 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!221 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!222 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!223 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!224 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!225 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!226 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!227 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !197, line: 564, baseType: !13, size: 32, elements: !228)
!228 = !{!229, !230, !231}
!229 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!230 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!231 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!232 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !197, line: 577, baseType: !13, size: 32, elements: !233)
!233 = !{!234, !235, !236}
!234 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!235 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!236 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!237 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !197, line: 503, baseType: !13, size: 32, elements: !238)
!238 = !{!239, !240, !241, !242}
!239 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!240 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!241 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!242 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!243 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "perf_event_state", file: !244, line: 593, baseType: !27, size: 32, elements: !245)
!244 = !DIFile(filename: "./include/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ce692f6af4d2c300194824e4904b29b")
!245 = !{!246, !247, !248, !249, !250, !251}
!246 = !DIEnumerator(name: "PERF_EVENT_STATE_DEAD", value: -4)
!247 = !DIEnumerator(name: "PERF_EVENT_STATE_EXIT", value: -3)
!248 = !DIEnumerator(name: "PERF_EVENT_STATE_ERROR", value: -2)
!249 = !DIEnumerator(name: "PERF_EVENT_STATE_OFF", value: -1)
!250 = !DIEnumerator(name: "PERF_EVENT_STATE_INACTIVE", value: 0)
!251 = !DIEnumerator(name: "PERF_EVENT_STATE_ACTIVE", value: 1)
!252 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_bounce", file: !155, line: 295, baseType: !13, size: 32, elements: !253)
!253 = !{!254, !255}
!254 = !DIEnumerator(name: "BLK_BOUNCE_NONE", value: 0)
!255 = !DIEnumerator(name: "BLK_BOUNCE_HIGH", value: 1)
!256 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_zoned_model", file: !155, line: 285, baseType: !13, size: 32, elements: !257)
!257 = !{!258, !259, !260}
!258 = !DIEnumerator(name: "BLK_ZONED_NONE", value: 0)
!259 = !DIEnumerator(name: "BLK_ZONED_HA", value: 1)
!260 = !DIEnumerator(name: "BLK_ZONED_HM", value: 2)
!261 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !262, line: 44, baseType: !13, size: 32, elements: !263)
!262 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48876dd2050c245a6230a2e03c4bc3c9")
!263 = !{!264, !265, !266, !267, !268, !269, !270, !271, !272}
!264 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0)
!265 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1)
!266 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2)
!267 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3)
!268 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4)
!269 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5)
!270 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6)
!271 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7)
!272 = !DIEnumerator(name: "WB_REASON_MAX", value: 8)
!273 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !274, line: 51, baseType: !13, size: 32, elements: !275)
!274 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!275 = !{!276, !277, !278, !279}
!276 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!277 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!278 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!279 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!280 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !281, line: 9, baseType: !13, size: 32, elements: !282)
!281 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!282 = !{!283, !284, !285, !286, !287}
!283 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!284 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!285 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!286 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!287 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!288 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !289, line: 2052, baseType: !13, size: 32, elements: !290)
!289 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!290 = !{!291, !292}
!291 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!292 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!293 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !294, line: 54, baseType: !13, size: 32, elements: !295)
!294 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!295 = !{!296, !297, !298}
!296 = !DIEnumerator(name: "USRQUOTA", value: 0)
!297 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!298 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!299 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !300, line: 10, baseType: !13, size: 32, elements: !301)
!300 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!301 = !{!302, !303}
!302 = !DIEnumerator(name: "false", value: 0)
!303 = !DIEnumerator(name: "true", value: 1)
!304 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !305, line: 30, baseType: !13, size: 32, elements: !306)
!305 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!306 = !{!307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329}
!307 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!308 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE_BIT", value: 1)
!309 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!310 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!311 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!312 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!313 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!314 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE", value: 2)
!315 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!316 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!317 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!318 = !DIEnumerator(name: "WORK_NR_COLORS", value: 16)
!319 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 64)
!320 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!321 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!322 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!323 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!324 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!325 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!326 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!327 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!328 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!329 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 32)
!330 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !331, line: 364, baseType: !13, size: 32, elements: !332)
!331 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!332 = !{!333, !334, !335, !336, !337, !338, !339}
!333 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!334 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!335 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!336 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!337 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!338 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!339 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!340 = !{!25, !341, !44, !13, !48, !342, !344, !347, !348, !27, !350, !46}
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !30, line: 154, baseType: !13)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !89, line: 22, baseType: !343)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !91, line: 30, baseType: !48)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !346)
!346 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !48)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !105)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !289, line: 994, size: 1856, align: 64, elements: !352)
!352 = !{!353, !372, !373, !375, !382, !395, !396, !397, !6408, !6409, !6410, !6411, !6412, !6413, !6414, !6415, !6416, !6417, !6418, !6419}
!353 = !DIDerivedType(tag: DW_TAG_member, scope: !351, file: !289, line: 995, baseType: !354, size: 128)
!354 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !351, file: !289, line: 995, size: 128, elements: !355)
!355 = !{!356, !362, !371}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !354, file: !289, line: 996, baseType: !357, size: 64)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !358, line: 60, size: 64, elements: !359)
!358 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!359 = !{!360}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !357, file: !358, line: 61, baseType: !361, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !354, file: !289, line: 997, baseType: !363, size: 128, align: 64)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !30, line: 232, size: 128, align: 64, elements: !364)
!364 = !{!365, !367}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !363, file: !30, line: 233, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !363, file: !30, line: 234, baseType: !368, size: 64, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DISubroutineType(types: !370)
!370 = !{null, !366}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !354, file: !289, line: 998, baseType: !13, size: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !351, file: !289, line: 1005, baseType: !64, size: 32, offset: 128)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !351, file: !289, line: 1006, baseType: !374, size: 32, offset: 160)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !30, line: 156, baseType: !13)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !351, file: !289, line: 1007, baseType: !376, size: 64, offset: 192)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !377, line: 13, baseType: !378)
!377 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !30, line: 181, baseType: !379)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 179, size: 64, elements: !380)
!380 = !{!381}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !379, file: !30, line: 180, baseType: !342, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !351, file: !289, line: 1008, baseType: !383, size: 256, offset: 256)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !384, line: 66, size: 256, elements: !385)
!384 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!385 = !{!386, !387, !389, !394}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !383, file: !384, line: 67, baseType: !376, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !383, file: !384, line: 68, baseType: !388, size: 32, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !73, line: 23, baseType: !72)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !383, file: !384, line: 70, baseType: !390, size: 32, offset: 96)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !391, line: 15, size: 32, elements: !392)
!391 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!392 = !{!393}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !390, file: !391, line: 20, baseType: !54, size: 32)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !383, file: !384, line: 72, baseType: !102, size: 128, offset: 128)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !351, file: !289, line: 1009, baseType: !46, size: 64, offset: 512)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !351, file: !289, line: 1010, baseType: !13, size: 32, offset: 576)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !351, file: !289, line: 1011, baseType: !398, size: 256, offset: 640)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !289, line: 948, size: 256, elements: !399)
!399 = !{!400, !423, !6404, !6405, !6406, !6407}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !398, file: !289, line: 949, baseType: !401, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !402, line: 34, baseType: !403)
!402 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !402, line: 25, size: 64, elements: !404)
!404 = !{!405}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !403, file: !402, line: 26, baseType: !406, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !407, line: 27, baseType: !408)
!407 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !407, line: 13, size: 64, elements: !409)
!409 = !{!410, !422}
!410 = !DIDerivedType(tag: DW_TAG_member, scope: !408, file: !407, line: 14, baseType: !411, size: 32)
!411 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !408, file: !407, line: 14, size: 32, elements: !412)
!412 = !{!413, !414}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !411, file: !407, line: 15, baseType: !54, size: 32)
!414 = !DIDerivedType(tag: DW_TAG_member, scope: !411, file: !407, line: 16, baseType: !415, size: 32)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !411, file: !407, line: 16, size: 32, elements: !416)
!416 = !{!417, !418}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !415, file: !407, line: 18, baseType: !88, size: 8)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !415, file: !407, line: 19, baseType: !419, size: 24, offset: 8)
!419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 24, elements: !420)
!420 = !{!421}
!421 = !DISubrange(count: 3)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !408, file: !407, line: 26, baseType: !76, size: 32, offset: 32)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !398, file: !289, line: 950, baseType: !424, size: 64, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !281, line: 59, size: 768, elements: !426)
!426 = !{!427, !433, !434, !435, !448, !449, !450, !451}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !425, file: !281, line: 61, baseType: !428, size: 32)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !429, line: 113, baseType: !430)
!429 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !429, line: 111, size: 32, elements: !431)
!431 = !{!432}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !430, file: !429, line: 112, baseType: !54, size: 32)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !425, file: !281, line: 62, baseType: !13, size: 32, offset: 32)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !425, file: !281, line: 63, baseType: !64, size: 32, offset: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !425, file: !281, line: 65, baseType: !436, size: 256, offset: 128)
!436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !437, size: 256, elements: !446)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !30, line: 194, size: 64, elements: !438)
!438 = !{!439}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !437, file: !30, line: 195, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !30, line: 198, size: 128, elements: !442)
!442 = !{!443, !444}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !441, file: !30, line: 199, baseType: !440, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !441, file: !30, line: 199, baseType: !445, size: 64, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!446 = !{!447}
!447 = !DISubrange(count: 4)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !425, file: !281, line: 66, baseType: !437, size: 64, offset: 384)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !425, file: !281, line: 68, baseType: !59, size: 192, offset: 448)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !425, file: !281, line: 69, baseType: !363, size: 128, align: 64, offset: 640)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !425, file: !281, line: 70, baseType: !452, offset: 768)
!452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !453, elements: !1230)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !281, line: 54, size: 128, elements: !454)
!454 = !{!455, !456}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !453, file: !281, line: 55, baseType: !27, size: 32)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !453, file: !281, line: 56, baseType: !457, size: 64, offset: 64)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !459, line: 26, size: 1152, elements: !460)
!459 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!460 = !{!461, !474, !475, !476, !6393, !6394, !6395, !6396, !6399, !6400, !6401, !6402, !6403}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !458, file: !459, line: 27, baseType: !462, size: 192)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !463, line: 19, size: 192, elements: !464)
!463 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!464 = !{!465, !472, !473}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !462, file: !463, line: 20, baseType: !466, size: 128)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !467, line: 296, size: 128, elements: !468)
!467 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!468 = !{!469, !470, !471}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !466, file: !467, line: 297, baseType: !64, size: 32)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !466, file: !467, line: 299, baseType: !341, size: 32, offset: 32)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !466, file: !467, line: 300, baseType: !25, size: 64, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !462, file: !463, line: 21, baseType: !13, size: 32, offset: 128)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !462, file: !463, line: 22, baseType: !13, size: 32, offset: 160)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !458, file: !459, line: 28, baseType: !363, size: 128, align: 64, offset: 192)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !458, file: !459, line: 29, baseType: !13, size: 32, offset: 320)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !458, file: !459, line: 30, baseType: !477, size: 64, offset: 384)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !479, line: 746, size: 58368, elements: !480)
!479 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!480 = !{!481, !491, !492, !493, !494, !495, !496, !497, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !573, !584, !684, !688, !691, !722, !723, !724, !725, !736, !738, !739, !740, !741, !742, !743, !754, !755, !758, !759, !760, !761, !762, !763, !764, !765, !772, !773, !780, !781, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1316, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1364, !1370, !1440, !1441, !1442, !1443, !1447, !1450, !1457, !1462, !1465, !1468, !1471, !5664, !5862, !5889, !5890, !5891, !5892, !5893, !5894, !5895, !5896, !5897, !5900, !5901, !5902, !5911, !5919, !5920, !5921, !5922, !5923, !5928, !5929, !5930, !5933, !5934, !5936, !5947, !5950, !5958, !5961, !5962, !6048, !6049, !6050, !6051, !6052, !6058, !6059, !6060, !6061, !6062, !6063, !6066, !6069, !6070, !6073, !6074, !6075, !6076, !6077, !6078, !6079, !6080, !6081, !6094, !6095, !6096, !6097, !6098, !6099, !6100, !6101, !6102, !6113, !6114, !6120, !6123, !6124, !6125, !6126, !6127, !6128, !6129, !6130, !6202, !6204, !6205, !6206, !6207, !6208, !6209, !6212, !6213, !6214, !6215, !6216, !6217, !6218, !6219, !6220, !6221, !6222, !6226, !6227, !6228}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !478, file: !479, line: 752, baseType: !482, size: 192)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !483, line: 56, size: 192, elements: !484)
!483 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!484 = !{!485, !486, !487, !490}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !482, file: !483, line: 57, baseType: !44, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !482, file: !483, line: 58, baseType: !44, size: 64, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !482, file: !483, line: 59, baseType: !488, size: 32, offset: 128)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !89, line: 21, baseType: !489)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !91, line: 27, baseType: !13)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !482, file: !483, line: 61, baseType: !488, size: 32, offset: 160)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !478, file: !479, line: 754, baseType: !13, size: 32, offset: 192)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !478, file: !479, line: 767, baseType: !25, size: 64, offset: 256)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !478, file: !479, line: 768, baseType: !428, size: 32, offset: 320)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !478, file: !479, line: 770, baseType: !13, size: 32, offset: 352)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !478, file: !479, line: 771, baseType: !13, size: 32, offset: 384)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !478, file: !479, line: 774, baseType: !27, size: 32, offset: 416)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !478, file: !479, line: 775, baseType: !498, size: 128, offset: 448)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !499, line: 58, size: 128, elements: !500)
!499 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!500 = !{!501, !502, !507, !508}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !498, file: !499, line: 59, baseType: !357, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, scope: !498, file: !499, line: 60, baseType: !503, size: 32, offset: 64)
!503 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !498, file: !499, line: 60, size: 32, elements: !504)
!504 = !{!505, !506}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !503, file: !499, line: 61, baseType: !13, size: 32)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !503, file: !499, line: 62, baseType: !54, size: 32)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !498, file: !499, line: 65, baseType: !98, size: 16, offset: 96)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !498, file: !499, line: 65, baseType: !98, size: 16, offset: 112)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !478, file: !479, line: 776, baseType: !13, size: 32, offset: 576)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !478, file: !479, line: 777, baseType: !44, size: 64, offset: 640)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !478, file: !479, line: 778, baseType: !477, size: 64, offset: 704)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !478, file: !479, line: 787, baseType: !27, size: 32, offset: 768)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !478, file: !479, line: 788, baseType: !27, size: 32, offset: 800)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !478, file: !479, line: 790, baseType: !27, size: 32, offset: 832)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !478, file: !479, line: 792, baseType: !27, size: 32, offset: 864)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !478, file: !479, line: 793, baseType: !27, size: 32, offset: 896)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !478, file: !479, line: 794, baseType: !27, size: 32, offset: 928)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !478, file: !479, line: 795, baseType: !13, size: 32, offset: 960)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !478, file: !479, line: 797, baseType: !520, size: 2048, offset: 1024)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !479, line: 551, size: 2048, elements: !521)
!521 = !{!522, !527, !535, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !552, !555, !556, !557}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !520, file: !479, line: 553, baseType: !523, size: 128)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !479, line: 411, size: 128, elements: !524)
!524 = !{!525, !526}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !523, file: !479, line: 412, baseType: !44, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !523, file: !479, line: 413, baseType: !488, size: 32, offset: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !520, file: !479, line: 554, baseType: !528, size: 192, align: 64, offset: 128)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !529, line: 5, size: 192, align: 64, elements: !530)
!529 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!530 = !{!531, !532, !534}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !528, file: !529, line: 6, baseType: !44, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !528, file: !529, line: 7, baseType: !533, size: 64, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !528, file: !529, line: 8, baseType: !533, size: 64, offset: 128)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !520, file: !479, line: 555, baseType: !536, size: 64, offset: 320)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !89, line: 23, baseType: !537)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !91, line: 31, baseType: !538)
!538 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !520, file: !479, line: 556, baseType: !536, size: 64, offset: 384)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !520, file: !479, line: 558, baseType: !102, size: 128, offset: 448)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !520, file: !479, line: 559, baseType: !13, size: 32, offset: 576)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !520, file: !479, line: 561, baseType: !536, size: 64, offset: 640)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !520, file: !479, line: 562, baseType: !536, size: 64, offset: 704)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !520, file: !479, line: 563, baseType: !536, size: 64, offset: 768)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !520, file: !479, line: 564, baseType: !536, size: 64, offset: 832)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !520, file: !479, line: 565, baseType: !342, size: 64, offset: 896)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !520, file: !479, line: 566, baseType: !536, size: 64, offset: 960)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !520, file: !479, line: 568, baseType: !536, size: 64, offset: 1024)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !520, file: !479, line: 571, baseType: !27, size: 32, offset: 1088)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !520, file: !479, line: 572, baseType: !551, size: 64, offset: 1152)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !520, file: !479, line: 574, baseType: !553, size: 64, offset: 1216)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !479, line: 49, flags: DIFlagFwdDecl)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !520, file: !479, line: 576, baseType: !553, size: 64, offset: 1280)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !520, file: !479, line: 578, baseType: !44, size: 64, offset: 1344)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !520, file: !479, line: 588, baseType: !558, size: 512, align: 512, offset: 1536)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !479, line: 497, size: 512, align: 512, elements: !559)
!559 = !{!560, !561, !562, !563, !564, !565, !566, !567, !568}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !558, file: !479, line: 498, baseType: !536, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !558, file: !479, line: 499, baseType: !536, size: 64, offset: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !558, file: !479, line: 500, baseType: !536, size: 64, offset: 128)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !558, file: !479, line: 501, baseType: !488, size: 32, offset: 192)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !558, file: !479, line: 502, baseType: !488, size: 32, offset: 224)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !558, file: !479, line: 503, baseType: !44, size: 64, offset: 256)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !558, file: !479, line: 504, baseType: !44, size: 64, offset: 320)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !558, file: !479, line: 505, baseType: !44, size: 64, offset: 384)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !558, file: !479, line: 506, baseType: !569, size: 64, align: 64, offset: 448)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !479, line: 445, size: 64, align: 64, elements: !570)
!570 = !{!571, !572}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !569, file: !479, line: 446, baseType: !13, size: 32)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !569, file: !479, line: 447, baseType: !13, size: 32, offset: 32)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !478, file: !479, line: 798, baseType: !574, size: 384, offset: 3072)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !479, line: 592, size: 384, elements: !575)
!575 = !{!576, !577, !578, !579, !580, !581, !582}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !574, file: !479, line: 593, baseType: !102, size: 128)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !574, file: !479, line: 594, baseType: !44, size: 64, offset: 128)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !574, file: !479, line: 595, baseType: !44, size: 64, offset: 192)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !574, file: !479, line: 596, baseType: !13, size: 32, offset: 256)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !574, file: !479, line: 597, baseType: !31, size: 16, offset: 288)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !574, file: !479, line: 598, baseType: !31, size: 16, offset: 304)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !574, file: !479, line: 600, baseType: !583, size: 64, offset: 320)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !478, file: !479, line: 799, baseType: !585, size: 1792, offset: 3456)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !479, line: 610, size: 1792, elements: !586)
!586 = !{!587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !681, !682}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !585, file: !479, line: 611, baseType: !528, size: 192, align: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !585, file: !479, line: 618, baseType: !536, size: 64, offset: 192)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !585, file: !479, line: 619, baseType: !536, size: 64, offset: 256)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !585, file: !479, line: 620, baseType: !536, size: 64, offset: 320)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !585, file: !479, line: 621, baseType: !536, size: 64, offset: 384)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !585, file: !479, line: 622, baseType: !536, size: 64, offset: 448)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !585, file: !479, line: 629, baseType: !342, size: 64, offset: 512)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !585, file: !479, line: 630, baseType: !536, size: 64, offset: 576)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !585, file: !479, line: 631, baseType: !13, size: 32, offset: 640)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !585, file: !479, line: 653, baseType: !13, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !585, file: !479, line: 654, baseType: !13, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !585, file: !479, line: 655, baseType: !13, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !585, file: !479, line: 656, baseType: !13, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !585, file: !479, line: 662, baseType: !601, size: 512, offset: 704)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !12, line: 118, size: 512, elements: !602)
!602 = !{!603, !611, !612, !617, !677, !678, !679, !680}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !601, file: !12, line: 119, baseType: !604, size: 256)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !605, line: 9, size: 256, elements: !606)
!605 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!606 = !{!607, !608}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !604, file: !605, line: 10, baseType: !528, size: 192, align: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !604, file: !605, line: 11, baseType: !609, size: 64, offset: 192)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !610, line: 29, baseType: !342)
!610 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!611 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !601, file: !12, line: 120, baseType: !609, size: 64, offset: 256)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !601, file: !12, line: 121, baseType: !613, size: 64, offset: 320)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DISubroutineType(types: !615)
!615 = !{!11, !616}
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !601, file: !12, line: 122, baseType: !618, size: 64, offset: 384)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !12, line: 159, size: 512, align: 512, elements: !620)
!620 = !{!621, !646, !647, !650, !660, !661, !672, !676}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !619, file: !12, line: 160, baseType: !622, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !12, line: 215, size: 4608, align: 512, elements: !624)
!624 = !{!625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !623, file: !12, line: 216, baseType: !388, size: 32)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !623, file: !12, line: 217, baseType: !13, size: 32, offset: 32)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !623, file: !12, line: 218, baseType: !13, size: 32, offset: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !623, file: !12, line: 219, baseType: !13, size: 32, offset: 96)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !623, file: !12, line: 220, baseType: !13, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !623, file: !12, line: 221, baseType: !13, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !623, file: !12, line: 222, baseType: !13, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !623, file: !12, line: 223, baseType: !13, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !623, file: !12, line: 224, baseType: !13, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !623, file: !12, line: 226, baseType: !13, size: 32, offset: 160)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !623, file: !12, line: 227, baseType: !31, size: 16, offset: 192)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !623, file: !12, line: 228, baseType: !31, size: 16, offset: 208)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !623, file: !12, line: 229, baseType: !13, size: 32, offset: 224)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !623, file: !12, line: 235, baseType: !609, size: 64, offset: 256)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !623, file: !12, line: 236, baseType: !616, size: 64, offset: 320)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !623, file: !12, line: 237, baseType: !609, size: 64, offset: 384)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !623, file: !12, line: 238, baseType: !616, size: 64, offset: 448)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !623, file: !12, line: 239, baseType: !643, size: 4096, align: 512, offset: 512)
!643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !619, size: 4096, align: 512, elements: !644)
!644 = !{!645}
!645 = !DISubrange(count: 8)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !619, file: !12, line: 161, baseType: !13, size: 32, offset: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !619, file: !12, line: 162, baseType: !648, size: 32, offset: 96)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !30, line: 32, baseType: !649)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !42, line: 96, baseType: !27)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !619, file: !12, line: 163, baseType: !651, size: 32, offset: 128)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !652, line: 274, baseType: !653)
!652 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !652, line: 274, size: 32, elements: !654)
!654 = !{!655}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !653, file: !652, line: 274, baseType: !656, size: 32)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !652, line: 69, baseType: !657)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !652, line: 64, size: 32, elements: !658)
!658 = !{!659}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !657, file: !652, line: 65, baseType: !13, size: 32)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !619, file: !12, line: 164, baseType: !616, size: 64, offset: 192)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !619, file: !12, line: 165, baseType: !662, size: 128, offset: 256)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !605, line: 14, size: 128, elements: !663)
!663 = !{!664}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !662, file: !605, line: 15, baseType: !665, size: 128)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !529, line: 26, size: 128, elements: !666)
!666 = !{!667, !671}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !665, file: !529, line: 27, baseType: !668, size: 64)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !529, line: 12, size: 64, elements: !669)
!669 = !{!670}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !668, file: !529, line: 13, baseType: !533, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !665, file: !529, line: 28, baseType: !533, size: 64, offset: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !619, file: !12, line: 166, baseType: !673, size: 64, offset: 384)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DISubroutineType(types: !675)
!675 = !{!609}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !619, file: !12, line: 167, baseType: !609, size: 64, offset: 448)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !601, file: !12, line: 123, baseType: !88, size: 8, offset: 448)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !601, file: !12, line: 124, baseType: !88, size: 8, offset: 456)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !601, file: !12, line: 125, baseType: !88, size: 8, offset: 464)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !601, file: !12, line: 126, baseType: !88, size: 8, offset: 472)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !585, file: !479, line: 671, baseType: !601, size: 512, offset: 1216)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !585, file: !479, line: 679, baseType: !683, size: 64, offset: 1728)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !478, file: !479, line: 800, baseType: !685, size: 64, offset: 5248)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !687)
!687 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !479, line: 800, flags: DIFlagFwdDecl)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !478, file: !479, line: 809, baseType: !689, size: 64, offset: 5312)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !479, line: 70, flags: DIFlagFwdDecl)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !478, file: !479, line: 825, baseType: !692, size: 2048, align: 512, offset: 5632)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !479, line: 509, size: 2048, align: 512, elements: !693)
!693 = !{!694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !692, file: !479, line: 511, baseType: !536, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !692, file: !479, line: 512, baseType: !536, size: 64, offset: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !692, file: !479, line: 513, baseType: !536, size: 64, offset: 128)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !692, file: !479, line: 514, baseType: !536, size: 64, offset: 192)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !692, file: !479, line: 515, baseType: !536, size: 64, offset: 256)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !692, file: !479, line: 516, baseType: !536, size: 64, offset: 320)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !692, file: !479, line: 518, baseType: !536, size: 64, offset: 384)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !692, file: !479, line: 519, baseType: !536, size: 64, offset: 448)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !692, file: !479, line: 520, baseType: !342, size: 64, offset: 512)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !692, file: !479, line: 522, baseType: !536, size: 64, offset: 576)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !692, file: !479, line: 523, baseType: !536, size: 64, offset: 640)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !692, file: !479, line: 524, baseType: !342, size: 64, offset: 704)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !692, file: !479, line: 526, baseType: !342, size: 64, offset: 768)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !692, file: !479, line: 527, baseType: !536, size: 64, offset: 832)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !692, file: !479, line: 529, baseType: !536, size: 64, offset: 896)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !692, file: !479, line: 530, baseType: !536, size: 64, offset: 960)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !692, file: !479, line: 531, baseType: !536, size: 64, offset: 1024)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !692, file: !479, line: 532, baseType: !536, size: 64, offset: 1088)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !692, file: !479, line: 533, baseType: !536, size: 64, offset: 1152)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !692, file: !479, line: 535, baseType: !536, size: 64, offset: 1216)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !692, file: !479, line: 536, baseType: !536, size: 64, offset: 1280)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !692, file: !479, line: 537, baseType: !536, size: 64, offset: 1344)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !692, file: !479, line: 538, baseType: !536, size: 64, offset: 1408)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !692, file: !479, line: 539, baseType: !536, size: 64, offset: 1472)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !692, file: !479, line: 540, baseType: !536, size: 64, offset: 1536)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !692, file: !479, line: 541, baseType: !536, size: 64, offset: 1600)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !692, file: !479, line: 542, baseType: !536, size: 64, offset: 1664)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !692, file: !479, line: 543, baseType: !536, size: 64, offset: 1728)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !478, file: !479, line: 833, baseType: !13, size: 32, offset: 7680)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !478, file: !479, line: 836, baseType: !13, size: 32, offset: 7712)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !478, file: !479, line: 837, baseType: !27, size: 32, offset: 7744)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !478, file: !479, line: 838, baseType: !726, size: 64, offset: 7808)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !728)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !729, line: 19, baseType: !730)
!729 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !729, line: 19, size: 64, elements: !731)
!731 = !{!732}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !730, file: !729, line: 19, baseType: !733, size: 64)
!733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 64, elements: !734)
!734 = !{!735}
!735 = !DISubrange(count: 1)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !478, file: !479, line: 839, baseType: !737, size: 64, offset: 7872)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !478, file: !479, line: 840, baseType: !728, size: 64, offset: 7936)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !478, file: !479, line: 841, baseType: !25, size: 64, offset: 8000)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !478, file: !479, line: 843, baseType: !31, size: 16, offset: 8064)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !478, file: !479, line: 845, baseType: !31, size: 16, offset: 8080)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !478, file: !479, line: 848, baseType: !27, size: 32, offset: 8096)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !478, file: !479, line: 849, baseType: !744, size: 32, offset: 8128)
!744 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !479, line: 718, size: 32, elements: !745)
!745 = !{!746, !753}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !744, file: !479, line: 724, baseType: !747, size: 32)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !744, file: !479, line: 719, size: 32, elements: !748)
!748 = !{!749, !750, !751, !752}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !747, file: !479, line: 720, baseType: !88, size: 8)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !747, file: !479, line: 721, baseType: !88, size: 8, offset: 8)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !747, file: !479, line: 722, baseType: !88, size: 8, offset: 16)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !747, file: !479, line: 723, baseType: !88, size: 8, offset: 24)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !744, file: !479, line: 725, baseType: !488, size: 32)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !478, file: !479, line: 850, baseType: !102, size: 128, offset: 8192)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !478, file: !479, line: 851, baseType: !756, size: 64, offset: 8320)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !479, line: 60, flags: DIFlagFwdDecl)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !478, file: !479, line: 855, baseType: !44, size: 64, offset: 8384)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !478, file: !479, line: 856, baseType: !88, size: 8, offset: 8448)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !478, file: !479, line: 857, baseType: !88, size: 8, offset: 8456)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !478, file: !479, line: 858, baseType: !27, size: 32, offset: 8480)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !478, file: !479, line: 859, baseType: !102, size: 128, offset: 8512)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !478, file: !479, line: 860, baseType: !27, size: 32, offset: 8640)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !478, file: !479, line: 861, baseType: !102, size: 128, offset: 8704)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !478, file: !479, line: 873, baseType: !766, size: 256, offset: 8832)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !479, line: 376, size: 256, elements: !767)
!767 = !{!768, !769, !770, !771}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !766, file: !479, line: 381, baseType: !44, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !766, file: !479, line: 384, baseType: !538, size: 64, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !766, file: !479, line: 389, baseType: !538, size: 64, offset: 128)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !766, file: !479, line: 392, baseType: !538, size: 64, offset: 192)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !478, file: !479, line: 875, baseType: !102, size: 128, offset: 9088)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !478, file: !479, line: 877, baseType: !774, size: 320, offset: 9216)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !775, line: 86, size: 320, elements: !776)
!775 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!776 = !{!777, !778, !779}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !774, file: !775, line: 87, baseType: !27, size: 32)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !774, file: !775, line: 88, baseType: !102, size: 128, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !774, file: !775, line: 89, baseType: !102, size: 128, offset: 192)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !478, file: !479, line: 878, baseType: !528, size: 192, align: 64, offset: 9536)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !478, file: !479, line: 881, baseType: !782, size: 64, offset: 9728)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !119, line: 733, size: 10240, elements: !784)
!784 = !{!785, !1228}
!785 = !DIDerivedType(tag: DW_TAG_member, scope: !783, file: !119, line: 734, baseType: !786, size: 10240)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !783, file: !119, line: 734, size: 10240, elements: !787)
!787 = !{!788, !792, !806, !810, !811, !812, !813, !814, !815, !824, !825, !826, !832, !833, !834, !835, !836, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !873, !885, !888, !937, !938, !939, !942, !1214, !1215, !1218, !1219, !1220, !1226, !1227}
!788 = !DIDerivedType(tag: DW_TAG_member, scope: !786, file: !119, line: 739, baseType: !789, size: 512, align: 512)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !786, file: !119, line: 739, size: 512, align: 512, elements: !790)
!790 = !{!791}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !789, file: !119, line: 747, baseType: !54, size: 32)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !786, file: !119, line: 750, baseType: !793, size: 128, offset: 512)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !794, line: 218, size: 128, elements: !795)
!794 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!795 = !{!796, !804, !805}
!796 = !DIDerivedType(tag: DW_TAG_member, scope: !793, file: !794, line: 219, baseType: !797, size: 32)
!797 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !793, file: !794, line: 219, size: 32, elements: !798)
!798 = !{!799, !800}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !797, file: !794, line: 220, baseType: !64, size: 32)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !797, file: !794, line: 221, baseType: !801)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !794, line: 197, baseType: !802)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !794, line: 197, elements: !803)
!803 = !{}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !793, file: !794, line: 223, baseType: !13, size: 32, offset: 32)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !793, file: !794, line: 224, baseType: !25, size: 64, offset: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !786, file: !119, line: 752, baseType: !807, size: 64, offset: 640)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DISubroutineType(types: !809)
!809 = !{!44, !350, !44, !44, !44, !44}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !786, file: !119, line: 756, baseType: !44, size: 64, offset: 704)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !786, file: !119, line: 757, baseType: !44, size: 64, offset: 768)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !786, file: !119, line: 760, baseType: !44, size: 64, offset: 832)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !786, file: !119, line: 761, baseType: !44, size: 64, offset: 896)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !786, file: !119, line: 763, baseType: !44, size: 64, offset: 960)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !786, file: !119, line: 764, baseType: !816, size: 64, offset: 1024)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !818, line: 299, baseType: !819)
!818 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !818, line: 299, size: 64, elements: !820)
!820 = !{!821}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !819, file: !818, line: 299, baseType: !822, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !823, line: 18, baseType: !44)
!823 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!824 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !786, file: !119, line: 773, baseType: !54, size: 32, offset: 1088)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !786, file: !119, line: 785, baseType: !54, size: 32, offset: 1120)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !786, file: !119, line: 795, baseType: !827, size: 64, offset: 1152)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !119, line: 726, size: 128, elements: !829)
!829 = !{!830, !831}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !828, file: !119, line: 727, baseType: !536, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !828, file: !119, line: 728, baseType: !27, size: 32, offset: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !786, file: !119, line: 801, baseType: !44, size: 64, offset: 1216)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !786, file: !119, line: 804, baseType: !376, size: 64, offset: 1280)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !786, file: !119, line: 806, baseType: !27, size: 32, offset: 1344)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !786, file: !119, line: 808, baseType: !64, size: 32, offset: 1376)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !786, file: !119, line: 823, baseType: !837, size: 320, offset: 1408)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !838, line: 48, size: 320, elements: !839)
!838 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!839 = !{!840, !841, !842, !843, !844}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !837, file: !838, line: 49, baseType: !376, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !837, file: !838, line: 55, baseType: !376, size: 64, offset: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !837, file: !838, line: 57, baseType: !390, size: 32, offset: 128)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !837, file: !838, line: 59, baseType: !388, size: 32, offset: 160)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !837, file: !838, line: 60, baseType: !102, size: 128, offset: 192)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !786, file: !119, line: 825, baseType: !102, size: 128, offset: 1728)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !786, file: !119, line: 845, baseType: !27, size: 32, offset: 1856)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !786, file: !119, line: 849, baseType: !44, size: 64, offset: 1920)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !786, file: !119, line: 850, baseType: !44, size: 64, offset: 1984)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !786, file: !119, line: 852, baseType: !44, size: 64, offset: 2048)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !786, file: !119, line: 853, baseType: !44, size: 64, offset: 2112)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !786, file: !119, line: 854, baseType: !378, size: 64, offset: 2176)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !786, file: !119, line: 855, baseType: !44, size: 64, offset: 2240)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !786, file: !119, line: 856, baseType: !44, size: 64, offset: 2304)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !786, file: !119, line: 857, baseType: !44, size: 64, offset: 2368)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !786, file: !119, line: 858, baseType: !44, size: 64, offset: 2432)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !786, file: !119, line: 865, baseType: !656, size: 32, offset: 2496)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !786, file: !119, line: 867, baseType: !64, size: 32, offset: 2528)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !786, file: !119, line: 869, baseType: !44, size: 64, offset: 2560)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !786, file: !119, line: 869, baseType: !44, size: 64, offset: 2624)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !786, file: !119, line: 869, baseType: !44, size: 64, offset: 2688)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !786, file: !119, line: 869, baseType: !44, size: 64, offset: 2752)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !786, file: !119, line: 870, baseType: !44, size: 64, offset: 2816)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !786, file: !119, line: 870, baseType: !44, size: 64, offset: 2880)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !786, file: !119, line: 870, baseType: !44, size: 64, offset: 2944)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !786, file: !119, line: 871, baseType: !44, size: 64, offset: 3008)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !786, file: !119, line: 871, baseType: !44, size: 64, offset: 3072)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !786, file: !119, line: 871, baseType: !44, size: 64, offset: 3136)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !786, file: !119, line: 871, baseType: !44, size: 64, offset: 3200)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !786, file: !119, line: 873, baseType: !870, size: 3328, offset: 3264)
!870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 3328, elements: !871)
!871 = !{!872}
!872 = !DISubrange(count: 52)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !786, file: !119, line: 875, baseType: !874, size: 1280, offset: 6592)
!874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !875, size: 1280, elements: !446)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !876, line: 22, size: 320, elements: !877)
!876 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!877 = !{!878, !879, !880, !881}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !875, file: !876, line: 23, baseType: !388, size: 32)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !875, file: !876, line: 24, baseType: !342, size: 64, offset: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !875, file: !876, line: 26, baseType: !102, size: 128, offset: 128)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !875, file: !876, line: 28, baseType: !882, size: 64, offset: 256)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !89, line: 20, baseType: !884)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !91, line: 26, baseType: !27)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !786, file: !119, line: 877, baseType: !886, size: 64, offset: 7872)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !119, line: 877, flags: DIFlagFwdDecl)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !786, file: !119, line: 880, baseType: !889, size: 1088, offset: 7936)
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !890, line: 72, baseType: !891)
!890 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !890, line: 23, size: 1088, elements: !892)
!892 = !{!893, !894, !895, !896, !897, !900, !901, !902, !903, !931, !932, !933}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !891, file: !890, line: 28, baseType: !536, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !891, file: !890, line: 38, baseType: !378, size: 64, offset: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !891, file: !890, line: 40, baseType: !44, size: 64, offset: 128)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !891, file: !890, line: 43, baseType: !837, size: 320, offset: 192)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !891, file: !890, line: 44, baseType: !898, size: 64, offset: 512)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !890, line: 44, flags: DIFlagFwdDecl)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !891, file: !890, line: 48, baseType: !44, size: 64, offset: 576)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !891, file: !890, line: 59, baseType: !383, size: 256, offset: 640)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !891, file: !890, line: 60, baseType: !25, size: 64, offset: 896)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !891, file: !890, line: 61, baseType: !904, size: 64, offset: 960)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !906)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !907, line: 13, size: 1216, elements: !908)
!907 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!908 = !{!909, !910, !911, !912, !913, !914, !915, !918, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !906, file: !907, line: 14, baseType: !25, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !906, file: !907, line: 15, baseType: !44, size: 64, offset: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !906, file: !907, line: 17, baseType: !44, size: 64, offset: 128)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !906, file: !907, line: 17, baseType: !44, size: 64, offset: 192)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !906, file: !907, line: 18, baseType: !44, size: 64, offset: 256)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !906, file: !907, line: 18, baseType: !44, size: 64, offset: 320)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !906, file: !907, line: 19, baseType: !916, size: 64, offset: 384)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !906, file: !907, line: 21, baseType: !919, size: 64, offset: 448)
!919 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !906, file: !907, line: 23, baseType: !919, size: 64, offset: 512)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !906, file: !907, line: 24, baseType: !919, size: 64, offset: 576)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !906, file: !907, line: 25, baseType: !919, size: 64, offset: 640)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !906, file: !907, line: 26, baseType: !919, size: 64, offset: 704)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !906, file: !907, line: 27, baseType: !919, size: 64, offset: 768)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !906, file: !907, line: 28, baseType: !919, size: 64, offset: 832)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !906, file: !907, line: 29, baseType: !919, size: 64, offset: 896)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !906, file: !907, line: 30, baseType: !919, size: 64, offset: 960)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !906, file: !907, line: 31, baseType: !919, size: 64, offset: 1024)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !906, file: !907, line: 32, baseType: !919, size: 64, offset: 1088)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !906, file: !907, line: 33, baseType: !919, size: 64, offset: 1152)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !891, file: !890, line: 63, baseType: !54, size: 32, offset: 1024)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !891, file: !890, line: 69, baseType: !98, size: 16, offset: 1056)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !891, file: !890, line: 70, baseType: !934, size: 16, offset: 1072)
!934 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !89, line: 18, baseType: !935)
!935 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !91, line: 23, baseType: !936)
!936 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !786, file: !119, line: 882, baseType: !44, size: 64, offset: 9024)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !786, file: !119, line: 885, baseType: !64, size: 32, offset: 9088)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !786, file: !119, line: 886, baseType: !940, size: 64, offset: 9152)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !119, line: 732, flags: DIFlagFwdDecl)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !786, file: !119, line: 901, baseType: !943, size: 64, offset: 9216)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !945, line: 68, size: 4800, elements: !946)
!945 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!946 = !{!947, !969, !970, !971, !972, !973, !981, !988, !999, !1000, !1003, !1004, !1115, !1116, !1127, !1197, !1198, !1210, !1212}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !944, file: !945, line: 69, baseType: !948, size: 576)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !945, line: 23, size: 576, elements: !949)
!949 = !{!950, !951}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !948, file: !945, line: 24, baseType: !488, size: 32)
!951 = !DIDerivedType(tag: DW_TAG_member, scope: !948, file: !945, line: 25, baseType: !952, size: 512, offset: 64)
!952 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !948, file: !945, line: 25, size: 512, elements: !953)
!953 = !{!954, !963}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !952, file: !945, line: 26, baseType: !955, size: 480)
!955 = !DICompositeType(tag: DW_TAG_array_type, baseType: !956, size: 480, elements: !961)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !945, line: 17, size: 96, elements: !957)
!957 = !{!958, !959, !960}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !956, file: !945, line: 18, baseType: !488, size: 32)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !956, file: !945, line: 19, baseType: !488, size: 32, offset: 32)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !956, file: !945, line: 20, baseType: !488, size: 32, offset: 64)
!961 = !{!962}
!962 = !DISubrange(count: 5)
!963 = !DIDerivedType(tag: DW_TAG_member, scope: !952, file: !945, line: 27, baseType: !964, size: 128)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !952, file: !945, line: 27, size: 128, elements: !965)
!965 = !{!966, !968}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !964, file: !945, line: 28, baseType: !967, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !964, file: !945, line: 29, baseType: !967, size: 64, offset: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !944, file: !945, line: 70, baseType: !948, size: 576, offset: 576)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !944, file: !945, line: 71, baseType: !948, size: 576, offset: 1152)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !944, file: !945, line: 72, baseType: !943, size: 64, offset: 1728)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !944, file: !945, line: 73, baseType: !27, size: 32, offset: 1792)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !944, file: !945, line: 74, baseType: !974, size: 32, offset: 1824)
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !975, line: 23, baseType: !976)
!975 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !975, line: 21, size: 32, elements: !977)
!977 = !{!978}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !976, file: !975, line: 22, baseType: !979, size: 32)
!979 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !30, line: 37, baseType: !980)
!980 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !42, line: 49, baseType: !13)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !944, file: !945, line: 75, baseType: !982, size: 32, offset: 1856)
!982 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !975, line: 28, baseType: !983)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !975, line: 26, size: 32, elements: !984)
!984 = !{!985}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !983, file: !975, line: 27, baseType: !986, size: 32)
!986 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !30, line: 38, baseType: !987)
!987 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !42, line: 50, baseType: !13)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !944, file: !945, line: 76, baseType: !989, size: 192, offset: 1920)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !990, line: 9, size: 192, elements: !991)
!990 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!991 = !{!992, !993, !997, !998}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !989, file: !990, line: 10, baseType: !376, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !989, file: !990, line: 11, baseType: !994, size: 64, offset: 64)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !996)
!996 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !990, line: 7, flags: DIFlagFwdDecl)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !989, file: !990, line: 12, baseType: !13, size: 32, offset: 128)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !989, file: !990, line: 13, baseType: !428, size: 32, offset: 160)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !944, file: !945, line: 77, baseType: !44, size: 64, offset: 2112)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !944, file: !945, line: 80, baseType: !1001, size: 8, offset: 2176)
!1001 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !30, line: 35, baseType: !1002)
!1002 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !944, file: !945, line: 88, baseType: !102, size: 128, offset: 2240)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !944, file: !945, line: 89, baseType: !1005, size: 64, offset: 2368)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1007, line: 195, size: 1728, elements: !1008)
!1007 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1008 = !{!1009, !1010, !1013, !1018, !1019, !1022, !1023, !1030, !1031, !1032, !1033, !1036, !1037, !1038, !1039, !1040, !1079, !1100}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1006, file: !1007, line: 196, baseType: !428, size: 32)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1006, file: !1007, line: 197, baseType: !1011, size: 32, offset: 32)
!1011 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1007, line: 28, baseType: !1012)
!1012 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !30, line: 104, baseType: !883)
!1013 = !DIDerivedType(tag: DW_TAG_member, scope: !1006, file: !1007, line: 198, baseType: !1014, size: 192, offset: 64)
!1014 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1006, file: !1007, line: 198, size: 192, elements: !1015)
!1015 = !{!1016, !1017}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1014, file: !1007, line: 199, baseType: !102, size: 128)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1014, file: !1007, line: 200, baseType: !528, size: 192, align: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1006, file: !1007, line: 205, baseType: !837, size: 320, offset: 256)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1006, file: !1007, line: 206, baseType: !1020, size: 64, offset: 576)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1007, line: 206, flags: DIFlagFwdDecl)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1006, file: !1007, line: 207, baseType: !25, size: 64, offset: 640)
!1023 = !DIDerivedType(tag: DW_TAG_member, scope: !1006, file: !1007, line: 208, baseType: !1024, size: 64, offset: 704)
!1024 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1006, file: !1007, line: 208, size: 64, elements: !1025)
!1025 = !{!1026, !1029}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1024, file: !1007, line: 209, baseType: !1027, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1028, line: 8, baseType: !343)
!1028 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1024, file: !1007, line: 210, baseType: !1027, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1006, file: !1007, line: 212, baseType: !1027, size: 64, offset: 768)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1006, file: !1007, line: 213, baseType: !974, size: 32, offset: 832)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1006, file: !1007, line: 214, baseType: !982, size: 32, offset: 864)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1006, file: !1007, line: 215, baseType: !1034, size: 32, offset: 896)
!1034 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1007, line: 31, baseType: !1035)
!1035 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !30, line: 110, baseType: !488)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1006, file: !1007, line: 216, baseType: !31, size: 16, offset: 928)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1006, file: !1007, line: 217, baseType: !31, size: 16, offset: 944)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1006, file: !1007, line: 221, baseType: !936, size: 16, offset: 960)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1006, file: !1007, line: 228, baseType: !44, size: 64, offset: 1024)
!1040 = !DIDerivedType(tag: DW_TAG_member, scope: !1006, file: !1007, line: 245, baseType: !1041, size: 320, offset: 1088)
!1041 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1006, file: !1007, line: 245, size: 320, elements: !1042)
!1042 = !{!1043, !1070}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1041, file: !1007, line: 246, baseType: !1044, size: 320)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1007, line: 114, size: 320, elements: !1045)
!1045 = !{!1046, !1047, !1059, !1062, !1069}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1044, file: !1007, line: 116, baseType: !44, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, scope: !1044, file: !1007, line: 117, baseType: !1048, size: 64, offset: 64)
!1048 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1044, file: !1007, line: 117, size: 64, elements: !1049)
!1049 = !{!1050, !1058}
!1050 = !DIDerivedType(tag: DW_TAG_member, scope: !1048, file: !1007, line: 118, baseType: !1051, size: 64)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1048, file: !1007, line: 118, size: 64, elements: !1052)
!1052 = !{!1053, !1054}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1051, file: !1007, line: 120, baseType: !98, size: 16)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1051, file: !1007, line: 121, baseType: !1055, size: 48, offset: 16)
!1055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !1056)
!1056 = !{!1057}
!1057 = !DISubrange(count: 6)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1048, file: !1007, line: 127, baseType: !44, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1044, file: !1007, line: 129, baseType: !1060, size: 64, offset: 128)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1007, line: 102, flags: DIFlagFwdDecl)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1044, file: !1007, line: 130, baseType: !1063, size: 64, offset: 192)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1007, line: 108, size: 192, elements: !1065)
!1065 = !{!1066, !1067, !1068}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1064, file: !1007, line: 109, baseType: !363, size: 128, align: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1064, file: !1007, line: 110, baseType: !428, size: 32, offset: 128)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1064, file: !1007, line: 111, baseType: !1001, size: 8, offset: 160)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1044, file: !1007, line: 131, baseType: !22, size: 64, offset: 256)
!1070 = !DIDerivedType(tag: DW_TAG_member, scope: !1041, file: !1007, line: 247, baseType: !1071, size: 320)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1041, file: !1007, line: 247, size: 320, elements: !1072)
!1072 = !{!1073, !1074, !1075, !1076, !1077}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1071, file: !1007, line: 248, baseType: !44, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1071, file: !1007, line: 249, baseType: !44, size: 64, offset: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1071, file: !1007, line: 250, baseType: !1060, size: 64, offset: 128)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1071, file: !1007, line: 251, baseType: !1063, size: 64, offset: 192)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1071, file: !1007, line: 252, baseType: !1078, size: 64, offset: 256)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, scope: !1006, file: !1007, line: 260, baseType: !1080, size: 256, offset: 1408)
!1080 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1006, file: !1007, line: 260, size: 256, elements: !1081)
!1081 = !{!1082, !1088}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1080, file: !1007, line: 261, baseType: !1083, size: 256)
!1083 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1007, line: 134, size: 256, elements: !1084)
!1084 = !{!1085, !1086}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1083, file: !1007, line: 135, baseType: !25, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1083, file: !1007, line: 136, baseType: !1087, size: 256)
!1087 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 256, elements: !446)
!1088 = !DIDerivedType(tag: DW_TAG_member, scope: !1080, file: !1007, line: 262, baseType: !1089, size: 256)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1080, file: !1007, line: 262, size: 256, elements: !1090)
!1090 = !{!1091, !1092}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1089, file: !1007, line: 264, baseType: !102, size: 128)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1089, file: !1007, line: 265, baseType: !1093, size: 128, offset: 128)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1094, line: 22, size: 128, elements: !1095)
!1094 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1095 = !{!1096, !1099}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1093, file: !1094, line: 23, baseType: !1097, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1094, line: 23, flags: DIFlagFwdDecl)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1093, file: !1094, line: 24, baseType: !44, size: 64, offset: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1006, file: !1007, line: 280, baseType: !1101, size: 64, offset: 1664)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1007, line: 176, size: 192, elements: !1103)
!1103 = !{!1104, !1113, !1114}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1102, file: !1007, line: 177, baseType: !1105, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1007, line: 171, baseType: !1106)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!27, !1005, !1109, !1111, !1005}
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1061)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1083)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1102, file: !1007, line: 178, baseType: !1005, size: 64, offset: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1102, file: !1007, line: 179, baseType: !1060, size: 64, offset: 128)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !944, file: !945, line: 90, baseType: !837, size: 320, offset: 2432)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !944, file: !945, line: 97, baseType: !1117, size: 256, offset: 2752)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !305, line: 98, size: 256, elements: !1118)
!1118 = !{!1119, !1120, !1121}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1117, file: !305, line: 99, baseType: !376, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1117, file: !305, line: 100, baseType: !102, size: 128, offset: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1117, file: !305, line: 101, baseType: !1122, size: 64, offset: 192)
!1122 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !305, line: 21, baseType: !1123)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{null, !1126}
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !944, file: !945, line: 99, baseType: !1128, size: 768, offset: 3008)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !18, line: 199, size: 768, elements: !1129)
!1129 = !{!1130, !1135}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1128, file: !18, line: 200, baseType: !1131, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{!27, !1134}
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1128, file: !18, line: 201, baseType: !1136, size: 704, offset: 64)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !18, line: 193, size: 704, elements: !1137)
!1137 = !{!1138, !1196}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1136, file: !18, line: 195, baseType: !1139, size: 640)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !18, line: 173, size: 640, elements: !1140)
!1140 = !{!1141, !1153, !1165, !1166, !1186, !1187, !1189, !1195}
!1141 = !DIDerivedType(tag: DW_TAG_member, scope: !1139, file: !18, line: 174, baseType: !1142, size: 192)
!1142 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1139, file: !18, line: 174, size: 192, elements: !1143)
!1143 = !{!1144, !1152}
!1144 = !DIDerivedType(tag: DW_TAG_member, scope: !1142, file: !18, line: 175, baseType: !1145, size: 192)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1142, file: !18, line: 175, size: 192, elements: !1146)
!1146 = !{!1147, !1148, !1149, !1150, !1151}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1145, file: !18, line: 176, baseType: !38, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1145, file: !18, line: 177, baseType: !27, size: 32, offset: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1145, file: !18, line: 178, baseType: !27, size: 32, offset: 96)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1145, file: !18, line: 179, baseType: !27, size: 32, offset: 128)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1145, file: !18, line: 180, baseType: !27, size: 32, offset: 160)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1142, file: !18, line: 182, baseType: !363, size: 128, align: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1139, file: !18, line: 184, baseType: !1154, size: 64, offset: 192)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1156, line: 26, size: 256, elements: !1157)
!1156 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1157 = !{!1158, !1159}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1155, file: !1156, line: 27, baseType: !13, size: 32)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1155, file: !1156, line: 28, baseType: !1160, size: 192, offset: 64)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1161, line: 43, size: 192, elements: !1162)
!1161 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1162 = !{!1163, !1164}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1160, file: !1161, line: 44, baseType: !388, size: 32)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1160, file: !1161, line: 45, baseType: !102, size: 128, offset: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1139, file: !18, line: 185, baseType: !38, size: 64, offset: 256)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1139, file: !18, line: 186, baseType: !1167, size: 64, offset: 320)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !18, line: 204, size: 960, elements: !1169)
!1169 = !{!1170, !1171, !1175, !1182}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1168, file: !18, line: 205, baseType: !1128, size: 768)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1168, file: !18, line: 206, baseType: !1172, size: 64, offset: 768)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{!1134, !1167}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1168, file: !18, line: 207, baseType: !1176, size: 64, offset: 832)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{null, !1179, !1180, !1181}
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1168, file: !18, line: 209, baseType: !1183, size: 64, offset: 896)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!27, !1179, !38}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1139, file: !18, line: 187, baseType: !1134, size: 64, offset: 384)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1139, file: !18, line: 188, baseType: !1188, size: 64, offset: 448)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1139, file: !18, line: 189, baseType: !1190, size: 64, offset: 512)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !18, line: 157, size: 256, elements: !1192)
!1192 = !{!1193, !1194}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1191, file: !18, line: 158, baseType: !528, size: 192, align: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1191, file: !18, line: 159, baseType: !1179, size: 64, offset: 192)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1139, file: !18, line: 190, baseType: !437, size: 64, offset: 576)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1136, file: !18, line: 196, baseType: !668, size: 64, offset: 640)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !944, file: !945, line: 100, baseType: !1179, size: 64, offset: 3776)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !944, file: !945, line: 102, baseType: !1199, size: 64, offset: 3840)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !945, line: 107, size: 1152, elements: !1201)
!1201 = !{!1202, !1203, !1204, !1205, !1206, !1208}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1200, file: !945, line: 108, baseType: !441, size: 128)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1200, file: !945, line: 109, baseType: !943, size: 64, offset: 128)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1200, file: !945, line: 110, baseType: !974, size: 32, offset: 192)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1200, file: !945, line: 111, baseType: !54, size: 32, offset: 224)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1200, file: !945, line: 112, baseType: !1207, size: 640, offset: 256)
!1207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !376, size: 640, elements: !5)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1200, file: !945, line: 113, baseType: !1209, size: 256, offset: 896)
!1209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !376, size: 256, elements: !446)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !944, file: !945, line: 103, baseType: !1211, size: 640, offset: 3904)
!1211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !919, size: 640, elements: !5)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !944, file: !945, line: 104, baseType: !1213, size: 256, offset: 4544)
!1213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !919, size: 256, elements: !446)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !786, file: !119, line: 904, baseType: !350, size: 64, offset: 9280)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !786, file: !119, line: 906, baseType: !1216, size: 64, offset: 9344)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !119, line: 906, flags: DIFlagFwdDecl)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !786, file: !119, line: 930, baseType: !54, size: 32, offset: 9408)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !786, file: !119, line: 933, baseType: !54, size: 32, offset: 9440)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !786, file: !119, line: 935, baseType: !1221, size: 64, offset: 9472)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !274, line: 103, size: 64, elements: !1222)
!1222 = !{!1223}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1221, file: !274, line: 104, baseType: !1224, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !274, line: 101, flags: DIFlagFwdDecl)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !786, file: !119, line: 940, baseType: !376, size: 64, offset: 9536)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !786, file: !119, line: 942, baseType: !1117, size: 256, offset: 9600)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !783, file: !119, line: 986, baseType: !1229, offset: 10240)
!1229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, elements: !1230)
!1230 = !{!1231}
!1231 = !DISubrange(count: -1)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !478, file: !479, line: 882, baseType: !782, size: 64, offset: 9792)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !478, file: !479, line: 884, baseType: !27, size: 32, offset: 9856)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !478, file: !479, line: 885, baseType: !27, size: 32, offset: 9888)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !478, file: !479, line: 886, baseType: !27, size: 32, offset: 9920)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !478, file: !479, line: 888, baseType: !27, size: 32, offset: 9952)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !478, file: !479, line: 890, baseType: !44, size: 64, offset: 9984)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !478, file: !479, line: 893, baseType: !13, size: 32, offset: 10048)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !478, file: !479, line: 896, baseType: !13, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !478, file: !479, line: 897, baseType: !13, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !478, file: !479, line: 898, baseType: !13, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !478, file: !479, line: 899, baseType: !13, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !478, file: !479, line: 919, baseType: !13, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !478, file: !479, line: 922, baseType: !13, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !478, file: !479, line: 923, baseType: !13, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !478, file: !479, line: 925, baseType: !13, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !478, file: !479, line: 939, baseType: !13, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !478, file: !479, line: 941, baseType: !13, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !478, file: !479, line: 944, baseType: !13, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !478, file: !479, line: 956, baseType: !13, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !478, file: !479, line: 962, baseType: !13, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !478, file: !479, line: 966, baseType: !13, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !478, file: !479, line: 969, baseType: !44, size: 64, offset: 10176)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !478, file: !479, line: 971, baseType: !1255, size: 448, offset: 10240)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !113, line: 25, size: 448, elements: !1256)
!1256 = !{!1257, !1258, !1263}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1255, file: !113, line: 26, baseType: !44, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1255, file: !113, line: 27, baseType: !1259, size: 64, offset: 64)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!919, !1262}
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, scope: !1255, file: !113, line: 28, baseType: !1264, size: 320, offset: 128)
!1264 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1255, file: !113, line: 28, size: 320, elements: !1265)
!1265 = !{!1266, !1276, !1301}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1264, file: !113, line: 37, baseType: !1267, size: 320)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1264, file: !113, line: 30, size: 320, elements: !1268)
!1268 = !{!1269, !1271, !1272, !1273, !1274, !1275}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1267, file: !113, line: 31, baseType: !1270, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1267, file: !113, line: 32, baseType: !488, size: 32, offset: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1267, file: !113, line: 33, baseType: !488, size: 32, offset: 96)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1267, file: !113, line: 34, baseType: !488, size: 32, offset: 128)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1267, file: !113, line: 35, baseType: !536, size: 64, offset: 192)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1267, file: !113, line: 36, baseType: !1270, size: 64, offset: 256)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1264, file: !113, line: 47, baseType: !1277, size: 192)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1264, file: !113, line: 39, size: 192, elements: !1278)
!1278 = !{!1279, !1280, !1281, !1300}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1277, file: !113, line: 40, baseType: !648, size: 32)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1277, file: !113, line: 41, baseType: !112, size: 32, offset: 32)
!1281 = !DIDerivedType(tag: DW_TAG_member, scope: !1277, file: !113, line: 42, baseType: !1282, size: 64, offset: 64)
!1282 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1277, file: !113, line: 42, size: 64, elements: !1283)
!1283 = !{!1284, !1292}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1282, file: !113, line: 43, baseType: !1285, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1287, line: 7, size: 128, elements: !1288)
!1287 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1288 = !{!1289, !1291}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1286, file: !1287, line: 8, baseType: !1290, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !42, line: 93, baseType: !48)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1286, file: !1287, line: 9, baseType: !48, size: 64, offset: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1282, file: !113, line: 44, baseType: !1293, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1295, line: 7, size: 64, elements: !1296)
!1295 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1296 = !{!1297, !1299}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1294, file: !1295, line: 8, baseType: !1298, size: 32)
!1298 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1295, line: 5, baseType: !883)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1294, file: !1295, line: 9, baseType: !883, size: 32, offset: 32)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1277, file: !113, line: 46, baseType: !536, size: 64, offset: 128)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1264, file: !113, line: 55, baseType: !1302, size: 256)
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1264, file: !113, line: 49, size: 256, elements: !1303)
!1303 = !{!1304, !1312, !1313, !1314, !1315}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1302, file: !113, line: 50, baseType: !1305, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1307, line: 36, size: 64, elements: !1308)
!1307 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!1308 = !{!1309, !1310, !1311}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1306, file: !1307, line: 37, baseType: !27, size: 32)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1306, file: !1307, line: 38, baseType: !936, size: 16, offset: 32)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1306, file: !1307, line: 39, baseType: !936, size: 16, offset: 48)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1302, file: !113, line: 51, baseType: !27, size: 32, offset: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1302, file: !113, line: 52, baseType: !27, size: 32, offset: 96)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1302, file: !113, line: 53, baseType: !44, size: 64, offset: 128)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1302, file: !113, line: 54, baseType: !44, size: 64, offset: 192)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !478, file: !479, line: 973, baseType: !1317, size: 32, offset: 10688)
!1317 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !30, line: 27, baseType: !1318)
!1318 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !42, line: 28, baseType: !27)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !478, file: !479, line: 974, baseType: !1317, size: 32, offset: 10720)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !478, file: !479, line: 978, baseType: !44, size: 64, offset: 10752)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !478, file: !479, line: 987, baseType: !477, size: 64, offset: 10816)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !478, file: !479, line: 990, baseType: !477, size: 64, offset: 10880)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !478, file: !479, line: 995, baseType: !102, size: 128, offset: 10944)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !478, file: !479, line: 996, baseType: !102, size: 128, offset: 11072)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !478, file: !479, line: 997, baseType: !477, size: 64, offset: 11200)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !478, file: !479, line: 1005, baseType: !102, size: 128, offset: 11264)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !478, file: !479, line: 1006, baseType: !102, size: 128, offset: 11392)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !478, file: !479, line: 1009, baseType: !424, size: 64, offset: 11520)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !478, file: !479, line: 1010, baseType: !1330, size: 512, offset: 11584)
!1330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, size: 512, elements: !446)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !478, file: !479, line: 1011, baseType: !102, size: 128, offset: 12096)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !478, file: !479, line: 1012, baseType: !102, size: 128, offset: 12224)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !478, file: !479, line: 1014, baseType: !1154, size: 64, offset: 12352)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !478, file: !479, line: 1017, baseType: !347, size: 64, offset: 12416)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !478, file: !479, line: 1020, baseType: !347, size: 64, offset: 12480)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !478, file: !479, line: 1023, baseType: !25, size: 64, offset: 12544)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !478, file: !479, line: 1025, baseType: !536, size: 64, offset: 12608)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !478, file: !479, line: 1026, baseType: !536, size: 64, offset: 12672)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !478, file: !479, line: 1031, baseType: !536, size: 64, offset: 12736)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !478, file: !479, line: 1032, baseType: !1341, size: 192, offset: 12800)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !479, line: 324, size: 192, elements: !1342)
!1342 = !{!1343, !1344, !1345}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1341, file: !479, line: 326, baseType: !536, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1341, file: !479, line: 327, baseType: !536, size: 64, offset: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1341, file: !479, line: 328, baseType: !388, size: 32, offset: 128)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !478, file: !479, line: 1041, baseType: !44, size: 64, offset: 12992)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !478, file: !479, line: 1042, baseType: !44, size: 64, offset: 13056)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !478, file: !479, line: 1045, baseType: !536, size: 64, offset: 13120)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !478, file: !479, line: 1048, baseType: !536, size: 64, offset: 13184)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !478, file: !479, line: 1051, baseType: !44, size: 64, offset: 13248)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !478, file: !479, line: 1052, baseType: !44, size: 64, offset: 13312)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !478, file: !479, line: 1055, baseType: !1353, size: 640, offset: 13376)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1354, line: 132, size: 640, elements: !1355)
!1354 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1355 = !{!1356, !1362, !1363}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1353, file: !1354, line: 133, baseType: !1357, size: 576)
!1357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1358, size: 576, elements: !420)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1354, line: 117, size: 192, elements: !1359)
!1359 = !{!1360, !1361}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1358, file: !1354, line: 118, baseType: !536, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1358, file: !1354, line: 119, baseType: !662, size: 128, offset: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1353, file: !1354, line: 134, baseType: !13, size: 32, offset: 576)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1353, file: !1354, line: 135, baseType: !13, size: 32, offset: 608)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !478, file: !479, line: 1058, baseType: !1365, size: 448, offset: 14016)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1354, line: 144, size: 448, elements: !1366)
!1366 = !{!1367, !1368, !1369}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1365, file: !1354, line: 145, baseType: !363, size: 128, align: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1365, file: !1354, line: 146, baseType: !383, size: 256, offset: 128)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1365, file: !1354, line: 147, baseType: !13, size: 32, offset: 384)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !478, file: !479, line: 1064, baseType: !1371, size: 64, offset: 14464)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1373)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1374, line: 110, size: 1472, elements: !1375)
!1374 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1375 = !{!1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1425, !1426, !1427, !1435}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1373, file: !1374, line: 111, baseType: !376, size: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1373, file: !1374, line: 112, baseType: !974, size: 32, offset: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1373, file: !1374, line: 113, baseType: !982, size: 32, offset: 96)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1373, file: !1374, line: 114, baseType: !974, size: 32, offset: 128)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1373, file: !1374, line: 115, baseType: !982, size: 32, offset: 160)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1373, file: !1374, line: 116, baseType: !974, size: 32, offset: 192)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1373, file: !1374, line: 117, baseType: !982, size: 32, offset: 224)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1373, file: !1374, line: 118, baseType: !974, size: 32, offset: 256)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1373, file: !1374, line: 119, baseType: !982, size: 32, offset: 288)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1373, file: !1374, line: 120, baseType: !13, size: 32, offset: 320)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1373, file: !1374, line: 121, baseType: !1387, size: 64, offset: 384)
!1387 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1388, line: 24, baseType: !1389)
!1388 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1388, line: 24, size: 64, elements: !1390)
!1390 = !{!1391}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1389, file: !1388, line: 24, baseType: !536, size: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1373, file: !1374, line: 122, baseType: !1387, size: 64, offset: 448)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1373, file: !1374, line: 123, baseType: !1387, size: 64, offset: 512)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1373, file: !1374, line: 124, baseType: !1387, size: 64, offset: 576)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1373, file: !1374, line: 125, baseType: !1387, size: 64, offset: 640)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1373, file: !1374, line: 127, baseType: !92, size: 8, offset: 704)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1373, file: !1374, line: 129, baseType: !1005, size: 64, offset: 768)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1373, file: !1374, line: 130, baseType: !1005, size: 64, offset: 832)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1373, file: !1374, line: 131, baseType: !1005, size: 64, offset: 896)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1373, file: !1374, line: 132, baseType: !1005, size: 64, offset: 960)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1373, file: !1374, line: 135, baseType: !25, size: 64, offset: 1024)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1373, file: !1374, line: 137, baseType: !1403, size: 64, offset: 1088)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1405, line: 14, size: 1088, elements: !1406)
!1405 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1406 = !{!1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1404, file: !1405, line: 15, baseType: !428, size: 32)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1404, file: !1405, line: 17, baseType: !875, size: 320, offset: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1404, file: !1405, line: 19, baseType: !44, size: 64, offset: 384)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1404, file: !1405, line: 20, baseType: !376, size: 64, offset: 448)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1404, file: !1405, line: 23, baseType: !441, size: 128, offset: 512)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1404, file: !1405, line: 24, baseType: !974, size: 32, offset: 640)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1404, file: !1405, line: 29, baseType: !376, size: 64, offset: 704)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1404, file: !1405, line: 36, baseType: !1415, size: 320, offset: 768)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1416, line: 15, size: 320, elements: !1417)
!1416 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1417 = !{!1418, !1419, !1420, !1421, !1422, !1423, !1424}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1415, file: !1416, line: 16, baseType: !388, size: 32)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1415, file: !1416, line: 18, baseType: !27, size: 32, offset: 32)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1415, file: !1416, line: 19, baseType: !27, size: 32, offset: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1415, file: !1416, line: 20, baseType: !27, size: 32, offset: 96)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1415, file: !1416, line: 21, baseType: !27, size: 32, offset: 128)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1415, file: !1416, line: 22, baseType: !44, size: 64, offset: 192)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1415, file: !1416, line: 23, baseType: !44, size: 64, offset: 256)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1373, file: !1374, line: 138, baseType: !943, size: 64, offset: 1152)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1373, file: !1374, line: 139, baseType: !1199, size: 64, offset: 1216)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1373, file: !1374, line: 140, baseType: !1428, size: 64, offset: 1280)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1374, line: 25, size: 64, elements: !1430)
!1430 = !{!1431, !1432, !1433}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1429, file: !1374, line: 26, baseType: !54, size: 32)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1429, file: !1374, line: 27, baseType: !27, size: 32, offset: 32)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1429, file: !1374, line: 28, baseType: !1434, offset: 64)
!1434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !982, elements: !1230)
!1435 = !DIDerivedType(tag: DW_TAG_member, scope: !1373, file: !1374, line: 142, baseType: !1436, size: 128, offset: 1344)
!1436 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1373, file: !1374, line: 142, size: 128, elements: !1437)
!1437 = !{!1438, !1439}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1436, file: !1374, line: 143, baseType: !27, size: 32)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1436, file: !1374, line: 144, baseType: !363, size: 128, align: 64)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !478, file: !479, line: 1067, baseType: !1371, size: 64, offset: 14528)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !478, file: !479, line: 1070, baseType: !1371, size: 64, offset: 14592)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !478, file: !479, line: 1074, baseType: !1005, size: 64, offset: 14656)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !478, file: !479, line: 1084, baseType: !1444, size: 128, offset: 14720)
!1444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !1445)
!1445 = !{!1446}
!1446 = !DISubrange(count: 16)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !478, file: !479, line: 1086, baseType: !1448, size: 64, offset: 14848)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !479, line: 55, flags: DIFlagFwdDecl)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !478, file: !479, line: 1089, baseType: !1451, size: 64, offset: 14912)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1452, line: 12, size: 64, elements: !1453)
!1452 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1453 = !{!1454}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1451, file: !1452, line: 13, baseType: !1455, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1452, line: 8, flags: DIFlagFwdDecl)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !478, file: !479, line: 1090, baseType: !1458, size: 128, offset: 14976)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1459, line: 13, size: 128, elements: !1460)
!1459 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1460 = !{!1461}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1458, file: !1459, line: 14, baseType: !102, size: 128)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !478, file: !479, line: 1097, baseType: !1463, size: 64, offset: 15104)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !479, line: 50, flags: DIFlagFwdDecl)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !478, file: !479, line: 1100, baseType: !1466, size: 64, offset: 15168)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !479, line: 1100, flags: DIFlagFwdDecl)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !478, file: !479, line: 1103, baseType: !1469, size: 64, offset: 15232)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !479, line: 53, flags: DIFlagFwdDecl)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !478, file: !479, line: 1107, baseType: !1472, size: 64, offset: 15296)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1474, line: 31, size: 576, elements: !1475)
!1474 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!1475 = !{!1476, !1477, !1480, !1483, !1486, !1487, !1490, !1493, !1494}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1473, file: !1474, line: 32, baseType: !428, size: 32)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !1473, file: !1474, line: 33, baseType: !1478, size: 64, offset: 64)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !1474, line: 9, flags: DIFlagFwdDecl)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !1473, file: !1474, line: 34, baseType: !1481, size: 64, offset: 128)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !1474, line: 10, flags: DIFlagFwdDecl)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !1473, file: !1474, line: 35, baseType: !1484, size: 64, offset: 192)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !1474, line: 8, flags: DIFlagFwdDecl)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !1473, file: !1474, line: 36, baseType: !457, size: 64, offset: 256)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !1473, file: !1474, line: 37, baseType: !1488, size: 64, offset: 320)
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1489 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1007, line: 34, flags: DIFlagFwdDecl)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !1473, file: !1474, line: 38, baseType: !1491, size: 64, offset: 384)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !1474, line: 38, flags: DIFlagFwdDecl)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !1473, file: !1474, line: 39, baseType: !1491, size: 64, offset: 448)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !1473, file: !1474, line: 40, baseType: !1495, size: 64, offset: 512)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !1497, line: 771, size: 384, elements: !1498)
!1497 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!1498 = !{!1499, !1500, !1501, !1502}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1496, file: !1497, line: 772, baseType: !989, size: 192)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1496, file: !1497, line: 773, baseType: !943, size: 64, offset: 192)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1496, file: !1497, line: 774, baseType: !1199, size: 64, offset: 256)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !1496, file: !1497, line: 775, baseType: !1503, size: 64, offset: 320)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1505, line: 209, size: 4736, elements: !1506)
!1505 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!1506 = !{!1507, !5643, !5644, !5645, !5646, !5647, !5648, !5649, !5650, !5651, !5652, !5653, !5654, !5655, !5656, !5657, !5658, !5659, !5660, !5661, !5662, !5663}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !1504, file: !1505, line: 215, baseType: !1508, size: 896)
!1508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1509, size: 896, elements: !5473)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !1505, line: 152, size: 1600, elements: !1511)
!1511 = !{!1512, !5524, !5627, !5628, !5629, !5630, !5631, !5632, !5633, !5634, !5635, !5636, !5642}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !1510, file: !1505, line: 154, baseType: !1513, size: 64)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !1505, line: 389, size: 7872, elements: !1515)
!1515 = !{!1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !5439, !5445, !5446, !5450, !5451, !5452, !5453, !5454, !5455, !5470, !5471, !5475, !5476, !5477, !5499, !5500, !5501, !5502, !5503, !5504, !5505, !5506, !5507, !5511, !5514, !5515, !5522}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !1514, file: !1505, line: 391, baseType: !1510, size: 1600)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1514, file: !1505, line: 393, baseType: !44, size: 64, offset: 1600)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1514, file: !1505, line: 401, baseType: !27, size: 32, offset: 1664)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !1514, file: !1505, line: 404, baseType: !27, size: 32, offset: 1696)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !1514, file: !1505, line: 417, baseType: !27, size: 32, offset: 1728)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !1514, file: !1505, line: 418, baseType: !27, size: 32, offset: 1760)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !1514, file: !1505, line: 419, baseType: !27, size: 32, offset: 1792)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !1514, file: !1505, line: 432, baseType: !27, size: 32, offset: 1824)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !1514, file: !1505, line: 433, baseType: !27, size: 32, offset: 1856)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !1514, file: !1505, line: 434, baseType: !27, size: 32, offset: 1888)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !1514, file: !1505, line: 436, baseType: !27, size: 32, offset: 1920)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !1514, file: !1505, line: 439, baseType: !13, size: 32, offset: 1952)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1514, file: !1505, line: 441, baseType: !1529, size: 64, offset: 1984)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1531, line: 190, size: 1152, elements: !1532)
!1531 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1532 = !{!1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !5431, !5432, !5433, !5434, !5435, !5438}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1530, file: !1531, line: 191, baseType: !54, size: 32)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1530, file: !1531, line: 192, baseType: !54, size: 32, offset: 32)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1530, file: !1531, line: 202, baseType: !1529, size: 64, offset: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1530, file: !1531, line: 203, baseType: !22, size: 64, offset: 128)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1530, file: !1531, line: 205, baseType: !528, size: 192, align: 64, offset: 192)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1530, file: !1531, line: 207, baseType: !916, size: 64, offset: 384)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1530, file: !1531, line: 208, baseType: !13, size: 32, offset: 448)
!1540 = !DIDerivedType(tag: DW_TAG_member, scope: !1530, file: !1531, line: 209, baseType: !1541, size: 256, offset: 512)
!1541 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1530, file: !1531, line: 209, size: 256, elements: !1542)
!1542 = !{!1543, !1552, !1556}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1541, file: !1531, line: 210, baseType: !1544, size: 256)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1531, line: 153, size: 256, elements: !1545)
!1545 = !{!1546, !1547, !1548, !1551}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1544, file: !1531, line: 154, baseType: !44, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1544, file: !1531, line: 156, baseType: !668, size: 64, offset: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1544, file: !1531, line: 162, baseType: !1549, size: 64, offset: 128)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1531, line: 162, flags: DIFlagFwdDecl)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1544, file: !1531, line: 167, baseType: !44, size: 64, offset: 192)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1541, file: !1531, line: 211, baseType: !1553, size: 64)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1531, line: 170, size: 64, elements: !1554)
!1554 = !{!1555}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1553, file: !1531, line: 171, baseType: !1529, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1541, file: !1531, line: 212, baseType: !1557, size: 256)
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1531, line: 174, size: 256, elements: !1558)
!1558 = !{!1559, !5426, !5429, !5430}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1557, file: !1531, line: 175, baseType: !1560, size: 64)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1562)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1531, line: 271, size: 768, elements: !1563)
!1563 = !{!1564, !5403, !5407, !5408, !5409, !5410, !5411, !5415, !5416, !5417, !5418, !5422}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1562, file: !1531, line: 276, baseType: !1565, size: 64)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{!27, !1568}
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1531, line: 251, size: 1216, elements: !1570)
!1570 = !{!1571, !1572, !1573, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1569, file: !1531, line: 253, baseType: !1529, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1569, file: !1531, line: 254, baseType: !350, size: 64, offset: 64)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1569, file: !1531, line: 255, baseType: !1574, size: 64, offset: 128)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1576, line: 17, size: 960, elements: !1577)
!1576 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1577 = !{!1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1607, !1608, !1611}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1575, file: !1576, line: 18, baseType: !1078, size: 64)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1575, file: !1576, line: 19, baseType: !40, size: 64, offset: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1575, file: !1576, line: 20, baseType: !40, size: 64, offset: 128)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1575, file: !1576, line: 21, baseType: !40, size: 64, offset: 192)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1575, file: !1576, line: 22, baseType: !40, size: 64, offset: 256)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1575, file: !1576, line: 23, baseType: !46, size: 64, offset: 320)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1575, file: !1576, line: 24, baseType: !46, size: 64, offset: 384)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1575, file: !1576, line: 25, baseType: !383, size: 256, offset: 448)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1575, file: !1576, line: 26, baseType: !1587, size: 64, offset: 704)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1589)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1576, line: 32, size: 256, elements: !1590)
!1590 = !{!1591, !1595, !1599, !1603}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1589, file: !1576, line: 33, baseType: !1592, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DISubroutineType(types: !1594)
!1594 = !{!25, !1574, !45}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1589, file: !1576, line: 34, baseType: !1596, size: 64, offset: 64)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DISubroutineType(types: !1598)
!1598 = !{null, !1574, !25}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1589, file: !1576, line: 35, baseType: !1600, size: 64, offset: 128)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DISubroutineType(types: !1602)
!1602 = !{!25, !1574, !25, !45}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1589, file: !1576, line: 36, baseType: !1604, size: 64, offset: 192)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DISubroutineType(types: !1606)
!1606 = !{!27, !1574, !25}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1575, file: !1576, line: 27, baseType: !27, size: 32, offset: 768)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1575, file: !1576, line: 28, baseType: !1609, size: 64, offset: 832)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !351)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1575, file: !1576, line: 29, baseType: !25, size: 64, offset: 896)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1569, file: !1531, line: 256, baseType: !25, size: 64, offset: 192)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1569, file: !1531, line: 259, baseType: !383, size: 256, offset: 256)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1569, file: !1531, line: 260, baseType: !383, size: 256, offset: 512)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1569, file: !1531, line: 261, baseType: !27, size: 32, offset: 768)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1569, file: !1531, line: 262, baseType: !102, size: 128, offset: 832)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1569, file: !1531, line: 263, baseType: !1078, size: 64, offset: 960)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1569, file: !1531, line: 265, baseType: !40, size: 64, offset: 1024)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1569, file: !1531, line: 266, baseType: !1001, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1569, file: !1531, line: 267, baseType: !1001, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1569, file: !1531, line: 268, baseType: !1622, size: 64, offset: 1152)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1624)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1625, line: 563, size: 1024, elements: !1626)
!1625 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1626 = !{!1627, !1683, !1684, !1688, !1692, !1696, !5369, !5373, !5377, !5381, !5382, !5383, !5387, !5391, !5395, !5399}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1624, file: !1625, line: 564, baseType: !1628, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DISubroutineType(types: !1630)
!1630 = !{null, !1631}
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !119, line: 625, size: 1344, elements: !1633)
!1633 = !{!1634, !1643, !1644, !1650, !1657, !1658, !1663, !1664, !1669, !1670, !1673, !1674, !1675, !1676, !1677, !1678, !1681}
!1634 = !DIDerivedType(tag: DW_TAG_member, scope: !1632, file: !119, line: 628, baseType: !1635, size: 128)
!1635 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1632, file: !119, line: 628, size: 128, elements: !1636)
!1636 = !{!1637, !1642}
!1637 = !DIDerivedType(tag: DW_TAG_member, scope: !1635, file: !119, line: 629, baseType: !1638, size: 128)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1635, file: !119, line: 629, size: 128, elements: !1639)
!1639 = !{!1640, !1641}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1638, file: !119, line: 631, baseType: !44, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1638, file: !119, line: 632, baseType: !44, size: 64, offset: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1635, file: !119, line: 635, baseType: !363, size: 128, align: 64)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1632, file: !119, line: 639, baseType: !782, size: 64, offset: 128)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1632, file: !119, line: 640, baseType: !1645, size: 64, offset: 192)
!1645 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !818, line: 297, baseType: !1646)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !818, line: 297, size: 64, elements: !1647)
!1647 = !{!1648}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1646, file: !818, line: 297, baseType: !1649, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !823, line: 19, baseType: !44)
!1650 = !DIDerivedType(tag: DW_TAG_member, scope: !1632, file: !119, line: 646, baseType: !1651, size: 64, offset: 256)
!1651 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1632, file: !119, line: 646, size: 64, elements: !1652)
!1652 = !{!1653, !1656}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1651, file: !119, line: 647, baseType: !1654, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1655)
!1655 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !119, line: 542, baseType: !44)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1651, file: !119, line: 648, baseType: !1655, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1632, file: !119, line: 666, baseType: !27, size: 32, offset: 320)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1632, file: !119, line: 667, baseType: !1659, size: 64, offset: 384)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !119, line: 579, size: 320, elements: !1661)
!1661 = !{!1662}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1660, file: !119, line: 580, baseType: !837, size: 320)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1632, file: !119, line: 670, baseType: !1001, size: 8, offset: 448)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1632, file: !119, line: 681, baseType: !1665, size: 256, offset: 512)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1632, file: !119, line: 678, size: 256, elements: !1666)
!1666 = !{!1667, !1668}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1665, file: !119, line: 679, baseType: !528, size: 192, align: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1665, file: !119, line: 680, baseType: !44, size: 64, offset: 192)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1632, file: !119, line: 689, baseType: !102, size: 128, offset: 768)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1632, file: !119, line: 691, baseType: !1671, size: 64, offset: 896)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !119, line: 691, flags: DIFlagFwdDecl)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1632, file: !119, line: 694, baseType: !1622, size: 64, offset: 960)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1632, file: !119, line: 697, baseType: !44, size: 64, offset: 1024)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1632, file: !119, line: 699, baseType: !350, size: 64, offset: 1088)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1632, file: !119, line: 700, baseType: !25, size: 64, offset: 1152)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1632, file: !119, line: 711, baseType: !376, size: 64, offset: 1216)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1632, file: !119, line: 717, baseType: !1679, size: 64, offset: 1280)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !119, line: 717, flags: DIFlagFwdDecl)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1632, file: !119, line: 722, baseType: !1682, offset: 1344)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !119, line: 570, elements: !803)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1624, file: !1625, line: 569, baseType: !1628, size: 64, offset: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1624, file: !1625, line: 571, baseType: !1685, size: 64, offset: 128)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{!27, !1631, !44}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1624, file: !1625, line: 572, baseType: !1689, size: 64, offset: 192)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DISubroutineType(types: !1691)
!1691 = !{!27, !1631}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1624, file: !1625, line: 578, baseType: !1693, size: 64, offset: 256)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = !DISubroutineType(types: !1695)
!1695 = !{!27, !1631, !44, !44, !44}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1624, file: !1625, line: 580, baseType: !1697, size: 64, offset: 320)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{!1700, !1701}
!1700 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !119, line: 1184, baseType: !13)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1625, line: 512, size: 896, elements: !1703)
!1703 = !{!1704, !1712, !1713, !1720, !1727, !1737, !5362, !5363, !5365, !5367}
!1704 = !DIDerivedType(tag: DW_TAG_member, scope: !1702, file: !1625, line: 513, baseType: !1705, size: 320)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1702, file: !1625, line: 513, size: 320, elements: !1706)
!1706 = !{!1707, !1708, !1709, !1710, !1711}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1705, file: !1625, line: 514, baseType: !1631, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1705, file: !1625, line: 515, baseType: !341, size: 32, offset: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1705, file: !1625, line: 516, baseType: !44, size: 64, offset: 128)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1705, file: !1625, line: 517, baseType: !44, size: 64, offset: 192)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1705, file: !1625, line: 518, baseType: !44, size: 64, offset: 256)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1702, file: !1625, line: 520, baseType: !118, size: 32, offset: 320)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1702, file: !1625, line: 522, baseType: !1714, size: 64, offset: 384)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !823, line: 22, baseType: !1716)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !823, line: 22, size: 64, elements: !1717)
!1717 = !{!1718}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1716, file: !823, line: 22, baseType: !1719, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !823, line: 15, baseType: !44)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1702, file: !1625, line: 524, baseType: !1721, size: 64, offset: 448)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !818, line: 372, baseType: !1723)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !818, line: 372, size: 64, elements: !1724)
!1724 = !{!1725}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1723, file: !818, line: 372, baseType: !1726, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !823, line: 16, baseType: !44)
!1727 = !DIDerivedType(tag: DW_TAG_member, scope: !1702, file: !1625, line: 527, baseType: !1728, size: 64, offset: 512)
!1728 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1702, file: !1625, line: 527, size: 64, elements: !1729)
!1729 = !{!1730, !1736}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1728, file: !1625, line: 528, baseType: !1731, size: 64)
!1731 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !823, line: 21, baseType: !1732)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !823, line: 21, size: 64, elements: !1733)
!1733 = !{!1734}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1732, file: !823, line: 21, baseType: !1735, size: 64)
!1735 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !823, line: 14, baseType: !44)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1728, file: !1625, line: 529, baseType: !1715, size: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1702, file: !1625, line: 534, baseType: !1738, size: 64, offset: 576)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !119, line: 74, size: 512, align: 128, elements: !1740)
!1740 = !{!1741, !1742, !5356, !5361}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1739, file: !119, line: 75, baseType: !44, size: 64)
!1742 = !DIDerivedType(tag: DW_TAG_member, scope: !1739, file: !119, line: 83, baseType: !1743, size: 320, offset: 64)
!1743 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1739, file: !119, line: 83, size: 320, elements: !1744)
!1744 = !{!1745, !5282, !5296, !5300, !5355}
!1745 = !DIDerivedType(tag: DW_TAG_member, scope: !1743, file: !119, line: 84, baseType: !1746, size: 320)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1743, file: !119, line: 84, size: 320, elements: !1747)
!1747 = !{!1748, !1759, !5276, !5281}
!1748 = !DIDerivedType(tag: DW_TAG_member, scope: !1746, file: !119, line: 90, baseType: !1749, size: 128)
!1749 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1746, file: !119, line: 90, size: 128, elements: !1750)
!1750 = !{!1751, !1752, !1757, !1758}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1749, file: !119, line: 91, baseType: !102, size: 128)
!1752 = !DIDerivedType(tag: DW_TAG_member, scope: !1749, file: !119, line: 94, baseType: !1753, size: 128)
!1753 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1749, file: !119, line: 94, size: 128, elements: !1754)
!1754 = !{!1755, !1756}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1753, file: !119, line: 96, baseType: !25, size: 64)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1753, file: !119, line: 98, baseType: !13, size: 32, offset: 64)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1749, file: !119, line: 102, baseType: !102, size: 128)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1749, file: !119, line: 103, baseType: !102, size: 128)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1746, file: !119, line: 106, baseType: !1760, size: 64, offset: 128)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !289, line: 472, size: 1536, align: 64, elements: !1762)
!1762 = !{!1763, !5160, !5161, !5162, !5163, !5164, !5165, !5166, !5167, !5270, !5271, !5272, !5273, !5274, !5275}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1761, file: !289, line: 473, baseType: !1764, size: 64)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !289, line: 641, size: 4800, elements: !1766)
!1766 = !{!1767, !1768, !1769, !1770, !1771, !1772, !1773, !1776, !1777, !4802, !4803, !4804, !4805, !4806, !4811, !4812, !4813, !4814, !4815, !4816, !4817, !4818, !4819, !4820, !4821, !4822, !4823, !4824, !4825, !4826, !4827, !4828, !4829, !4834, !4835, !4836, !4837, !4838, !4839, !4840, !5142, !5145, !5146, !5147, !5156, !5157, !5158, !5159}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1765, file: !289, line: 642, baseType: !29, size: 16)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1765, file: !289, line: 643, baseType: !31, size: 16, offset: 16)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1765, file: !289, line: 644, baseType: !974, size: 32, offset: 32)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1765, file: !289, line: 645, baseType: !102, size: 128, offset: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1765, file: !289, line: 646, baseType: !982, size: 32, offset: 192)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1765, file: !289, line: 647, baseType: !13, size: 32, offset: 224)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1765, file: !289, line: 650, baseType: !1774, size: 64, offset: 256)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !289, line: 607, flags: DIFlagFwdDecl)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1765, file: !289, line: 651, baseType: !1774, size: 64, offset: 320)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1765, file: !289, line: 654, baseType: !1778, size: 64, offset: 384)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1780)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !289, line: 1966, size: 2048, align: 512, elements: !1781)
!1781 = !{!1782, !4636, !4646, !4650, !4654, !4658, !4662, !4666, !4670, !4674, !4678, !4679, !4683, !4687, !4724, !4753, !4757, !4763, !4767, !4771, !4775, !4779, !4783, !4789, !4793}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1780, file: !289, line: 1967, baseType: !1783, size: 64)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = !DISubroutineType(types: !1785)
!1785 = !{!1786, !1764, !1786, !13}
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1788, line: 82, size: 1536, elements: !1789)
!1788 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!1789 = !{!1790, !1791, !1796, !1804, !1805, !1820, !1821, !1825, !1838, !4619, !4620, !4621, !4622, !4628, !4629, !4630}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !1787, file: !1788, line: 84, baseType: !13, size: 32)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !1787, file: !1788, line: 85, baseType: !1792, size: 32, offset: 32)
!1792 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !652, line: 275, baseType: !1793)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !652, line: 275, size: 32, elements: !1794)
!1794 = !{!1795}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1793, file: !652, line: 275, baseType: !656, size: 32)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1787, file: !1788, line: 86, baseType: !1797, size: 128, offset: 64)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !1798, line: 38, size: 128, elements: !1799)
!1798 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!1799 = !{!1800, !1802}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1797, file: !1798, line: 39, baseType: !1801, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1797, file: !1798, line: 39, baseType: !1803, size: 64, offset: 64)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !1787, file: !1788, line: 87, baseType: !1786, size: 64, offset: 192)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1787, file: !1788, line: 88, baseType: !1806, size: 128, offset: 256)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !1788, line: 49, size: 128, elements: !1807)
!1807 = !{!1808, !1817}
!1808 = !DIDerivedType(tag: DW_TAG_member, scope: !1806, file: !1788, line: 50, baseType: !1809, size: 64)
!1809 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1806, file: !1788, line: 50, size: 64, elements: !1810)
!1810 = !{!1811, !1816}
!1811 = !DIDerivedType(tag: DW_TAG_member, scope: !1809, file: !1788, line: 51, baseType: !1812, size: 64)
!1812 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1809, file: !1788, line: 51, size: 64, elements: !1813)
!1813 = !{!1814, !1815}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1812, file: !1788, line: 52, baseType: !488, size: 32)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1812, file: !1788, line: 52, baseType: !488, size: 32, offset: 32)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1809, file: !1788, line: 54, baseType: !536, size: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1806, file: !1788, line: 56, baseType: !1818, size: 64, offset: 64)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !1787, file: !1788, line: 89, baseType: !1764, size: 64, offset: 384)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !1787, file: !1788, line: 91, baseType: !1822, size: 256, offset: 448)
!1822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 256, elements: !1823)
!1823 = !{!1824}
!1824 = !DISubrange(count: 32)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !1787, file: !1788, line: 94, baseType: !1826, size: 64, offset: 704)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !1827, line: 25, size: 64, elements: !1828)
!1827 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!1828 = !{!1829}
!1829 = !DIDerivedType(tag: DW_TAG_member, scope: !1826, file: !1827, line: 26, baseType: !1830, size: 64)
!1830 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1826, file: !1827, line: 26, size: 64, elements: !1831)
!1831 = !{!1832, !1833}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !1830, file: !1827, line: 28, baseType: !537, size: 64, align: 64)
!1833 = !DIDerivedType(tag: DW_TAG_member, scope: !1830, file: !1827, line: 30, baseType: !1834, size: 64)
!1834 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1830, file: !1827, line: 30, size: 64, elements: !1835)
!1835 = !{!1836, !1837}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1834, file: !1827, line: 31, baseType: !64, size: 32)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1834, file: !1827, line: 32, baseType: !27, size: 32, offset: 32)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !1787, file: !1788, line: 95, baseType: !1839, size: 64, offset: 768)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1841)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !1788, line: 128, size: 1024, align: 512, elements: !1842)
!1842 = !{!1843, !1847, !1848, !1855, !1861, !1865, !1869, !1873, !1874, !1878, !1882, !4609, !4613}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !1841, file: !1788, line: 129, baseType: !1844, size: 64)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{!27, !1786, !13}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !1841, file: !1788, line: 130, baseType: !1844, size: 64, offset: 64)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1841, file: !1788, line: 131, baseType: !1849, size: 64, offset: 128)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DISubroutineType(types: !1851)
!1851 = !{!27, !1852, !1854}
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1787)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !1841, file: !1788, line: 132, baseType: !1856, size: 64, offset: 192)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{!27, !1852, !13, !22, !1859}
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1806)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !1841, file: !1788, line: 134, baseType: !1862, size: 64, offset: 256)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = !DISubroutineType(types: !1864)
!1864 = !{!27, !1852}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !1841, file: !1788, line: 135, baseType: !1866, size: 64, offset: 320)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{!27, !1786}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !1841, file: !1788, line: 136, baseType: !1870, size: 64, offset: 384)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{null, !1786}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !1841, file: !1788, line: 137, baseType: !1870, size: 64, offset: 448)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !1841, file: !1788, line: 138, baseType: !1875, size: 64, offset: 512)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DISubroutineType(types: !1877)
!1877 = !{null, !1786, !1764}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !1841, file: !1788, line: 139, baseType: !1879, size: 64, offset: 576)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = !DISubroutineType(types: !1881)
!1881 = !{!1078, !1786, !1078, !27}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !1841, file: !1788, line: 140, baseType: !1883, size: 64, offset: 640)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DISubroutineType(types: !1885)
!1885 = !{!1886, !4608}
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !1888, line: 70, size: 256, elements: !1889)
!1888 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!1889 = !{!1890, !1891, !4604, !4605}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !1887, file: !1888, line: 71, baseType: !1786, size: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !1887, file: !1888, line: 72, baseType: !1892, size: 64, offset: 64)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !289, line: 1190, size: 10752, elements: !1894)
!1894 = !{!1895, !1896, !1899, !1900, !1901, !1902, !3666, !3818, !3858, !3948, !3952, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3965, !3969, !3970, !4461, !4467, !4468, !4471, !4472, !4473, !4514, !4536, !4537, !4538, !4539, !4540, !4541, !4544, !4545, !4552, !4553, !4554, !4555, !4556, !4571, !4572, !4573, !4574, !4577, !4578, !4579, !4580, !4595, !4596, !4597, !4598, !4599, !4600, !4601, !4602, !4603}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1893, file: !289, line: 1191, baseType: !102, size: 128)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1893, file: !289, line: 1192, baseType: !1897, size: 32, offset: 128)
!1897 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !30, line: 21, baseType: !1898)
!1898 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !30, line: 18, baseType: !488)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1893, file: !289, line: 1193, baseType: !92, size: 8, offset: 160)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1893, file: !289, line: 1194, baseType: !44, size: 64, offset: 192)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1893, file: !289, line: 1195, baseType: !46, size: 64, offset: 256)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1893, file: !289, line: 1196, baseType: !1903, size: 64, offset: 320)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !289, line: 2366, size: 576, elements: !1905)
!1905 = !{!1906, !1907, !1908, !1914, !1918, !1922, !1926, !3654, !3655, !3656, !3658, !3659, !3660, !3662, !3663, !3664, !3665}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1904, file: !289, line: 2367, baseType: !22, size: 64)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1904, file: !289, line: 2368, baseType: !27, size: 32, offset: 64)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1904, file: !289, line: 2376, baseType: !1909, size: 64, offset: 128)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = !DISubroutineType(types: !1911)
!1911 = !{!27, !1912}
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1888, line: 21, flags: DIFlagFwdDecl)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1904, file: !289, line: 2377, baseType: !1915, size: 64, offset: 192)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1917)
!1917 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !289, line: 75, flags: DIFlagFwdDecl)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1904, file: !289, line: 2378, baseType: !1919, size: 64, offset: 256)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{!1786, !1903, !27, !22, !25}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1904, file: !289, line: 2380, baseType: !1923, size: 64, offset: 320)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{null, !1892}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1904, file: !289, line: 2381, baseType: !1927, size: 64, offset: 384)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !161, line: 402, size: 9216, align: 512, elements: !1929)
!1929 = !{!1930, !1931, !1932, !1936, !2116, !2142, !2143, !2144, !2145, !2149, !2152, !2153, !2154, !2207, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2222, !2226, !2246, !2263, !2264, !2265, !2266, !2275, !2298, !2299, !2302, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2316, !2317, !2416, !2424, !2425, !2426, !2428, !3632, !3633, !3642, !3643, !3644, !3645, !3647, !3648, !3649, !3650, !3651, !3652, !3653}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1928, file: !161, line: 403, baseType: !160, size: 32)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1928, file: !161, line: 406, baseType: !102, size: 128, offset: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1928, file: !161, line: 409, baseType: !1933, size: 448, offset: 192)
!1933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !1934)
!1934 = !{!1935}
!1935 = !DISubrange(count: 56)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1928, file: !161, line: 417, baseType: !1937, size: 768, offset: 640)
!1937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !161, line: 45, size: 768, elements: !1938)
!1938 = !{!1939, !2110, !2111, !2112, !2115}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1937, file: !161, line: 46, baseType: !1940, size: 512)
!1940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1941, line: 64, size: 512, elements: !1942)
!1941 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1942 = !{!1943, !1944, !1945, !1947, !1991, !2099, !2100, !2105, !2106, !2107, !2108, !2109}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1940, file: !1941, line: 65, baseType: !22, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1940, file: !1941, line: 66, baseType: !102, size: 128, offset: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1940, file: !1941, line: 67, baseType: !1946, size: 64, offset: 192)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1940, file: !1941, line: 68, baseType: !1948, size: 64, offset: 256)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1941, line: 168, size: 768, elements: !1950)
!1950 = !{!1951, !1952, !1953, !1954}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1949, file: !1941, line: 169, baseType: !102, size: 128)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1949, file: !1941, line: 170, baseType: !64, size: 32, offset: 128)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1949, file: !1941, line: 171, baseType: !1940, size: 512, offset: 192)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1949, file: !1941, line: 172, baseType: !1955, size: 64, offset: 704)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1957)
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1941, line: 133, size: 192, elements: !1958)
!1958 = !{!1959, !1966, !1971}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1957, file: !1941, line: 134, baseType: !1960, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1961)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{!27, !1964}
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1940)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1957, file: !1941, line: 135, baseType: !1967, size: 64, offset: 64)
!1967 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1968)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{!22, !1964}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1957, file: !1941, line: 136, baseType: !1972, size: 64, offset: 128)
!1972 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1973)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{!27, !1964, !1976}
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1941, line: 125, size: 20736, elements: !1978)
!1978 = !{!1979, !1981, !1985, !1986, !1990}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1977, file: !1941, line: 126, baseType: !1980, size: 192)
!1980 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1078, size: 192, elements: !420)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1977, file: !1941, line: 127, baseType: !1982, size: 4096, offset: 192)
!1982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1078, size: 4096, elements: !1983)
!1983 = !{!1984}
!1984 = !DISubrange(count: 64)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1977, file: !1941, line: 128, baseType: !27, size: 32, offset: 4288)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1977, file: !1941, line: 129, baseType: !1987, size: 16384, offset: 4320)
!1987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !1988)
!1988 = !{!1989}
!1989 = !DISubrange(count: 2048)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1977, file: !1941, line: 130, baseType: !27, size: 32, offset: 20704)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1940, file: !1941, line: 69, baseType: !1992, size: 64, offset: 320)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1994)
!1994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1941, line: 116, size: 384, elements: !1995)
!1995 = !{!1996, !2000, !2022, !2060, !2091, !2095}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1994, file: !1941, line: 117, baseType: !1997, size: 64)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DISubroutineType(types: !1999)
!1999 = !{null, !1946}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1994, file: !1941, line: 118, baseType: !2001, size: 64, offset: 64)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2003)
!2003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !2004, line: 254, size: 128, elements: !2005)
!2004 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!2005 = !{!2006, !2018}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2003, file: !2004, line: 255, baseType: !2007, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!2010, !1946, !2013, !1078}
!2010 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !30, line: 66, baseType: !2011)
!2011 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !42, line: 73, baseType: !2012)
!2012 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !42, line: 15, baseType: !919)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !2004, line: 30, size: 128, elements: !2015)
!2015 = !{!2016, !2017}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2014, file: !2004, line: 31, baseType: !22, size: 64)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2014, file: !2004, line: 32, baseType: !29, size: 16, offset: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2003, file: !2004, line: 256, baseType: !2019, size: 64, offset: 64)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DISubroutineType(types: !2021)
!2021 = !{!2010, !1946, !2013, !22, !40}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1994, file: !1941, line: 119, baseType: !2023, size: 64, offset: 128)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2026)
!2026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !2004, line: 84, size: 320, elements: !2027)
!2027 = !{!2028, !2029, !2033, !2056, !2058}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2026, file: !2004, line: 85, baseType: !22, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !2026, file: !2004, line: 86, baseType: !2030, size: 64, offset: 64)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DISubroutineType(types: !2032)
!2032 = !{!29, !1946, !2013, !27}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !2026, file: !2004, line: 88, baseType: !2034, size: 64, offset: 128)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{!29, !1946, !2037, !27}
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !2004, line: 175, size: 512, elements: !2039)
!2039 = !{!2040, !2041, !2042, !2043, !2047, !2051, !2052}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2038, file: !2004, line: 176, baseType: !2014, size: 128)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2038, file: !2004, line: 177, baseType: !40, size: 64, offset: 128)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2038, file: !2004, line: 178, baseType: !25, size: 64, offset: 192)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !2038, file: !2004, line: 179, baseType: !2044, size: 64, offset: 256)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{!1760}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2038, file: !2004, line: 180, baseType: !2048, size: 64, offset: 320)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = !DISubroutineType(types: !2050)
!2050 = !{!2010, !350, !1946, !2037, !1078, !46, !40}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2038, file: !2004, line: 182, baseType: !2048, size: 64, offset: 384)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2038, file: !2004, line: 184, baseType: !2053, size: 64, offset: 448)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DISubroutineType(types: !2055)
!2055 = !{!27, !350, !1946, !2037, !1631}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !2026, file: !2004, line: 90, baseType: !2057, size: 64, offset: 192)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !2026, file: !2004, line: 91, baseType: !2059, size: 64, offset: 256)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1994, file: !1941, line: 120, baseType: !2061, size: 64, offset: 192)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{!2064, !1964}
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2066)
!2066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !168, line: 39, size: 384, elements: !2067)
!2067 = !{!2068, !2069, !2073, !2077, !2083, !2087}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2066, file: !168, line: 40, baseType: !167, size: 32)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2066, file: !168, line: 41, baseType: !2070, size: 64, offset: 64)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DISubroutineType(types: !2072)
!2072 = !{!1001}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2066, file: !168, line: 42, baseType: !2074, size: 64, offset: 128)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = !DISubroutineType(types: !2076)
!2076 = !{!25}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2066, file: !168, line: 43, baseType: !2078, size: 64, offset: 192)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{!916, !2081}
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !168, line: 19, flags: DIFlagFwdDecl)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2066, file: !168, line: 44, baseType: !2084, size: 64, offset: 256)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{!916}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2066, file: !168, line: 45, baseType: !2088, size: 64, offset: 320)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = !DISubroutineType(types: !2090)
!2090 = !{null, !25}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1994, file: !1941, line: 121, baseType: !2092, size: 64, offset: 256)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DISubroutineType(types: !2094)
!2094 = !{!916, !1964}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1994, file: !1941, line: 122, baseType: !2096, size: 64, offset: 320)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DISubroutineType(types: !2098)
!2098 = !{null, !1964, !1180, !1181}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1940, file: !1941, line: 70, baseType: !1529, size: 64, offset: 384)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1940, file: !1941, line: 71, baseType: !2101, size: 32, offset: 448)
!2101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2102, line: 19, size: 32, elements: !2103)
!2102 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2103 = !{!2104}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2101, file: !2102, line: 20, baseType: !428, size: 32)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1940, file: !1941, line: 73, baseType: !13, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1940, file: !1941, line: 74, baseType: !13, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1940, file: !1941, line: 75, baseType: !13, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1940, file: !1941, line: 76, baseType: !13, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1940, file: !1941, line: 77, baseType: !13, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1937, file: !161, line: 47, baseType: !1927, size: 64, offset: 512)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1937, file: !161, line: 48, baseType: !1946, size: 64, offset: 576)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1937, file: !161, line: 49, baseType: !2113, size: 64, offset: 640)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !161, line: 49, flags: DIFlagFwdDecl)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1937, file: !161, line: 50, baseType: !1154, size: 64, offset: 704)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1928, file: !161, line: 418, baseType: !2117, size: 64, offset: 1408)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !161, line: 53, size: 448, elements: !2119)
!2119 = !{!2120, !2121, !2126, !2130, !2134, !2138}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2118, file: !161, line: 54, baseType: !2014, size: 128)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2118, file: !161, line: 55, baseType: !2122, size: 64, offset: 128)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{!2010, !2117, !2125, !1078}
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2118, file: !161, line: 57, baseType: !2127, size: 64, offset: 192)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DISubroutineType(types: !2129)
!2129 = !{!2010, !2117, !2125, !22, !40}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2118, file: !161, line: 59, baseType: !2131, size: 64, offset: 256)
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{null, !1927, !22}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2118, file: !161, line: 60, baseType: !2135, size: 64, offset: 320)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{!27, !1927}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2118, file: !161, line: 61, baseType: !2139, size: 64, offset: 384)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{null, !1927}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1928, file: !161, line: 419, baseType: !22, size: 64, offset: 1472)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1928, file: !161, line: 420, baseType: !22, size: 64, offset: 1536)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1928, file: !161, line: 421, baseType: !1946, size: 64, offset: 1600)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1928, file: !161, line: 424, baseType: !2146, size: 64, offset: 1664)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2148)
!2148 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !161, line: 424, flags: DIFlagFwdDecl)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1928, file: !161, line: 425, baseType: !2150, size: 64, offset: 1728)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !883)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1928, file: !161, line: 426, baseType: !13, size: 32, offset: 1792)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1928, file: !161, line: 435, baseType: !383, size: 256, offset: 1856)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1928, file: !161, line: 437, baseType: !2155, size: 64, offset: 2112)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2157, line: 69, size: 320, elements: !2158)
!2157 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2158 = !{!2159, !2160, !2161, !2178, !2180, !2184, !2185}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2156, file: !2157, line: 70, baseType: !22, size: 64)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2156, file: !2157, line: 71, baseType: !1927, size: 64, offset: 64)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2156, file: !2157, line: 72, baseType: !2162, size: 64, offset: 128)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2164)
!2164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2157, line: 47, size: 256, elements: !2165)
!2165 = !{!2166, !2167, !2173, !2177}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2164, file: !2157, line: 49, baseType: !13, size: 32)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2164, file: !2157, line: 51, baseType: !2168, size: 64, offset: 64)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!27, !22, !2171}
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2156)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2164, file: !2157, line: 53, baseType: !2174, size: 64, offset: 128)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DISubroutineType(types: !2176)
!2176 = !{!27, !1078, !2171}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2164, file: !2157, line: 55, baseType: !2088, size: 64, offset: 192)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2156, file: !2157, line: 73, baseType: !2179, size: 16, offset: 192)
!2179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2156, file: !2157, line: 74, baseType: !2181, size: 8, offset: 208)
!2181 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !89, line: 16, baseType: !2182)
!2182 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !91, line: 20, baseType: !2183)
!2183 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2156, file: !2157, line: 75, baseType: !88, size: 8, offset: 216)
!2185 = !DIDerivedType(tag: DW_TAG_member, scope: !2156, file: !2157, line: 76, baseType: !2186, size: 64, offset: 256)
!2186 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2156, file: !2157, line: 76, size: 64, elements: !2187)
!2187 = !{!2188, !2189, !2196}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2186, file: !2157, line: 77, baseType: !25, size: 64)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2186, file: !2157, line: 78, baseType: !2190, size: 64)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2192)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2157, line: 86, size: 128, elements: !2193)
!2193 = !{!2194, !2195}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2192, file: !2157, line: 87, baseType: !13, size: 32)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2192, file: !2157, line: 88, baseType: !1078, size: 64, offset: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2186, file: !2157, line: 79, baseType: !2197, size: 64)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2199)
!2199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2157, line: 92, size: 256, elements: !2200)
!2200 = !{!2201, !2202, !2203, !2205, !2206}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2199, file: !2157, line: 94, baseType: !13, size: 32)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2199, file: !2157, line: 95, baseType: !13, size: 32, offset: 32)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2199, file: !2157, line: 96, baseType: !2204, size: 64, offset: 64)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2199, file: !2157, line: 97, baseType: !2162, size: 64, offset: 128)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2199, file: !2157, line: 98, baseType: !25, size: 64, offset: 192)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1928, file: !161, line: 438, baseType: !13, size: 32, offset: 2176)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1928, file: !161, line: 441, baseType: !13, size: 32, offset: 2208)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1928, file: !161, line: 442, baseType: !2146, size: 64, offset: 2240)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1928, file: !161, line: 443, baseType: !2150, size: 64, offset: 2304)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1928, file: !161, line: 444, baseType: !1001, size: 8, offset: 2368)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1928, file: !161, line: 451, baseType: !1001, size: 8, offset: 2376)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1928, file: !161, line: 454, baseType: !13, size: 32, offset: 2400)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1928, file: !161, line: 455, baseType: !2215, size: 64, offset: 2432)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2217, line: 23, size: 96, elements: !2218)
!2217 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2218 = !{!2219, !2220, !2221}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2216, file: !2217, line: 24, baseType: !27, size: 32)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2216, file: !2217, line: 24, baseType: !27, size: 32, offset: 32)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2216, file: !2217, line: 24, baseType: !27, size: 32, offset: 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1928, file: !161, line: 458, baseType: !2223, size: 64, offset: 2496)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = !DISubroutineType(types: !2225)
!2225 = !{!27}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1928, file: !161, line: 460, baseType: !2227, size: 4032, align: 512, offset: 2560)
!2227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2228, size: 4032, elements: !2244)
!2228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !161, line: 362, size: 576, elements: !2229)
!2229 = !{!2230, !2231, !2232}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2228, file: !161, line: 363, baseType: !25, size: 64)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2228, file: !161, line: 364, baseType: !13, size: 32, offset: 64)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2228, file: !161, line: 367, baseType: !2233, size: 448, offset: 128)
!2233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !161, line: 319, size: 448, elements: !2234)
!2234 = !{!2235, !2236}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2233, file: !161, line: 320, baseType: !1927, size: 64)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2233, file: !161, line: 321, baseType: !2237, size: 384, offset: 64)
!2237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2238, line: 40, size: 384, elements: !2239)
!2238 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2239 = !{!2240}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2237, file: !2238, line: 41, baseType: !2241, size: 384, align: 64)
!2241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !528, size: 384, align: 64, elements: !2242)
!2242 = !{!2243}
!2243 = !DISubrange(count: 2)
!2244 = !{!2245}
!2245 = !DISubrange(count: 7)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1928, file: !161, line: 463, baseType: !2247, size: 192, offset: 6592)
!2247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2248, line: 8, size: 192, elements: !2249)
!2248 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2249 = !{!2250, !2251, !2252}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2247, file: !2248, line: 10, baseType: !13, size: 32)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2247, file: !2248, line: 11, baseType: !347, size: 64, offset: 64)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2247, file: !2248, line: 12, baseType: !2253, size: 64, offset: 128)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2255, line: 59, size: 48, elements: !2256)
!2255 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2256 = !{!2257, !2258, !2259, !2260, !2261, !2262}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2254, file: !2255, line: 60, baseType: !934, size: 16)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2254, file: !2255, line: 61, baseType: !934, size: 16, offset: 16)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2254, file: !2255, line: 63, baseType: !13, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2254, file: !2255, line: 64, baseType: !13, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2254, file: !2255, line: 65, baseType: !13, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2254, file: !2255, line: 66, baseType: !13, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1928, file: !161, line: 465, baseType: !44, size: 64, offset: 6784)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1928, file: !161, line: 469, baseType: !13, size: 32, offset: 6848)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1928, file: !161, line: 470, baseType: !102, size: 128, offset: 6912)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1928, file: !161, line: 471, baseType: !2267, size: 64, offset: 7040)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2269, line: 33, size: 96, elements: !2270)
!2269 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2270 = !{!2271, !2272, !2273, !2274}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2268, file: !2269, line: 37, baseType: !27, size: 32)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2268, file: !2269, line: 43, baseType: !27, size: 32, offset: 32)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2268, file: !2269, line: 45, baseType: !31, size: 16, offset: 64)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2268, file: !2269, line: 47, baseType: !31, size: 16, offset: 80)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1928, file: !161, line: 476, baseType: !2276, size: 64, offset: 7104)
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !161, line: 378, size: 256, elements: !2278)
!2278 = !{!2279, !2295, !2296, !2297}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2277, file: !161, line: 379, baseType: !2280, size: 64)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2282, line: 204, baseType: !2283)
!2282 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2282, line: 197, size: 192, elements: !2284)
!2284 = !{!2285, !2287, !2288, !2289, !2291, !2293}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2283, file: !2282, line: 198, baseType: !2286, size: 32)
!2286 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2282, line: 21, baseType: !489)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2283, file: !2282, line: 199, baseType: !92, size: 8, offset: 32)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2283, file: !2282, line: 200, baseType: !92, size: 8, offset: 40)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2283, file: !2282, line: 201, baseType: !2290, size: 16, offset: 48)
!2290 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2282, line: 17, baseType: !99)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2283, file: !2282, line: 202, baseType: !2292, size: 64, offset: 64)
!2292 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2282, line: 16, baseType: !537)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2283, file: !2282, line: 203, baseType: !2294, size: 64, offset: 128)
!2294 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2282, line: 22, baseType: !537)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2277, file: !161, line: 380, baseType: !13, size: 32, offset: 64)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2277, file: !161, line: 381, baseType: !1078, size: 64, offset: 128)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2277, file: !161, line: 382, baseType: !1078, size: 64, offset: 192)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1928, file: !161, line: 477, baseType: !2277, size: 256, offset: 7168)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1928, file: !161, line: 480, baseType: !2300, size: 64, offset: 7424)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !161, line: 480, flags: DIFlagFwdDecl)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1928, file: !161, line: 483, baseType: !2303, size: 64, offset: 7488)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !161, line: 483, flags: DIFlagFwdDecl)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1928, file: !161, line: 488, baseType: !1078, size: 64, offset: 7552)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1928, file: !161, line: 492, baseType: !25, size: 64, offset: 7616)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1928, file: !161, line: 493, baseType: !13, size: 32, offset: 7680)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1928, file: !161, line: 495, baseType: !25, size: 64, offset: 7744)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1928, file: !161, line: 496, baseType: !13, size: 32, offset: 7808)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1928, file: !161, line: 499, baseType: !13, size: 32, offset: 7840)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1928, file: !161, line: 500, baseType: !2312, size: 64, offset: 7872)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2314, line: 45, baseType: !2315)
!2314 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1928, file: !161, line: 503, baseType: !13, size: 32, offset: 7936)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1928, file: !161, line: 504, baseType: !2318, size: 64, offset: 8000)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2321, line: 96, size: 192, elements: !2322)
!2321 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2322 = !{!2323, !2324, !2377, !2380}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2320, file: !2321, line: 97, baseType: !13, size: 32)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2320, file: !2321, line: 98, baseType: !2325, size: 64, offset: 64)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2321, line: 24, size: 3072, elements: !2327)
!2327 = !{!2328, !2330, !2331, !2332, !2333, !2346, !2347, !2348, !2349, !2361, !2362, !2363, !2374, !2375, !2376}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2326, file: !2321, line: 26, baseType: !2329, size: 128)
!2329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !376, size: 128, elements: !2242)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2326, file: !2321, line: 27, baseType: !2329, size: 128, offset: 128)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2326, file: !2321, line: 28, baseType: !27, size: 32, offset: 256)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2326, file: !2321, line: 31, baseType: !64, size: 32, align: 512, offset: 512)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2326, file: !2321, line: 32, baseType: !2334, size: 960, offset: 576)
!2334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2335, line: 206, size: 960, elements: !2336)
!2335 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2336 = !{!2337, !2338, !2341, !2343, !2344, !2345}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2334, file: !2335, line: 207, baseType: !366, size: 64)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2334, file: !2335, line: 208, baseType: !2339, size: 256, offset: 64)
!2339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2340, size: 256, elements: !446)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2334, file: !2335, line: 209, baseType: !2342, size: 256, offset: 320)
!2342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 256, elements: !446)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2334, file: !2335, line: 213, baseType: !919, size: 64, offset: 576)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2334, file: !2335, line: 215, baseType: !1213, size: 256, offset: 640)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2334, file: !2335, line: 216, baseType: !88, size: 8, offset: 896)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2326, file: !2321, line: 33, baseType: !44, size: 64, offset: 1536)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2326, file: !2321, line: 34, baseType: !44, size: 64, offset: 1600)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2326, file: !2321, line: 35, baseType: !1001, size: 8, offset: 1664)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2326, file: !2321, line: 36, baseType: !2350, size: 320, offset: 1728)
!2350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2351, line: 11, size: 320, elements: !2352)
!2351 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2352 = !{!2353, !2354, !2355, !2360}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2350, file: !2351, line: 16, baseType: !441, size: 128)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2350, file: !2351, line: 17, baseType: !44, size: 64, offset: 128)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2350, file: !2351, line: 18, baseType: !2356, size: 64, offset: 192)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!2357 = !DISubroutineType(types: !2358)
!2358 = !{null, !2359}
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2350, file: !2351, line: 19, baseType: !488, size: 32, offset: 256)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2326, file: !2321, line: 37, baseType: !1117, size: 256, offset: 2048)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2326, file: !2321, line: 38, baseType: !363, size: 128, align: 64, offset: 2304)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2326, file: !2321, line: 39, baseType: !2364, size: 64, offset: 2432)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2321, line: 49, size: 768, elements: !2366)
!2366 = !{!2367, !2368, !2369, !2370, !2371, !2372, !2373}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2365, file: !2321, line: 50, baseType: !64, size: 32)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2365, file: !2321, line: 51, baseType: !2342, size: 256, offset: 64)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2365, file: !2321, line: 53, baseType: !2342, size: 256, offset: 320)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2365, file: !2321, line: 54, baseType: !44, size: 64, offset: 576)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2365, file: !2321, line: 55, baseType: !2364, size: 64, offset: 640)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2365, file: !2321, line: 56, baseType: !27, size: 32, offset: 704)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2365, file: !2321, line: 57, baseType: !27, size: 32, offset: 736)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2326, file: !2321, line: 40, baseType: !44, size: 64, offset: 2496)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2326, file: !2321, line: 42, baseType: !27, size: 32, offset: 2560)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2326, file: !2321, line: 43, baseType: !2319, size: 64, offset: 2624)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2320, file: !2321, line: 99, baseType: !2378, offset: 128)
!2378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2379, line: 211, elements: !803)
!2379 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2320, file: !2321, line: 100, baseType: !2381, size: 64, offset: 128)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2321, line: 63, size: 3008, elements: !2383)
!2383 = !{!2384, !2385, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2415}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2382, file: !2321, line: 64, baseType: !2364, size: 64)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2382, file: !2321, line: 65, baseType: !2386, size: 192, offset: 64)
!2386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2364, size: 192, elements: !420)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2382, file: !2321, line: 67, baseType: !27, size: 32, offset: 256)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2382, file: !2321, line: 68, baseType: !383, size: 256, offset: 320)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2382, file: !2321, line: 69, baseType: !64, size: 32, offset: 576)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2382, file: !2321, line: 70, baseType: !383, size: 256, offset: 640)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2382, file: !2321, line: 71, baseType: !44, size: 64, offset: 896)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2382, file: !2321, line: 72, baseType: !44, size: 64, offset: 960)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2382, file: !2321, line: 73, baseType: !44, size: 64, offset: 1024)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2382, file: !2321, line: 74, baseType: !44, size: 64, offset: 1088)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2382, file: !2321, line: 75, baseType: !44, size: 64, offset: 1152)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2382, file: !2321, line: 76, baseType: !44, size: 64, offset: 1216)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2382, file: !2321, line: 77, baseType: !44, size: 64, offset: 1280)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2382, file: !2321, line: 78, baseType: !44, size: 64, offset: 1344)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2382, file: !2321, line: 79, baseType: !1001, size: 8, offset: 1408)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2382, file: !2321, line: 80, baseType: !44, size: 64, offset: 1472)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2382, file: !2321, line: 81, baseType: !383, size: 256, offset: 1536)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2382, file: !2321, line: 82, baseType: !1155, size: 256, offset: 1792)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2382, file: !2321, line: 84, baseType: !54, size: 32, offset: 2048)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2382, file: !2321, line: 87, baseType: !44, size: 64, offset: 2112)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2382, file: !2321, line: 88, baseType: !44, size: 64, offset: 2176)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2382, file: !2321, line: 89, baseType: !2407, size: 704, offset: 2240)
!2407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !305, line: 111, size: 704, elements: !2408)
!2408 = !{!2409, !2410, !2411, !2414}
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2407, file: !305, line: 112, baseType: !1117, size: 256)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2407, file: !305, line: 113, baseType: !2350, size: 320, offset: 256)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2407, file: !305, line: 116, baseType: !2412, size: 64, offset: 576)
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !305, line: 18, flags: DIFlagFwdDecl)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2407, file: !305, line: 117, baseType: !27, size: 32, offset: 640)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2382, file: !2321, line: 90, baseType: !2319, size: 64, offset: 2944)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1928, file: !161, line: 515, baseType: !2417, size: 64, offset: 8064)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2419, line: 117, size: 128, elements: !2420)
!2419 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2420 = !{!2421, !2422, !2423}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2418, file: !2419, line: 118, baseType: !883, size: 32)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2418, file: !2419, line: 119, baseType: !883, size: 32, offset: 32)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2418, file: !2419, line: 120, baseType: !919, size: 64, offset: 64)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1928, file: !161, line: 516, baseType: !13, size: 32, offset: 8128)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1928, file: !161, line: 519, baseType: !13, size: 32, offset: 8160)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1928, file: !161, line: 520, baseType: !2427, size: 64, offset: 8192)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1928, file: !161, line: 523, baseType: !2429, size: 64, offset: 8256)
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2430, size: 64)
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !174, line: 372, size: 1024, elements: !2432)
!2432 = !{!2433, !2434, !2474, !2534, !2615, !2616, !2619, !2624, !2625, !2626, !2627, !2629, !2632}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2431, file: !174, line: 373, baseType: !102, size: 128)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2431, file: !174, line: 374, baseType: !2435, size: 64, offset: 128)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_class", file: !174, line: 291, size: 576, elements: !2437)
!2437 = !{!2438, !2439, !2440, !2441, !2445, !2468, !2472, !2473}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !2436, file: !174, line: 292, baseType: !22, size: 64)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2436, file: !174, line: 293, baseType: !25, size: 64, offset: 64)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "perf_probe", scope: !2436, file: !174, line: 295, baseType: !25, size: 64, offset: 128)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !2436, file: !174, line: 297, baseType: !2442, size: 64, offset: 192)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{!27, !2430, !173, !25}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "fields_array", scope: !2436, file: !174, line: 299, baseType: !2446, size: 64, offset: 256)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_fields", file: !174, line: 275, size: 320, elements: !2448)
!2448 = !{!2449, !2450}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2447, file: !174, line: 276, baseType: !22, size: 64)
!2450 = !DIDerivedType(tag: DW_TAG_member, scope: !2447, file: !174, line: 277, baseType: !2451, size: 256, offset: 64)
!2451 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2447, file: !174, line: 277, size: 256, elements: !2452)
!2452 = !{!2453, !2464}
!2453 = !DIDerivedType(tag: DW_TAG_member, scope: !2451, file: !174, line: 278, baseType: !2454, size: 256)
!2454 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2451, file: !174, line: 278, size: 256, elements: !2455)
!2455 = !{!2456, !2457, !2458, !2459, !2461, !2462, !2463}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2454, file: !174, line: 279, baseType: !22, size: 64)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2454, file: !174, line: 280, baseType: !2315, size: 32, offset: 64)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2454, file: !174, line: 281, baseType: !2315, size: 32, offset: 96)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "is_signed", scope: !2454, file: !174, line: 282, baseType: !2460, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2460 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "needs_test", scope: !2454, file: !174, line: 283, baseType: !13, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "filter_type", scope: !2454, file: !174, line: 284, baseType: !2315, size: 32, offset: 160)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2454, file: !174, line: 285, baseType: !2315, size: 32, offset: 192)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "define_fields", scope: !2451, file: !174, line: 287, baseType: !2465, size: 64)
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{!27, !2430}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "get_fields", scope: !2436, file: !174, line: 300, baseType: !2469, size: 64, offset: 320)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = !DISubroutineType(types: !2471)
!2471 = !{!105, !2430}
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !2436, file: !174, line: 301, baseType: !102, size: 128, offset: 384)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "raw_init", scope: !2436, file: !174, line: 302, baseType: !2465, size: 64, offset: 512)
!2474 = !DIDerivedType(tag: DW_TAG_member, scope: !2431, file: !174, line: 375, baseType: !2475, size: 64, offset: 192)
!2475 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2431, file: !174, line: 375, size: 64, elements: !2476)
!2476 = !{!2477, !2478}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2475, file: !174, line: 376, baseType: !22, size: 64)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "tp", scope: !2475, file: !174, line: 378, baseType: !2479, size: 64)
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint", file: !2314, line: 32, size: 640, elements: !2481)
!2481 = !{!2482, !2483, !2495, !2519, !2520, !2521, !2522, !2523, !2527}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2480, file: !2314, line: 33, baseType: !22, size: 64)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2480, file: !2314, line: 34, baseType: !2484, size: 128, offset: 64)
!2484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !2419, line: 85, size: 128, elements: !2485)
!2485 = !{!2486, !2487}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2484, file: !2419, line: 86, baseType: !54, size: 32)
!2487 = !DIDerivedType(tag: DW_TAG_member, scope: !2484, file: !2419, line: 101, baseType: !2488, size: 64, offset: 64)
!2488 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2484, file: !2419, line: 101, size: 64, elements: !2489)
!2489 = !{!2490, !2491, !2492}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2488, file: !2419, line: 102, baseType: !44, size: 64)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !2488, file: !2419, line: 103, baseType: !2417, size: 64)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2488, file: !2419, line: 104, baseType: !2493, size: 64)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !2419, line: 104, flags: DIFlagFwdDecl)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_key", scope: !2480, file: !2314, line: 35, baseType: !2496, size: 64, offset: 192)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_key", file: !2498, line: 61, size: 128, elements: !2499)
!2498 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2499 = !{!2500, !2501}
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2497, file: !2498, line: 62, baseType: !25, size: 64)
!2501 = !DIDerivedType(tag: DW_TAG_member, scope: !2497, file: !2498, line: 63, baseType: !2502, size: 64, offset: 64)
!2502 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2497, file: !2498, line: 63, size: 64, elements: !2503)
!2503 = !{!2504, !2505, !2518}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2502, file: !2498, line: 65, baseType: !44, size: 64)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "mods", scope: !2502, file: !2498, line: 66, baseType: !2506, size: 64)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_mod", file: !2508, line: 169, size: 192, elements: !2509)
!2508 = !DIFile(filename: "./include/linux/static_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4f20b8b91766caa416ca409c84dcc807")
!2509 = !{!2510, !2511, !2512}
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2507, file: !2508, line: 170, baseType: !2506, size: 64)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2507, file: !2508, line: 171, baseType: !1927, size: 64, offset: 64)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !2507, file: !2508, line: 172, baseType: !2513, size: 64, offset: 128)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2498, line: 32, size: 64, elements: !2515)
!2515 = !{!2516, !2517}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2514, file: !2498, line: 33, baseType: !883, size: 32)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2514, file: !2498, line: 34, baseType: !883, size: 32, offset: 32)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !2502, file: !2498, line: 67, baseType: !2513, size: 64)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_tramp", scope: !2480, file: !2314, line: 36, baseType: !25, size: 64, offset: 256)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "iterator", scope: !2480, file: !2314, line: 37, baseType: !25, size: 64, offset: 320)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "probestub", scope: !2480, file: !2314, line: 38, baseType: !25, size: 64, offset: 384)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "regfunc", scope: !2480, file: !2314, line: 39, baseType: !2223, size: 64, offset: 448)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "unregfunc", scope: !2480, file: !2314, line: 40, baseType: !2524, size: 64, offset: 512)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{null}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !2480, file: !2314, line: 41, baseType: !2528, size: 64, offset: 576)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint_func", file: !2314, line: 26, size: 192, elements: !2530)
!2530 = !{!2531, !2532, !2533}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2529, file: !2314, line: 27, baseType: !25, size: 64)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2529, file: !2314, line: 28, baseType: !25, size: 64, offset: 64)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2529, file: !2314, line: 29, baseType: !27, size: 32, offset: 128)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2431, file: !174, line: 380, baseType: !2535, size: 256, offset: 256)
!2535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event", file: !174, line: 148, size: 256, elements: !2536)
!2536 = !{!2537, !2538, !2539}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2535, file: !174, line: 149, baseType: !441, size: 128)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2535, file: !174, line: 150, baseType: !27, size: 32, offset: 128)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !2535, file: !174, line: 151, baseType: !2540, size: 64, offset: 192)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_functions", file: !174, line: 141, size: 256, elements: !2542)
!2542 = !{!2543, !2612, !2613, !2614}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !2541, file: !174, line: 142, baseType: !2544, size: 64)
!2544 = !DIDerivedType(tag: DW_TAG_typedef, name: "trace_print_func", file: !174, line: 138, baseType: !2545)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{!184, !2548, !27, !2611}
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_iterator", file: !174, line: 93, size: 67776, elements: !2550)
!2550 = !{!2551, !2554, !2557, !2560, !2561, !2562, !2563, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2591, !2594, !2595, !2596, !2604, !2605, !2606, !2607, !2608, !2609, !2610}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !2549, file: !174, line: 94, baseType: !2552, size: 64)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_array", file: !174, line: 13, flags: DIFlagFwdDecl)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !2549, file: !174, line: 95, baseType: !2555, size: 64, offset: 64)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = !DICompositeType(tag: DW_TAG_structure_type, name: "tracer", file: !174, line: 15, flags: DIFlagFwdDecl)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "array_buffer", scope: !2549, file: !174, line: 96, baseType: !2558, size: 64, offset: 128)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DICompositeType(tag: DW_TAG_structure_type, name: "array_buffer", file: !174, line: 14, flags: DIFlagFwdDecl)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2549, file: !174, line: 97, baseType: !25, size: 64, offset: 192)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_file", scope: !2549, file: !174, line: 98, baseType: !27, size: 32, offset: 256)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2549, file: !174, line: 99, baseType: !383, size: 256, offset: 320)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_iter", scope: !2549, file: !174, line: 100, baseType: !2564, size: 64, offset: 576)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DICompositeType(tag: DW_TAG_structure_type, name: "ring_buffer_iter", file: !2567, line: 10, flags: DIFlagFwdDecl)
!2567 = !DIFile(filename: "./include/linux/ring_buffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6b33fcbb5a7a42a82ce834d9b0e18658")
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "iter_flags", scope: !2549, file: !174, line: 101, baseType: !44, size: 64, offset: 640)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !2549, file: !174, line: 102, baseType: !25, size: 64, offset: 704)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "temp_size", scope: !2549, file: !174, line: 103, baseType: !13, size: 32, offset: 768)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !2549, file: !174, line: 104, baseType: !1078, size: 64, offset: 832)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "fmt_size", scope: !2549, file: !174, line: 105, baseType: !13, size: 32, offset: 896)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "wait_index", scope: !2549, file: !174, line: 106, baseType: !919, size: 64, offset: 960)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_seq", scope: !2549, file: !174, line: 109, baseType: !2575, size: 33088, offset: 1024)
!2575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_seq", file: !2576, line: 14, size: 33088, elements: !2577)
!2576 = !DIFile(filename: "./include/linux/trace_seq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cf71e515adc12762081b96266f67a26")
!2577 = !{!2578, !2582, !2589, !2590}
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2575, file: !2576, line: 15, baseType: !2579, size: 32768)
!2579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32768, elements: !2580)
!2580 = !{!2581}
!2581 = !DISubrange(count: 4096)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2575, file: !2576, line: 16, baseType: !2583, size: 192, offset: 32768)
!2583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_buf", file: !2584, line: 18, size: 192, elements: !2585)
!2584 = !DIFile(filename: "./include/linux/seq_buf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ca9012ec0d31d1c4540dcb3f58de70c8")
!2585 = !{!2586, !2587, !2588}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2583, file: !2584, line: 19, baseType: !1078, size: 64)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2583, file: !2584, line: 20, baseType: !40, size: 64, offset: 64)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2583, file: !2584, line: 21, baseType: !40, size: 64, offset: 128)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "readpos", scope: !2575, file: !2576, line: 17, baseType: !40, size: 64, offset: 32960)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !2575, file: !2576, line: 18, baseType: !27, size: 32, offset: 33024)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "started", scope: !2549, file: !174, line: 111, baseType: !2592, size: 64, offset: 34112)
!2592 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !729, line: 913, baseType: !2593)
!2593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !730, size: 64, elements: !734)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot", scope: !2549, file: !174, line: 114, baseType: !1001, size: 8, offset: 34176)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2549, file: !174, line: 117, baseType: !2575, size: 33088, offset: 34240)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "ent", scope: !2549, file: !174, line: 118, baseType: !2597, size: 64, offset: 67328)
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_entry", file: !174, line: 79, size: 64, elements: !2599)
!2599 = !{!2600, !2601, !2602, !2603}
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2598, file: !174, line: 80, baseType: !31, size: 16)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2598, file: !174, line: 81, baseType: !92, size: 8, offset: 16)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_count", scope: !2598, file: !174, line: 82, baseType: !92, size: 8, offset: 24)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2598, file: !174, line: 83, baseType: !27, size: 32, offset: 32)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "lost_events", scope: !2549, file: !174, line: 119, baseType: !44, size: 64, offset: 67392)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "leftover", scope: !2549, file: !174, line: 120, baseType: !27, size: 32, offset: 67456)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "ent_size", scope: !2549, file: !174, line: 121, baseType: !27, size: 32, offset: 67488)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2549, file: !174, line: 122, baseType: !27, size: 32, offset: 67520)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !2549, file: !174, line: 123, baseType: !536, size: 64, offset: 67584)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2549, file: !174, line: 125, baseType: !46, size: 64, offset: 67648)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !2549, file: !174, line: 126, baseType: !919, size: 64, offset: 67712)
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !2541, file: !174, line: 143, baseType: !2544, size: 64, offset: 64)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "hex", scope: !2541, file: !174, line: 144, baseType: !2544, size: 64, offset: 128)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "binary", scope: !2541, file: !174, line: 145, baseType: !2544, size: 64, offset: 192)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "print_fmt", scope: !2431, file: !174, line: 381, baseType: !1078, size: 64, offset: 512)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2431, file: !174, line: 382, baseType: !2617, size: 64, offset: 576)
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = !DICompositeType(tag: DW_TAG_structure_type, name: "event_filter", file: !244, line: 821, flags: DIFlagFwdDecl)
!2619 = !DIDerivedType(tag: DW_TAG_member, scope: !2431, file: !174, line: 387, baseType: !2620, size: 64, offset: 640)
!2620 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2431, file: !174, line: 387, size: 64, elements: !2621)
!2621 = !{!2622, !2623}
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !2620, file: !174, line: 388, baseType: !25, size: 64)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !2620, file: !174, line: 389, baseType: !54, size: 32)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2431, file: !174, line: 391, baseType: !25, size: 64, offset: 704)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2431, file: !174, line: 394, baseType: !27, size: 32, offset: 768)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "perf_refcount", scope: !2431, file: !174, line: 397, baseType: !27, size: 32, offset: 800)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "perf_events", scope: !2431, file: !174, line: 398, baseType: !2628, size: 64, offset: 832)
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "prog_array", scope: !2431, file: !174, line: 399, baseType: !2630, size: 64, offset: 896)
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!2631 = !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_prog_array", file: !174, line: 399, flags: DIFlagFwdDecl)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "perf_perm", scope: !2431, file: !174, line: 401, baseType: !2633, size: 64, offset: 960)
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2634 = !DISubroutineType(types: !2635)
!2635 = !{!27, !2430, !2636}
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !244, line: 671, size: 8512, elements: !2638)
!2638 = !{!2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !3175, !3176, !3177, !3178, !3184, !3185, !3186, !3187, !3188, !3272, !3273, !3274, !3275, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3395, !3396, !3397, !3398, !3399, !3400, !3415, !3416, !3417, !3418, !3419, !3425, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3442, !3613, !3614, !3615, !3616, !3629, !3630, !3631}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "event_entry", scope: !2637, file: !244, line: 678, baseType: !102, size: 128)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_list", scope: !2637, file: !244, line: 684, baseType: !102, size: 128, offset: 128)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "active_list", scope: !2637, file: !244, line: 685, baseType: !102, size: 128, offset: 256)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2637, file: !244, line: 689, baseType: !528, size: 192, align: 64, offset: 384)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "group_index", scope: !2637, file: !244, line: 690, baseType: !536, size: 64, offset: 576)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_entry", scope: !2637, file: !244, line: 696, baseType: !102, size: 128, offset: 640)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "hlist_entry", scope: !2637, file: !244, line: 698, baseType: !441, size: 128, offset: 768)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "active_entry", scope: !2637, file: !244, line: 699, baseType: !102, size: 128, offset: 896)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "nr_siblings", scope: !2637, file: !244, line: 700, baseType: !27, size: 32, offset: 1024)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "event_caps", scope: !2637, file: !244, line: 703, baseType: !27, size: 32, offset: 1056)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "group_caps", scope: !2637, file: !244, line: 705, baseType: !27, size: 32, offset: 1088)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "group_generation", scope: !2637, file: !244, line: 707, baseType: !13, size: 32, offset: 1120)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2637, file: !244, line: 708, baseType: !2636, size: 64, offset: 1152)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !2637, file: !244, line: 714, baseType: !2653, size: 64, offset: 1216)
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!2654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pmu", file: !244, line: 302, size: 2432, elements: !2655)
!2655 = !{!2656, !2657, !2658, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3015, !3081, !3082, !3083, !3084, !3085, !3089, !3090, !3094, !3098, !3099, !3103, !3107, !3108, !3109, !3113, !3117, !3121, !3122, !3123, !3127, !3131, !3135, !3140, !3141, !3161, !3165, !3166, !3167, !3171}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2654, file: !244, line: 303, baseType: !102, size: 128)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !2654, file: !244, line: 305, baseType: !1927, size: 64, offset: 128)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2654, file: !244, line: 306, baseType: !2659, size: 64, offset: 192)
!2659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2660, size: 64)
!2660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !197, line: 705, size: 5824, elements: !2661)
!2661 = !{!2662, !2663, !2664, !2667, !2668, !2721, !2791, !2792, !2793, !2794, !2795, !2802, !2894, !2907, !2917, !2921, !2923, !2924, !2925, !2929, !2936, !2937, !2940, !2943, !2947, !2950, !2951, !2952, !2953, !2954, !2955, !2985, !2986, !2987, !2990, !2993, !3002, !3003, !3004, !3005, !3006, !3007}
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2660, file: !197, line: 706, baseType: !1940, size: 512)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2660, file: !197, line: 707, baseType: !2659, size: 64, offset: 512)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2660, file: !197, line: 709, baseType: !2665, size: 64, offset: 576)
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2666, size: 64)
!2666 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !197, line: 37, flags: DIFlagFwdDecl)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2660, file: !197, line: 711, baseType: !22, size: 64, offset: 640)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2660, file: !197, line: 712, baseType: !2669, size: 64, offset: 704)
!2669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2670, size: 64)
!2670 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2671)
!2671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !197, line: 89, size: 384, elements: !2672)
!2672 = !{!2673, !2674, !2675, !2681, !2686, !2690}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2671, file: !197, line: 90, baseType: !22, size: 64)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2671, file: !197, line: 91, baseType: !2023, size: 64, offset: 64)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2671, file: !197, line: 92, baseType: !2676, size: 64, offset: 128)
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = !DISubroutineType(types: !2678)
!2678 = !{!27, !2679, !1976}
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!2680 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2660)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2671, file: !197, line: 93, baseType: !2682, size: 64, offset: 192)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = !DISubroutineType(types: !2684)
!2684 = !{!1078, !2679, !2685, !1180, !1181}
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2671, file: !197, line: 95, baseType: !2687, size: 64, offset: 256)
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2688 = !DISubroutineType(types: !2689)
!2689 = !{null, !2659}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2671, file: !197, line: 97, baseType: !2691, size: 64, offset: 320)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2693)
!2693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !204, line: 286, size: 1472, elements: !2694)
!2694 = !{!2695, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720}
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2693, file: !204, line: 287, baseType: !2696, size: 64)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = !DISubroutineType(types: !2698)
!2698 = !{!27, !2659}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2693, file: !204, line: 288, baseType: !2687, size: 64, offset: 64)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2693, file: !204, line: 289, baseType: !2696, size: 64, offset: 128)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2693, file: !204, line: 290, baseType: !2696, size: 64, offset: 192)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2693, file: !204, line: 291, baseType: !2696, size: 64, offset: 256)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2693, file: !204, line: 292, baseType: !2696, size: 64, offset: 320)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2693, file: !204, line: 293, baseType: !2696, size: 64, offset: 384)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2693, file: !204, line: 294, baseType: !2696, size: 64, offset: 448)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2693, file: !204, line: 295, baseType: !2696, size: 64, offset: 512)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2693, file: !204, line: 296, baseType: !2696, size: 64, offset: 576)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2693, file: !204, line: 297, baseType: !2696, size: 64, offset: 640)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2693, file: !204, line: 298, baseType: !2696, size: 64, offset: 704)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2693, file: !204, line: 299, baseType: !2696, size: 64, offset: 768)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2693, file: !204, line: 300, baseType: !2696, size: 64, offset: 832)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2693, file: !204, line: 301, baseType: !2696, size: 64, offset: 896)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2693, file: !204, line: 302, baseType: !2696, size: 64, offset: 960)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2693, file: !204, line: 303, baseType: !2696, size: 64, offset: 1024)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2693, file: !204, line: 304, baseType: !2696, size: 64, offset: 1088)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2693, file: !204, line: 305, baseType: !2696, size: 64, offset: 1152)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2693, file: !204, line: 306, baseType: !2696, size: 64, offset: 1216)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2693, file: !204, line: 307, baseType: !2696, size: 64, offset: 1280)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2693, file: !204, line: 308, baseType: !2696, size: 64, offset: 1344)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2693, file: !204, line: 309, baseType: !2696, size: 64, offset: 1408)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2660, file: !197, line: 714, baseType: !2722, size: 64, offset: 768)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2724)
!2724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2725, line: 80, size: 1344, elements: !2726)
!2725 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2726 = !{!2727, !2728, !2729, !2730, !2731, !2732, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2790}
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2724, file: !2725, line: 81, baseType: !22, size: 64)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2724, file: !2725, line: 82, baseType: !22, size: 64, offset: 64)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2724, file: !2725, line: 83, baseType: !2023, size: 64, offset: 128)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2724, file: !2725, line: 84, baseType: !2023, size: 64, offset: 192)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2724, file: !2725, line: 85, baseType: !2023, size: 64, offset: 256)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2724, file: !2725, line: 87, baseType: !2733, size: 64, offset: 320)
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2734, size: 64)
!2734 = !DISubroutineType(types: !2735)
!2735 = !{!27, !2659, !2736}
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !191, line: 96, size: 1152, elements: !2738)
!2738 = !{!2739, !2740, !2741, !2742, !2743, !2744, !2745, !2749, !2753, !2754, !2755, !2756, !2757, !2765, !2766, !2767, !2768, !2769, !2770}
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2737, file: !191, line: 97, baseType: !22, size: 64)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2737, file: !191, line: 98, baseType: !2722, size: 64, offset: 64)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2737, file: !191, line: 100, baseType: !1927, size: 64, offset: 128)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2737, file: !191, line: 101, baseType: !22, size: 64, offset: 192)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2737, file: !191, line: 103, baseType: !1001, size: 8, offset: 256)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2737, file: !191, line: 104, baseType: !190, size: 32, offset: 288)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2737, file: !191, line: 106, baseType: !2746, size: 64, offset: 320)
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64)
!2747 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2748)
!2748 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !191, line: 106, flags: DIFlagFwdDecl)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2737, file: !191, line: 107, baseType: !2750, size: 64, offset: 384)
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2751 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2752)
!2752 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !191, line: 107, flags: DIFlagFwdDecl)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2737, file: !191, line: 109, baseType: !2696, size: 64, offset: 448)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2737, file: !191, line: 110, baseType: !2687, size: 64, offset: 512)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2737, file: !191, line: 111, baseType: !2696, size: 64, offset: 576)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2737, file: !191, line: 112, baseType: !2687, size: 64, offset: 640)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2737, file: !191, line: 113, baseType: !2758, size: 64, offset: 704)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = !DISubroutineType(types: !2760)
!2760 = !{!27, !2659, !2761}
!2761 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !204, line: 60, baseType: !2762)
!2762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !204, line: 58, size: 32, elements: !2763)
!2763 = !{!2764}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2762, file: !204, line: 59, baseType: !27, size: 32)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2737, file: !191, line: 114, baseType: !2696, size: 64, offset: 768)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2737, file: !191, line: 115, baseType: !2023, size: 64, offset: 832)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2737, file: !191, line: 116, baseType: !2023, size: 64, offset: 896)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2737, file: !191, line: 118, baseType: !2691, size: 64, offset: 960)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2737, file: !191, line: 119, baseType: !2687, size: 64, offset: 1024)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2737, file: !191, line: 121, baseType: !2771, size: 64, offset: 1088)
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2772, size: 64)
!2772 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !191, line: 121, flags: DIFlagFwdDecl)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2724, file: !2725, line: 88, baseType: !2676, size: 64, offset: 384)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2724, file: !2725, line: 89, baseType: !2696, size: 64, offset: 448)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2724, file: !2725, line: 90, baseType: !2687, size: 64, offset: 512)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2724, file: !2725, line: 91, baseType: !2687, size: 64, offset: 576)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2724, file: !2725, line: 92, baseType: !2687, size: 64, offset: 640)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2724, file: !2725, line: 94, baseType: !2696, size: 64, offset: 704)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2724, file: !2725, line: 95, baseType: !2696, size: 64, offset: 768)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2724, file: !2725, line: 97, baseType: !2758, size: 64, offset: 832)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2724, file: !2725, line: 98, baseType: !2696, size: 64, offset: 896)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2724, file: !2725, line: 100, baseType: !2696, size: 64, offset: 960)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2724, file: !2725, line: 102, baseType: !2696, size: 64, offset: 1024)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2724, file: !2725, line: 103, baseType: !2687, size: 64, offset: 1088)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2724, file: !2725, line: 105, baseType: !2691, size: 64, offset: 1152)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2724, file: !2725, line: 107, baseType: !2787, size: 64, offset: 1216)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2789)
!2789 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2725, line: 107, flags: DIFlagFwdDecl)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2724, file: !2725, line: 109, baseType: !1001, size: 8, offset: 1280)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2660, file: !197, line: 715, baseType: !2736, size: 64, offset: 832)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2660, file: !197, line: 717, baseType: !25, size: 64, offset: 896)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2660, file: !197, line: 719, baseType: !25, size: 64, offset: 960)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2660, file: !197, line: 721, baseType: !383, size: 256, offset: 1024)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2660, file: !197, line: 725, baseType: !2796, size: 448, offset: 1280)
!2796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !197, line: 517, size: 448, elements: !2797)
!2797 = !{!2798, !2799, !2800, !2801}
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2796, file: !197, line: 518, baseType: !102, size: 128)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2796, file: !197, line: 519, baseType: !102, size: 128, offset: 128)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2796, file: !197, line: 520, baseType: !102, size: 128, offset: 256)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2796, file: !197, line: 521, baseType: !196, size: 32, offset: 384)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2660, file: !197, line: 726, baseType: !2803, size: 2496, offset: 1728)
!2803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !204, line: 663, size: 2496, elements: !2804)
!2804 = !{!2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2887, !2891}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2803, file: !204, line: 664, baseType: !2761, size: 32)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2803, file: !204, line: 665, baseType: !13, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2803, file: !204, line: 666, baseType: !13, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2803, file: !204, line: 667, baseType: !1001, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2803, file: !204, line: 668, baseType: !1001, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2803, file: !204, line: 669, baseType: !1001, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2803, file: !204, line: 670, baseType: !1001, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2803, file: !204, line: 671, baseType: !1001, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2803, file: !204, line: 672, baseType: !1001, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2803, file: !204, line: 673, baseType: !1001, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2803, file: !204, line: 674, baseType: !1001, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2803, file: !204, line: 675, baseType: !488, size: 32, offset: 64)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2803, file: !204, line: 676, baseType: !64, size: 32, offset: 96)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2803, file: !204, line: 678, baseType: !102, size: 128, offset: 128)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2803, file: !204, line: 679, baseType: !1155, size: 256, offset: 256)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2803, file: !204, line: 680, baseType: !2821, size: 64, offset: 512)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2823, line: 43, size: 1536, elements: !2824)
!2823 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!2824 = !{!2825, !2826, !2827, !2828, !2829, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846}
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2822, file: !2823, line: 44, baseType: !22, size: 64)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2822, file: !2823, line: 45, baseType: !27, size: 32, offset: 64)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2822, file: !2823, line: 46, baseType: !102, size: 128, offset: 128)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2822, file: !2823, line: 47, baseType: !64, size: 32, offset: 256)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2822, file: !2823, line: 48, baseType: !2830, size: 64, offset: 320)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2831, size: 64)
!2831 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !204, line: 629, flags: DIFlagFwdDecl)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2822, file: !2823, line: 49, baseType: !2350, size: 320, offset: 384)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2822, file: !2823, line: 50, baseType: !44, size: 64, offset: 704)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2822, file: !2823, line: 51, baseType: !609, size: 64, offset: 768)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2822, file: !2823, line: 52, baseType: !609, size: 64, offset: 832)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2822, file: !2823, line: 53, baseType: !609, size: 64, offset: 896)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2822, file: !2823, line: 54, baseType: !609, size: 64, offset: 960)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2822, file: !2823, line: 55, baseType: !609, size: 64, offset: 1024)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2822, file: !2823, line: 56, baseType: !44, size: 64, offset: 1088)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2822, file: !2823, line: 57, baseType: !44, size: 64, offset: 1152)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2822, file: !2823, line: 58, baseType: !44, size: 64, offset: 1216)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2822, file: !2823, line: 59, baseType: !44, size: 64, offset: 1280)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2822, file: !2823, line: 60, baseType: !44, size: 64, offset: 1344)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2822, file: !2823, line: 61, baseType: !2659, size: 64, offset: 1408)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2822, file: !2823, line: 62, baseType: !1001, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2822, file: !2823, line: 63, baseType: !1001, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2803, file: !204, line: 681, baseType: !1001, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2803, file: !204, line: 682, baseType: !1001, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2803, file: !204, line: 683, baseType: !1001, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2803, file: !204, line: 684, baseType: !13, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2803, file: !204, line: 685, baseType: !13, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2803, file: !204, line: 690, baseType: !601, size: 512, offset: 640)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2803, file: !204, line: 691, baseType: !536, size: 64, offset: 1152)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2803, file: !204, line: 692, baseType: !1117, size: 256, offset: 1216)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2803, file: !204, line: 693, baseType: !59, size: 192, offset: 1472)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2803, file: !204, line: 694, baseType: !2830, size: 64, offset: 1664)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2803, file: !204, line: 695, baseType: !54, size: 32, offset: 1728)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2803, file: !204, line: 696, baseType: !54, size: 32, offset: 1760)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2803, file: !204, line: 697, baseType: !13, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2803, file: !204, line: 698, baseType: !13, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2803, file: !204, line: 699, baseType: !13, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2803, file: !204, line: 700, baseType: !13, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2803, file: !204, line: 701, baseType: !13, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2803, file: !204, line: 702, baseType: !13, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2803, file: !204, line: 703, baseType: !1001, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2803, file: !204, line: 704, baseType: !13, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2803, file: !204, line: 705, baseType: !13, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2803, file: !204, line: 706, baseType: !13, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2803, file: !204, line: 707, baseType: !13, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2803, file: !204, line: 708, baseType: !13, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2803, file: !204, line: 709, baseType: !13, size: 32, offset: 1824)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2803, file: !204, line: 710, baseType: !203, size: 32, offset: 1856)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2803, file: !204, line: 711, baseType: !211, size: 32, offset: 1888)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2803, file: !204, line: 712, baseType: !211, size: 32, offset: 1920)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2803, file: !204, line: 713, baseType: !27, size: 32, offset: 1952)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2803, file: !204, line: 714, baseType: !27, size: 32, offset: 1984)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2803, file: !204, line: 715, baseType: !536, size: 64, offset: 2048)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2803, file: !204, line: 716, baseType: !536, size: 64, offset: 2112)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2803, file: !204, line: 717, baseType: !536, size: 64, offset: 2176)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2803, file: !204, line: 718, baseType: !536, size: 64, offset: 2240)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2803, file: !204, line: 720, baseType: !2882, size: 64, offset: 2304)
!2882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2883, size: 64)
!2883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !204, line: 632, size: 64, elements: !2884)
!2884 = !{!2885, !2886}
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2883, file: !204, line: 633, baseType: !64, size: 32)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2883, file: !204, line: 634, baseType: !13, size: 32, offset: 32)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2803, file: !204, line: 721, baseType: !2888, size: 64, offset: 2368)
!2888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2889 = !DISubroutineType(types: !2890)
!2890 = !{null, !2659, !883}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2803, file: !204, line: 722, baseType: !2892, size: 64, offset: 2432)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !204, line: 722, flags: DIFlagFwdDecl)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2660, file: !197, line: 727, baseType: !2895, size: 64, offset: 4224)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !204, line: 742, size: 1792, elements: !2897)
!2897 = !{!2898, !2899, !2900, !2904, !2905, !2906}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2896, file: !204, line: 743, baseType: !2693, size: 1472)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2896, file: !204, line: 744, baseType: !2696, size: 64, offset: 1472)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2896, file: !204, line: 745, baseType: !2901, size: 64, offset: 1536)
!2901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2902, size: 64)
!2902 = !DISubroutineType(types: !2903)
!2903 = !{null, !2659, !1001}
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2896, file: !204, line: 746, baseType: !2696, size: 64, offset: 1600)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2896, file: !204, line: 747, baseType: !2687, size: 64, offset: 1664)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2896, file: !204, line: 748, baseType: !2687, size: 64, offset: 1728)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2660, file: !197, line: 736, baseType: !2908, size: 128, offset: 4288)
!2908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !197, line: 529, size: 128, elements: !2909)
!2909 = !{!2910, !2914}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2908, file: !197, line: 531, baseType: !2911, size: 64)
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!2912 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !2913, line: 13, flags: DIFlagFwdDecl)
!2913 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2908, file: !197, line: 532, baseType: !2915, size: 64, offset: 64)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2916 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !197, line: 49, flags: DIFlagFwdDecl)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2660, file: !197, line: 738, baseType: !2918, size: 64, offset: 4416)
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2920)
!2920 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !197, line: 738, flags: DIFlagFwdDecl)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2660, file: !197, line: 740, baseType: !2922, size: 64, offset: 4480)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2660, file: !197, line: 741, baseType: !536, size: 64, offset: 4544)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2660, file: !197, line: 746, baseType: !536, size: 64, offset: 4608)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2660, file: !197, line: 747, baseType: !2926, size: 64, offset: 4672)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2928)
!2928 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !197, line: 747, flags: DIFlagFwdDecl)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2660, file: !197, line: 749, baseType: !2930, size: 64, offset: 4736)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !197, line: 428, size: 128, elements: !2932)
!2932 = !{!2933, !2934, !2935}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2931, file: !197, line: 433, baseType: !13, size: 32)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !2931, file: !197, line: 434, baseType: !13, size: 32, offset: 32)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2931, file: !197, line: 435, baseType: !44, size: 64, offset: 64)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2660, file: !197, line: 751, baseType: !102, size: 128, offset: 4800)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2660, file: !197, line: 762, baseType: !2938, size: 64, offset: 4928)
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2939, size: 64)
!2939 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !197, line: 762, flags: DIFlagFwdDecl)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2660, file: !197, line: 770, baseType: !2941, offset: 4992)
!2941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2942, line: 5, elements: !803)
!2942 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2660, file: !197, line: 772, baseType: !2944, size: 64, offset: 4992)
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!2945 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2946, line: 18, flags: DIFlagFwdDecl)
!2946 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2660, file: !197, line: 773, baseType: !2948, size: 64, offset: 5056)
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2725, line: 22, flags: DIFlagFwdDecl)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2660, file: !197, line: 776, baseType: !27, size: 32, offset: 5120)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2660, file: !197, line: 778, baseType: !1897, size: 32, offset: 5152)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2660, file: !197, line: 779, baseType: !488, size: 32, offset: 5184)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2660, file: !197, line: 781, baseType: !64, size: 32, offset: 5216)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2660, file: !197, line: 782, baseType: !102, size: 128, offset: 5248)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2660, file: !197, line: 784, baseType: !2956, size: 64, offset: 5376)
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!2957 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2958)
!2958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2959, line: 52, size: 768, elements: !2960)
!2959 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!2960 = !{!2961, !2962, !2963, !2964, !2965, !2969, !2973, !2974, !2975, !2976, !2980, !2984}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2958, file: !2959, line: 53, baseType: !22, size: 64)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2958, file: !2959, line: 55, baseType: !2023, size: 64, offset: 64)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2958, file: !2959, line: 56, baseType: !2023, size: 64, offset: 128)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2958, file: !2959, line: 58, baseType: !2676, size: 64, offset: 192)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2958, file: !2959, line: 59, baseType: !2966, size: 64, offset: 256)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{!1078, !2679, !2685}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2958, file: !2959, line: 61, baseType: !2970, size: 64, offset: 320)
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = !DISubroutineType(types: !2972)
!2972 = !{null, !2956}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2958, file: !2959, line: 62, baseType: !2687, size: 64, offset: 384)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2958, file: !2959, line: 64, baseType: !2696, size: 64, offset: 448)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2958, file: !2959, line: 66, baseType: !2064, size: 64, offset: 512)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2958, file: !2959, line: 67, baseType: !2977, size: 64, offset: 576)
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{!916, !2679}
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2958, file: !2959, line: 69, baseType: !2981, size: 64, offset: 640)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{null, !2679, !1180, !1181}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2958, file: !2959, line: 71, baseType: !2691, size: 64, offset: 704)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2660, file: !197, line: 785, baseType: !2023, size: 64, offset: 5440)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2660, file: !197, line: 787, baseType: !2687, size: 64, offset: 5504)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2660, file: !197, line: 788, baseType: !2988, size: 64, offset: 5568)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !197, line: 46, flags: DIFlagFwdDecl)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2660, file: !197, line: 789, baseType: !2991, size: 64, offset: 5632)
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2992, size: 64)
!2992 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !197, line: 48, flags: DIFlagFwdDecl)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2660, file: !197, line: 791, baseType: !2994, size: 64, offset: 5696)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !197, line: 597, size: 128, elements: !2996)
!2996 = !{!2997, !2998, !2999, !3000, !3001}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !2995, file: !197, line: 598, baseType: !218, size: 32)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !2995, file: !197, line: 599, baseType: !227, size: 32, offset: 32)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !2995, file: !197, line: 600, baseType: !232, size: 32, offset: 64)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !2995, file: !197, line: 601, baseType: !1001, size: 8, offset: 96)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !2995, file: !197, line: 602, baseType: !1001, size: 8, offset: 104)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2660, file: !197, line: 793, baseType: !237, size: 32, offset: 5760)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2660, file: !197, line: 795, baseType: !1001, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2660, file: !197, line: 796, baseType: !1001, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2660, file: !197, line: 797, baseType: !1001, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2660, file: !197, line: 798, baseType: !1001, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2660, file: !197, line: 799, baseType: !1001, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2654, file: !244, line: 307, baseType: !2659, size: 64, offset: 256)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "attr_groups", scope: !2654, file: !244, line: 308, baseType: !2023, size: 64, offset: 320)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "attr_update", scope: !2654, file: !244, line: 309, baseType: !2023, size: 64, offset: 384)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2654, file: !244, line: 310, baseType: !22, size: 64, offset: 448)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2654, file: !244, line: 311, baseType: !27, size: 32, offset: 512)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !2654, file: !244, line: 316, baseType: !27, size: 32, offset: 544)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable_count", scope: !2654, file: !244, line: 318, baseType: !347, size: 64, offset: 576)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_pmu_context", scope: !2654, file: !244, line: 319, baseType: !3016, size: 64, offset: 640)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cpu_pmu_context", file: !244, line: 977, size: 1856, elements: !3018)
!3018 = !{!3019, !3071, !3073, !3074, !3075, !3076, !3077, !3078, !3079, !3080}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "epc", scope: !3017, file: !244, line: 978, baseType: !3020, size: 896)
!3020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_pmu_context", file: !244, line: 873, size: 896, elements: !3021)
!3021 = !{!3022, !3023, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3068, !3069, !3070}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !3020, file: !244, line: 874, baseType: !2653, size: 64)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3020, file: !244, line: 875, baseType: !3024, size: 64, offset: 64)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !244, line: 912, size: 1792, elements: !3026)
!3026 = !{!3027, !3028, !3029, !3030, !3035, !3036, !3037, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3025, file: !244, line: 917, baseType: !388, size: 32)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3025, file: !244, line: 923, baseType: !383, size: 256, offset: 64)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_list", scope: !3025, file: !244, line: 925, baseType: !102, size: 128, offset: 320)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_groups", scope: !3025, file: !244, line: 926, baseType: !3031, size: 128, offset: 448)
!3031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_groups", file: !244, line: 901, size: 128, elements: !3032)
!3032 = !{!3033, !3034}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !3031, file: !244, line: 902, baseType: !668, size: 64)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3031, file: !244, line: 903, baseType: !536, size: 64, offset: 64)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_groups", scope: !3025, file: !244, line: 927, baseType: !3031, size: 128, offset: 576)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !3025, file: !244, line: 928, baseType: !102, size: 128, offset: 704)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3025, file: !244, line: 930, baseType: !27, size: 32, offset: 832)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "nr_user", scope: !3025, file: !244, line: 931, baseType: !27, size: 32, offset: 864)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "is_active", scope: !3025, file: !244, line: 932, baseType: !27, size: 32, offset: 896)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "nr_task_data", scope: !3025, file: !244, line: 934, baseType: !27, size: 32, offset: 928)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "nr_stat", scope: !3025, file: !244, line: 935, baseType: !27, size: 32, offset: 960)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "nr_freq", scope: !3025, file: !244, line: 936, baseType: !27, size: 32, offset: 992)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_disable", scope: !3025, file: !244, line: 937, baseType: !27, size: 32, offset: 1024)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3025, file: !244, line: 939, baseType: !428, size: 32, offset: 1056)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3025, file: !244, line: 940, baseType: !477, size: 64, offset: 1088)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3025, file: !244, line: 945, baseType: !536, size: 64, offset: 1152)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3025, file: !244, line: 946, baseType: !536, size: 64, offset: 1216)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !3025, file: !244, line: 947, baseType: !536, size: 64, offset: 1280)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "parent_ctx", scope: !3025, file: !244, line: 953, baseType: !3024, size: 64, offset: 1344)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "parent_gen", scope: !3025, file: !244, line: 954, baseType: !536, size: 64, offset: 1408)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !3025, file: !244, line: 955, baseType: !536, size: 64, offset: 1472)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "pin_count", scope: !3025, file: !244, line: 956, baseType: !27, size: 32, offset: 1536)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3025, file: !244, line: 958, baseType: !27, size: 32, offset: 1568)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3025, file: !244, line: 960, baseType: !363, size: 128, align: 64, offset: 1600)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pending", scope: !3025, file: !244, line: 968, baseType: !3056, size: 64, offset: 1728)
!3056 = !DIDerivedType(tag: DW_TAG_typedef, name: "local_t", file: !3057, line: 12, baseType: !3058)
!3057 = !DIFile(filename: "./arch/x86/include/asm/local.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1295a17343a8a36946da0822a5548474")
!3058 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3057, line: 10, size: 64, elements: !3059)
!3059 = !{!3060}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3058, file: !3057, line: 11, baseType: !376, size: 64)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_entry", scope: !3020, file: !244, line: 877, baseType: !102, size: 128, offset: 128)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_active", scope: !3020, file: !244, line: 879, baseType: !102, size: 128, offset: 256)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_active", scope: !3020, file: !244, line: 880, baseType: !102, size: 128, offset: 384)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "embedded", scope: !3020, file: !244, line: 883, baseType: !13, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3020, file: !244, line: 885, baseType: !13, size: 32, offset: 544)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3020, file: !244, line: 886, baseType: !13, size: 32, offset: 576)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3020, file: !244, line: 888, baseType: !54, size: 32, offset: 608)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3020, file: !244, line: 889, baseType: !363, size: 128, align: 64, offset: 640)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_data", scope: !3020, file: !244, line: 891, baseType: !25, size: 64, offset: 768)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_necessary", scope: !3020, file: !244, line: 898, baseType: !27, size: 32, offset: 832)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "task_epc", scope: !3017, file: !244, line: 979, baseType: !3072, size: 64, offset: 896)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_entry", scope: !3017, file: !244, line: 981, baseType: !102, size: 128, offset: 960)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_usage", scope: !3017, file: !244, line: 982, baseType: !27, size: 32, offset: 1088)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "active_oncpu", scope: !3017, file: !244, line: 984, baseType: !27, size: 32, offset: 1120)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3017, file: !244, line: 985, baseType: !27, size: 32, offset: 1152)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_lock", scope: !3017, file: !244, line: 987, baseType: !388, size: 32, offset: 1184)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3017, file: !244, line: 988, baseType: !601, size: 512, offset: 1216)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval", scope: !3017, file: !244, line: 989, baseType: !609, size: 64, offset: 1728)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_active", scope: !3017, file: !244, line: 990, baseType: !13, size: 32, offset: 1792)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive_cnt", scope: !2654, file: !244, line: 320, baseType: !54, size: 32, offset: 704)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_nr", scope: !2654, file: !244, line: 321, baseType: !27, size: 32, offset: 736)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval_ms", scope: !2654, file: !244, line: 322, baseType: !27, size: 32, offset: 768)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "nr_addr_filters", scope: !2654, file: !244, line: 325, baseType: !13, size: 32, offset: 800)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_enable", scope: !2654, file: !244, line: 331, baseType: !3086, size: 64, offset: 832)
!3086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3087, size: 64)
!3087 = !DISubroutineType(types: !3088)
!3088 = !{null, !2653}
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable", scope: !2654, file: !244, line: 332, baseType: !3086, size: 64, offset: 896)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "event_init", scope: !2654, file: !244, line: 350, baseType: !3091, size: 64, offset: 960)
!3091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3092, size: 64)
!3092 = !DISubroutineType(types: !3093)
!3093 = !{!27, !2636}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "event_mapped", scope: !2654, file: !244, line: 356, baseType: !3095, size: 64, offset: 1024)
!3095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3096, size: 64)
!3096 = !DISubroutineType(types: !3097)
!3097 = !{null, !2636, !782}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "event_unmapped", scope: !2654, file: !244, line: 357, baseType: !3095, size: 64, offset: 1088)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !2654, file: !244, line: 385, baseType: !3100, size: 64, offset: 1152)
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{!27, !2636, !27}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "del", scope: !2654, file: !244, line: 386, baseType: !3104, size: 64, offset: 1216)
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3105, size: 64)
!3105 = !DISubroutineType(types: !3106)
!3106 = !{null, !2636, !27}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2654, file: !244, line: 406, baseType: !3104, size: 64, offset: 1280)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2654, file: !244, line: 407, baseType: !3104, size: 64, offset: 1344)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2654, file: !244, line: 415, baseType: !3110, size: 64, offset: 1408)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = !DISubroutineType(types: !3112)
!3112 = !{null, !2636}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "start_txn", scope: !2654, file: !244, line: 427, baseType: !3114, size: 64, offset: 1472)
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = !DISubroutineType(types: !3116)
!3116 = !{null, !2653, !13}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "commit_txn", scope: !2654, file: !244, line: 436, baseType: !3118, size: 64, offset: 1536)
!3118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3119, size: 64)
!3119 = !DISubroutineType(types: !3120)
!3120 = !{!27, !2653}
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_txn", scope: !2654, file: !244, line: 443, baseType: !3086, size: 64, offset: 1600)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "event_idx", scope: !2654, file: !244, line: 450, baseType: !3091, size: 64, offset: 1664)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task", scope: !2654, file: !244, line: 455, baseType: !3124, size: 64, offset: 1728)
!3124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3125, size: 64)
!3125 = !DISubroutineType(types: !3126)
!3126 = !{null, !3072, !1001}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_cache", scope: !2654, file: !244, line: 461, baseType: !3128, size: 64, offset: 1792)
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3129, size: 64)
!3129 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3130, line: 325, flags: DIFlagFwdDecl)
!3130 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "swap_task_ctx", scope: !2654, file: !244, line: 469, baseType: !3132, size: 64, offset: 1856)
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3133, size: 64)
!3133 = !DISubroutineType(types: !3134)
!3134 = !{null, !3072, !3072}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "setup_aux", scope: !2654, file: !244, line: 476, baseType: !3136, size: 64, offset: 1920)
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = !DISubroutineType(types: !3138)
!3138 = !{!25, !2636, !3139, !27, !1001}
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "free_aux", scope: !2654, file: !244, line: 483, baseType: !2088, size: 64, offset: 1984)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot_aux", scope: !2654, file: !244, line: 494, baseType: !3142, size: 64, offset: 2048)
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = !DISubroutineType(types: !3144)
!3144 = !{!919, !2636, !3145, !44}
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_output_handle", file: !244, line: 1014, size: 448, elements: !3147)
!3147 = !{!3148, !3149, !3152, !3153, !3154, !3155, !3160}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3146, file: !244, line: 1015, baseType: !2636, size: 64)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3146, file: !244, line: 1016, baseType: !3150, size: 64, offset: 64)
!3150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3151, size: 64)
!3151 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_buffer", file: !244, line: 641, flags: DIFlagFwdDecl)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3146, file: !244, line: 1017, baseType: !44, size: 64, offset: 128)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3146, file: !244, line: 1018, baseType: !44, size: 64, offset: 192)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "aux_flags", scope: !3146, file: !244, line: 1019, baseType: !536, size: 64, offset: 256)
!3155 = !DIDerivedType(tag: DW_TAG_member, scope: !3146, file: !244, line: 1020, baseType: !3156, size: 64, offset: 320)
!3156 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3146, file: !244, line: 1020, size: 64, elements: !3157)
!3157 = !{!3158, !3159}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3156, file: !244, line: 1021, baseType: !25, size: 64)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3156, file: !244, line: 1022, baseType: !44, size: 64)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3146, file: !244, line: 1024, baseType: !27, size: 32, offset: 384)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_validate", scope: !2654, file: !244, line: 506, baseType: !3162, size: 64, offset: 2112)
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3163 = !DISubroutineType(types: !3164)
!3164 = !{!27, !105}
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_sync", scope: !2654, file: !244, line: 520, baseType: !3110, size: 64, offset: 2176)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output_match", scope: !2654, file: !244, line: 530, baseType: !3091, size: 64, offset: 2240)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2654, file: !244, line: 537, baseType: !3168, size: 64, offset: 2304)
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3169 = !DISubroutineType(types: !3170)
!3170 = !{!1001, !2653, !27}
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "check_period", scope: !2654, file: !244, line: 542, baseType: !3172, size: 64, offset: 2368)
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3173, size: 64)
!3173 = !DISubroutineType(types: !3174)
!3174 = !{!27, !2636, !536}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_private", scope: !2637, file: !244, line: 715, baseType: !25, size: 64, offset: 1280)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2637, file: !244, line: 717, baseType: !243, size: 32, offset: 1344)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "attach_state", scope: !2637, file: !244, line: 718, baseType: !13, size: 32, offset: 1376)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2637, file: !244, line: 719, baseType: !3179, size: 64, offset: 1408)
!3179 = !DIDerivedType(tag: DW_TAG_typedef, name: "local64_t", file: !3180, line: 26, baseType: !3181)
!3180 = !DIFile(filename: "./include/asm-generic/local64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df4d146c32c49eaacbf0050bc72e4892")
!3181 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3180, line: 24, size: 64, elements: !3182)
!3182 = !{!3183}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3181, file: !3180, line: 25, baseType: !3056, size: 64)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2637, file: !244, line: 720, baseType: !378, size: 64, offset: 1472)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_enabled", scope: !2637, file: !244, line: 728, baseType: !536, size: 64, offset: 1536)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_running", scope: !2637, file: !244, line: 729, baseType: !536, size: 64, offset: 1600)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !2637, file: !244, line: 730, baseType: !536, size: 64, offset: 1664)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2637, file: !244, line: 732, baseType: !3189, size: 1088, offset: 1728)
!3189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_attr", file: !3190, line: 385, size: 1088, elements: !3191)
!3190 = !DIFile(filename: "./include/uapi/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bcad89ece8f79f502358c5429db5ebf0")
!3191 = !{!3192, !3193, !3194, !3195, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3245, !3246, !3253, !3260, !3261, !3262, !3263, !3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3189, file: !3190, line: 390, baseType: !489, size: 32)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3189, file: !3190, line: 395, baseType: !489, size: 32, offset: 32)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3189, file: !3190, line: 400, baseType: !537, size: 64, offset: 64)
!3195 = !DIDerivedType(tag: DW_TAG_member, scope: !3189, file: !3190, line: 402, baseType: !3196, size: 64, offset: 128)
!3196 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3189, file: !3190, line: 402, size: 64, elements: !3197)
!3197 = !{!3198, !3199}
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3196, file: !3190, line: 403, baseType: !537, size: 64)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "sample_freq", scope: !3196, file: !3190, line: 404, baseType: !537, size: 64)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "sample_type", scope: !3189, file: !3190, line: 407, baseType: !537, size: 64, offset: 192)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "read_format", scope: !3189, file: !3190, line: 408, baseType: !537, size: 64, offset: 256)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !3189, file: !3190, line: 410, baseType: !537, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "inherit", scope: !3189, file: !3190, line: 411, baseType: !537, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "pinned", scope: !3189, file: !3190, line: 412, baseType: !537, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3189, file: !3190, line: 413, baseType: !537, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_user", scope: !3189, file: !3190, line: 414, baseType: !537, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_kernel", scope: !3189, file: !3190, line: 415, baseType: !537, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_hv", scope: !3189, file: !3190, line: 416, baseType: !537, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_idle", scope: !3189, file: !3190, line: 417, baseType: !537, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3189, file: !3190, line: 418, baseType: !537, size: 1, offset: 328, flags: DIFlagBitField, extraData: i64 320)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3189, file: !3190, line: 419, baseType: !537, size: 1, offset: 329, flags: DIFlagBitField, extraData: i64 320)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !3189, file: !3190, line: 420, baseType: !537, size: 1, offset: 330, flags: DIFlagBitField, extraData: i64 320)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_stat", scope: !3189, file: !3190, line: 421, baseType: !537, size: 1, offset: 331, flags: DIFlagBitField, extraData: i64 320)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "enable_on_exec", scope: !3189, file: !3190, line: 422, baseType: !537, size: 1, offset: 332, flags: DIFlagBitField, extraData: i64 320)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3189, file: !3190, line: 423, baseType: !537, size: 1, offset: 333, flags: DIFlagBitField, extraData: i64 320)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "watermark", scope: !3189, file: !3190, line: 424, baseType: !537, size: 1, offset: 334, flags: DIFlagBitField, extraData: i64 320)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "precise_ip", scope: !3189, file: !3190, line: 435, baseType: !537, size: 2, offset: 335, flags: DIFlagBitField, extraData: i64 320)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_data", scope: !3189, file: !3190, line: 436, baseType: !537, size: 1, offset: 337, flags: DIFlagBitField, extraData: i64 320)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "sample_id_all", scope: !3189, file: !3190, line: 437, baseType: !537, size: 1, offset: 338, flags: DIFlagBitField, extraData: i64 320)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_host", scope: !3189, file: !3190, line: 439, baseType: !537, size: 1, offset: 339, flags: DIFlagBitField, extraData: i64 320)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_guest", scope: !3189, file: !3190, line: 440, baseType: !537, size: 1, offset: 340, flags: DIFlagBitField, extraData: i64 320)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_kernel", scope: !3189, file: !3190, line: 442, baseType: !537, size: 1, offset: 341, flags: DIFlagBitField, extraData: i64 320)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_user", scope: !3189, file: !3190, line: 443, baseType: !537, size: 1, offset: 342, flags: DIFlagBitField, extraData: i64 320)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "mmap2", scope: !3189, file: !3190, line: 444, baseType: !537, size: 1, offset: 343, flags: DIFlagBitField, extraData: i64 320)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "comm_exec", scope: !3189, file: !3190, line: 445, baseType: !537, size: 1, offset: 344, flags: DIFlagBitField, extraData: i64 320)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "use_clockid", scope: !3189, file: !3190, line: 446, baseType: !537, size: 1, offset: 345, flags: DIFlagBitField, extraData: i64 320)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "context_switch", scope: !3189, file: !3190, line: 447, baseType: !537, size: 1, offset: 346, flags: DIFlagBitField, extraData: i64 320)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "write_backward", scope: !3189, file: !3190, line: 448, baseType: !537, size: 1, offset: 347, flags: DIFlagBitField, extraData: i64 320)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "namespaces", scope: !3189, file: !3190, line: 449, baseType: !537, size: 1, offset: 348, flags: DIFlagBitField, extraData: i64 320)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "ksymbol", scope: !3189, file: !3190, line: 450, baseType: !537, size: 1, offset: 349, flags: DIFlagBitField, extraData: i64 320)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "bpf_event", scope: !3189, file: !3190, line: 451, baseType: !537, size: 1, offset: 350, flags: DIFlagBitField, extraData: i64 320)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output", scope: !3189, file: !3190, line: 452, baseType: !537, size: 1, offset: 351, flags: DIFlagBitField, extraData: i64 320)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3189, file: !3190, line: 453, baseType: !537, size: 1, offset: 352, flags: DIFlagBitField, extraData: i64 320)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "text_poke", scope: !3189, file: !3190, line: 454, baseType: !537, size: 1, offset: 353, flags: DIFlagBitField, extraData: i64 320)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "build_id", scope: !3189, file: !3190, line: 455, baseType: !537, size: 1, offset: 354, flags: DIFlagBitField, extraData: i64 320)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_thread", scope: !3189, file: !3190, line: 456, baseType: !537, size: 1, offset: 355, flags: DIFlagBitField, extraData: i64 320)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "remove_on_exec", scope: !3189, file: !3190, line: 457, baseType: !537, size: 1, offset: 356, flags: DIFlagBitField, extraData: i64 320)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "sigtrap", scope: !3189, file: !3190, line: 458, baseType: !537, size: 1, offset: 357, flags: DIFlagBitField, extraData: i64 320)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_1", scope: !3189, file: !3190, line: 459, baseType: !537, size: 26, offset: 358, flags: DIFlagBitField, extraData: i64 320)
!3240 = !DIDerivedType(tag: DW_TAG_member, scope: !3189, file: !3190, line: 461, baseType: !3241, size: 32, offset: 384)
!3241 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3189, file: !3190, line: 461, size: 32, elements: !3242)
!3242 = !{!3243, !3244}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_events", scope: !3241, file: !3190, line: 462, baseType: !489, size: 32)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_watermark", scope: !3241, file: !3190, line: 463, baseType: !489, size: 32)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "bp_type", scope: !3189, file: !3190, line: 466, baseType: !489, size: 32, offset: 416)
!3246 = !DIDerivedType(tag: DW_TAG_member, scope: !3189, file: !3190, line: 467, baseType: !3247, size: 64, offset: 448)
!3247 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3189, file: !3190, line: 467, size: 64, elements: !3248)
!3248 = !{!3249, !3250, !3251, !3252}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "bp_addr", scope: !3247, file: !3190, line: 468, baseType: !537, size: 64)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_func", scope: !3247, file: !3190, line: 469, baseType: !537, size: 64)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe_path", scope: !3247, file: !3190, line: 470, baseType: !537, size: 64)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "config1", scope: !3247, file: !3190, line: 471, baseType: !537, size: 64)
!3253 = !DIDerivedType(tag: DW_TAG_member, scope: !3189, file: !3190, line: 473, baseType: !3254, size: 64, offset: 512)
!3254 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3189, file: !3190, line: 473, size: 64, elements: !3255)
!3255 = !{!3256, !3257, !3258, !3259}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "bp_len", scope: !3254, file: !3190, line: 474, baseType: !537, size: 64)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_addr", scope: !3254, file: !3190, line: 475, baseType: !537, size: 64)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "probe_offset", scope: !3254, file: !3190, line: 476, baseType: !537, size: 64)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "config2", scope: !3254, file: !3190, line: 477, baseType: !537, size: 64)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "branch_sample_type", scope: !3189, file: !3190, line: 479, baseType: !537, size: 64, offset: 576)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_user", scope: !3189, file: !3190, line: 485, baseType: !537, size: 64, offset: 640)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "sample_stack_user", scope: !3189, file: !3190, line: 490, baseType: !489, size: 32, offset: 704)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3189, file: !3190, line: 492, baseType: !884, size: 32, offset: 736)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_intr", scope: !3189, file: !3190, line: 501, baseType: !537, size: 64, offset: 768)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "aux_watermark", scope: !3189, file: !3190, line: 506, baseType: !489, size: 32, offset: 832)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "sample_max_stack", scope: !3189, file: !3190, line: 507, baseType: !99, size: 16, offset: 864)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_2", scope: !3189, file: !3190, line: 508, baseType: !99, size: 16, offset: 880)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "aux_sample_size", scope: !3189, file: !3190, line: 509, baseType: !489, size: 32, offset: 896)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_3", scope: !3189, file: !3190, line: 510, baseType: !489, size: 32, offset: 928)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "sig_data", scope: !3189, file: !3190, line: 518, baseType: !537, size: 64, offset: 960)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "config3", scope: !3189, file: !3190, line: 520, baseType: !537, size: 64, offset: 1024)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !2637, file: !244, line: 733, baseType: !98, size: 16, offset: 2816)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "id_header_size", scope: !2637, file: !244, line: 734, baseType: !98, size: 16, offset: 2832)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "read_size", scope: !2637, file: !244, line: 735, baseType: !98, size: 16, offset: 2848)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !2637, file: !244, line: 736, baseType: !3276, size: 1536, offset: 2880)
!3276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event", file: !244, line: 155, size: 1536, elements: !3277)
!3277 = !{!3278, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3362, !3363, !3364, !3365}
!3278 = !DIDerivedType(tag: DW_TAG_member, scope: !3276, file: !244, line: 157, baseType: !3279, size: 768)
!3279 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3276, file: !244, line: 157, size: 768, elements: !3280)
!3280 = !{!3281, !3300, !3304, !3308, !3313, !3335}
!3281 = !DIDerivedType(tag: DW_TAG_member, scope: !3279, file: !244, line: 158, baseType: !3282, size: 768)
!3282 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3279, file: !244, line: 158, size: 768, elements: !3283)
!3283 = !{!3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3299}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3282, file: !244, line: 159, baseType: !536, size: 64)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "last_tag", scope: !3282, file: !244, line: 160, baseType: !536, size: 64, offset: 64)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "config_base", scope: !3282, file: !244, line: 161, baseType: !44, size: 64, offset: 128)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "event_base", scope: !3282, file: !244, line: 162, baseType: !44, size: 64, offset: 192)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "event_base_rdpmc", scope: !3282, file: !244, line: 163, baseType: !27, size: 32, offset: 256)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3282, file: !244, line: 164, baseType: !27, size: 32, offset: 288)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3282, file: !244, line: 165, baseType: !27, size: 32, offset: 320)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3282, file: !244, line: 166, baseType: !27, size: 32, offset: 352)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "extra_reg", scope: !3282, file: !244, line: 168, baseType: !3293, size: 192, offset: 384)
!3293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event_extra", file: !244, line: 134, size: 192, elements: !3294)
!3294 = !{!3295, !3296, !3297, !3298}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3293, file: !244, line: 135, baseType: !536, size: 64)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !3293, file: !244, line: 136, baseType: !13, size: 32, offset: 64)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3293, file: !244, line: 137, baseType: !27, size: 32, offset: 96)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3293, file: !244, line: 138, baseType: !27, size: 32, offset: 128)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "branch_reg", scope: !3282, file: !244, line: 169, baseType: !3293, size: 192, offset: 576)
!3300 = !DIDerivedType(tag: DW_TAG_member, scope: !3279, file: !244, line: 171, baseType: !3301, size: 512)
!3301 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3279, file: !244, line: 171, size: 512, elements: !3302)
!3302 = !{!3303}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3301, file: !244, line: 172, baseType: !601, size: 512)
!3304 = !DIDerivedType(tag: DW_TAG_member, scope: !3279, file: !244, line: 174, baseType: !3305, size: 128)
!3305 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3279, file: !244, line: 174, size: 128, elements: !3306)
!3306 = !{!3307}
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "tp_list", scope: !3305, file: !244, line: 176, baseType: !102, size: 128)
!3308 = !DIDerivedType(tag: DW_TAG_member, scope: !3279, file: !244, line: 178, baseType: !3309, size: 128)
!3309 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3279, file: !244, line: 178, size: 128, elements: !3310)
!3310 = !{!3311, !3312}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "pwr_acc", scope: !3309, file: !244, line: 179, baseType: !536, size: 64)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "ptsc", scope: !3309, file: !244, line: 180, baseType: !536, size: 64, offset: 64)
!3313 = !DIDerivedType(tag: DW_TAG_member, scope: !3279, file: !244, line: 183, baseType: !3314, size: 320)
!3314 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3279, file: !244, line: 183, size: 320, elements: !3315)
!3315 = !{!3316, !3324}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3314, file: !244, line: 189, baseType: !3317, size: 192)
!3317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_hw_breakpoint", file: !3318, line: 14, size: 192, elements: !3319)
!3318 = !DIFile(filename: "./arch/x86/include/asm/hw_breakpoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "107c509acefbbe18efeb522731cf3028")
!3319 = !{!3320, !3321, !3322, !3323}
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !3317, file: !3318, line: 15, baseType: !44, size: 64)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3317, file: !3318, line: 16, baseType: !44, size: 64, offset: 64)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3317, file: !3318, line: 17, baseType: !88, size: 8, offset: 128)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3317, file: !3318, line: 18, baseType: !88, size: 8, offset: 136)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "bp_list", scope: !3314, file: !244, line: 190, baseType: !3325, size: 128, offset: 192)
!3325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhlist_head", file: !3326, line: 21, size: 128, elements: !3327)
!3326 = !DIFile(filename: "./include/linux/rhashtable-types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99b3652a01a9d39bb1c8b53f50a53014")
!3327 = !{!3328, !3333}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "rhead", scope: !3325, file: !3326, line: 22, baseType: !3329, size: 64)
!3329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhash_head", file: !3326, line: 17, size: 64, elements: !3330)
!3330 = !{!3331}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3329, file: !3326, line: 18, baseType: !3332, size: 64)
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3329, size: 64)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3325, file: !3326, line: 23, baseType: !3334, size: 64, offset: 64)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3335 = !DIDerivedType(tag: DW_TAG_member, scope: !3279, file: !244, line: 193, baseType: !3336, size: 192)
!3336 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3279, file: !244, line: 193, size: 192, elements: !3337)
!3337 = !{!3338, !3339, !3340, !3341, !3342}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_bank", scope: !3336, file: !244, line: 194, baseType: !88, size: 8)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_cntr", scope: !3336, file: !244, line: 195, baseType: !88, size: 8, offset: 8)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3336, file: !244, line: 196, baseType: !98, size: 16, offset: 16)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !3336, file: !244, line: 197, baseType: !536, size: 64, offset: 64)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "conf1", scope: !3336, file: !244, line: 198, baseType: !536, size: 64, offset: 128)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3276, file: !244, line: 205, baseType: !477, size: 64, offset: 768)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !3276, file: !244, line: 211, baseType: !25, size: 64, offset: 832)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !3276, file: !244, line: 214, baseType: !44, size: 64, offset: 896)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3276, file: !244, line: 223, baseType: !27, size: 32, offset: 960)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "prev_count", scope: !3276, file: !244, line: 229, baseType: !3179, size: 64, offset: 1024)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3276, file: !244, line: 234, baseType: !536, size: 64, offset: 1088)
!3349 = !DIDerivedType(tag: DW_TAG_member, scope: !3276, file: !244, line: 236, baseType: !3350, size: 128, offset: 1152)
!3350 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3276, file: !244, line: 236, size: 128, elements: !3351)
!3351 = !{!3352, !3357}
!3352 = !DIDerivedType(tag: DW_TAG_member, scope: !3350, file: !244, line: 237, baseType: !3353, size: 128)
!3353 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3350, file: !244, line: 237, size: 128, elements: !3354)
!3354 = !{!3355, !3356}
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "last_period", scope: !3353, file: !244, line: 241, baseType: !536, size: 64)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "period_left", scope: !3353, file: !244, line: 249, baseType: !3179, size: 64, offset: 64)
!3357 = !DIDerivedType(tag: DW_TAG_member, scope: !3350, file: !244, line: 251, baseType: !3358, size: 128)
!3358 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3350, file: !244, line: 251, size: 128, elements: !3359)
!3359 = !{!3360, !3361}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "saved_metric", scope: !3358, file: !244, line: 252, baseType: !536, size: 64)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "saved_slots", scope: !3358, file: !244, line: 253, baseType: !536, size: 64, offset: 64)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts_seq", scope: !3276, file: !244, line: 261, baseType: !536, size: 64, offset: 1280)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !3276, file: !244, line: 262, baseType: !536, size: 64, offset: 1344)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "freq_time_stamp", scope: !3276, file: !244, line: 268, baseType: !536, size: 64, offset: 1408)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "freq_count_stamp", scope: !3276, file: !244, line: 269, baseType: !536, size: 64, offset: 1472)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !2637, file: !244, line: 738, baseType: !3024, size: 64, offset: 4416)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx", scope: !2637, file: !244, line: 744, baseType: !3072, size: 64, offset: 4480)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2637, file: !244, line: 745, baseType: !376, size: 64, offset: 4544)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_enabled", scope: !2637, file: !244, line: 751, baseType: !378, size: 64, offset: 4608)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_running", scope: !2637, file: !244, line: 752, baseType: !378, size: 64, offset: 4672)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "child_mutex", scope: !2637, file: !244, line: 757, baseType: !383, size: 256, offset: 4736)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "child_list", scope: !2637, file: !244, line: 758, baseType: !102, size: 128, offset: 4992)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2637, file: !244, line: 759, baseType: !2636, size: 64, offset: 5120)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "oncpu", scope: !2637, file: !244, line: 761, baseType: !27, size: 32, offset: 5184)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2637, file: !244, line: 762, baseType: !27, size: 32, offset: 5216)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "owner_entry", scope: !2637, file: !244, line: 764, baseType: !102, size: 128, offset: 5248)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2637, file: !244, line: 765, baseType: !477, size: 64, offset: 5376)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_mutex", scope: !2637, file: !244, line: 768, baseType: !383, size: 256, offset: 5440)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_count", scope: !2637, file: !244, line: 769, baseType: !54, size: 32, offset: 5696)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2637, file: !244, line: 771, baseType: !3150, size: 64, offset: 5760)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "rb_entry", scope: !2637, file: !244, line: 772, baseType: !102, size: 128, offset: 5824)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_batches", scope: !2637, file: !244, line: 773, baseType: !44, size: 64, offset: 5952)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_pending", scope: !2637, file: !244, line: 774, baseType: !27, size: 32, offset: 6016)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !2637, file: !244, line: 777, baseType: !59, size: 192, offset: 6080)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2637, file: !244, line: 778, baseType: !3386, size: 64, offset: 6272)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !289, line: 1083, size: 384, elements: !3388)
!3388 = !{!3389, !3390, !3391, !3392, !3393, !3394}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3387, file: !289, line: 1084, baseType: !401, size: 64)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3387, file: !289, line: 1085, baseType: !27, size: 32, offset: 64)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3387, file: !289, line: 1086, baseType: !27, size: 32, offset: 96)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3387, file: !289, line: 1087, baseType: !3386, size: 64, offset: 128)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3387, file: !289, line: 1088, baseType: !350, size: 64, offset: 192)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3387, file: !289, line: 1089, baseType: !363, size: 128, align: 64, offset: 256)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "pending_wakeup", scope: !2637, file: !244, line: 781, baseType: !13, size: 32, offset: 6336)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "pending_kill", scope: !2637, file: !244, line: 782, baseType: !13, size: 32, offset: 6368)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "pending_disable", scope: !2637, file: !244, line: 783, baseType: !13, size: 32, offset: 6400)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "pending_sigtrap", scope: !2637, file: !244, line: 784, baseType: !13, size: 32, offset: 6432)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "pending_addr", scope: !2637, file: !244, line: 785, baseType: !44, size: 64, offset: 6464)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "pending_irq", scope: !2637, file: !244, line: 786, baseType: !3401, size: 256, offset: 6528)
!3401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_work", file: !3402, line: 17, size: 256, elements: !3403)
!3402 = !DIFile(filename: "./include/linux/irq_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "897aa98b7525a8c43c93f11203b0d4f0")
!3403 = !{!3404, !3405, !3410}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3401, file: !3402, line: 18, baseType: !498, size: 128)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3401, file: !3402, line: 19, baseType: !3406, size: 64, offset: 128)
!3406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3407, size: 64)
!3407 = !DISubroutineType(types: !3408)
!3408 = !{null, !3409}
!3409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "irqwait", scope: !3401, file: !3402, line: 20, baseType: !3411, size: 64, offset: 192)
!3411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3412, line: 16, size: 64, elements: !3413)
!3412 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3413 = !{!3414}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3411, file: !3412, line: 17, baseType: !477, size: 64)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "pending_task", scope: !2637, file: !244, line: 787, baseType: !363, size: 128, align: 64, offset: 6784)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work", scope: !2637, file: !244, line: 788, baseType: !13, size: 32, offset: 6912)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work_wait", scope: !2637, file: !244, line: 789, baseType: !3411, size: 64, offset: 6976)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "event_limit", scope: !2637, file: !244, line: 791, baseType: !54, size: 32, offset: 7040)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !2637, file: !244, line: 794, baseType: !3420, size: 192, offset: 7104)
!3420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filters_head", file: !244, line: 579, size: 192, elements: !3421)
!3421 = !{!3422, !3423, !3424}
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3420, file: !244, line: 580, baseType: !102, size: 128)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3420, file: !244, line: 581, baseType: !388, size: 32, offset: 128)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "nr_file_filters", scope: !3420, file: !244, line: 582, baseType: !13, size: 32, offset: 160)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filter_ranges", scope: !2637, file: !244, line: 796, baseType: !3426, size: 64, offset: 7296)
!3426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3427, size: 64)
!3427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filter_range", file: !244, line: 585, size: 128, elements: !3428)
!3428 = !{!3429, !3430}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3427, file: !244, line: 586, baseType: !44, size: 64)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3427, file: !244, line: 587, baseType: !44, size: 64, offset: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !2637, file: !244, line: 797, baseType: !44, size: 64, offset: 7360)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "aux_event", scope: !2637, file: !244, line: 800, baseType: !2636, size: 64, offset: 7424)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !2637, file: !244, line: 802, baseType: !3110, size: 64, offset: 7488)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2637, file: !244, line: 803, baseType: !363, size: 128, align: 64, offset: 7552)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2637, file: !244, line: 805, baseType: !457, size: 64, offset: 7680)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2637, file: !244, line: 806, baseType: !536, size: 64, offset: 7744)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "lost_samples", scope: !2637, file: !244, line: 808, baseType: !378, size: 64, offset: 7808)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !2637, file: !244, line: 810, baseType: !3439, size: 64, offset: 7872)
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3440, size: 64)
!3440 = !DISubroutineType(types: !3441)
!3441 = !{!536}
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler", scope: !2637, file: !244, line: 811, baseType: !3443, size: 64, offset: 7936)
!3443 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_overflow_handler_t", file: !244, line: 605, baseType: !3444)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = !DISubroutineType(types: !3446)
!3446 = !{null, !2636, !3447, !3552}
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_sample_data", file: !244, line: 1148, size: 2048, align: 512, elements: !3449)
!3449 = !{!3450, !3451, !3452, !3453, !3454, !3459, !3460, !3461, !3466, !3467, !3474, !3495, !3517, !3527, !3545, !3546, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612}
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "sample_flags", scope: !3448, file: !244, line: 1153, baseType: !536, size: 64)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3448, file: !244, line: 1154, baseType: !536, size: 64, offset: 64)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_size", scope: !3448, file: !244, line: 1155, baseType: !536, size: 64, offset: 128)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3448, file: !244, line: 1161, baseType: !536, size: 64, offset: 192)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "tid_entry", scope: !3448, file: !244, line: 1165, baseType: !3455, size: 64, offset: 256)
!3455 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3448, file: !244, line: 1162, size: 64, elements: !3456)
!3456 = !{!3457, !3458}
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3455, file: !244, line: 1163, baseType: !488, size: 32)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !3455, file: !244, line: 1164, baseType: !488, size: 32, offset: 32)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3448, file: !244, line: 1166, baseType: !536, size: 64, offset: 320)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3448, file: !244, line: 1167, baseType: !536, size: 64, offset: 384)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_entry", scope: !3448, file: !244, line: 1171, baseType: !3462, size: 64, offset: 448)
!3462 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3448, file: !244, line: 1168, size: 64, elements: !3463)
!3463 = !{!3464, !3465}
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3462, file: !244, line: 1169, baseType: !488, size: 32)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3462, file: !244, line: 1170, baseType: !488, size: 32, offset: 32)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3448, file: !244, line: 1177, baseType: !536, size: 64, offset: 512)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "callchain", scope: !3448, file: !244, line: 1178, baseType: !3468, size: 64, offset: 576)
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3469, size: 64)
!3469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_callchain_entry", file: !244, line: 67, size: 64, elements: !3470)
!3470 = !{!3471, !3472}
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3469, file: !244, line: 68, baseType: !537, size: 64)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3469, file: !244, line: 69, baseType: !3473, offset: 64)
!3473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !537, elements: !1230)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !3448, file: !244, line: 1179, baseType: !3475, size: 64, offset: 640)
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 64)
!3476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_record", file: !244, line: 93, size: 256, elements: !3477)
!3477 = !{!3478, !3494}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "frag", scope: !3476, file: !244, line: 94, baseType: !3479, size: 224)
!3479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_frag", file: !244, line: 83, size: 224, elements: !3480)
!3480 = !{!3481, !3487, !3492, !3493}
!3481 = !DIDerivedType(tag: DW_TAG_member, scope: !3479, file: !244, line: 84, baseType: !3482, size: 64)
!3482 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3479, file: !244, line: 84, size: 64, elements: !3483)
!3483 = !{!3484, !3486}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3482, file: !244, line: 85, baseType: !3485, size: 64)
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3479, size: 64)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !3482, file: !244, line: 86, baseType: !44, size: 64)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !3479, file: !244, line: 88, baseType: !3488, size: 64, offset: 64)
!3488 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_copy_f", file: !244, line: 80, baseType: !3489)
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!3490 = !DISubroutineType(types: !3491)
!3491 = !{!44, !25, !916, !44, !44}
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3479, file: !244, line: 89, baseType: !25, size: 64, offset: 128)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3479, file: !244, line: 90, baseType: !488, size: 32, offset: 192)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3476, file: !244, line: 95, baseType: !488, size: 32, offset: 224)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "br_stack", scope: !3448, file: !244, line: 1180, baseType: !3496, size: 64, offset: 704)
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_stack", file: !244, line: 123, size: 128, elements: !3498)
!3498 = !{!3499, !3500, !3501}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3497, file: !244, line: 124, baseType: !537, size: 64)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "hw_idx", scope: !3497, file: !244, line: 125, baseType: !537, size: 64, offset: 64)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !3497, file: !244, line: 126, baseType: !3502, offset: 128)
!3502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3503, elements: !1230)
!3503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_entry", file: !3190, line: 1415, size: 192, elements: !3504)
!3504 = !{!3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516}
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !3503, file: !3190, line: 1416, baseType: !537, size: 64)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !3503, file: !3190, line: 1417, baseType: !537, size: 64, offset: 64)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "mispred", scope: !3503, file: !3190, line: 1418, baseType: !537, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "predicted", scope: !3503, file: !3190, line: 1419, baseType: !537, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "in_tx", scope: !3503, file: !3190, line: 1420, baseType: !537, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "abort", scope: !3503, file: !3190, line: 1421, baseType: !537, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "cycles", scope: !3503, file: !3190, line: 1422, baseType: !537, size: 16, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3503, file: !3190, line: 1423, baseType: !537, size: 4, offset: 148, flags: DIFlagBitField, extraData: i64 128)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "spec", scope: !3503, file: !3190, line: 1424, baseType: !537, size: 2, offset: 152, flags: DIFlagBitField, extraData: i64 128)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "new_type", scope: !3503, file: !3190, line: 1425, baseType: !537, size: 4, offset: 154, flags: DIFlagBitField, extraData: i64 128)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3503, file: !3190, line: 1426, baseType: !537, size: 3, offset: 158, flags: DIFlagBitField, extraData: i64 128)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3503, file: !3190, line: 1427, baseType: !537, size: 31, offset: 161, flags: DIFlagBitField, extraData: i64 128)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3448, file: !244, line: 1181, baseType: !3518, size: 64, offset: 768)
!3518 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_sample_weight", file: !3190, line: 1430, size: 64, elements: !3519)
!3519 = !{!3520, !3521}
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !3518, file: !3190, line: 1431, baseType: !537, size: 64)
!3521 = !DIDerivedType(tag: DW_TAG_member, scope: !3518, file: !3190, line: 1433, baseType: !3522, size: 64)
!3522 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3518, file: !3190, line: 1433, size: 64, elements: !3523)
!3523 = !{!3524, !3525, !3526}
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "var1_dw", scope: !3522, file: !3190, line: 1434, baseType: !489, size: 32)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "var2_w", scope: !3522, file: !3190, line: 1435, baseType: !99, size: 16, offset: 32)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "var3_w", scope: !3522, file: !3190, line: 1436, baseType: !99, size: 16, offset: 48)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "data_src", scope: !3448, file: !244, line: 1182, baseType: !3528, size: 64, offset: 832)
!3528 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_mem_data_src", file: !3190, line: 1267, size: 64, elements: !3529)
!3529 = !{!3530, !3531}
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3528, file: !3190, line: 1268, baseType: !537, size: 64)
!3531 = !DIDerivedType(tag: DW_TAG_member, scope: !3528, file: !3190, line: 1269, baseType: !3532, size: 64)
!3532 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3528, file: !3190, line: 1269, size: 64, elements: !3533)
!3533 = !{!3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544}
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "mem_op", scope: !3532, file: !3190, line: 1270, baseType: !537, size: 5, flags: DIFlagBitField, extraData: i64 0)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl", scope: !3532, file: !3190, line: 1271, baseType: !537, size: 14, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoop", scope: !3532, file: !3190, line: 1272, baseType: !537, size: 5, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lock", scope: !3532, file: !3190, line: 1273, baseType: !537, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "mem_dtlb", scope: !3532, file: !3190, line: 1274, baseType: !537, size: 7, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl_num", scope: !3532, file: !3190, line: 1275, baseType: !537, size: 4, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "mem_remote", scope: !3532, file: !3190, line: 1276, baseType: !537, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoopx", scope: !3532, file: !3190, line: 1277, baseType: !537, size: 2, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "mem_blk", scope: !3532, file: !3190, line: 1278, baseType: !537, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "mem_hops", scope: !3532, file: !3190, line: 1279, baseType: !537, size: 3, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "mem_rsvd", scope: !3532, file: !3190, line: 1280, baseType: !537, size: 18, offset: 46, flags: DIFlagBitField, extraData: i64 0)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "txn", scope: !3448, file: !244, line: 1183, baseType: !536, size: 64, offset: 896)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "regs_user", scope: !3448, file: !244, line: 1185, baseType: !3547, size: 128, offset: 960)
!3547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_regs", file: !3548, line: 7, size: 128, elements: !3549)
!3548 = !DIFile(filename: "./include/linux/perf_regs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ddec4c01469dcac1787a884df1c79d64")
!3549 = !{!3550, !3551}
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "abi", scope: !3547, file: !3548, line: 8, baseType: !537, size: 64)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3547, file: !3548, line: 9, baseType: !3552, size: 64, offset: 64)
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3553, size: 64)
!3553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3554, line: 103, size: 1344, elements: !3555)
!3554 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3555 = !{!3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3584, !3585, !3586}
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3553, file: !3554, line: 109, baseType: !44, size: 64)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3553, file: !3554, line: 110, baseType: !44, size: 64, offset: 64)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3553, file: !3554, line: 111, baseType: !44, size: 64, offset: 128)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3553, file: !3554, line: 112, baseType: !44, size: 64, offset: 192)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3553, file: !3554, line: 113, baseType: !44, size: 64, offset: 256)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3553, file: !3554, line: 114, baseType: !44, size: 64, offset: 320)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3553, file: !3554, line: 117, baseType: !44, size: 64, offset: 384)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3553, file: !3554, line: 118, baseType: !44, size: 64, offset: 448)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3553, file: !3554, line: 119, baseType: !44, size: 64, offset: 512)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3553, file: !3554, line: 120, baseType: !44, size: 64, offset: 576)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3553, file: !3554, line: 121, baseType: !44, size: 64, offset: 640)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3553, file: !3554, line: 122, baseType: !44, size: 64, offset: 704)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3553, file: !3554, line: 123, baseType: !44, size: 64, offset: 768)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3553, file: !3554, line: 124, baseType: !44, size: 64, offset: 832)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3553, file: !3554, line: 125, baseType: !44, size: 64, offset: 896)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3553, file: !3554, line: 139, baseType: !44, size: 64, offset: 960)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3553, file: !3554, line: 142, baseType: !44, size: 64, offset: 1024)
!3573 = !DIDerivedType(tag: DW_TAG_member, scope: !3553, file: !3554, line: 144, baseType: !3574, size: 64, offset: 1088)
!3574 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3553, file: !3554, line: 144, size: 64, elements: !3575)
!3575 = !{!3576, !3577, !3578}
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3574, file: !3554, line: 146, baseType: !98, size: 16)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3574, file: !3554, line: 148, baseType: !536, size: 64)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3574, file: !3554, line: 150, baseType: !3579, size: 64)
!3579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3554, line: 59, size: 64, elements: !3580)
!3580 = !{!3581, !3582, !3583}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3579, file: !3554, line: 61, baseType: !536, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3579, file: !3554, line: 63, baseType: !536, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3579, file: !3554, line: 65, baseType: !536, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3553, file: !3554, line: 153, baseType: !44, size: 64, offset: 1152)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3553, file: !3554, line: 154, baseType: !44, size: 64, offset: 1216)
!3586 = !DIDerivedType(tag: DW_TAG_member, scope: !3553, file: !3554, line: 156, baseType: !3587, size: 64, offset: 1280)
!3587 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3553, file: !3554, line: 156, size: 64, elements: !3588)
!3588 = !{!3589, !3590, !3591}
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3587, file: !3554, line: 158, baseType: !98, size: 16)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3587, file: !3554, line: 160, baseType: !536, size: 64)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3587, file: !3554, line: 162, baseType: !3592, size: 64)
!3592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3554, line: 69, size: 64, elements: !3593)
!3593 = !{!3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3592, file: !3554, line: 71, baseType: !536, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3592, file: !3554, line: 73, baseType: !536, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3592, file: !3554, line: 75, baseType: !536, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3592, file: !3554, line: 77, baseType: !536, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3592, file: !3554, line: 80, baseType: !536, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3592, file: !3554, line: 83, baseType: !536, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3592, file: !3554, line: 86, baseType: !536, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3592, file: !3554, line: 88, baseType: !536, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3592, file: !3554, line: 93, baseType: !536, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3592, file: !3554, line: 100, baseType: !536, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "regs_intr", scope: !3448, file: !244, line: 1186, baseType: !3547, size: 128, offset: 1088)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "stack_user_size", scope: !3448, file: !244, line: 1187, baseType: !536, size: 64, offset: 1216)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !3448, file: !244, line: 1189, baseType: !536, size: 64, offset: 1280)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3448, file: !244, line: 1190, baseType: !536, size: 64, offset: 1344)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3448, file: !244, line: 1191, baseType: !536, size: 64, offset: 1408)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3448, file: !244, line: 1192, baseType: !536, size: 64, offset: 1472)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "data_page_size", scope: !3448, file: !244, line: 1193, baseType: !536, size: 64, offset: 1536)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "code_page_size", scope: !3448, file: !244, line: 1194, baseType: !536, size: 64, offset: 1600)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "aux_size", scope: !3448, file: !244, line: 1195, baseType: !536, size: 64, offset: 1664)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler_context", scope: !2637, file: !244, line: 812, baseType: !25, size: 64, offset: 8000)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "tp_event", scope: !2637, file: !244, line: 820, baseType: !2430, size: 64, offset: 8064)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2637, file: !244, line: 821, baseType: !2617, size: 64, offset: 8128)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !2637, file: !244, line: 828, baseType: !3617, size: 64, offset: 8192)
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!3618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup", file: !244, line: 1046, size: 1664, elements: !3619)
!3619 = !{!3620, !3621}
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "css", scope: !3618, file: !244, line: 1047, baseType: !1510, size: 1600)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3618, file: !244, line: 1048, baseType: !3622, size: 64, offset: 1600)
!3622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3623, size: 64)
!3623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup_info", file: !244, line: 1039, size: 256, elements: !3624)
!3624 = !{!3625, !3626, !3627, !3628}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3623, file: !244, line: 1040, baseType: !536, size: 64)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3623, file: !244, line: 1041, baseType: !536, size: 64, offset: 64)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !3623, file: !244, line: 1042, baseType: !536, size: 64, offset: 128)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3623, file: !244, line: 1043, baseType: !27, size: 32, offset: 192)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2637, file: !244, line: 832, baseType: !25, size: 64, offset: 8256)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "sb_list", scope: !2637, file: !244, line: 834, baseType: !102, size: 128, offset: 8320)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !2637, file: !244, line: 842, baseType: !489, size: 32, offset: 8448)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1928, file: !161, line: 524, baseType: !13, size: 32, offset: 8320)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1928, file: !161, line: 525, baseType: !3634, size: 64, offset: 8384)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !3637, line: 28, size: 192, elements: !3638)
!3637 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!3638 = !{!3639, !3640, !3641}
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !3636, file: !3637, line: 29, baseType: !22, size: 64)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !3636, file: !3637, line: 30, baseType: !22, size: 64, offset: 64)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !3636, file: !3637, line: 31, baseType: !44, size: 64, offset: 128)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1928, file: !161, line: 526, baseType: !13, size: 32, offset: 8448)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1928, file: !161, line: 533, baseType: !25, size: 64, offset: 8512)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1928, file: !161, line: 534, baseType: !13, size: 32, offset: 8576)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1928, file: !161, line: 535, baseType: !3646, size: 64, offset: 8640)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1928, file: !161, line: 536, baseType: !13, size: 32, offset: 8704)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1928, file: !161, line: 539, baseType: !27, size: 32, offset: 8736)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1928, file: !161, line: 540, baseType: !2513, size: 64, offset: 8768)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1928, file: !161, line: 563, baseType: !102, size: 128, offset: 8832)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1928, file: !161, line: 565, baseType: !102, size: 128, offset: 8960)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1928, file: !161, line: 568, baseType: !2524, size: 64, offset: 9088)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1928, file: !161, line: 570, baseType: !54, size: 32, offset: 9152)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1904, file: !289, line: 2382, baseType: !1903, size: 64, offset: 448)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1904, file: !289, line: 2383, baseType: !437, size: 64, offset: 512)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1904, file: !289, line: 2385, baseType: !3657, offset: 576)
!3657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2379, line: 206, elements: !803)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1904, file: !289, line: 2386, baseType: !3657, offset: 576)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1904, file: !289, line: 2387, baseType: !3657, offset: 576)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1904, file: !289, line: 2388, baseType: !3661, offset: 576)
!3661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3657, elements: !420)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1904, file: !289, line: 2390, baseType: !3657, offset: 576)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1904, file: !289, line: 2391, baseType: !3657, offset: 576)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1904, file: !289, line: 2392, baseType: !3657, offset: 576)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1904, file: !289, line: 2393, baseType: !3657, offset: 576)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1893, file: !289, line: 1197, baseType: !3667, size: 64, offset: 384)
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3669)
!3669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !289, line: 2057, size: 1664, elements: !3670)
!3670 = !{!3671, !3675, !3679, !3680, !3684, !3708, !3712, !3713, !3714, !3718, !3722, !3726, !3727, !3728, !3734, !3738, !3739, !3743, !3744, !3745, !3746, !3750, !3754, !3801, !3816, !3817}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !3669, file: !289, line: 2058, baseType: !3672, size: 64)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = !DISubroutineType(types: !3674)
!3674 = !{!1764, !1892}
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !3669, file: !289, line: 2059, baseType: !3676, size: 64, offset: 64)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DISubroutineType(types: !3678)
!3678 = !{null, !1764}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3669, file: !289, line: 2060, baseType: !3676, size: 64, offset: 128)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !3669, file: !289, line: 2062, baseType: !3681, size: 64, offset: 192)
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3682, size: 64)
!3682 = !DISubroutineType(types: !3683)
!3683 = !{null, !1764, !27}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !3669, file: !289, line: 2063, baseType: !3685, size: 64, offset: 256)
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3686 = !DISubroutineType(types: !3687)
!3687 = !{!27, !1764, !3688}
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !135, line: 42, size: 384, elements: !3690)
!3690 = !{!3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !3689, file: !135, line: 43, baseType: !919, size: 64)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !3689, file: !135, line: 45, baseType: !919, size: 64, offset: 64)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !3689, file: !135, line: 52, baseType: !46, size: 64, offset: 128)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !3689, file: !135, line: 53, baseType: !46, size: 64, offset: 192)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !3689, file: !135, line: 55, baseType: !134, size: 32, offset: 256)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !3689, file: !135, line: 57, baseType: !13, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !3689, file: !135, line: 58, baseType: !13, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !3689, file: !135, line: 59, baseType: !13, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !3689, file: !135, line: 60, baseType: !13, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !3689, file: !135, line: 61, baseType: !13, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !3689, file: !135, line: 62, baseType: !13, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "unpinned_fscache_wb", scope: !3689, file: !135, line: 63, baseType: !13, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !3689, file: !135, line: 71, baseType: !13, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "swap_plug", scope: !3689, file: !135, line: 78, baseType: !3705, size: 64, offset: 320)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_iocb", file: !135, line: 78, flags: DIFlagFwdDecl)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !3669, file: !289, line: 2064, baseType: !3709, size: 64, offset: 320)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = !DISubroutineType(types: !3711)
!3711 = !{!27, !1764}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !3669, file: !289, line: 2065, baseType: !3676, size: 64, offset: 384)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !3669, file: !289, line: 2066, baseType: !1923, size: 64, offset: 448)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !3669, file: !289, line: 2067, baseType: !3715, size: 64, offset: 512)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = !DISubroutineType(types: !3717)
!3717 = !{!27, !1892, !27}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !3669, file: !289, line: 2068, baseType: !3719, size: 64, offset: 576)
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{!27, !1892, !288}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !3669, file: !289, line: 2069, baseType: !3723, size: 64, offset: 640)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{!27, !1892}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !3669, file: !289, line: 2070, baseType: !3719, size: 64, offset: 704)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !3669, file: !289, line: 2071, baseType: !3723, size: 64, offset: 768)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !3669, file: !289, line: 2072, baseType: !3729, size: 64, offset: 832)
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!27, !1786, !3732}
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3733 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !289, line: 62, flags: DIFlagFwdDecl)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !3669, file: !289, line: 2073, baseType: !3735, size: 64, offset: 896)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DISubroutineType(types: !3737)
!3737 = !{!27, !1892, !347, !1078}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !3669, file: !289, line: 2074, baseType: !1923, size: 64, offset: 960)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3669, file: !289, line: 2076, baseType: !3740, size: 64, offset: 1024)
!3740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3741, size: 64)
!3741 = !DISubroutineType(types: !3742)
!3742 = !{!27, !1574, !1786}
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !3669, file: !289, line: 2077, baseType: !3740, size: 64, offset: 1088)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3669, file: !289, line: 2078, baseType: !3740, size: 64, offset: 1152)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !3669, file: !289, line: 2079, baseType: !3740, size: 64, offset: 1216)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !3669, file: !289, line: 2081, baseType: !3747, size: 64, offset: 1280)
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = !DISubroutineType(types: !3749)
!3749 = !{!2010, !1892, !27, !1078, !40, !46}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !3669, file: !289, line: 2082, baseType: !3751, size: 64, offset: 1344)
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 64)
!3752 = !DISubroutineType(types: !3753)
!3753 = !{!2010, !1892, !27, !22, !40, !46}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !3669, file: !289, line: 2083, baseType: !3755, size: 64, offset: 1408)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = !DISubroutineType(types: !3757)
!3757 = !{!3758, !1764}
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !294, line: 296, size: 1664, elements: !3761)
!3761 = !{!3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3786, !3787, !3788}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !3760, file: !294, line: 297, baseType: !441, size: 128)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !3760, file: !294, line: 298, baseType: !102, size: 128, offset: 128)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !3760, file: !294, line: 299, baseType: !102, size: 128, offset: 256)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !3760, file: !294, line: 300, baseType: !102, size: 128, offset: 384)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !3760, file: !294, line: 301, baseType: !383, size: 256, offset: 512)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !3760, file: !294, line: 302, baseType: !64, size: 32, offset: 768)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !3760, file: !294, line: 303, baseType: !54, size: 32, offset: 800)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !3760, file: !294, line: 304, baseType: !1892, size: 64, offset: 832)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !3760, file: !294, line: 305, baseType: !3771, size: 64, offset: 896)
!3771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !294, line: 68, size: 64, elements: !3772)
!3772 = !{!3773, !3785}
!3773 = !DIDerivedType(tag: DW_TAG_member, scope: !3771, file: !294, line: 69, baseType: !3774, size: 32)
!3774 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3771, file: !294, line: 69, size: 32, elements: !3775)
!3775 = !{!3776, !3777, !3778}
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3774, file: !294, line: 70, baseType: !974, size: 32)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3774, file: !294, line: 71, baseType: !982, size: 32)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !3774, file: !294, line: 72, baseType: !3779, size: 32)
!3779 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !3780, line: 24, baseType: !3781)
!3780 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!3781 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3780, line: 22, size: 32, elements: !3782)
!3782 = !{!3783}
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3781, file: !3780, line: 23, baseType: !3784, size: 32)
!3784 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !3780, line: 20, baseType: !980)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3771, file: !294, line: 74, baseType: !293, size: 32, offset: 32)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !3760, file: !294, line: 306, baseType: !46, size: 64, offset: 960)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !3760, file: !294, line: 307, baseType: !44, size: 64, offset: 1024)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !3760, file: !294, line: 308, baseType: !3789, size: 576, offset: 1088)
!3789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !294, line: 205, size: 576, elements: !3790)
!3790 = !{!3791, !3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800}
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !3789, file: !294, line: 206, baseType: !3792, size: 64)
!3792 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !294, line: 66, baseType: !48)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !3789, file: !294, line: 207, baseType: !3792, size: 64, offset: 64)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !3789, file: !294, line: 208, baseType: !3792, size: 64, offset: 128)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !3789, file: !294, line: 209, baseType: !3792, size: 64, offset: 192)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !3789, file: !294, line: 210, baseType: !3792, size: 64, offset: 256)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !3789, file: !294, line: 211, baseType: !3792, size: 64, offset: 320)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !3789, file: !294, line: 212, baseType: !3792, size: 64, offset: 384)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !3789, file: !294, line: 213, baseType: !1027, size: 64, offset: 448)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !3789, file: !294, line: 214, baseType: !1027, size: 64, offset: 512)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !3669, file: !289, line: 2085, baseType: !3802, size: 64, offset: 1472)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = !DISubroutineType(types: !3804)
!3804 = !{!919, !1892, !3805}
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !3807, line: 15, size: 256, elements: !3808)
!3807 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!3808 = !{!3809, !3810, !3811, !3812, !3813}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !3806, file: !3807, line: 16, baseType: !341, size: 32)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !3806, file: !3807, line: 19, baseType: !27, size: 32, offset: 32)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !3806, file: !3807, line: 26, baseType: !44, size: 64, offset: 64)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !3806, file: !3807, line: 33, baseType: !44, size: 64, offset: 128)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !3806, file: !3807, line: 36, baseType: !3814, size: 64, offset: 192)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !3807, line: 36, flags: DIFlagFwdDecl)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !3669, file: !289, line: 2087, baseType: !3802, size: 64, offset: 1536)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3669, file: !289, line: 2089, baseType: !1923, size: 64, offset: 1600)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1893, file: !289, line: 1198, baseType: !3819, size: 64, offset: 448)
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3820, size: 64)
!3820 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3821)
!3821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !294, line: 324, size: 704, elements: !3822)
!3822 = !{!3823, !3827, !3831, !3835, !3836, !3837, !3838, !3839, !3844, !3849, !3853}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !3821, file: !294, line: 325, baseType: !3824, size: 64)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = !DISubroutineType(types: !3826)
!3826 = !{!27, !3759}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !3821, file: !294, line: 326, baseType: !3828, size: 64, offset: 64)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = !DISubroutineType(types: !3830)
!3830 = !{!3759, !1892, !27}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !3821, file: !294, line: 327, baseType: !3832, size: 64, offset: 128)
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = !DISubroutineType(types: !3834)
!3834 = !{null, !3759}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !3821, file: !294, line: 328, baseType: !3824, size: 64, offset: 192)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !3821, file: !294, line: 329, baseType: !3824, size: 64, offset: 256)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !3821, file: !294, line: 330, baseType: !3824, size: 64, offset: 320)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !3821, file: !294, line: 331, baseType: !3715, size: 64, offset: 384)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !3821, file: !294, line: 334, baseType: !3840, size: 64, offset: 448)
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3841, size: 64)
!3841 = !DISubroutineType(types: !3842)
!3842 = !{!3843, !1764}
!3843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !3821, file: !294, line: 335, baseType: !3845, size: 64, offset: 512)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = !DISubroutineType(types: !3847)
!3847 = !{!27, !1764, !3848}
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !3821, file: !294, line: 337, baseType: !3850, size: 64, offset: 576)
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3851, size: 64)
!3851 = !DISubroutineType(types: !3852)
!3852 = !{!27, !1764, !3843}
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3821, file: !294, line: 339, baseType: !3854, size: 64, offset: 640)
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3855, size: 64)
!3855 = !DISubroutineType(types: !3856)
!3856 = !{!27, !1892, !3857}
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3771, size: 64)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1893, file: !289, line: 1199, baseType: !3859, size: 64, offset: 512)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3861)
!3861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !294, line: 430, size: 704, elements: !3862)
!3862 = !{!3863, !3874, !3875, !3879, !3880, !3881, !3896, !3919, !3923, !3924, !3947}
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !3861, file: !294, line: 431, baseType: !3864, size: 64)
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3865 = !DISubroutineType(types: !3866)
!3866 = !{!27, !1892, !27, !27, !3867}
!3867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3868, size: 64)
!3868 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3869)
!3869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !3870, line: 8, size: 128, elements: !3871)
!3870 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!3871 = !{!3872, !3873}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !3869, file: !3870, line: 9, baseType: !1886, size: 64)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !3869, file: !3870, line: 10, baseType: !1786, size: 64, offset: 64)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !3861, file: !294, line: 432, baseType: !3715, size: 64, offset: 64)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !3861, file: !294, line: 433, baseType: !3876, size: 64, offset: 128)
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = !DISubroutineType(types: !3878)
!3878 = !{!27, !1892, !13}
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !3861, file: !294, line: 434, baseType: !3876, size: 64, offset: 192)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !3861, file: !294, line: 435, baseType: !3715, size: 64, offset: 256)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !3861, file: !294, line: 436, baseType: !3882, size: 64, offset: 320)
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = !DISubroutineType(types: !3884)
!3884 = !{!27, !1892, !27, !3885}
!3885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3886, size: 64)
!3886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !294, line: 417, size: 256, elements: !3887)
!3887 = !{!3888, !3889, !3890, !3891, !3892, !3893, !3894, !3895}
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !3886, file: !294, line: 418, baseType: !27, size: 32)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !3886, file: !294, line: 419, baseType: !13, size: 32, offset: 32)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !3886, file: !294, line: 420, baseType: !13, size: 32, offset: 64)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !3886, file: !294, line: 422, baseType: !13, size: 32, offset: 96)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !3886, file: !294, line: 423, baseType: !13, size: 32, offset: 128)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !3886, file: !294, line: 424, baseType: !13, size: 32, offset: 160)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !3886, file: !294, line: 425, baseType: !13, size: 32, offset: 192)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !3886, file: !294, line: 426, baseType: !13, size: 32, offset: 224)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !3861, file: !294, line: 437, baseType: !3897, size: 64, offset: 384)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = !DISubroutineType(types: !3899)
!3899 = !{!27, !1892, !3771, !3900}
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3901, size: 64)
!3901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !294, line: 345, size: 960, elements: !3902)
!3902 = !{!3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3918}
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !3901, file: !294, line: 346, baseType: !27, size: 32)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !3901, file: !294, line: 347, baseType: !536, size: 64, offset: 64)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !3901, file: !294, line: 348, baseType: !536, size: 64, offset: 128)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !3901, file: !294, line: 349, baseType: !536, size: 64, offset: 192)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !3901, file: !294, line: 350, baseType: !536, size: 64, offset: 256)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !3901, file: !294, line: 351, baseType: !536, size: 64, offset: 320)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !3901, file: !294, line: 352, baseType: !536, size: 64, offset: 384)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !3901, file: !294, line: 353, baseType: !342, size: 64, offset: 448)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !3901, file: !294, line: 355, baseType: !342, size: 64, offset: 512)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !3901, file: !294, line: 356, baseType: !27, size: 32, offset: 576)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !3901, file: !294, line: 357, baseType: !27, size: 32, offset: 608)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !3901, file: !294, line: 358, baseType: !536, size: 64, offset: 640)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !3901, file: !294, line: 359, baseType: !536, size: 64, offset: 704)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !3901, file: !294, line: 360, baseType: !536, size: 64, offset: 768)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !3901, file: !294, line: 361, baseType: !342, size: 64, offset: 832)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !3901, file: !294, line: 362, baseType: !27, size: 32, offset: 896)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !3861, file: !294, line: 438, baseType: !3920, size: 64, offset: 448)
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3921, size: 64)
!3921 = !DISubroutineType(types: !3922)
!3922 = !{!27, !1892, !3857, !3900}
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !3861, file: !294, line: 440, baseType: !3897, size: 64, offset: 512)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !3861, file: !294, line: 441, baseType: !3925, size: 64, offset: 576)
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3926 = !DISubroutineType(types: !3927)
!3927 = !{!27, !1892, !3928}
!3928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3929, size: 64)
!3929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !294, line: 411, size: 1408, elements: !3930)
!3930 = !{!3931, !3932}
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !3929, file: !294, line: 412, baseType: !13, size: 32)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !3929, file: !294, line: 413, baseType: !3933, size: 1344, offset: 64)
!3933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3934, size: 1344, elements: !420)
!3934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !294, line: 397, size: 448, elements: !3935)
!3935 = !{!3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3946}
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3934, file: !294, line: 398, baseType: !13, size: 32)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !3934, file: !294, line: 399, baseType: !13, size: 32, offset: 32)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !3934, file: !294, line: 401, baseType: !13, size: 32, offset: 64)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !3934, file: !294, line: 402, baseType: !13, size: 32, offset: 96)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !3934, file: !294, line: 403, baseType: !13, size: 32, offset: 128)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !3934, file: !294, line: 404, baseType: !13, size: 32, offset: 160)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !3934, file: !294, line: 405, baseType: !13, size: 32, offset: 192)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3934, file: !294, line: 406, baseType: !538, size: 64, offset: 256)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3934, file: !294, line: 407, baseType: !3945, size: 64, offset: 320)
!3945 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !30, line: 132, baseType: !536)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !3934, file: !294, line: 408, baseType: !3945, size: 64, offset: 384)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !3861, file: !294, line: 442, baseType: !3876, size: 64, offset: 640)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1893, file: !289, line: 1200, baseType: !3949, size: 64, offset: 576)
!3949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3950, size: 64)
!3950 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3951)
!3951 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !289, line: 54, flags: DIFlagFwdDecl)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1893, file: !289, line: 1201, baseType: !44, size: 64, offset: 640)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1893, file: !289, line: 1202, baseType: !44, size: 64, offset: 704)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1893, file: !289, line: 1203, baseType: !44, size: 64, offset: 768)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1893, file: !289, line: 1204, baseType: !1786, size: 64, offset: 832)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1893, file: !289, line: 1205, baseType: !837, size: 320, offset: 896)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1893, file: !289, line: 1206, baseType: !27, size: 32, offset: 1216)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1893, file: !289, line: 1207, baseType: !54, size: 32, offset: 1248)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1893, file: !289, line: 1209, baseType: !25, size: 64, offset: 1280)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1893, file: !289, line: 1211, baseType: !3961, size: 64, offset: 1344)
!3961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3962, size: 64)
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3963, size: 64)
!3963 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3964)
!3964 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !289, line: 1211, flags: DIFlagFwdDecl)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1893, file: !289, line: 1223, baseType: !3966, size: 64, offset: 1408)
!3966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !1798, line: 34, size: 64, elements: !3967)
!3967 = !{!3968}
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3966, file: !1798, line: 35, baseType: !1801, size: 64)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1893, file: !289, line: 1224, baseType: !102, size: 128, offset: 1472)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1893, file: !289, line: 1225, baseType: !3971, size: 64, offset: 1600)
!3971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3972, size: 64)
!3972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !3973, line: 40, size: 7424, elements: !3974)
!3973 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!3974 = !{!3975, !3977, !3978, !4415, !4416, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4443, !4444, !4445, !4446, !4447, !4448, !4449, !4459, !4460}
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !3972, file: !3973, line: 41, baseType: !3976, size: 64)
!3976 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !30, line: 131, baseType: !536)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !3972, file: !3973, line: 42, baseType: !3976, size: 64, offset: 64)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !3972, file: !3973, line: 43, baseType: !3979, size: 64, offset: 128)
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3980, size: 64)
!3980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !155, line: 128, size: 4544, elements: !3981)
!3981 = !{!3982, !3983, !3984, !3985, !3987, !3988, !3989, !3990, !3991, !4184, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4381, !4382, !4383, !4384, !4387, !4388, !4391, !4394, !4395, !4398, !4399, !4400, !4401}
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !3980, file: !155, line: 133, baseType: !27, size: 32)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "first_minor", scope: !3980, file: !155, line: 134, baseType: !27, size: 32, offset: 32)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "minors", scope: !3980, file: !155, line: 135, baseType: !27, size: 32, offset: 64)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "disk_name", scope: !3980, file: !155, line: 137, baseType: !3986, size: 256, offset: 96)
!3986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !1823)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3980, file: !155, line: 139, baseType: !31, size: 16, offset: 352)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "event_flags", scope: !3980, file: !155, line: 140, baseType: !31, size: 16, offset: 368)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "part_tbl", scope: !3980, file: !155, line: 142, baseType: !466, size: 128, offset: 384)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "part0", scope: !3980, file: !155, line: 143, baseType: !3971, size: 64, offset: 512)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !3980, file: !155, line: 145, baseType: !3992, size: 64, offset: 576)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3994)
!3994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device_operations", file: !155, line: 1388, size: 1152, elements: !3995)
!3995 = !{!3996, !4090, !4105, !4110, !4114, !4118, !4119, !4123, !4124, !4130, !4134, !4135, !4139, !4165, !4169, !4174, !4175, !4179}
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "submit_bio", scope: !3994, file: !155, line: 1389, baseType: !3997, size: 64)
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = !DISubroutineType(types: !3999)
!3999 = !{null, !4000}
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4001, size: 64)
!4001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio", file: !3973, line: 265, size: 960, elements: !4002)
!4002 = !{!4003, !4004, !4005, !4007, !4008, !4009, !4011, !4012, !4020, !4022, !4025, !4026, !4029, !4033, !4034, !4036, !4037, !4038, !4039, !4046, !4088}
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "bi_next", scope: !4001, file: !3973, line: 266, baseType: !4000, size: 64)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bdev", scope: !4001, file: !3973, line: 267, baseType: !3971, size: 64, offset: 64)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "bi_opf", scope: !4001, file: !3973, line: 268, baseType: !4006, size: 32, offset: 128)
!4006 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_opf_t", file: !3973, line: 256, baseType: !489)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "bi_flags", scope: !4001, file: !3973, line: 271, baseType: !31, size: 16, offset: 160)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "bi_ioprio", scope: !4001, file: !3973, line: 272, baseType: !31, size: 16, offset: 176)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "bi_status", scope: !4001, file: !3973, line: 273, baseType: !4010, size: 8, offset: 192)
!4010 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_status_t", file: !3973, line: 97, baseType: !88)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_remaining", scope: !4001, file: !3973, line: 274, baseType: !54, size: 32, offset: 224)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iter", scope: !4001, file: !3973, line: 276, baseType: !4013, size: 160, align: 32, offset: 256)
!4013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bvec_iter", file: !4014, line: 77, size: 160, align: 32, elements: !4015)
!4014 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b9bd326f7e1a9ed4bc3baca0011068cc")
!4015 = !{!4016, !4017, !4018, !4019}
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "bi_sector", scope: !4013, file: !4014, line: 78, baseType: !3976, size: 64)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "bi_size", scope: !4013, file: !4014, line: 80, baseType: !13, size: 32, offset: 64)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "bi_idx", scope: !4013, file: !4014, line: 82, baseType: !13, size: 32, offset: 96)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bvec_done", scope: !4013, file: !4014, line: 84, baseType: !13, size: 32, offset: 128)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "bi_cookie", scope: !4001, file: !3973, line: 278, baseType: !4021, size: 32, offset: 416)
!4021 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_qc_t", file: !3973, line: 258, baseType: !13)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "bi_end_io", scope: !4001, file: !3973, line: 279, baseType: !4023, size: 64, offset: 448)
!4023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4024, size: 64)
!4024 = !DIDerivedType(tag: DW_TAG_typedef, name: "bio_end_io_t", file: !3973, line: 20, baseType: !3998)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "bi_private", scope: !4001, file: !3973, line: 280, baseType: !25, size: 64, offset: 512)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "bi_blkg", scope: !4001, file: !3973, line: 288, baseType: !4027, size: 64, offset: 576)
!4027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4028, size: 64)
!4028 = !DICompositeType(tag: DW_TAG_structure_type, name: "blkcg_gq", file: !3973, line: 288, flags: DIFlagFwdDecl)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "bi_issue", scope: !4001, file: !3973, line: 289, baseType: !4030, size: 64, offset: 640)
!4030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_issue", file: !3973, line: 228, size: 64, elements: !4031)
!4031 = !{!4032}
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4030, file: !3973, line: 229, baseType: !536, size: 64)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iocost_cost", scope: !4001, file: !3973, line: 291, baseType: !536, size: 64, offset: 704)
!4034 = !DIDerivedType(tag: DW_TAG_member, scope: !4001, file: !3973, line: 299, baseType: !4035, offset: 768)
!4035 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4001, file: !3973, line: 299, elements: !803)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "bi_vcnt", scope: !4001, file: !3973, line: 305, baseType: !31, size: 16, offset: 768)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "bi_max_vecs", scope: !4001, file: !3973, line: 311, baseType: !31, size: 16, offset: 784)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_cnt", scope: !4001, file: !3973, line: 313, baseType: !54, size: 32, offset: 800)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "bi_io_vec", scope: !4001, file: !3973, line: 315, baseType: !4040, size: 64, offset: 832)
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4041, size: 64)
!4041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !4014, line: 31, size: 128, elements: !4042)
!4042 = !{!4043, !4044, !4045}
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !4041, file: !4014, line: 32, baseType: !1738, size: 64)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !4041, file: !4014, line: 33, baseType: !13, size: 32, offset: 64)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !4041, file: !4014, line: 34, baseType: !13, size: 32, offset: 96)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "bi_pool", scope: !4001, file: !3973, line: 317, baseType: !4047, size: 64, offset: 896)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_set", file: !4049, line: 678, size: 1984, elements: !4050)
!4049 = !DIFile(filename: "./include/linux/bio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48d164cf34dda85459af1fe5d2b8d08f")
!4050 = !{!4051, !4052, !4053, !4056, !4077, !4078, !4079, !4080, !4085, !4086, !4087}
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "bio_slab", scope: !4048, file: !4049, line: 679, baseType: !3128, size: 64)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "front_pad", scope: !4048, file: !4049, line: 680, baseType: !13, size: 32, offset: 64)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !4048, file: !4049, line: 685, baseType: !4054, size: 64, offset: 128)
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4055, size: 64)
!4055 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_alloc_cache", file: !4049, line: 685, flags: DIFlagFwdDecl)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "bio_pool", scope: !4048, file: !4049, line: 687, baseType: !4057, size: 576, offset: 192)
!4057 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_t", file: !4058, line: 26, baseType: !4059)
!4058 = !DIFile(filename: "./include/linux/mempool.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1ef8a210e9c9e696cc7d6e9be9316611")
!4059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mempool_s", file: !4058, line: 16, size: 576, elements: !4060)
!4060 = !{!4061, !4062, !4063, !4064, !4065, !4066, !4071, !4076}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4059, file: !4058, line: 17, baseType: !64, size: 32)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "min_nr", scope: !4059, file: !4058, line: 18, baseType: !27, size: 32, offset: 32)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "curr_nr", scope: !4059, file: !4058, line: 19, baseType: !27, size: 32, offset: 64)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !4059, file: !4058, line: 20, baseType: !3139, size: 64, offset: 128)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "pool_data", scope: !4059, file: !4058, line: 22, baseType: !25, size: 64, offset: 192)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4059, file: !4058, line: 23, baseType: !4067, size: 64, offset: 256)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_alloc_t", file: !4058, line: 13, baseType: !4069)
!4069 = !DISubroutineType(types: !4070)
!4070 = !{!25, !341, !25}
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4059, file: !4058, line: 24, baseType: !4072, size: 64, offset: 320)
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_free_t", file: !4058, line: 14, baseType: !4074)
!4074 = !DISubroutineType(types: !4075)
!4075 = !{null, !25, !25}
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !4059, file: !4058, line: 25, baseType: !59, size: 192, offset: 384)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "bvec_pool", scope: !4048, file: !4049, line: 688, baseType: !4057, size: 576, offset: 768)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "back_pad", scope: !4048, file: !4049, line: 694, baseType: !13, size: 32, offset: 1344)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_lock", scope: !4048, file: !4049, line: 699, baseType: !64, size: 32, offset: 1376)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_list", scope: !4048, file: !4049, line: 700, baseType: !4081, size: 128, offset: 1408)
!4081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !4049, line: 550, size: 128, elements: !4082)
!4082 = !{!4083, !4084}
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4081, file: !4049, line: 551, baseType: !4000, size: 64)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !4081, file: !4049, line: 552, baseType: !4000, size: 64, offset: 64)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_work", scope: !4048, file: !4049, line: 701, baseType: !1117, size: 256, offset: 1536)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_workqueue", scope: !4048, file: !4049, line: 702, baseType: !2412, size: 64, offset: 1792)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_dead", scope: !4048, file: !4049, line: 707, baseType: !441, size: 128, offset: 1856)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "bi_inline_vecs", scope: !4001, file: !3973, line: 324, baseType: !4089, offset: 960)
!4089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4041, elements: !1230)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "poll_bio", scope: !3994, file: !155, line: 1390, baseType: !4091, size: 64, offset: 64)
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4092, size: 64)
!4092 = !DISubroutineType(types: !4093)
!4093 = !{!27, !4000, !4094, !13}
!4094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4095, size: 64)
!4095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !155, line: 1559, size: 192, elements: !4096)
!4096 = !{!4097, !4100, !4101}
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "req_list", scope: !4095, file: !155, line: 1560, baseType: !4098, size: 64)
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4099 = !DICompositeType(tag: DW_TAG_structure_type, name: "request", file: !155, line: 32, flags: DIFlagFwdDecl)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "need_ts", scope: !4095, file: !155, line: 1561, baseType: !1001, size: 8, offset: 64)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4095, file: !155, line: 1562, baseType: !4102, size: 64, offset: 128)
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4103, size: 64)
!4103 = !DISubroutineType(types: !4104)
!4104 = !{null, !4094}
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3994, file: !155, line: 1392, baseType: !4106, size: 64, offset: 128)
!4106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4107, size: 64)
!4107 = !DISubroutineType(types: !4108)
!4108 = !{!27, !3979, !4109}
!4109 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_mode_t", file: !155, line: 115, baseType: !13)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3994, file: !155, line: 1393, baseType: !4111, size: 64, offset: 192)
!4111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4112, size: 64)
!4112 = !DISubroutineType(types: !4113)
!4113 = !{null, !3979}
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !3994, file: !155, line: 1394, baseType: !4115, size: 64, offset: 256)
!4115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4116, size: 64)
!4116 = !DISubroutineType(types: !4117)
!4117 = !{!27, !3971, !4109, !13, !44}
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3994, file: !155, line: 1396, baseType: !4115, size: 64, offset: 320)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "check_events", scope: !3994, file: !155, line: 1398, baseType: !4120, size: 64, offset: 384)
!4120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4121, size: 64)
!4121 = !DISubroutineType(types: !4122)
!4122 = !{!13, !3979, !13}
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_native_capacity", scope: !3994, file: !155, line: 1400, baseType: !4111, size: 64, offset: 448)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "getgeo", scope: !3994, file: !155, line: 1401, baseType: !4125, size: 64, offset: 512)
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4126, size: 64)
!4126 = !DISubroutineType(types: !4127)
!4127 = !{!27, !3971, !4128}
!4128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4129, size: 64)
!4129 = !DICompositeType(tag: DW_TAG_structure_type, name: "hd_geometry", file: !289, line: 56, flags: DIFlagFwdDecl)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "set_read_only", scope: !3994, file: !155, line: 1402, baseType: !4131, size: 64, offset: 576)
!4131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4132, size: 64)
!4132 = !DISubroutineType(types: !4133)
!4133 = !{!27, !3971, !1001}
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "free_disk", scope: !3994, file: !155, line: 1403, baseType: !4111, size: 64, offset: 640)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "swap_slot_free_notify", scope: !3994, file: !155, line: 1405, baseType: !4136, size: 64, offset: 704)
!4136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4137, size: 64)
!4137 = !DISubroutineType(types: !4138)
!4138 = !{null, !3971, !44}
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "report_zones", scope: !3994, file: !155, line: 1406, baseType: !4140, size: 64, offset: 768)
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4141, size: 64)
!4141 = !DISubroutineType(types: !4142)
!4142 = !{!27, !3979, !3976, !13, !4143, !25}
!4143 = !DIDerivedType(tag: DW_TAG_typedef, name: "report_zones_cb", file: !155, line: 342, baseType: !4144)
!4144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4145, size: 64)
!4145 = !DISubroutineType(types: !4146)
!4146 = !{!27, !4147, !13, !25}
!4147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4148, size: 64)
!4148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_zone", file: !4149, line: 106, size: 512, elements: !4150)
!4149 = !DIFile(filename: "./include/uapi/linux/blkzoned.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3d5e7016ed7b437a9c2a308f55db1257")
!4150 = !{!4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158, !4160, !4161}
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4148, file: !4149, line: 107, baseType: !537, size: 64)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4148, file: !4149, line: 108, baseType: !537, size: 64, offset: 64)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "wp", scope: !4148, file: !4149, line: 109, baseType: !537, size: 64, offset: 128)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4148, file: !4149, line: 110, baseType: !90, size: 8, offset: 192)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !4148, file: !4149, line: 111, baseType: !90, size: 8, offset: 200)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "non_seq", scope: !4148, file: !4149, line: 112, baseType: !90, size: 8, offset: 208)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !4148, file: !4149, line: 113, baseType: !90, size: 8, offset: 216)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !4148, file: !4149, line: 114, baseType: !4159, size: 32, offset: 224)
!4159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 32, elements: !446)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !4148, file: !4149, line: 115, baseType: !537, size: 64, offset: 256)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4148, file: !4149, line: 116, baseType: !4162, size: 192, offset: 320)
!4162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 192, elements: !4163)
!4163 = !{!4164}
!4164 = !DISubrange(count: 24)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3994, file: !155, line: 1408, baseType: !4166, size: 64, offset: 832)
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4167, size: 64)
!4167 = !DISubroutineType(types: !4168)
!4168 = !{!1078, !3979, !2685}
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "get_unique_id", scope: !3994, file: !155, line: 1410, baseType: !4170, size: 64, offset: 896)
!4170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4171, size: 64)
!4171 = !DISubroutineType(types: !4172)
!4172 = !{!27, !3979, !4173, !154}
!4173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3994, file: !155, line: 1412, baseType: !1927, size: 64, offset: 960)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "pr_ops", scope: !3994, file: !155, line: 1413, baseType: !4176, size: 64, offset: 1024)
!4176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4177, size: 64)
!4177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4178)
!4178 = !DICompositeType(tag: DW_TAG_structure_type, name: "pr_ops", file: !155, line: 37, flags: DIFlagFwdDecl)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "alternative_gpt_sector", scope: !3994, file: !155, line: 1420, baseType: !4180, size: 64, offset: 1088)
!4180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4181, size: 64)
!4181 = !DISubroutineType(types: !4182)
!4182 = !{!27, !3979, !4183}
!4183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !3980, file: !155, line: 146, baseType: !4185, size: 64, offset: 640)
!4185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4186, size: 64)
!4186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !155, line: 391, size: 7296, elements: !4187)
!4187 = !{!4188, !4189, !4192, !4213, !4216, !4219, !4220, !4224, !4227, !4228, !4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4238, !4239, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4249, !4250, !4251, !4252, !4253, !4254, !4287, !4288, !4289, !4292, !4295, !4296, !4297, !4298, !4299, !4300, !4301, !4302, !4303, !4304, !4305, !4306, !4307, !4308, !4311, !4312, !4313, !4314, !4315, !4316}
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "last_merge", scope: !4186, file: !155, line: 392, baseType: !4098, size: 64)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "elevator", scope: !4186, file: !155, line: 393, baseType: !4190, size: 64, offset: 64)
!4190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4191, size: 64)
!4191 = !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_queue", file: !155, line: 30, flags: DIFlagFwdDecl)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "q_usage_counter", scope: !4186, file: !155, line: 395, baseType: !4193, size: 128, offset: 128)
!4193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !4194, line: 105, size: 128, elements: !4195)
!4194 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!4195 = !{!4196, !4197}
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !4193, file: !4194, line: 110, baseType: !44, size: 64)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4193, file: !4194, line: 118, baseType: !4198, size: 64, offset: 64)
!4198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4199, size: 64)
!4199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !4194, line: 95, size: 448, elements: !4200)
!4200 = !{!4201, !4202, !4208, !4209, !4210, !4211, !4212}
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4199, file: !4194, line: 96, baseType: !376, size: 64)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4199, file: !4194, line: 97, baseType: !4203, size: 64, offset: 64)
!4203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4204, size: 64)
!4204 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !4194, line: 60, baseType: !4205)
!4205 = !DISubroutineType(types: !4206)
!4206 = !{null, !4207}
!4207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4193, size: 64)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !4199, file: !4194, line: 98, baseType: !4203, size: 64, offset: 128)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !4199, file: !4194, line: 99, baseType: !1001, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !4199, file: !4194, line: 100, baseType: !1001, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4199, file: !4194, line: 101, baseType: !363, size: 128, align: 64, offset: 256)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4199, file: !4194, line: 102, baseType: !4207, size: 64, offset: 384)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !4186, file: !155, line: 397, baseType: !4214, size: 64, offset: 256)
!4214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4215, size: 64)
!4215 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_queue_stats", file: !155, line: 39, flags: DIFlagFwdDecl)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos", scope: !4186, file: !155, line: 398, baseType: !4217, size: 64, offset: 320)
!4217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4218, size: 64)
!4218 = !DICompositeType(tag: DW_TAG_structure_type, name: "rq_qos", file: !155, line: 38, flags: DIFlagFwdDecl)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos_mutex", scope: !4186, file: !155, line: 399, baseType: !383, size: 256, offset: 384)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ops", scope: !4186, file: !155, line: 401, baseType: !4221, size: 64, offset: 640)
!4221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4222, size: 64)
!4222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4223)
!4223 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ops", file: !155, line: 401, flags: DIFlagFwdDecl)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "queue_ctx", scope: !4186, file: !155, line: 404, baseType: !4225, size: 64, offset: 704)
!4225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4226, size: 64)
!4226 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ctx", file: !155, line: 404, flags: DIFlagFwdDecl)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !4186, file: !155, line: 406, baseType: !13, size: 32, offset: 768)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "hctx_table", scope: !4186, file: !155, line: 409, baseType: !466, size: 128, offset: 832)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hw_queues", scope: !4186, file: !155, line: 410, baseType: !13, size: 32, offset: 960)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "queuedata", scope: !4186, file: !155, line: 416, baseType: !25, size: 64, offset: 1024)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "queue_flags", scope: !4186, file: !155, line: 421, baseType: !44, size: 64, offset: 1088)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "pm_only", scope: !4186, file: !155, line: 426, baseType: !54, size: 32, offset: 1152)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4186, file: !155, line: 432, baseType: !27, size: 32, offset: 1184)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "queue_lock", scope: !4186, file: !155, line: 434, baseType: !64, size: 32, offset: 1216)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "disk", scope: !4186, file: !155, line: 436, baseType: !3979, size: 64, offset: 1280)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !4186, file: !155, line: 438, baseType: !428, size: 32, offset: 1344)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "mq_kobj", scope: !4186, file: !155, line: 443, baseType: !1946, size: 64, offset: 1408)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4186, file: !155, line: 450, baseType: !2659, size: 64, offset: 1472)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "rpm_status", scope: !4186, file: !155, line: 451, baseType: !211, size: 32, offset: 1536)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "nr_requests", scope: !4186, file: !155, line: 457, baseType: !44, size: 64, offset: 1600)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pad_mask", scope: !4186, file: !155, line: 459, baseType: !13, size: 32, offset: 1664)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "rq_timeout", scope: !4186, file: !155, line: 466, baseType: !13, size: 32, offset: 1696)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4186, file: !155, line: 468, baseType: !2350, size: 320, offset: 1728)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_work", scope: !4186, file: !155, line: 469, baseType: !1117, size: 256, offset: 2048)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "nr_active_requests_shared_tags", scope: !4186, file: !155, line: 471, baseType: !54, size: 32, offset: 2304)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "sched_shared_tags", scope: !4186, file: !155, line: 473, baseType: !4247, size: 64, offset: 2368)
!4247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4248, size: 64)
!4248 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tags", file: !155, line: 473, flags: DIFlagFwdDecl)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !4186, file: !155, line: 475, baseType: !102, size: 128, offset: 2432)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "blkcg_pols", scope: !4186, file: !155, line: 477, baseType: !733, size: 64, offset: 2560)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "root_blkg", scope: !4186, file: !155, line: 478, baseType: !4027, size: 64, offset: 2624)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "blkg_list", scope: !4186, file: !155, line: 479, baseType: !102, size: 128, offset: 2688)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "blkcg_mutex", scope: !4186, file: !155, line: 480, baseType: !383, size: 256, offset: 2816)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "limits", scope: !4186, file: !155, line: 483, baseType: !4255, size: 960, offset: 3072)
!4255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "queue_limits", file: !155, line: 300, size: 960, elements: !4256)
!4256 = !{!4257, !4258, !4259, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286}
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "bounce", scope: !4255, file: !155, line: 301, baseType: !252, size: 32)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "seg_boundary_mask", scope: !4255, file: !155, line: 302, baseType: !44, size: 64, offset: 64)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "virt_boundary_mask", scope: !4255, file: !155, line: 303, baseType: !44, size: 64, offset: 128)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_sectors", scope: !4255, file: !155, line: 305, baseType: !13, size: 32, offset: 192)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "max_dev_sectors", scope: !4255, file: !155, line: 306, baseType: !13, size: 32, offset: 224)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_sectors", scope: !4255, file: !155, line: 307, baseType: !13, size: 32, offset: 256)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "max_sectors", scope: !4255, file: !155, line: 308, baseType: !13, size: 32, offset: 288)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "max_user_sectors", scope: !4255, file: !155, line: 309, baseType: !13, size: 32, offset: 320)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4255, file: !155, line: 310, baseType: !13, size: 32, offset: 352)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "physical_block_size", scope: !4255, file: !155, line: 311, baseType: !13, size: 32, offset: 384)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "logical_block_size", scope: !4255, file: !155, line: 312, baseType: !13, size: 32, offset: 416)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_offset", scope: !4255, file: !155, line: 313, baseType: !13, size: 32, offset: 448)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "io_min", scope: !4255, file: !155, line: 314, baseType: !13, size: 32, offset: 480)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "io_opt", scope: !4255, file: !155, line: 315, baseType: !13, size: 32, offset: 512)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_sectors", scope: !4255, file: !155, line: 316, baseType: !13, size: 32, offset: 544)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_discard_sectors", scope: !4255, file: !155, line: 317, baseType: !13, size: 32, offset: 576)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "max_secure_erase_sectors", scope: !4255, file: !155, line: 318, baseType: !13, size: 32, offset: 608)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_zeroes_sectors", scope: !4255, file: !155, line: 319, baseType: !13, size: 32, offset: 640)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "max_zone_append_sectors", scope: !4255, file: !155, line: 320, baseType: !13, size: 32, offset: 672)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "discard_granularity", scope: !4255, file: !155, line: 321, baseType: !13, size: 32, offset: 704)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "discard_alignment", scope: !4255, file: !155, line: 322, baseType: !13, size: 32, offset: 736)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "zone_write_granularity", scope: !4255, file: !155, line: 323, baseType: !13, size: 32, offset: 768)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "max_segments", scope: !4255, file: !155, line: 325, baseType: !31, size: 16, offset: 800)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "max_integrity_segments", scope: !4255, file: !155, line: 326, baseType: !31, size: 16, offset: 816)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_segments", scope: !4255, file: !155, line: 327, baseType: !31, size: 16, offset: 832)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "misaligned", scope: !4255, file: !155, line: 329, baseType: !92, size: 8, offset: 848)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "discard_misaligned", scope: !4255, file: !155, line: 330, baseType: !92, size: 8, offset: 856)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "raid_partial_stripes_expensive", scope: !4255, file: !155, line: 331, baseType: !92, size: 8, offset: 864)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "zoned", scope: !4255, file: !155, line: 332, baseType: !256, size: 32, offset: 896)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alignment", scope: !4255, file: !155, line: 339, baseType: !13, size: 32, offset: 928)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "required_elevator_features", scope: !4186, file: !155, line: 485, baseType: !13, size: 32, offset: 4032)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4186, file: !155, line: 487, baseType: !27, size: 32, offset: 4064)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "blk_trace", scope: !4186, file: !155, line: 489, baseType: !4290, size: 64, offset: 4096)
!4290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4291, size: 64)
!4291 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_trace", file: !155, line: 31, flags: DIFlagFwdDecl)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "fq", scope: !4186, file: !155, line: 494, baseType: !4293, size: 64, offset: 4160)
!4293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4294, size: 64)
!4294 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_flush_queue", file: !155, line: 35, flags: DIFlagFwdDecl)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "flush_list", scope: !4186, file: !155, line: 495, baseType: !102, size: 128, offset: 4224)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_list", scope: !4186, file: !155, line: 497, baseType: !102, size: 128, offset: 4352)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_lock", scope: !4186, file: !155, line: 498, baseType: !64, size: 32, offset: 4480)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_work", scope: !4186, file: !155, line: 499, baseType: !2407, size: 704, offset: 4544)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_lock", scope: !4186, file: !155, line: 501, baseType: !383, size: 256, offset: 5248)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_dir_lock", scope: !4186, file: !155, line: 502, baseType: !383, size: 256, offset: 5504)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_list", scope: !4186, file: !155, line: 508, baseType: !102, size: 128, offset: 5760)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_lock", scope: !4186, file: !155, line: 509, baseType: !64, size: 32, offset: 5888)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_depth", scope: !4186, file: !155, line: 511, baseType: !27, size: 32, offset: 5920)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !4186, file: !155, line: 517, baseType: !363, size: 128, align: 64, offset: 5952)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_wq", scope: !4186, file: !155, line: 518, baseType: !59, size: 192, offset: 6080)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_lock", scope: !4186, file: !155, line: 523, baseType: !383, size: 256, offset: 6272)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "quiesce_depth", scope: !4186, file: !155, line: 525, baseType: !27, size: 32, offset: 6528)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set", scope: !4186, file: !155, line: 527, baseType: !4309, size: 64, offset: 6592)
!4309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4310, size: 64)
!4310 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tag_set", file: !155, line: 527, flags: DIFlagFwdDecl)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set_list", scope: !4186, file: !155, line: 528, baseType: !102, size: 128, offset: 6656)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_dir", scope: !4186, file: !155, line: 530, baseType: !1786, size: 64, offset: 6784)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "sched_debugfs_dir", scope: !4186, file: !155, line: 531, baseType: !1786, size: 64, offset: 6848)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "rqos_debugfs_dir", scope: !4186, file: !155, line: 532, baseType: !1786, size: 64, offset: 6912)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_mutex", scope: !4186, file: !155, line: 536, baseType: !383, size: 256, offset: 6976)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "mq_sysfs_init_done", scope: !4186, file: !155, line: 538, baseType: !1001, size: 8, offset: 7232)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !3980, file: !155, line: 147, baseType: !25, size: 64, offset: 704)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "bio_split", scope: !3980, file: !155, line: 149, baseType: !4048, size: 1984, offset: 768)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3980, file: !155, line: 151, baseType: !27, size: 32, offset: 2752)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3980, file: !155, line: 152, baseType: !44, size: 64, offset: 2816)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "open_mutex", scope: !3980, file: !155, line: 161, baseType: !383, size: 256, offset: 2880)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "open_partitions", scope: !3980, file: !155, line: 162, baseType: !13, size: 32, offset: 3136)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !3980, file: !155, line: 164, baseType: !4324, size: 64, offset: 3200)
!4324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4325, size: 64)
!4325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !262, line: 163, size: 6848, elements: !4326)
!4326 = !{!4327, !4328, !4329, !4330, !4331, !4332, !4333, !4334, !4335, !4336, !4337, !4338, !4339, !4373, !4374, !4375, !4376, !4378, !4379, !4380}
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4325, file: !262, line: 164, baseType: !536, size: 64)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !4325, file: !262, line: 165, baseType: !528, size: 192, align: 64, offset: 64)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !4325, file: !262, line: 166, baseType: !102, size: 128, offset: 256)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !4325, file: !262, line: 167, baseType: !44, size: 64, offset: 384)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !4325, file: !262, line: 168, baseType: !44, size: 64, offset: 448)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !4325, file: !262, line: 170, baseType: !2101, size: 32, offset: 512)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !4325, file: !262, line: 171, baseType: !13, size: 32, offset: 544)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !4325, file: !262, line: 172, baseType: !13, size: 32, offset: 576)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !4325, file: !262, line: 173, baseType: !13, size: 32, offset: 608)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !4325, file: !262, line: 173, baseType: !13, size: 32, offset: 640)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !4325, file: !262, line: 179, baseType: !376, size: 64, offset: 704)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "last_bdp_sleep", scope: !4325, file: !262, line: 184, baseType: !44, size: 64, offset: 768)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !4325, file: !262, line: 186, baseType: !4340, size: 4672, offset: 832)
!4340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !262, line: 105, size: 4672, elements: !4341)
!4341 = !{!4342, !4343, !4344, !4345, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358, !4359, !4366, !4367, !4368, !4369, !4370, !4371, !4372}
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !4340, file: !262, line: 106, baseType: !4324, size: 64)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4340, file: !262, line: 108, baseType: !44, size: 64, offset: 64)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !4340, file: !262, line: 109, baseType: !44, size: 64, offset: 128)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !4340, file: !262, line: 111, baseType: !102, size: 128, offset: 192)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !4340, file: !262, line: 112, baseType: !102, size: 128, offset: 320)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !4340, file: !262, line: 113, baseType: !102, size: 128, offset: 448)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !4340, file: !262, line: 114, baseType: !102, size: 128, offset: 576)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !4340, file: !262, line: 115, baseType: !64, size: 32, offset: 704)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_inodes", scope: !4340, file: !262, line: 117, baseType: !54, size: 32, offset: 736)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !4340, file: !262, line: 118, baseType: !874, size: 1280, offset: 768)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !4340, file: !262, line: 120, baseType: !44, size: 64, offset: 2048)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !4340, file: !262, line: 121, baseType: !44, size: 64, offset: 2112)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !4340, file: !262, line: 122, baseType: !44, size: 64, offset: 2176)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !4340, file: !262, line: 123, baseType: !44, size: 64, offset: 2240)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !4340, file: !262, line: 124, baseType: !44, size: 64, offset: 2304)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !4340, file: !262, line: 132, baseType: !44, size: 64, offset: 2368)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !4340, file: !262, line: 133, baseType: !44, size: 64, offset: 2432)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !4340, file: !262, line: 135, baseType: !4360, size: 384, offset: 2496)
!4360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !4361, line: 76, size: 384, elements: !4362)
!4361 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a71374c9cbe54a4b0f3b6bbea75a8cfc")
!4362 = !{!4363, !4364, !4365}
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !4360, file: !4361, line: 78, baseType: !875, size: 320)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !4360, file: !4361, line: 80, baseType: !13, size: 32, offset: 320)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4360, file: !4361, line: 81, baseType: !388, size: 32, offset: 352)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !4340, file: !262, line: 136, baseType: !27, size: 32, offset: 2880)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !4340, file: !262, line: 137, baseType: !261, size: 32, offset: 2912)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !4340, file: !262, line: 139, baseType: !64, size: 32, offset: 2944)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !4340, file: !262, line: 140, baseType: !102, size: 128, offset: 3008)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !4340, file: !262, line: 141, baseType: !2407, size: 704, offset: 3136)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "bw_dwork", scope: !4340, file: !262, line: 142, baseType: !2407, size: 704, offset: 3840)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !4340, file: !262, line: 144, baseType: !102, size: 128, offset: 4544)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !4325, file: !262, line: 187, baseType: !102, size: 128, offset: 5504)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !4325, file: !262, line: 193, baseType: !59, size: 192, offset: 5632)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4325, file: !262, line: 195, baseType: !2659, size: 64, offset: 5824)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4325, file: !262, line: 196, baseType: !4377, size: 512, offset: 5888)
!4377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !1983)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4325, file: !262, line: 197, baseType: !2659, size: 64, offset: 6400)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !4325, file: !262, line: 199, baseType: !2350, size: 320, offset: 6464)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !4325, file: !262, line: 202, baseType: !1786, size: 64, offset: 6784)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "queue_kobj", scope: !3980, file: !155, line: 165, baseType: !1940, size: 512, offset: 3264)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "slave_dir", scope: !3980, file: !155, line: 166, baseType: !1946, size: 64, offset: 3776)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "slave_bdevs", scope: !3980, file: !155, line: 168, baseType: !102, size: 128, offset: 3840)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "random", scope: !3980, file: !155, line: 170, baseType: !4385, size: 64, offset: 3968)
!4385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4386, size: 64)
!4386 = !DICompositeType(tag: DW_TAG_structure_type, name: "timer_rand_state", file: !155, line: 170, flags: DIFlagFwdDecl)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "sync_io", scope: !3980, file: !155, line: 171, baseType: !54, size: 32, offset: 4032)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "ev", scope: !3980, file: !155, line: 172, baseType: !4389, size: 64, offset: 4096)
!4389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4390, size: 64)
!4390 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_events", file: !155, line: 104, flags: DIFlagFwdDecl)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "cdi", scope: !3980, file: !155, line: 197, baseType: !4392, size: 64, offset: 4160)
!4392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4393, size: 64)
!4393 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdrom_device_info", file: !155, line: 197, flags: DIFlagFwdDecl)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3980, file: !155, line: 199, baseType: !27, size: 32, offset: 4224)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !3980, file: !155, line: 200, baseType: !4396, size: 64, offset: 4288)
!4396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4397, size: 64)
!4397 = !DICompositeType(tag: DW_TAG_structure_type, name: "badblocks", file: !155, line: 105, flags: DIFlagFwdDecl)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "lockdep_map", scope: !3980, file: !155, line: 201, baseType: !2378, offset: 4352)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "diskseq", scope: !3980, file: !155, line: 202, baseType: !536, size: 64, offset: 4352)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "open_mode", scope: !3980, file: !155, line: 203, baseType: !4109, size: 32, offset: 4416)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ranges", scope: !3980, file: !155, line: 209, baseType: !4402, size: 64, offset: 4480)
!4402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4403, size: 64)
!4403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_independent_access_ranges", file: !155, line: 384, size: 576, elements: !4404)
!4404 = !{!4405, !4406, !4407, !4408}
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4403, file: !155, line: 385, baseType: !1940, size: 512)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_registered", scope: !4403, file: !155, line: 386, baseType: !1001, size: 8, offset: 512)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ia_ranges", scope: !4403, file: !155, line: 387, baseType: !13, size: 32, offset: 544)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "ia_range", scope: !4403, file: !155, line: 388, baseType: !4409, offset: 576)
!4409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4410, elements: !1230)
!4410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_independent_access_range", file: !155, line: 378, size: 640, elements: !4411)
!4411 = !{!4412, !4413, !4414}
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4410, file: !155, line: 379, baseType: !1940, size: 512)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "sector", scope: !4410, file: !155, line: 380, baseType: !3976, size: 64, offset: 512)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "nr_sectors", scope: !4410, file: !155, line: 381, baseType: !3976, size: 64, offset: 576)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !3972, file: !3973, line: 44, baseType: !4185, size: 64, offset: 192)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !3972, file: !3973, line: 45, baseType: !4417, size: 64, offset: 256)
!4417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4418, size: 64)
!4418 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !3973, line: 45, flags: DIFlagFwdDecl)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !3972, file: !3973, line: 46, baseType: !44, size: 64, offset: 320)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !3972, file: !3973, line: 47, baseType: !1001, size: 8, offset: 384)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !3972, file: !3973, line: 48, baseType: !88, size: 8, offset: 392)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !3972, file: !3973, line: 49, baseType: !1001, size: 8, offset: 400)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !3972, file: !3973, line: 50, baseType: !1001, size: 8, offset: 408)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !3972, file: !3973, line: 51, baseType: !1897, size: 32, offset: 416)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !3972, file: !3973, line: 52, baseType: !54, size: 32, offset: 448)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !3972, file: !3973, line: 53, baseType: !64, size: 32, offset: 480)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !3972, file: !3973, line: 54, baseType: !1764, size: 64, offset: 512)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !3972, file: !3973, line: 55, baseType: !25, size: 64, offset: 576)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !3972, file: !3973, line: 56, baseType: !25, size: 64, offset: 640)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !3972, file: !3973, line: 57, baseType: !4431, size: 64, offset: 704)
!4431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4432, size: 64)
!4432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4433)
!4433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !155, line: 1477, size: 128, elements: !4434)
!4434 = !{!4435, !4439}
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dead", scope: !4433, file: !155, line: 1478, baseType: !4436, size: 64)
!4436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4437, size: 64)
!4437 = !DISubroutineType(types: !4438)
!4438 = !{null, !3971, !1001}
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4433, file: !155, line: 1483, baseType: !4440, size: 64, offset: 64)
!4440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4441, size: 64)
!4441 = !DISubroutineType(types: !4442)
!4442 = !{null, !3971}
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !3972, file: !3973, line: 58, baseType: !383, size: 256, offset: 768)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !3972, file: !3973, line: 60, baseType: !27, size: 32, offset: 1024)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !3972, file: !3973, line: 61, baseType: !27, size: 32, offset: 1056)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !3972, file: !3973, line: 62, baseType: !1946, size: 64, offset: 1088)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !3972, file: !3973, line: 65, baseType: !383, size: 256, offset: 1152)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !3972, file: !3973, line: 66, baseType: !1892, size: 64, offset: 1408)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !3972, file: !3973, line: 68, baseType: !4450, size: 64, offset: 1472)
!4450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4451, size: 64)
!4451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !155, line: 63, size: 808, elements: !4452)
!4452 = !{!4453, !4457}
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !4451, file: !155, line: 64, baseType: !4454, size: 296)
!4454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !4455)
!4455 = !{!4456}
!4456 = !DISubrange(count: 37)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "volname", scope: !4451, file: !155, line: 65, baseType: !4458, size: 512, offset: 296)
!4458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 512, elements: !1983)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !3972, file: !3973, line: 72, baseType: !1001, size: 8, offset: 1536)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !3972, file: !3973, line: 77, baseType: !2660, size: 5824, offset: 1600)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1893, file: !289, line: 1226, baseType: !4462, size: 64, offset: 1664)
!4462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4463, size: 64)
!4463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !155, line: 1495, size: 128, elements: !4464)
!4464 = !{!4465, !4466}
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !4463, file: !155, line: 1496, baseType: !3971, size: 64)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "holder", scope: !4463, file: !155, line: 1497, baseType: !25, size: 64, offset: 64)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1893, file: !289, line: 1227, baseType: !4324, size: 64, offset: 1728)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1893, file: !289, line: 1228, baseType: !4469, size: 64, offset: 1792)
!4469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4470, size: 64)
!4470 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !289, line: 1228, flags: DIFlagFwdDecl)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1893, file: !289, line: 1229, baseType: !441, size: 128, offset: 1856)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1893, file: !289, line: 1230, baseType: !13, size: 32, offset: 1984)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1893, file: !289, line: 1231, baseType: !4474, size: 2496, offset: 2048)
!4474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !294, line: 521, size: 2496, elements: !4475)
!4475 = !{!4476, !4477, !4478, !4480, !4512}
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4474, file: !294, line: 522, baseType: !13, size: 32)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !4474, file: !294, line: 523, baseType: !837, size: 320, offset: 64)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !4474, file: !294, line: 524, baseType: !4479, size: 192, offset: 384)
!4479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1764, size: 192, elements: !420)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4474, file: !294, line: 525, baseType: !4481, size: 1728, offset: 576)
!4481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4482, size: 1728, elements: !420)
!4482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !294, line: 222, size: 576, elements: !4483)
!4483 = !{!4484, !4504, !4505, !4506, !4507, !4508, !4509, !4510, !4511}
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !4482, file: !294, line: 223, baseType: !4485, size: 64)
!4485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4486, size: 64)
!4486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !294, line: 445, size: 256, elements: !4487)
!4487 = !{!4488, !4489, !4502, !4503}
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !4486, file: !294, line: 446, baseType: !27, size: 32)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !4486, file: !294, line: 447, baseType: !4490, size: 64, offset: 64)
!4490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4491, size: 64)
!4491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4492)
!4492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !294, line: 312, size: 512, elements: !4493)
!4493 = !{!4494, !4495, !4496, !4497, !4498, !4499, !4500, !4501}
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !4492, file: !294, line: 313, baseType: !3715, size: 64)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !4492, file: !294, line: 314, baseType: !3715, size: 64, offset: 64)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !4492, file: !294, line: 315, baseType: !3715, size: 64, offset: 128)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !4492, file: !294, line: 316, baseType: !3715, size: 64, offset: 192)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !4492, file: !294, line: 317, baseType: !3824, size: 64, offset: 256)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !4492, file: !294, line: 318, baseType: !3824, size: 64, offset: 320)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !4492, file: !294, line: 319, baseType: !3824, size: 64, offset: 384)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4492, file: !294, line: 320, baseType: !3854, size: 64, offset: 448)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !4486, file: !294, line: 448, baseType: !1927, size: 64, offset: 128)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !4486, file: !294, line: 449, baseType: !4485, size: 64, offset: 192)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !4482, file: !294, line: 224, baseType: !27, size: 32, offset: 64)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !4482, file: !294, line: 226, baseType: !102, size: 128, offset: 128)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !4482, file: !294, line: 227, baseType: !44, size: 64, offset: 256)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !4482, file: !294, line: 228, baseType: !13, size: 32, offset: 320)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !4482, file: !294, line: 229, baseType: !13, size: 32, offset: 352)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !4482, file: !294, line: 230, baseType: !3792, size: 64, offset: 384)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !4482, file: !294, line: 231, baseType: !3792, size: 64, offset: 448)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !4482, file: !294, line: 232, baseType: !25, size: 64, offset: 512)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4474, file: !294, line: 526, baseType: !4513, size: 192, offset: 2304)
!4513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4490, size: 192, elements: !420)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1893, file: !289, line: 1233, baseType: !4515, size: 2368, offset: 4544)
!4515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !289, line: 1184, size: 2368, elements: !4516)
!4516 = !{!4517, !4518, !4519}
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !4515, file: !289, line: 1185, baseType: !31, size: 16)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !4515, file: !289, line: 1186, baseType: !31, size: 16, offset: 16)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !4515, file: !289, line: 1187, baseType: !4520, size: 2304, offset: 64)
!4520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4521, size: 2304, elements: !420)
!4521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !4522, line: 12, size: 768, elements: !4523)
!4522 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!4523 = !{!4524, !4532, !4533, !4534, !4535}
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !4521, file: !4522, line: 13, baseType: !4525, size: 384)
!4525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !4526, line: 17, size: 384, elements: !4527)
!4526 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!4527 = !{!4528, !4529, !4530, !4531}
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !4525, file: !4526, line: 18, baseType: !27, size: 32)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !4525, file: !4526, line: 19, baseType: !27, size: 32, offset: 32)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !4525, file: !4526, line: 20, baseType: !59, size: 192, offset: 64)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !4525, file: !4526, line: 22, baseType: !363, size: 128, align: 64, offset: 256)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !4521, file: !4522, line: 14, baseType: !2204, size: 64, offset: 384)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !4521, file: !4522, line: 15, baseType: !3411, size: 64, offset: 448)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4521, file: !4522, line: 16, baseType: !59, size: 192, offset: 512)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4521, file: !4522, line: 17, baseType: !54, size: 32, offset: 704)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1893, file: !289, line: 1240, baseType: !25, size: 64, offset: 6912)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1893, file: !289, line: 1243, baseType: !488, size: 32, offset: 6976)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1893, file: !289, line: 1245, baseType: !1027, size: 64, offset: 7040)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1893, file: !289, line: 1246, baseType: !1027, size: 64, offset: 7104)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1893, file: !289, line: 1248, baseType: !489, size: 32, offset: 7168)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1893, file: !289, line: 1249, baseType: !4542, size: 64, offset: 7232)
!4542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4543, size: 64)
!4543 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !289, line: 634, flags: DIFlagFwdDecl)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1893, file: !289, line: 1252, baseType: !3986, size: 256, offset: 7296)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1893, file: !289, line: 1253, baseType: !4546, size: 128, offset: 7552)
!4546 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4547, line: 21, baseType: !4548)
!4547 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4548 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4547, line: 19, size: 128, elements: !4549)
!4549 = !{!4550}
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4548, file: !4547, line: 20, baseType: !4551, size: 128)
!4551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 128, elements: !1445)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1893, file: !289, line: 1255, baseType: !13, size: 32, offset: 7680)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1893, file: !289, line: 1261, baseType: !383, size: 256, offset: 7744)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1893, file: !289, line: 1267, baseType: !22, size: 64, offset: 8000)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1893, file: !289, line: 1269, baseType: !1839, size: 64, offset: 8064)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1893, file: !289, line: 1271, baseType: !4557, size: 448, offset: 8128)
!4557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !3807, line: 63, size: 448, elements: !4558)
!4558 = !{!4559, !4564, !4565, !4566, !4567, !4568, !4569}
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4557, file: !3807, line: 64, baseType: !4560, size: 64)
!4560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4561, size: 64)
!4561 = !DISubroutineType(types: !4562)
!4562 = !{!44, !4563, !3805}
!4563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4557, size: 64)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4557, file: !3807, line: 66, baseType: !4560, size: 64, offset: 64)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4557, file: !3807, line: 69, baseType: !919, size: 64, offset: 128)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4557, file: !3807, line: 70, baseType: !27, size: 32, offset: 192)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4557, file: !3807, line: 71, baseType: !13, size: 32, offset: 224)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4557, file: !3807, line: 74, baseType: !102, size: 128, offset: 256)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4557, file: !3807, line: 85, baseType: !4570, size: 64, offset: 384)
!4570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1893, file: !289, line: 1274, baseType: !376, size: 64, offset: 8576)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1893, file: !289, line: 1280, baseType: !376, size: 64, offset: 8640)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1893, file: !289, line: 1283, baseType: !27, size: 32, offset: 8704)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1893, file: !289, line: 1286, baseType: !4575, size: 32, offset: 8736)
!4575 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !4576, line: 8, baseType: !488)
!4576 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1893, file: !289, line: 1289, baseType: !2412, size: 64, offset: 8768)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1893, file: !289, line: 1290, baseType: !437, size: 64, offset: 8832)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1893, file: !289, line: 1297, baseType: !943, size: 64, offset: 8896)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1893, file: !289, line: 1304, baseType: !4581, size: 64, offset: 8960)
!4581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4582, line: 49, size: 64, elements: !4583)
!4582 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4583 = !{!4584}
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4581, file: !4582, line: 50, baseType: !4585, size: 64)
!4585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4586, size: 64)
!4586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4582, line: 41, size: 512, align: 512, elements: !4587)
!4587 = !{!4588, !4589, !4594}
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4586, file: !4582, line: 43, baseType: !64, size: 32)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4586, file: !4582, line: 45, baseType: !4590, size: 192, offset: 64)
!4590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4582, line: 29, size: 192, elements: !4591)
!4591 = !{!4592, !4593}
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4590, file: !4582, line: 30, baseType: !102, size: 128)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4590, file: !4582, line: 32, baseType: !919, size: 64, offset: 128)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4586, file: !4582, line: 46, baseType: !919, size: 64, offset: 256)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1893, file: !289, line: 1305, baseType: !4581, size: 64, offset: 9024)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1893, file: !289, line: 1306, baseType: !363, size: 128, align: 64, offset: 9088)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1893, file: !289, line: 1307, baseType: !1117, size: 256, offset: 9216)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1893, file: !289, line: 1309, baseType: !383, size: 256, offset: 9472)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1893, file: !289, line: 1314, baseType: !27, size: 32, offset: 9728)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1893, file: !289, line: 1317, baseType: !64, size: 32, align: 512, offset: 10240)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1893, file: !289, line: 1318, baseType: !102, size: 128, offset: 10304)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1893, file: !289, line: 1320, baseType: !64, size: 32, offset: 10432)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1893, file: !289, line: 1321, baseType: !102, size: 128, offset: 10496)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !1887, file: !1888, line: 73, baseType: !27, size: 32, offset: 128)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !1887, file: !1888, line: 74, baseType: !4606, size: 64, offset: 192)
!4606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4607, size: 64)
!4607 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1388, line: 42, flags: DIFlagFwdDecl)
!4608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3869, size: 64)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !1841, file: !1788, line: 141, baseType: !4610, size: 64, offset: 704)
!4610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4611, size: 64)
!4611 = !DISubroutineType(types: !4612)
!4612 = !{!27, !3867, !1001}
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !1841, file: !1788, line: 142, baseType: !4614, size: 64, offset: 768)
!4614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4615, size: 64)
!4615 = !DISubroutineType(types: !4616)
!4616 = !{!1786, !1786, !4617}
!4617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4618, size: 64)
!4618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1765)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !1787, file: !1788, line: 96, baseType: !1892, size: 64, offset: 832)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !1787, file: !1788, line: 97, baseType: !44, size: 64, offset: 896)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !1787, file: !1788, line: 98, baseType: !25, size: 64, offset: 960)
!4622 = !DIDerivedType(tag: DW_TAG_member, scope: !1787, file: !1788, line: 100, baseType: !4623, size: 128, offset: 1024)
!4623 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1787, file: !1788, line: 100, size: 128, elements: !4624)
!4624 = !{!4625, !4626}
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4623, file: !1788, line: 101, baseType: !102, size: 128)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4623, file: !1788, line: 102, baseType: !4627, size: 64)
!4627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !1787, file: !1788, line: 104, baseType: !102, size: 128, offset: 1152)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !1787, file: !1788, line: 105, baseType: !102, size: 128, offset: 1280)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !1787, file: !1788, line: 113, baseType: !4631, size: 128, offset: 1408)
!4631 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1787, file: !1788, line: 109, size: 128, elements: !4632)
!4632 = !{!4633, !4634, !4635}
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4631, file: !1788, line: 110, baseType: !441, size: 128)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4631, file: !1788, line: 111, baseType: !1797, size: 128)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4631, file: !1788, line: 112, baseType: !363, size: 128, align: 64)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1780, file: !289, line: 1968, baseType: !4637, size: 64, offset: 64)
!4637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4638, size: 64)
!4638 = !DISubroutineType(types: !4639)
!4639 = !{!22, !1786, !1764, !4640}
!4640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4641, size: 64)
!4641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4642, line: 10, size: 128, elements: !4643)
!4642 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4643 = !{!4644, !4645}
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4641, file: !4642, line: 11, baseType: !2088, size: 64)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4641, file: !4642, line: 12, baseType: !25, size: 64, offset: 64)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1780, file: !289, line: 1969, baseType: !4647, size: 64, offset: 128)
!4647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4648, size: 64)
!4648 = !DISubroutineType(types: !4649)
!4649 = !{!27, !4606, !1764, !27}
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1780, file: !289, line: 1970, baseType: !4651, size: 64, offset: 192)
!4651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4652, size: 64)
!4652 = !DISubroutineType(types: !4653)
!4653 = !{!1774, !1764, !27, !1001}
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1780, file: !289, line: 1972, baseType: !4655, size: 64, offset: 256)
!4655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4656, size: 64)
!4656 = !DISubroutineType(types: !4657)
!4657 = !{!27, !1786, !1078, !27}
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1780, file: !289, line: 1974, baseType: !4659, size: 64, offset: 320)
!4659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4660, size: 64)
!4660 = !DISubroutineType(types: !4661)
!4661 = !{!27, !4606, !1764, !1786, !29, !1001}
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1780, file: !289, line: 1976, baseType: !4663, size: 64, offset: 384)
!4663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4664, size: 64)
!4664 = !DISubroutineType(types: !4665)
!4665 = !{!27, !1786, !1764, !1786}
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1780, file: !289, line: 1977, baseType: !4667, size: 64, offset: 448)
!4667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4668, size: 64)
!4668 = !DISubroutineType(types: !4669)
!4669 = !{!27, !1764, !1786}
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1780, file: !289, line: 1978, baseType: !4671, size: 64, offset: 512)
!4671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4672, size: 64)
!4672 = !DISubroutineType(types: !4673)
!4673 = !{!27, !4606, !1764, !1786, !22}
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1780, file: !289, line: 1980, baseType: !4675, size: 64, offset: 576)
!4675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4676, size: 64)
!4676 = !DISubroutineType(types: !4677)
!4677 = !{!27, !4606, !1764, !1786, !29}
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1780, file: !289, line: 1982, baseType: !4667, size: 64, offset: 640)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1780, file: !289, line: 1983, baseType: !4680, size: 64, offset: 704)
!4680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4681, size: 64)
!4681 = !DISubroutineType(types: !4682)
!4682 = !{!27, !4606, !1764, !1786, !29, !1897}
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1780, file: !289, line: 1985, baseType: !4684, size: 64, offset: 768)
!4684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4685, size: 64)
!4685 = !DISubroutineType(types: !4686)
!4686 = !{!27, !4606, !1764, !1786, !1764, !1786, !13}
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1780, file: !289, line: 1987, baseType: !4688, size: 64, offset: 832)
!4688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4689, size: 64)
!4689 = !DISubroutineType(types: !4690)
!4690 = !{!27, !4606, !1786, !4691}
!4691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4692, size: 64)
!4692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !289, line: 226, size: 640, elements: !4693)
!4693 = !{!4694, !4695, !4696, !4706, !4715, !4716, !4721, !4722, !4723}
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4692, file: !289, line: 227, baseType: !13, size: 32)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4692, file: !289, line: 228, baseType: !29, size: 16, offset: 32)
!4696 = !DIDerivedType(tag: DW_TAG_member, scope: !4692, file: !289, line: 241, baseType: !4697, size: 32, offset: 64)
!4697 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4692, file: !289, line: 241, size: 32, elements: !4698)
!4698 = !{!4699, !4700}
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !4697, file: !289, line: 242, baseType: !974, size: 32)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !4697, file: !289, line: 243, baseType: !4701, size: 32)
!4701 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !4702, line: 16, baseType: !4703)
!4702 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!4703 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4702, line: 14, size: 32, elements: !4704)
!4704 = !{!4705}
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4703, file: !4702, line: 15, baseType: !979, size: 32)
!4706 = !DIDerivedType(tag: DW_TAG_member, scope: !4692, file: !289, line: 245, baseType: !4707, size: 32, offset: 96)
!4707 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4692, file: !289, line: 245, size: 32, elements: !4708)
!4708 = !{!4709, !4710}
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4707, file: !289, line: 246, baseType: !982, size: 32)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !4707, file: !289, line: 247, baseType: !4711, size: 32)
!4711 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !4702, line: 20, baseType: !4712)
!4712 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4702, line: 18, size: 32, elements: !4713)
!4713 = !{!4714}
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4712, file: !4702, line: 19, baseType: !986, size: 32)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4692, file: !289, line: 249, baseType: !46, size: 64, offset: 128)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4692, file: !289, line: 250, baseType: !4717, size: 128, offset: 192)
!4717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1028, line: 13, size: 128, elements: !4718)
!4718 = !{!4719, !4720}
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4717, file: !1028, line: 14, baseType: !1027, size: 64)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4717, file: !1028, line: 15, baseType: !919, size: 64, offset: 64)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4692, file: !289, line: 251, baseType: !4717, size: 128, offset: 320)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4692, file: !289, line: 252, baseType: !4717, size: 128, offset: 448)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4692, file: !289, line: 259, baseType: !350, size: 64, offset: 576)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1780, file: !289, line: 1988, baseType: !4725, size: 64, offset: 896)
!4725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4726, size: 64)
!4726 = !DISubroutineType(types: !4727)
!4727 = !{!27, !4606, !3867, !4728, !488, !13}
!4728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4729, size: 64)
!4729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4730, line: 22, size: 1280, elements: !4731)
!4730 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4731 = !{!4732, !4733, !4734, !4735, !4736, !4737, !4738, !4739, !4740, !4741, !4742, !4743, !4744, !4745, !4746, !4747, !4748, !4749, !4750, !4751, !4752}
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4729, file: !4730, line: 23, baseType: !488, size: 32)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4729, file: !4730, line: 24, baseType: !29, size: 16, offset: 32)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4729, file: !4730, line: 25, baseType: !13, size: 32, offset: 64)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4729, file: !4730, line: 26, baseType: !1035, size: 32, offset: 96)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4729, file: !4730, line: 27, baseType: !536, size: 64, offset: 128)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4729, file: !4730, line: 28, baseType: !536, size: 64, offset: 192)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4729, file: !4730, line: 41, baseType: !536, size: 64, offset: 256)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4729, file: !4730, line: 42, baseType: !1897, size: 32, offset: 320)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4729, file: !4730, line: 43, baseType: !1897, size: 32, offset: 352)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4729, file: !4730, line: 44, baseType: !974, size: 32, offset: 384)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4729, file: !4730, line: 45, baseType: !982, size: 32, offset: 416)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4729, file: !4730, line: 46, baseType: !46, size: 64, offset: 448)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4729, file: !4730, line: 47, baseType: !4717, size: 128, offset: 512)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4729, file: !4730, line: 48, baseType: !4717, size: 128, offset: 640)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4729, file: !4730, line: 49, baseType: !4717, size: 128, offset: 768)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4729, file: !4730, line: 50, baseType: !4717, size: 128, offset: 896)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4729, file: !4730, line: 51, baseType: !536, size: 64, offset: 1024)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4729, file: !4730, line: 52, baseType: !536, size: 64, offset: 1088)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4729, file: !4730, line: 53, baseType: !488, size: 32, offset: 1152)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4729, file: !4730, line: 54, baseType: !488, size: 32, offset: 1184)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4729, file: !4730, line: 55, baseType: !536, size: 64, offset: 1216)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1780, file: !289, line: 1990, baseType: !4754, size: 64, offset: 960)
!4754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4755, size: 64)
!4755 = !DISubroutineType(types: !4756)
!4756 = !{!2010, !1786, !1078, !40}
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1780, file: !289, line: 1991, baseType: !4758, size: 64, offset: 1024)
!4758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4759, size: 64)
!4759 = !DISubroutineType(types: !4760)
!4760 = !{!27, !1764, !4761, !536, !536}
!4761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4762, size: 64)
!4762 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !289, line: 55, flags: DIFlagFwdDecl)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1780, file: !289, line: 1993, baseType: !4764, size: 64, offset: 1088)
!4764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4765, size: 64)
!4765 = !DISubroutineType(types: !4766)
!4766 = !{!27, !1764, !27}
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1780, file: !289, line: 1994, baseType: !4768, size: 64, offset: 1152)
!4768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4769, size: 64)
!4769 = !DISubroutineType(types: !4770)
!4770 = !{!27, !1764, !1786, !350, !13, !29}
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1780, file: !289, line: 1997, baseType: !4772, size: 64, offset: 1216)
!4772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4773, size: 64)
!4773 = !DISubroutineType(types: !4774)
!4774 = !{!27, !4606, !1764, !350, !29}
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1780, file: !289, line: 1999, baseType: !4776, size: 64, offset: 1280)
!4776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4777, size: 64)
!4777 = !DISubroutineType(types: !4778)
!4778 = !{!1774, !4606, !1786, !27}
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1780, file: !289, line: 2001, baseType: !4780, size: 64, offset: 1344)
!4780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4781, size: 64)
!4781 = !DISubroutineType(types: !4782)
!4782 = !{!27, !4606, !1786, !1774, !27}
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1780, file: !289, line: 2003, baseType: !4784, size: 64, offset: 1408)
!4784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4785, size: 64)
!4785 = !DISubroutineType(types: !4786)
!4786 = !{!27, !4606, !1786, !4787}
!4787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4788, size: 64)
!4788 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !289, line: 76, flags: DIFlagFwdDecl)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1780, file: !289, line: 2005, baseType: !4790, size: 64, offset: 1472)
!4790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4791, size: 64)
!4791 = !DISubroutineType(types: !4792)
!4792 = !{!27, !1786, !4787}
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1780, file: !289, line: 2006, baseType: !4794, size: 64, offset: 1536)
!4794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4795, size: 64)
!4795 = !DISubroutineType(types: !4796)
!4796 = !{!4797, !1764}
!4797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4798, size: 64)
!4798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !289, line: 3192, size: 192, elements: !4799)
!4799 = !{!4800, !4801}
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4798, file: !289, line: 3193, baseType: !466, size: 128)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4798, file: !289, line: 3194, baseType: !488, size: 32, offset: 128)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1765, file: !289, line: 655, baseType: !1892, size: 64, offset: 448)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1765, file: !289, line: 656, baseType: !1760, size: 64, offset: 512)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1765, file: !289, line: 659, baseType: !25, size: 64, offset: 576)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1765, file: !289, line: 663, baseType: !44, size: 64, offset: 640)
!4806 = !DIDerivedType(tag: DW_TAG_member, scope: !1765, file: !289, line: 671, baseType: !4807, size: 32, offset: 704)
!4807 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1765, file: !289, line: 671, size: 32, elements: !4808)
!4808 = !{!4809, !4810}
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4807, file: !289, line: 672, baseType: !2460, size: 32)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4807, file: !289, line: 673, baseType: !13, size: 32)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1765, file: !289, line: 675, baseType: !1897, size: 32, offset: 736)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1765, file: !289, line: 676, baseType: !46, size: 64, offset: 768)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1765, file: !289, line: 677, baseType: !4717, size: 128, offset: 832)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1765, file: !289, line: 678, baseType: !4717, size: 128, offset: 960)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1765, file: !289, line: 679, baseType: !4717, size: 128, offset: 1088)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1765, file: !289, line: 680, baseType: !64, size: 32, offset: 1216)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1765, file: !289, line: 681, baseType: !31, size: 16, offset: 1248)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1765, file: !289, line: 682, baseType: !88, size: 8, offset: 1264)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1765, file: !289, line: 683, baseType: !88, size: 8, offset: 1272)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1765, file: !289, line: 684, baseType: !3945, size: 64, offset: 1280)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1765, file: !289, line: 691, baseType: !44, size: 64, offset: 1344)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1765, file: !289, line: 692, baseType: !837, size: 320, offset: 1408)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1765, file: !289, line: 694, baseType: !44, size: 64, offset: 1728)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1765, file: !289, line: 695, baseType: !44, size: 64, offset: 1792)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1765, file: !289, line: 697, baseType: !441, size: 128, offset: 1856)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1765, file: !289, line: 698, baseType: !102, size: 128, offset: 1984)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1765, file: !289, line: 707, baseType: !102, size: 128, offset: 2112)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1765, file: !289, line: 708, baseType: !102, size: 128, offset: 2240)
!4829 = !DIDerivedType(tag: DW_TAG_member, scope: !1765, file: !289, line: 709, baseType: !4830, size: 128, offset: 2368)
!4830 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1765, file: !289, line: 709, size: 128, elements: !4831)
!4831 = !{!4832, !4833}
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4830, file: !289, line: 710, baseType: !437, size: 64)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4830, file: !289, line: 711, baseType: !363, size: 128, align: 64)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1765, file: !289, line: 713, baseType: !378, size: 64, offset: 2496)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1765, file: !289, line: 714, baseType: !378, size: 64, offset: 2560)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1765, file: !289, line: 715, baseType: !54, size: 32, offset: 2624)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1765, file: !289, line: 716, baseType: !54, size: 32, offset: 2656)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1765, file: !289, line: 717, baseType: !54, size: 32, offset: 2688)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1765, file: !289, line: 719, baseType: !54, size: 32, offset: 2720)
!4840 = !DIDerivedType(tag: DW_TAG_member, scope: !1765, file: !289, line: 721, baseType: !4841, size: 64, offset: 2752)
!4841 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1765, file: !289, line: 721, size: 64, elements: !4842)
!4842 = !{!4843, !5141}
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4841, file: !289, line: 722, baseType: !4844, size: 64)
!4844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4845, size: 64)
!4845 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4846)
!4846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !289, line: 1914, size: 2112, elements: !4847)
!4847 = !{!4848, !4849, !4853, !4857, !4861, !5021, !5022, !5026, !5039, !5055, !5059, !5060, !5064, !5065, !5069, !5074, !5075, !5079, !5083, !5089, !5090, !5094, !5095, !5101, !5105, !5109, !5114, !5118, !5122, !5126, !5130, !5131, !5137}
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4846, file: !289, line: 1915, baseType: !1927, size: 64)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !4846, file: !289, line: 1916, baseType: !4850, size: 64, offset: 64)
!4850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4851, size: 64)
!4851 = !DISubroutineType(types: !4852)
!4852 = !{!46, !350, !46, !27}
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4846, file: !289, line: 1917, baseType: !4854, size: 64, offset: 128)
!4854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4855, size: 64)
!4855 = !DISubroutineType(types: !4856)
!4856 = !{!2010, !350, !1078, !40, !45}
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4846, file: !289, line: 1918, baseType: !4858, size: 64, offset: 192)
!4858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4859, size: 64)
!4859 = !DISubroutineType(types: !4860)
!4860 = !{!2010, !350, !22, !40, !45}
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !4846, file: !289, line: 1919, baseType: !4862, size: 64, offset: 256)
!4862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4863, size: 64)
!4863 = !DISubroutineType(types: !4864)
!4864 = !{!2010, !4865, !4970}
!4865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4866, size: 64)
!4866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !289, line: 373, size: 384, elements: !4867)
!4867 = !{!4868, !4869, !4870, !4874, !4875, !4876, !4877}
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !4866, file: !289, line: 374, baseType: !350, size: 64)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !4866, file: !289, line: 375, baseType: !46, size: 64, offset: 64)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !4866, file: !289, line: 376, baseType: !4871, size: 64, offset: 128)
!4871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4872, size: 64)
!4872 = !DISubroutineType(types: !4873)
!4873 = !{null, !4865, !919}
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4866, file: !289, line: 377, baseType: !25, size: 64, offset: 192)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !4866, file: !289, line: 378, baseType: !27, size: 32, offset: 256)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !4866, file: !289, line: 379, baseType: !98, size: 16, offset: 288)
!4877 = !DIDerivedType(tag: DW_TAG_member, scope: !4866, file: !289, line: 380, baseType: !4878, size: 64, offset: 320)
!4878 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4866, file: !289, line: 380, size: 64, elements: !4879)
!4879 = !{!4880, !4966}
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !4878, file: !289, line: 386, baseType: !4881, size: 64)
!4881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4882, size: 64)
!4882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !4883, line: 998, size: 448, elements: !4884)
!4883 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!4884 = !{!4885, !4952, !4953}
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !4882, file: !4883, line: 999, baseType: !4886, size: 64)
!4886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4887, size: 64)
!4887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !119, line: 293, size: 1536, elements: !4888)
!4888 = !{!4889, !4919, !4933}
!4889 = !DIDerivedType(tag: DW_TAG_member, scope: !4887, file: !119, line: 295, baseType: !4890, size: 512)
!4890 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4887, file: !119, line: 295, size: 512, elements: !4891)
!4891 = !{!4892, !4918}
!4892 = !DIDerivedType(tag: DW_TAG_member, scope: !4890, file: !119, line: 296, baseType: !4893, size: 448)
!4893 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4890, file: !119, line: 296, size: 448, elements: !4894)
!4894 = !{!4895, !4896, !4905, !4906, !4907, !4916, !4917}
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4893, file: !119, line: 298, baseType: !44, size: 64)
!4896 = !DIDerivedType(tag: DW_TAG_member, scope: !4893, file: !119, line: 299, baseType: !4897, size: 128, offset: 64)
!4897 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4893, file: !119, line: 299, size: 128, elements: !4898)
!4898 = !{!4899, !4900}
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4897, file: !119, line: 300, baseType: !102, size: 128)
!4900 = !DIDerivedType(tag: DW_TAG_member, scope: !4897, file: !119, line: 302, baseType: !4901, size: 128)
!4901 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4897, file: !119, line: 302, size: 128, elements: !4902)
!4902 = !{!4903, !4904}
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !4901, file: !119, line: 303, baseType: !25, size: 64)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !4901, file: !119, line: 305, baseType: !13, size: 32, offset: 64)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4893, file: !119, line: 310, baseType: !1760, size: 64, offset: 192)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4893, file: !119, line: 311, baseType: !44, size: 64, offset: 256)
!4907 = !DIDerivedType(tag: DW_TAG_member, scope: !4893, file: !119, line: 312, baseType: !4908, size: 64, offset: 320)
!4908 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4893, file: !119, line: 312, size: 64, elements: !4909)
!4909 = !{!4910, !4911}
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4908, file: !119, line: 313, baseType: !25, size: 64)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !4908, file: !119, line: 314, baseType: !4912, size: 64)
!4912 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !119, line: 257, baseType: !4913)
!4913 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !119, line: 255, size: 64, elements: !4914)
!4914 = !{!4915}
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4913, file: !119, line: 256, baseType: !44, size: 64)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4893, file: !119, line: 316, baseType: !54, size: 32, offset: 384)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !4893, file: !119, line: 317, baseType: !54, size: 32, offset: 416)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4890, file: !119, line: 323, baseType: !1739, size: 512, align: 128)
!4919 = !DIDerivedType(tag: DW_TAG_member, scope: !4887, file: !119, line: 325, baseType: !4920, size: 512, offset: 512)
!4920 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4887, file: !119, line: 325, size: 512, elements: !4921)
!4921 = !{!4922, !4932}
!4922 = !DIDerivedType(tag: DW_TAG_member, scope: !4920, file: !119, line: 326, baseType: !4923, size: 320)
!4923 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4920, file: !119, line: 326, size: 320, elements: !4924)
!4924 = !{!4925, !4926, !4927, !4928, !4929, !4930, !4931}
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !4923, file: !119, line: 327, baseType: !44, size: 64)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !4923, file: !119, line: 328, baseType: !44, size: 64, offset: 64)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !4923, file: !119, line: 329, baseType: !44, size: 64, offset: 128)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !4923, file: !119, line: 331, baseType: !54, size: 32, offset: 192)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !4923, file: !119, line: 332, baseType: !54, size: 32, offset: 224)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !4923, file: !119, line: 333, baseType: !54, size: 32, offset: 256)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !4923, file: !119, line: 335, baseType: !13, size: 32, offset: 288)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !4920, file: !119, line: 339, baseType: !1739, size: 512, align: 128)
!4933 = !DIDerivedType(tag: DW_TAG_member, scope: !4887, file: !119, line: 341, baseType: !4934, size: 512, offset: 1024)
!4934 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4887, file: !119, line: 341, size: 512, elements: !4935)
!4935 = !{!4936, !4945, !4951}
!4936 = !DIDerivedType(tag: DW_TAG_member, scope: !4934, file: !119, line: 342, baseType: !4937, size: 384)
!4937 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4934, file: !119, line: 342, size: 384, elements: !4938)
!4938 = !{!4939, !4940, !4941, !4942, !4943, !4944}
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !4937, file: !119, line: 343, baseType: !44, size: 64)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !4937, file: !119, line: 344, baseType: !44, size: 64, offset: 64)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !4937, file: !119, line: 346, baseType: !25, size: 64, offset: 128)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !4937, file: !119, line: 347, baseType: !25, size: 64, offset: 192)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !4937, file: !119, line: 348, baseType: !25, size: 64, offset: 256)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !4937, file: !119, line: 349, baseType: !25, size: 64, offset: 320)
!4945 = !DIDerivedType(tag: DW_TAG_member, scope: !4934, file: !119, line: 352, baseType: !4946, size: 256)
!4946 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4934, file: !119, line: 352, size: 256, elements: !4947)
!4947 = !{!4948, !4949, !4950}
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !4946, file: !119, line: 353, baseType: !44, size: 64)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !4946, file: !119, line: 354, baseType: !44, size: 64, offset: 64)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !4946, file: !119, line: 356, baseType: !102, size: 128, offset: 128)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !4934, file: !119, line: 359, baseType: !1739, size: 512, align: 128)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !4882, file: !4883, line: 1000, baseType: !27, size: 32, offset: 64)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !4882, file: !4883, line: 1001, baseType: !4954, size: 320, offset: 128)
!4954 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !60, line: 14, baseType: !4955)
!4955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !60, line: 30, size: 320, elements: !4956)
!4956 = !{!4957, !4958, !4959, !4965}
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4955, file: !60, line: 31, baseType: !13, size: 32)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4955, file: !60, line: 32, baseType: !25, size: 64, offset: 64)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4955, file: !60, line: 33, baseType: !4960, size: 64, offset: 128)
!4960 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !60, line: 16, baseType: !4961)
!4961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4962, size: 64)
!4962 = !DISubroutineType(types: !4963)
!4963 = !{!27, !4964, !13, !27, !25}
!4964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4955, size: 64)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4955, file: !60, line: 34, baseType: !102, size: 128, offset: 192)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !4878, file: !289, line: 395, baseType: !4967, size: 64)
!4967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4968, size: 64)
!4968 = !DISubroutineType(types: !4969)
!4969 = !{!2010, !25}
!4970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4971, size: 64)
!4971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !4972, line: 41, size: 320, elements: !4973)
!4972 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!4973 = !{!4974, !4975, !4976, !4977, !4978, !4979, !4984, !5016}
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !4971, file: !4972, line: 42, baseType: !88, size: 8)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !4971, file: !4972, line: 43, baseType: !1001, size: 8, offset: 8)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !4971, file: !4972, line: 44, baseType: !1001, size: 8, offset: 16)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !4971, file: !4972, line: 45, baseType: !1001, size: 8, offset: 24)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !4971, file: !4972, line: 46, baseType: !1001, size: 8, offset: 32)
!4979 = !DIDerivedType(tag: DW_TAG_member, scope: !4971, file: !4972, line: 47, baseType: !4980, size: 64, offset: 64)
!4980 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4971, file: !4972, line: 47, size: 64, elements: !4981)
!4981 = !{!4982, !4983}
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !4980, file: !4972, line: 48, baseType: !40, size: 64)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !4980, file: !4972, line: 49, baseType: !27, size: 32)
!4984 = !DIDerivedType(tag: DW_TAG_member, scope: !4971, file: !4972, line: 61, baseType: !4985, size: 128, offset: 128)
!4985 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4971, file: !4972, line: 61, size: 128, elements: !4986)
!4986 = !{!4987, !4993}
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !4985, file: !4972, line: 67, baseType: !4988, size: 128)
!4988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !4989, line: 17, size: 128, elements: !4990)
!4989 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!4990 = !{!4991, !4992}
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !4988, file: !4989, line: 19, baseType: !25, size: 64)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !4988, file: !4989, line: 20, baseType: !41, size: 64, offset: 64)
!4993 = !DIDerivedType(tag: DW_TAG_member, scope: !4985, file: !4972, line: 68, baseType: !4994, size: 128)
!4994 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4985, file: !4972, line: 68, size: 128, elements: !4995)
!4995 = !{!4996, !5015}
!4996 = !DIDerivedType(tag: DW_TAG_member, scope: !4994, file: !4972, line: 69, baseType: !4997, size: 64)
!4997 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4994, file: !4972, line: 69, size: 64, elements: !4998)
!4998 = !{!4999, !5002, !5009, !5012, !5014}
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !4997, file: !4972, line: 71, baseType: !5000, size: 64)
!5000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5001, size: 64)
!5001 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4988)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !4997, file: !4972, line: 72, baseType: !5003, size: 64)
!5003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5004, size: 64)
!5004 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5005)
!5005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !4972, line: 17, size: 128, elements: !5006)
!5006 = !{!5007, !5008}
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !5005, file: !4972, line: 18, baseType: !25, size: 64)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !5005, file: !4972, line: 19, baseType: !40, size: 64, offset: 64)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !4997, file: !4972, line: 73, baseType: !5010, size: 64)
!5010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5011, size: 64)
!5011 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4041)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !4997, file: !4972, line: 74, baseType: !5013, size: 64)
!5013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !4997, file: !4972, line: 75, baseType: !25, size: 64)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4994, file: !4972, line: 77, baseType: !40, size: 64, offset: 64)
!5016 = !DIDerivedType(tag: DW_TAG_member, scope: !4971, file: !4972, line: 80, baseType: !5017, size: 64, offset: 256)
!5017 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4971, file: !4972, line: 80, size: 64, elements: !5018)
!5018 = !{!5019, !5020}
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !5017, file: !4972, line: 81, baseType: !44, size: 64)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !5017, file: !4972, line: 82, baseType: !46, size: 64)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !4846, file: !289, line: 1920, baseType: !4862, size: 64, offset: 320)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !4846, file: !289, line: 1921, baseType: !5023, size: 64, offset: 384)
!5023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5024, size: 64)
!5024 = !DISubroutineType(types: !5025)
!5025 = !{!27, !4865, !4094, !13}
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !4846, file: !289, line: 1923, baseType: !5027, size: 64, offset: 448)
!5027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5028, size: 64)
!5028 = !DISubroutineType(types: !5029)
!5029 = !{!27, !350, !5030}
!5030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5031, size: 64)
!5031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !289, line: 1858, size: 128, elements: !5032)
!5032 = !{!5033, !5038}
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !5031, file: !289, line: 1859, baseType: !5034, size: 64)
!5034 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !289, line: 1855, baseType: !5035)
!5035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5036, size: 64)
!5036 = !DISubroutineType(types: !5037)
!5037 = !{!1001, !5030, !22, !27, !46, !536, !13}
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !5031, file: !289, line: 1860, baseType: !46, size: 64, offset: 64)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4846, file: !289, line: 1924, baseType: !5040, size: 64, offset: 512)
!5040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5041, size: 64)
!5041 = !DISubroutineType(types: !5042)
!5042 = !{!5043, !350, !5045}
!5043 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !5044, line: 59, baseType: !13)
!5044 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!5045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5046, size: 64)
!5046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !5047, line: 37, size: 128, elements: !5048)
!5047 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!5048 = !{!5049, !5054}
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !5046, file: !5047, line: 38, baseType: !5050, size: 64)
!5050 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !5047, line: 31, baseType: !5051)
!5051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5052, size: 64)
!5052 = !DISubroutineType(types: !5053)
!5053 = !{null, !350, !4627, !5045}
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !5046, file: !5047, line: 39, baseType: !5043, size: 32, offset: 64)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4846, file: !289, line: 1925, baseType: !5056, size: 64, offset: 576)
!5056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5057, size: 64)
!5057 = !DISubroutineType(types: !5058)
!5058 = !{!919, !350, !13, !44}
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4846, file: !289, line: 1926, baseType: !5056, size: 64, offset: 640)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4846, file: !289, line: 1927, baseType: !5061, size: 64, offset: 704)
!5061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5062, size: 64)
!5062 = !DISubroutineType(types: !5063)
!5063 = !{!27, !350, !1631}
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !4846, file: !289, line: 1928, baseType: !44, size: 64, offset: 768)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4846, file: !289, line: 1929, baseType: !5066, size: 64, offset: 832)
!5066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5067, size: 64)
!5067 = !DISubroutineType(types: !5068)
!5068 = !{!27, !1764, !350}
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4846, file: !289, line: 1930, baseType: !5070, size: 64, offset: 896)
!5070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5071, size: 64)
!5071 = !DISubroutineType(types: !5072)
!5072 = !{!27, !350, !5073}
!5073 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !289, line: 1061, baseType: !25)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4846, file: !289, line: 1931, baseType: !5066, size: 64, offset: 960)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !4846, file: !289, line: 1932, baseType: !5076, size: 64, offset: 1024)
!5076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5077, size: 64)
!5077 = !DISubroutineType(types: !5078)
!5078 = !{!27, !350, !46, !46, !27}
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !4846, file: !289, line: 1933, baseType: !5080, size: 64, offset: 1088)
!5080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5081, size: 64)
!5081 = !DISubroutineType(types: !5082)
!5082 = !{!27, !27, !350, !27}
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4846, file: !289, line: 1934, baseType: !5084, size: 64, offset: 1152)
!5084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5085, size: 64)
!5085 = !DISubroutineType(types: !5086)
!5086 = !{!27, !350, !27, !5087}
!5087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5088, size: 64)
!5088 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !289, line: 1063, flags: DIFlagFwdDecl)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !4846, file: !289, line: 1935, baseType: !807, size: 64, offset: 1216)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !4846, file: !289, line: 1936, baseType: !5091, size: 64, offset: 1280)
!5091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5092, size: 64)
!5092 = !DISubroutineType(types: !5093)
!5093 = !{!27, !27}
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !4846, file: !289, line: 1937, baseType: !5084, size: 64, offset: 1344)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !4846, file: !289, line: 1938, baseType: !5096, size: 64, offset: 1408)
!5096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5097, size: 64)
!5097 = !DISubroutineType(types: !5098)
!5098 = !{!2010, !5099, !350, !45, !40, !13}
!5099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5100, size: 64)
!5100 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !479, line: 59, flags: DIFlagFwdDecl)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !4846, file: !289, line: 1939, baseType: !5102, size: 64, offset: 1472)
!5102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5103, size: 64)
!5103 = !DISubroutineType(types: !5104)
!5104 = !{!2010, !350, !45, !5099, !40, !13}
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !4846, file: !289, line: 1940, baseType: !5106, size: 64, offset: 1536)
!5106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5107, size: 64)
!5107 = !DISubroutineType(types: !5108)
!5108 = !{null, !350}
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !4846, file: !289, line: 1941, baseType: !5110, size: 64, offset: 1600)
!5110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5111, size: 64)
!5111 = !DISubroutineType(types: !5112)
!5112 = !{!27, !350, !27, !5113, !3139}
!5113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5087, size: 64)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !4846, file: !289, line: 1942, baseType: !5115, size: 64, offset: 1664)
!5115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5116, size: 64)
!5116 = !DISubroutineType(types: !5117)
!5117 = !{!919, !350, !27, !46, !46}
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4846, file: !289, line: 1944, baseType: !5119, size: 64, offset: 1728)
!5119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5120, size: 64)
!5120 = !DISubroutineType(types: !5121)
!5121 = !{null, !1574, !350}
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !4846, file: !289, line: 1948, baseType: !5123, size: 64, offset: 1792)
!5123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5124, size: 64)
!5124 = !DISubroutineType(types: !5125)
!5125 = !{!2010, !350, !46, !350, !46, !40, !13}
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !4846, file: !289, line: 1950, baseType: !5127, size: 64, offset: 1856)
!5127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5128, size: 64)
!5128 = !DISubroutineType(types: !5129)
!5129 = !{!46, !350, !46, !350, !46, !46, !13}
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !4846, file: !289, line: 1953, baseType: !5076, size: 64, offset: 1920)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !4846, file: !289, line: 1954, baseType: !5132, size: 64, offset: 1984)
!5132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5133, size: 64)
!5133 = !DISubroutineType(types: !5134)
!5134 = !{!27, !5135, !13}
!5135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5136, size: 64)
!5136 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !289, line: 1911, flags: DIFlagFwdDecl)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !4846, file: !289, line: 1955, baseType: !5138, size: 64, offset: 2048)
!5138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5139, size: 64)
!5139 = !DISubroutineType(types: !5140)
!5140 = !{!27, !5135, !4094, !13}
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4841, file: !289, line: 723, baseType: !3676, size: 64)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1765, file: !289, line: 725, baseType: !5143, size: 64, offset: 2816)
!5143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5144, size: 64)
!5144 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !289, line: 725, flags: DIFlagFwdDecl)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1765, file: !289, line: 726, baseType: !1761, size: 1536, align: 64, offset: 2880)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1765, file: !289, line: 727, baseType: !102, size: 128, offset: 4416)
!5147 = !DIDerivedType(tag: DW_TAG_member, scope: !1765, file: !289, line: 728, baseType: !5148, size: 64, offset: 4544)
!5148 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1765, file: !289, line: 728, size: 64, elements: !5149)
!5149 = !{!5150, !5151, !5154, !5155}
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !5148, file: !289, line: 729, baseType: !5099, size: 64)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !5148, file: !289, line: 730, baseType: !5152, size: 64)
!5152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5153, size: 64)
!5153 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !289, line: 730, flags: DIFlagFwdDecl)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !5148, file: !289, line: 731, baseType: !1078, size: 64)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !5148, file: !289, line: 732, baseType: !13, size: 32)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1765, file: !289, line: 735, baseType: !489, size: 32, offset: 4608)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1765, file: !289, line: 738, baseType: !489, size: 32, offset: 4640)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1765, file: !289, line: 739, baseType: !4542, size: 64, offset: 4672)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1765, file: !289, line: 750, baseType: !25, size: 64, offset: 4736)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1761, file: !289, line: 474, baseType: !466, size: 128, offset: 64)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1761, file: !289, line: 475, baseType: !837, size: 320, offset: 192)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1761, file: !289, line: 476, baseType: !341, size: 32, offset: 512)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1761, file: !289, line: 477, baseType: !54, size: 32, offset: 544)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1761, file: !289, line: 482, baseType: !665, size: 128, offset: 576)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1761, file: !289, line: 483, baseType: !44, size: 64, offset: 704)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1761, file: !289, line: 484, baseType: !44, size: 64, offset: 768)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1761, file: !289, line: 485, baseType: !5168, size: 64, offset: 832)
!5168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5169, size: 64)
!5169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5170)
!5170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !289, line: 404, size: 1280, elements: !5171)
!5171 = !{!5172, !5176, !5180, !5184, !5188, !5212, !5217, !5221, !5225, !5229, !5233, !5237, !5238, !5242, !5246, !5250, !5255, !5259, !5265, !5266}
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !5170, file: !289, line: 405, baseType: !5173, size: 64)
!5173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5174, size: 64)
!5174 = !DISubroutineType(types: !5175)
!5175 = !{!27, !1738, !3688}
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !5170, file: !289, line: 406, baseType: !5177, size: 64, offset: 64)
!5177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5178, size: 64)
!5178 = !DISubroutineType(types: !5179)
!5179 = !{!27, !350, !4886}
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !5170, file: !289, line: 409, baseType: !5181, size: 64, offset: 128)
!5181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5182, size: 64)
!5182 = !DISubroutineType(types: !5183)
!5183 = !{!27, !1760, !3688}
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !5170, file: !289, line: 412, baseType: !5185, size: 64, offset: 192)
!5185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5186, size: 64)
!5186 = !DISubroutineType(types: !5187)
!5187 = !{!1001, !1760, !4886}
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !5170, file: !289, line: 414, baseType: !5189, size: 64, offset: 256)
!5189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5190, size: 64)
!5190 = !DISubroutineType(types: !5191)
!5191 = !{null, !5192}
!5192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5193, size: 64)
!5193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !4883, line: 1276, size: 448, elements: !5194)
!5194 = !{!5195, !5196, !5197, !5207, !5208, !5209, !5210, !5211}
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !5193, file: !4883, line: 1277, baseType: !350, size: 64)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !5193, file: !4883, line: 1278, baseType: !1760, size: 64, offset: 64)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !5193, file: !4883, line: 1279, baseType: !5198, size: 64, offset: 128)
!5198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5199, size: 64)
!5199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !289, line: 970, size: 256, elements: !5200)
!5200 = !{!5201, !5202, !5203, !5204, !5205, !5206}
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5199, file: !289, line: 971, baseType: !44, size: 64)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5199, file: !289, line: 972, baseType: !13, size: 32, offset: 64)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !5199, file: !289, line: 973, baseType: !13, size: 32, offset: 96)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !5199, file: !289, line: 974, baseType: !13, size: 32, offset: 128)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !5199, file: !289, line: 975, baseType: !13, size: 32, offset: 160)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !5199, file: !289, line: 976, baseType: !46, size: 64, offset: 192)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !5193, file: !4883, line: 1281, baseType: !44, size: 64, offset: 192)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !5193, file: !4883, line: 1282, baseType: !13, size: 32, offset: 256)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !5193, file: !4883, line: 1283, baseType: !13, size: 32, offset: 288)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !5193, file: !4883, line: 1284, baseType: !1001, size: 8, offset: 320)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !5193, file: !4883, line: 1285, baseType: !44, size: 64, offset: 384)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !5170, file: !289, line: 416, baseType: !5213, size: 64, offset: 320)
!5213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5214, size: 64)
!5214 = !DISubroutineType(types: !5215)
!5215 = !{!27, !350, !1760, !46, !13, !5216, !3139}
!5216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !5170, file: !289, line: 419, baseType: !5218, size: 64, offset: 384)
!5218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5219, size: 64)
!5219 = !DISubroutineType(types: !5220)
!5220 = !{!27, !350, !1760, !46, !13, !13, !1738, !25}
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !5170, file: !289, line: 424, baseType: !5222, size: 64, offset: 448)
!5222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5223, size: 64)
!5223 = !DISubroutineType(types: !5224)
!5224 = !{!3976, !1760, !3976}
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !5170, file: !289, line: 425, baseType: !5226, size: 64, offset: 512)
!5226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5227, size: 64)
!5227 = !DISubroutineType(types: !5228)
!5228 = !{null, !4886, !40, !40}
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !5170, file: !289, line: 426, baseType: !5230, size: 64, offset: 576)
!5230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5231, size: 64)
!5231 = !DISubroutineType(types: !5232)
!5232 = !{!1001, !4886, !341}
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !5170, file: !289, line: 427, baseType: !5234, size: 64, offset: 640)
!5234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5235, size: 64)
!5235 = !DISubroutineType(types: !5236)
!5236 = !{null, !4886}
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !5170, file: !289, line: 428, baseType: !4862, size: 64, offset: 704)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !5170, file: !289, line: 433, baseType: !5239, size: 64, offset: 768)
!5239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5240, size: 64)
!5240 = !DISubroutineType(types: !5241)
!5241 = !{!27, !1760, !4886, !4886, !139}
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !5170, file: !289, line: 435, baseType: !5243, size: 64, offset: 832)
!5243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5244, size: 64)
!5244 = !DISubroutineType(types: !5245)
!5245 = !{!27, !4886}
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !5170, file: !289, line: 436, baseType: !5247, size: 64, offset: 896)
!5247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5248, size: 64)
!5248 = !DISubroutineType(types: !5249)
!5249 = !{!1001, !4886, !40, !40}
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !5170, file: !289, line: 438, baseType: !5251, size: 64, offset: 960)
!5251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5252, size: 64)
!5252 = !DISubroutineType(types: !5253)
!5253 = !{null, !4886, !5254, !5254}
!5254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !5170, file: !289, line: 439, baseType: !5256, size: 64, offset: 1024)
!5256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5257, size: 64)
!5257 = !DISubroutineType(types: !5258)
!5258 = !{!27, !1760, !1738}
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !5170, file: !289, line: 442, baseType: !5260, size: 64, offset: 1088)
!5260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5261, size: 64)
!5261 = !DISubroutineType(types: !5262)
!5262 = !{!27, !5263, !350, !4183}
!5263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5264, size: 64)
!5264 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !289, line: 66, flags: DIFlagFwdDecl)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !5170, file: !289, line: 444, baseType: !5106, size: 64, offset: 1152)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !5170, file: !289, line: 445, baseType: !5267, size: 64, offset: 1216)
!5267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5268, size: 64)
!5268 = !DISubroutineType(types: !5269)
!5269 = !{!27, !4865, !4970}
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1761, file: !289, line: 486, baseType: !44, size: 64, offset: 896)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1761, file: !289, line: 487, baseType: !837, size: 320, offset: 960)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1761, file: !289, line: 488, baseType: !4575, size: 32, offset: 1280)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1761, file: !289, line: 489, baseType: !64, size: 32, offset: 1312)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1761, file: !289, line: 490, baseType: !102, size: 128, offset: 1344)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1761, file: !289, line: 491, baseType: !25, size: 64, offset: 1472)
!5276 = !DIDerivedType(tag: DW_TAG_member, scope: !1746, file: !119, line: 107, baseType: !5277, size: 64, offset: 192)
!5277 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1746, file: !119, line: 107, size: 64, elements: !5278)
!5278 = !{!5279, !5280}
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5277, file: !119, line: 108, baseType: !44, size: 64)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !5277, file: !119, line: 109, baseType: !44, size: 64)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1746, file: !119, line: 117, baseType: !44, size: 64, offset: 256)
!5282 = !DIDerivedType(tag: DW_TAG_member, scope: !1743, file: !119, line: 119, baseType: !5283, size: 320)
!5283 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1743, file: !119, line: 119, size: 320, elements: !5284)
!5284 = !{!5285, !5286, !5289, !5290, !5291}
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !5283, file: !119, line: 124, baseType: !44, size: 64)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !5283, file: !119, line: 125, baseType: !5287, size: 64, offset: 64)
!5287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5288, size: 64)
!5288 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !119, line: 125, flags: DIFlagFwdDecl)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !5283, file: !119, line: 126, baseType: !44, size: 64, offset: 128)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !5283, file: !119, line: 127, baseType: !44, size: 64, offset: 192)
!5291 = !DIDerivedType(tag: DW_TAG_member, scope: !5283, file: !119, line: 128, baseType: !5292, size: 64, offset: 256)
!5292 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5283, file: !119, line: 128, size: 64, elements: !5293)
!5293 = !{!5294, !5295}
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !5292, file: !119, line: 133, baseType: !44, size: 64)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !5292, file: !119, line: 138, baseType: !376, size: 64)
!5296 = !DIDerivedType(tag: DW_TAG_member, scope: !1743, file: !119, line: 141, baseType: !5297, size: 64)
!5297 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1743, file: !119, line: 141, size: 64, elements: !5298)
!5298 = !{!5299}
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !5297, file: !119, line: 142, baseType: !44, size: 64)
!5300 = !DIDerivedType(tag: DW_TAG_member, scope: !1743, file: !119, line: 144, baseType: !5301, size: 128)
!5301 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1743, file: !119, line: 144, size: 128, elements: !5302)
!5302 = !{!5303, !5354}
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !5301, file: !119, line: 146, baseType: !5304, size: 64)
!5304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5305, size: 64)
!5305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !147, line: 126, size: 1216, elements: !5306)
!5306 = !{!5307, !5317, !5318, !5319, !5320, !5321, !5322, !5336, !5337, !5338}
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !5305, file: !147, line: 127, baseType: !5308, size: 384)
!5308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !147, line: 21, size: 384, elements: !5309)
!5309 = !{!5310, !5311, !5313, !5314, !5315, !5316}
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !5308, file: !147, line: 22, baseType: !44, size: 64)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !5308, file: !147, line: 23, baseType: !5312, size: 64, offset: 64)
!5312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !5308, file: !147, line: 24, baseType: !5312, size: 64, offset: 128)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !5308, file: !147, line: 25, baseType: !44, size: 64, offset: 192)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !5308, file: !147, line: 26, baseType: !44, size: 64, offset: 256)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !5308, file: !147, line: 27, baseType: !44, size: 64, offset: 320)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !5305, file: !147, line: 128, baseType: !4193, size: 128, offset: 384)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !5305, file: !147, line: 129, baseType: !1155, size: 256, offset: 512)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5305, file: !147, line: 130, baseType: !146, size: 32, offset: 768)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5305, file: !147, line: 131, baseType: !13, size: 32, offset: 800)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !5305, file: !147, line: 132, baseType: !44, size: 64, offset: 832)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5305, file: !147, line: 133, baseType: !5323, size: 64, offset: 896)
!5323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5324, size: 64)
!5324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5325)
!5325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !147, line: 77, size: 192, elements: !5326)
!5326 = !{!5327, !5331, !5332}
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !5325, file: !147, line: 83, baseType: !5328, size: 64)
!5328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5329, size: 64)
!5329 = !DISubroutineType(types: !5330)
!5330 = !{null, !1738}
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !5325, file: !147, line: 89, baseType: !1697, size: 64, offset: 64)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !5325, file: !147, line: 100, baseType: !5333, size: 64, offset: 128)
!5333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5334, size: 64)
!5334 = !DISubroutineType(types: !5335)
!5335 = !{!27, !5304, !44, !44, !27}
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5305, file: !147, line: 134, baseType: !25, size: 64, offset: 960)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !5305, file: !147, line: 135, baseType: !27, size: 32, offset: 1024)
!5338 = !DIDerivedType(tag: DW_TAG_member, scope: !5305, file: !147, line: 136, baseType: !5339, size: 128, offset: 1088)
!5339 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5305, file: !147, line: 136, size: 128, elements: !5340)
!5340 = !{!5341, !5347}
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !5339, file: !147, line: 137, baseType: !5342, size: 128)
!5342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !5343, line: 6, size: 128, elements: !5344)
!5343 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!5344 = !{!5345, !5346}
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5342, file: !5343, line: 7, baseType: !536, size: 64)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5342, file: !5343, line: 8, baseType: !536, size: 64, offset: 64)
!5347 = !DIDerivedType(tag: DW_TAG_member, scope: !5339, file: !147, line: 138, baseType: !5348)
!5348 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5339, file: !147, line: 138, elements: !5349)
!5349 = !{!5350, !5352}
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !5348, file: !147, line: 138, baseType: !5351)
!5351 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5348, file: !147, line: 138, elements: !803)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !5348, file: !147, line: 138, baseType: !5353)
!5353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5342, elements: !1230)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !5301, file: !119, line: 147, baseType: !25, size: 64, offset: 64)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1743, file: !119, line: 161, baseType: !363, size: 128, align: 64)
!5356 = !DIDerivedType(tag: DW_TAG_member, scope: !1739, file: !119, line: 164, baseType: !5357, size: 32, offset: 384)
!5357 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1739, file: !119, line: 164, size: 32, elements: !5358)
!5358 = !{!5359, !5360}
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !5357, file: !119, line: 169, baseType: !54, size: 32)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !5357, file: !119, line: 177, baseType: !13, size: 32)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1739, file: !119, line: 181, baseType: !54, size: 32, offset: 416)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1702, file: !1625, line: 535, baseType: !1738, size: 64, offset: 640)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1702, file: !1625, line: 541, baseType: !5364, size: 64, offset: 704)
!5364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1702, file: !1625, line: 545, baseType: !5366, size: 64, offset: 768)
!5366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1702, file: !1625, line: 549, baseType: !5368, size: 64, offset: 832)
!5368 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !818, line: 520, baseType: !1738)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1624, file: !1625, line: 581, baseType: !5370, size: 64, offset: 384)
!5370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5371, size: 64)
!5371 = !DISubroutineType(types: !5372)
!5372 = !{!1700, !1701, !13}
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1624, file: !1625, line: 582, baseType: !5374, size: 64, offset: 448)
!5374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5375, size: 64)
!5375 = !DISubroutineType(types: !5376)
!5376 = !{!1700, !1701, !44, !44}
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1624, file: !1625, line: 584, baseType: !5378, size: 64, offset: 512)
!5378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5379, size: 64)
!5379 = !DISubroutineType(types: !5380)
!5380 = !{!44, !1631}
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1624, file: !1625, line: 588, baseType: !1697, size: 64, offset: 576)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1624, file: !1625, line: 591, baseType: !1697, size: 64, offset: 640)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1624, file: !1625, line: 597, baseType: !5384, size: 64, offset: 704)
!5384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5385, size: 64)
!5385 = !DISubroutineType(types: !5386)
!5386 = !{!27, !1631, !44, !25, !27, !27}
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1624, file: !1625, line: 603, baseType: !5388, size: 64, offset: 768)
!5388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5389, size: 64)
!5389 = !DISubroutineType(types: !5390)
!5390 = !{!22, !1631}
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1624, file: !1625, line: 613, baseType: !5392, size: 64, offset: 832)
!5392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5393, size: 64)
!5393 = !DISubroutineType(types: !5394)
!5394 = !{!27, !1631, !1679}
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1624, file: !1625, line: 625, baseType: !5396, size: 64, offset: 896)
!5396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5397, size: 64)
!5397 = !DISubroutineType(types: !5398)
!5398 = !{!1679, !1631, !44}
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1624, file: !1625, line: 633, baseType: !5400, size: 64, offset: 960)
!5400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5401, size: 64)
!5401 = !DISubroutineType(types: !5402)
!5402 = !{!1738, !1631, !44}
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1562, file: !1531, line: 277, baseType: !5404, size: 64, offset: 64)
!5404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5405, size: 64)
!5405 = !DISubroutineType(types: !5406)
!5406 = !{null, !1568}
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1562, file: !1531, line: 290, baseType: !1604, size: 64, offset: 128)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1562, file: !1531, line: 292, baseType: !1592, size: 64, offset: 192)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1562, file: !1531, line: 293, baseType: !1600, size: 64, offset: 256)
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1562, file: !1531, line: 294, baseType: !1596, size: 64, offset: 320)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1562, file: !1531, line: 296, baseType: !5412, size: 64, offset: 384)
!5412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5413, size: 64)
!5413 = !DISubroutineType(types: !5414)
!5414 = !{!2010, !1568, !1078, !40, !46}
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1562, file: !1531, line: 306, baseType: !40, size: 64, offset: 448)
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1562, file: !1531, line: 313, baseType: !1001, size: 8, offset: 512)
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1562, file: !1531, line: 314, baseType: !5412, size: 64, offset: 576)
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1562, file: !1531, line: 317, baseType: !5419, size: 64, offset: 640)
!5419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5420, size: 64)
!5420 = !DISubroutineType(types: !5421)
!5421 = !{!5043, !1568, !5045}
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1562, file: !1531, line: 320, baseType: !5423, size: 64, offset: 704)
!5423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5424, size: 64)
!5424 = !DISubroutineType(types: !5425)
!5425 = !{!27, !1568, !1631}
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1557, file: !1531, line: 176, baseType: !5427, size: 64, offset: 64)
!5427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5428, size: 64)
!5428 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1531, line: 35, flags: DIFlagFwdDecl)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1557, file: !1531, line: 177, baseType: !46, size: 64, offset: 128)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1557, file: !1531, line: 178, baseType: !1529, size: 64, offset: 192)
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1530, file: !1531, line: 215, baseType: !25, size: 64, offset: 768)
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1530, file: !1531, line: 221, baseType: !536, size: 64, offset: 832)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1530, file: !1531, line: 223, baseType: !31, size: 16, offset: 896)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1530, file: !1531, line: 224, baseType: !29, size: 16, offset: 912)
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1530, file: !1531, line: 225, baseType: !5436, size: 64, offset: 960)
!5436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5437, size: 64)
!5437 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1531, line: 36, flags: DIFlagFwdDecl)
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1530, file: !1531, line: 227, baseType: !363, size: 128, align: 64, offset: 1024)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !1514, file: !1505, line: 442, baseType: !5440, size: 448, offset: 2048)
!5440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !1505, line: 138, size: 448, elements: !5441)
!5441 = !{!5442, !5443, !5444}
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !5440, file: !1505, line: 140, baseType: !1529, size: 64)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !5440, file: !1505, line: 141, baseType: !44, size: 64, offset: 64)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !5440, file: !1505, line: 142, baseType: !2350, size: 320, offset: 128)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !1514, file: !1505, line: 443, baseType: !5440, size: 448, offset: 2496)
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !1514, file: !1505, line: 446, baseType: !5447, offset: 2944)
!5447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5440, elements: !5448)
!5448 = !{!5449}
!5449 = !DISubrange(count: 0)
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !1514, file: !1505, line: 455, baseType: !98, size: 16, offset: 2944)
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !1514, file: !1505, line: 456, baseType: !98, size: 16, offset: 2960)
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !1514, file: !1505, line: 457, baseType: !98, size: 16, offset: 2976)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !1514, file: !1505, line: 458, baseType: !98, size: 16, offset: 2992)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !1514, file: !1505, line: 461, baseType: !1508, size: 896, offset: 3008)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1514, file: !1505, line: 463, baseType: !5456, size: 64, offset: 3904)
!5456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5457, size: 64)
!5457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !1505, line: 537, size: 41664, elements: !5458)
!5458 = !{!5459, !5460, !5461, !5462, !5463, !5464, !5465, !5466, !5467, !5468, !5469}
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !5457, file: !1505, line: 538, baseType: !1549, size: 64)
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !5457, file: !1505, line: 541, baseType: !13, size: 32, offset: 64)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !5457, file: !1505, line: 544, baseType: !27, size: 32, offset: 96)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !5457, file: !1505, line: 547, baseType: !102, size: 128, offset: 128)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !5457, file: !1505, line: 548, baseType: !363, size: 128, align: 64, offset: 256)
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !5457, file: !1505, line: 555, baseType: !1514, size: 7872, offset: 384)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !5457, file: !1505, line: 558, baseType: !1513, size: 64, offset: 8256)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !5457, file: !1505, line: 561, baseType: !54, size: 32, offset: 8320)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5457, file: !1505, line: 564, baseType: !13, size: 32, offset: 8352)
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !5457, file: !1505, line: 567, baseType: !2579, size: 32768, offset: 8384)
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5457, file: !1505, line: 570, baseType: !4377, size: 512, offset: 41152)
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !1514, file: !1505, line: 469, baseType: !102, size: 128, offset: 3968)
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !1514, file: !1505, line: 478, baseType: !5472, size: 1792, offset: 4096)
!5472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 1792, elements: !5473)
!5473 = !{!5474}
!5474 = !DISubrange(count: 14)
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !1514, file: !1505, line: 487, baseType: !1513, size: 64, offset: 5888)
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !1514, file: !1505, line: 488, baseType: !1513, size: 64, offset: 5952)
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !1514, file: !1505, line: 491, baseType: !5478, size: 64, offset: 6016)
!5478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5479, size: 64)
!5479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !1505, line: 327, size: 896, elements: !5480)
!5480 = !{!5481, !5484, !5494, !5495, !5496, !5497, !5498}
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !5479, file: !1505, line: 332, baseType: !5482)
!5482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !5483, line: 64, elements: !803)
!5483 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !5479, file: !1505, line: 333, baseType: !5485, size: 192)
!5485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !1505, line: 299, size: 192, elements: !5486)
!5486 = !{!5487}
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !5485, file: !1505, line: 300, baseType: !5488, size: 192)
!5488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !5489, line: 17, size: 192, elements: !5490)
!5489 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!5490 = !{!5491, !5492, !5493}
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !5488, file: !5489, line: 18, baseType: !536, size: 64)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !5488, file: !5489, line: 19, baseType: !536, size: 64, offset: 64)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !5488, file: !5489, line: 20, baseType: !538, size: 64, offset: 128)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !5479, file: !1505, line: 339, baseType: !5485, size: 192, offset: 192)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !5479, file: !1505, line: 347, baseType: !5485, size: 192, offset: 384)
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !5479, file: !1505, line: 353, baseType: !5485, size: 192, offset: 576)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !5479, file: !1505, line: 366, baseType: !1513, size: 64, offset: 768)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !5479, file: !1505, line: 367, baseType: !1513, size: 64, offset: 832)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !1514, file: !1505, line: 492, baseType: !102, size: 128, offset: 6080)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !1514, file: !1505, line: 495, baseType: !5485, size: 192, offset: 6208)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !1514, file: !1505, line: 496, baseType: !5485, size: 192, offset: 6400)
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1514, file: !1505, line: 497, baseType: !1341, size: 192, offset: 6592)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !1514, file: !1505, line: 503, baseType: !102, size: 128, offset: 6784)
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !1514, file: !1505, line: 504, baseType: !383, size: 256, offset: 6912)
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !1514, file: !1505, line: 507, baseType: !59, size: 192, offset: 7168)
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !1514, file: !1505, line: 510, baseType: !1117, size: 256, offset: 7360)
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !1514, file: !1505, line: 513, baseType: !5508, size: 64, offset: 7616)
!5508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5509, size: 64)
!5509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !5510, line: 214, elements: !803)
!5510 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !1514, file: !1505, line: 516, baseType: !5512, offset: 7680)
!5512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !5513, line: 76, elements: !803)
!5513 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !1514, file: !1505, line: 519, baseType: !54, size: 32, offset: 7680)
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !1514, file: !1505, line: 522, baseType: !5516, size: 128, offset: 7712)
!5516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !1505, line: 370, size: 128, elements: !5517)
!5517 = !{!5518, !5519, !5520, !5521}
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !5516, file: !1505, line: 372, baseType: !1001, size: 8)
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !5516, file: !1505, line: 375, baseType: !27, size: 32, offset: 32)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !5516, file: !1505, line: 380, baseType: !27, size: 32, offset: 64)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !5516, file: !1505, line: 386, baseType: !27, size: 32, offset: 96)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !1514, file: !1505, line: 529, baseType: !5523, offset: 7872)
!5523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1513, elements: !1230)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1510, file: !1505, line: 157, baseType: !5525, size: 64, offset: 64)
!5525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5526, size: 64)
!5526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !1505, line: 669, size: 1984, elements: !5527)
!5527 = !{!5528, !5532, !5536, !5540, !5541, !5542, !5543, !5547, !5551, !5552, !5558, !5562, !5563, !5564, !5568, !5572, !5576, !5577, !5578, !5579, !5580, !5581, !5582, !5583, !5584, !5585, !5586, !5587, !5588, !5625, !5626}
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !5526, file: !1505, line: 670, baseType: !5529, size: 64)
!5529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5530, size: 64)
!5530 = !DISubroutineType(types: !5531)
!5531 = !{!1509, !1509}
!5532 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !5526, file: !1505, line: 671, baseType: !5533, size: 64, offset: 64)
!5533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5534, size: 64)
!5534 = !DISubroutineType(types: !5535)
!5535 = !{!27, !1509}
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !5526, file: !1505, line: 672, baseType: !5537, size: 64, offset: 128)
!5537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5538, size: 64)
!5538 = !DISubroutineType(types: !5539)
!5539 = !{null, !1509}
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !5526, file: !1505, line: 673, baseType: !5537, size: 64, offset: 192)
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !5526, file: !1505, line: 674, baseType: !5537, size: 64, offset: 256)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !5526, file: !1505, line: 675, baseType: !5537, size: 64, offset: 320)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !5526, file: !1505, line: 676, baseType: !5544, size: 64, offset: 384)
!5544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5545, size: 64)
!5545 = !DISubroutineType(types: !5546)
!5546 = !{null, !1509, !27}
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !5526, file: !1505, line: 677, baseType: !5548, size: 64, offset: 448)
!5548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5549, size: 64)
!5549 = !DISubroutineType(types: !5550)
!5550 = !{!27, !1574, !1509}
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !5526, file: !1505, line: 679, baseType: !5548, size: 64, offset: 512)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !5526, file: !1505, line: 682, baseType: !5553, size: 64, offset: 576)
!5553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5554, size: 64)
!5554 = !DISubroutineType(types: !5555)
!5555 = !{!27, !5556}
!5556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5557, size: 64)
!5557 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !1505, line: 30, flags: DIFlagFwdDecl)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !5526, file: !1505, line: 683, baseType: !5559, size: 64, offset: 640)
!5559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5560, size: 64)
!5560 = !DISubroutineType(types: !5561)
!5561 = !{null, !5556}
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !5526, file: !1505, line: 684, baseType: !5559, size: 64, offset: 704)
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !5526, file: !1505, line: 685, baseType: !2524, size: 64, offset: 768)
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !5526, file: !1505, line: 686, baseType: !5565, size: 64, offset: 832)
!5565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5566, size: 64)
!5566 = !DISubroutineType(types: !5567)
!5567 = !{!27, !477, !1503}
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !5526, file: !1505, line: 688, baseType: !5569, size: 64, offset: 896)
!5569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5570, size: 64)
!5570 = !DISubroutineType(types: !5571)
!5571 = !{null, !477, !1503}
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !5526, file: !1505, line: 689, baseType: !5573, size: 64, offset: 960)
!5573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5574, size: 64)
!5574 = !DISubroutineType(types: !5575)
!5575 = !{null, !477}
!5576 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !5526, file: !1505, line: 690, baseType: !5573, size: 64, offset: 1024)
!5577 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5526, file: !1505, line: 691, baseType: !5573, size: 64, offset: 1088)
!5578 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !5526, file: !1505, line: 692, baseType: !5537, size: 64, offset: 1152)
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !5526, file: !1505, line: 694, baseType: !1001, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !5526, file: !1505, line: 707, baseType: !1001, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!5581 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !5526, file: !1505, line: 719, baseType: !1001, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!5582 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5526, file: !1505, line: 722, baseType: !27, size: 32, offset: 1248)
!5583 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5526, file: !1505, line: 723, baseType: !22, size: 64, offset: 1280)
!5584 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !5526, file: !1505, line: 726, baseType: !22, size: 64, offset: 1344)
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !5526, file: !1505, line: 729, baseType: !5456, size: 64, offset: 1408)
!5586 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !5526, file: !1505, line: 732, baseType: !462, size: 192, offset: 1472)
!5587 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !5526, file: !1505, line: 738, baseType: !102, size: 128, offset: 1664)
!5588 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !5526, file: !1505, line: 744, baseType: !5589, size: 64, offset: 1792)
!5589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5590, size: 64)
!5590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !1505, line: 580, size: 1728, elements: !5591)
!5591 = !{!5592, !5593, !5594, !5595, !5596, !5597, !5598, !5599, !5601, !5602, !5603, !5607, !5611, !5612, !5613, !5614, !5615, !5619, !5623, !5624}
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5590, file: !1505, line: 586, baseType: !4377, size: 512)
!5593 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5590, file: !1505, line: 587, baseType: !44, size: 64, offset: 512)
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !5590, file: !1505, line: 593, baseType: !40, size: 64, offset: 576)
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5590, file: !1505, line: 596, baseType: !13, size: 32, offset: 640)
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !5590, file: !1505, line: 604, baseType: !13, size: 32, offset: 672)
!5597 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !5590, file: !1505, line: 610, baseType: !5525, size: 64, offset: 704)
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5590, file: !1505, line: 611, baseType: !102, size: 128, offset: 768)
!5599 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !5590, file: !1505, line: 612, baseType: !5600, size: 64, offset: 896)
!5600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !5590, file: !1505, line: 614, baseType: !1565, size: 64, offset: 960)
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5590, file: !1505, line: 615, baseType: !5404, size: 64, offset: 1024)
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !5590, file: !1505, line: 621, baseType: !5604, size: 64, offset: 1088)
!5604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5605, size: 64)
!5605 = !DISubroutineType(types: !5606)
!5606 = !{!536, !1509, !5589}
!5607 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !5590, file: !1505, line: 625, baseType: !5608, size: 64, offset: 1152)
!5608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5609, size: 64)
!5609 = !DISubroutineType(types: !5610)
!5610 = !{!342, !1509, !5589}
!5611 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !5590, file: !1505, line: 628, baseType: !1604, size: 64, offset: 1216)
!5612 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !5590, file: !1505, line: 631, baseType: !1592, size: 64, offset: 1280)
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !5590, file: !1505, line: 632, baseType: !1600, size: 64, offset: 1344)
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !5590, file: !1505, line: 633, baseType: !1596, size: 64, offset: 1408)
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !5590, file: !1505, line: 640, baseType: !5616, size: 64, offset: 1472)
!5616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5617, size: 64)
!5617 = !DISubroutineType(types: !5618)
!5618 = !{!27, !1509, !5589, !536}
!5619 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !5590, file: !1505, line: 645, baseType: !5620, size: 64, offset: 1536)
!5620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5621, size: 64)
!5621 = !DISubroutineType(types: !5622)
!5622 = !{!27, !1509, !5589, !342}
!5623 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !5590, file: !1505, line: 654, baseType: !5412, size: 64, offset: 1600)
!5624 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !5590, file: !1505, line: 657, baseType: !5419, size: 64, offset: 1664)
!5625 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !5526, file: !1505, line: 745, baseType: !5589, size: 64, offset: 1856)
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !5526, file: !1505, line: 754, baseType: !13, size: 32, offset: 1920)
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1510, file: !1505, line: 160, baseType: !4193, size: 128, offset: 128)
!5628 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1510, file: !1505, line: 163, baseType: !102, size: 128, offset: 256)
!5629 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1510, file: !1505, line: 164, baseType: !102, size: 128, offset: 384)
!5630 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !1510, file: !1505, line: 167, baseType: !102, size: 128, offset: 512)
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1510, file: !1505, line: 173, baseType: !27, size: 32, offset: 640)
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1510, file: !1505, line: 175, baseType: !13, size: 32, offset: 672)
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !1510, file: !1505, line: 183, baseType: !536, size: 64, offset: 704)
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !1510, file: !1505, line: 189, baseType: !54, size: 32, offset: 768)
!5635 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1510, file: !1505, line: 192, baseType: !1117, size: 256, offset: 832)
!5636 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !1510, file: !1505, line: 193, baseType: !5637, size: 448, offset: 1088)
!5637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !305, line: 120, size: 448, elements: !5638)
!5638 = !{!5639, !5640, !5641}
!5639 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5637, file: !305, line: 121, baseType: !1117, size: 256)
!5640 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !5637, file: !305, line: 122, baseType: !363, size: 128, align: 64, offset: 256)
!5641 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !5637, file: !305, line: 125, baseType: !2412, size: 64, offset: 384)
!5642 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1510, file: !1505, line: 199, baseType: !1509, size: 64, offset: 1536)
!5643 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1504, file: !1505, line: 218, baseType: !428, size: 32, offset: 896)
!5644 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !1504, file: !1505, line: 226, baseType: !1503, size: 64, offset: 960)
!5645 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !1504, file: !1505, line: 229, baseType: !1513, size: 64, offset: 1024)
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1504, file: !1505, line: 232, baseType: !27, size: 32, offset: 1088)
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1504, file: !1505, line: 241, baseType: !102, size: 128, offset: 1152)
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !1504, file: !1505, line: 242, baseType: !102, size: 128, offset: 1280)
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !1504, file: !1505, line: 243, baseType: !102, size: 128, offset: 1408)
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !1504, file: !1505, line: 246, baseType: !102, size: 128, offset: 1536)
!5651 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !1504, file: !1505, line: 255, baseType: !5472, size: 1792, offset: 1664)
!5652 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !1504, file: !1505, line: 258, baseType: !102, size: 128, offset: 3456)
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !1504, file: !1505, line: 259, baseType: !102, size: 128, offset: 3584)
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !1504, file: !1505, line: 265, baseType: !441, size: 128, offset: 3712)
!5655 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !1504, file: !1505, line: 271, baseType: !102, size: 128, offset: 3840)
!5656 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !1504, file: !1505, line: 277, baseType: !102, size: 128, offset: 3968)
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !1504, file: !1505, line: 278, baseType: !102, size: 128, offset: 4096)
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !1504, file: !1505, line: 279, baseType: !102, size: 128, offset: 4224)
!5659 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !1504, file: !1505, line: 288, baseType: !1513, size: 64, offset: 4352)
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !1504, file: !1505, line: 289, baseType: !1513, size: 64, offset: 4416)
!5661 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !1504, file: !1505, line: 290, baseType: !1503, size: 64, offset: 4480)
!5662 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !1504, file: !1505, line: 293, baseType: !1001, size: 8, offset: 4544)
!5663 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1504, file: !1505, line: 296, baseType: !363, size: 128, align: 64, offset: 4608)
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !478, file: !479, line: 1110, baseType: !5665, size: 64, offset: 15360)
!5665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5666, size: 64)
!5666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !5667, line: 93, size: 8768, elements: !5668)
!5667 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!5668 = !{!5669, !5670, !5671, !5672, !5673, !5674, !5675, !5676, !5687, !5688, !5689, !5690, !5691, !5692, !5693, !5705, !5706, !5707, !5708, !5709, !5710, !5711, !5717, !5726, !5727, !5729, !5730, !5731, !5734, !5740, !5741, !5742, !5743, !5744, !5745, !5746, !5747, !5748, !5749, !5750, !5751, !5752, !5753, !5754, !5755, !5756, !5757, !5758, !5759, !5760, !5761, !5772, !5773, !5780, !5790, !5852, !5853, !5856, !5857, !5858, !5859, !5860, !5861}
!5669 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !5666, file: !5667, line: 94, baseType: !428, size: 32)
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !5666, file: !5667, line: 95, baseType: !54, size: 32, offset: 32)
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !5666, file: !5667, line: 96, baseType: !27, size: 32, offset: 64)
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !5666, file: !5667, line: 97, baseType: !27, size: 32, offset: 96)
!5673 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !5666, file: !5667, line: 98, baseType: !102, size: 128, offset: 128)
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !5666, file: !5667, line: 100, baseType: !59, size: 192, offset: 256)
!5675 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !5666, file: !5667, line: 103, baseType: !477, size: 64, offset: 448)
!5676 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !5666, file: !5667, line: 106, baseType: !5677, size: 192, offset: 512)
!5677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !5678, line: 32, size: 192, elements: !5679)
!5678 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!5679 = !{!5680, !5681}
!5680 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5677, file: !5678, line: 33, baseType: !102, size: 128)
!5681 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !5677, file: !5678, line: 34, baseType: !5682, size: 64, offset: 128)
!5682 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !5683, line: 25, baseType: !5684)
!5683 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!5684 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5683, line: 23, size: 64, elements: !5685)
!5685 = !{!5686}
!5686 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !5684, file: !5683, line: 24, baseType: !733, size: 64)
!5687 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !5666, file: !5667, line: 109, baseType: !437, size: 64, offset: 704)
!5688 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !5666, file: !5667, line: 112, baseType: !27, size: 32, offset: 768)
!5689 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !5666, file: !5667, line: 114, baseType: !27, size: 32, offset: 800)
!5690 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !5666, file: !5667, line: 115, baseType: !477, size: 64, offset: 832)
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !5666, file: !5667, line: 118, baseType: !27, size: 32, offset: 896)
!5692 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5666, file: !5667, line: 119, baseType: !13, size: 32, offset: 928)
!5693 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !5666, file: !5667, line: 121, baseType: !5694, size: 64, offset: 960)
!5694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5695, size: 64)
!5695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !5667, line: 80, size: 448, elements: !5696)
!5696 = !{!5697, !5698, !5704}
!5697 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !5695, file: !5667, line: 81, baseType: !54, size: 32)
!5698 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !5695, file: !5667, line: 82, baseType: !5699, size: 128, offset: 64)
!5699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !5667, line: 75, size: 128, elements: !5700)
!5700 = !{!5701, !5702}
!5701 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !5699, file: !5667, line: 76, baseType: !477, size: 64)
!5702 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5699, file: !5667, line: 77, baseType: !5703, size: 64, offset: 64)
!5703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5699, size: 64)
!5704 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !5695, file: !5667, line: 83, baseType: !1155, size: 256, offset: 192)
!5705 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !5666, file: !5667, line: 132, baseType: !13, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!5706 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !5666, file: !5667, line: 133, baseType: !13, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !5666, file: !5667, line: 138, baseType: !13, size: 32, offset: 1056)
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !5666, file: !5667, line: 139, baseType: !102, size: 128, offset: 1088)
!5709 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !5666, file: !5667, line: 142, baseType: !601, size: 512, offset: 1216)
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !5666, file: !5667, line: 143, baseType: !609, size: 64, offset: 1728)
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !5666, file: !5667, line: 150, baseType: !5712, size: 256, offset: 1792)
!5712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5713, size: 256, elements: !2242)
!5713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !5667, line: 38, size: 128, elements: !5714)
!5714 = !{!5715, !5716}
!5715 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !5713, file: !5667, line: 39, baseType: !536, size: 64)
!5716 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !5713, file: !5667, line: 40, baseType: !536, size: 64, offset: 64)
!5717 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !5666, file: !5667, line: 156, baseType: !5718, size: 192, offset: 2048)
!5718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !5667, line: 66, size: 192, elements: !5719)
!5719 = !{!5720}
!5720 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !5718, file: !5667, line: 67, baseType: !5721, size: 192)
!5721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !5667, line: 47, size: 192, elements: !5722)
!5722 = !{!5723, !5724, !5725}
!5723 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !5721, file: !5667, line: 48, baseType: !378, size: 64)
!5724 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !5721, file: !5667, line: 49, baseType: !378, size: 64, offset: 64)
!5725 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !5721, file: !5667, line: 50, baseType: !378, size: 64, offset: 128)
!5726 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !5666, file: !5667, line: 160, baseType: !1353, size: 640, offset: 2240)
!5727 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !5666, file: !5667, line: 163, baseType: !5728, size: 256, offset: 2880)
!5728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 256, elements: !446)
!5729 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !5666, file: !5667, line: 169, baseType: !424, size: 64, offset: 3136)
!5730 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !5666, file: !5667, line: 172, baseType: !27, size: 32, offset: 3200)
!5731 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !5666, file: !5667, line: 174, baseType: !5732, size: 64, offset: 3264)
!5732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5733, size: 64)
!5733 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !5667, line: 174, flags: DIFlagFwdDecl)
!5734 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !5666, file: !5667, line: 185, baseType: !5735, size: 64, offset: 3328)
!5735 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !652, line: 860, baseType: !5736)
!5736 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !652, line: 853, size: 64, elements: !5737)
!5737 = !{!5738, !5739}
!5738 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !5736, file: !652, line: 858, baseType: !1792, size: 32)
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5736, file: !652, line: 859, baseType: !64, size: 32, offset: 32)
!5740 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !5666, file: !5667, line: 186, baseType: !536, size: 64, offset: 3392)
!5741 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !5666, file: !5667, line: 186, baseType: !536, size: 64, offset: 3456)
!5742 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !5666, file: !5667, line: 186, baseType: !536, size: 64, offset: 3520)
!5743 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !5666, file: !5667, line: 186, baseType: !536, size: 64, offset: 3584)
!5744 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !5666, file: !5667, line: 187, baseType: !536, size: 64, offset: 3648)
!5745 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !5666, file: !5667, line: 188, baseType: !536, size: 64, offset: 3712)
!5746 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !5666, file: !5667, line: 189, baseType: !1341, size: 192, offset: 3776)
!5747 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !5666, file: !5667, line: 190, baseType: !44, size: 64, offset: 3968)
!5748 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !5666, file: !5667, line: 190, baseType: !44, size: 64, offset: 4032)
!5749 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !5666, file: !5667, line: 190, baseType: !44, size: 64, offset: 4096)
!5750 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !5666, file: !5667, line: 190, baseType: !44, size: 64, offset: 4160)
!5751 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !5666, file: !5667, line: 191, baseType: !44, size: 64, offset: 4224)
!5752 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !5666, file: !5667, line: 191, baseType: !44, size: 64, offset: 4288)
!5753 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !5666, file: !5667, line: 191, baseType: !44, size: 64, offset: 4352)
!5754 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !5666, file: !5667, line: 191, baseType: !44, size: 64, offset: 4416)
!5755 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !5666, file: !5667, line: 192, baseType: !44, size: 64, offset: 4480)
!5756 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !5666, file: !5667, line: 192, baseType: !44, size: 64, offset: 4544)
!5757 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !5666, file: !5667, line: 192, baseType: !44, size: 64, offset: 4608)
!5758 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !5666, file: !5667, line: 192, baseType: !44, size: 64, offset: 4672)
!5759 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !5666, file: !5667, line: 193, baseType: !44, size: 64, offset: 4736)
!5760 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !5666, file: !5667, line: 193, baseType: !44, size: 64, offset: 4800)
!5761 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !5666, file: !5667, line: 194, baseType: !5762, size: 448, offset: 4864)
!5762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !5763, line: 12, size: 448, elements: !5764)
!5763 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!5764 = !{!5765, !5766, !5767, !5768, !5769, !5770, !5771}
!5765 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !5762, file: !5763, line: 15, baseType: !536, size: 64)
!5766 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !5762, file: !5763, line: 17, baseType: !536, size: 64, offset: 64)
!5767 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !5762, file: !5763, line: 19, baseType: !536, size: 64, offset: 128)
!5768 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !5762, file: !5763, line: 21, baseType: !536, size: 64, offset: 192)
!5769 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !5762, file: !5763, line: 29, baseType: !536, size: 64, offset: 256)
!5770 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !5762, file: !5763, line: 35, baseType: !536, size: 64, offset: 320)
!5771 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !5762, file: !5763, line: 44, baseType: !536, size: 64, offset: 384)
!5772 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !5666, file: !5667, line: 202, baseType: !538, size: 64, offset: 5312)
!5773 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !5666, file: !5667, line: 213, baseType: !5774, size: 2048, offset: 5376)
!5774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5775, size: 2048, elements: !1445)
!5775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !5776, line: 43, size: 128, elements: !5777)
!5776 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!5777 = !{!5778, !5779}
!5778 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !5775, file: !5776, line: 44, baseType: !43, size: 64)
!5779 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !5775, file: !5776, line: 45, baseType: !43, size: 64, offset: 64)
!5780 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !5666, file: !5667, line: 216, baseType: !5781, size: 448, offset: 7424)
!5781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !5667, line: 30, size: 448, elements: !5782)
!5782 = !{!5783, !5784, !5785, !5786, !5787, !5788, !5789}
!5783 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !5781, file: !5667, line: 31, baseType: !27, size: 32)
!5784 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !5781, file: !5667, line: 32, baseType: !919, size: 64, offset: 64)
!5785 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !5781, file: !5667, line: 33, baseType: !44, size: 64, offset: 128)
!5786 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !5781, file: !5667, line: 34, baseType: !536, size: 64, offset: 192)
!5787 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !5781, file: !5667, line: 34, baseType: !536, size: 64, offset: 256)
!5788 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !5781, file: !5667, line: 35, baseType: !44, size: 64, offset: 320)
!5789 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !5781, file: !5667, line: 35, baseType: !44, size: 64, offset: 384)
!5790 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !5666, file: !5667, line: 219, baseType: !5791, size: 64, offset: 7872)
!5791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5792, size: 64)
!5792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !5793, line: 41, size: 3456, elements: !5794)
!5793 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!5794 = !{!5795, !5796, !5797, !5798, !5799, !5800, !5801, !5802, !5803, !5804, !5805, !5806, !5807, !5808, !5809, !5811, !5812, !5813, !5814, !5815, !5816, !5817, !5818, !5819, !5820, !5821, !5822, !5823, !5824, !5825, !5826, !5827, !5828, !5829, !5830, !5831, !5832, !5833, !5834, !5835, !5836, !5837, !5838, !5839, !5840, !5841, !5842, !5843, !5844, !5845, !5846, !5847, !5848, !5849, !5850, !5851}
!5795 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !5792, file: !5793, line: 47, baseType: !99, size: 16)
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !5792, file: !5793, line: 48, baseType: !489, size: 32, offset: 32)
!5797 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !5792, file: !5793, line: 54, baseType: !90, size: 8, offset: 64)
!5798 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !5792, file: !5793, line: 55, baseType: !90, size: 8, offset: 72)
!5799 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !5792, file: !5793, line: 73, baseType: !537, size: 64, align: 64, offset: 128)
!5800 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !5792, file: !5793, line: 74, baseType: !537, size: 64, offset: 192)
!5801 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !5792, file: !5793, line: 81, baseType: !537, size: 64, offset: 256)
!5802 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !5792, file: !5793, line: 82, baseType: !537, size: 64, offset: 320)
!5803 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !5792, file: !5793, line: 85, baseType: !537, size: 64, offset: 384)
!5804 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !5792, file: !5793, line: 86, baseType: !537, size: 64, offset: 448)
!5805 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !5792, file: !5793, line: 94, baseType: !537, size: 64, offset: 512)
!5806 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !5792, file: !5793, line: 102, baseType: !537, size: 64, offset: 576)
!5807 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !5792, file: !5793, line: 107, baseType: !3986, size: 256, offset: 640)
!5808 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !5792, file: !5793, line: 108, baseType: !90, size: 8, align: 64, offset: 896)
!5809 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !5792, file: !5793, line: 110, baseType: !5810, size: 24, offset: 904)
!5810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 24, elements: !420)
!5811 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !5792, file: !5793, line: 111, baseType: !489, size: 32, align: 64, offset: 960)
!5812 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !5792, file: !5793, line: 113, baseType: !489, size: 32, offset: 992)
!5813 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !5792, file: !5793, line: 114, baseType: !489, size: 32, offset: 1024)
!5814 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !5792, file: !5793, line: 115, baseType: !489, size: 32, offset: 1056)
!5815 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !5792, file: !5793, line: 117, baseType: !489, size: 32, offset: 1088)
!5816 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !5792, file: !5793, line: 118, baseType: !537, size: 64, align: 64, offset: 1152)
!5817 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !5792, file: !5793, line: 120, baseType: !537, size: 64, offset: 1216)
!5818 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !5792, file: !5793, line: 121, baseType: !537, size: 64, offset: 1280)
!5819 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !5792, file: !5793, line: 122, baseType: !537, size: 64, offset: 1344)
!5820 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !5792, file: !5793, line: 123, baseType: !537, size: 64, offset: 1408)
!5821 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !5792, file: !5793, line: 133, baseType: !537, size: 64, offset: 1472)
!5822 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !5792, file: !5793, line: 137, baseType: !537, size: 64, offset: 1536)
!5823 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !5792, file: !5793, line: 142, baseType: !537, size: 64, offset: 1600)
!5824 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !5792, file: !5793, line: 143, baseType: !537, size: 64, offset: 1664)
!5825 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !5792, file: !5793, line: 146, baseType: !537, size: 64, offset: 1728)
!5826 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !5792, file: !5793, line: 147, baseType: !537, size: 64, offset: 1792)
!5827 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !5792, file: !5793, line: 148, baseType: !537, size: 64, offset: 1856)
!5828 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !5792, file: !5793, line: 149, baseType: !537, size: 64, offset: 1920)
!5829 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !5792, file: !5793, line: 154, baseType: !537, size: 64, offset: 1984)
!5830 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !5792, file: !5793, line: 155, baseType: !537, size: 64, offset: 2048)
!5831 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !5792, file: !5793, line: 156, baseType: !537, size: 64, offset: 2112)
!5832 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !5792, file: !5793, line: 158, baseType: !537, size: 64, offset: 2176)
!5833 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !5792, file: !5793, line: 159, baseType: !537, size: 64, offset: 2240)
!5834 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !5792, file: !5793, line: 162, baseType: !537, size: 64, offset: 2304)
!5835 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !5792, file: !5793, line: 163, baseType: !537, size: 64, offset: 2368)
!5836 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !5792, file: !5793, line: 164, baseType: !537, size: 64, offset: 2432)
!5837 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !5792, file: !5793, line: 167, baseType: !537, size: 64, offset: 2496)
!5838 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !5792, file: !5793, line: 168, baseType: !537, size: 64, offset: 2560)
!5839 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !5792, file: !5793, line: 171, baseType: !537, size: 64, offset: 2624)
!5840 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !5792, file: !5793, line: 172, baseType: !537, size: 64, offset: 2688)
!5841 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !5792, file: !5793, line: 175, baseType: !537, size: 64, offset: 2752)
!5842 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !5792, file: !5793, line: 178, baseType: !537, size: 64, offset: 2816)
!5843 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !5792, file: !5793, line: 179, baseType: !537, size: 64, offset: 2880)
!5844 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !5792, file: !5793, line: 182, baseType: !489, size: 32, offset: 2944)
!5845 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !5792, file: !5793, line: 186, baseType: !537, size: 64, align: 64, offset: 3008)
!5846 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !5792, file: !5793, line: 194, baseType: !537, size: 64, offset: 3072)
!5847 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !5792, file: !5793, line: 195, baseType: !537, size: 64, offset: 3136)
!5848 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !5792, file: !5793, line: 199, baseType: !537, size: 64, offset: 3200)
!5849 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !5792, file: !5793, line: 200, baseType: !537, size: 64, offset: 3264)
!5850 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !5792, file: !5793, line: 203, baseType: !537, size: 64, offset: 3328)
!5851 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !5792, file: !5793, line: 204, baseType: !537, size: 64, offset: 3392)
!5852 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !5666, file: !5667, line: 222, baseType: !13, size: 32, offset: 7936)
!5853 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !5666, file: !5667, line: 223, baseType: !5854, size: 64, offset: 8000)
!5854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5855, size: 64)
!5855 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !5667, line: 223, flags: DIFlagFwdDecl)
!5856 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !5666, file: !5667, line: 230, baseType: !1001, size: 8, offset: 8064)
!5857 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !5666, file: !5667, line: 231, baseType: !936, size: 16, offset: 8080)
!5858 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !5666, file: !5667, line: 232, baseType: !936, size: 16, offset: 8096)
!5859 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !5666, file: !5667, line: 234, baseType: !782, size: 64, offset: 8128)
!5860 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !5666, file: !5667, line: 237, baseType: !383, size: 256, offset: 8192)
!5861 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !5666, file: !5667, line: 243, baseType: !837, size: 320, offset: 8448)
!5862 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !478, file: !479, line: 1111, baseType: !5863, size: 64, offset: 15424)
!5863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5864, size: 64)
!5864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !5667, line: 20, size: 16640, elements: !5865)
!5865 = !{!5866, !5867, !5868, !5869}
!5866 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !5864, file: !5667, line: 21, baseType: !64, size: 32)
!5867 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5864, file: !5667, line: 22, baseType: !428, size: 32, offset: 32)
!5868 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !5864, file: !5667, line: 23, baseType: !59, size: 192, offset: 64)
!5869 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !5864, file: !5667, line: 24, baseType: !5870, size: 16384, offset: 256)
!5870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5871, size: 16384, elements: !1983)
!5871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !5678, line: 51, size: 256, elements: !5872)
!5872 = !{!5873}
!5873 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !5871, file: !5678, line: 52, baseType: !5874, size: 256)
!5874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !5678, line: 37, size: 256, elements: !5875)
!5875 = !{!5876, !5883, !5884, !5888}
!5876 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !5874, file: !5678, line: 39, baseType: !5877, size: 64)
!5877 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !5878, line: 83, baseType: !5879)
!5878 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!5879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5880, size: 64)
!5880 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !5878, line: 82, baseType: !5881)
!5881 = !DISubroutineType(types: !5882)
!5882 = !{null, !27}
!5883 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !5874, file: !5678, line: 40, baseType: !44, size: 64, offset: 64)
!5884 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !5874, file: !5678, line: 46, baseType: !5885, size: 64, offset: 128)
!5885 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !5878, line: 86, baseType: !5886)
!5886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5887, size: 64)
!5887 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !5878, line: 85, baseType: !2525)
!5888 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !5874, file: !5678, line: 48, baseType: !5682, size: 64, offset: 192)
!5889 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !478, file: !479, line: 1112, baseType: !5682, size: 64, offset: 15488)
!5890 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !478, file: !479, line: 1113, baseType: !5682, size: 64, offset: 15552)
!5891 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !478, file: !479, line: 1115, baseType: !5682, size: 64, offset: 15616)
!5892 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !478, file: !479, line: 1116, baseType: !5677, size: 192, offset: 15680)
!5893 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !478, file: !479, line: 1117, baseType: !44, size: 64, offset: 15872)
!5894 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !478, file: !479, line: 1118, baseType: !40, size: 64, offset: 15936)
!5895 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !478, file: !479, line: 1119, baseType: !13, size: 32, offset: 16000)
!5896 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !478, file: !479, line: 1121, baseType: !366, size: 64, offset: 16064)
!5897 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !478, file: !479, line: 1125, baseType: !5898, size: 64, offset: 16128)
!5898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5899, size: 64)
!5899 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !479, line: 43, flags: DIFlagFwdDecl)
!5900 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !478, file: !479, line: 1127, baseType: !974, size: 32, offset: 16192)
!5901 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !478, file: !479, line: 1128, baseType: !13, size: 32, offset: 16224)
!5902 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !478, file: !479, line: 1130, baseType: !5903, size: 128, offset: 16256)
!5903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !5904, line: 37, size: 128, elements: !5905)
!5904 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!5905 = !{!5906, !5907, !5908}
!5906 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5903, file: !5904, line: 38, baseType: !27, size: 32)
!5907 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !5903, file: !5904, line: 39, baseType: !54, size: 32, offset: 32)
!5908 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !5903, file: !5904, line: 40, baseType: !5909, size: 64, offset: 64)
!5909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5910, size: 64)
!5910 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !5904, line: 24, flags: DIFlagFwdDecl)
!5911 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !478, file: !479, line: 1131, baseType: !5912, size: 256, offset: 16384)
!5912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !5913, line: 12, size: 256, elements: !5914)
!5913 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!5914 = !{!5915, !5916, !5917, !5918}
!5915 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !5912, file: !5913, line: 13, baseType: !1078, size: 64)
!5916 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5912, file: !5913, line: 14, baseType: !44, size: 64, offset: 64)
!5917 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5912, file: !5913, line: 15, baseType: !44, size: 64, offset: 128)
!5918 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !5912, file: !5913, line: 16, baseType: !1001, size: 8, offset: 192)
!5919 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !478, file: !479, line: 1134, baseType: !536, size: 64, offset: 16640)
!5920 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !478, file: !479, line: 1135, baseType: !536, size: 64, offset: 16704)
!5921 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !478, file: !479, line: 1138, baseType: !64, size: 32, offset: 16768)
!5922 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !478, file: !479, line: 1141, baseType: !388, size: 32, offset: 16800)
!5923 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !478, file: !479, line: 1143, baseType: !5924, size: 64, offset: 16832)
!5924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !479, line: 735, size: 64, elements: !5925)
!5925 = !{!5926}
!5926 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5924, file: !479, line: 736, baseType: !5927, size: 64)
!5927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5924, size: 64)
!5928 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !478, file: !479, line: 1147, baseType: !665, size: 128, offset: 16896)
!5929 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !478, file: !479, line: 1149, baseType: !477, size: 64, offset: 17024)
!5930 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !478, file: !479, line: 1151, baseType: !5931, size: 64, offset: 17088)
!5931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5932, size: 64)
!5932 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !479, line: 1151, flags: DIFlagFwdDecl)
!5933 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !478, file: !479, line: 1188, baseType: !25, size: 64, offset: 17152)
!5934 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !478, file: !479, line: 1191, baseType: !5935, size: 64, offset: 17216)
!5935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!5936 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !478, file: !479, line: 1194, baseType: !5937, size: 64, offset: 17280)
!5937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5938, size: 64)
!5938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !155, line: 976, size: 320, elements: !5939)
!5939 = !{!5940, !5941, !5942, !5943, !5944, !5945, !5946}
!5940 = !DIDerivedType(tag: DW_TAG_member, name: "mq_list", scope: !5938, file: !155, line: 977, baseType: !4098, size: 64)
!5941 = !DIDerivedType(tag: DW_TAG_member, name: "cached_rq", scope: !5938, file: !155, line: 980, baseType: !4098, size: 64, offset: 64)
!5942 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ios", scope: !5938, file: !155, line: 981, baseType: !31, size: 16, offset: 128)
!5943 = !DIDerivedType(tag: DW_TAG_member, name: "rq_count", scope: !5938, file: !155, line: 983, baseType: !31, size: 16, offset: 144)
!5944 = !DIDerivedType(tag: DW_TAG_member, name: "multiple_queues", scope: !5938, file: !155, line: 985, baseType: !1001, size: 8, offset: 160)
!5945 = !DIDerivedType(tag: DW_TAG_member, name: "has_elevator", scope: !5938, file: !155, line: 986, baseType: !1001, size: 8, offset: 168)
!5946 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !5938, file: !155, line: 988, baseType: !102, size: 128, offset: 192)
!5947 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !478, file: !479, line: 1197, baseType: !5948, size: 64, offset: 17344)
!5948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5949, size: 64)
!5949 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !479, line: 61, flags: DIFlagFwdDecl)
!5950 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !478, file: !479, line: 1199, baseType: !5951, size: 64, offset: 17408)
!5951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5952, size: 64)
!5952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !5953, line: 99, size: 128, elements: !5954)
!5953 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!5954 = !{!5955, !5956, !5957}
!5955 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5952, file: !5953, line: 100, baseType: !376, size: 64)
!5956 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !5952, file: !5953, line: 101, baseType: !54, size: 32, offset: 64)
!5957 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !5952, file: !5953, line: 103, baseType: !31, size: 16, offset: 96)
!5958 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !478, file: !479, line: 1202, baseType: !5959, size: 64, offset: 17472)
!5959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5960, size: 64)
!5960 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !479, line: 48, flags: DIFlagFwdDecl)
!5961 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !478, file: !479, line: 1205, baseType: !44, size: 64, offset: 17536)
!5962 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !478, file: !479, line: 1206, baseType: !5963, size: 64, offset: 17600)
!5963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5964, size: 64)
!5964 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !5678, line: 14, baseType: !5965)
!5965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !5678, line: 12, size: 384, elements: !5966)
!5966 = !{!5967}
!5967 = !DIDerivedType(tag: DW_TAG_member, scope: !5965, file: !5678, line: 13, baseType: !5968, size: 384)
!5968 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5965, file: !5678, line: 13, size: 384, elements: !5969)
!5969 = !{!5970, !5971, !5972, !5973}
!5970 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !5968, file: !5678, line: 13, baseType: !27, size: 32)
!5971 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !5968, file: !5678, line: 13, baseType: !27, size: 32, offset: 32)
!5972 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !5968, file: !5678, line: 13, baseType: !27, size: 32, offset: 64)
!5973 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !5968, file: !5678, line: 13, baseType: !5974, size: 256, offset: 128)
!5974 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !5975, line: 37, size: 256, elements: !5976)
!5975 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!5976 = !{!5977, !5982, !5995, !6001, !6010, !6037, !6042}
!5977 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !5974, file: !5975, line: 42, baseType: !5978, size: 64)
!5978 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5974, file: !5975, line: 39, size: 64, elements: !5979)
!5979 = !{!5980, !5981}
!5980 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5978, file: !5975, line: 40, baseType: !1318, size: 32)
!5981 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5978, file: !5975, line: 41, baseType: !980, size: 32, offset: 32)
!5982 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !5974, file: !5975, line: 50, baseType: !5983, size: 192)
!5983 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5974, file: !5975, line: 45, size: 192, elements: !5984)
!5984 = !{!5985, !5987, !5988, !5994}
!5985 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !5983, file: !5975, line: 46, baseType: !5986, size: 32)
!5986 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !42, line: 95, baseType: !27)
!5987 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !5983, file: !5975, line: 47, baseType: !27, size: 32, offset: 32)
!5988 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5983, file: !5975, line: 48, baseType: !5989, size: 64, offset: 64)
!5989 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !5975, line: 11, baseType: !5990)
!5990 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !5975, line: 8, size: 64, elements: !5991)
!5991 = !{!5992, !5993}
!5992 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !5990, file: !5975, line: 9, baseType: !27, size: 32)
!5993 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !5990, file: !5975, line: 10, baseType: !25, size: 64)
!5994 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !5983, file: !5975, line: 49, baseType: !27, size: 32, offset: 128)
!5995 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !5974, file: !5975, line: 57, baseType: !5996, size: 128)
!5996 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5974, file: !5975, line: 53, size: 128, elements: !5997)
!5997 = !{!5998, !5999, !6000}
!5998 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5996, file: !5975, line: 54, baseType: !1318, size: 32)
!5999 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5996, file: !5975, line: 55, baseType: !980, size: 32, offset: 32)
!6000 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5996, file: !5975, line: 56, baseType: !5989, size: 64, offset: 64)
!6001 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !5974, file: !5975, line: 66, baseType: !6002, size: 256)
!6002 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5974, file: !5975, line: 60, size: 256, elements: !6003)
!6003 = !{!6004, !6005, !6006, !6007, !6009}
!6004 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !6002, file: !5975, line: 61, baseType: !1318, size: 32)
!6005 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !6002, file: !5975, line: 62, baseType: !980, size: 32, offset: 32)
!6006 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !6002, file: !5975, line: 63, baseType: !27, size: 32, offset: 64)
!6007 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !6002, file: !5975, line: 64, baseType: !6008, size: 64, offset: 128)
!6008 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !42, line: 94, baseType: !2012)
!6009 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !6002, file: !5975, line: 65, baseType: !6008, size: 64, offset: 192)
!6010 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !5974, file: !5975, line: 105, baseType: !6011, size: 256)
!6011 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5974, file: !5975, line: 69, size: 256, elements: !6012)
!6012 = !{!6013, !6014}
!6013 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !6011, file: !5975, line: 70, baseType: !25, size: 64)
!6014 = !DIDerivedType(tag: DW_TAG_member, scope: !6011, file: !5975, line: 79, baseType: !6015, size: 192, offset: 64)
!6015 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6011, file: !5975, line: 79, size: 192, elements: !6016)
!6016 = !{!6017, !6018, !6019, !6026, !6031}
!6017 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !6015, file: !5975, line: 81, baseType: !27, size: 32)
!6018 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !6015, file: !5975, line: 86, baseType: !936, size: 16)
!6019 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !6015, file: !5975, line: 92, baseType: !6020, size: 192)
!6020 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6015, file: !5975, line: 88, size: 192, elements: !6021)
!6021 = !{!6022, !6024, !6025}
!6022 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !6020, file: !5975, line: 89, baseType: !6023, size: 64)
!6023 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !644)
!6024 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !6020, file: !5975, line: 90, baseType: !25, size: 64, offset: 64)
!6025 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !6020, file: !5975, line: 91, baseType: !25, size: 64, offset: 128)
!6026 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !6015, file: !5975, line: 97, baseType: !6027, size: 96)
!6027 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6015, file: !5975, line: 94, size: 96, elements: !6028)
!6028 = !{!6029, !6030}
!6029 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !6027, file: !5975, line: 95, baseType: !6023, size: 64)
!6030 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !6027, file: !5975, line: 96, baseType: !489, size: 32, offset: 64)
!6031 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !6015, file: !5975, line: 103, baseType: !6032, size: 128)
!6032 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6015, file: !5975, line: 99, size: 128, elements: !6033)
!6033 = !{!6034, !6035, !6036}
!6034 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !6032, file: !5975, line: 100, baseType: !44, size: 64)
!6035 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !6032, file: !5975, line: 101, baseType: !489, size: 32, offset: 64)
!6036 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !6032, file: !5975, line: 102, baseType: !489, size: 32, offset: 96)
!6037 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !5974, file: !5975, line: 111, baseType: !6038, size: 128)
!6038 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5974, file: !5975, line: 108, size: 128, elements: !6039)
!6039 = !{!6040, !6041}
!6040 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !6038, file: !5975, line: 109, baseType: !919, size: 64)
!6041 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !6038, file: !5975, line: 110, baseType: !27, size: 32, offset: 64)
!6042 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !5974, file: !5975, line: 118, baseType: !6043, size: 128)
!6043 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5974, file: !5975, line: 114, size: 128, elements: !6044)
!6044 = !{!6045, !6046, !6047}
!6045 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !6043, file: !5975, line: 115, baseType: !25, size: 64)
!6046 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !6043, file: !5975, line: 116, baseType: !27, size: 32, offset: 64)
!6047 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !6043, file: !5975, line: 117, baseType: !13, size: 32, offset: 96)
!6048 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !478, file: !479, line: 1208, baseType: !5762, size: 448, offset: 17664)
!6049 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !478, file: !479, line: 1215, baseType: !536, size: 64, offset: 18112)
!6050 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !478, file: !479, line: 1217, baseType: !536, size: 64, offset: 18176)
!6051 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !478, file: !479, line: 1219, baseType: !536, size: 64, offset: 18240)
!6052 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !478, file: !479, line: 1223, baseType: !6053, size: 64, offset: 18304)
!6053 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !6054, line: 99, baseType: !6055)
!6054 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!6055 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6054, line: 99, size: 64, elements: !6056)
!6056 = !{!6057}
!6057 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !6055, file: !6054, line: 99, baseType: !733, size: 64)
!6058 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !478, file: !479, line: 1225, baseType: !1792, size: 32, offset: 18368)
!6059 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !478, file: !479, line: 1226, baseType: !27, size: 32, offset: 18400)
!6060 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !478, file: !479, line: 1227, baseType: !27, size: 32, offset: 18432)
!6061 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !478, file: !479, line: 1231, baseType: !1503, size: 64, offset: 18496)
!6062 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !478, file: !479, line: 1233, baseType: !102, size: 128, offset: 18560)
!6063 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !478, file: !479, line: 1240, baseType: !6064, size: 64, offset: 18688)
!6064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6065, size: 64)
!6065 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !479, line: 62, flags: DIFlagFwdDecl)
!6066 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !478, file: !479, line: 1242, baseType: !6067, size: 64, offset: 18752)
!6067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6068, size: 64)
!6068 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !479, line: 1242, flags: DIFlagFwdDecl)
!6069 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !478, file: !479, line: 1244, baseType: !102, size: 128, offset: 18816)
!6070 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !478, file: !479, line: 1245, baseType: !6071, size: 64, offset: 18944)
!6071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6072, size: 64)
!6072 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !479, line: 51, flags: DIFlagFwdDecl)
!6073 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !478, file: !479, line: 1246, baseType: !383, size: 256, offset: 19008)
!6074 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !478, file: !479, line: 1247, baseType: !13, size: 32, offset: 19264)
!6075 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !478, file: !479, line: 1250, baseType: !3024, size: 64, offset: 19328)
!6076 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !478, file: !479, line: 1251, baseType: !383, size: 256, offset: 19392)
!6077 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !478, file: !479, line: 1252, baseType: !102, size: 128, offset: 19648)
!6078 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !478, file: !479, line: 1259, baseType: !1679, size: 64, offset: 19776)
!6079 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !478, file: !479, line: 1260, baseType: !936, size: 16, offset: 19840)
!6080 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !478, file: !479, line: 1261, baseType: !936, size: 16, offset: 19856)
!6081 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !478, file: !479, line: 1314, baseType: !6082, size: 64, offset: 19904)
!6082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6083, size: 64)
!6083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !6084, line: 62, size: 256, align: 256, elements: !6085)
!6084 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!6085 = !{!6086, !6087, !6088, !6089, !6090, !6091, !6092}
!6086 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !6083, file: !6084, line: 75, baseType: !489, size: 32)
!6087 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !6083, file: !6084, line: 90, baseType: !489, size: 32, offset: 32)
!6088 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !6083, file: !6084, line: 112, baseType: !537, size: 64, offset: 64)
!6089 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6083, file: !6084, line: 132, baseType: !489, size: 32, offset: 128)
!6090 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !6083, file: !6084, line: 140, baseType: !489, size: 32, offset: 160)
!6091 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !6083, file: !6084, line: 149, baseType: !489, size: 32, offset: 192)
!6092 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !6083, file: !6084, line: 154, baseType: !6093, offset: 224)
!6093 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !1230)
!6094 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !478, file: !479, line: 1315, baseType: !488, size: 32, offset: 19968)
!6095 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !478, file: !479, line: 1316, baseType: !488, size: 32, offset: 20000)
!6096 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !478, file: !479, line: 1321, baseType: !44, size: 64, offset: 20032)
!6097 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !478, file: !479, line: 1325, baseType: !27, size: 32, offset: 20096)
!6098 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !478, file: !479, line: 1326, baseType: !27, size: 32, offset: 20128)
!6099 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !478, file: !479, line: 1327, baseType: !27, size: 32, offset: 20160)
!6100 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !478, file: !479, line: 1328, baseType: !27, size: 32, offset: 20192)
!6101 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !478, file: !479, line: 1329, baseType: !363, size: 128, align: 64, offset: 20224)
!6102 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !478, file: !479, line: 1332, baseType: !6103, size: 128, offset: 20352)
!6103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !6104, line: 51, size: 128, elements: !6105)
!6104 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!6105 = !{!6106, !6111, !6112}
!6106 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !6103, file: !6104, line: 60, baseType: !6107, size: 64)
!6107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !6108, line: 7, size: 64, elements: !6109)
!6108 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!6109 = !{!6110}
!6110 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !6107, file: !6108, line: 12, baseType: !730, size: 64)
!6111 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !6103, file: !6104, line: 63, baseType: !1001, size: 8, offset: 64)
!6112 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !6103, file: !6104, line: 70, baseType: !1001, size: 8, offset: 72)
!6113 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !478, file: !479, line: 1335, baseType: !5099, size: 64, offset: 20480)
!6114 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !478, file: !479, line: 1337, baseType: !6115, size: 128, offset: 20544)
!6115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !6104, line: 39, size: 128, elements: !6116)
!6116 = !{!6117, !6118, !6119}
!6117 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !6115, file: !6104, line: 40, baseType: !1738, size: 64)
!6118 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !6115, file: !6104, line: 42, baseType: !489, size: 32, offset: 64)
!6119 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !6115, file: !6104, line: 43, baseType: !489, size: 32, offset: 96)
!6120 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !478, file: !479, line: 1340, baseType: !6121, size: 64, offset: 20672)
!6121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6122, size: 64)
!6122 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !479, line: 69, flags: DIFlagFwdDecl)
!6123 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !478, file: !479, line: 1351, baseType: !27, size: 32, offset: 20736)
!6124 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !478, file: !479, line: 1352, baseType: !27, size: 32, offset: 20768)
!6125 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !478, file: !479, line: 1354, baseType: !44, size: 64, offset: 20800)
!6126 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !478, file: !479, line: 1364, baseType: !536, size: 64, offset: 20864)
!6127 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !478, file: !479, line: 1365, baseType: !536, size: 64, offset: 20928)
!6128 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !478, file: !479, line: 1412, baseType: !44, size: 64, offset: 20992)
!6129 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !478, file: !479, line: 1453, baseType: !3979, size: 64, offset: 21056)
!6130 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !478, file: !479, line: 1457, baseType: !6131, size: 64, offset: 21120)
!6131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6132, size: 64)
!6132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !274, line: 61, size: 576, elements: !6133)
!6133 = !{!6134, !6135, !6154, !6157, !6158, !6191, !6201}
!6134 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !6132, file: !274, line: 62, baseType: !273, size: 32)
!6135 = !DIDerivedType(tag: DW_TAG_member, scope: !6132, file: !274, line: 64, baseType: !6136, size: 192, offset: 64)
!6136 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6132, file: !274, line: 64, size: 192, elements: !6137)
!6137 = !{!6138, !6149}
!6138 = !DIDerivedType(tag: DW_TAG_member, scope: !6136, file: !274, line: 65, baseType: !6139, size: 192)
!6139 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6136, file: !274, line: 65, size: 192, elements: !6140)
!6140 = !{!6141, !6148}
!6141 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !6139, file: !274, line: 66, baseType: !6142, size: 128)
!6142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !6143, line: 50, size: 128, elements: !6144)
!6143 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!6144 = !{!6145, !6146, !6147}
!6145 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !6142, file: !6143, line: 52, baseType: !44, size: 64)
!6146 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !6142, file: !6143, line: 54, baseType: !13, size: 32, offset: 64)
!6147 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !6142, file: !6143, line: 55, baseType: !13, size: 32, offset: 96)
!6148 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !6139, file: !274, line: 67, baseType: !44, size: 64, offset: 128)
!6149 = !DIDerivedType(tag: DW_TAG_member, scope: !6136, file: !274, line: 70, baseType: !6150, size: 192)
!6150 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6136, file: !274, line: 70, size: 192, elements: !6151)
!6151 = !{!6152, !6153}
!6152 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !6150, file: !274, line: 71, baseType: !363, size: 128, align: 64)
!6153 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !6150, file: !274, line: 72, baseType: !44, size: 64, offset: 128)
!6154 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !6132, file: !274, line: 76, baseType: !6155, size: 64, offset: 256)
!6155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6156, size: 64)
!6156 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !274, line: 76, flags: DIFlagFwdDecl)
!6157 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !6132, file: !274, line: 77, baseType: !44, size: 64, offset: 320)
!6158 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !6132, file: !274, line: 79, baseType: !6159, size: 64, offset: 384)
!6159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6160, size: 64)
!6160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !6143, line: 25, size: 256, elements: !6161)
!6161 = !{!6162, !6168, !6172}
!6162 = !DIDerivedType(tag: DW_TAG_member, scope: !6160, file: !6143, line: 26, baseType: !6163, size: 128)
!6163 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6160, file: !6143, line: 26, size: 128, elements: !6164)
!6164 = !{!6165, !6167}
!6165 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !6163, file: !6143, line: 27, baseType: !6166, size: 128)
!6166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 128, elements: !1445)
!6167 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !6163, file: !6143, line: 28, baseType: !6166, size: 128)
!6168 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !6160, file: !6143, line: 31, baseType: !6169, size: 64, offset: 128)
!6169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6170, size: 64)
!6170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6171)
!6171 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !6143, line: 23, flags: DIFlagFwdDecl)
!6172 = !DIDerivedType(tag: DW_TAG_member, scope: !6160, file: !6143, line: 33, baseType: !6173, size: 64, offset: 192)
!6173 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6160, file: !6143, line: 33, size: 64, elements: !6174)
!6174 = !{!6175, !6181, !6186}
!6175 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !6173, file: !6143, line: 38, baseType: !6176, size: 64)
!6176 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6173, file: !6143, line: 34, size: 64, elements: !6177)
!6177 = !{!6178, !6179, !6180}
!6178 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !6176, file: !6143, line: 35, baseType: !883, size: 32)
!6179 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !6176, file: !6143, line: 36, baseType: !88, size: 8, offset: 32)
!6180 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !6176, file: !6143, line: 37, baseType: !88, size: 8, offset: 40)
!6181 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !6173, file: !6143, line: 42, baseType: !6182, size: 16)
!6182 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6173, file: !6143, line: 39, size: 16, elements: !6183)
!6183 = !{!6184, !6185}
!6184 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !6182, file: !6143, line: 40, baseType: !88, size: 8)
!6185 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !6182, file: !6143, line: 41, baseType: !88, size: 8, offset: 8)
!6186 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !6173, file: !6143, line: 46, baseType: !6187, size: 16)
!6187 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6173, file: !6143, line: 43, size: 16, elements: !6188)
!6188 = !{!6189, !6190}
!6189 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !6187, file: !6143, line: 44, baseType: !88, size: 8)
!6190 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !6187, file: !6143, line: 45, baseType: !88, size: 8, offset: 8)
!6191 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !6132, file: !274, line: 81, baseType: !6192, size: 64, offset: 448)
!6192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6193, size: 64)
!6193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !274, line: 85, size: 384, elements: !6194)
!6194 = !{!6195, !6196, !6197, !6198, !6199, !6200}
!6195 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !6193, file: !274, line: 86, baseType: !6155, size: 64)
!6196 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !6193, file: !274, line: 87, baseType: !44, size: 64, offset: 64)
!6197 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !6193, file: !274, line: 88, baseType: !44, size: 64, offset: 128)
!6198 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !6193, file: !274, line: 89, baseType: !44, size: 64, offset: 192)
!6199 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !6193, file: !274, line: 90, baseType: !1001, size: 8, offset: 256)
!6200 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !6193, file: !274, line: 92, baseType: !6192, size: 64, offset: 320)
!6201 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !6132, file: !274, line: 82, baseType: !13, size: 32, offset: 512)
!6202 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !478, file: !479, line: 1463, baseType: !6203, offset: 21184)
!6203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !479, line: 739, elements: !803)
!6204 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !478, file: !479, line: 1470, baseType: !363, size: 128, align: 64, offset: 21184)
!6205 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !478, file: !479, line: 1471, baseType: !428, size: 32, offset: 21312)
!6206 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !478, file: !479, line: 1472, baseType: !27, size: 32, offset: 21344)
!6207 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !478, file: !479, line: 1474, baseType: !477, size: 64, offset: 21376)
!6208 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !478, file: !479, line: 1475, baseType: !2350, size: 320, offset: 21440)
!6209 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !478, file: !479, line: 1478, baseType: !6210, size: 64, offset: 21760)
!6210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6211, size: 64)
!6211 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !479, line: 1478, flags: DIFlagFwdDecl)
!6212 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !478, file: !479, line: 1482, baseType: !428, size: 32, offset: 21824)
!6213 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !478, file: !479, line: 1489, baseType: !25, size: 64, offset: 21888)
!6214 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !478, file: !479, line: 1504, baseType: !25, size: 64, offset: 21952)
!6215 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !478, file: !479, line: 1505, baseType: !537, size: 64, offset: 22016)
!6216 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !478, file: !479, line: 1506, baseType: !536, size: 64, offset: 22080)
!6217 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !478, file: !479, line: 1507, baseType: !537, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!6218 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !478, file: !479, line: 1508, baseType: !537, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!6219 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !478, file: !479, line: 1509, baseType: !537, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!6220 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !478, file: !479, line: 1510, baseType: !363, size: 128, align: 64, offset: 22208)
!6221 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !478, file: !479, line: 1511, baseType: !27, size: 32, offset: 22336)
!6222 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !478, file: !479, line: 1515, baseType: !6223, size: 64, offset: 22400)
!6223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !358, line: 56, size: 64, elements: !6224)
!6224 = !{!6225}
!6225 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !6223, file: !358, line: 57, baseType: !361, size: 64)
!6226 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !478, file: !479, line: 1518, baseType: !6223, size: 64, offset: 22464)
!6227 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !478, file: !479, line: 1528, baseType: !363, size: 128, align: 64, offset: 22528)
!6228 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !478, file: !479, line: 1552, baseType: !6229, size: 35328, offset: 23040)
!6229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !6230, line: 430, size: 35328, elements: !6231)
!6230 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!6231 = !{!6232, !6250, !6251, !6252, !6253, !6254, !6255, !6256, !6257, !6259, !6260, !6261, !6262, !6263, !6264, !6267, !6268, !6269, !6270}
!6232 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !6229, file: !6230, line: 432, baseType: !6233, size: 192)
!6233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6234, size: 192, elements: !420)
!6234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !6235, line: 16, size: 64, elements: !6236)
!6235 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!6236 = !{!6237, !6238, !6239, !6240, !6241, !6242, !6243, !6244, !6245, !6246, !6247, !6248, !6249}
!6237 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !6234, file: !6235, line: 17, baseType: !98, size: 16)
!6238 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !6234, file: !6235, line: 18, baseType: !98, size: 16, offset: 16)
!6239 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !6234, file: !6235, line: 19, baseType: !98, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!6240 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6234, file: !6235, line: 19, baseType: !98, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!6241 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !6234, file: !6235, line: 19, baseType: !98, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!6242 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !6234, file: !6235, line: 19, baseType: !98, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!6243 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !6234, file: !6235, line: 19, baseType: !98, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!6244 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !6234, file: !6235, line: 20, baseType: !98, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!6245 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !6234, file: !6235, line: 20, baseType: !98, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!6246 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !6234, file: !6235, line: 20, baseType: !98, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!6247 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !6234, file: !6235, line: 20, baseType: !98, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!6248 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !6234, file: !6235, line: 20, baseType: !98, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!6249 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !6234, file: !6235, line: 20, baseType: !98, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!6250 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !6229, file: !6230, line: 436, baseType: !44, size: 64, offset: 192)
!6251 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !6229, file: !6230, line: 440, baseType: !31, size: 16, offset: 256)
!6252 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !6229, file: !6230, line: 441, baseType: !31, size: 16, offset: 272)
!6253 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !6229, file: !6230, line: 442, baseType: !31, size: 16, offset: 288)
!6254 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !6229, file: !6230, line: 443, baseType: !31, size: 16, offset: 304)
!6255 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !6229, file: !6230, line: 447, baseType: !44, size: 64, offset: 320)
!6256 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !6229, file: !6230, line: 448, baseType: !44, size: 64, offset: 384)
!6257 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !6229, file: !6230, line: 459, baseType: !6258, size: 256, offset: 448)
!6258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2636, size: 256, elements: !446)
!6259 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !6229, file: !6230, line: 461, baseType: !44, size: 64, offset: 704)
!6260 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !6229, file: !6230, line: 463, baseType: !44, size: 64, offset: 768)
!6261 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !6229, file: !6230, line: 465, baseType: !44, size: 64, offset: 832)
!6262 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !6229, file: !6230, line: 466, baseType: !44, size: 64, offset: 896)
!6263 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !6229, file: !6230, line: 467, baseType: !44, size: 64, offset: 960)
!6264 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !6229, file: !6230, line: 473, baseType: !6265, size: 64, offset: 1024)
!6265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6266, size: 64)
!6266 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !6230, line: 10, flags: DIFlagFwdDecl)
!6267 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !6229, file: !6230, line: 480, baseType: !44, size: 64, offset: 1088)
!6268 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !6229, file: !6230, line: 482, baseType: !13, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!6269 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !6229, file: !6230, line: 491, baseType: !488, size: 32, offset: 1184)
!6270 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !6229, file: !6230, line: 501, baseType: !6271, size: 33792, offset: 1536)
!6271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !6272, line: 448, size: 33792, elements: !6273)
!6272 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!6273 = !{!6274, !6275, !6276, !6384, !6385, !6391, !6392}
!6274 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !6271, file: !6272, line: 461, baseType: !13, size: 32)
!6275 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !6271, file: !6272, line: 468, baseType: !44, size: 64, offset: 64)
!6276 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !6271, file: !6272, line: 476, baseType: !6277, size: 64, offset: 128)
!6277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6278, size: 64)
!6278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !6272, line: 356, size: 33280, align: 512, elements: !6279)
!6279 = !{!6280, !6281, !6282, !6283, !6284, !6285, !6286, !6287, !6288, !6289}
!6280 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !6278, file: !6272, line: 358, baseType: !13, size: 32)
!6281 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !6278, file: !6272, line: 361, baseType: !13, size: 32, offset: 32)
!6282 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !6278, file: !6272, line: 364, baseType: !536, size: 64, offset: 64)
!6283 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !6278, file: !6272, line: 367, baseType: !536, size: 64, offset: 128)
!6284 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !6278, file: !6272, line: 370, baseType: !536, size: 64, offset: 192)
!6285 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !6278, file: !6272, line: 373, baseType: !13, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!6286 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !6278, file: !6272, line: 376, baseType: !13, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!6287 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !6278, file: !6272, line: 391, baseType: !13, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!6288 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !6278, file: !6272, line: 394, baseType: !13, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!6289 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !6278, file: !6272, line: 397, baseType: !6290, size: 32768, offset: 512)
!6290 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !6272, line: 348, size: 32768, elements: !6291)
!6291 = !{!6292, !6307, !6344, !6369, !6382}
!6292 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !6290, file: !6272, line: 349, baseType: !6293, size: 896)
!6293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !6272, line: 12, size: 896, elements: !6294)
!6294 = !{!6295, !6296, !6297, !6298, !6299, !6300, !6301, !6302, !6306}
!6295 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !6293, file: !6272, line: 13, baseType: !488, size: 32)
!6296 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !6293, file: !6272, line: 14, baseType: !488, size: 32, offset: 32)
!6297 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !6293, file: !6272, line: 15, baseType: !488, size: 32, offset: 64)
!6298 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !6293, file: !6272, line: 16, baseType: !488, size: 32, offset: 96)
!6299 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !6293, file: !6272, line: 17, baseType: !488, size: 32, offset: 128)
!6300 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !6293, file: !6272, line: 18, baseType: !488, size: 32, offset: 160)
!6301 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !6293, file: !6272, line: 19, baseType: !488, size: 32, offset: 192)
!6302 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !6293, file: !6272, line: 22, baseType: !6303, size: 640, offset: 224)
!6303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !488, size: 640, elements: !6304)
!6304 = !{!6305}
!6305 = !DISubrange(count: 20)
!6306 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !6293, file: !6272, line: 25, baseType: !488, size: 32, offset: 864)
!6307 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !6290, file: !6272, line: 350, baseType: !6308, size: 4096, align: 128)
!6308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !6272, line: 34, size: 4096, align: 128, elements: !6309)
!6309 = !{!6310, !6311, !6312, !6313, !6314, !6329, !6330, !6331, !6333, !6335, !6339}
!6310 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !6308, file: !6272, line: 35, baseType: !98, size: 16)
!6311 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !6308, file: !6272, line: 36, baseType: !98, size: 16, offset: 16)
!6312 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !6308, file: !6272, line: 37, baseType: !98, size: 16, offset: 32)
!6313 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !6308, file: !6272, line: 38, baseType: !98, size: 16, offset: 48)
!6314 = !DIDerivedType(tag: DW_TAG_member, scope: !6308, file: !6272, line: 39, baseType: !6315, size: 128, offset: 64)
!6315 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6308, file: !6272, line: 39, size: 128, elements: !6316)
!6316 = !{!6317, !6322}
!6317 = !DIDerivedType(tag: DW_TAG_member, scope: !6315, file: !6272, line: 40, baseType: !6318, size: 128)
!6318 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6315, file: !6272, line: 40, size: 128, elements: !6319)
!6319 = !{!6320, !6321}
!6320 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !6318, file: !6272, line: 41, baseType: !536, size: 64)
!6321 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !6318, file: !6272, line: 42, baseType: !536, size: 64, offset: 64)
!6322 = !DIDerivedType(tag: DW_TAG_member, scope: !6315, file: !6272, line: 44, baseType: !6323, size: 128)
!6323 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6315, file: !6272, line: 44, size: 128, elements: !6324)
!6324 = !{!6325, !6326, !6327, !6328}
!6325 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !6323, file: !6272, line: 45, baseType: !488, size: 32)
!6326 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !6323, file: !6272, line: 46, baseType: !488, size: 32, offset: 32)
!6327 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !6323, file: !6272, line: 47, baseType: !488, size: 32, offset: 64)
!6328 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !6323, file: !6272, line: 48, baseType: !488, size: 32, offset: 96)
!6329 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !6308, file: !6272, line: 51, baseType: !488, size: 32, offset: 192)
!6330 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !6308, file: !6272, line: 52, baseType: !488, size: 32, offset: 224)
!6331 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !6308, file: !6272, line: 55, baseType: !6332, size: 1024, offset: 256)
!6332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !488, size: 1024, elements: !1823)
!6333 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !6308, file: !6272, line: 58, baseType: !6334, size: 2048, offset: 1280)
!6334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !488, size: 2048, elements: !1983)
!6335 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !6308, file: !6272, line: 60, baseType: !6336, size: 384, offset: 3328)
!6336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !488, size: 384, elements: !6337)
!6337 = !{!6338}
!6338 = !DISubrange(count: 12)
!6339 = !DIDerivedType(tag: DW_TAG_member, scope: !6308, file: !6272, line: 62, baseType: !6340, size: 384, offset: 3712)
!6340 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6308, file: !6272, line: 62, size: 384, elements: !6341)
!6341 = !{!6342, !6343}
!6342 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !6340, file: !6272, line: 63, baseType: !6336, size: 384)
!6343 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !6340, file: !6272, line: 64, baseType: !6336, size: 384)
!6344 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !6290, file: !6272, line: 351, baseType: !6345, size: 1088)
!6345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !6272, line: 79, size: 1088, elements: !6346)
!6346 = !{!6347, !6348, !6349, !6350, !6351, !6352, !6353, !6354, !6355, !6356, !6357, !6358, !6359, !6360, !6361, !6368}
!6347 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !6345, file: !6272, line: 80, baseType: !488, size: 32)
!6348 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !6345, file: !6272, line: 81, baseType: !488, size: 32, offset: 32)
!6349 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !6345, file: !6272, line: 82, baseType: !488, size: 32, offset: 64)
!6350 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !6345, file: !6272, line: 83, baseType: !488, size: 32, offset: 96)
!6351 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !6345, file: !6272, line: 84, baseType: !488, size: 32, offset: 128)
!6352 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !6345, file: !6272, line: 85, baseType: !488, size: 32, offset: 160)
!6353 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !6345, file: !6272, line: 86, baseType: !488, size: 32, offset: 192)
!6354 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !6345, file: !6272, line: 88, baseType: !6303, size: 640, offset: 224)
!6355 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !6345, file: !6272, line: 89, baseType: !88, size: 8, offset: 864)
!6356 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !6345, file: !6272, line: 90, baseType: !88, size: 8, offset: 872)
!6357 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !6345, file: !6272, line: 91, baseType: !88, size: 8, offset: 880)
!6358 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !6345, file: !6272, line: 92, baseType: !88, size: 8, offset: 888)
!6359 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !6345, file: !6272, line: 93, baseType: !88, size: 8, offset: 896)
!6360 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !6345, file: !6272, line: 94, baseType: !88, size: 8, offset: 904)
!6361 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !6345, file: !6272, line: 95, baseType: !6362, size: 64, offset: 960)
!6362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6363, size: 64)
!6363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !6364, line: 11, size: 128, elements: !6365)
!6364 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!6365 = !{!6366, !6367}
!6366 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !6363, file: !6364, line: 12, baseType: !919, size: 64)
!6367 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !6363, file: !6364, line: 13, baseType: !3552, size: 64, offset: 64)
!6368 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !6345, file: !6272, line: 96, baseType: !488, size: 32, offset: 1024)
!6369 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !6290, file: !6272, line: 352, baseType: !6370, size: 4608, align: 512)
!6370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !6272, line: 333, size: 4608, align: 512, elements: !6371)
!6371 = !{!6372, !6373, !6380}
!6372 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !6370, file: !6272, line: 334, baseType: !6308, size: 4096, align: 128)
!6373 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !6370, file: !6272, line: 335, baseType: !6374, size: 512, offset: 4096)
!6374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !6272, line: 312, size: 512, elements: !6375)
!6375 = !{!6376, !6377, !6378}
!6376 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !6374, file: !6272, line: 313, baseType: !536, size: 64)
!6377 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !6374, file: !6272, line: 314, baseType: !536, size: 64, offset: 64)
!6378 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !6374, file: !6272, line: 315, baseType: !6379, size: 384, offset: 128)
!6379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !536, size: 384, elements: !1056)
!6380 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !6370, file: !6272, line: 336, baseType: !6381, offset: 4608)
!6381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, elements: !1230)
!6382 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !6290, file: !6272, line: 353, baseType: !6383, size: 32768)
!6383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 32768, elements: !2580)
!6384 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !6271, file: !6272, line: 484, baseType: !6277, size: 64, offset: 192)
!6385 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !6271, file: !6272, line: 491, baseType: !6386, size: 128, offset: 256)
!6386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !6272, line: 404, size: 128, elements: !6387)
!6387 = !{!6388, !6389, !6390}
!6388 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !6386, file: !6272, line: 424, baseType: !536, size: 64)
!6389 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !6386, file: !6272, line: 432, baseType: !13, size: 32, offset: 64)
!6390 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !6386, file: !6272, line: 440, baseType: !13, size: 32, offset: 96)
!6391 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !6271, file: !6272, line: 498, baseType: !6386, size: 128, offset: 384)
!6392 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !6271, file: !6272, line: 508, baseType: !6278, size: 33280, align: 512, offset: 512)
!6393 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !458, file: !459, line: 31, baseType: !3128, size: 64, offset: 448)
!6394 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !458, file: !459, line: 32, baseType: !13, size: 32, offset: 512)
!6395 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !458, file: !459, line: 33, baseType: !457, size: 64, offset: 576)
!6396 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !458, file: !459, line: 35, baseType: !6397, size: 64, offset: 640)
!6397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6398, size: 64)
!6398 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !459, line: 17, flags: DIFlagFwdDecl)
!6399 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !458, file: !459, line: 37, baseType: !943, size: 64, offset: 704)
!6400 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !458, file: !459, line: 38, baseType: !1199, size: 64, offset: 768)
!6401 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !458, file: !459, line: 39, baseType: !27, size: 32, offset: 832)
!6402 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !458, file: !459, line: 40, baseType: !989, size: 192, offset: 896)
!6403 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !458, file: !459, line: 42, baseType: !27, size: 32, offset: 1088)
!6404 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !398, file: !289, line: 951, baseType: !280, size: 32, offset: 128)
!6405 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !398, file: !289, line: 952, baseType: !974, size: 32, offset: 160)
!6406 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !398, file: !289, line: 952, baseType: !974, size: 32, offset: 192)
!6407 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !398, file: !289, line: 953, baseType: !27, size: 32, offset: 224)
!6408 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !351, file: !289, line: 1012, baseType: !1371, size: 64, offset: 896)
!6409 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !351, file: !289, line: 1013, baseType: !5199, size: 256, offset: 960)
!6410 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !351, file: !289, line: 1014, baseType: !3869, size: 128, offset: 1216)
!6411 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !351, file: !289, line: 1015, baseType: !1764, size: 64, offset: 1344)
!6412 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !351, file: !289, line: 1016, baseType: !4844, size: 64, offset: 1408)
!6413 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !351, file: !289, line: 1018, baseType: !536, size: 64, offset: 1472)
!6414 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !351, file: !289, line: 1020, baseType: !25, size: 64, offset: 1536)
!6415 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !351, file: !289, line: 1023, baseType: !25, size: 64, offset: 1600)
!6416 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !351, file: !289, line: 1027, baseType: !2628, size: 64, offset: 1664)
!6417 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !351, file: !289, line: 1029, baseType: !1760, size: 64, offset: 1728)
!6418 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !351, file: !289, line: 1030, baseType: !4575, size: 32, offset: 1792)
!6419 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !351, file: !289, line: 1031, baseType: !4575, size: 32, offset: 1824)
!6420 = !{!0, !7, !6421, !6426, !6428, !6430, !6435}
!6421 = !DIGlobalVariableExpression(var: !6422, expr: !DIExpression())
!6422 = distinct !DIGlobalVariable(name: "__key", scope: !6423, file: !2, line: 141, type: !3657, isLocal: true, isDefinition: true)
!6423 = distinct !DISubprogram(name: "emergency_sync", scope: !2, file: !2, line: 135, type: !2525, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6424)
!6424 = !{!6425}
!6425 = !DILocalVariable(name: "work", scope: !6423, file: !2, line: 137, type: !1126)
!6426 = !DIGlobalVariableExpression(var: !6427, expr: !DIExpression())
!6427 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_vfs_fsync_range371", scope: !9, file: !2, line: 190, type: !25, isLocal: true, isDefinition: true)
!6428 = !DIGlobalVariableExpression(var: !6429, expr: !DIExpression())
!6429 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_vfs_fsync372", scope: !9, file: !2, line: 204, type: !25, isLocal: true, isDefinition: true)
!6430 = !DIGlobalVariableExpression(var: !6431, expr: !DIExpression())
!6431 = distinct !DIGlobalVariable(scope: null, file: !331, line: 480, type: !6432, isLocal: true, isDefinition: true)
!6432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !6433)
!6433 = !{!6434}
!6434 = !DISubrange(count: 21)
!6435 = !DIGlobalVariableExpression(var: !6436, expr: !DIExpression())
!6436 = distinct !DIGlobalVariable(scope: null, file: !2, line: 131, type: !6437, isLocal: true, isDefinition: true)
!6437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !6438)
!6438 = !{!6439}
!6439 = !DISubrange(count: 25)
!6440 = !{i32 7, !"Dwarf Version", i32 5}
!6441 = !{i32 2, !"Debug Info Version", i32 3}
!6442 = !{i32 1, !"wchar_size", i32 2}
!6443 = !{i32 8, !"cf-protection-branch", i32 1}
!6444 = !{i32 4, !"function_return_thunk_extern", i32 1}
!6445 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!6446 = !{i32 1, !"Code Model", i32 2}
!6447 = !{i32 1, !"override-stack-alignment", i32 8}
!6448 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6449 = distinct !DISubprogram(name: "sync_filesystem", scope: !2, file: !2, line: 30, type: !3724, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6450)
!6450 = !{!6451, !6452, !6453, !6455}
!6451 = !DILocalVariable(name: "sb", arg: 1, scope: !6449, file: !2, line: 30, type: !1892)
!6452 = !DILocalVariable(name: "ret", scope: !6449, file: !2, line: 32, type: !27)
!6453 = !DILocalVariable(name: "__ret_warn_on", scope: !6454, file: !2, line: 38, type: !27)
!6454 = distinct !DILexicalBlock(scope: !6449, file: !2, line: 38, column: 2)
!6455 = !DILocalVariable(name: "__flags", scope: !6456, file: !2, line: 38, type: !27)
!6456 = distinct !DILexicalBlock(scope: !6457, file: !2, line: 38, column: 2)
!6457 = distinct !DILexicalBlock(scope: !6454, file: !2, line: 38, column: 2)
!6458 = !DILocation(line: 30, column: 41, scope: !6449)
!6459 = !DILocation(line: 32, column: 2, scope: !6449)
!6460 = !DILocation(line: 32, column: 6, scope: !6449)
!6461 = !DILocation(line: 38, column: 2, scope: !6454)
!6462 = !DILocation(line: 38, column: 2, scope: !6457)
!6463 = !DILocation(line: 38, column: 2, scope: !6456)
!6464 = !DILocation(line: 38, column: 2, scope: !6465)
!6465 = distinct !DILexicalBlock(scope: !6456, file: !2, line: 38, column: 2)
!6466 = !DILocation(line: 38, column: 2, scope: !6467)
!6467 = distinct !DILexicalBlock(scope: !6456, file: !2, line: 38, column: 2)
!6468 = !{i64 2156472151, i64 2156472180, i64 2156472226, i64 2156472284, i64 2156472338, i64 2156472392, i64 2156472447, i64 2156472478, i64 2156472786, i64 2156472792, i64 2156472839, i64 2156472862, i64 2156472888}
!6469 = !DILocation(line: 38, column: 2, scope: !6470)
!6470 = distinct !DILexicalBlock(scope: !6456, file: !2, line: 38, column: 2)
!6471 = !DILocation(line: 38, column: 2, scope: !6449)
!6472 = !DILocation(line: 43, column: 16, scope: !6473)
!6473 = distinct !DILexicalBlock(scope: !6449, file: !2, line: 43, column: 6)
!6474 = !DILocation(line: 43, column: 6, scope: !6473)
!6475 = !DILocation(line: 43, column: 6, scope: !6449)
!6476 = !DILocation(line: 44, column: 3, scope: !6473)
!6477 = !DILocation(line: 54, column: 22, scope: !6449)
!6478 = !DILocation(line: 54, column: 2, scope: !6449)
!6479 = !DILocation(line: 55, column: 6, scope: !6480)
!6480 = distinct !DILexicalBlock(scope: !6449, file: !2, line: 55, column: 6)
!6481 = !DILocation(line: 55, column: 10, scope: !6480)
!6482 = !DILocation(line: 55, column: 16, scope: !6480)
!6483 = !DILocation(line: 55, column: 6, scope: !6449)
!6484 = !DILocation(line: 56, column: 9, scope: !6485)
!6485 = distinct !DILexicalBlock(scope: !6480, file: !2, line: 55, column: 25)
!6486 = !DILocation(line: 56, column: 13, scope: !6485)
!6487 = !DILocation(line: 56, column: 19, scope: !6485)
!6488 = !DILocation(line: 56, column: 27, scope: !6485)
!6489 = !DILocation(line: 56, column: 7, scope: !6485)
!6490 = !DILocation(line: 57, column: 7, scope: !6491)
!6491 = distinct !DILexicalBlock(scope: !6485, file: !2, line: 57, column: 7)
!6492 = !DILocation(line: 57, column: 7, scope: !6485)
!6493 = !DILocation(line: 58, column: 11, scope: !6491)
!6494 = !DILocation(line: 58, column: 4, scope: !6491)
!6495 = !DILocation(line: 59, column: 2, scope: !6485)
!6496 = !DILocation(line: 60, column: 29, scope: !6449)
!6497 = !DILocation(line: 60, column: 33, scope: !6449)
!6498 = !DILocation(line: 60, column: 8, scope: !6449)
!6499 = !DILocation(line: 60, column: 6, scope: !6449)
!6500 = !DILocation(line: 61, column: 6, scope: !6501)
!6501 = distinct !DILexicalBlock(scope: !6449, file: !2, line: 61, column: 6)
!6502 = !DILocation(line: 61, column: 6, scope: !6449)
!6503 = !DILocation(line: 62, column: 10, scope: !6501)
!6504 = !DILocation(line: 62, column: 3, scope: !6501)
!6505 = !DILocation(line: 64, column: 17, scope: !6449)
!6506 = !DILocation(line: 64, column: 2, scope: !6449)
!6507 = !DILocation(line: 65, column: 6, scope: !6508)
!6508 = distinct !DILexicalBlock(scope: !6449, file: !2, line: 65, column: 6)
!6509 = !DILocation(line: 65, column: 10, scope: !6508)
!6510 = !DILocation(line: 65, column: 16, scope: !6508)
!6511 = !DILocation(line: 65, column: 6, scope: !6449)
!6512 = !DILocation(line: 66, column: 9, scope: !6513)
!6513 = distinct !DILexicalBlock(scope: !6508, file: !2, line: 65, column: 25)
!6514 = !DILocation(line: 66, column: 13, scope: !6513)
!6515 = !DILocation(line: 66, column: 19, scope: !6513)
!6516 = !DILocation(line: 66, column: 27, scope: !6513)
!6517 = !DILocation(line: 66, column: 7, scope: !6513)
!6518 = !DILocation(line: 67, column: 7, scope: !6519)
!6519 = distinct !DILexicalBlock(scope: !6513, file: !2, line: 67, column: 7)
!6520 = !DILocation(line: 67, column: 7, scope: !6513)
!6521 = !DILocation(line: 68, column: 11, scope: !6519)
!6522 = !DILocation(line: 68, column: 4, scope: !6519)
!6523 = !DILocation(line: 69, column: 2, scope: !6513)
!6524 = !DILocation(line: 70, column: 23, scope: !6449)
!6525 = !DILocation(line: 70, column: 27, scope: !6449)
!6526 = !DILocation(line: 70, column: 9, scope: !6449)
!6527 = !DILocation(line: 70, column: 2, scope: !6449)
!6528 = !DILocation(line: 71, column: 1, scope: !6449)
!6529 = distinct !DISubprogram(name: "rwsem_is_locked", scope: !838, file: !838, line: 70, type: !6530, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6533)
!6530 = !DISubroutineType(types: !6531)
!6531 = !{!27, !6532}
!6532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!6533 = !{!6534}
!6534 = !DILocalVariable(name: "sem", arg: 1, scope: !6529, file: !838, line: 70, type: !6532)
!6535 = !DILocation(line: 70, column: 56, scope: !6529)
!6536 = !DILocation(line: 72, column: 27, scope: !6529)
!6537 = !DILocation(line: 72, column: 32, scope: !6529)
!6538 = !DILocation(line: 72, column: 9, scope: !6529)
!6539 = !DILocation(line: 72, column: 39, scope: !6529)
!6540 = !DILocation(line: 72, column: 2, scope: !6529)
!6541 = distinct !DISubprogram(name: "sb_rdonly", scope: !289, file: !289, line: 2133, type: !6542, scopeLine: 2133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6546)
!6542 = !DISubroutineType(types: !6543)
!6543 = !{!1001, !6544}
!6544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6545, size: 64)
!6545 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1893)
!6546 = !{!6547}
!6547 = !DILocalVariable(name: "sb", arg: 1, scope: !6541, file: !289, line: 2133, type: !6544)
!6548 = !DILocation(line: 2133, column: 56, scope: !6541)
!6549 = !DILocation(line: 2133, column: 69, scope: !6541)
!6550 = !DILocation(line: 2133, column: 73, scope: !6541)
!6551 = !DILocation(line: 2133, column: 81, scope: !6541)
!6552 = !DILocation(line: 2133, column: 62, scope: !6541)
!6553 = !DISubprogram(name: "writeback_inodes_sb", scope: !135, file: !135, line: 182, type: !6554, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6554 = !DISubroutineType(types: !6555)
!6555 = !{null, !1892, !261}
!6556 = !DISubprogram(name: "sync_blockdev_nowait", scope: !155, file: !155, line: 1524, type: !6557, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6557 = !DISubroutineType(types: !6558)
!6558 = !{!27, !3971}
!6559 = !DISubprogram(name: "sync_inodes_sb", scope: !135, file: !135, line: 186, type: !1924, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6560 = !DISubprogram(name: "sync_blockdev", scope: !155, file: !155, line: 1522, type: !6557, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6561 = distinct !DISubprogram(name: "ksys_sync", scope: !2, file: !2, line: 97, type: !2525, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6562)
!6562 = !{!6563, !6564}
!6563 = !DILocalVariable(name: "nowait", scope: !6561, file: !2, line: 99, type: !27)
!6564 = !DILocalVariable(name: "wait", scope: !6561, file: !2, line: 99, type: !27)
!6565 = !DILocation(line: 99, column: 2, scope: !6561)
!6566 = !DILocation(line: 99, column: 6, scope: !6561)
!6567 = !DILocation(line: 99, column: 18, scope: !6561)
!6568 = !DILocation(line: 101, column: 2, scope: !6561)
!6569 = !DILocation(line: 102, column: 2, scope: !6561)
!6570 = !DILocation(line: 103, column: 2, scope: !6561)
!6571 = !DILocation(line: 104, column: 2, scope: !6561)
!6572 = !DILocation(line: 105, column: 2, scope: !6561)
!6573 = !DILocation(line: 106, column: 2, scope: !6561)
!6574 = !DILocation(line: 107, column: 6, scope: !6575)
!6575 = distinct !DILexicalBlock(scope: !6561, file: !2, line: 107, column: 6)
!6576 = !DILocation(line: 107, column: 6, scope: !6561)
!6577 = !DILocation(line: 108, column: 3, scope: !6575)
!6578 = !DILocation(line: 109, column: 1, scope: !6561)
!6579 = !DISubprogram(name: "wakeup_flusher_threads", scope: !135, file: !135, line: 187, type: !6580, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6580 = !DISubroutineType(types: !6581)
!6581 = !{null, !261}
!6582 = !DISubprogram(name: "iterate_supers", scope: !289, file: !289, line: 3136, type: !6583, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6583 = !DISubroutineType(types: !6584)
!6584 = !{null, !6585, !25}
!6585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6586, size: 64)
!6586 = !DISubroutineType(types: !6587)
!6587 = !{null, !1892, !25}
!6588 = distinct !DISubprogram(name: "sync_inodes_one_sb", scope: !2, file: !2, line: 74, type: !6586, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6589)
!6589 = !{!6590, !6591}
!6590 = !DILocalVariable(name: "sb", arg: 1, scope: !6588, file: !2, line: 74, type: !1892)
!6591 = !DILocalVariable(name: "arg", arg: 2, scope: !6588, file: !2, line: 74, type: !25)
!6592 = !DILocation(line: 74, column: 52, scope: !6588)
!6593 = !DILocation(line: 74, column: 62, scope: !6588)
!6594 = !DILocation(line: 76, column: 17, scope: !6595)
!6595 = distinct !DILexicalBlock(scope: !6588, file: !2, line: 76, column: 6)
!6596 = !DILocation(line: 76, column: 7, scope: !6595)
!6597 = !DILocation(line: 76, column: 6, scope: !6588)
!6598 = !DILocation(line: 77, column: 18, scope: !6595)
!6599 = !DILocation(line: 77, column: 3, scope: !6595)
!6600 = !DILocation(line: 78, column: 1, scope: !6588)
!6601 = distinct !DISubprogram(name: "sync_fs_one_sb", scope: !2, file: !2, line: 80, type: !6586, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6602)
!6602 = !{!6603, !6604}
!6603 = !DILocalVariable(name: "sb", arg: 1, scope: !6601, file: !2, line: 80, type: !1892)
!6604 = !DILocalVariable(name: "arg", arg: 2, scope: !6601, file: !2, line: 80, type: !25)
!6605 = !DILocation(line: 80, column: 48, scope: !6601)
!6606 = !DILocation(line: 80, column: 58, scope: !6601)
!6607 = !DILocation(line: 82, column: 17, scope: !6608)
!6608 = distinct !DILexicalBlock(scope: !6601, file: !2, line: 82, column: 6)
!6609 = !DILocation(line: 82, column: 7, scope: !6608)
!6610 = !DILocation(line: 82, column: 21, scope: !6608)
!6611 = !DILocation(line: 82, column: 26, scope: !6608)
!6612 = !DILocation(line: 82, column: 30, scope: !6608)
!6613 = !DILocation(line: 82, column: 39, scope: !6608)
!6614 = !DILocation(line: 82, column: 57, scope: !6608)
!6615 = !DILocation(line: 83, column: 6, scope: !6608)
!6616 = !DILocation(line: 83, column: 10, scope: !6608)
!6617 = !DILocation(line: 83, column: 16, scope: !6608)
!6618 = !DILocation(line: 82, column: 6, scope: !6601)
!6619 = !DILocation(line: 84, column: 3, scope: !6608)
!6620 = !DILocation(line: 84, column: 7, scope: !6608)
!6621 = !DILocation(line: 84, column: 13, scope: !6608)
!6622 = !DILocation(line: 84, column: 21, scope: !6608)
!6623 = !DILocation(line: 84, column: 33, scope: !6608)
!6624 = !DILocation(line: 84, column: 25, scope: !6608)
!6625 = !DILocation(line: 85, column: 1, scope: !6601)
!6626 = !DISubprogram(name: "sync_bdevs", scope: !155, file: !155, line: 1525, type: !6627, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6627 = !DISubroutineType(types: !6628)
!6628 = !{null, !1001}
!6629 = !DISubprogram(name: "laptop_sync_completion", scope: !135, file: !135, line: 331, type: !2525, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6630 = distinct !DISubprogram(name: "__do_sys_sync", scope: !2, file: !2, line: 111, type: !6631, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6635)
!6631 = !DISubroutineType(types: !6632)
!6632 = !{!919, !6633}
!6633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6634, size: 64)
!6634 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3553)
!6635 = !{!6636}
!6636 = !DILocalVariable(name: "__unused", arg: 1, scope: !6630, file: !2, line: 111, type: !6633)
!6637 = !DILocation(line: 111, column: 1, scope: !6630)
!6638 = !DILocation(line: 113, column: 2, scope: !6630)
!6639 = !DILocation(line: 114, column: 2, scope: !6630)
!6640 = !DILocation(line: 137, column: 2, scope: !6423)
!6641 = !DILocation(line: 137, column: 22, scope: !6423)
!6642 = !DILocation(line: 139, column: 9, scope: !6423)
!6643 = !DILocation(line: 139, column: 7, scope: !6423)
!6644 = !DILocation(line: 140, column: 6, scope: !6645)
!6645 = distinct !DILexicalBlock(scope: !6423, file: !2, line: 140, column: 6)
!6646 = !DILocation(line: 140, column: 6, scope: !6423)
!6647 = !DILocation(line: 141, column: 3, scope: !6648)
!6648 = distinct !DILexicalBlock(scope: !6645, file: !2, line: 140, column: 12)
!6649 = !DILocation(line: 141, column: 3, scope: !6650)
!6650 = distinct !DILexicalBlock(scope: !6648, file: !2, line: 141, column: 3)
!6651 = !DILocation(line: 141, column: 3, scope: !6652)
!6652 = distinct !DILexicalBlock(scope: !6650, file: !2, line: 141, column: 3)
!6653 = !DILocation(line: 142, column: 17, scope: !6648)
!6654 = !DILocation(line: 142, column: 3, scope: !6648)
!6655 = !DILocation(line: 143, column: 2, scope: !6648)
!6656 = !DILocation(line: 144, column: 1, scope: !6423)
!6657 = distinct !DISubprogram(name: "kmalloc", scope: !331, file: !331, line: 591, type: !6658, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6660)
!6658 = !DISubroutineType(types: !6659)
!6659 = !{!25, !40, !341}
!6660 = !{!6661, !6662, !6663}
!6661 = !DILocalVariable(name: "size", arg: 1, scope: !6657, file: !331, line: 591, type: !40)
!6662 = !DILocalVariable(name: "flags", arg: 2, scope: !6657, file: !331, line: 591, type: !341)
!6663 = !DILocalVariable(name: "index", scope: !6664, file: !331, line: 594, type: !13)
!6664 = distinct !DILexicalBlock(scope: !6665, file: !331, line: 593, column: 42)
!6665 = distinct !DILexicalBlock(scope: !6657, file: !331, line: 593, column: 6)
!6666 = !DILocation(line: 591, column: 61, scope: !6657)
!6667 = !DILocation(line: 591, column: 73, scope: !6657)
!6668 = !DILocation(line: 593, column: 27, scope: !6665)
!6669 = !DILocation(line: 593, column: 6, scope: !6665)
!6670 = !DILocation(line: 593, column: 33, scope: !6665)
!6671 = !DILocation(line: 593, column: 36, scope: !6665)
!6672 = !DILocation(line: 593, column: 6, scope: !6657)
!6673 = !DILocation(line: 594, column: 3, scope: !6664)
!6674 = !DILocation(line: 594, column: 16, scope: !6664)
!6675 = !DILocation(line: 596, column: 7, scope: !6676)
!6676 = distinct !DILexicalBlock(scope: !6664, file: !331, line: 596, column: 7)
!6677 = !DILocation(line: 596, column: 12, scope: !6676)
!6678 = !DILocation(line: 596, column: 7, scope: !6664)
!6679 = !DILocation(line: 597, column: 25, scope: !6676)
!6680 = !DILocation(line: 597, column: 31, scope: !6676)
!6681 = !DILocation(line: 597, column: 11, scope: !6676)
!6682 = !DILocation(line: 597, column: 4, scope: !6676)
!6683 = !DILocation(line: 599, column: 11, scope: !6664)
!6684 = !DILocation(line: 599, column: 9, scope: !6664)
!6685 = !DILocation(line: 601, column: 33, scope: !6664)
!6686 = !DILocation(line: 601, column: 40, scope: !6664)
!6687 = !DILocation(line: 601, column: 20, scope: !6664)
!6688 = !DILocation(line: 601, column: 5, scope: !6664)
!6689 = !DILocation(line: 601, column: 51, scope: !6664)
!6690 = !DILocation(line: 602, column: 5, scope: !6664)
!6691 = !DILocation(line: 602, column: 12, scope: !6664)
!6692 = !DILocation(line: 600, column: 10, scope: !6664)
!6693 = !DILocation(line: 600, column: 3, scope: !6664)
!6694 = !DILocation(line: 603, column: 2, scope: !6665)
!6695 = !DILocation(line: 604, column: 19, scope: !6657)
!6696 = !DILocation(line: 604, column: 25, scope: !6657)
!6697 = !DILocation(line: 604, column: 9, scope: !6657)
!6698 = !DILocation(line: 604, column: 2, scope: !6657)
!6699 = !DILocation(line: 605, column: 1, scope: !6657)
!6700 = distinct !DISubprogram(name: "__init_work", scope: !305, file: !305, line: 263, type: !6701, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6703)
!6701 = !DISubroutineType(types: !6702)
!6702 = !{null, !1126, !27}
!6703 = !{!6704, !6705}
!6704 = !DILocalVariable(name: "work", arg: 1, scope: !6700, file: !305, line: 263, type: !1126)
!6705 = !DILocalVariable(name: "onstack", arg: 2, scope: !6700, file: !305, line: 263, type: !27)
!6706 = !DILocation(line: 263, column: 52, scope: !6700)
!6707 = !DILocation(line: 263, column: 62, scope: !6700)
!6708 = !DILocation(line: 263, column: 73, scope: !6700)
!6709 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !6710, file: !6710, line: 35, type: !6711, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6713)
!6710 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!6711 = !DISubroutineType(types: !6712)
!6712 = !{null, !105}
!6713 = !{!6714}
!6714 = !DILocalVariable(name: "list", arg: 1, scope: !6709, file: !6710, line: 35, type: !105)
!6715 = !DILocation(line: 35, column: 53, scope: !6709)
!6716 = !DILocation(line: 37, column: 2, scope: !6709)
!6717 = !DILocation(line: 37, column: 2, scope: !6718)
!6718 = distinct !DILexicalBlock(scope: !6709, file: !6710, line: 37, column: 2)
!6719 = !DILocation(line: 37, column: 2, scope: !6720)
!6720 = distinct !DILexicalBlock(scope: !6718, file: !6710, line: 37, column: 2)
!6721 = !DILocation(line: 37, column: 2, scope: !6722)
!6722 = distinct !DILexicalBlock(scope: !6718, file: !6710, line: 37, column: 2)
!6723 = !DILocation(line: 38, column: 2, scope: !6709)
!6724 = !DILocation(line: 38, column: 2, scope: !6725)
!6725 = distinct !DILexicalBlock(scope: !6709, file: !6710, line: 38, column: 2)
!6726 = !DILocation(line: 38, column: 2, scope: !6727)
!6727 = distinct !DILexicalBlock(scope: !6725, file: !6710, line: 38, column: 2)
!6728 = !DILocation(line: 38, column: 2, scope: !6729)
!6729 = distinct !DILexicalBlock(scope: !6725, file: !6710, line: 38, column: 2)
!6730 = !DILocation(line: 39, column: 1, scope: !6709)
!6731 = distinct !DISubprogram(name: "do_sync_work", scope: !2, file: !2, line: 117, type: !1124, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6732)
!6732 = !{!6733, !6734}
!6733 = !DILocalVariable(name: "work", arg: 1, scope: !6731, file: !2, line: 117, type: !1126)
!6734 = !DILocalVariable(name: "nowait", scope: !6731, file: !2, line: 119, type: !27)
!6735 = !DILocation(line: 117, column: 46, scope: !6731)
!6736 = !DILocation(line: 119, column: 2, scope: !6731)
!6737 = !DILocation(line: 119, column: 6, scope: !6731)
!6738 = !DILocation(line: 125, column: 2, scope: !6731)
!6739 = !DILocation(line: 126, column: 2, scope: !6731)
!6740 = !DILocation(line: 127, column: 2, scope: !6731)
!6741 = !DILocation(line: 128, column: 2, scope: !6731)
!6742 = !DILocation(line: 129, column: 2, scope: !6731)
!6743 = !DILocation(line: 130, column: 2, scope: !6731)
!6744 = !DILocation(line: 131, column: 2, scope: !6745)
!6745 = distinct !DILexicalBlock(scope: !6731, file: !2, line: 131, column: 2)
!6746 = !DILocation(line: 131, column: 2, scope: !6747)
!6747 = distinct !DILexicalBlock(scope: !6745, file: !2, line: 131, column: 2)
!6748 = !DILocation(line: 132, column: 8, scope: !6731)
!6749 = !DILocation(line: 132, column: 2, scope: !6731)
!6750 = !DILocation(line: 133, column: 1, scope: !6731)
!6751 = distinct !DISubprogram(name: "schedule_work", scope: !305, file: !305, line: 621, type: !6752, scopeLine: 622, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6754)
!6752 = !DISubroutineType(types: !6753)
!6753 = !{!1001, !1126}
!6754 = !{!6755}
!6755 = !DILocalVariable(name: "work", arg: 1, scope: !6751, file: !305, line: 621, type: !1126)
!6756 = !DILocation(line: 621, column: 54, scope: !6751)
!6757 = !DILocation(line: 623, column: 20, scope: !6751)
!6758 = !DILocation(line: 623, column: 31, scope: !6751)
!6759 = !DILocation(line: 623, column: 9, scope: !6751)
!6760 = !DILocation(line: 623, column: 2, scope: !6751)
!6761 = distinct !DISubprogram(name: "__x64_sys_syncfs", scope: !2, file: !2, line: 149, type: !6631, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6762)
!6762 = !{!6763}
!6763 = !DILocalVariable(name: "regs", arg: 1, scope: !6761, file: !2, line: 149, type: !6633)
!6764 = !DILocation(line: 149, column: 1, scope: !6761)
!6765 = distinct !DISubprogram(name: "__se_sys_syncfs", scope: !2, file: !2, line: 149, type: !6766, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6768)
!6766 = !DISubroutineType(types: !6767)
!6767 = !{!919, !919}
!6768 = !{!6769, !6770}
!6769 = !DILocalVariable(name: "fd", arg: 1, scope: !6765, file: !2, line: 149, type: !919)
!6770 = !DILocalVariable(name: "ret", scope: !6765, file: !2, line: 149, type: !919)
!6771 = !DILocation(line: 149, column: 1, scope: !6765)
!6772 = !DILocation(line: 149, column: 1, scope: !6773)
!6773 = distinct !DILexicalBlock(scope: !6765, file: !2, line: 149, column: 1)
!6774 = distinct !DISubprogram(name: "__ia32_sys_syncfs", scope: !2, file: !2, line: 149, type: !6631, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6775)
!6775 = !{!6776}
!6776 = !DILocalVariable(name: "regs", arg: 1, scope: !6774, file: !2, line: 149, type: !6633)
!6777 = !DILocation(line: 149, column: 1, scope: !6774)
!6778 = distinct !DISubprogram(name: "vfs_fsync_range", scope: !2, file: !2, line: 180, type: !5077, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6779)
!6779 = !{!6780, !6781, !6782, !6783, !6784}
!6780 = !DILocalVariable(name: "file", arg: 1, scope: !6778, file: !2, line: 180, type: !350)
!6781 = !DILocalVariable(name: "start", arg: 2, scope: !6778, file: !2, line: 180, type: !46)
!6782 = !DILocalVariable(name: "end", arg: 3, scope: !6778, file: !2, line: 180, type: !46)
!6783 = !DILocalVariable(name: "datasync", arg: 4, scope: !6778, file: !2, line: 180, type: !27)
!6784 = !DILocalVariable(name: "inode", scope: !6778, file: !2, line: 182, type: !1764)
!6785 = !DILocation(line: 180, column: 34, scope: !6778)
!6786 = !DILocation(line: 180, column: 47, scope: !6778)
!6787 = !DILocation(line: 180, column: 61, scope: !6778)
!6788 = !DILocation(line: 180, column: 70, scope: !6778)
!6789 = !DILocation(line: 182, column: 2, scope: !6778)
!6790 = !DILocation(line: 182, column: 16, scope: !6778)
!6791 = !DILocation(line: 182, column: 24, scope: !6778)
!6792 = !DILocation(line: 182, column: 30, scope: !6778)
!6793 = !DILocation(line: 182, column: 41, scope: !6778)
!6794 = !DILocation(line: 184, column: 7, scope: !6795)
!6795 = distinct !DILexicalBlock(scope: !6778, file: !2, line: 184, column: 6)
!6796 = !DILocation(line: 184, column: 13, scope: !6795)
!6797 = !DILocation(line: 184, column: 19, scope: !6795)
!6798 = !DILocation(line: 184, column: 6, scope: !6778)
!6799 = !DILocation(line: 185, column: 3, scope: !6795)
!6800 = !DILocation(line: 186, column: 7, scope: !6801)
!6801 = distinct !DILexicalBlock(scope: !6778, file: !2, line: 186, column: 6)
!6802 = !DILocation(line: 186, column: 16, scope: !6801)
!6803 = !DILocation(line: 186, column: 20, scope: !6801)
!6804 = !DILocation(line: 186, column: 27, scope: !6801)
!6805 = !DILocation(line: 186, column: 35, scope: !6801)
!6806 = !DILocation(line: 186, column: 6, scope: !6778)
!6807 = !DILocation(line: 187, column: 25, scope: !6801)
!6808 = !DILocation(line: 187, column: 3, scope: !6801)
!6809 = !DILocation(line: 188, column: 9, scope: !6778)
!6810 = !DILocation(line: 188, column: 15, scope: !6778)
!6811 = !DILocation(line: 188, column: 21, scope: !6778)
!6812 = !DILocation(line: 188, column: 27, scope: !6778)
!6813 = !DILocation(line: 188, column: 33, scope: !6778)
!6814 = !DILocation(line: 188, column: 40, scope: !6778)
!6815 = !DILocation(line: 188, column: 45, scope: !6778)
!6816 = !DILocation(line: 188, column: 2, scope: !6778)
!6817 = !DILocation(line: 189, column: 1, scope: !6778)
!6818 = distinct !DISubprogram(name: "mark_inode_dirty_sync", scope: !289, file: !289, line: 2307, type: !3677, scopeLine: 2308, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6819)
!6819 = !{!6820}
!6820 = !DILocalVariable(name: "inode", arg: 1, scope: !6818, file: !289, line: 2307, type: !1764)
!6821 = !DILocation(line: 2307, column: 56, scope: !6818)
!6822 = !DILocation(line: 2309, column: 21, scope: !6818)
!6823 = !DILocation(line: 2309, column: 2, scope: !6818)
!6824 = !DILocation(line: 2310, column: 1, scope: !6818)
!6825 = distinct !DISubprogram(name: "vfs_fsync", scope: !2, file: !2, line: 200, type: !6826, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6828)
!6826 = !DISubroutineType(types: !6827)
!6827 = !{!27, !350, !27}
!6828 = !{!6829, !6830}
!6829 = !DILocalVariable(name: "file", arg: 1, scope: !6825, file: !2, line: 200, type: !350)
!6830 = !DILocalVariable(name: "datasync", arg: 2, scope: !6825, file: !2, line: 200, type: !27)
!6831 = !DILocation(line: 200, column: 28, scope: !6825)
!6832 = !DILocation(line: 200, column: 38, scope: !6825)
!6833 = !DILocation(line: 202, column: 25, scope: !6825)
!6834 = !DILocation(line: 202, column: 45, scope: !6825)
!6835 = !DILocation(line: 202, column: 9, scope: !6825)
!6836 = !DILocation(line: 202, column: 2, scope: !6825)
!6837 = distinct !DISubprogram(name: "__x64_sys_fsync", scope: !2, file: !2, line: 218, type: !6631, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6838)
!6838 = !{!6839}
!6839 = !DILocalVariable(name: "regs", arg: 1, scope: !6837, file: !2, line: 218, type: !6633)
!6840 = !DILocation(line: 218, column: 1, scope: !6837)
!6841 = distinct !DISubprogram(name: "__se_sys_fsync", scope: !2, file: !2, line: 218, type: !6766, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6842)
!6842 = !{!6843, !6844}
!6843 = !DILocalVariable(name: "fd", arg: 1, scope: !6841, file: !2, line: 218, type: !919)
!6844 = !DILocalVariable(name: "ret", scope: !6841, file: !2, line: 218, type: !919)
!6845 = !DILocation(line: 218, column: 1, scope: !6841)
!6846 = !DILocation(line: 218, column: 1, scope: !6847)
!6847 = distinct !DILexicalBlock(scope: !6841, file: !2, line: 218, column: 1)
!6848 = distinct !DISubprogram(name: "__ia32_sys_fsync", scope: !2, file: !2, line: 218, type: !6631, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6849)
!6849 = !{!6850}
!6850 = !DILocalVariable(name: "regs", arg: 1, scope: !6848, file: !2, line: 218, type: !6633)
!6851 = !DILocation(line: 218, column: 1, scope: !6848)
!6852 = distinct !DISubprogram(name: "__x64_sys_fdatasync", scope: !2, file: !2, line: 223, type: !6631, scopeLine: 223, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6853)
!6853 = !{!6854}
!6854 = !DILocalVariable(name: "regs", arg: 1, scope: !6852, file: !2, line: 223, type: !6633)
!6855 = !DILocation(line: 223, column: 1, scope: !6852)
!6856 = distinct !DISubprogram(name: "__se_sys_fdatasync", scope: !2, file: !2, line: 223, type: !6766, scopeLine: 223, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6857)
!6857 = !{!6858, !6859}
!6858 = !DILocalVariable(name: "fd", arg: 1, scope: !6856, file: !2, line: 223, type: !919)
!6859 = !DILocalVariable(name: "ret", scope: !6856, file: !2, line: 223, type: !919)
!6860 = !DILocation(line: 223, column: 1, scope: !6856)
!6861 = !DILocation(line: 223, column: 1, scope: !6862)
!6862 = distinct !DILexicalBlock(scope: !6856, file: !2, line: 223, column: 1)
!6863 = distinct !DISubprogram(name: "__ia32_sys_fdatasync", scope: !2, file: !2, line: 223, type: !6631, scopeLine: 223, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6864)
!6864 = !{!6865}
!6865 = !DILocalVariable(name: "regs", arg: 1, scope: !6863, file: !2, line: 223, type: !6633)
!6866 = !DILocation(line: 223, column: 1, scope: !6863)
!6867 = distinct !DISubprogram(name: "sync_file_range", scope: !2, file: !2, line: 228, type: !6868, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6870)
!6868 = !DISubroutineType(types: !6869)
!6869 = !{!27, !350, !46, !46, !13}
!6870 = !{!6871, !6872, !6873, !6874, !6875, !6876, !6877, !6878, !6879, !6882}
!6871 = !DILocalVariable(name: "file", arg: 1, scope: !6867, file: !2, line: 228, type: !350)
!6872 = !DILocalVariable(name: "offset", arg: 2, scope: !6867, file: !2, line: 228, type: !46)
!6873 = !DILocalVariable(name: "nbytes", arg: 3, scope: !6867, file: !2, line: 228, type: !46)
!6874 = !DILocalVariable(name: "flags", arg: 4, scope: !6867, file: !2, line: 229, type: !13)
!6875 = !DILocalVariable(name: "ret", scope: !6867, file: !2, line: 231, type: !27)
!6876 = !DILocalVariable(name: "mapping", scope: !6867, file: !2, line: 232, type: !1760)
!6877 = !DILocalVariable(name: "endbyte", scope: !6867, file: !2, line: 233, type: !46)
!6878 = !DILocalVariable(name: "i_mode", scope: !6867, file: !2, line: 234, type: !29)
!6879 = !DILocalVariable(name: "sync_mode", scope: !6880, file: !2, line: 286, type: !27)
!6880 = distinct !DILexicalBlock(scope: !6881, file: !2, line: 285, column: 37)
!6881 = distinct !DILexicalBlock(scope: !6867, file: !2, line: 285, column: 6)
!6882 = !DILabel(scope: !6867, name: "out", file: !2, line: 301)
!6883 = !DILocation(line: 228, column: 34, scope: !6867)
!6884 = !DILocation(line: 228, column: 47, scope: !6867)
!6885 = !DILocation(line: 228, column: 62, scope: !6867)
!6886 = !DILocation(line: 229, column: 20, scope: !6867)
!6887 = !DILocation(line: 231, column: 2, scope: !6867)
!6888 = !DILocation(line: 231, column: 6, scope: !6867)
!6889 = !DILocation(line: 232, column: 2, scope: !6867)
!6890 = !DILocation(line: 232, column: 24, scope: !6867)
!6891 = !DILocation(line: 233, column: 2, scope: !6867)
!6892 = !DILocation(line: 233, column: 9, scope: !6867)
!6893 = !DILocation(line: 234, column: 2, scope: !6867)
!6894 = !DILocation(line: 234, column: 10, scope: !6867)
!6895 = !DILocation(line: 236, column: 6, scope: !6867)
!6896 = !DILocation(line: 237, column: 6, scope: !6897)
!6897 = distinct !DILexicalBlock(scope: !6867, file: !2, line: 237, column: 6)
!6898 = !DILocation(line: 237, column: 12, scope: !6897)
!6899 = !DILocation(line: 237, column: 6, scope: !6867)
!6900 = !DILocation(line: 238, column: 3, scope: !6897)
!6901 = !DILocation(line: 240, column: 12, scope: !6867)
!6902 = !DILocation(line: 240, column: 21, scope: !6867)
!6903 = !DILocation(line: 240, column: 19, scope: !6867)
!6904 = !DILocation(line: 240, column: 10, scope: !6867)
!6905 = !DILocation(line: 242, column: 11, scope: !6906)
!6906 = distinct !DILexicalBlock(scope: !6867, file: !2, line: 242, column: 6)
!6907 = !DILocation(line: 242, column: 18, scope: !6906)
!6908 = !DILocation(line: 242, column: 6, scope: !6867)
!6909 = !DILocation(line: 243, column: 3, scope: !6906)
!6910 = !DILocation(line: 244, column: 11, scope: !6911)
!6911 = distinct !DILexicalBlock(scope: !6867, file: !2, line: 244, column: 6)
!6912 = !DILocation(line: 244, column: 19, scope: !6911)
!6913 = !DILocation(line: 244, column: 6, scope: !6867)
!6914 = !DILocation(line: 245, column: 3, scope: !6911)
!6915 = !DILocation(line: 246, column: 6, scope: !6916)
!6916 = distinct !DILexicalBlock(scope: !6867, file: !2, line: 246, column: 6)
!6917 = !DILocation(line: 246, column: 16, scope: !6916)
!6918 = !DILocation(line: 246, column: 14, scope: !6916)
!6919 = !DILocation(line: 246, column: 6, scope: !6867)
!6920 = !DILocation(line: 247, column: 3, scope: !6916)
!6921 = !DILocation(line: 266, column: 6, scope: !6922)
!6922 = distinct !DILexicalBlock(scope: !6867, file: !2, line: 266, column: 6)
!6923 = !DILocation(line: 266, column: 13, scope: !6922)
!6924 = !DILocation(line: 266, column: 6, scope: !6867)
!6925 = !DILocation(line: 267, column: 11, scope: !6922)
!6926 = !DILocation(line: 267, column: 3, scope: !6922)
!6927 = !DILocation(line: 269, column: 10, scope: !6922)
!6928 = !DILocation(line: 271, column: 22, scope: !6867)
!6929 = !DILocation(line: 271, column: 11, scope: !6867)
!6930 = !DILocation(line: 271, column: 29, scope: !6867)
!6931 = !DILocation(line: 271, column: 9, scope: !6867)
!6932 = !DILocation(line: 272, column: 6, scope: !6867)
!6933 = !DILocation(line: 273, column: 7, scope: !6934)
!6934 = distinct !DILexicalBlock(scope: !6867, file: !2, line: 273, column: 6)
!6935 = !DILocation(line: 273, column: 23, scope: !6934)
!6936 = !DILocation(line: 273, column: 27, scope: !6934)
!6937 = !DILocation(line: 273, column: 43, scope: !6934)
!6938 = !DILocation(line: 273, column: 47, scope: !6934)
!6939 = !DILocation(line: 273, column: 63, scope: !6934)
!6940 = !DILocation(line: 274, column: 5, scope: !6934)
!6941 = !DILocation(line: 273, column: 6, scope: !6867)
!6942 = !DILocation(line: 275, column: 3, scope: !6934)
!6943 = !DILocation(line: 277, column: 12, scope: !6867)
!6944 = !DILocation(line: 277, column: 18, scope: !6867)
!6945 = !DILocation(line: 277, column: 10, scope: !6867)
!6946 = !DILocation(line: 278, column: 6, scope: !6867)
!6947 = !DILocation(line: 279, column: 6, scope: !6948)
!6948 = distinct !DILexicalBlock(scope: !6867, file: !2, line: 279, column: 6)
!6949 = !DILocation(line: 279, column: 12, scope: !6948)
!6950 = !DILocation(line: 279, column: 6, scope: !6867)
!6951 = !DILocation(line: 280, column: 30, scope: !6952)
!6952 = distinct !DILexicalBlock(scope: !6948, file: !2, line: 279, column: 43)
!6953 = !DILocation(line: 280, column: 36, scope: !6952)
!6954 = !DILocation(line: 280, column: 44, scope: !6952)
!6955 = !DILocation(line: 280, column: 9, scope: !6952)
!6956 = !DILocation(line: 280, column: 7, scope: !6952)
!6957 = !DILocation(line: 281, column: 7, scope: !6958)
!6958 = distinct !DILexicalBlock(scope: !6952, file: !2, line: 281, column: 7)
!6959 = !DILocation(line: 281, column: 11, scope: !6958)
!6960 = !DILocation(line: 281, column: 7, scope: !6952)
!6961 = !DILocation(line: 282, column: 4, scope: !6958)
!6962 = !DILocation(line: 283, column: 2, scope: !6952)
!6963 = !DILocation(line: 285, column: 6, scope: !6881)
!6964 = !DILocation(line: 285, column: 12, scope: !6881)
!6965 = !DILocation(line: 285, column: 6, scope: !6867)
!6966 = !DILocation(line: 286, column: 3, scope: !6880)
!6967 = !DILocation(line: 286, column: 7, scope: !6880)
!6968 = !DILocation(line: 288, column: 8, scope: !6969)
!6969 = distinct !DILexicalBlock(scope: !6880, file: !2, line: 288, column: 7)
!6970 = !DILocation(line: 288, column: 14, scope: !6969)
!6971 = !DILocation(line: 288, column: 48, scope: !6969)
!6972 = !DILocation(line: 288, column: 7, scope: !6880)
!6973 = !DILocation(line: 290, column: 14, scope: !6969)
!6974 = !DILocation(line: 290, column: 4, scope: !6969)
!6975 = !DILocation(line: 292, column: 36, scope: !6880)
!6976 = !DILocation(line: 292, column: 45, scope: !6880)
!6977 = !DILocation(line: 292, column: 53, scope: !6880)
!6978 = !DILocation(line: 293, column: 8, scope: !6880)
!6979 = !DILocation(line: 292, column: 9, scope: !6880)
!6980 = !DILocation(line: 292, column: 7, scope: !6880)
!6981 = !DILocation(line: 294, column: 7, scope: !6982)
!6982 = distinct !DILexicalBlock(scope: !6880, file: !2, line: 294, column: 7)
!6983 = !DILocation(line: 294, column: 11, scope: !6982)
!6984 = !DILocation(line: 294, column: 7, scope: !6880)
!6985 = !DILocation(line: 295, column: 4, scope: !6982)
!6986 = !DILocation(line: 296, column: 2, scope: !6881)
!6987 = !DILocation(line: 296, column: 2, scope: !6880)
!6988 = !DILocation(line: 298, column: 6, scope: !6989)
!6989 = distinct !DILexicalBlock(scope: !6867, file: !2, line: 298, column: 6)
!6990 = !DILocation(line: 298, column: 12, scope: !6989)
!6991 = !DILocation(line: 298, column: 6, scope: !6867)
!6992 = !DILocation(line: 299, column: 30, scope: !6989)
!6993 = !DILocation(line: 299, column: 36, scope: !6989)
!6994 = !DILocation(line: 299, column: 44, scope: !6989)
!6995 = !DILocation(line: 299, column: 9, scope: !6989)
!6996 = !DILocation(line: 299, column: 7, scope: !6989)
!6997 = !DILocation(line: 299, column: 3, scope: !6989)
!6998 = !DILocation(line: 298, column: 14, scope: !6989)
!6999 = !DILocation(line: 301, column: 1, scope: !6867)
!7000 = !DILocation(line: 302, column: 9, scope: !6867)
!7001 = !DILocation(line: 302, column: 2, scope: !6867)
!7002 = !DILocation(line: 303, column: 1, scope: !6867)
!7003 = distinct !DISubprogram(name: "file_inode", scope: !289, file: !289, line: 1073, type: !7004, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7006)
!7004 = !DISubroutineType(types: !7005)
!7005 = !{!1764, !1609}
!7006 = !{!7007}
!7007 = !DILocalVariable(name: "f", arg: 1, scope: !7003, file: !289, line: 1073, type: !1609)
!7008 = !DILocation(line: 1073, column: 59, scope: !7003)
!7009 = !DILocation(line: 1075, column: 9, scope: !7003)
!7010 = !DILocation(line: 1075, column: 12, scope: !7003)
!7011 = !DILocation(line: 1075, column: 2, scope: !7003)
!7012 = !DISubprogram(name: "file_fdatawait_range", scope: !289, file: !289, line: 2619, type: !7013, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7013 = !DISubroutineType(types: !7014)
!7014 = !{!27, !350, !46, !46}
!7015 = !DISubprogram(name: "__filemap_fdatawrite_range", scope: !4883, file: !4883, line: 52, type: !7016, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7016 = !DISubroutineType(types: !7017)
!7017 = !{!27, !1760, !46, !46, !27}
!7018 = distinct !DISubprogram(name: "ksys_sync_file_range", scope: !2, file: !2, line: 355, type: !7019, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7021)
!7019 = !DISubroutineType(types: !7020)
!7020 = !{!27, !27, !46, !46, !13}
!7021 = !{!7022, !7023, !7024, !7025, !7026, !7027}
!7022 = !DILocalVariable(name: "fd", arg: 1, scope: !7018, file: !2, line: 355, type: !27)
!7023 = !DILocalVariable(name: "offset", arg: 2, scope: !7018, file: !2, line: 355, type: !46)
!7024 = !DILocalVariable(name: "nbytes", arg: 3, scope: !7018, file: !2, line: 355, type: !46)
!7025 = !DILocalVariable(name: "flags", arg: 4, scope: !7018, file: !2, line: 356, type: !13)
!7026 = !DILocalVariable(name: "ret", scope: !7018, file: !2, line: 358, type: !27)
!7027 = !DILocalVariable(name: "f", scope: !7018, file: !2, line: 359, type: !7028)
!7028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fd", file: !7029, line: 36, size: 128, elements: !7030)
!7029 = !DIFile(filename: "./include/linux/file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "784aacb17b41d4e231ce3854c643bfe6")
!7030 = !{!7031, !7032}
!7031 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !7028, file: !7029, line: 37, baseType: !350, size: 64)
!7032 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !7028, file: !7029, line: 38, baseType: !13, size: 32, offset: 64)
!7033 = !DILocation(line: 355, column: 30, scope: !7018)
!7034 = !DILocation(line: 355, column: 41, scope: !7018)
!7035 = !DILocation(line: 355, column: 56, scope: !7018)
!7036 = !DILocation(line: 356, column: 18, scope: !7018)
!7037 = !DILocation(line: 358, column: 2, scope: !7018)
!7038 = !DILocation(line: 358, column: 6, scope: !7018)
!7039 = !DILocation(line: 359, column: 2, scope: !7018)
!7040 = !DILocation(line: 359, column: 12, scope: !7018)
!7041 = !DILocation(line: 361, column: 6, scope: !7018)
!7042 = !DILocation(line: 362, column: 6, scope: !7018)
!7043 = !DILocation(line: 362, column: 12, scope: !7018)
!7044 = !DILocation(line: 363, column: 8, scope: !7045)
!7045 = distinct !DILexicalBlock(scope: !7018, file: !2, line: 363, column: 6)
!7046 = !DILocation(line: 363, column: 6, scope: !7045)
!7047 = !DILocation(line: 363, column: 6, scope: !7018)
!7048 = !DILocation(line: 364, column: 27, scope: !7045)
!7049 = !DILocation(line: 364, column: 33, scope: !7045)
!7050 = !DILocation(line: 364, column: 41, scope: !7045)
!7051 = !DILocation(line: 364, column: 49, scope: !7045)
!7052 = !DILocation(line: 364, column: 9, scope: !7045)
!7053 = !DILocation(line: 364, column: 7, scope: !7045)
!7054 = !DILocation(line: 364, column: 3, scope: !7045)
!7055 = !DILocation(line: 366, column: 2, scope: !7018)
!7056 = !DILocation(line: 367, column: 9, scope: !7018)
!7057 = !DILocation(line: 368, column: 1, scope: !7018)
!7058 = !DILocation(line: 367, column: 2, scope: !7018)
!7059 = distinct !DISubprogram(name: "fdget", scope: !7029, file: !7029, line: 62, type: !7060, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7062)
!7060 = !DISubroutineType(types: !7061)
!7061 = !{!7028, !13}
!7062 = !{!7063}
!7063 = !DILocalVariable(name: "fd", arg: 1, scope: !7059, file: !7029, line: 62, type: !13)
!7064 = !DILocation(line: 62, column: 44, scope: !7059)
!7065 = !DILocation(line: 64, column: 25, scope: !7059)
!7066 = !DILocation(line: 64, column: 17, scope: !7059)
!7067 = !DILocation(line: 64, column: 9, scope: !7059)
!7068 = !DILocation(line: 64, column: 2, scope: !7059)
!7069 = distinct !DISubprogram(name: "fdput", scope: !7029, file: !7029, line: 43, type: !7070, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7072)
!7070 = !DISubroutineType(types: !7071)
!7071 = !{null, !7028}
!7072 = !{!7073}
!7073 = !DILocalVariable(name: "fd", arg: 1, scope: !7069, file: !7029, line: 43, type: !7028)
!7074 = !DILocation(line: 43, column: 36, scope: !7069)
!7075 = !DILocation(line: 45, column: 9, scope: !7076)
!7076 = distinct !DILexicalBlock(scope: !7069, file: !7029, line: 45, column: 6)
!7077 = !DILocation(line: 45, column: 15, scope: !7076)
!7078 = !DILocation(line: 45, column: 6, scope: !7069)
!7079 = !DILocation(line: 46, column: 11, scope: !7076)
!7080 = !DILocation(line: 46, column: 3, scope: !7076)
!7081 = !DILocation(line: 47, column: 1, scope: !7069)
!7082 = distinct !DISubprogram(name: "__x64_sys_sync_file_range", scope: !2, file: !2, line: 370, type: !6631, scopeLine: 370, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7083)
!7083 = !{!7084}
!7084 = !DILocalVariable(name: "regs", arg: 1, scope: !7082, file: !2, line: 370, type: !6633)
!7085 = !DILocation(line: 370, column: 1, scope: !7082)
!7086 = distinct !DISubprogram(name: "__se_sys_sync_file_range", scope: !2, file: !2, line: 370, type: !7087, scopeLine: 370, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7089)
!7087 = !DISubroutineType(types: !7088)
!7088 = !{!919, !919, !48, !48, !919}
!7089 = !{!7090, !7091, !7092, !7093, !7094}
!7090 = !DILocalVariable(name: "fd", arg: 1, scope: !7086, file: !2, line: 370, type: !919)
!7091 = !DILocalVariable(name: "offset", arg: 2, scope: !7086, file: !2, line: 370, type: !48)
!7092 = !DILocalVariable(name: "nbytes", arg: 3, scope: !7086, file: !2, line: 370, type: !48)
!7093 = !DILocalVariable(name: "flags", arg: 4, scope: !7086, file: !2, line: 370, type: !919)
!7094 = !DILocalVariable(name: "ret", scope: !7086, file: !2, line: 370, type: !919)
!7095 = !DILocation(line: 370, column: 1, scope: !7086)
!7096 = !DILocation(line: 370, column: 1, scope: !7097)
!7097 = distinct !DILexicalBlock(scope: !7086, file: !2, line: 370, column: 1)
!7098 = distinct !DISubprogram(name: "__ia32_sys_sync_file_range", scope: !2, file: !2, line: 370, type: !6631, scopeLine: 370, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7099)
!7099 = !{!7100}
!7100 = !DILocalVariable(name: "regs", arg: 1, scope: !7098, file: !2, line: 370, type: !6633)
!7101 = !DILocation(line: 370, column: 1, scope: !7098)
!7102 = distinct !DISubprogram(name: "__x64_sys_sync_file_range2", scope: !2, file: !2, line: 387, type: !6631, scopeLine: 387, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7103)
!7103 = !{!7104}
!7104 = !DILocalVariable(name: "regs", arg: 1, scope: !7102, file: !2, line: 387, type: !6633)
!7105 = !DILocation(line: 387, column: 1, scope: !7102)
!7106 = distinct !DISubprogram(name: "__se_sys_sync_file_range2", scope: !2, file: !2, line: 387, type: !7107, scopeLine: 387, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7109)
!7107 = !DISubroutineType(types: !7108)
!7108 = !{!919, !919, !919, !48, !48}
!7109 = !{!7110, !7111, !7112, !7113, !7114}
!7110 = !DILocalVariable(name: "fd", arg: 1, scope: !7106, file: !2, line: 387, type: !919)
!7111 = !DILocalVariable(name: "flags", arg: 2, scope: !7106, file: !2, line: 387, type: !919)
!7112 = !DILocalVariable(name: "offset", arg: 3, scope: !7106, file: !2, line: 387, type: !48)
!7113 = !DILocalVariable(name: "nbytes", arg: 4, scope: !7106, file: !2, line: 387, type: !48)
!7114 = !DILocalVariable(name: "ret", scope: !7106, file: !2, line: 387, type: !919)
!7115 = !DILocation(line: 387, column: 1, scope: !7106)
!7116 = !DILocation(line: 387, column: 1, scope: !7117)
!7117 = distinct !DILexicalBlock(scope: !7106, file: !2, line: 387, column: 1)
!7118 = distinct !DISubprogram(name: "__ia32_sys_sync_file_range2", scope: !2, file: !2, line: 387, type: !6631, scopeLine: 387, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7119)
!7119 = !{!7120}
!7120 = !DILocalVariable(name: "regs", arg: 1, scope: !7118, file: !2, line: 387, type: !6633)
!7121 = !DILocation(line: 387, column: 1, scope: !7118)
!7122 = distinct !DISubprogram(name: "atomic_long_read", scope: !7123, file: !7123, line: 3158, type: !7124, scopeLine: 3159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7128)
!7123 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!7124 = !DISubroutineType(types: !7125)
!7125 = !{!919, !7126}
!7126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7127, size: 64)
!7127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !376)
!7128 = !{!7129}
!7129 = !DILocalVariable(name: "v", arg: 1, scope: !7122, file: !7123, line: 3158, type: !7126)
!7130 = !DILocation(line: 3158, column: 39, scope: !7122)
!7131 = !DILocation(line: 3160, column: 25, scope: !7122)
!7132 = !DILocation(line: 3160, column: 2, scope: !7122)
!7133 = !DILocation(line: 3161, column: 30, scope: !7122)
!7134 = !DILocation(line: 3161, column: 9, scope: !7122)
!7135 = !DILocation(line: 3161, column: 2, scope: !7122)
!7136 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !7137, file: !7137, line: 66, type: !7138, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7143)
!7137 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!7138 = !DISubroutineType(types: !7139)
!7139 = !{null, !7140, !40}
!7140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7141, size: 64)
!7141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7142)
!7142 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!7143 = !{!7144, !7145}
!7144 = !DILocalVariable(name: "v", arg: 1, scope: !7136, file: !7137, line: 66, type: !7140)
!7145 = !DILocalVariable(name: "size", arg: 2, scope: !7136, file: !7137, line: 66, type: !40)
!7146 = !DILocation(line: 66, column: 73, scope: !7136)
!7147 = !DILocation(line: 66, column: 83, scope: !7136)
!7148 = !DILocation(line: 68, column: 19, scope: !7136)
!7149 = !DILocation(line: 68, column: 22, scope: !7136)
!7150 = !DILocation(line: 68, column: 2, scope: !7136)
!7151 = !DILocation(line: 69, column: 2, scope: !7136)
!7152 = !DILocation(line: 70, column: 1, scope: !7136)
!7153 = distinct !DISubprogram(name: "raw_atomic_long_read", scope: !377, file: !377, line: 35, type: !7124, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7154)
!7154 = !{!7155}
!7155 = !DILocalVariable(name: "v", arg: 1, scope: !7153, file: !377, line: 35, type: !7126)
!7156 = !DILocation(line: 35, column: 43, scope: !7153)
!7157 = !DILocation(line: 38, column: 27, scope: !7153)
!7158 = !DILocation(line: 38, column: 9, scope: !7153)
!7159 = !DILocation(line: 38, column: 2, scope: !7153)
!7160 = distinct !DISubprogram(name: "kasan_check_read", scope: !7161, file: !7161, line: 40, type: !7162, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7164)
!7161 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!7162 = !DISubroutineType(types: !7163)
!7163 = !{!1001, !7140, !13}
!7164 = !{!7165, !7166}
!7165 = !DILocalVariable(name: "p", arg: 1, scope: !7160, file: !7161, line: 40, type: !7140)
!7166 = !DILocalVariable(name: "size", arg: 2, scope: !7160, file: !7161, line: 40, type: !13)
!7167 = !DILocation(line: 40, column: 58, scope: !7160)
!7168 = !DILocation(line: 40, column: 74, scope: !7160)
!7169 = !DILocation(line: 42, column: 2, scope: !7160)
!7170 = distinct !DISubprogram(name: "kcsan_check_access", scope: !7171, file: !7171, line: 229, type: !7172, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7174)
!7171 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!7172 = !DISubroutineType(types: !7173)
!7173 = !{null, !7140, !40, !27}
!7174 = !{!7175, !7176, !7177}
!7175 = !DILocalVariable(name: "ptr", arg: 1, scope: !7170, file: !7171, line: 229, type: !7140)
!7176 = !DILocalVariable(name: "size", arg: 2, scope: !7170, file: !7171, line: 229, type: !40)
!7177 = !DILocalVariable(name: "type", arg: 3, scope: !7170, file: !7171, line: 230, type: !27)
!7178 = !DILocation(line: 229, column: 60, scope: !7170)
!7179 = !DILocation(line: 229, column: 72, scope: !7170)
!7180 = !DILocation(line: 230, column: 15, scope: !7170)
!7181 = !DILocation(line: 230, column: 23, scope: !7170)
!7182 = distinct !DISubprogram(name: "raw_atomic64_read", scope: !7183, file: !7183, line: 2554, type: !7184, scopeLine: 2555, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7188)
!7183 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!7184 = !DISubroutineType(types: !7185)
!7185 = !{!342, !7186}
!7186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7187, size: 64)
!7187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !378)
!7188 = !{!7189}
!7189 = !DILocalVariable(name: "v", arg: 1, scope: !7182, file: !7183, line: 2554, type: !7186)
!7190 = !DILocation(line: 2554, column: 37, scope: !7182)
!7191 = !DILocation(line: 2556, column: 28, scope: !7182)
!7192 = !DILocation(line: 2556, column: 9, scope: !7182)
!7193 = !DILocation(line: 2556, column: 2, scope: !7182)
!7194 = distinct !DISubprogram(name: "arch_atomic64_read", scope: !7195, file: !7195, line: 13, type: !7184, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7196)
!7195 = !DIFile(filename: "./arch/x86/include/asm/atomic64_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e491f305c5821f66703047d9c813539")
!7196 = !{!7197}
!7197 = !DILocalVariable(name: "v", arg: 1, scope: !7194, file: !7195, line: 13, type: !7186)
!7198 = !DILocation(line: 13, column: 65, scope: !7194)
!7199 = !DILocation(line: 15, column: 9, scope: !7194)
!7200 = !DILocation(line: 15, column: 2, scope: !7194)
!7201 = !DISubprogram(name: "kmalloc_large", scope: !331, file: !331, line: 531, type: !6658, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7202 = distinct !DISubprogram(name: "__kmalloc_index", scope: !331, file: !331, line: 444, type: !7203, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7205)
!7203 = !DISubroutineType(types: !7204)
!7204 = !{!13, !40, !1001}
!7205 = !{!7206, !7207}
!7206 = !DILocalVariable(name: "size", arg: 1, scope: !7202, file: !331, line: 444, type: !40)
!7207 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !7202, file: !331, line: 445, type: !1001)
!7208 = !DILocation(line: 444, column: 60, scope: !7202)
!7209 = !DILocation(line: 445, column: 16, scope: !7202)
!7210 = !DILocation(line: 447, column: 7, scope: !7211)
!7211 = distinct !DILexicalBlock(scope: !7202, file: !331, line: 447, column: 6)
!7212 = !DILocation(line: 447, column: 6, scope: !7202)
!7213 = !DILocation(line: 448, column: 3, scope: !7211)
!7214 = !DILocation(line: 450, column: 6, scope: !7215)
!7215 = distinct !DILexicalBlock(scope: !7202, file: !331, line: 450, column: 6)
!7216 = !DILocation(line: 450, column: 11, scope: !7215)
!7217 = !DILocation(line: 450, column: 6, scope: !7202)
!7218 = !DILocation(line: 451, column: 3, scope: !7215)
!7219 = !DILocation(line: 453, column: 32, scope: !7220)
!7220 = distinct !DILexicalBlock(scope: !7202, file: !331, line: 453, column: 6)
!7221 = !DILocation(line: 453, column: 37, scope: !7220)
!7222 = !DILocation(line: 453, column: 42, scope: !7220)
!7223 = !DILocation(line: 453, column: 45, scope: !7220)
!7224 = !DILocation(line: 453, column: 50, scope: !7220)
!7225 = !DILocation(line: 453, column: 6, scope: !7202)
!7226 = !DILocation(line: 454, column: 3, scope: !7220)
!7227 = !DILocation(line: 455, column: 32, scope: !7228)
!7228 = distinct !DILexicalBlock(scope: !7202, file: !331, line: 455, column: 6)
!7229 = !DILocation(line: 455, column: 37, scope: !7228)
!7230 = !DILocation(line: 455, column: 43, scope: !7228)
!7231 = !DILocation(line: 455, column: 46, scope: !7228)
!7232 = !DILocation(line: 455, column: 51, scope: !7228)
!7233 = !DILocation(line: 455, column: 6, scope: !7202)
!7234 = !DILocation(line: 456, column: 3, scope: !7228)
!7235 = !DILocation(line: 457, column: 6, scope: !7236)
!7236 = distinct !DILexicalBlock(scope: !7202, file: !331, line: 457, column: 6)
!7237 = !DILocation(line: 457, column: 11, scope: !7236)
!7238 = !DILocation(line: 457, column: 6, scope: !7202)
!7239 = !DILocation(line: 457, column: 26, scope: !7236)
!7240 = !DILocation(line: 458, column: 6, scope: !7241)
!7241 = distinct !DILexicalBlock(scope: !7202, file: !331, line: 458, column: 6)
!7242 = !DILocation(line: 458, column: 11, scope: !7241)
!7243 = !DILocation(line: 458, column: 6, scope: !7202)
!7244 = !DILocation(line: 458, column: 26, scope: !7241)
!7245 = !DILocation(line: 459, column: 6, scope: !7246)
!7246 = distinct !DILexicalBlock(scope: !7202, file: !331, line: 459, column: 6)
!7247 = !DILocation(line: 459, column: 11, scope: !7246)
!7248 = !DILocation(line: 459, column: 6, scope: !7202)
!7249 = !DILocation(line: 459, column: 26, scope: !7246)
!7250 = !DILocation(line: 460, column: 6, scope: !7251)
!7251 = distinct !DILexicalBlock(scope: !7202, file: !331, line: 460, column: 6)
!7252 = !DILocation(line: 460, column: 11, scope: !7251)
!7253 = !DILocation(line: 460, column: 6, scope: !7202)
!7254 = !DILocation(line: 460, column: 26, scope: !7251)
!7255 = !DILocation(line: 461, column: 6, scope: !7256)
!7256 = distinct !DILexicalBlock(scope: !7202, file: !331, line: 461, column: 6)
!7257 = !DILocation(line: 461, column: 11, scope: !7256)
!7258 = !DILocation(line: 461, column: 6, scope: !7202)
!7259 = !DILocation(line: 461, column: 26, scope: !7256)
!7260 = !DILocation(line: 462, column: 6, scope: !7261)
!7261 = distinct !DILexicalBlock(scope: !7202, file: !331, line: 462, column: 6)
!7262 = !DILocation(line: 462, column: 11, scope: !7261)
!7263 = !DILocation(line: 462, column: 6, scope: !7202)
!7264 = !DILocation(line: 462, column: 26, scope: !7261)
!7265 = !DILocation(line: 463, column: 6, scope: !7266)
!7266 = distinct !DILexicalBlock(scope: !7202, file: !331, line: 463, column: 6)
!7267 = !DILocation(line: 463, column: 11, scope: !7266)
!7268 = !DILocation(line: 463, column: 6, scope: !7202)
!7269 = !DILocation(line: 463, column: 26, scope: !7266)
!7270 = !DILocation(line: 464, column: 6, scope: !7271)
!7271 = distinct !DILexicalBlock(scope: !7202, file: !331, line: 464, column: 6)
!7272 = !DILocation(line: 464, column: 11, scope: !7271)
!7273 = !DILocation(line: 464, column: 6, scope: !7202)
!7274 = !DILocation(line: 464, column: 26, scope: !7271)
!7275 = !DILocation(line: 465, column: 6, scope: !7276)
!7276 = distinct !DILexicalBlock(scope: !7202, file: !331, line: 465, column: 6)
!7277 = !DILocation(line: 465, column: 11, scope: !7276)
!7278 = !DILocation(line: 465, column: 6, scope: !7202)
!7279 = !DILocation(line: 465, column: 26, scope: !7276)
!7280 = !DILocation(line: 466, column: 6, scope: !7281)
!7281 = distinct !DILexicalBlock(scope: !7202, file: !331, line: 466, column: 6)
!7282 = !DILocation(line: 466, column: 11, scope: !7281)
!7283 = !DILocation(line: 466, column: 6, scope: !7202)
!7284 = !DILocation(line: 466, column: 26, scope: !7281)
!7285 = !DILocation(line: 467, column: 6, scope: !7286)
!7286 = distinct !DILexicalBlock(scope: !7202, file: !331, line: 467, column: 6)
!7287 = !DILocation(line: 467, column: 11, scope: !7286)
!7288 = !DILocation(line: 467, column: 6, scope: !7202)
!7289 = !DILocation(line: 467, column: 26, scope: !7286)
!7290 = !DILocation(line: 468, column: 6, scope: !7291)
!7291 = distinct !DILexicalBlock(scope: !7202, file: !331, line: 468, column: 6)
!7292 = !DILocation(line: 468, column: 11, scope: !7291)
!7293 = !DILocation(line: 468, column: 6, scope: !7202)
!7294 = !DILocation(line: 468, column: 26, scope: !7291)
!7295 = !DILocation(line: 469, column: 6, scope: !7296)
!7296 = distinct !DILexicalBlock(scope: !7202, file: !331, line: 469, column: 6)
!7297 = !DILocation(line: 469, column: 11, scope: !7296)
!7298 = !DILocation(line: 469, column: 6, scope: !7202)
!7299 = !DILocation(line: 469, column: 26, scope: !7296)
!7300 = !DILocation(line: 470, column: 6, scope: !7301)
!7301 = distinct !DILexicalBlock(scope: !7202, file: !331, line: 470, column: 6)
!7302 = !DILocation(line: 470, column: 11, scope: !7301)
!7303 = !DILocation(line: 470, column: 6, scope: !7202)
!7304 = !DILocation(line: 470, column: 26, scope: !7301)
!7305 = !DILocation(line: 471, column: 6, scope: !7306)
!7306 = distinct !DILexicalBlock(scope: !7202, file: !331, line: 471, column: 6)
!7307 = !DILocation(line: 471, column: 11, scope: !7306)
!7308 = !DILocation(line: 471, column: 6, scope: !7202)
!7309 = !DILocation(line: 471, column: 26, scope: !7306)
!7310 = !DILocation(line: 472, column: 6, scope: !7311)
!7311 = distinct !DILexicalBlock(scope: !7202, file: !331, line: 472, column: 6)
!7312 = !DILocation(line: 472, column: 11, scope: !7311)
!7313 = !DILocation(line: 472, column: 6, scope: !7202)
!7314 = !DILocation(line: 472, column: 26, scope: !7311)
!7315 = !DILocation(line: 473, column: 6, scope: !7316)
!7316 = distinct !DILexicalBlock(scope: !7202, file: !331, line: 473, column: 6)
!7317 = !DILocation(line: 473, column: 11, scope: !7316)
!7318 = !DILocation(line: 473, column: 6, scope: !7202)
!7319 = !DILocation(line: 473, column: 26, scope: !7316)
!7320 = !DILocation(line: 474, column: 6, scope: !7321)
!7321 = distinct !DILexicalBlock(scope: !7202, file: !331, line: 474, column: 6)
!7322 = !DILocation(line: 474, column: 11, scope: !7321)
!7323 = !DILocation(line: 474, column: 6, scope: !7202)
!7324 = !DILocation(line: 474, column: 27, scope: !7321)
!7325 = !DILocation(line: 475, column: 6, scope: !7326)
!7326 = distinct !DILexicalBlock(scope: !7202, file: !331, line: 475, column: 6)
!7327 = !DILocation(line: 475, column: 11, scope: !7326)
!7328 = !DILocation(line: 475, column: 6, scope: !7202)
!7329 = !DILocation(line: 475, column: 32, scope: !7326)
!7330 = !DILocation(line: 477, column: 50, scope: !7331)
!7331 = distinct !DILexicalBlock(scope: !7202, file: !331, line: 477, column: 6)
!7332 = !{i8 0, i8 2}
!7333 = !DILocation(line: 477, column: 6, scope: !7202)
!7334 = !DILocation(line: 478, column: 3, scope: !7331)
!7335 = !DILocation(line: 478, column: 3, scope: !7336)
!7336 = distinct !DILexicalBlock(scope: !7337, file: !331, line: 478, column: 3)
!7337 = distinct !DILexicalBlock(scope: !7331, file: !331, line: 478, column: 3)
!7338 = !{i32 -2141627510}
!7339 = !DILocation(line: 478, column: 3, scope: !7337)
!7340 = !DILocation(line: 480, column: 3, scope: !7331)
!7341 = !DILocation(line: 480, column: 3, scope: !7342)
!7342 = distinct !DILexicalBlock(scope: !7331, file: !331, line: 480, column: 3)
!7343 = !DILocation(line: 480, column: 3, scope: !7344)
!7344 = distinct !DILexicalBlock(scope: !7342, file: !331, line: 480, column: 3)
!7345 = !DILocation(line: 480, column: 3, scope: !7346)
!7346 = distinct !DILexicalBlock(scope: !7342, file: !331, line: 480, column: 3)
!7347 = !{i64 2153339989, i64 2153340018, i64 2153340064, i64 2153340122, i64 2153340176, i64 2153340230, i64 2153340285, i64 2153340316}
!7348 = !DILocation(line: 483, column: 2, scope: !7202)
!7349 = !DILocation(line: 484, column: 1, scope: !7202)
!7350 = !DISubprogram(name: "kmalloc_trace", scope: !331, file: !331, line: 525, type: !7351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7351 = !DISubroutineType(types: !7352)
!7352 = !{!25, !3128, !341, !40}
!7353 = distinct !DISubprogram(name: "kmalloc_type", scope: !331, file: !331, line: 401, type: !7354, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7356)
!7354 = !DISubroutineType(types: !7355)
!7355 = !{!330, !341, !44}
!7356 = !{!7357, !7358}
!7357 = !DILocalVariable(name: "flags", arg: 1, scope: !7353, file: !331, line: 401, type: !341)
!7358 = !DILocalVariable(name: "caller", arg: 2, scope: !7353, file: !331, line: 401, type: !44)
!7359 = !DILocation(line: 401, column: 67, scope: !7353)
!7360 = !DILocation(line: 401, column: 88, scope: !7353)
!7361 = !DILocation(line: 407, column: 6, scope: !7362)
!7362 = distinct !DILexicalBlock(scope: !7353, file: !331, line: 407, column: 6)
!7363 = !DILocation(line: 407, column: 6, scope: !7353)
!7364 = !DILocation(line: 413, column: 3, scope: !7362)
!7365 = !DILocation(line: 423, column: 38, scope: !7366)
!7366 = distinct !DILexicalBlock(scope: !7353, file: !331, line: 423, column: 6)
!7367 = !DILocation(line: 423, column: 44, scope: !7366)
!7368 = !DILocation(line: 423, column: 6, scope: !7353)
!7369 = !DILocation(line: 424, column: 3, scope: !7366)
!7370 = !DILocation(line: 426, column: 3, scope: !7371)
!7371 = distinct !DILexicalBlock(scope: !7353, file: !331, line: 425, column: 6)
!7372 = !DILocation(line: 429, column: 1, scope: !7353)
!7373 = !DISubprogram(name: "__kmalloc", scope: !331, file: !331, line: 488, type: !6658, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7374 = !DISubprogram(name: "__compiletime_assert_245", scope: !331, file: !331, line: 478, type: !2525, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!7375 = !DISubprogram(name: "_printk", scope: !7376, file: !7376, line: 153, type: !7377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7376 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!7377 = !DISubroutineType(types: !7378)
!7378 = !{!27, !22, null}
!7379 = !DISubprogram(name: "kfree", scope: !331, file: !331, line: 227, type: !7380, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7380 = !DISubroutineType(types: !7381)
!7381 = !{null, !916}
!7382 = distinct !DISubprogram(name: "queue_work", scope: !305, file: !305, line: 559, type: !7383, scopeLine: 561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7385)
!7383 = !DISubroutineType(types: !7384)
!7384 = !{!1001, !2412, !1126}
!7385 = !{!7386, !7387}
!7386 = !DILocalVariable(name: "wq", arg: 1, scope: !7382, file: !305, line: 559, type: !2412)
!7387 = !DILocalVariable(name: "work", arg: 2, scope: !7382, file: !305, line: 560, type: !1126)
!7388 = !DILocation(line: 559, column: 56, scope: !7382)
!7389 = !DILocation(line: 560, column: 30, scope: !7382)
!7390 = !DILocation(line: 562, column: 41, scope: !7382)
!7391 = !DILocation(line: 562, column: 45, scope: !7382)
!7392 = !DILocation(line: 562, column: 9, scope: !7382)
!7393 = !DILocation(line: 562, column: 2, scope: !7382)
!7394 = !DISubprogram(name: "queue_work_on", scope: !305, file: !305, line: 496, type: !7395, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7395 = !DISubroutineType(types: !7396)
!7396 = !{!1001, !27, !2412, !1126}
!7397 = distinct !DISubprogram(name: "__do_sys_syncfs", scope: !2, file: !2, line: 149, type: !7398, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7400)
!7398 = !DISubroutineType(types: !7399)
!7399 = !{!919, !27}
!7400 = !{!7401, !7402, !7403, !7404, !7405}
!7401 = !DILocalVariable(name: "fd", arg: 1, scope: !7397, file: !2, line: 149, type: !27)
!7402 = !DILocalVariable(name: "f", scope: !7397, file: !2, line: 151, type: !7028)
!7403 = !DILocalVariable(name: "sb", scope: !7397, file: !2, line: 152, type: !1892)
!7404 = !DILocalVariable(name: "ret", scope: !7397, file: !2, line: 153, type: !27)
!7405 = !DILocalVariable(name: "ret2", scope: !7397, file: !2, line: 153, type: !27)
!7406 = !DILocation(line: 149, column: 1, scope: !7397)
!7407 = !DILocation(line: 151, column: 2, scope: !7397)
!7408 = !DILocation(line: 151, column: 12, scope: !7397)
!7409 = !DILocation(line: 151, column: 22, scope: !7397)
!7410 = !DILocation(line: 151, column: 16, scope: !7397)
!7411 = !DILocation(line: 152, column: 2, scope: !7397)
!7412 = !DILocation(line: 152, column: 22, scope: !7397)
!7413 = !DILocation(line: 153, column: 2, scope: !7397)
!7414 = !DILocation(line: 153, column: 6, scope: !7397)
!7415 = !DILocation(line: 153, column: 11, scope: !7397)
!7416 = !DILocation(line: 155, column: 9, scope: !7417)
!7417 = distinct !DILexicalBlock(scope: !7397, file: !2, line: 155, column: 6)
!7418 = !DILocation(line: 155, column: 7, scope: !7417)
!7419 = !DILocation(line: 155, column: 6, scope: !7397)
!7420 = !DILocation(line: 156, column: 3, scope: !7417)
!7421 = !DILocation(line: 157, column: 9, scope: !7397)
!7422 = !DILocation(line: 157, column: 15, scope: !7397)
!7423 = !DILocation(line: 157, column: 22, scope: !7397)
!7424 = !DILocation(line: 157, column: 30, scope: !7397)
!7425 = !DILocation(line: 157, column: 5, scope: !7397)
!7426 = !DILocation(line: 159, column: 13, scope: !7397)
!7427 = !DILocation(line: 159, column: 17, scope: !7397)
!7428 = !DILocation(line: 159, column: 2, scope: !7397)
!7429 = !DILocation(line: 160, column: 24, scope: !7397)
!7430 = !DILocation(line: 160, column: 8, scope: !7397)
!7431 = !DILocation(line: 160, column: 6, scope: !7397)
!7432 = !DILocation(line: 161, column: 11, scope: !7397)
!7433 = !DILocation(line: 161, column: 15, scope: !7397)
!7434 = !DILocation(line: 161, column: 2, scope: !7397)
!7435 = !DILocation(line: 163, column: 35, scope: !7397)
!7436 = !DILocation(line: 163, column: 39, scope: !7397)
!7437 = !DILocation(line: 163, column: 52, scope: !7397)
!7438 = !DILocation(line: 163, column: 58, scope: !7397)
!7439 = !DILocation(line: 163, column: 9, scope: !7397)
!7440 = !DILocation(line: 163, column: 7, scope: !7397)
!7441 = !DILocation(line: 165, column: 2, scope: !7397)
!7442 = !DILocation(line: 166, column: 9, scope: !7397)
!7443 = !DILocation(line: 166, column: 15, scope: !7397)
!7444 = !DILocation(line: 166, column: 21, scope: !7397)
!7445 = !DILocation(line: 166, column: 2, scope: !7397)
!7446 = !DILocation(line: 167, column: 1, scope: !7397)
!7447 = !DISubprogram(name: "down_read", scope: !838, file: !838, line: 175, type: !7448, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7448 = !DISubroutineType(types: !7449)
!7449 = !{null, !6532}
!7450 = !DISubprogram(name: "up_read", scope: !838, file: !838, line: 198, type: !7448, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7451 = !DISubprogram(name: "errseq_check_and_advance", scope: !4576, file: !4576, line: 13, type: !7452, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7452 = !DISubroutineType(types: !7453)
!7453 = !{!27, !7454, !7454}
!7454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4575, size: 64)
!7455 = !DISubprogram(name: "__mark_inode_dirty", scope: !289, file: !289, line: 2301, type: !3682, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7456 = distinct !DISubprogram(name: "__do_sys_fsync", scope: !2, file: !2, line: 218, type: !7457, scopeLine: 219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7459)
!7457 = !DISubroutineType(types: !7458)
!7458 = !{!919, !13}
!7459 = !{!7460}
!7460 = !DILocalVariable(name: "fd", arg: 1, scope: !7456, file: !2, line: 218, type: !13)
!7461 = !DILocation(line: 218, column: 1, scope: !7456)
!7462 = !DILocation(line: 220, column: 18, scope: !7456)
!7463 = !DILocation(line: 220, column: 9, scope: !7456)
!7464 = !DILocation(line: 220, column: 2, scope: !7456)
!7465 = distinct !DISubprogram(name: "do_fsync", scope: !2, file: !2, line: 206, type: !7466, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7468)
!7466 = !DISubroutineType(types: !7467)
!7467 = !{!27, !13, !27}
!7468 = !{!7469, !7470, !7471, !7472}
!7469 = !DILocalVariable(name: "fd", arg: 1, scope: !7465, file: !2, line: 206, type: !13)
!7470 = !DILocalVariable(name: "datasync", arg: 2, scope: !7465, file: !2, line: 206, type: !27)
!7471 = !DILocalVariable(name: "f", scope: !7465, file: !2, line: 208, type: !7028)
!7472 = !DILocalVariable(name: "ret", scope: !7465, file: !2, line: 209, type: !27)
!7473 = !DILocation(line: 206, column: 34, scope: !7465)
!7474 = !DILocation(line: 206, column: 42, scope: !7465)
!7475 = !DILocation(line: 208, column: 2, scope: !7465)
!7476 = !DILocation(line: 208, column: 12, scope: !7465)
!7477 = !DILocation(line: 208, column: 22, scope: !7465)
!7478 = !DILocation(line: 208, column: 16, scope: !7465)
!7479 = !DILocation(line: 209, column: 2, scope: !7465)
!7480 = !DILocation(line: 209, column: 6, scope: !7465)
!7481 = !DILocation(line: 211, column: 8, scope: !7482)
!7482 = distinct !DILexicalBlock(scope: !7465, file: !2, line: 211, column: 6)
!7483 = !DILocation(line: 211, column: 6, scope: !7482)
!7484 = !DILocation(line: 211, column: 6, scope: !7465)
!7485 = !DILocation(line: 212, column: 21, scope: !7486)
!7486 = distinct !DILexicalBlock(scope: !7482, file: !2, line: 211, column: 14)
!7487 = !DILocation(line: 212, column: 27, scope: !7486)
!7488 = !DILocation(line: 212, column: 9, scope: !7486)
!7489 = !DILocation(line: 212, column: 7, scope: !7486)
!7490 = !DILocation(line: 213, column: 3, scope: !7486)
!7491 = !DILocation(line: 214, column: 2, scope: !7486)
!7492 = !DILocation(line: 215, column: 9, scope: !7465)
!7493 = !DILocation(line: 216, column: 1, scope: !7465)
!7494 = !DILocation(line: 215, column: 2, scope: !7465)
!7495 = distinct !DISubprogram(name: "__do_sys_fdatasync", scope: !2, file: !2, line: 223, type: !7457, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7496)
!7496 = !{!7497}
!7497 = !DILocalVariable(name: "fd", arg: 1, scope: !7495, file: !2, line: 223, type: !13)
!7498 = !DILocation(line: 223, column: 1, scope: !7495)
!7499 = !DILocation(line: 225, column: 18, scope: !7495)
!7500 = !DILocation(line: 225, column: 9, scope: !7495)
!7501 = !DILocation(line: 225, column: 2, scope: !7495)
!7502 = distinct !DISubprogram(name: "__to_fd", scope: !7029, file: !7029, line: 57, type: !7503, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7505)
!7503 = !DISubroutineType(types: !7504)
!7504 = !{!7028, !44}
!7505 = !{!7506}
!7506 = !DILocalVariable(name: "v", arg: 1, scope: !7502, file: !7029, line: 57, type: !44)
!7507 = !DILocation(line: 57, column: 47, scope: !7502)
!7508 = !DILocation(line: 59, column: 20, scope: !7502)
!7509 = !DILocation(line: 59, column: 37, scope: !7502)
!7510 = !DILocation(line: 59, column: 39, scope: !7502)
!7511 = !DILocation(line: 59, column: 21, scope: !7502)
!7512 = !DILocation(line: 59, column: 45, scope: !7502)
!7513 = !DILocation(line: 59, column: 47, scope: !7502)
!7514 = !DILocation(line: 59, column: 2, scope: !7502)
!7515 = !DISubprogram(name: "__fdget", scope: !7029, file: !7029, line: 52, type: !7516, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7516 = !DISubroutineType(types: !7517)
!7517 = !{!44, !13}
!7518 = !DISubprogram(name: "fput", scope: !7029, file: !7029, line: 17, type: !5107, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7519 = distinct !DISubprogram(name: "__do_sys_sync_file_range", scope: !2, file: !2, line: 370, type: !7520, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7522)
!7520 = !DISubroutineType(types: !7521)
!7521 = !{!919, !27, !46, !46, !13}
!7522 = !{!7523, !7524, !7525, !7526}
!7523 = !DILocalVariable(name: "fd", arg: 1, scope: !7519, file: !2, line: 370, type: !27)
!7524 = !DILocalVariable(name: "offset", arg: 2, scope: !7519, file: !2, line: 370, type: !46)
!7525 = !DILocalVariable(name: "nbytes", arg: 3, scope: !7519, file: !2, line: 370, type: !46)
!7526 = !DILocalVariable(name: "flags", arg: 4, scope: !7519, file: !2, line: 370, type: !13)
!7527 = !DILocation(line: 370, column: 1, scope: !7519)
!7528 = !DILocation(line: 373, column: 30, scope: !7519)
!7529 = !DILocation(line: 373, column: 34, scope: !7519)
!7530 = !DILocation(line: 373, column: 42, scope: !7519)
!7531 = !DILocation(line: 373, column: 50, scope: !7519)
!7532 = !DILocation(line: 373, column: 9, scope: !7519)
!7533 = !DILocation(line: 373, column: 2, scope: !7519)
!7534 = distinct !DISubprogram(name: "__do_sys_sync_file_range2", scope: !2, file: !2, line: 387, type: !7535, scopeLine: 389, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7537)
!7535 = !DISubroutineType(types: !7536)
!7536 = !{!919, !27, !13, !46, !46}
!7537 = !{!7538, !7539, !7540, !7541}
!7538 = !DILocalVariable(name: "fd", arg: 1, scope: !7534, file: !2, line: 387, type: !27)
!7539 = !DILocalVariable(name: "flags", arg: 2, scope: !7534, file: !2, line: 387, type: !13)
!7540 = !DILocalVariable(name: "offset", arg: 3, scope: !7534, file: !2, line: 387, type: !46)
!7541 = !DILocalVariable(name: "nbytes", arg: 4, scope: !7534, file: !2, line: 387, type: !46)
!7542 = !DILocation(line: 387, column: 1, scope: !7534)
!7543 = !DILocation(line: 390, column: 30, scope: !7534)
!7544 = !DILocation(line: 390, column: 34, scope: !7534)
!7545 = !DILocation(line: 390, column: 42, scope: !7534)
!7546 = !DILocation(line: 390, column: 50, scope: !7534)
!7547 = !DILocation(line: 390, column: 9, scope: !7534)
!7548 = !DILocation(line: 390, column: 2, scope: !7534)
